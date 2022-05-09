; ModuleID = '/llk/IR_all_yes/kernel/sched/topology.c_pt.bc'
source_filename = "../kernel/sched/topology.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.sd_flag_debug = type { i32, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.root_domain = type { %struct.atomic_t, %struct.atomic_t, %struct.callback_head, ptr, ptr, i32, i32, ptr, %struct.atomic_t, %struct.dl_bw, %struct.cpudl, i64, %struct.irq_work, %struct.raw_spinlock, i32, i32, %struct.atomic_t, %struct.atomic_t, ptr, %struct.cpupri, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.dl_bw = type { %struct.raw_spinlock, i64, i64 }
%struct.cpudl = type { %struct.raw_spinlock, i32, ptr, ptr }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.cpupri = type { [101 x %struct.cpupri_vec], ptr }
%struct.cpupri_vec = type { %struct.atomic_t, ptr }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, [8 x i8], %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [24 x i8], [2 x %struct.uclamp_rq], i32, [76 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, %struct.list_head, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [88 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i64, i64, i64, i32, i32, %struct.__call_single_data, %struct.hrtimer, i64, %struct.sched_info, i64, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.cpu_stop_work, ptr, ptr, i32, i32, %struct.rb_root, i32, i32, i32, i32, i32, i32, i64, [80 x i8] }
%struct.uclamp_rq = type { i32, [5 x %struct.uclamp_bucket] }
%struct.uclamp_bucket = type { i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i32, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg, i64, [120 x i8], %struct.anon.4, i32, i32, i32, i32, i64, ptr, ptr, i32, %struct.list_head, ptr, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list_head, [24 x i8] }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.anon.4 = type { %struct.raw_spinlock, i32, i32, i32, i32, [68 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.46, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock, i32, ptr, ptr }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.46 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.134, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.134 = type { i64, i64 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sched_domain_topology_level = type { ptr, ptr, i32, i32, %struct.sd_data, ptr }
%struct.sd_data = type { ptr, ptr, ptr, ptr }
%struct.cpu_topology = type { i32, i32, i32, i32, i32, %struct.cpumask, %struct.cpumask, %struct.cpumask, %struct.cpumask }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.perf_domain = type { ptr, ptr, %struct.callback_head }
%struct.sched_group = type { ptr, %struct.atomic_t, i32, ptr, i32, i32, [0 x i32] }
%struct.sched_group_capacity = type { %struct.atomic_t, i32, i32, i32, i32, i32, i32, [0 x i32] }
%struct.asym_cap_data = type { %struct.list_head, i32, [0 x i32] }
%struct.sched_domain = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %union.anon.135, ptr, i32, [0 x i32] }
%union.anon.135 = type { %struct.callback_head }
%struct.sched_domain_shared = type { %struct.atomic_t, %struct.atomic_t, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sched_domain_attr = type { i32 }

@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sched_domains_mutex.wait_lock\00", [34 x i8] zeroinitializer }, align 32
@sched_domains_mutex = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sched_domains_mutex, i64 52), ptr getelementptr (i8, ptr @sched_domains_mutex, i64 52) }, ptr @sched_domains_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sched_domains_mutex\00", [44 x i8] zeroinitializer }, align 32
@__setup_str_sched_debug_setup = internal constant [14 x i8] c"sched_verbose\00", section ".init.rodata", align 1
@__setup_sched_debug_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_sched_debug_setup, ptr @sched_debug_setup, i32 1 }, section ".init.setup", align 4
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SD_BALANCE_NEWIDLE\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SD_BALANCE_EXEC\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SD_BALANCE_FORK\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SD_BALANCE_WAKE\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SD_WAKE_AFFINE\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SD_ASYM_CPUCAPACITY\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SD_ASYM_CPUCAPACITY_FULL\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SD_SHARE_CPUCAPACITY\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SD_SHARE_PKG_RESOURCES\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SD_SERIALIZE\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SD_ASYM_PACKING\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SD_PREFER_SIBLING\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SD_OVERLAP\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SD_NUMA\00", [24 x i8] zeroinitializer }, align 32
@sd_flag_debug = dso_local constant { [14 x %struct.sd_flag_debug], [48 x i8] } { [14 x %struct.sd_flag_debug] [%struct.sd_flag_debug { i32 5, ptr @.str.2 }, %struct.sd_flag_debug { i32 5, ptr @.str.3 }, %struct.sd_flag_debug { i32 5, ptr @.str.4 }, %struct.sd_flag_debug { i32 5, ptr @.str.5 }, %struct.sd_flag_debug { i32 1, ptr @.str.6 }, %struct.sd_flag_debug { i32 6, ptr @.str.7 }, %struct.sd_flag_debug { i32 6, ptr @.str.8 }, %struct.sd_flag_debug { i32 5, ptr @.str.9 }, %struct.sd_flag_debug { i32 5, ptr @.str.10 }, %struct.sd_flag_debug { i32 6, ptr @.str.11 }, %struct.sd_flag_debug { i32 5, ptr @.str.12 }, %struct.sd_flag_debug { i32 4, ptr @.str.13 }, %struct.sd_flag_debug { i32 6, ptr @.str.14 }, %struct.sd_flag_debug { i32 6, ptr @.str.15 }], [48 x i8] zeroinitializer }, align 32
@sched_energy_present = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@sysctl_sched_energy_aware = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sched_energy_mutex.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@sched_energy_mutex = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sched_energy_mutex, i64 52), ptr getelementptr (i8, ptr @sched_energy_mutex, i64 52) }, ptr @sched_energy_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sched_energy_mutex\00", [45 x i8] zeroinitializer }, align 32
@sched_energy_update = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__cpu_active_mask = external dso_local global %struct.cpumask, align 4
@def_root_domain = dso_local global { %struct.root_domain, [272 x i8] } zeroinitializer, align 32
@sched_asym_cpucapacity = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@__setup_str_setup_relax_domain_level = internal constant [20 x i8] c"relax_domain_level=\00", section ".init.rodata", align 1
@__setup_setup_relax_domain_level = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_relax_domain_level, ptr @setup_relax_domain_level, i32 0 }, section ".init.setup", align 4
@set_sched_topology.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sched_smp_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kernel/sched/topology.c\00", [40 x i8] zeroinitializer }, align 32
@sched_domain_topology = internal global { ptr, [28 x i8] } { ptr @default_topology, [28 x i8] zeroinitializer }, align 32
@sched_domains_tmpmask = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sched_domains_tmpmask2 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@fallback_doms = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ndoms_cur = internal global { i32, [28 x i8] } zeroinitializer, align 32
@doms_cur = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@partition_sched_domains_locked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dattr_cur = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__pcpu_scope_sd_llc = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_sd_llc = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@sd_llc = weak dso_local global ptr null, section ".data..percpu", align 4
@__pcpu_scope_sd_llc_size = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_sd_llc_size = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@sd_llc_size = weak dso_local global i32 0, section ".data..percpu", align 4
@__pcpu_scope_sd_llc_id = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_sd_llc_id = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@sd_llc_id = weak dso_local global i32 0, section ".data..percpu", align 4
@__pcpu_scope_sd_llc_shared = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_sd_llc_shared = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@sd_llc_shared = weak dso_local global ptr null, section ".data..percpu", align 4
@__pcpu_scope_sd_numa = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_sd_numa = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@sd_numa = weak dso_local global ptr null, section ".data..percpu", align 4
@__pcpu_scope_sd_asym_packing = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_sd_asym_packing = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@sd_asym_packing = weak dso_local global ptr null, section ".data..percpu", align 4
@__pcpu_scope_sd_asym_cpucapacity = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_sd_asym_cpucapacity = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@sd_asym_cpucapacity = weak dso_local global ptr null, section ".data..percpu", align 4
@sched_domain_level_max = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@sched_debug_verbose = external dso_local local_unnamed_addr global i8, align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@init_rootdomain.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&rd->rto_lock\00", [18 x i8] zeroinitializer }, align 32
@default_relax_domain_level = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@setup_relax_domain_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.18, i32 1401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014Unable to set relax_domain_level\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"setup_relax_domain_level\00", [39 x i8] zeroinitializer }, align 32
@setup_relax_domain_level._entry_ptr = internal global ptr @setup_relax_domain_level._entry, section ".printk_index", align 4
@default_topology = internal global { [4 x %struct.sched_domain_topology_level], [48 x i8] } { [4 x %struct.sched_domain_topology_level] [%struct.sched_domain_topology_level { ptr @cpu_smt_mask, ptr @cpu_smt_flags, i32 0, i32 0, %struct.sd_data zeroinitializer, ptr @.str.23 }, %struct.sched_domain_topology_level { ptr @cpu_coregroup_mask, ptr @cpu_core_flags, i32 0, i32 0, %struct.sd_data zeroinitializer, ptr @.str.24 }, %struct.sched_domain_topology_level { ptr @cpu_cpu_mask, ptr null, i32 0, i32 0, %struct.sd_data zeroinitializer, ptr @.str.25 }, %struct.sched_domain_topology_level zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SMT\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MC\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DIE\00", [28 x i8] zeroinitializer }, align 32
@cpu_topology = external dso_local global [4 x %struct.cpu_topology], align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@asym_cap_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @asym_cap_list, ptr @asym_cap_list }, [24 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@asym_cpu_capacity_update_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to allocate memory for asymmetry data\0A\00", [50 x i8] zeroinitializer }, align 32
@cpu_scale = external dso_local global i32, section ".data..percpu", align 4
@build_sched_domains._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.18, i32 2275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016root domain span: %*pbl (max cpu_capacity = %lu)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"build_sched_domains\00", [44 x i8] zeroinitializer }, align 32
@build_sched_domains._entry_ptr = internal global ptr @build_sched_domains._entry, section ".printk_index", align 4
@build_sched_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.18, i32 2134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013BUG: arch topology borken\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"build_sched_domain\00", [45 x i8] zeroinitializer }, align 32
@build_sched_domain._entry_ptr = internal global ptr @build_sched_domain._entry, section ".printk_index", align 4
@build_sched_domain._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.18, i32 2137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013     the %s domain not a subset of the %s domain\0A\00", [44 x i8] zeroinitializer }, align 32
@build_sched_domain._entry_ptr.33 = internal global ptr @build_sched_domain._entry.31, section ".printk_index", align 4
@sd_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"wrong sd_flags in topology description\0A\00", [56 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sd_init.__already_done.35 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.36 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"CPU capacity asymmetry not supported on SMT\0A\00", [51 x i8] zeroinitializer }, align 32
@asym_cpu_capacity_classify.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@init_overlap_sched_group.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@build_balance_mask.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@claim_allocations.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@sched_domain_debug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.18, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017CPU%d attaching NULL sched-domain.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sched_domain_debug\00", [45 x i8] zeroinitializer }, align 32
@sched_domain_debug._entry_ptr = internal global ptr @sched_domain_debug._entry, section ".printk_index", align 4
@sched_domain_debug._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.18, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017CPU%d attaching sched-domain(s):\0A\00", [60 x i8] zeroinitializer }, align 32
@sched_domain_debug._entry_ptr.43 = internal global ptr @sched_domain_debug._entry.41, section ".printk_index", align 4
@sched_domain_debug_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.18, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%*s domain-%d: \00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sched_domain_debug_one\00", [41 x i8] zeroinitializer }, align 32
@sched_domain_debug_one._entry_ptr = internal global ptr @sched_domain_debug_one._entry, section ".printk_index", align 4
@.str.46 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@sched_domain_debug_one._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.45, ptr @.str.18, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\01cspan=%*pbl level=%s\0A\00", [41 x i8] zeroinitializer }, align 32
@sched_domain_debug_one._entry_ptr.49 = internal global ptr @sched_domain_debug_one._entry.47, section ".printk_index", align 4
@sched_domain_debug_one._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.45, ptr @.str.18, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ERROR: domain->span does not contain CPU%d\0A\00", [50 x i8] zeroinitializer }, align 32
@sched_domain_debug_one._entry_ptr.52 = internal global ptr @sched_domain_debug_one._entry.50, section ".printk_index", align 4
@sched_domain_debug_one._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.45, ptr @.str.18, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013ERROR: domain->groups does not contain CPU%d\0A\00", [48 x i8] zeroinitializer }, align 32
@sched_domain_debug_one._entry_ptr.55 = internal global ptr @sched_domain_debug_one._entry.53, section ".printk_index", align 4
@sched_domain_debug_one._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.45, ptr @.str.18, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ERROR: flag %s set here but not in child\0A\00", [52 x i8] zeroinitializer }, align 32
@sched_domain_debug_one._entry_ptr.58 = internal global ptr @sched_domain_debug_one._entry.56, section ".printk_index", align 4
@sched_domain_debug_one._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.45, ptr @.str.18, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013ERROR: flag %s set here but not in parent\0A\00", [51 x i8] zeroinitializer }, align 32
@sched_domain_debug_one._entry_ptr.61 = internal global ptr @sched_domain_debug_one._entry.59, section ".printk_index", align 4
@sched_domain_debug_one._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.45, ptr @.str.18, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%*s groups:\00", [18 x i8] zeroinitializer }, align 32
@sched_domain_debug_one._entry_ptr.64 = internal global ptr @sched_domain_debug_one._entry.62, section ".printk_index", align 4
@sched_domain_debug_one._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.45, ptr @.str.18, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@sched_domain_debug_one._entry_ptr.67 = internal global ptr @sched_domain_debug_one._entry.65, section ".printk_index", align 4
@sched_domain_debug_one._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.45, ptr @.str.18, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013ERROR: group is NULL\0A\00", [40 x i8] zeroinitializer }, align 32
@sched_domain_debug_one._entry_ptr.70 = internal global ptr @sched_domain_debug_one._entry.68, section ".printk_index", align 4
@sched_domain_debug_one._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.45, ptr @.str.18, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@sched_domain_debug_one._entry_ptr.73 = internal global ptr @sched_domain_debug_one._entry.71, section ".printk_index", align 4
@sched_domain_debug_one._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.45, ptr @.str.18, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013ERROR: empty group\0A\00", [42 x i8] zeroinitializer }, align 32
@sched_domain_debug_one._entry_ptr.76 = internal global ptr @sched_domain_debug_one._entry.74, section ".printk_index", align 4
@sched_domain_debug_one._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.45, ptr @.str.18, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sched_domain_debug_one._entry_ptr.78 = internal global ptr @sched_domain_debug_one._entry.77, section ".printk_index", align 4
@sched_domain_debug_one._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.45, ptr @.str.18, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013ERROR: repeated CPUs\0A\00", [40 x i8] zeroinitializer }, align 32
@sched_domain_debug_one._entry_ptr.81 = internal global ptr @sched_domain_debug_one._entry.79, section ".printk_index", align 4
@sched_domain_debug_one._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.45, ptr @.str.18, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\01c %d:{ span=%*pbl\00", [45 x i8] zeroinitializer }, align 32
@sched_domain_debug_one._entry_ptr.84 = internal global ptr @sched_domain_debug_one._entry.82, section ".printk_index", align 4
@sched_domain_debug_one._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.45, ptr @.str.18, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\01c mask=%*pbl\00", [18 x i8] zeroinitializer }, align 32
@sched_domain_debug_one._entry_ptr.87 = internal global ptr @sched_domain_debug_one._entry.85, section ".printk_index", align 4
@sched_domain_debug_one._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.45, ptr @.str.18, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c cap=%lu\00", [21 x i8] zeroinitializer }, align 32
@sched_domain_debug_one._entry_ptr.90 = internal global ptr @sched_domain_debug_one._entry.88, section ".printk_index", align 4
@sched_domain_debug_one._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.45, ptr @.str.18, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013ERROR: domain->groups does not match domain->child\0A\00", [42 x i8] zeroinitializer }, align 32
@sched_domain_debug_one._entry_ptr.93 = internal global ptr @sched_domain_debug_one._entry.91, section ".printk_index", align 4
@sched_domain_debug_one._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.45, ptr @.str.18, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c }\00", [27 x i8] zeroinitializer }, align 32
@sched_domain_debug_one._entry_ptr.96 = internal global ptr @sched_domain_debug_one._entry.94, section ".printk_index", align 4
@sched_domain_debug_one._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.45, ptr @.str.18, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c,\00", [28 x i8] zeroinitializer }, align 32
@sched_domain_debug_one._entry_ptr.99 = internal global ptr @sched_domain_debug_one._entry.97, section ".printk_index", align 4
@sched_domain_debug_one._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.45, ptr @.str.18, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sched_domain_debug_one._entry_ptr.101 = internal global ptr @sched_domain_debug_one._entry.100, section ".printk_index", align 4
@sched_domain_debug_one._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.45, ptr @.str.18, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ERROR: groups don't span domain->span\0A\00", [55 x i8] zeroinitializer }, align 32
@sched_domain_debug_one._entry_ptr.104 = internal global ptr @sched_domain_debug_one._entry.102, section ".printk_index", align 4
@sched_domain_debug_one._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.45, ptr @.str.18, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013ERROR: parent span is not a superset of domain->span\0A\00", [40 x i8] zeroinitializer }, align 32
@sched_domain_debug_one._entry_ptr.107 = internal global ptr @sched_domain_debug_one._entry.105, section ".printk_index", align 4
@highest_flag_domain.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.108 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kernel/sched/sched.h\00", [43 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@lowest_flag_domain.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.110 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@build_perf_domains._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.18, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016rd %*pbl: CPUs do not have asymmetric capacities\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"build_perf_domains\00", [45 x i8] zeroinitializer }, align 32
@build_perf_domains._entry_ptr = internal global ptr @build_perf_domains._entry, section ".printk_index", align 4
@build_perf_domains._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.112, ptr @.str.18, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014rd %*pbl: Disabling EAS, SMT is not supported\0A\00", [47 x i8] zeroinitializer }, align 32
@build_perf_domains._entry_ptr.115 = internal global ptr @build_perf_domains._entry.113, section ".printk_index", align 4
@build_perf_domains._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.112, ptr @.str.18, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\014rd %*pbl: Disabling EAS: frequency-invariant load tracking not yet supported\00", [49 x i8] zeroinitializer }, align 32
@build_perf_domains._entry_ptr.118 = internal global ptr @build_perf_domains._entry.116, section ".printk_index", align 4
@sched_smt_present = external dso_local global %struct.static_key_false, align 4
@sched_energy_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.18, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s: stopping EAS\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sched_energy_set\00", [47 x i8] zeroinitializer }, align 32
@sched_energy_set._entry_ptr = internal global ptr @sched_energy_set._entry, section ".printk_index", align 4
@sched_energy_set._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.120, ptr @.str.18, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s: starting EAS\0A\00", [44 x i8] zeroinitializer }, align 32
@sched_energy_set._entry_ptr.123 = internal global ptr @sched_energy_set._entry.121, section ".printk_index", align 4
@___asan_gen_.127 = private unnamed_addr constant [20 x i8] c"sched_domains_mutex\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 7, i32 1 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 51, i32 1 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 59, i32 1 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 67, i32 1 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 75, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 82, i32 1 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 91, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 101, i32 1 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 110, i32 1 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 119, i32 1 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 130, i32 1 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 140, i32 1 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 150, i32 1 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 158, i32 1 }
@___asan_gen_.173 = private unnamed_addr constant [34 x i8] c"../include/linux/sched/sd_flags.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 166, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant [14 x i8] c"sd_flag_debug\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 29, i32 28 }
@___asan_gen_.178 = private unnamed_addr constant [21 x i8] c"sched_energy_present\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 209, i32 1 }
@___asan_gen_.181 = private unnamed_addr constant [26 x i8] c"sysctl_sched_energy_aware\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 210, i32 14 }
@___asan_gen_.187 = private unnamed_addr constant [19 x i8] c"sched_energy_mutex\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 211, i32 1 }
@___asan_gen_.193 = private unnamed_addr constant [20 x i8] c"sched_energy_update\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 212, i32 6 }
@___asan_gen_.196 = private unnamed_addr constant [16 x i8] c"def_root_domain\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 559, i32 20 }
@___asan_gen_.199 = private unnamed_addr constant [23 x i8] c"sched_asym_cpucapacity\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 651, i32 1 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1660, i32 6 }
@___asan_gen_.205 = private unnamed_addr constant [22 x i8] c"sched_domain_topology\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1652, i32 44 }
@___asan_gen_.208 = private unnamed_addr constant [22 x i8] c"sched_domains_tmpmask\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 10, i32 22 }
@___asan_gen_.211 = private unnamed_addr constant [23 x i8] c"sched_domains_tmpmask2\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 11, i32 22 }
@___asan_gen_.214 = private unnamed_addr constant [14 x i8] c"fallback_doms\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2299, i32 24 }
@___asan_gen_.217 = private unnamed_addr constant [10 x i8] c"ndoms_cur\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2289, i32 15 }
@___asan_gen_.220 = private unnamed_addr constant [9 x i8] c"doms_cur\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2286, i32 25 }
@___asan_gen_.223 = private unnamed_addr constant [10 x i8] c"dattr_cur\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2292, i32 35 }
@___asan_gen_.226 = private unnamed_addr constant [23 x i8] c"sched_domain_level_max\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1396, i32 5 }
@___asan_gen_.230 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 108, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 528, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [27 x i8] c"default_relax_domain_level\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1395, i32 12 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1401, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant [17 x i8] c"default_topology\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1636, i32 43 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1638, i32 33 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1646, i32 40 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1648, i32 18 }
@___asan_gen_.262 = private unnamed_addr constant [14 x i8] c"asym_cap_list\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1295, i32 8 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1348, i32 6 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2274, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2134, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2136, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1542, i32 6 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1583, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 695, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 138, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 142, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 43, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 44, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 48, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 51, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 60, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 65, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 69, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 72, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 73, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 78, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 79, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 85, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 86, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 92, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 98, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 103, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 108, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 111, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 116, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 119, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 122, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 126, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant [24 x i8] c"../kernel/sched/sched.h\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1744, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 723, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 367, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 375, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 382, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 315, i32 4 }
@___asan_gen_.490 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.493 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.494 = private constant [27 x i8] c"../kernel/sched/topology.c\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 319, i32 4 }
@llvm.compiler.used = appending global [159 x ptr] [ptr @__setup_sched_debug_setup, ptr @__setup_setup_relax_domain_level, ptr @build_perf_domains._entry, ptr @build_perf_domains._entry.113, ptr @build_perf_domains._entry.116, ptr @build_perf_domains._entry_ptr, ptr @build_perf_domains._entry_ptr.115, ptr @build_perf_domains._entry_ptr.118, ptr @build_sched_domain._entry, ptr @build_sched_domain._entry.31, ptr @build_sched_domain._entry_ptr, ptr @build_sched_domain._entry_ptr.33, ptr @build_sched_domains._entry, ptr @build_sched_domains._entry_ptr, ptr @sched_domain_debug._entry, ptr @sched_domain_debug._entry.41, ptr @sched_domain_debug._entry_ptr, ptr @sched_domain_debug._entry_ptr.43, ptr @sched_domain_debug_one._entry, ptr @sched_domain_debug_one._entry.100, ptr @sched_domain_debug_one._entry.102, ptr @sched_domain_debug_one._entry.105, ptr @sched_domain_debug_one._entry.47, ptr @sched_domain_debug_one._entry.50, ptr @sched_domain_debug_one._entry.53, ptr @sched_domain_debug_one._entry.56, ptr @sched_domain_debug_one._entry.59, ptr @sched_domain_debug_one._entry.62, ptr @sched_domain_debug_one._entry.65, ptr @sched_domain_debug_one._entry.68, ptr @sched_domain_debug_one._entry.71, ptr @sched_domain_debug_one._entry.74, ptr @sched_domain_debug_one._entry.77, ptr @sched_domain_debug_one._entry.79, ptr @sched_domain_debug_one._entry.82, ptr @sched_domain_debug_one._entry.85, ptr @sched_domain_debug_one._entry.88, ptr @sched_domain_debug_one._entry.91, ptr @sched_domain_debug_one._entry.94, ptr @sched_domain_debug_one._entry.97, ptr @sched_domain_debug_one._entry_ptr, ptr @sched_domain_debug_one._entry_ptr.101, ptr @sched_domain_debug_one._entry_ptr.104, ptr @sched_domain_debug_one._entry_ptr.107, ptr @sched_domain_debug_one._entry_ptr.49, ptr @sched_domain_debug_one._entry_ptr.52, ptr @sched_domain_debug_one._entry_ptr.55, ptr @sched_domain_debug_one._entry_ptr.58, ptr @sched_domain_debug_one._entry_ptr.61, ptr @sched_domain_debug_one._entry_ptr.64, ptr @sched_domain_debug_one._entry_ptr.67, ptr @sched_domain_debug_one._entry_ptr.70, ptr @sched_domain_debug_one._entry_ptr.73, ptr @sched_domain_debug_one._entry_ptr.76, ptr @sched_domain_debug_one._entry_ptr.78, ptr @sched_domain_debug_one._entry_ptr.81, ptr @sched_domain_debug_one._entry_ptr.84, ptr @sched_domain_debug_one._entry_ptr.87, ptr @sched_domain_debug_one._entry_ptr.90, ptr @sched_domain_debug_one._entry_ptr.93, ptr @sched_domain_debug_one._entry_ptr.96, ptr @sched_domain_debug_one._entry_ptr.99, ptr @sched_energy_set._entry, ptr @sched_energy_set._entry.121, ptr @sched_energy_set._entry_ptr, ptr @sched_energy_set._entry_ptr.123, ptr @setup_relax_domain_level._entry, ptr @setup_relax_domain_level._entry_ptr, ptr @.str, ptr @sched_domains_mutex, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @sd_flag_debug, ptr @sched_energy_present, ptr @sysctl_sched_energy_aware, ptr @.str.16, ptr @sched_energy_mutex, ptr @.str.17, ptr @sched_energy_update, ptr @def_root_domain, ptr @sched_asym_cpucapacity, ptr @.str.18, ptr @sched_domain_topology, ptr @sched_domains_tmpmask, ptr @sched_domains_tmpmask2, ptr @fallback_doms, ptr @ndoms_cur, ptr @doms_cur, ptr @dattr_cur, ptr @sched_domain_level_max, ptr @.str.19, ptr @init_rootdomain.__key, ptr @.str.20, ptr @default_relax_domain_level, ptr @.str.21, ptr @.str.22, ptr @default_topology, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @asym_cap_list, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.103, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.117, ptr @.str.119, ptr @.str.120, ptr @.str.122], section "llvm.metadata"
@0 = internal global [124 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domains_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_flag_debug to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_energy_present to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_sched_energy_aware to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_energy_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_energy_update to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @def_root_domain to i32), i32 1072, i32 1344, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_asym_cpucapacity to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_topology to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domains_tmpmask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domains_tmpmask2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fallback_doms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndoms_cur to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doms_cur to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dattr_cur to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_level_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_rootdomain.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_relax_domain_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_relax_domain_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_topology to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asym_cap_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_sched_domains._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_sched_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_sched_domain._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_debug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_debug._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_debug_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_debug_one._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_debug_one._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_debug_one._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_debug_one._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_debug_one._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_debug_one._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_debug_one._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_debug_one._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_debug_one._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_debug_one._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_debug_one._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_debug_one._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_debug_one._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_debug_one._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_debug_one._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_debug_one._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_debug_one._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_debug_one._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_debug_one._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_debug_one._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_domain_debug_one._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_perf_domains._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_perf_domains._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_perf_domains._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_energy_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_energy_set._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sched_debug_setup(ptr nocapture noundef readnone %str) #0 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store1_noabort(i32 ptrtoint (ptr @sched_debug_verbose to i32))
  store i8 1, ptr @sched_debug_verbose, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rebuild_sched_domains_energy() local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @sched_energy_mutex, i32 noundef 0) #15
  store i8 1, ptr @sched_energy_update, align 1
  tail call void @rebuild_sched_domains() #15
  store i8 0, ptr @sched_energy_update, align 1
  tail call void @mutex_unlock(ptr noundef nonnull @sched_energy_mutex) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rebuild_sched_domains() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sched_energy_aware_handler(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.end.thread, label %land.lhs.true

if.end.thread:                                    ; preds = %entry
  %call116 = tail call i32 @proc_dointvec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #15
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @capable(i32 noundef 21) #15
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %call1 = tail call i32 @proc_dointvec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #15
  %tobool2.not = icmp ne i32 %call1, 0
  %brmerge = or i1 %tobool.not, %tobool2.not
  br i1 %brmerge, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_energy_present, ptr blockaddress(@sched_energy_aware_handler, %l_yes.i)) #15
          to label %arch_static_branch.exit [label %l_yes.i], !srcloc !299

l_yes.i:                                          ; preds = %if.then5
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %l_yes.i, %if.then5
  %retval.0.i = phi i32 [ 1, %l_yes.i ], [ 0, %if.then5 ]
  %0 = load i32, ptr @sysctl_sched_energy_aware, align 4
  %cmp.not = icmp eq i32 %0, %retval.0.i
  br i1 %cmp.not, label %cleanup, label %if.then9

if.then9:                                         ; preds = %arch_static_branch.exit
  tail call void @mutex_lock_nested(ptr noundef nonnull @sched_energy_mutex, i32 noundef 0) #15
  store i8 1, ptr @sched_energy_update, align 1
  tail call void @rebuild_sched_domains() #15
  store i8 0, ptr @sched_energy_update, align 1
  tail call void @mutex_unlock(ptr noundef nonnull @sched_energy_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %arch_static_branch.exit, %if.end, %land.lhs.true, %if.end.thread
  %retval.0 = phi i32 [ -1, %land.lhs.true ], [ %call1, %if.end ], [ 0, %arch_static_branch.exit ], [ 0, %if.then9 ], [ %call116, %if.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rq_attach_root(ptr noundef %rq, ptr noundef %rd) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !300
  %and.i.i = and i32 %0, 128
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %_raw_spin_rq_lock_irqsave.exit

if.then.i:                                        ; preds = %entry
  tail call void @trace_hardirqs_off() #15
  br label %_raw_spin_rq_lock_irqsave.exit

_raw_spin_rq_lock_irqsave.exit:                   ; preds = %if.then.i, %entry
  tail call void @raw_spin_rq_lock_nested(ptr noundef %rq, i32 noundef 0) #15
  %rd1 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 35
  %1 = ptrtoint ptr %rd1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rd1, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end10, label %if.then

if.then:                                          ; preds = %_raw_spin_rq_lock_irqsave.exit
  %cpu = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %online = getelementptr inbounds %struct.root_domain, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %online to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %online, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i = icmp ugt i32 %7, %4
  br i1 %cmp.not.i.i.i, label %cpumask_test_cpu.exit, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %cpumask_test_cpu.exit, label %if.then.i.i.i, !prof !301

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i, %if.then
  %div3.i.i = lshr i32 %4, 5
  %arrayidx.i.i = getelementptr i32, ptr %6, i32 %div3.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i40 = and i32 %4, 31
  %10 = shl nuw i32 1, %and.i.i40
  %11 = and i32 %9, %10
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %cpumask_test_cpu.exit
  tail call void @set_rq_offline(ptr noundef %rq) #15
  br label %if.end

if.end:                                           ; preds = %if.then5, %cpumask_test_cpu.exit
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  %span = getelementptr inbounds %struct.root_domain, ptr %2, i32 0, i32 3
  %14 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %span, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i41 = icmp ugt i32 %16, %13
  br i1 %cmp.not.i.i.i41, label %cpumask_clear_cpu.exit, label %land.rhs.i.i.i43

land.rhs.i.i.i43:                                 ; preds = %if.end
  %.b37.i.i.i42 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i42, label %cpumask_clear_cpu.exit, label %if.then.i.i.i44, !prof !301

if.then.i.i.i44:                                  ; preds = %land.rhs.i.i.i43
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i44, %land.rhs.i.i.i43, %if.end
  tail call void @_clear_bit(i32 noundef %13, ptr noundef %15) #15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %2, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !302
  tail call void @llvm.prefetch.p0(ptr nonnull %2, i32 1, i32 3, i32 1) #15
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #15, !srcloc !303
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !304
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  %spec.select = select i1 %cmp.i.i, ptr %2, ptr null
  br label %if.end10

if.end10:                                         ; preds = %cpumask_clear_cpu.exit, %_raw_spin_rq_lock_irqsave.exit
  %old_rd.0 = phi ptr [ null, %_raw_spin_rq_lock_irqsave.exit ], [ %spec.select, %cpumask_clear_cpu.exit ]
  %call.i.i39 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rd, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %rd, i32 1, i32 3, i32 1) #15
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rd, ptr %rd, i32 1, ptr elementtype(i32) %rd) #15, !srcloc !305
  %19 = ptrtoint ptr %rd1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %rd, ptr %rd1, align 8
  %cpu13 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %20 = ptrtoint ptr %cpu13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu13, align 4
  %span14 = getelementptr inbounds %struct.root_domain, ptr %rd, i32 0, i32 3
  %22 = ptrtoint ptr %span14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %span14, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i45 = icmp ugt i32 %24, %21
  br i1 %cmp.not.i.i.i45, label %cpumask_set_cpu.exit, label %land.rhs.i.i.i47

land.rhs.i.i.i47:                                 ; preds = %if.end10
  %.b37.i.i.i46 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i46, label %cpumask_set_cpu.exit, label %if.then.i.i.i48, !prof !301

if.then.i.i.i48:                                  ; preds = %land.rhs.i.i.i47
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i48, %land.rhs.i.i.i47, %if.end10
  tail call void @_set_bit(i32 noundef %21, ptr noundef %23) #15
  %25 = ptrtoint ptr %cpu13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu13, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i49 = icmp ugt i32 %27, %26
  br i1 %cmp.not.i.i.i49, label %cpumask_test_cpu.exit58, label %land.rhs.i.i.i51

land.rhs.i.i.i51:                                 ; preds = %cpumask_set_cpu.exit
  %.b37.i.i.i50 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i50, label %cpumask_test_cpu.exit58, label %if.then.i.i.i52, !prof !301

if.then.i.i.i52:                                  ; preds = %land.rhs.i.i.i51
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpumask_test_cpu.exit58

cpumask_test_cpu.exit58:                          ; preds = %if.then.i.i.i52, %land.rhs.i.i.i51, %cpumask_set_cpu.exit
  %div3.i.i53 = lshr i32 %26, 5
  %arrayidx.i.i54 = getelementptr i32, ptr @__cpu_active_mask, i32 %div3.i.i53
  %28 = ptrtoint ptr %arrayidx.i.i54 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %arrayidx.i.i54, align 4
  %and.i.i55 = and i32 %26, 31
  %30 = shl nuw i32 1, %and.i.i55
  %31 = and i32 %29, %30
  %tobool17.not = icmp eq i32 %31, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %cpumask_test_cpu.exit58
  tail call void @set_rq_online(ptr noundef %rq) #15
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %cpumask_test_cpu.exit58
  tail call void @raw_spin_rq_unlock(ptr noundef %rq) #15
  br i1 %tobool.not.i, label %if.then.i61, label %do.body2.i

if.then.i61:                                      ; preds = %if.end19
  tail call void @trace_hardirqs_on() #15
  br label %do.body2.i

do.body2.i:                                       ; preds = %if.then.i61, %if.end19
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !306
  %and.i.i.i = and i32 %32, 128
  %tobool10.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool10.not.i, label %if.then14.i, label %raw_spin_rq_unlock_irqrestore.exit, !prof !307

if.then14.i:                                      ; preds = %do.body2.i
  tail call void @warn_bogus_irq_restore() #15
  br label %raw_spin_rq_unlock_irqrestore.exit

raw_spin_rq_unlock_irqrestore.exit:               ; preds = %if.then14.i, %do.body2.i
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #15, !srcloc !308
  %tobool20.not = icmp eq ptr %old_rd.0, null
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %raw_spin_rq_unlock_irqrestore.exit
  %rcu = getelementptr inbounds %struct.root_domain, ptr %old_rd.0, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @free_rootdomain) #15
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %raw_spin_rq_unlock_irqrestore.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_rq_offline(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_rq_online(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_rootdomain(ptr noundef %rcu) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cpupri = getelementptr i8, ptr %rcu, i32 240
  tail call void @cpupri_cleanup(ptr noundef %cpupri) #15
  %cpudl = getelementptr i8, ptr %rcu, i32 96
  tail call void @cpudl_cleanup(ptr noundef %cpudl) #15
  %dlo_mask = getelementptr i8, ptr %rcu, i32 24
  %0 = ptrtoint ptr %dlo_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dlo_mask, align 8
  tail call void @free_cpumask_var(ptr noundef %1) #15
  %rto_mask = getelementptr i8, ptr %rcu, i32 236
  %2 = ptrtoint ptr %rto_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rto_mask, align 4
  tail call void @free_cpumask_var(ptr noundef %3) #15
  %online = getelementptr i8, ptr %rcu, i32 12
  %4 = ptrtoint ptr %online to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %online, align 4
  tail call void @free_cpumask_var(ptr noundef %5) #15
  %span = getelementptr i8, ptr %rcu, i32 8
  %6 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %span, align 8
  tail call void @free_cpumask_var(ptr noundef %7) #15
  %pd = getelementptr i8, ptr %rcu, i32 1056
  %8 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pd, align 8
  %tobool.not3.i = icmp eq ptr %9, null
  br i1 %tobool.not3.i, label %free_pd.exit, label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %entry
  %pd.addr.04.i = phi ptr [ %11, %while.body.i ], [ %9, %entry ]
  %next.i = getelementptr inbounds %struct.perf_domain, ptr %pd.addr.04.i, i32 0, i32 1
  %10 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %next.i, align 4
  tail call void @kfree(ptr noundef nonnull %pd.addr.04.i) #15
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %free_pd.exit, label %while.body.i

free_pd.exit:                                     ; preds = %while.body.i, %entry
  %add.ptr = getelementptr i8, ptr %rcu, i32 -8
  tail call void @kfree(ptr noundef %add.ptr) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sched_get_rd(ptr noundef %rd) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rd, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %rd, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rd, ptr %rd, i32 1, ptr elementtype(i32) %rd) #15, !srcloc !305
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sched_put_rd(ptr noundef %rd) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rd, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !302
  tail call void @llvm.prefetch.p0(ptr %rd, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rd, ptr %rd, i32 1, ptr elementtype(i32) %rd) #15, !srcloc !303
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !304
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %return

if.end:                                           ; preds = %entry
  %rcu = getelementptr inbounds %struct.root_domain, ptr %rd, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @free_rootdomain) #15
  br label %return

return:                                           ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_defrootdomain() local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @init_rootdomain(ptr noundef nonnull @def_root_domain)
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @def_root_domain, i32 noundef 4) #15
  store volatile i32 1, ptr @def_root_domain, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_rootdomain(ptr noundef %rd) unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %span = getelementptr inbounds %struct.root_domain, ptr %rd, i32 0, i32 3
  %call = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef %span, i32 noundef 3264) #15
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %online = getelementptr inbounds %struct.root_domain, ptr %rd, i32 0, i32 4
  %call1 = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef %online, i32 noundef 3264) #15
  br i1 %call1, label %if.end3, label %free_span

if.end3:                                          ; preds = %if.end
  %dlo_mask = getelementptr inbounds %struct.root_domain, ptr %rd, i32 0, i32 7
  %call4 = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef %dlo_mask, i32 noundef 3264) #15
  br i1 %call4, label %if.end6, label %free_online

if.end6:                                          ; preds = %if.end3
  %rto_mask = getelementptr inbounds %struct.root_domain, ptr %rd, i32 0, i32 18
  %call7 = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef %rto_mask, i32 noundef 3264) #15
  br i1 %call7, label %if.end9, label %free_dlo_mask

if.end9:                                          ; preds = %if.end6
  %rto_cpu = getelementptr inbounds %struct.root_domain, ptr %rd, i32 0, i32 15
  %0 = ptrtoint ptr %rto_cpu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rto_cpu, align 8
  %rto_lock = getelementptr inbounds %struct.root_domain, ptr %rd, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %rto_lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_rootdomain.__key, i16 noundef signext 2) #15
  %rto_push_work = getelementptr inbounds %struct.root_domain, ptr %rd, i32 0, i32 12
  %1 = ptrtoint ptr %rto_push_work to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %rto_push_work, align 8
  %.compoundliteral.sroa.2.0.rto_push_work.sroa_idx = getelementptr inbounds %struct.root_domain, ptr %rd, i32 0, i32 12, i32 0, i32 1
  %2 = ptrtoint ptr %.compoundliteral.sroa.2.0.rto_push_work.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %.compoundliteral.sroa.2.0.rto_push_work.sroa_idx, align 4
  %.compoundliteral.sroa.3.0.rto_push_work.sroa_idx = getelementptr inbounds %struct.root_domain, ptr %rd, i32 0, i32 12, i32 1
  %3 = ptrtoint ptr %.compoundliteral.sroa.3.0.rto_push_work.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @rto_push_irq_work_func, ptr %.compoundliteral.sroa.3.0.rto_push_work.sroa_idx, align 8
  %.compoundliteral.sroa.4.0.rto_push_work.sroa_idx = getelementptr inbounds %struct.root_domain, ptr %rd, i32 0, i32 12, i32 2
  %4 = ptrtoint ptr %.compoundliteral.sroa.4.0.rto_push_work.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %.compoundliteral.sroa.4.0.rto_push_work.sroa_idx, align 4
  %visit_gen = getelementptr inbounds %struct.root_domain, ptr %rd, i32 0, i32 11
  %5 = ptrtoint ptr %visit_gen to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %visit_gen, align 8
  %dl_bw = getelementptr inbounds %struct.root_domain, ptr %rd, i32 0, i32 9
  tail call void @init_dl_bw(ptr noundef %dl_bw) #15
  %cpudl = getelementptr inbounds %struct.root_domain, ptr %rd, i32 0, i32 10
  %call10 = tail call i32 @cpudl_init(ptr noundef %cpudl) #15
  %cmp.not = icmp eq i32 %call10, 0
  br i1 %cmp.not, label %if.end12, label %free_rto_mask

if.end12:                                         ; preds = %if.end9
  %cpupri = getelementptr inbounds %struct.root_domain, ptr %rd, i32 0, i32 19
  %call13 = tail call i32 @cpupri_init(ptr noundef %cpupri) #15
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %return, label %free_cpudl

free_cpudl:                                       ; preds = %if.end12
  tail call void @cpudl_cleanup(ptr noundef %cpudl) #15
  br label %free_rto_mask

free_rto_mask:                                    ; preds = %free_cpudl, %if.end9
  %6 = ptrtoint ptr %rto_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rto_mask, align 4
  tail call void @free_cpumask_var(ptr noundef %7) #15
  br label %free_dlo_mask

free_dlo_mask:                                    ; preds = %free_rto_mask, %if.end6
  %8 = ptrtoint ptr %dlo_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dlo_mask, align 8
  tail call void @free_cpumask_var(ptr noundef %9) #15
  br label %free_online

free_online:                                      ; preds = %free_dlo_mask, %if.end3
  %10 = ptrtoint ptr %online to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %online, align 4
  tail call void @free_cpumask_var(ptr noundef %11) #15
  br label %free_span

free_span:                                        ; preds = %free_online, %if.end
  %12 = ptrtoint ptr %span to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %span, align 8
  tail call void @free_cpumask_var(ptr noundef %13) #15
  br label %return

return:                                           ; preds = %free_span, %if.end12, %entry
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -12, %entry ], [ -12, %free_span ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @group_balance_cpu(ptr nocapture noundef readonly %sg) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %sgc.i = getelementptr inbounds %struct.sched_group, ptr %sg, i32 0, i32 3
  %0 = ptrtoint ptr %sgc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgc.i, align 4
  %cpumask.i = getelementptr inbounds %struct.sched_group_capacity, ptr %1, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %cpumask.i, i32 noundef %2) #15
  ret i32 %call.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @setup_relax_domain_level(ptr noundef %str) #4 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kstrtoint(ptr noundef %str, i32 noundef 0, ptr noundef nonnull @default_relax_domain_level) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_sched_topology(ptr noundef %tl) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @sched_smp_initialized to i32))
  %0 = load i8, ptr @sched_smp_initialized, align 1, !range !309
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end38.critedge, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b41 = load i1, ptr @set_sched_topology.__already_done, align 1
  br i1 %.b41, label %return, label %if.then, !prof !301

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @set_sched_topology.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 1660, i32 noundef 9, ptr noundef null) #15
  br label %return

if.end38.critedge:                                ; preds = %entry
  store ptr %tl, ptr @sched_domain_topology, align 4
  br label %return

return:                                           ; preds = %if.end38.critedge, %if.then, %land.rhs
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @topology_update_cpu_topology() local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_sched_domains(i32 noundef %ndoms) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %ndoms, i32 4) #15
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end7.i, !prof !307

if.end7.i:                                        ; preds = %entry
  %2 = extractvalue { i32, i1 } %0, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3264) #18
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end7.i
  %cmp16.not = icmp eq i32 %ndoms, 0
  br i1 %cmp16.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.inc, %for.cond.preheader
  %i.017 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr ptr, ptr %call8.i, i32 %i.017
  %call1 = tail call zeroext i1 @alloc_cpumask_var(ptr noundef %arrayidx, i32 noundef 3264) #15
  br i1 %call1, label %for.inc, label %if.then2

if.then2:                                         ; preds = %for.body
  %cmp4.not.i = icmp eq i32 %i.017, 0
  br i1 %cmp4.not.i, label %free_sched_domains.exit, label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %if.then2
  %i.05.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %if.then2 ]
  %arrayidx.i = getelementptr ptr, ptr %call8.i, i32 %i.05.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  tail call void @free_cpumask_var(ptr noundef %4) #15
  %inc.i = add nuw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %i.017
  br i1 %exitcond.not.i, label %free_sched_domains.exit, label %for.body.i

free_sched_domains.exit:                          ; preds = %for.body.i, %if.then2
  tail call void @kfree(ptr noundef nonnull %call8.i) #15
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, %ndoms
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %free_sched_domains.exit, %for.cond.preheader, %if.end7.i, %entry
  %retval.0 = phi ptr [ null, %free_sched_domains.exit ], [ null, %if.end7.i ], [ null, %entry ], [ %call8.i, %for.cond.preheader ], [ %call8.i, %for.inc ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @alloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_sched_domains(ptr noundef %doms, i32 noundef %ndoms) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp4.not = icmp eq i32 %ndoms, 0
  br i1 %cmp4.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.05 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr ptr, ptr %doms, i32 %i.05
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @free_cpumask_var(ptr noundef %1) #15
  %inc = add nuw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %ndoms
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  tail call void @kfree(ptr noundef %doms) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sched_init_domains(ptr noundef %cpu_map) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull @sched_domains_tmpmask, i32 noundef 3264) #15
  %call1 = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull @sched_domains_tmpmask2, i32 noundef 3264) #15
  %call2 = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull @fallback_doms, i32 noundef 3264) #15
  %call3 = tail call i32 @topology_update_cpu_topology()
  tail call fastcc void @asym_cpu_capacity_scan()
  store i32 1, ptr @ndoms_cur, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #19
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %alloc_sched_domains.exit, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %entry
  %call1.i = tail call zeroext i1 @alloc_cpumask_var(ptr noundef nonnull %call7.i.i.i, i32 noundef 3264) #15
  br i1 %call1.i, label %alloc_sched_domains.exit, label %free_sched_domains.exit.i

free_sched_domains.exit.i:                        ; preds = %for.body.i.preheader
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #15
  br label %alloc_sched_domains.exit

alloc_sched_domains.exit:                         ; preds = %free_sched_domains.exit.i, %for.body.i.preheader, %entry
  %retval.0.i = phi ptr [ null, %free_sched_domains.exit.i ], [ null, %entry ], [ %call7.i.i.i, %for.body.i.preheader ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  %spec.store.select = select i1 %tobool.not, ptr @fallback_doms, ptr %retval.0.i
  store ptr %spec.store.select, ptr @doms_cur, align 4
  %1 = ptrtoint ptr %spec.store.select to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %spec.store.select, align 4
  %call5 = tail call ptr @housekeeping_cpumask(i32 noundef 32) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @__bitmap_and(ptr noundef %2, ptr noundef %cpu_map, ptr noundef %call5, i32 noundef %3) #15
  %4 = load ptr, ptr @doms_cur, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call8 = tail call fastcc i32 @build_sched_domains(ptr noundef %6, ptr noundef null)
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @asym_cpu_capacity_scan() unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %entry1.070 = load ptr, ptr @asym_cap_list, align 4
  %cmp.not71 = icmp eq ptr %entry1.070, @asym_cap_list
  br i1 %cmp.not71, label %for.cond7.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %0, 31
  %1 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %1, 536870908
  br label %for.body

for.cond7.preheader:                              ; preds = %for.body, %entry
  %call73 = tail call ptr @housekeeping_cpumask(i32 noundef 32) #15
  %call874 = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask, ptr noundef %call73) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %cmp975 = icmp ult i32 %call874, %2
  br i1 %cmp975, label %for.body10, label %for.end11

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %entry1.072 = phi ptr [ %entry1.070, %for.body.lr.ph ], [ %entry1.0, %for.body ]
  %cpus = getelementptr inbounds %struct.asym_cap_data, ptr %entry1.072, i32 0, i32 2
  %3 = call ptr @memset(ptr %cpus, i32 0, i32 %mul.i.i)
  %4 = ptrtoint ptr %entry1.072 to i32
  call void @__asan_load4_noabort(i32 %4)
  %entry1.0 = load ptr, ptr %entry1.072, align 4
  %cmp.not = icmp eq ptr %entry1.0, @asym_cap_list
  br i1 %cmp.not, label %for.cond7.preheader, label %for.body

for.body10:                                       ; preds = %asym_cpu_capacity_update_data.exit, %for.cond7.preheader
  %5 = phi i32 [ %23, %asym_cpu_capacity_update_data.exit ], [ %2, %for.cond7.preheader ]
  %call876 = phi i32 [ %call8, %asym_cpu_capacity_update_data.exit ], [ %call874, %for.cond7.preheader ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call876
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %7, ptrtoint (ptr @cpu_scale to i32)
  %8 = inttoptr i32 %add.i.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.body10
  %entry1.0.in.i = phi ptr [ @asym_cap_list, %for.body10 ], [ %entry1.0.i, %for.body.i ]
  %11 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, @asym_cap_list
  br i1 %cmp.not.i, label %if.end8.i.i.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %capacity2.i = getelementptr inbounds %struct.asym_cap_data, ptr %entry1.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %capacity2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %capacity2.i, align 4
  %cmp3.i = icmp eq i32 %10, %13
  br i1 %cmp3.i, label %done.i, label %for.cond.i

if.end8.i.i.i:                                    ; preds = %for.cond.i
  %sub.i.i55 = add i32 %5, 31
  %14 = lshr i32 %sub.i.i55, 3
  %mul.i.i56 = and i32 %14, 536870908
  %add.i = add nuw nsw i32 %mul.i.i56, 12
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #18
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end52.i

land.rhs.i:                                       ; preds = %if.end8.i.i.i
  %.b66.i = load i1, ptr @asym_cpu_capacity_update_data.__already_done, align 1
  br i1 %.b66.i, label %asym_cpu_capacity_update_data.exit, label %if.then19.i, !prof !301

if.then19.i:                                      ; preds = %land.rhs.i
  store i1 true, ptr @asym_cpu_capacity_update_data.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 1348, i32 noundef 9, ptr noundef nonnull @.str.26) #15
  br label %asym_cpu_capacity_update_data.exit

if.end52.i:                                       ; preds = %if.end8.i.i.i
  %capacity53.i = getelementptr inbounds %struct.asym_cap_data, ptr %call9.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %capacity53.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %10, ptr %capacity53.i, align 8
  %16 = load ptr, ptr @asym_cap_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull @asym_cap_list, ptr noundef %16) #15
  br i1 %call.i.i.i, label %if.end.i.i68.i, label %done.i

if.end.i.i68.i:                                   ; preds = %if.end52.i
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i.i.i, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %call9.i.i.i, align 128
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @asym_cap_list, ptr %prev3.i.i.i, align 4
  store volatile ptr %call9.i.i.i, ptr @asym_cap_list, align 4
  br label %done.i

done.i:                                           ; preds = %if.end.i.i68.i, %if.end52.i, %for.body.i
  %entry1.1.i = phi ptr [ %call9.i.i.i, %if.end52.i ], [ %call9.i.i.i, %if.end.i.i68.i ], [ %entry1.0.i, %for.body.i ]
  %cpus.i = getelementptr inbounds %struct.asym_cap_data, ptr %entry1.1.i, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %20, %call876
  br i1 %cmp.not.i.i.i.i, label %__cpumask_set_cpu.exit.i, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %done.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %__cpumask_set_cpu.exit.i, label %if.then.i.i.i.i, !prof !301

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %__cpumask_set_cpu.exit.i

__cpumask_set_cpu.exit.i:                         ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %done.i
  %rem.i.i.i = and i32 %call876, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %call876, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %cpus.i, i32 %div2.i.i.i
  %21 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %22, %shl.i.i.i
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  br label %asym_cpu_capacity_update_data.exit

asym_cpu_capacity_update_data.exit:               ; preds = %__cpumask_set_cpu.exit.i, %if.then19.i, %land.rhs.i
  %call = tail call ptr @housekeeping_cpumask(i32 noundef 32) #15
  %call8 = tail call i32 @cpumask_next_and(i32 noundef %call876, ptr noundef nonnull @__cpu_possible_mask, ptr noundef %call) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %cmp9 = icmp ult i32 %call8, %23
  br i1 %cmp9, label %for.body10, label %for.end11

for.end11:                                        ; preds = %asym_cpu_capacity_update_data.exit, %for.cond7.preheader
  %24 = load ptr, ptr @asym_cap_list, align 4
  %cmp22.not79 = icmp eq ptr %24, @asym_cap_list
  br i1 %cmp22.not79, label %for.end35, label %for.body24

for.body24:                                       ; preds = %for.inc29, %for.end11
  %entry1.180 = phi ptr [ %next.082, %for.inc29 ], [ %24, %for.end11 ]
  %25 = ptrtoint ptr %entry1.180 to i32
  call void @__asan_load4_noabort(i32 %25)
  %next.082 = load ptr, ptr %entry1.180, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  %cpus25 = getelementptr inbounds %struct.asym_cap_data, ptr %entry1.180, i32 0, i32 2
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %cpus25, i32 noundef %26) #15
  %cmp4.i.i = icmp eq i32 %call.i.i, %26
  br i1 %cmp4.i.i, label %if.then, label %for.inc29

if.then:                                          ; preds = %for.body24
  %call.i.i58 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.180) #15
  br i1 %call.i.i58, label %if.end.i.i60, label %list_del.exit

if.end.i.i60:                                     ; preds = %if.then
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.180, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %entry1.180 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %entry1.180, align 4
  %prev1.i.i.i59 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i59, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i60, %if.then
  %33 = ptrtoint ptr %entry1.180 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.180, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry1.180, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %entry1.180) #15
  br label %for.inc29

for.inc29:                                        ; preds = %list_del.exit, %for.body24
  %cmp22.not = icmp eq ptr %next.082, @asym_cap_list
  br i1 %cmp22.not, label %for.end35, label %for.body24

for.end35:                                        ; preds = %for.inc29, %for.end11
  %35 = load volatile ptr, ptr @asym_cap_list, align 4
  %cmp.i.not.i = icmp eq ptr %35, @asym_cap_list
  br i1 %cmp.i.not.i, label %if.end42, label %list_is_singular.exit

list_is_singular.exit:                            ; preds = %for.end35
  %36 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @asym_cap_list, i32 0, i32 1), align 4
  %cmp.i.not = icmp eq ptr %35, %36
  br i1 %cmp.i.not, label %if.then37, label %if.end42

if.then37:                                        ; preds = %list_is_singular.exit
  %call.i.i62 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %35) #15
  br i1 %call.i.i62, label %if.end.i.i65, label %list_del.exit67

if.end.i.i65:                                     ; preds = %if.then37
  %prev.i.i63 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i63, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %35, align 4
  %prev1.i.i.i64 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i64, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit67

list_del.exit67:                                  ; preds = %if.end.i.i65, %if.then37
  %43 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %35, align 4
  %prev.i66 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i66 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i66, align 4
  tail call void @kfree(ptr noundef %35) #15
  br label %if.end42

if.end42:                                         ; preds = %list_del.exit67, %list_is_singular.exit, %for.end35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @housekeeping_cpumask(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @build_sched_domains(ptr noundef %cpu_map, ptr noundef readonly %attr) unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %cpu_map, i32 noundef %0) #15
  %cmp4.i.i = icmp eq i32 %call.i.i, %0
  br i1 %cmp4.i.i, label %error.thread755, label %if.end21.critedge, !prof !307

error.thread755:                                  ; preds = %entry
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 2201, i32 noundef 9, ptr noundef null) #15
  br label %__free_domain_allocs.exit

if.end21.critedge:                                ; preds = %entry
  %1 = load ptr, ptr @sched_domain_topology, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not187.i.i = icmp eq ptr %3, null
  br i1 %tobool.not187.i.i, label %if.end.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %if.end21.critedge
  %tl.0188.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i ], [ %1, %if.end21.critedge ]
  %data.i.i = getelementptr inbounds %struct.sched_domain_topology_level, ptr %tl.0188.i.i, i32 0, i32 4
  %call.i.i286 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #18
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i286, ptr %data.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %call.i.i286, null
  br i1 %tobool2.not.i.i, label %sw.bb3.i, label %if.end.i.i287

if.end.i.i287:                                    ; preds = %for.body.i.i
  %call3.i.i = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #18
  %sds.i.i = getelementptr inbounds %struct.sched_domain_topology_level, ptr %tl.0188.i.i, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %sds.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3.i.i, ptr %sds.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool5.not.i.i, label %sw.bb3.i, label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i287
  %call8.i.i = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #18
  %sg.i.i = getelementptr inbounds %struct.sched_domain_topology_level, ptr %tl.0188.i.i, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %sg.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool10.not.i.i, label %sw.bb3.i, label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.end7.i.i
  %call13.i.i = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #18
  %sgc.i.i = getelementptr inbounds %struct.sched_domain_topology_level, ptr %tl.0188.i.i, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %sgc.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call13.i.i, ptr %sgc.i.i, align 4
  %tobool15.not.i.i = icmp eq ptr %call13.i.i, null
  br i1 %tobool15.not.i.i, label %sw.bb3.i, label %for.cond18.preheader.i.i

for.cond18.preheader.i.i:                         ; preds = %if.end12.i.i
  %call19184.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %cpu_map) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %cmp185.i.i = icmp ult i32 %call19184.i.i, %8
  br i1 %cmp185.i.i, label %if.end5.i.i.i.i, label %for.inc.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end68.i.i, %for.cond18.preheader.i.i
  %9 = phi i32 [ %46, %if.end68.i.i ], [ %8, %for.cond18.preheader.i.i ]
  %call19186.i.i = phi i32 [ %call19.i.i, %if.end68.i.i ], [ %call19184.i.i, %for.cond18.preheader.i.i ]
  %sub.i.i.i = add i32 %9, 31
  %10 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %10, 536870908
  %add.i.i = add nuw nsw i32 %mul.i.i.i, 248
  %call.i2.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #18
  %tobool27.not.i.i = icmp eq ptr %call.i2.i.i.i.i, null
  br i1 %tobool27.not.i.i, label %sw.bb3.i, label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.end5.i.i.i.i
  %11 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call19186.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %add32.i.i = add i32 %15, %13
  %16 = inttoptr i32 %add32.i.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i2.i.i.i.i, ptr %16, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call.i.i.i130.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 12) #19
  %tobool34.not.i.i = icmp eq ptr %call.i.i.i130.i.i, null
  br i1 %tobool34.not.i.i, label %sw.bb3.i, label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.end29.i.i
  %19 = ptrtoint ptr %sds.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sds.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i, align 4
  %add46.i.i = add i32 %23, %21
  %24 = inttoptr i32 %add46.i.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i.i.i130.i.i, ptr %24, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i133.i.i = add i32 %26, 31
  %27 = lshr i32 %sub.i133.i.i, 3
  %mul.i134.i.i = and i32 %27, 536870908
  %add48.i.i = add nuw nsw i32 %mul.i134.i.i, 24
  %call.i2.i.i154.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add48.i.i, i32 noundef 3520) #18
  %tobool50.not.i.i = icmp eq ptr %call.i2.i.i154.i.i, null
  br i1 %tobool50.not.i.i, label %sw.bb3.i, label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.end36.i.i
  %28 = ptrtoint ptr %call.i2.i.i154.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i2.i.i154.i.i, ptr %call.i2.i.i154.i.i, align 128
  %29 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sg.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  %add62.i.i = add i32 %33, %31
  %34 = inttoptr i32 %add62.i.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i2.i.i154.i.i, ptr %34, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %36 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i158.i.i = add i32 %36, 31
  %37 = lshr i32 %sub.i158.i.i, 3
  %mul.i159.i.i = and i32 %37, 536870908
  %add64.i.i = add nuw nsw i32 %mul.i159.i.i, 28
  %call.i2.i.i179.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add64.i.i, i32 noundef 3520) #18
  %tobool66.not.i.i = icmp eq ptr %call.i2.i.i179.i.i, null
  br i1 %tobool66.not.i.i, label %sw.bb3.i, label %if.end68.i.i

if.end68.i.i:                                     ; preds = %if.end52.i.i
  %id.i.i = getelementptr inbounds %struct.sched_group_capacity, ptr %call.i2.i.i179.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call19186.i.i, ptr %id.i.i, align 8
  %39 = ptrtoint ptr %sgc.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sgc.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i, align 4
  %add78.i.i = add i32 %43, %41
  %44 = inttoptr i32 %add78.i.i to ptr
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i2.i.i179.i.i, ptr %44, align 4
  %call19.i.i = tail call i32 @cpumask_next(i32 noundef %call19186.i.i, ptr noundef %cpu_map) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %46 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i = icmp ult i32 %call19.i.i, %46
  br i1 %cmp.i.i, label %if.end5.i.i.i.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end68.i.i, %for.cond18.preheader.i.i
  %incdec.ptr.i.i = getelementptr %struct.sched_domain_topology_level, ptr %tl.0188.i.i, i32 1
  %47 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %incdec.ptr.i.i, align 4
  %tobool.not.i.i288 = icmp eq ptr %48, null
  br i1 %tobool.not.i.i288, label %if.end.i, label %for.body.i.i

if.end.i:                                         ; preds = %for.inc.i.i, %if.end21.critedge
  %call1.i289 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #18
  %tobool3.not.i = icmp eq ptr %call1.i289, null
  br i1 %tobool3.not.i, label %sw.bb3.i, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3520, i32 noundef 1072) #19
  %tobool.not.i15.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i15.i, label %sw.bb2.i, label %if.end.i16.i

if.end.i16.i:                                     ; preds = %if.end5.i
  %call1.i.i = tail call fastcc i32 @init_rootdomain(ptr noundef nonnull %call7.i.i.i.i) #15
  %cmp.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.not.i.i, label %for.cond.preheader, label %if.then2.i.i

for.cond.preheader:                               ; preds = %if.end.i16.i
  %call25777 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %cpu_map) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %50 = load i32, ptr @nr_cpu_ids, align 4
  %cmp26778 = icmp ult i32 %call25777, %50
  br i1 %cmp26778, label %for.body.lr.ph, label %for.cond91.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool.not.i46.i = icmp eq ptr %attr, null
  %51 = ptrtoint ptr %call1.i289 to i32
  br label %for.body

if.then2.i.i:                                     ; preds = %if.end.i16.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #15
  br label %sw.bb2.i

for.cond91.preheader:                             ; preds = %cleanup, %for.cond.preheader
  %has_asym.0.off0.lcssa = phi i1 [ false, %for.cond.preheader ], [ %has_asym.3.off0, %cleanup ]
  %call92786 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %cpu_map) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %52 = load i32, ptr @nr_cpu_ids, align 4
  %cmp93787 = icmp ult i32 %call92786, %52
  br i1 %cmp93787, label %do.body96.lr.ph, label %for.cond127.preheader

do.body96.lr.ph:                                  ; preds = %for.cond91.preheader
  %53 = ptrtoint ptr %call1.i289 to i32
  br label %do.body96

for.body:                                         ; preds = %cleanup, %for.body.lr.ph
  %call25780 = phi i32 [ %call25777, %for.body.lr.ph ], [ %call25, %cleanup ]
  %has_asym.0.off0779 = phi i1 [ false, %for.body.lr.ph ], [ %has_asym.3.off0, %cleanup ]
  %54 = load ptr, ptr @sched_domain_topology, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %tobool28.not771 = icmp eq ptr %56, null
  br i1 %tobool28.not771, label %cleanup, label %for.body29.lr.ph

for.body29.lr.ph:                                 ; preds = %for.body
  %arrayidx.i.i297 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call25780
  br label %for.body29

for.cond27:                                       ; preds = %if.end85
  %incdec.ptr = getelementptr %struct.sched_domain_topology_level, ptr %tl.0772, i32 1
  %57 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %incdec.ptr, align 4
  %tobool28.not = icmp eq ptr %58, null
  br i1 %tobool28.not, label %cleanup, label %for.body29

for.body29:                                       ; preds = %for.cond27, %for.body29.lr.ph
  %sd.0775 = phi ptr [ null, %for.body29.lr.ph ], [ %80, %for.cond27 ]
  %has_asym.1.off0774 = phi i1 [ %has_asym.0.off0779, %for.body29.lr.ph ], [ %tobool68, %for.cond27 ]
  %tl.0772 = phi ptr [ %54, %for.body29.lr.ph ], [ %incdec.ptr, %for.cond27 ]
  %flags.i = getelementptr inbounds %struct.sched_domain_topology_level, ptr %tl.0772, i32 0, i32 2
  %59 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %60, 1
  %tobool.not.i291 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i291, label %for.cond.preheader.i, label %if.end65

for.cond.preheader.i:                             ; preds = %for.body29
  %call33.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %cpu_map) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %61 = load i32, ptr @nr_cpu_ids, align 4
  %cmp34.i = icmp ult i32 %call33.i, %61
  br i1 %cmp34.i, label %for.body.i, label %if.end65

for.body.i:                                       ; preds = %for.cond.backedge.i, %for.cond.preheader.i
  %call35.i = phi i32 [ %call.i294, %for.cond.backedge.i ], [ %call33.i, %for.cond.preheader.i ]
  %cmp1.i = icmp eq i32 %call35.i, %call25780
  br i1 %cmp1.i, label %for.cond.backedge.i, label %if.end3.i

if.end3.i:                                        ; preds = %for.body.i
  %62 = ptrtoint ptr %tl.0772 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tl.0772, align 4
  %call4.i = tail call ptr %63(i32 noundef %call25780) #15
  %64 = ptrtoint ptr %tl.0772 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tl.0772, align 4
  %call6.i = tail call ptr %65(i32 noundef %call35.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %66 = load i32, ptr @nr_cpu_ids, align 4
  %call13.i.i.i = tail call i32 @__bitmap_equal(ptr noundef %call4.i, ptr noundef %call6.i, i32 noundef %66) #15
  %tobool.i.not.i = icmp eq i32 %call13.i.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i293, label %for.cond.backedge.i

land.lhs.true.i293:                               ; preds = %if.end3.i
  %67 = ptrtoint ptr %tl.0772 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tl.0772, align 4
  %call9.i = tail call ptr %68(i32 noundef %call25780) #15
  %69 = ptrtoint ptr %tl.0772 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tl.0772, align 4
  %call11.i = tail call ptr %70(i32 noundef %call35.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %71 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i = tail call i32 @__bitmap_intersects(ptr noundef %call9.i, ptr noundef %call11.i, i32 noundef %71) #15
  %tobool.i32.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.i32.not.i, label %for.cond.backedge.i, label %cleanup.thread, !prof !310

for.cond.backedge.i:                              ; preds = %land.lhs.true.i293, %if.end3.i, %for.body.i
  %call.i294 = tail call i32 @cpumask_next(i32 noundef %call35.i, ptr noundef %cpu_map) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %72 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i294, %72
  br i1 %cmp.i, label %for.body.i, label %if.end65

cleanup.thread:                                   ; preds = %land.lhs.true.i293
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 2215, i32 noundef 9, ptr noundef null) #15
  br label %sw.bb.i

if.end65:                                         ; preds = %for.cond.backedge.i, %for.cond.preheader.i, %for.body29
  %data.i.i296 = getelementptr inbounds %struct.sched_domain_topology_level, ptr %tl.0772, i32 0, i32 4
  %73 = ptrtoint ptr %data.i.i296 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i.i296, align 4
  %75 = ptrtoint ptr %74 to i32
  %76 = ptrtoint ptr %arrayidx.i.i297 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i.i297, align 4
  %add.i.i298 = add i32 %77, %75
  %78 = inttoptr i32 %add.i.i298 to ptr
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %81 = ptrtoint ptr %tl.0772 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tl.0772, align 4
  %call.i.i299 = tail call ptr %82(i32 noundef %call25780) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %83 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i.i = tail call i32 @__bitmap_weight(ptr noundef %call.i.i299, i32 noundef %83) #15
  %sd_flags4.i.i = getelementptr inbounds %struct.sched_domain_topology_level, ptr %tl.0772, i32 0, i32 1
  %84 = ptrtoint ptr %sd_flags4.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sd_flags4.i.i, align 4
  %tobool.not.i.i302 = icmp eq ptr %85, null
  br i1 %tobool.not.i.i302, label %if.end41.i.i, label %if.end.i.i304

if.end.i.i304:                                    ; preds = %if.end65
  %call6.i.i = tail call i32 %85() #15
  %and.i.i303 = and i32 %call6.i.i, -9601
  %tobool7.not.i.i = icmp eq i32 %and.i.i303, 0
  br i1 %tobool7.not.i.i, label %if.end41.i.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end.i.i304
  %.b205.i.i = load i1, ptr @sd_init.__already_done, align 1
  br i1 %.b205.i.i, label %if.end41.i.i, label %if.then15.i.i, !prof !301

if.then15.i.i:                                    ; preds = %land.rhs.i.i
  store i1 true, ptr @sd_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 1543, i32 noundef 9, ptr noundef nonnull @.str.34) #15
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then15.i.i, %land.rhs.i.i, %if.end.i.i304, %if.end65
  %sd_flags.0220.i.i = phi i32 [ %call6.i.i, %if.end.i.i304 ], [ %call6.i.i, %if.then15.i.i ], [ %call6.i.i, %land.rhs.i.i ], [ 0, %if.end65 ]
  %and51.i.i = and i32 %sd_flags.0220.i.i, 9600
  %mul.i.i = shl i32 %call4.i.i.i.i, 1
  %or.i.i = or i32 %and51.i.i, 2071
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %86 = load volatile i32, ptr @jiffies, align 128
  %87 = load volatile i32, ptr @jiffies, align 128
  %name54.i.i = getelementptr inbounds %struct.sched_domain_topology_level, ptr %tl.0772, i32 0, i32 5
  %88 = ptrtoint ptr %name54.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %name54.i.i, align 4
  %90 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %80, align 8
  %.compoundliteral.sroa.2.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %80, i32 4
  %91 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %sd.0775, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %80, i32 8
  %92 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.3160.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %80, i32 12
  %93 = ptrtoint ptr %.compoundliteral.sroa.3160.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %call4.i.i.i.i, ptr %.compoundliteral.sroa.3160.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %80, i32 16
  %94 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %mul.i.i, ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %80, i32 20
  %95 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 16, ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.6.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %80, i32 24
  %96 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 117, ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.7.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %80, i32 28
  %97 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %97, i32 8)
  store i64 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.7161.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %80, i32 36
  %98 = ptrtoint ptr %.compoundliteral.sroa.7161.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %or.i.i, ptr %.compoundliteral.sroa.7161.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.8.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %80, i32 40
  %99 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %.compoundliteral.sroa.8.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.8162.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %80, i32 44
  %100 = ptrtoint ptr %.compoundliteral.sroa.8162.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %86, ptr %.compoundliteral.sroa.8162.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.9.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %80, i32 48
  %101 = ptrtoint ptr %.compoundliteral.sroa.9.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %call4.i.i.i.i, ptr %.compoundliteral.sroa.9.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.10.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %80, i32 52
  %102 = call ptr @memset(ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i, i32 0, i32 12)
  %.compoundliteral.sroa.10163.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %80, i32 64
  %103 = ptrtoint ptr %.compoundliteral.sroa.10163.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %87, ptr %.compoundliteral.sroa.10163.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.11.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %80, i32 68
  %104 = call ptr @memset(ptr %.compoundliteral.sroa.11.0..sroa_idx.i.i, i32 0, i32 156)
  %.compoundliteral.sroa.11164.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %80, i32 224
  %105 = ptrtoint ptr %.compoundliteral.sroa.11164.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %89, ptr %.compoundliteral.sroa.11164.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.12.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %80, i32 228
  %106 = call ptr @memset(ptr %.compoundliteral.sroa.12.0..sroa_idx.i.i, i32 0, i32 20)
  %span.i.i.i = getelementptr inbounds %struct.sched_domain, ptr %80, i32 0, i32 41
  %107 = ptrtoint ptr %tl.0772 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %tl.0772, align 4
  %call57.i.i = tail call ptr %108(i32 noundef %call25780) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %109 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i212.i.i = tail call i32 @__bitmap_and(ptr noundef %span.i.i.i, ptr noundef %cpu_map, ptr noundef %call57.i.i, i32 noundef %109) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %110 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i305 = tail call i32 @_find_first_bit_be(ptr noundef %span.i.i.i, i32 noundef %110) #15
  %entry1.087.i.i.i = load ptr, ptr @asym_cap_list, align 4
  %cmp.not88.i.i.i = icmp eq ptr %entry1.087.i.i.i, @asym_cap_list
  br i1 %cmp.not88.i.i.i, label %land.rhs.i.i.i, label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i, %if.end41.i.i
  %entry1.091.i.i.i = phi ptr [ %entry1.0.i.i.i, %for.inc.i.i.i ], [ %entry1.087.i.i.i, %if.end41.i.i ]
  %count.090.i.i.i = phi i32 [ %count.1.i.i.i, %for.inc.i.i.i ], [ 0, %if.end41.i.i ]
  %miss.089.i.i.i = phi i32 [ %miss.1.i.i.i, %for.inc.i.i.i ], [ 0, %if.end41.i.i ]
  %cpus.i.i.i = getelementptr inbounds %struct.asym_cap_data, ptr %entry1.091.i.i.i, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %111 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i.i.i306 = tail call i32 @__bitmap_intersects(ptr noundef %span.i.i.i, ptr noundef %cpus.i.i.i, i32 noundef %111) #15
  %tobool.i.not.i.i.i = icmp eq i32 %call.i.i.i.i.i306, 0
  br i1 %tobool.i.not.i.i.i, label %if.else.i.i83.i.i.i, label %if.then.i.i.i307

if.then.i.i.i307:                                 ; preds = %for.body.i.i.i
  %inc.i.i.i = add i32 %count.090.i.i.i, 1
  br label %for.inc.i.i.i

if.else.i.i83.i.i.i:                              ; preds = %for.body.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %112 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i82.i.i.i = tail call i32 @__bitmap_intersects(ptr noundef %cpu_map, ptr noundef %cpus.i.i.i, i32 noundef %112) #15
  %tobool.i85.not.i.i.i = icmp ne i32 %call.i.i82.i.i.i, 0
  %inc6.i.i.i = zext i1 %tobool.i85.not.i.i.i to i32
  %spec.select.i.i.i = add i32 %miss.089.i.i.i, %inc6.i.i.i
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.else.i.i83.i.i.i, %if.then.i.i.i307
  %miss.1.i.i.i = phi i32 [ %miss.089.i.i.i, %if.then.i.i.i307 ], [ %spec.select.i.i.i, %if.else.i.i83.i.i.i ]
  %count.1.i.i.i = phi i32 [ %inc.i.i.i, %if.then.i.i.i307 ], [ %count.090.i.i.i, %if.else.i.i83.i.i.i ]
  %113 = ptrtoint ptr %entry1.091.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %entry1.0.i.i.i = load ptr, ptr %entry1.091.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %entry1.0.i.i.i, @asym_cap_list
  br i1 %cmp.not.i.i.i, label %for.end.i.i.i, label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i
  %tobool.not.i.i.i309 = icmp eq i32 %count.1.i.i.i, 0
  br i1 %tobool.not.i.i.i309, label %land.rhs.i.i.i, label %asym_cpu_capacity_classify.exit.i.i

land.rhs.i.i.i:                                   ; preds = %for.end.i.i.i, %if.end41.i.i
  %114 = load volatile ptr, ptr @asym_cap_list, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %114, @asym_cap_list
  br i1 %cmp.i.not.i.i.i, label %asym_cpu_capacity_classify.exit.thread.i.i, label %land.rhs18.i.i.i

land.rhs18.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %.b72.i.i.i = load i1, ptr @asym_cpu_capacity_classify.__already_done, align 1
  br i1 %.b72.i.i.i, label %asym_cpu_capacity_classify.exit.thread.i.i, label %if.then25.i.i.i, !prof !301

if.then25.i.i.i:                                  ; preds = %land.rhs18.i.i.i
  store i1 true, ptr @asym_cpu_capacity_classify.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 1323, i32 noundef 9, ptr noundef null) #15
  br label %asym_cpu_capacity_classify.exit.thread.i.i

asym_cpu_capacity_classify.exit.i.i:              ; preds = %for.end.i.i.i
  %cmp56.i.i.i = icmp slt i32 %count.1.i.i.i, 2
  %tobool59.not.i.i.i = icmp eq i32 %miss.1.i.i.i, 0
  %..i.i.i = select i1 %tobool59.not.i.i.i, i32 96, i32 32
  br i1 %cmp56.i.i.i, label %asym_cpu_capacity_classify.exit.thread.i.i, label %115

asym_cpu_capacity_classify.exit.thread.i.i:       ; preds = %asym_cpu_capacity_classify.exit.i.i, %if.then25.i.i.i, %land.rhs18.i.i.i, %land.rhs.i.i.i
  br label %115

115:                                              ; preds = %asym_cpu_capacity_classify.exit.thread.i.i, %asym_cpu_capacity_classify.exit.i.i
  %116 = phi i32 [ 0, %asym_cpu_capacity_classify.exit.thread.i.i ], [ %..i.i.i, %asym_cpu_capacity_classify.exit.i.i ]
  %117 = ptrtoint ptr %.compoundliteral.sroa.7161.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %.compoundliteral.sroa.7161.0..sroa_idx.i.i, align 4
  %or62.i.i = or i32 %118, %116
  store i32 %or62.i.i, ptr %.compoundliteral.sroa.7161.0..sroa_idx.i.i, align 4
  %and65.i.i = and i32 %or62.i.i, 160
  %cmp.i.i310 = icmp eq i32 %and65.i.i, 160
  br i1 %cmp.i.i310, label %land.rhs72.i.i, label %if.end110.i.i

land.rhs72.i.i:                                   ; preds = %115
  %.b203204.i.i = load i1, ptr @sd_init.__already_done.35, align 1
  br i1 %.b203204.i.i, label %if.end110.i.i, label %if.then83.i.i, !prof !301

if.then83.i.i:                                    ; preds = %land.rhs72.i.i
  store i1 true, ptr @sd_init.__already_done.35, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 1585, i32 noundef 9, ptr noundef nonnull @.str.36) #15
  br label %if.end110.i.i

if.end110.i.i:                                    ; preds = %if.then83.i.i, %land.rhs72.i.i, %115
  %119 = ptrtoint ptr %.compoundliteral.sroa.7161.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %.compoundliteral.sroa.7161.0..sroa_idx.i.i, align 4
  %and119.i.i = and i32 %120, 32
  %tobool120.not.i.i = icmp eq i32 %and119.i.i, 0
  br i1 %tobool120.not.i.i, label %if.end127.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.end110.i.i
  %121 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 4
  %tobool122.not.i.i = icmp eq ptr %122, null
  br i1 %tobool122.not.i.i, label %if.end127.i.i, label %if.then123.i.i

if.then123.i.i:                                   ; preds = %land.lhs.true.i.i
  %flags125.i.i = getelementptr inbounds %struct.sched_domain, ptr %122, i32 0, i32 9
  %123 = ptrtoint ptr %flags125.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %flags125.i.i, align 4
  %and126.i.i = and i32 %124, -2049
  store i32 %and126.i.i, ptr %flags125.i.i, align 4
  br label %if.end127.i.i

if.end127.i.i:                                    ; preds = %if.then123.i.i, %land.lhs.true.i.i, %if.end110.i.i
  %125 = ptrtoint ptr %.compoundliteral.sroa.7161.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %.compoundliteral.sroa.7161.0..sroa_idx.i.i, align 4
  %and129.i.i = and i32 %126, 128
  %tobool130.not.i.i = icmp eq i32 %and129.i.i, 0
  br i1 %tobool130.not.i.i, label %if.else.i.i, label %if.then131.i.i

if.then131.i.i:                                   ; preds = %if.end127.i.i
  %127 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 110, ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i, align 8
  br label %if.end141.i.i

if.else.i.i:                                      ; preds = %if.end127.i.i
  %and134.i.i = and i32 %126, 256
  %tobool135.not.i.i = icmp eq i32 %and134.i.i, 0
  br i1 %tobool135.not.i.i, label %if.else138.i.i, label %if.then136.i.i

if.then136.i.i:                                   ; preds = %if.else.i.i
  %128 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 117, ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i, align 8
  %129 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1, ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i, align 4
  br label %if.end141.i.i

if.else138.i.i:                                   ; preds = %if.else.i.i
  %130 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 1, ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i, align 4
  br label %if.end141.i.i

if.end141.i.i:                                    ; preds = %if.else138.i.i, %if.then136.i.i, %if.then131.i.i
  %131 = ptrtoint ptr %.compoundliteral.sroa.7161.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %.compoundliteral.sroa.7161.0..sroa_idx.i.i, align 4
  %and143.i.i = and i32 %132, 256
  %tobool144.not.i.i = icmp eq i32 %and143.i.i, 0
  br i1 %tobool144.not.i.i, label %sd_init.exit.i, label %do.body146.i.i

do.body146.i.i:                                   ; preds = %if.end141.i.i
  %sds.i.i311 = getelementptr inbounds %struct.sched_domain_topology_level, ptr %tl.0772, i32 0, i32 4, i32 1
  %133 = ptrtoint ptr %sds.i.i311 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %sds.i.i311, align 4
  %135 = ptrtoint ptr %134 to i32
  %arrayidx153.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call.i.i.i305
  %136 = ptrtoint ptr %arrayidx153.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx153.i.i, align 4
  %add154.i.i = add i32 %137, %135
  %138 = inttoptr i32 %add154.i.i to ptr
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %shared.i.i = getelementptr inbounds %struct.sched_domain, ptr %80, i32 0, i32 39
  %141 = ptrtoint ptr %shared.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %140, ptr %shared.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %140, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %140, i32 1, i32 3, i32 1) #15
  %142 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %140, ptr %140, i32 1, ptr elementtype(i32) %140) #15, !srcloc !305
  %143 = ptrtoint ptr %shared.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %shared.i.i, align 4
  %nr_busy_cpus.i.i = getelementptr inbounds %struct.sched_domain_shared, ptr %144, i32 0, i32 1
  %call.i.i206.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_busy_cpus.i.i, i32 noundef 4) #15
  %145 = ptrtoint ptr %nr_busy_cpus.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile i32 %call4.i.i.i.i, ptr %nr_busy_cpus.i.i, align 4
  br label %sd_init.exit.i

sd_init.exit.i:                                   ; preds = %do.body146.i.i, %if.end141.i.i
  %146 = ptrtoint ptr %.compoundliteral.sroa.12.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %data.i.i296, ptr %.compoundliteral.sroa.12.0..sroa_idx.i.i, align 4
  %tobool.not.i312 = icmp eq ptr %sd.0775, null
  br i1 %tobool.not.i312, label %if.end19.i, label %if.then.i313

if.then.i313:                                     ; preds = %sd_init.exit.i
  %level.i = getelementptr inbounds %struct.sched_domain, ptr %sd.0775, i32 0, i32 10
  %147 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %level.i, align 8
  %add.i = add i32 %148, 1
  %149 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %add.i, ptr %.compoundliteral.sroa.8.0..sroa_idx.i.i, align 8
  %150 = load i32, ptr @sched_domain_level_max, align 4
  %151 = tail call i32 @llvm.smax.i32(i32 %150, i32 %add.i) #15
  store i32 %151, ptr @sched_domain_level_max, align 4
  %152 = ptrtoint ptr %sd.0775 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %80, ptr %sd.0775, align 8
  %span.i.i = getelementptr inbounds %struct.sched_domain, ptr %sd.0775, i32 0, i32 41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %153 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i39.i = tail call i32 @__bitmap_subset(ptr noundef %span.i.i, ptr noundef %span.i.i.i, i32 noundef %153) #15
  %tobool6.not.i = icmp eq i32 %call.i.i39.i, 0
  br i1 %tobool6.not.i, label %do.end.i, label %if.end19.i

do.end.i:                                         ; preds = %if.then.i313
  %call9.i321 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #17
  %name.i = getelementptr inbounds %struct.sched_domain, ptr %sd.0775, i32 0, i32 37
  %154 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %name.i, align 8
  %156 = ptrtoint ptr %.compoundliteral.sroa.11164.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %.compoundliteral.sroa.11164.0..sroa_idx.i.i, align 8
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %155, ptr noundef %157) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %158 = load i32, ptr @nr_cpu_ids, align 4
  tail call void @__bitmap_or(ptr noundef %span.i.i.i, ptr noundef %span.i.i.i, ptr noundef %span.i.i, i32 noundef %158) #15
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end.i, %if.then.i313, %sd_init.exit.i
  br i1 %tobool.not.i46.i, label %if.then.i.i322, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.end19.i
  %159 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %attr, align 4
  %cmp.i47.i = icmp slt i32 %160, 0
  br i1 %cmp.i47.i, label %if.then.i.i322, label %if.end4.i.i

if.then.i.i322:                                   ; preds = %lor.lhs.false.i.i, %if.end19.i
  %161 = load i32, ptr @default_relax_domain_level, align 4
  %cmp1.i.i = icmp slt i32 %161, 0
  br i1 %cmp1.i.i, label %build_sched_domain.exit, label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then.i.i322, %lor.lhs.false.i.i
  %request.0.i.i = phi i32 [ %161, %if.then.i.i322 ], [ %160, %lor.lhs.false.i.i ]
  %162 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %.compoundliteral.sroa.8.0..sroa_idx.i.i, align 8
  %cmp5.i.i = icmp sgt i32 %163, %request.0.i.i
  br i1 %cmp5.i.i, label %if.then6.i.i, label %build_sched_domain.exit

if.then6.i.i:                                     ; preds = %if.end4.i.i
  %164 = ptrtoint ptr %.compoundliteral.sroa.7161.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %.compoundliteral.sroa.7161.0..sroa_idx.i.i, align 4
  %and.i48.i = and i32 %165, -10
  store i32 %and.i48.i, ptr %.compoundliteral.sroa.7161.0..sroa_idx.i.i, align 4
  br label %build_sched_domain.exit

build_sched_domain.exit:                          ; preds = %if.then6.i.i, %if.end4.i.i, %if.then.i.i322
  %166 = ptrtoint ptr %.compoundliteral.sroa.7161.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %.compoundliteral.sroa.7161.0..sroa_idx.i.i, align 4
  %and = and i32 %167, 32
  %conv = zext i1 %has_asym.1.off0774 to i32
  %or = or i32 %and, %conv
  %tobool68 = icmp ne i32 %or, 0
  %168 = load ptr, ptr @sched_domain_topology, align 4
  %cmp69 = icmp eq ptr %tl.0772, %168
  br i1 %cmp69, label %if.then71, label %if.end78

if.then71:                                        ; preds = %build_sched_domain.exit
  %169 = ptrtoint ptr %arrayidx.i.i297 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx.i.i297, align 4
  %add = add i32 %170, %51
  %171 = inttoptr i32 %add to ptr
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %80, ptr %171, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then71, %build_sched_domain.exit
  %173 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %flags.i, align 4
  %and80 = and i32 %174, 1
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end85, label %if.then82

if.then82:                                        ; preds = %if.end78
  %175 = ptrtoint ptr %.compoundliteral.sroa.7161.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %.compoundliteral.sroa.7161.0..sroa_idx.i.i, align 4
  %or84 = or i32 %176, 4096
  store i32 %or84, ptr %.compoundliteral.sroa.7161.0..sroa_idx.i.i, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %177 = load i32, ptr @nr_cpu_ids, align 4
  %call13.i.i330 = tail call i32 @__bitmap_equal(ptr noundef %cpu_map, ptr noundef %span.i.i.i, i32 noundef %177) #15
  %tobool.i.not = icmp eq i32 %call13.i.i330, 0
  br i1 %tobool.i.not, label %for.cond27, label %cleanup

cleanup:                                          ; preds = %if.end85, %for.cond27, %for.body
  %has_asym.3.off0 = phi i1 [ %has_asym.0.off0779, %for.body ], [ %tobool68, %for.cond27 ], [ %tobool68, %if.end85 ]
  %call25 = tail call i32 @cpumask_next(i32 noundef %call25780, ptr noundef %cpu_map) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %178 = load i32, ptr @nr_cpu_ids, align 4
  %cmp26 = icmp ult i32 %call25, %178
  br i1 %cmp26, label %for.body, label %for.cond91.preheader

for.cond91.loopexit:                              ; preds = %for.inc124, %do.body96
  %call92 = tail call i32 @cpumask_next(i32 noundef %call92788, ptr noundef %cpu_map) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %179 = load i32, ptr @nr_cpu_ids, align 4
  %cmp93 = icmp ult i32 %call92, %179
  br i1 %cmp93, label %do.body96, label %for.cond127.preheader

for.cond127.preheader:                            ; preds = %for.cond91.loopexit, %for.cond91.preheader
  %.lcssa768 = phi i32 [ %52, %for.cond91.preheader ], [ %179, %for.cond91.loopexit ]
  %i.2793 = add i32 %.lcssa768, -1
  %cmp128794 = icmp sgt i32 %i.2793, -1
  br i1 %cmp128794, label %for.body130.lr.ph, label %for.end152

for.body130.lr.ph:                                ; preds = %for.cond127.preheader
  %180 = ptrtoint ptr %call1.i289 to i32
  br label %for.body130

do.body96:                                        ; preds = %for.cond91.loopexit, %do.body96.lr.ph
  %call92788 = phi i32 [ %call92786, %do.body96.lr.ph ], [ %call92, %for.cond91.loopexit ]
  %arrayidx104 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call92788
  %181 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx104, align 4
  %add105 = add i32 %182, %53
  %183 = inttoptr i32 %add105 to ptr
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %sd.1783 = load ptr, ptr %183, align 4
  %tobool107.not784 = icmp eq ptr %sd.1783, null
  br i1 %tobool107.not784, label %for.cond91.loopexit, label %for.body108.lr.ph

for.body108.lr.ph:                                ; preds = %do.body96
  %sub.i = add i32 %call92788, -1
  br label %for.body108

for.body108:                                      ; preds = %for.inc124, %for.body108.lr.ph
  %sd.1785 = phi ptr [ %sd.1783, %for.body108.lr.ph ], [ %sd.1, %for.inc124 ]
  %span.i333 = getelementptr inbounds %struct.sched_domain, ptr %sd.1785, i32 0, i32 41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %185 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef %span.i333, i32 noundef %185) #15
  %span_weight = getelementptr inbounds %struct.sched_domain, ptr %sd.1785, i32 0, i32 40
  %186 = ptrtoint ptr %span_weight to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %call4.i.i, ptr %span_weight, align 8
  %flags111 = getelementptr inbounds %struct.sched_domain, ptr %sd.1785, i32 0, i32 9
  %187 = ptrtoint ptr %flags111 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %flags111, align 4
  %and112 = and i32 %188, 4096
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.else, label %if.then114

if.then114:                                       ; preds = %for.body108
  %189 = load ptr, ptr @sched_domains_tmpmask, align 4
  %190 = getelementptr inbounds %struct.sched_domain, ptr %sd.1785, i32 0, i32 38
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %190, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %193 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i347 = add i32 %193, 31
  %194 = lshr i32 %sub.i.i.i347, 3
  %mul.i.i.i348 = and i32 %194, 536870908
  %195 = call ptr @memset(ptr %189, i32 0, i32 %mul.i.i.i348)
  %call1.i349 = tail call i32 @cpumask_next_wrap(i32 noundef %sub.i, ptr noundef %span.i333, i32 noundef %call92788, i1 noundef zeroext false) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %196 = load i32, ptr @nr_cpu_ids, align 4
  %cmp135.i = icmp ult i32 %call1.i349, %196
  br i1 %cmp135.i, label %cpumask_test_cpu.exit.i, label %for.inc124

cpumask_test_cpu.exit.i:                          ; preds = %for.inc.i, %if.then114
  %first.0139.i = phi ptr [ %first.2.ph.i, %for.inc.i ], [ null, %if.then114 ]
  %last.0138.i = phi ptr [ %last.1.ph.i, %for.inc.i ], [ null, %if.then114 ]
  %i.0136.i = phi i32 [ %call30.i, %for.inc.i ], [ %call1.i349, %if.then114 ]
  %div3.i.i.i = lshr i32 %i.0136.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %189, i32 %div3.i.i.i
  %197 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i350 = and i32 %i.0136.i, 31
  %199 = shl nuw i32 1, %and.i.i.i350
  %200 = and i32 %199, %198
  %tobool.not.i351 = icmp eq i32 %200, 0
  br i1 %tobool.not.i351, label %do.body.i, label %for.inc.i

do.body.i:                                        ; preds = %cpumask_test_cpu.exit.i
  %201 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %192, align 4
  %203 = ptrtoint ptr %202 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %i.0136.i
  %204 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx.i, align 4
  %add.i352 = add i32 %205, %203
  %206 = inttoptr i32 %add.i352 to ptr
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %206, align 4
  %span.i69.i = getelementptr inbounds %struct.sched_domain, ptr %208, i32 0, i32 41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %209 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i70.i = icmp ugt i32 %209, %i.0136.i
  br i1 %cmp.not.i.i.i70.i, label %cpumask_test_cpu.exit79.i, label %land.rhs.i.i.i72.i

land.rhs.i.i.i72.i:                               ; preds = %do.body.i
  %.b37.i.i.i71.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i71.i, label %cpumask_test_cpu.exit79.i, label %if.then.i.i.i73.i, !prof !301

if.then.i.i.i73.i:                                ; preds = %land.rhs.i.i.i72.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpumask_test_cpu.exit79.i

cpumask_test_cpu.exit79.i:                        ; preds = %if.then.i.i.i73.i, %land.rhs.i.i.i72.i, %do.body.i
  %arrayidx.i.i75.i = getelementptr i32, ptr %span.i69.i, i32 %div3.i.i.i
  %210 = ptrtoint ptr %arrayidx.i.i75.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load volatile i32, ptr %arrayidx.i.i75.i, align 4
  %212 = and i32 %211, %199
  %tobool7.not.i = icmp eq i32 %212, 0
  br i1 %tobool7.not.i, label %for.inc.i, label %if.end9.i

if.end9.i:                                        ; preds = %cpumask_test_cpu.exit79.i
  %child.i = getelementptr inbounds %struct.sched_domain, ptr %208, i32 0, i32 1
  %213 = ptrtoint ptr %child.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %child.i, align 4
  %tobool10.not.i = icmp eq ptr %214, null
  br i1 %tobool10.not.i, label %if.end5.i.i.i.i393, label %if.else.i.i.i361

if.else.i.i.i361:                                 ; preds = %if.end9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %215 = load i32, ptr @nr_cpu_ids, align 4
  %span.i80.i = getelementptr inbounds %struct.sched_domain, ptr %214, i32 0, i32 41
  %call.i.i.i360 = tail call i32 @__bitmap_subset(ptr noundef %span.i80.i, ptr noundef %span.i333, i32 noundef %215) #15
  %tobool14.not.i = icmp eq i32 %call.i.i.i360, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end5.i.i.i.i393

if.then15.i:                                      ; preds = %if.else.i.i.i361
  %216 = ptrtoint ptr %child.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %child.i, align 4
  %tobool.not39.i.i = icmp eq ptr %217, null
  br i1 %tobool.not39.i.i, label %while.end.i.i, label %if.else.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %while.body.i.i, %if.then15.i
  %218 = phi ptr [ %223, %while.body.i.i ], [ %217, %if.then15.i ]
  %child41.i.i = phi ptr [ %child.i.i, %while.body.i.i ], [ %child.i, %if.then15.i ]
  %sibling.addr.040.i.i = phi ptr [ %221, %while.body.i.i ], [ %208, %if.then15.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %219 = load i32, ptr @nr_cpu_ids, align 4
  %span.i.i.i364 = getelementptr inbounds %struct.sched_domain, ptr %218, i32 0, i32 41
  %call.i.i.i.i371 = tail call i32 @__bitmap_subset(ptr noundef %span.i.i.i364, ptr noundef %span.i333, i32 noundef %219) #15
  %tobool4.not.i.i = icmp eq i32 %call.i.i.i.i371, 0
  br i1 %tobool4.not.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %if.else.i.i.i.i
  %220 = ptrtoint ptr %child41.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %child41.i.i, align 4
  %child.i.i = getelementptr inbounds %struct.sched_domain, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %child.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %child.i.i, align 4
  %tobool.not.i.i373 = icmp eq ptr %223, null
  br i1 %tobool.not.i.i373, label %while.end.i.i, label %if.else.i.i.i.i

while.end.i.i:                                    ; preds = %while.body.i.i, %if.else.i.i.i.i, %if.then15.i
  %sibling.addr.0.lcssa.i.i = phi ptr [ %208, %if.then15.i ], [ %221, %while.body.i.i ], [ %sibling.addr.040.i.i, %if.else.i.i.i.i ]
  %child743.i.i = getelementptr inbounds %struct.sched_domain, ptr %sibling.addr.0.lcssa.i.i, i32 0, i32 1
  %224 = ptrtoint ptr %child743.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %child743.i.i, align 4
  %tobool8.not44.i.i = icmp eq ptr %225, null
  br i1 %tobool8.not44.i.i, label %if.end5.i.i.i.i393, label %land.rhs9.i.i

land.rhs9.i.i:                                    ; preds = %while.body15.i.i, %while.end.i.i
  %226 = phi ptr [ %231, %while.body15.i.i ], [ %225, %while.end.i.i ]
  %child746.i.i = phi ptr [ %child7.i.i, %while.body15.i.i ], [ %child743.i.i, %while.end.i.i ]
  %sibling.addr.145.i.i = phi ptr [ %229, %while.body15.i.i ], [ %sibling.addr.0.lcssa.i.i, %while.end.i.i ]
  %span.i27.i.i = getelementptr inbounds %struct.sched_domain, ptr %226, i32 0, i32 41
  %span.i28.i.i = getelementptr inbounds %struct.sched_domain, ptr %sibling.addr.145.i.i, i32 0, i32 41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %227 = load i32, ptr @nr_cpu_ids, align 4
  %call13.i.i.i.i = tail call i32 @__bitmap_equal(ptr noundef %span.i27.i.i, ptr noundef %span.i28.i.i, i32 noundef %227) #15
  %tobool.i.not.i.i = icmp eq i32 %call13.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end5.i.i.i.i393, label %while.body15.i.i

while.body15.i.i:                                 ; preds = %land.rhs9.i.i
  %228 = ptrtoint ptr %child746.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %child746.i.i, align 4
  %child7.i.i = getelementptr inbounds %struct.sched_domain, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %child7.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %child7.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %231, null
  br i1 %tobool8.not.i.i, label %if.end5.i.i.i.i393, label %land.rhs9.i.i

if.end5.i.i.i.i393:                               ; preds = %while.body15.i.i, %land.rhs9.i.i, %while.end.i.i, %if.else.i.i.i361, %if.end9.i
  %sibling.0.i = phi ptr [ %208, %if.else.i.i.i361 ], [ %208, %if.end9.i ], [ %sibling.addr.0.lcssa.i.i, %while.end.i.i ], [ %229, %while.body15.i.i ], [ %sibling.addr.145.i.i, %land.rhs9.i.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %232 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i85.i = add i32 %232, 31
  %233 = lshr i32 %sub.i.i85.i, 3
  %mul.i.i86.i = and i32 %233, 536870908
  %add.i.i375 = add nuw nsw i32 %mul.i.i86.i, 24
  %call.i2.i.i.i.i392 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i375, i32 noundef 3520) #18
  %tobool.not.i89.i = icmp eq ptr %call.i2.i.i.i.i392, null
  br i1 %tobool.not.i89.i, label %fail.i, label %if.end.i.i396

if.end.i.i396:                                    ; preds = %if.end5.i.i.i.i393
  %cpumask.i.i.i = getelementptr inbounds %struct.sched_group, ptr %call.i2.i.i.i.i392, i32 0, i32 6
  %child.i90.i = getelementptr inbounds %struct.sched_domain, ptr %sibling.0.i, i32 0, i32 1
  %234 = ptrtoint ptr %child.i90.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %child.i90.i, align 4
  %tobool3.not.i.i = icmp eq ptr %235, null
  br i1 %tobool3.not.i.i, label %if.else.i.i397, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i396
  %span.i.i91.i = getelementptr inbounds %struct.sched_domain, ptr %235, i32 0, i32 41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %236 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i92.i = add i32 %236, 31
  %237 = lshr i32 %sub.i.i.i92.i, 3
  %mul.i.i.i.i = and i32 %237, 536870908
  %238 = call ptr @memcpy(ptr %cpumask.i.i.i, ptr %span.i.i91.i, i32 %mul.i.i.i.i)
  %flags.i.i = getelementptr inbounds %struct.sched_domain, ptr %235, i32 0, i32 9
  %239 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %flags.i.i, align 4
  %flags8.i.i = getelementptr inbounds %struct.sched_group, ptr %call.i2.i.i.i.i392, i32 0, i32 5
  %241 = ptrtoint ptr %flags8.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %240, ptr %flags8.i.i, align 4
  br label %if.end21.i

if.else.i.i397:                                   ; preds = %if.end.i.i396
  %span.i1.i.i = getelementptr inbounds %struct.sched_domain, ptr %sibling.0.i, i32 0, i32 41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %242 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i2.i.i = add i32 %242, 31
  %243 = lshr i32 %sub.i.i2.i.i, 3
  %mul.i.i3.i.i = and i32 %243, 536870908
  %244 = call ptr @memcpy(ptr %cpumask.i.i.i, ptr %span.i1.i.i, i32 %mul.i.i3.i.i)
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else.i.i397, %if.then4.i.i
  %ref.i.i = getelementptr inbounds %struct.sched_group, ptr %call.i2.i.i.i.i392, i32 0, i32 1
  %call.i.i.i93.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #15
  %245 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #15, !srcloc !305
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %246 = load i32, ptr @nr_cpu_ids, align 4
  tail call void @__bitmap_or(ptr noundef %189, ptr noundef %189, ptr noundef %cpumask.i.i.i, i32 noundef %246) #15
  %247 = load ptr, ptr @sched_domains_tmpmask2, align 4
  %248 = getelementptr inbounds %struct.sched_domain, ptr %sibling.0.i, i32 0, i32 38
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %248, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %251 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i.i.i399 = add i32 %251, 31
  %252 = lshr i32 %sub.i.i.i.i.i399, 3
  %mul.i.i.i.i.i = and i32 %252, 536870908
  %253 = call ptr @memset(ptr %247, i32 0, i32 %mul.i.i.i.i.i)
  %call170.i.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %cpumask.i.i.i) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %254 = load i32, ptr @nr_cpu_ids, align 4
  %cmp71.i.i.i = icmp ult i32 %call170.i.i.i, %254
  br i1 %cmp71.i.i.i, label %do.body.i.i.i, label %cpumask_empty.exit.i.i.i

do.body.i.i.i:                                    ; preds = %for.cond.backedge.i.i.i, %if.end21.i
  %255 = phi i32 [ %267, %for.cond.backedge.i.i.i ], [ %254, %if.end21.i ]
  %call172.i.i.i = phi i32 [ %call1.i.i.i, %for.cond.backedge.i.i.i ], [ %call170.i.i.i, %if.end21.i ]
  %256 = ptrtoint ptr %250 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %250, align 4
  %258 = ptrtoint ptr %257 to i32
  %arrayidx.i.i96.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call172.i.i.i
  %259 = ptrtoint ptr %arrayidx.i.i96.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %arrayidx.i.i96.i, align 4
  %add.i.i.i400 = add i32 %260, %258
  %261 = inttoptr i32 %add.i.i.i400 to ptr
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %261, align 4
  %child.i.i.i = getelementptr inbounds %struct.sched_domain, ptr %263, i32 0, i32 1
  %264 = ptrtoint ptr %child.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %child.i.i.i, align 4
  %tobool.not.i.i97.i = icmp eq ptr %265, null
  br i1 %tobool.not.i.i97.i, label %for.cond.backedge.i.i.i, label %if.end.i.i.i401

if.end.i.i.i401:                                  ; preds = %do.body.i.i.i
  %span.i.i.i.i = getelementptr inbounds %struct.sched_domain, ptr %265, i32 0, i32 41
  %call13.i.i.i.i.i = tail call i32 @__bitmap_equal(ptr noundef %cpumask.i.i.i, ptr noundef %span.i.i.i.i, i32 noundef %255) #15
  %tobool.i.not.i.i.i408 = icmp eq i32 %call13.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i408, label %for.cond.backedge.i.i.i, label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %if.end.i.i.i401
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %266 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i.i.i = icmp ugt i32 %266, %call172.i.i.i
  br i1 %cmp.not.i.i.i.i.i.i, label %cpumask_set_cpu.exit.i.i.i, label %land.rhs.i.i.i.i.i.i

land.rhs.i.i.i.i.i.i:                             ; preds = %if.end8.i.i.i
  %.b37.i.i.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i.i, label %cpumask_set_cpu.exit.i.i.i, label %if.then.i.i.i.i.i.i, !prof !301

if.then.i.i.i.i.i.i:                              ; preds = %land.rhs.i.i.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpumask_set_cpu.exit.i.i.i

cpumask_set_cpu.exit.i.i.i:                       ; preds = %if.then.i.i.i.i.i.i, %land.rhs.i.i.i.i.i.i, %if.end8.i.i.i
  tail call void @_set_bit(i32 noundef %call172.i.i.i, ptr noundef %247) #15
  br label %for.cond.backedge.i.i.i

for.cond.backedge.i.i.i:                          ; preds = %cpumask_set_cpu.exit.i.i.i, %if.end.i.i.i401, %do.body.i.i.i
  %call1.i.i.i = tail call i32 @cpumask_next(i32 noundef %call172.i.i.i, ptr noundef %cpumask.i.i.i) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %267 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i.i = icmp ult i32 %call1.i.i.i, %267
  br i1 %cmp.i.i.i, label %do.body.i.i.i, label %cpumask_empty.exit.i.i.i

cpumask_empty.exit.i.i.i:                         ; preds = %for.cond.backedge.i.i.i, %if.end21.i
  %.lcssa.i.i.i = phi i32 [ %254, %if.end21.i ], [ %267, %for.cond.backedge.i.i.i ]
  %call.i.i.i.i98.i = tail call i32 @_find_first_bit_be(ptr noundef %247, i32 noundef %.lcssa.i.i.i) #15
  %cmp4.i.i.i.i.i = icmp eq i32 %call.i.i.i.i98.i, %.lcssa.i.i.i
  br i1 %cmp4.i.i.i.i.i, label %land.rhs.i.i.i410, label %build_balance_mask.exit.i.i

land.rhs.i.i.i410:                                ; preds = %cpumask_empty.exit.i.i.i
  %.b60.i.i.i = load i1, ptr @build_balance_mask.__already_done, align 1
  br i1 %.b60.i.i.i, label %build_balance_mask.exit.i.i, label %if.then17.i.i.i, !prof !301

if.then17.i.i.i:                                  ; preds = %land.rhs.i.i.i410
  store i1 true, ptr @build_balance_mask.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 906, i32 noundef 9, ptr noundef null) #15
  br label %build_balance_mask.exit.i.i

build_balance_mask.exit.i.i:                      ; preds = %if.then17.i.i.i, %land.rhs.i.i.i410, %cpumask_empty.exit.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %268 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i99.i = tail call i32 @_find_first_bit_be(ptr noundef %247, i32 noundef %268) #15
  %sgc.i.i411 = getelementptr inbounds %struct.sd_data, ptr %250, i32 0, i32 3
  %269 = ptrtoint ptr %sgc.i.i411 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %sgc.i.i411, align 4
  %271 = ptrtoint ptr %270 to i32
  %arrayidx.i.i412 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call.i.i99.i
  %272 = ptrtoint ptr %arrayidx.i.i412 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %arrayidx.i.i412, align 4
  %add.i100.i = add i32 %273, %271
  %274 = inttoptr i32 %add.i100.i to ptr
  %275 = ptrtoint ptr %274 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %274, align 4
  %sgc2.i.i = getelementptr inbounds %struct.sched_group, ptr %call.i2.i.i.i.i392, i32 0, i32 3
  %277 = ptrtoint ptr %sgc2.i.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %276, ptr %sgc2.i.i, align 4
  %call.i.i.i101.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %276, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !311
  tail call void @llvm.prefetch.p0(ptr %276, i32 1, i32 3, i32 1) #15
  %278 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %276, ptr %276, i32 1, ptr elementtype(i32) %276) #15, !srcloc !312
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %278, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !313
  %cmp.i.i413 = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  %279 = ptrtoint ptr %sgc2.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %sgc2.i.i, align 4
  %cpumask.i.i102.i = getelementptr inbounds %struct.sched_group_capacity, ptr %280, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %281 = load i32, ptr @nr_cpu_ids, align 4
  br i1 %cmp.i.i413, label %if.then.i.i414, label %if.end12.i.i.i123.i

if.then.i.i414:                                   ; preds = %build_balance_mask.exit.i.i
  %sub.i.i.i103.i = add i32 %281, 31
  %282 = lshr i32 %sub.i.i.i103.i, 3
  %mul.i.i.i104.i = and i32 %282, 536870908
  %283 = call ptr @memcpy(ptr %cpumask.i.i102.i, ptr %247, i32 %mul.i.i.i104.i)
  br label %if.end.i.i81.i.i

if.end12.i.i.i123.i:                              ; preds = %build_balance_mask.exit.i.i
  %call13.i.i.i122.i = tail call i32 @__bitmap_equal(ptr noundef %cpumask.i.i102.i, ptr noundef %247, i32 noundef %281) #15
  %tobool.i.not.i125.i = icmp eq i32 %call13.i.i.i122.i, 0
  br i1 %tobool.i.not.i125.i, label %land.rhs.i127.i, label %if.end.i.i81.i.i

land.rhs.i127.i:                                  ; preds = %if.end12.i.i.i123.i
  %.b68.i.i = load i1, ptr @init_overlap_sched_group.__already_done, align 1
  br i1 %.b68.i.i, label %if.end.i.i81.i.i, label %if.then15.i.i415, !prof !301

if.then15.i.i415:                                 ; preds = %land.rhs.i127.i
  store i1 true, ptr @init_overlap_sched_group.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 953, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i.i81.i.i

if.end.i.i81.i.i:                                 ; preds = %if.then15.i.i415, %land.rhs.i127.i, %if.end12.i.i.i123.i, %if.then.i.i414
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %284 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i.i506 = tail call i32 @__bitmap_weight(ptr noundef %cpumask.i.i.i, i32 noundef %284) #15
  %mul.i.i507 = shl i32 %call4.i.i.i.i506, 10
  %285 = ptrtoint ptr %sgc2.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %sgc2.i.i, align 4
  %capacity.i.i = getelementptr inbounds %struct.sched_group_capacity, ptr %286, i32 0, i32 1
  %287 = ptrtoint ptr %capacity.i.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %mul.i.i507, ptr %capacity.i.i, align 4
  %288 = load ptr, ptr %sgc2.i.i, align 4
  %min_capacity.i.i = getelementptr inbounds %struct.sched_group_capacity, ptr %288, i32 0, i32 2
  %289 = ptrtoint ptr %min_capacity.i.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 1024, ptr %min_capacity.i.i, align 4
  %290 = load ptr, ptr %sgc2.i.i, align 4
  %max_capacity.i.i = getelementptr inbounds %struct.sched_group_capacity, ptr %290, i32 0, i32 3
  %291 = ptrtoint ptr %max_capacity.i.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 1024, ptr %max_capacity.i.i, align 4
  %tobool23.not.i = icmp eq ptr %first.0139.i, null
  %spec.select.i = select i1 %tobool23.not.i, ptr %call.i2.i.i.i.i392, ptr %first.0139.i
  %tobool26.not.i = icmp eq ptr %last.0138.i, null
  br i1 %tobool26.not.i, label %if.end28.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.end.i.i81.i.i
  %292 = ptrtoint ptr %last.0138.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr %call.i2.i.i.i.i392, ptr %last.0138.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then27.i, %if.end.i.i81.i.i
  %293 = ptrtoint ptr %call.i2.i.i.i.i392 to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %spec.select.i, ptr %call.i2.i.i.i.i392, align 128
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end28.i, %cpumask_test_cpu.exit79.i, %cpumask_test_cpu.exit.i
  %last.1.ph.i = phi ptr [ %last.0138.i, %cpumask_test_cpu.exit79.i ], [ %last.0138.i, %cpumask_test_cpu.exit.i ], [ %call.i2.i.i.i.i392, %if.end28.i ]
  %first.2.ph.i = phi ptr [ %first.0139.i, %cpumask_test_cpu.exit79.i ], [ %first.0139.i, %cpumask_test_cpu.exit.i ], [ %spec.select.i, %if.end28.i ]
  %call30.i = tail call i32 @cpumask_next_wrap(i32 noundef %i.0136.i, ptr noundef %span.i333, i32 noundef %call92788, i1 noundef zeroext true) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %294 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i508 = icmp ult i32 %call30.i, %294
  br i1 %cmp.i508, label %cpumask_test_cpu.exit.i, label %for.inc124

fail.i:                                           ; preds = %if.end5.i.i.i.i393
  %tobool.not.i128.i = icmp eq ptr %first.0139.i, null
  br i1 %tobool.not.i128.i, label %sw.bb.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end8.i.i, %fail.i
  %sg.addr.0.i.i = phi ptr [ %296, %if.end8.i.i ], [ %first.0139.i, %fail.i ]
  %295 = ptrtoint ptr %sg.addr.0.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %sg.addr.0.i.i, align 4
  %ref5.i.i = getelementptr inbounds %struct.sched_group, ptr %sg.addr.0.i.i, i32 0, i32 1
  %call.i.i17.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref5.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !302
  tail call void @llvm.prefetch.p0(ptr %ref5.i.i, i32 1, i32 3, i32 1) #15
  %297 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref5.i.i, ptr %ref5.i.i, i32 1, ptr elementtype(i32) %ref5.i.i) #15, !srcloc !303
  %asmresult.i.i.i.i.i18.i.i = extractvalue { i32, i32 } %297, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !304
  %cmp.i.i19.i.i = icmp eq i32 %asmresult.i.i.i.i.i18.i.i, 0
  br i1 %cmp.i.i19.i.i, label %if.then7.i.i, label %if.end8.i.i

if.then7.i.i:                                     ; preds = %do.body.i.i
  tail call void @kfree(ptr noundef %sg.addr.0.i.i) #15
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then7.i.i, %do.body.i.i
  %cmp.not.i.i509 = icmp eq ptr %296, %first.0139.i
  br i1 %cmp.not.i.i509, label %sw.bb.i, label %do.body.i.i

if.else:                                          ; preds = %for.body108
  %298 = getelementptr inbounds %struct.sched_domain, ptr %sd.1785, i32 0, i32 38
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %298, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %301 = load i32, ptr @debug_locks, align 4
  %tobool.not.i512 = icmp eq i32 %301, 0
  br i1 %tobool.not.i512, label %if.end.i518, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.else
  %call.i.i513 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @sched_domains_mutex, i32 0, i32 5), i32 noundef -1) #15
  %cmp.not.i = icmp eq i32 %call.i.i513, 0
  br i1 %cmp.not.i, label %do.end.i514, label %if.end.i518, !prof !307

do.end.i514:                                      ; preds = %land.rhs.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 1211, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i518

if.end.i518:                                      ; preds = %do.end.i514, %land.rhs.i, %if.else
  %302 = load ptr, ptr @sched_domains_tmpmask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %303 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i515 = add i32 %303, 31
  %304 = lshr i32 %sub.i.i.i515, 3
  %mul.i.i.i516 = and i32 %304, 536870908
  %305 = call ptr @memset(ptr %302, i32 0, i32 %mul.i.i.i516)
  %call25.i = tail call i32 @cpumask_next_wrap(i32 noundef %sub.i, ptr noundef %span.i333, i32 noundef %call92788, i1 noundef zeroext false) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %306 = load i32, ptr @nr_cpu_ids, align 4
  %cmp262.i = icmp ult i32 %call25.i, %306
  br i1 %cmp262.i, label %cpumask_test_cpu.exit.lr.ph.i, label %build_sched_groups.exit

cpumask_test_cpu.exit.lr.ph.i:                    ; preds = %if.end.i518
  %sg11.i.i = getelementptr inbounds %struct.sd_data, ptr %300, i32 0, i32 2
  %sgc.i.i519 = getelementptr inbounds %struct.sd_data, ptr %300, i32 0, i32 3
  br label %cpumask_test_cpu.exit.i523

cpumask_test_cpu.exit.i523:                       ; preds = %cleanup.i, %cpumask_test_cpu.exit.lr.ph.i
  %first.06.i = phi ptr [ null, %cpumask_test_cpu.exit.lr.ph.i ], [ %first.2.i, %cleanup.i ]
  %i.04.i = phi i32 [ %call25.i, %cpumask_test_cpu.exit.lr.ph.i ], [ %call39.i, %cleanup.i ]
  %last.03.i = phi ptr [ null, %cpumask_test_cpu.exit.lr.ph.i ], [ %last.1.i, %cleanup.i ]
  %div3.i.i.i520 = lshr i32 %i.04.i, 5
  %arrayidx.i.i.i521 = getelementptr i32, ptr %302, i32 %div3.i.i.i520
  %307 = ptrtoint ptr %arrayidx.i.i.i521 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load volatile i32, ptr %arrayidx.i.i.i521, align 4
  %and.i.i.i522 = and i32 %i.04.i, 31
  %309 = shl nuw i32 1, %and.i.i.i522
  %310 = and i32 %308, %309
  %tobool28.not.i = icmp eq i32 %310, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %cleanup.i

if.end30.i:                                       ; preds = %cpumask_test_cpu.exit.i523
  %311 = ptrtoint ptr %300 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %300, align 4
  %313 = ptrtoint ptr %312 to i32
  %arrayidx.i.i524 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %i.04.i
  %314 = ptrtoint ptr %arrayidx.i.i524 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %arrayidx.i.i524, align 4
  %add.i.i525 = add i32 %315, %313
  %316 = inttoptr i32 %add.i.i525 to ptr
  %317 = ptrtoint ptr %316 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %316, align 4
  %child3.i.i = getelementptr inbounds %struct.sched_domain, ptr %318, i32 0, i32 1
  %319 = ptrtoint ptr %child3.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %child3.i.i, align 4
  %tobool.not.i.i526 = icmp eq ptr %320, null
  br i1 %tobool.not.i.i526, label %do.body5.i.i, label %if.then.i.i529

if.then.i.i529:                                   ; preds = %if.end30.i
  %span.i.i.i527 = getelementptr inbounds %struct.sched_domain, ptr %320, i32 0, i32 41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %321 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i528 = tail call i32 @_find_first_bit_be(ptr noundef %span.i.i.i527, i32 noundef %321) #15
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %if.then.i.i529, %if.end30.i
  %cpu.addr.0.i.i = phi i32 [ %call.i.i.i528, %if.then.i.i529 ], [ %i.04.i, %if.end30.i ]
  %322 = ptrtoint ptr %sg11.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %sg11.i.i, align 4
  %324 = ptrtoint ptr %323 to i32
  %arrayidx13.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu.addr.0.i.i
  %325 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %arrayidx13.i.i, align 4
  %add14.i.i = add i32 %326, %324
  %327 = inttoptr i32 %add14.i.i to ptr
  %328 = ptrtoint ptr %327 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %327, align 4
  %330 = ptrtoint ptr %sgc.i.i519 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %sgc.i.i519, align 4
  %332 = ptrtoint ptr %331 to i32
  %add23.i.i = add i32 %326, %332
  %333 = inttoptr i32 %add23.i.i to ptr
  %334 = ptrtoint ptr %333 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %333, align 4
  %sgc24.i.i = getelementptr inbounds %struct.sched_group, ptr %329, i32 0, i32 3
  %336 = ptrtoint ptr %sgc24.i.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr %335, ptr %sgc24.i.i, align 4
  %ref.i.i530 = getelementptr inbounds %struct.sched_group, ptr %329, i32 0, i32 1
  %call.i.i.i.i531 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i530, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !311
  tail call void @llvm.prefetch.p0(ptr %ref.i.i530, i32 1, i32 3, i32 1) #15
  %337 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i530, ptr %ref.i.i530, i32 1, ptr elementtype(i32) %ref.i.i530) #15, !srcloc !312
  %asmresult.i.i.i.i.i.i532 = extractvalue { i32, i32 } %337, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !313
  %cmp.i.i533 = icmp sgt i32 %asmresult.i.i.i.i.i.i532, 1
  %338 = ptrtoint ptr %sgc24.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %sgc24.i.i, align 4
  %call.i.i106.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %339, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !311
  tail call void @llvm.prefetch.p0(ptr %339, i32 1, i32 3, i32 1) #15
  %340 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %339, ptr %339, i32 1, ptr elementtype(i32) %339) #15, !srcloc !312
  %asmresult.i.i.i.i107.i.i = extractvalue { i32, i32 } %340, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !313
  %cmp30.i.i = icmp slt i32 %asmresult.i.i.i.i107.i.i, 2
  %cmp32.not.i.i = xor i1 %cmp.i.i533, %cmp30.i.i
  br i1 %cmp32.not.i.i, label %if.end51.i.i, label %do.end45.i.i, !prof !301

do.end45.i.i:                                     ; preds = %do.body5.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 1173, i32 noundef 9, ptr noundef null) #15
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %do.end45.i.i, %do.body5.i.i
  br i1 %cmp.i.i533, label %if.else.i.i.i645, label %if.end61.i.i

if.end61.i.i:                                     ; preds = %if.end51.i.i
  %cpumask.i113.i.i = getelementptr inbounds %struct.sched_group, ptr %329, i32 0, i32 6
  br i1 %tobool.not.i.i526, label %if.else.i.i537, label %if.then63.i.i

if.then63.i.i:                                    ; preds = %if.end61.i.i
  %span.i108.i.i = getelementptr inbounds %struct.sched_domain, ptr %320, i32 0, i32 41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %341 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i.i534 = add i32 %341, 31
  %342 = lshr i32 %sub.i.i.i.i534, 3
  %mul.i.i.i.i535 = and i32 %342, 536870908
  %343 = call ptr @memcpy(ptr %cpumask.i113.i.i, ptr %span.i108.i.i, i32 %mul.i.i.i.i535)
  %344 = ptrtoint ptr %sgc24.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %sgc24.i.i, align 4
  %cpumask.i109.i.i = getelementptr inbounds %struct.sched_group_capacity, ptr %345, i32 0, i32 7
  %346 = call ptr @memmove(ptr %cpumask.i109.i.i, ptr %span.i108.i.i, i32 %mul.i.i.i.i535)
  %flags.i.i536 = getelementptr inbounds %struct.sched_domain, ptr %320, i32 0, i32 9
  %347 = ptrtoint ptr %flags.i.i536 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %flags.i.i536, align 4
  %flags68.i.i = getelementptr inbounds %struct.sched_group, ptr %329, i32 0, i32 5
  %349 = ptrtoint ptr %flags68.i.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %348, ptr %flags68.i.i, align 4
  br label %if.end.i.i.i.i636

if.else.i.i537:                                   ; preds = %if.end61.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %350 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i.i = icmp ugt i32 %350, %cpu.addr.0.i.i
  br i1 %cmp.not.i.i.i.i.i, label %cpumask_set_cpu.exit.i.i, label %land.rhs.i.i.i.i.i

land.rhs.i.i.i.i.i:                               ; preds = %if.else.i.i537
  %.b37.i.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i, label %cpumask_set_cpu.exit.i.i, label %if.then.i.i.i.i.i538, !prof !301

if.then.i.i.i.i.i538:                             ; preds = %land.rhs.i.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpumask_set_cpu.exit.i.i

cpumask_set_cpu.exit.i.i:                         ; preds = %if.then.i.i.i.i.i538, %land.rhs.i.i.i.i.i, %if.else.i.i537
  tail call void @_set_bit(i32 noundef %cpu.addr.0.i.i, ptr noundef %cpumask.i113.i.i) #15
  %351 = ptrtoint ptr %sgc24.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %sgc24.i.i, align 4
  %cpumask.i115.i.i = getelementptr inbounds %struct.sched_group_capacity, ptr %352, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %353 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i116.i.i = icmp ugt i32 %353, %cpu.addr.0.i.i
  br i1 %cmp.not.i.i.i116.i.i, label %cpumask_set_cpu.exit120.i.i, label %land.rhs.i.i.i118.i.i

land.rhs.i.i.i118.i.i:                            ; preds = %cpumask_set_cpu.exit.i.i
  %.b37.i.i.i117.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i117.i.i, label %cpumask_set_cpu.exit120.i.i, label %if.then.i.i.i119.i.i, !prof !301

if.then.i.i.i119.i.i:                             ; preds = %land.rhs.i.i.i118.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpumask_set_cpu.exit120.i.i

cpumask_set_cpu.exit120.i.i:                      ; preds = %if.then.i.i.i119.i.i, %land.rhs.i.i.i118.i.i, %cpumask_set_cpu.exit.i.i
  tail call void @_set_bit(i32 noundef %cpu.addr.0.i.i, ptr noundef %cpumask.i115.i.i) #15
  br label %if.end.i.i.i.i636

if.end.i.i.i.i636:                                ; preds = %cpumask_set_cpu.exit120.i.i, %if.then63.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %354 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i.i635 = tail call i32 @__bitmap_weight(ptr noundef %cpumask.i113.i.i, i32 noundef %354) #15
  %mul.i.i638 = shl i32 %call4.i.i.i.i635, 10
  %355 = ptrtoint ptr %sgc24.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %sgc24.i.i, align 4
  %capacity.i.i639 = getelementptr inbounds %struct.sched_group_capacity, ptr %356, i32 0, i32 1
  %357 = ptrtoint ptr %capacity.i.i639 to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 %mul.i.i638, ptr %capacity.i.i639, align 4
  %358 = load ptr, ptr %sgc24.i.i, align 4
  %min_capacity.i.i640 = getelementptr inbounds %struct.sched_group_capacity, ptr %358, i32 0, i32 2
  %359 = ptrtoint ptr %min_capacity.i.i640 to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 1024, ptr %min_capacity.i.i640, align 4
  %360 = load ptr, ptr %sgc24.i.i, align 4
  %max_capacity.i.i641 = getelementptr inbounds %struct.sched_group_capacity, ptr %360, i32 0, i32 3
  %361 = ptrtoint ptr %max_capacity.i.i641 to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 1024, ptr %max_capacity.i.i641, align 4
  br label %if.else.i.i.i645

if.else.i.i.i645:                                 ; preds = %if.end.i.i.i.i636, %if.end51.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %362 = load i32, ptr @nr_cpu_ids, align 4
  %cpumask.i.i = getelementptr inbounds %struct.sched_group, ptr %329, i32 0, i32 6
  tail call void @__bitmap_or(ptr noundef %302, ptr noundef %302, ptr noundef %cpumask.i.i, i32 noundef %362) #15
  %tobool33.not.i = icmp eq ptr %first.06.i, null
  %spec.select.i646 = select i1 %tobool33.not.i, ptr %329, ptr %first.06.i
  %tobool36.not.i = icmp eq ptr %last.03.i, null
  br i1 %tobool36.not.i, label %cleanup.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.else.i.i.i645
  %363 = ptrtoint ptr %last.03.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store ptr %329, ptr %last.03.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then37.i, %if.else.i.i.i645, %cpumask_test_cpu.exit.i523
  %last.1.i = phi ptr [ %last.03.i, %cpumask_test_cpu.exit.i523 ], [ %329, %if.then37.i ], [ %329, %if.else.i.i.i645 ]
  %first.2.i = phi ptr [ %first.06.i, %cpumask_test_cpu.exit.i523 ], [ %spec.select.i646, %if.then37.i ], [ %spec.select.i646, %if.else.i.i.i645 ]
  %call39.i = tail call i32 @cpumask_next_wrap(i32 noundef %i.04.i, ptr noundef %span.i333, i32 noundef %call92788, i1 noundef zeroext true) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %364 = load i32, ptr @nr_cpu_ids, align 4
  %cmp26.i = icmp ult i32 %call39.i, %364
  br i1 %cmp26.i, label %cpumask_test_cpu.exit.i523, label %build_sched_groups.exit

build_sched_groups.exit:                          ; preds = %cleanup.i, %if.end.i518
  %last.0.lcssa.i = phi ptr [ null, %if.end.i518 ], [ %last.1.i, %cleanup.i ]
  %first.0.lcssa.i648 = phi ptr [ null, %if.end.i518 ], [ %first.2.i, %cleanup.i ]
  %365 = ptrtoint ptr %last.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store ptr %first.0.lcssa.i648, ptr %last.0.lcssa.i, align 4
  br label %for.inc124

for.inc124:                                       ; preds = %build_sched_groups.exit, %for.inc.i, %if.then114
  %first.0.lcssa.i.sink = phi ptr [ %first.0.lcssa.i648, %build_sched_groups.exit ], [ null, %if.then114 ], [ %first.2.ph.i, %for.inc.i ]
  %groups.i = getelementptr inbounds %struct.sched_domain, ptr %sd.1785, i32 0, i32 2
  %366 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store ptr %first.0.lcssa.i.sink, ptr %groups.i, align 8
  %367 = ptrtoint ptr %sd.1785 to i32
  call void @__asan_load4_noabort(i32 %367)
  %sd.1 = load ptr, ptr %sd.1785, align 4
  %tobool107.not = icmp eq ptr %sd.1, null
  br i1 %tobool107.not, label %for.cond91.loopexit, label %for.body108

for.body130:                                      ; preds = %for.inc151, %for.body130.lr.ph
  %i.2795 = phi i32 [ %i.2793, %for.body130.lr.ph ], [ %i.2, %for.inc151 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %368 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i651 = icmp ugt i32 %368, %i.2795
  br i1 %cmp.not.i.i.i651, label %cpumask_test_cpu.exit, label %land.rhs.i.i.i652

land.rhs.i.i.i652:                                ; preds = %for.body130
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %cpumask_test_cpu.exit, label %if.then.i.i.i653, !prof !301

if.then.i.i.i653:                                 ; preds = %land.rhs.i.i.i652
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i653, %land.rhs.i.i.i652, %for.body130
  %div3.i.i = lshr i32 %i.2795, 5
  %arrayidx.i.i654 = getelementptr i32, ptr %cpu_map, i32 %div3.i.i
  %369 = ptrtoint ptr %arrayidx.i.i654 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load volatile i32, ptr %arrayidx.i.i654, align 4
  %and.i.i655 = and i32 %i.2795, 31
  %371 = shl nuw i32 1, %and.i.i655
  %372 = and i32 %370, %371
  %tobool132.not = icmp eq i32 %372, 0
  br i1 %tobool132.not, label %for.inc151, label %do.body135

do.body135:                                       ; preds = %cpumask_test_cpu.exit
  %arrayidx143 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %i.2795
  %373 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %arrayidx143, align 4
  %add144 = add i32 %374, %180
  %375 = inttoptr i32 %add144 to ptr
  %376 = ptrtoint ptr %375 to i32
  call void @__asan_load4_noabort(i32 %376)
  %sd.2790 = load ptr, ptr %375, align 4
  %tobool146.not791 = icmp eq ptr %sd.2790, null
  br i1 %tobool146.not791, label %for.inc151, label %for.body147

for.body147:                                      ; preds = %init_sched_groups_capacity.exit, %do.body135
  %sd.2792 = phi ptr [ %sd.2, %init_sched_groups_capacity.exit ], [ %sd.2790, %do.body135 ]
  %377 = getelementptr inbounds %struct.sched_domain, ptr %sd.2792, i32 0, i32 38
  %378 = ptrtoint ptr %377 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %377, align 4
  %380 = ptrtoint ptr %379 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %379, align 4
  %382 = ptrtoint ptr %381 to i32
  %383 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %arrayidx143, align 4
  %add.i658 = add i32 %384, %382
  %385 = inttoptr i32 %add.i658 to ptr
  %386 = ptrtoint ptr %385 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %385, align 4
  %cmp.not.i659 = icmp eq ptr %387, %sd.2792
  br i1 %cmp.not.i659, label %if.end33.i, label %land.rhs.i660

land.rhs.i660:                                    ; preds = %for.body147
  %.b138.i = load i1, ptr @claim_allocations.__already_done, align 1
  br i1 %.b138.i, label %if.end33.i, label %if.then.i661, !prof !301

if.then.i661:                                     ; preds = %land.rhs.i660
  store i1 true, ptr @claim_allocations.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 1473, i32 noundef 9, ptr noundef null) #15
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then.i661, %land.rhs.i660, %for.body147
  %388 = ptrtoint ptr %379 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %379, align 4
  %390 = ptrtoint ptr %389 to i32
  %391 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %arrayidx143, align 4
  %add50.i = add i32 %392, %390
  %393 = inttoptr i32 %add50.i to ptr
  %394 = ptrtoint ptr %393 to i32
  call void @__asan_store4_noabort(i32 %394)
  store ptr null, ptr %393, align 4
  %sds.i = getelementptr inbounds %struct.sd_data, ptr %379, i32 0, i32 1
  %395 = ptrtoint ptr %sds.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %sds.i, align 4
  %397 = ptrtoint ptr %396 to i32
  %398 = load i32, ptr %arrayidx143, align 4
  %add59.i = add i32 %398, %397
  %399 = inttoptr i32 %add59.i to ptr
  %400 = ptrtoint ptr %399 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %399, align 4
  %call.i.i.i662 = tail call zeroext i1 @__kasan_check_read(ptr noundef %401, i32 noundef 4) #15
  %402 = ptrtoint ptr %401 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load volatile i32, ptr %401, align 4
  %tobool60.not.i = icmp eq i32 %403, 0
  br i1 %tobool60.not.i, label %do.body73.i, label %do.body62.i

do.body62.i:                                      ; preds = %if.end33.i
  %404 = ptrtoint ptr %sds.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %sds.i, align 4
  %406 = ptrtoint ptr %405 to i32
  %407 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %arrayidx143, align 4
  %add71.i = add i32 %408, %406
  %409 = inttoptr i32 %add71.i to ptr
  %410 = ptrtoint ptr %409 to i32
  call void @__asan_store4_noabort(i32 %410)
  store ptr null, ptr %409, align 4
  br label %do.body73.i

do.body73.i:                                      ; preds = %do.body62.i, %if.end33.i
  %sg.i = getelementptr inbounds %struct.sd_data, ptr %379, i32 0, i32 2
  %411 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %sg.i, align 4
  %413 = ptrtoint ptr %412 to i32
  %414 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %arrayidx143, align 4
  %add81.i = add i32 %415, %413
  %416 = inttoptr i32 %add81.i to ptr
  %417 = ptrtoint ptr %416 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %416, align 4
  %ref82.i = getelementptr inbounds %struct.sched_group, ptr %418, i32 0, i32 1
  %call.i.i139.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref82.i, i32 noundef 4) #15
  %419 = ptrtoint ptr %ref82.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load volatile i32, ptr %ref82.i, align 4
  %tobool84.not.i = icmp eq i32 %420, 0
  br i1 %tobool84.not.i, label %do.body97.i, label %do.body86.i

do.body86.i:                                      ; preds = %do.body73.i
  %421 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %sg.i, align 4
  %423 = ptrtoint ptr %422 to i32
  %424 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %arrayidx143, align 4
  %add95.i = add i32 %425, %423
  %426 = inttoptr i32 %add95.i to ptr
  %427 = ptrtoint ptr %426 to i32
  call void @__asan_store4_noabort(i32 %427)
  store ptr null, ptr %426, align 4
  br label %do.body97.i

do.body97.i:                                      ; preds = %do.body86.i, %do.body73.i
  %sgc.i = getelementptr inbounds %struct.sd_data, ptr %379, i32 0, i32 3
  %428 = ptrtoint ptr %sgc.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %sgc.i, align 4
  %430 = ptrtoint ptr %429 to i32
  %431 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %arrayidx143, align 4
  %add105.i = add i32 %432, %430
  %433 = inttoptr i32 %add105.i to ptr
  %434 = ptrtoint ptr %433 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %433, align 4
  %call.i.i140.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %435, i32 noundef 4) #15
  %436 = ptrtoint ptr %435 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load volatile i32, ptr %435, align 4
  %tobool108.not.i = icmp eq i32 %437, 0
  br i1 %tobool108.not.i, label %claim_allocations.exit, label %do.body110.i

do.body110.i:                                     ; preds = %do.body97.i
  %438 = ptrtoint ptr %sgc.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %sgc.i, align 4
  %440 = ptrtoint ptr %439 to i32
  %441 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %arrayidx143, align 4
  %add119.i = add i32 %442, %440
  %443 = inttoptr i32 %add119.i to ptr
  %444 = ptrtoint ptr %443 to i32
  call void @__asan_store4_noabort(i32 %444)
  store ptr null, ptr %443, align 4
  br label %claim_allocations.exit

claim_allocations.exit:                           ; preds = %do.body110.i, %do.body97.i
  %groups.i663 = getelementptr inbounds %struct.sched_domain, ptr %sd.2792, i32 0, i32 2
  %445 = ptrtoint ptr %groups.i663 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %groups.i663, align 8
  %tobool.not.i664 = icmp eq ptr %446, null
  br i1 %tobool.not.i664, label %do.end.i665, label %if.end.i667, !prof !307

do.end.i665:                                      ; preds = %claim_allocations.exit
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 1252, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i667

if.end.i667:                                      ; preds = %do.end.i665, %claim_allocations.exit
  %flags.i666 = getelementptr inbounds %struct.sched_domain, ptr %sd.2792, i32 0, i32 9
  br label %do.body21.i

do.body21.i:                                      ; preds = %next.i, %if.end.i667
  %sg.0.i = phi ptr [ %446, %if.end.i667 ], [ %455, %next.i ]
  %cpumask.i.i668 = getelementptr inbounds %struct.sched_group, ptr %sg.0.i, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %447 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i = tail call i32 @__bitmap_weight(ptr noundef %cpumask.i.i668, i32 noundef %447) #15
  %group_weight.i = getelementptr inbounds %struct.sched_group, ptr %sg.0.i, i32 0, i32 2
  %448 = ptrtoint ptr %group_weight.i to i32
  call void @__asan_store4_noabort(i32 %448)
  store i32 %call4.i.i.i, ptr %group_weight.i, align 4
  %449 = ptrtoint ptr %flags.i666 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %flags.i666, align 4
  %and.i680 = and i32 %450, 1024
  %tobool24.not.i = icmp eq i32 %and.i680, 0
  br i1 %tobool24.not.i, label %next.i, label %for.cond.preheader.i681

for.cond.preheader.i681:                          ; preds = %do.body21.i
  %call2863.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %cpumask.i.i668) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %451 = load i32, ptr @nr_cpu_ids, align 4
  %cmp64.i = icmp ult i32 %call2863.i, %451
  br i1 %cmp64.i, label %for.body.i682, label %for.end.i688

for.body.i682:                                    ; preds = %if.end34.i, %for.cond.preheader.i681
  %call2866.i = phi i32 [ %call28.i, %if.end34.i ], [ %call2863.i, %for.cond.preheader.i681 ]
  %max_cpu.065.i = phi i32 [ %max_cpu.1.i, %if.end34.i ], [ -1, %for.cond.preheader.i681 ]
  %cmp29.i = icmp slt i32 %max_cpu.065.i, 0
  br i1 %cmp29.i, label %if.end34.i, label %if.else.i

if.else.i:                                        ; preds = %for.body.i682
  %call.i.i683 = tail call i32 @arch_asym_cpu_priority(i32 noundef %call2866.i) #15
  %call1.i.i684 = tail call i32 @arch_asym_cpu_priority(i32 noundef %max_cpu.065.i) #15
  %cmp.i.i685 = icmp sgt i32 %call.i.i683, %call1.i.i684
  %spec.select.i686 = select i1 %cmp.i.i685, i32 %call2866.i, i32 %max_cpu.065.i
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else.i, %for.body.i682
  %max_cpu.1.i = phi i32 [ %call2866.i, %for.body.i682 ], [ %spec.select.i686, %if.else.i ]
  %call28.i = tail call i32 @cpumask_next(i32 noundef %call2866.i, ptr noundef %cpumask.i.i668) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %452 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i687 = icmp ult i32 %call28.i, %452
  br i1 %cmp.i687, label %for.body.i682, label %for.end.i688

for.end.i688:                                     ; preds = %if.end34.i, %for.cond.preheader.i681
  %max_cpu.0.lcssa.i = phi i32 [ -1, %for.cond.preheader.i681 ], [ %max_cpu.1.i, %if.end34.i ]
  %asym_prefer_cpu.i = getelementptr inbounds %struct.sched_group, ptr %sg.0.i, i32 0, i32 4
  %453 = ptrtoint ptr %asym_prefer_cpu.i to i32
  call void @__asan_store4_noabort(i32 %453)
  store i32 %max_cpu.0.lcssa.i, ptr %asym_prefer_cpu.i, align 4
  br label %next.i

next.i:                                           ; preds = %for.end.i688, %do.body21.i
  %454 = ptrtoint ptr %sg.0.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %sg.0.i, align 4
  %456 = ptrtoint ptr %groups.i663 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %groups.i663, align 8
  %cmp38.not.i = icmp eq ptr %455, %457
  br i1 %cmp38.not.i, label %do.end39.i, label %do.body21.i

do.end39.i:                                       ; preds = %next.i
  %sgc.i.i.i = getelementptr inbounds %struct.sched_group, ptr %455, i32 0, i32 3
  %458 = ptrtoint ptr %sgc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %sgc.i.i.i, align 4
  %cpumask.i.i.i689 = getelementptr inbounds %struct.sched_group_capacity, ptr %459, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %460 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i690 = tail call i32 @_find_first_bit_be(ptr noundef %cpumask.i.i.i689, i32 noundef %460) #15
  %cmp41.not.i = icmp eq i32 %call.i.i.i690, %i.2795
  br i1 %cmp41.not.i, label %if.end43.i, label %init_sched_groups_capacity.exit

if.end43.i:                                       ; preds = %do.end39.i
  tail call void @update_group_capacity(ptr noundef nonnull %sd.2792, i32 noundef %i.2795) #15
  br label %init_sched_groups_capacity.exit

init_sched_groups_capacity.exit:                  ; preds = %if.end43.i, %do.end39.i
  %461 = ptrtoint ptr %sd.2792 to i32
  call void @__asan_load4_noabort(i32 %461)
  %sd.2 = load ptr, ptr %sd.2792, align 4
  %tobool146.not = icmp eq ptr %sd.2, null
  br i1 %tobool146.not, label %for.inc151, label %for.body147

for.inc151:                                       ; preds = %init_sched_groups_capacity.exit, %do.body135, %cpumask_test_cpu.exit
  %i.2 = add i32 %i.2795, -1
  %cmp128 = icmp sgt i32 %i.2, -1
  br i1 %cmp128, label %for.body130, label %for.end152

for.end152:                                       ; preds = %for.inc151, %for.cond127.preheader
  %462 = tail call i32 @llvm.read_register.i32(metadata !289) #15
  %and.i.i.i.i.i = and i32 %462, -16384
  %463 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %463, i32 0, i32 1
  %464 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %465, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !314
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %rcu_read_lock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.end152
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_lock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %for.end152
  %call154798 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %cpu_map) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %466 = load i32, ptr @nr_cpu_ids, align 4
  %cmp155799 = icmp ult i32 %call154798, %466
  br i1 %cmp155799, label %do.body158.lr.ph, label %for.end198

do.body158.lr.ph:                                 ; preds = %rcu_read_lock.exit
  %467 = ptrtoint ptr %call1.i289 to i32
  %max_cpu_capacity = getelementptr inbounds %struct.root_domain, ptr %call7.i.i.i.i, i32 0, i32 20
  br label %do.body158

do.body158:                                       ; preds = %if.end196, %do.body158.lr.ph
  %call154800 = phi i32 [ %call154798, %do.body158.lr.ph ], [ %call154, %if.end196 ]
  %arrayidx165 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call154800
  %468 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %arrayidx165, align 4
  %add166 = add i32 %469, ptrtoint (ptr @runqueues to i32)
  %470 = inttoptr i32 %add166 to ptr
  %add176 = add i32 %469, %467
  %471 = inttoptr i32 %add176 to ptr
  %472 = ptrtoint ptr %471 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %471, align 4
  %cpu_capacity_orig = getelementptr inbounds %struct.rq, ptr %470, i32 0, i32 38
  %474 = ptrtoint ptr %cpu_capacity_orig to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %cpu_capacity_orig, align 4
  %476 = ptrtoint ptr %max_cpu_capacity to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load volatile i32, ptr %max_cpu_capacity, align 4
  %cmp181 = icmp ugt i32 %475, %477
  br i1 %cmp181, label %do.body188, label %if.end196

do.body188:                                       ; preds = %do.body158
  %478 = ptrtoint ptr %max_cpu_capacity to i32
  call void @__asan_store4_noabort(i32 %478)
  store volatile i32 %475, ptr %max_cpu_capacity, align 4
  br label %if.end196

if.end196:                                        ; preds = %do.body188, %do.body158
  tail call fastcc void @cpu_attach_domain(ptr noundef %473, ptr noundef nonnull %call7.i.i.i.i, i32 noundef %call154800)
  %call154 = tail call i32 @cpumask_next(i32 noundef %call154800, ptr noundef %cpu_map) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %479 = load i32, ptr @nr_cpu_ids, align 4
  %cmp155 = icmp ult i32 %call154, %479
  br i1 %cmp155, label %do.body158, label %for.end198.loopexit

for.end198.loopexit:                              ; preds = %if.end196
  %480 = inttoptr i32 %add166 to ptr
  br label %for.end198

for.end198:                                       ; preds = %for.end198.loopexit, %rcu_read_lock.exit
  %rq.0.lcssa = phi ptr [ null, %rcu_read_lock.exit ], [ %480, %for.end198.loopexit ]
  tail call fastcc void @rcu_read_unlock()
  br i1 %has_asym.0.off0.lcssa, label %if.then200, label %if.end201

if.then200:                                       ; preds = %for.end198
  tail call void @static_key_slow_inc_cpuslocked(ptr noundef nonnull @sched_asym_cpucapacity) #15
  br label %if.end201

if.end201:                                        ; preds = %if.then200, %for.end198
  %tobool202.not = icmp eq ptr %rq.0.lcssa, null
  br i1 %tobool202.not, label %sw.bb.i, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end201
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @sched_debug_verbose to i32))
  %481 = load i8, ptr @sched_debug_verbose, align 1, !range !309
  %tobool203.not = icmp eq i8 %481, 0
  br i1 %tobool203.not, label %sw.bb.i, label %do.end208

do.end208:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %482 = load i32, ptr @nr_cpu_ids, align 4
  %rd210 = getelementptr inbounds %struct.rq, ptr %rq.0.lcssa, i32 0, i32 35
  %483 = ptrtoint ptr %rd210 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %rd210, align 8
  %max_cpu_capacity211 = getelementptr inbounds %struct.root_domain, ptr %484, i32 0, i32 20
  %485 = ptrtoint ptr %max_cpu_capacity211 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %max_cpu_capacity211, align 4
  %call212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %482, ptr noundef %cpu_map, i32 noundef %486) #17
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %do.end208, %land.lhs.true, %if.end201, %if.end8.i.i, %fail.i, %cleanup.thread
  %ret.0.ph = phi i32 [ -12, %cleanup.thread ], [ 0, %if.end201 ], [ 0, %land.lhs.true ], [ 0, %do.end208 ], [ -12, %fail.i ], [ -12, %if.end8.i.i ]
  %call.i.i.i693 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i.i.i.i, i32 noundef 4) #15
  %487 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load volatile i32, ptr %call7.i.i.i.i, align 8
  %tobool.not.i694 = icmp eq i32 %488, 0
  br i1 %tobool.not.i694, label %if.then.i695, label %sw.bb2.i

if.then.i695:                                     ; preds = %sw.bb.i
  %rcu.i = getelementptr inbounds %struct.root_domain, ptr %call7.i.i.i.i, i32 0, i32 2
  tail call void @free_rootdomain(ptr noundef %rcu.i) #15
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %if.then.i695, %sw.bb.i, %if.then2.i.i, %if.end5.i
  %ret.0752 = phi i32 [ %ret.0.ph, %if.then.i695 ], [ %ret.0.ph, %sw.bb.i ], [ -12, %if.end5.i ], [ -12, %if.then2.i.i ]
  tail call void @free_percpu(ptr noundef nonnull %call1.i289) #15
  br label %sw.bb3.i

sw.bb3.i:                                         ; preds = %sw.bb2.i, %if.end.i, %if.end52.i.i, %if.end36.i.i, %if.end29.i.i, %if.end5.i.i.i.i, %if.end12.i.i, %if.end7.i.i, %if.end.i.i287, %for.body.i.i
  %ret.0751 = phi i32 [ %ret.0752, %sw.bb2.i ], [ -12, %if.end.i ], [ -12, %if.end52.i.i ], [ -12, %if.end36.i.i ], [ -12, %if.end29.i.i ], [ -12, %if.end5.i.i.i.i ], [ -12, %for.body.i.i ], [ -12, %if.end.i.i287 ], [ -12, %if.end7.i.i ], [ -12, %if.end12.i.i ]
  %489 = load ptr, ptr @sched_domain_topology, align 4
  %490 = ptrtoint ptr %489 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %489, align 4
  %tobool.not102.i.i = icmp eq ptr %491, null
  br i1 %tobool.not102.i.i, label %__free_domain_allocs.exit, label %for.body.i.i697

for.body.i.i697:                                  ; preds = %for.end.i.i, %sw.bb3.i
  %tl.0103.i.i = phi ptr [ %incdec.ptr.i.i718, %for.end.i.i ], [ %489, %sw.bb3.i ]
  %data.i.i696 = getelementptr inbounds %struct.sched_domain_topology_level, ptr %tl.0103.i.i, i32 0, i32 4
  %call99.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %cpu_map) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %492 = load i32, ptr @nr_cpu_ids, align 4
  %cmp100.i.i = icmp ult i32 %call99.i.i, %492
  br i1 %cmp100.i.i, label %for.body2.lr.ph.i.i, label %for.end.i.i

for.body2.lr.ph.i.i:                              ; preds = %for.body.i.i697
  %sds.i.i698 = getelementptr inbounds %struct.sched_domain_topology_level, ptr %tl.0103.i.i, i32 0, i32 4, i32 1
  %sg.i.i699 = getelementptr inbounds %struct.sched_domain_topology_level, ptr %tl.0103.i.i, i32 0, i32 4, i32 2
  %sgc.i.i700 = getelementptr inbounds %struct.sched_domain_topology_level, ptr %tl.0103.i.i, i32 0, i32 4, i32 3
  br label %for.body2.i.i

for.body2.i.i:                                    ; preds = %if.end59.i.i, %for.body2.lr.ph.i.i
  %call101.i.i = phi i32 [ %call99.i.i, %for.body2.lr.ph.i.i ], [ %call.i.i716, %if.end59.i.i ]
  %493 = ptrtoint ptr %data.i.i696 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %data.i.i696, align 4
  %tobool4.not.i.i701 = icmp eq ptr %494, null
  br i1 %tobool4.not.i.i701, label %if.end20.i.i, label %do.body.i.i705

do.body.i.i705:                                   ; preds = %for.body2.i.i
  %495 = ptrtoint ptr %494 to i32
  %arrayidx.i.i702 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call101.i.i
  %496 = ptrtoint ptr %arrayidx.i.i702 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %arrayidx.i.i702, align 4
  %add.i.i703 = add i32 %497, %495
  %498 = inttoptr i32 %add.i.i703 to ptr
  %499 = ptrtoint ptr %498 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %498, align 4
  %tobool7.not.i.i704 = icmp eq ptr %500, null
  br i1 %tobool7.not.i.i704, label %do.body10.i.i, label %land.lhs.true.i.i709

land.lhs.true.i.i709:                             ; preds = %do.body.i.i705
  %flags.i.i706 = getelementptr inbounds %struct.sched_domain, ptr %500, i32 0, i32 9
  %501 = ptrtoint ptr %flags.i.i706 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %flags.i.i706, align 4
  %and.i.i707 = and i32 %502, 4096
  %tobool8.not.i.i708 = icmp eq i32 %and.i.i707, 0
  br i1 %tobool8.not.i.i708, label %do.body10.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true.i.i709
  %groups.i.i = getelementptr inbounds %struct.sched_domain, ptr %500, i32 0, i32 2
  %503 = ptrtoint ptr %groups.i.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %groups.i.i, align 8
  %tobool.not.i.i.i710 = icmp eq ptr %504, null
  br i1 %tobool.not.i.i.i710, label %do.body10.i.i, label %do.body.i.i.i711

do.body.i.i.i711:                                 ; preds = %if.end8.i.i.i713, %if.then9.i.i
  %sg.addr.0.i.i.i = phi ptr [ %506, %if.end8.i.i.i713 ], [ %504, %if.then9.i.i ]
  %505 = ptrtoint ptr %sg.addr.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %sg.addr.0.i.i.i, align 4
  %ref5.i.i.i = getelementptr inbounds %struct.sched_group, ptr %sg.addr.0.i.i.i, i32 0, i32 1
  %call.i.i17.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref5.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !302
  tail call void @llvm.prefetch.p0(ptr %ref5.i.i.i, i32 1, i32 3, i32 1) #15
  %507 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref5.i.i.i, ptr %ref5.i.i.i, i32 1, ptr elementtype(i32) %ref5.i.i.i) #15, !srcloc !303
  %asmresult.i.i.i.i.i18.i.i.i = extractvalue { i32, i32 } %507, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !304
  %cmp.i.i19.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i18.i.i.i, 0
  br i1 %cmp.i.i19.i.i.i, label %if.then7.i.i.i, label %if.end8.i.i.i713

if.then7.i.i.i:                                   ; preds = %do.body.i.i.i711
  tail call void @kfree(ptr noundef %sg.addr.0.i.i.i) #15
  br label %if.end8.i.i.i713

if.end8.i.i.i713:                                 ; preds = %if.then7.i.i.i, %do.body.i.i.i711
  %cmp.not.i.i.i712 = icmp eq ptr %506, %504
  br i1 %cmp.not.i.i.i712, label %do.body10.i.i, label %do.body.i.i.i711

do.body10.i.i:                                    ; preds = %if.end8.i.i.i713, %if.then9.i.i, %land.lhs.true.i.i709, %do.body.i.i705
  %508 = ptrtoint ptr %data.i.i696 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %data.i.i696, align 4
  %510 = ptrtoint ptr %509 to i32
  %511 = ptrtoint ptr %arrayidx.i.i702 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %arrayidx.i.i702, align 4
  %add19.i.i = add i32 %512, %510
  %513 = inttoptr i32 %add19.i.i to ptr
  %514 = ptrtoint ptr %513 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %513, align 4
  tail call void @kfree(ptr noundef %515) #15
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %do.body10.i.i, %for.body2.i.i
  %516 = ptrtoint ptr %sds.i.i698 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %sds.i.i698, align 4
  %tobool21.not.i.i = icmp eq ptr %517, null
  br i1 %tobool21.not.i.i, label %if.end33.i.i, label %do.body23.i.i

do.body23.i.i:                                    ; preds = %if.end20.i.i
  %518 = ptrtoint ptr %517 to i32
  %arrayidx31.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call101.i.i
  %519 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %arrayidx31.i.i, align 4
  %add32.i.i714 = add i32 %520, %518
  %521 = inttoptr i32 %add32.i.i714 to ptr
  %522 = ptrtoint ptr %521 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %521, align 4
  tail call void @kfree(ptr noundef %523) #15
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %do.body23.i.i, %if.end20.i.i
  %524 = ptrtoint ptr %sg.i.i699 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %sg.i.i699, align 4
  %tobool34.not.i.i715 = icmp eq ptr %525, null
  br i1 %tobool34.not.i.i715, label %if.end46.i.i, label %do.body36.i.i

do.body36.i.i:                                    ; preds = %if.end33.i.i
  %526 = ptrtoint ptr %525 to i32
  %arrayidx44.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call101.i.i
  %527 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %arrayidx44.i.i, align 4
  %add45.i.i = add i32 %528, %526
  %529 = inttoptr i32 %add45.i.i to ptr
  %530 = ptrtoint ptr %529 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %529, align 4
  tail call void @kfree(ptr noundef %531) #15
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %do.body36.i.i, %if.end33.i.i
  %532 = ptrtoint ptr %sgc.i.i700 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %sgc.i.i700, align 4
  %tobool47.not.i.i = icmp eq ptr %533, null
  br i1 %tobool47.not.i.i, label %if.end59.i.i, label %do.body49.i.i

do.body49.i.i:                                    ; preds = %if.end46.i.i
  %534 = ptrtoint ptr %533 to i32
  %arrayidx57.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call101.i.i
  %535 = ptrtoint ptr %arrayidx57.i.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %arrayidx57.i.i, align 4
  %add58.i.i = add i32 %536, %534
  %537 = inttoptr i32 %add58.i.i to ptr
  %538 = ptrtoint ptr %537 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %537, align 4
  tail call void @kfree(ptr noundef %539) #15
  br label %if.end59.i.i

if.end59.i.i:                                     ; preds = %do.body49.i.i, %if.end46.i.i
  %call.i.i716 = tail call i32 @cpumask_next(i32 noundef %call101.i.i, ptr noundef %cpu_map) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %540 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i717 = icmp ult i32 %call.i.i716, %540
  br i1 %cmp.i.i717, label %for.body2.i.i, label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end59.i.i, %for.body.i.i697
  %541 = ptrtoint ptr %data.i.i696 to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %data.i.i696, align 4
  tail call void @free_percpu(ptr noundef %542) #15
  %543 = ptrtoint ptr %data.i.i696 to i32
  call void @__asan_store4_noabort(i32 %543)
  store ptr null, ptr %data.i.i696, align 4
  %sds62.i.i = getelementptr inbounds %struct.sched_domain_topology_level, ptr %tl.0103.i.i, i32 0, i32 4, i32 1
  %544 = ptrtoint ptr %sds62.i.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %sds62.i.i, align 4
  tail call void @free_percpu(ptr noundef %545) #15
  %546 = ptrtoint ptr %sds62.i.i to i32
  call void @__asan_store4_noabort(i32 %546)
  store ptr null, ptr %sds62.i.i, align 4
  %sg64.i.i = getelementptr inbounds %struct.sched_domain_topology_level, ptr %tl.0103.i.i, i32 0, i32 4, i32 2
  %547 = ptrtoint ptr %sg64.i.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %sg64.i.i, align 4
  tail call void @free_percpu(ptr noundef %548) #15
  %549 = ptrtoint ptr %sg64.i.i to i32
  call void @__asan_store4_noabort(i32 %549)
  store ptr null, ptr %sg64.i.i, align 4
  %sgc66.i.i = getelementptr inbounds %struct.sched_domain_topology_level, ptr %tl.0103.i.i, i32 0, i32 4, i32 3
  %550 = ptrtoint ptr %sgc66.i.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %sgc66.i.i, align 4
  tail call void @free_percpu(ptr noundef %551) #15
  %552 = ptrtoint ptr %sgc66.i.i to i32
  call void @__asan_store4_noabort(i32 %552)
  store ptr null, ptr %sgc66.i.i, align 4
  %incdec.ptr.i.i718 = getelementptr %struct.sched_domain_topology_level, ptr %tl.0103.i.i, i32 1
  %553 = ptrtoint ptr %incdec.ptr.i.i718 to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %incdec.ptr.i.i718, align 4
  %tobool.not.i.i719 = icmp eq ptr %554, null
  br i1 %tobool.not.i.i719, label %__free_domain_allocs.exit, label %for.body.i.i697

__free_domain_allocs.exit:                        ; preds = %for.end.i.i, %sw.bb3.i, %error.thread755
  %ret.0754 = phi i32 [ %ret.0751, %sw.bb3.i ], [ -12, %error.thread755 ], [ %ret.0751, %for.end.i.i ]
  ret i32 %ret.0754
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @partition_sched_domains_locked(i32 noundef %ndoms_new, ptr noundef %doms_new, ptr noundef %dattr_new) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tmp.i303 = alloca %struct.sched_domain_attr, align 4
  %tmp.i = alloca %struct.sched_domain_attr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @sched_domains_mutex, i32 0, i32 5), i32 noundef -1) #15
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %if.end, !prof !307

do.end:                                           ; preds = %land.rhs
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 2428, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs, %entry
  %call24 = tail call i32 @topology_update_cpu_topology()
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end
  tail call fastcc void @asym_cpu_capacity_scan()
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end
  %tobool28.not = icmp eq ptr %doms_new, null
  br i1 %tobool28.not, label %if.then29, label %if.end88

if.then29:                                        ; preds = %if.end27
  %tobool30.not = icmp eq ptr %dattr_new, null
  br i1 %tobool30.not, label %if.end74, label %land.rhs36

land.rhs36:                                       ; preds = %if.then29
  %.b252 = load i1, ptr @partition_sched_domains_locked.__already_done, align 1
  br i1 %.b252, label %if.end74, label %if.then47, !prof !301

if.then47:                                        ; preds = %land.rhs36
  store i1 true, ptr @partition_sched_domains_locked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 2437, i32 noundef 9, ptr noundef null) #15
  br label %if.end74

if.end74:                                         ; preds = %if.then47, %land.rhs36, %if.then29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 4) #19
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end88, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end74
  %call1.i = tail call zeroext i1 @alloc_cpumask_var(ptr noundef nonnull %call7.i.i.i, i32 noundef 3264) #15
  br i1 %call1.i, label %for.inc.i, label %free_sched_domains.exit.i

free_sched_domains.exit.i:                        ; preds = %for.body.i.preheader
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #15
  br label %if.end88

for.inc.i:                                        ; preds = %for.body.i.preheader
  %2 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call7.i.i.i, align 8
  %call85 = tail call ptr @housekeeping_cpumask(i32 noundef 32) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @__bitmap_and(ptr noundef %3, ptr noundef nonnull @__cpu_active_mask, ptr noundef %call85, i32 noundef %4) #15
  br label %if.end88

if.end88:                                         ; preds = %for.inc.i, %free_sched_domains.exit.i, %if.end74, %if.end27
  %n.0 = phi i32 [ %ndoms_new, %if.end27 ], [ 1, %for.inc.i ], [ 0, %free_sched_domains.exit.i ], [ 0, %if.end74 ]
  %doms_new.addr.0 = phi ptr [ %doms_new, %if.end27 ], [ %call7.i.i.i, %for.inc.i ], [ null, %free_sched_domains.exit.i ], [ null, %if.end74 ]
  %5 = load i32, ptr @ndoms_cur, align 4
  %cmp89358 = icmp sgt i32 %5, 0
  br i1 %cmp89358, label %for.cond90.preheader.lr.ph, label %for.end117

for.cond90.preheader.lr.ph:                       ; preds = %if.end88
  %tobool25.not.not = xor i1 %tobool25.not, true
  %cmp91354 = icmp slt i32 %n.0, 1
  %brmerge355 = select i1 %cmp91354, i1 true, i1 %tobool25.not.not
  %tobool.not.i262 = icmp eq ptr %dattr_new, null
  br label %for.cond90.preheader

for.cond90.preheader:                             ; preds = %for.inc115, %for.cond90.preheader.lr.ph
  %i.0359 = phi i32 [ 0, %for.cond90.preheader.lr.ph ], [ %inc116, %for.inc115 ]
  br i1 %brmerge355, label %for.end, label %for.body97

for.body97:                                       ; preds = %for.inc, %for.cond90.preheader
  %j.0356 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond90.preheader ]
  %6 = load ptr, ptr @doms_cur, align 4
  %arrayidx98 = getelementptr ptr, ptr %6, i32 %i.0359
  %7 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx98, align 4
  %arrayidx99 = getelementptr ptr, ptr %doms_new.addr.0, i32 %j.0356
  %9 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx99, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %call13.i.i = tail call i32 @__bitmap_equal(ptr noundef %8, ptr noundef %10, i32 noundef %11) #15
  %tobool.i.not = icmp eq i32 %call13.i.i, 0
  br i1 %tobool.i.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body97
  %12 = load ptr, ptr @dattr_cur, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #15
  %tobool1.not.i = icmp eq ptr %12, null
  %or.cond.i = and i1 %tobool.not.i262, %tobool1.not.i
  br i1 %or.cond.i, label %dattrs_equal.exit.thread, label %dattrs_equal.exit

dattrs_equal.exit.thread:                         ; preds = %land.lhs.true
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #15
  br label %if.then103

dattrs_equal.exit:                                ; preds = %land.lhs.true
  %13 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %tmp.i, align 4
  %add.ptr.i = getelementptr %struct.sched_domain_attr, ptr %12, i32 %i.0359
  %spec.select.i = select i1 %tobool1.not.i, ptr %tmp.i, ptr %add.ptr.i
  %add.ptr5.i = getelementptr %struct.sched_domain_attr, ptr %dattr_new, i32 %j.0356
  %cond8.i = select i1 %tobool.not.i262, ptr %tmp.i, ptr %add.ptr5.i
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(4) %spec.select.i, ptr noundef dereferenceable(4) %cond8.i, i32 4) #21
  %tobool9.not.i.not = icmp eq i32 %bcmp.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #15
  br i1 %tobool9.not.i.not, label %if.then103, label %for.inc

if.then103:                                       ; preds = %dattrs_equal.exit, %dattrs_equal.exit.thread
  %14 = load ptr, ptr @doms_cur, align 4
  %arrayidx109 = getelementptr ptr, ptr %14, i32 %i.0359
  %15 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx109, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %call.i264 = tail call i32 @_find_first_bit_be(ptr noundef %16, i32 noundef %17) #15
  %arrayidx111 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call.i264
  %18 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx111, align 4
  %add = add i32 %19, ptrtoint (ptr @runqueues to i32)
  %20 = inttoptr i32 %add to ptr
  %rd112 = getelementptr inbounds %struct.rq, ptr %20, i32 0, i32 35
  %21 = ptrtoint ptr %rd112 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rd112, align 8
  tail call void @dl_clear_root_domain(ptr noundef %22) #15
  br label %for.inc115

for.inc:                                          ; preds = %dattrs_equal.exit, %for.body97
  %inc = add nuw nsw i32 %j.0356, 1
  %cmp91.not = icmp slt i32 %inc, %n.0
  br i1 %cmp91.not, label %for.body97, label %for.end

for.end:                                          ; preds = %for.inc, %for.cond90.preheader
  %23 = load ptr, ptr @doms_cur, align 4
  %arrayidx114 = getelementptr ptr, ptr %23, i32 %i.0359
  %24 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx114, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  %call.i11.i = tail call i32 @_find_first_bit_be(ptr noundef %25, i32 noundef %26) #15
  %arrayidx.i265 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call.i11.i
  %27 = ptrtoint ptr %arrayidx.i265 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i265, align 4
  %add.i = add i32 %28, ptrtoint (ptr @sd_asym_cpucapacity to i32)
  %29 = inttoptr i32 %add.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %29, align 4
  %tobool.not.i266 = icmp eq ptr %31, null
  br i1 %tobool.not.i266, label %if.end.i268, label %if.then.i

if.then.i:                                        ; preds = %for.end
  tail call void @static_key_slow_dec_cpuslocked(ptr noundef nonnull @sched_asym_cpucapacity) #15
  br label %if.end.i268

if.end.i268:                                      ; preds = %if.then.i, %for.end
  %32 = tail call i32 @llvm.read_register.i32(metadata !289) #15
  %and.i.i.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %35, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !314
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i267 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i267, label %rcu_read_lock.exit.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i268
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not.i.i269 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i269, label %rcu_read_lock.exit.i, label %land.lhs.true2.i.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %rcu_read_lock.exit.i, label %if.then.i.i270

if.then.i.i270:                                   ; preds = %land.lhs.true2.i.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #15
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i270, %land.lhs.true2.i.i, %land.lhs.true.i.i, %if.end.i268
  %call721.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %25) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %36 = load i32, ptr @nr_cpu_ids, align 4
  %cmp22.i = icmp ult i32 %call721.i, %36
  br i1 %cmp22.i, label %for.body.i271, label %for.end.i

for.body.i271:                                    ; preds = %for.body.i271, %rcu_read_lock.exit.i
  %call723.i = phi i32 [ %call7.i, %for.body.i271 ], [ %call721.i, %rcu_read_lock.exit.i ]
  tail call fastcc void @cpu_attach_domain(ptr noundef null, ptr noundef nonnull @def_root_domain, i32 noundef %call723.i) #15
  %call7.i = tail call i32 @cpumask_next(i32 noundef %call723.i, ptr noundef %25) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %37 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call7.i, %37
  br i1 %cmp.i, label %for.body.i271, label %for.end.i

for.end.i:                                        ; preds = %for.body.i271, %rcu_read_lock.exit.i
  %call.i12.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i12.i, label %detach_destroy_domains.exit, label %land.lhs.true.i15.i

land.lhs.true.i15.i:                              ; preds = %for.end.i
  %call1.i13.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not.i14.i = icmp eq i32 %call1.i13.i, 0
  br i1 %tobool.not.i14.i, label %detach_destroy_domains.exit, label %land.lhs.true2.i17.i

land.lhs.true2.i17.i:                             ; preds = %land.lhs.true.i15.i
  %.b4.i16.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i16.i, label %detach_destroy_domains.exit, label %if.then.i18.i

if.then.i18.i:                                    ; preds = %land.lhs.true2.i17.i
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.110) #15
  br label %detach_destroy_domains.exit

detach_destroy_domains.exit:                      ; preds = %if.then.i18.i, %land.lhs.true2.i17.i, %land.lhs.true.i15.i, %for.end.i
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !315
  %38 = tail call i32 @llvm.read_register.i32(metadata !289) #15
  %and.i.i.i.i.i19.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i19.i to ptr
  %preempt_count.i.i.i.i20.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i20.i, align 4
  %sub.i.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i20.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %for.inc115

for.inc115:                                       ; preds = %detach_destroy_domains.exit, %if.then103
  %inc116 = add nuw nsw i32 %i.0359, 1
  %42 = load i32, ptr @ndoms_cur, align 4
  %cmp89 = icmp slt i32 %inc116, %42
  br i1 %cmp89, label %for.cond90.preheader, label %for.end117

for.end117:                                       ; preds = %for.inc115, %if.end88
  %.lcssa = phi i32 [ %5, %if.end88 ], [ %42, %for.inc115 ]
  %tobool118.not = icmp eq ptr %doms_new.addr.0, null
  br i1 %tobool118.not, label %if.then119, label %if.end123

if.then119:                                       ; preds = %for.end117
  %43 = load ptr, ptr @fallback_doms, align 4
  %call121 = tail call ptr @housekeeping_cpumask(i32 noundef 32) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %44 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i278 = tail call i32 @__bitmap_and(ptr noundef %43, ptr noundef nonnull @__cpu_active_mask, ptr noundef %call121, i32 noundef %44) #15
  br label %if.end123

if.end123:                                        ; preds = %if.then119, %for.end117
  %n.1 = phi i32 [ %.lcssa, %for.end117 ], [ 0, %if.then119 ]
  %doms_new.addr.1 = phi ptr [ %doms_new.addr.0, %for.end117 ], [ @fallback_doms, %if.then119 ]
  %cmp125367 = icmp sgt i32 %ndoms_new, 0
  br i1 %cmp125367, label %for.cond127.preheader.lr.ph, label %land.lhs.true.i

for.cond127.preheader.lr.ph:                      ; preds = %if.end123
  %tobool25.not.not253 = xor i1 %tobool25.not, true
  %cmp128363 = icmp slt i32 %n.1, 1
  %brmerge254364 = select i1 %cmp128363, i1 true, i1 %tobool25.not.not253
  %tobool1.not.i305 = icmp eq ptr %dattr_new, null
  br label %for.cond127.preheader

for.cond127.preheader:                            ; preds = %for.inc149, %for.cond127.preheader.lr.ph
  %i.1368 = phi i32 [ 0, %for.cond127.preheader.lr.ph ], [ %inc150, %for.inc149 ]
  br i1 %brmerge254364, label %for.end145, label %for.body134.lr.ph

for.body134.lr.ph:                                ; preds = %for.cond127.preheader
  %arrayidx135 = getelementptr ptr, ptr %doms_new.addr.1, i32 %i.1368
  %add.ptr.i307 = getelementptr %struct.sched_domain_attr, ptr %dattr_new, i32 %i.1368
  %spec.select.i308 = select i1 %tobool1.not.i305, ptr %tmp.i303, ptr %add.ptr.i307
  br label %for.body134

for.cond152.preheader:                            ; preds = %for.inc149
  br i1 %cmp125367, label %for.cond155.preheader.lr.ph, label %land.lhs.true.i

for.cond155.preheader.lr.ph:                      ; preds = %for.cond152.preheader
  %cmp156371 = icmp sgt i32 %n.1, 0
  br label %for.cond155.preheader.outer

for.cond155.preheader.outer:                      ; preds = %for.inc191.thread, %for.cond155.preheader.lr.ph
  %has_eas.0.off0378.ph = phi i1 [ true, %for.inc191.thread ], [ false, %for.cond155.preheader.lr.ph ]
  %i.2375.ph = phi i32 [ %inc192385, %for.inc191.thread ], [ 0, %for.cond155.preheader.lr.ph ]
  br label %for.cond155.preheader

for.body134:                                      ; preds = %for.inc143, %for.body134.lr.ph
  %j.1365 = phi i32 [ 0, %for.body134.lr.ph ], [ %inc144, %for.inc143 ]
  %45 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx135, align 4
  %47 = load ptr, ptr @doms_cur, align 4
  %arrayidx136 = getelementptr ptr, ptr %47, i32 %j.1365
  %48 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx136, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %50 = load i32, ptr @nr_cpu_ids, align 4
  %call13.i.i298 = tail call i32 @__bitmap_equal(ptr noundef %46, ptr noundef %49, i32 noundef %50) #15
  %tobool.i301.not = icmp eq i32 %call13.i.i298, 0
  br i1 %tobool.i301.not, label %for.inc143, label %land.lhs.true138

land.lhs.true138:                                 ; preds = %for.body134
  %51 = load ptr, ptr @dattr_cur, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i303) #15
  %tobool.not.i304 = icmp eq ptr %51, null
  %or.cond.i306 = and i1 %tobool1.not.i305, %tobool.not.i304
  br i1 %or.cond.i306, label %dattrs_equal.exit316.thread, label %dattrs_equal.exit316

dattrs_equal.exit316.thread:                      ; preds = %land.lhs.true138
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i303) #15
  br label %for.inc149

dattrs_equal.exit316:                             ; preds = %land.lhs.true138
  %52 = ptrtoint ptr %tmp.i303 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %tmp.i303, align 4
  %add.ptr5.i309 = getelementptr %struct.sched_domain_attr, ptr %51, i32 %j.1365
  %cond8.i310 = select i1 %tobool.not.i304, ptr %tmp.i303, ptr %add.ptr5.i309
  %bcmp.i311 = call i32 @bcmp(ptr noundef dereferenceable(4) %spec.select.i308, ptr noundef dereferenceable(4) %cond8.i310, i32 4) #21
  %tobool9.not.i312.not = icmp eq i32 %bcmp.i311, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i303) #15
  br i1 %tobool9.not.i312.not, label %for.inc149, label %for.inc143

for.inc143:                                       ; preds = %dattrs_equal.exit316, %for.body134
  %inc144 = add nuw nsw i32 %j.1365, 1
  %cmp128.not = icmp slt i32 %inc144, %n.1
  br i1 %cmp128.not, label %for.body134, label %for.end145

for.end145:                                       ; preds = %for.inc143, %for.cond127.preheader
  %arrayidx146 = getelementptr ptr, ptr %doms_new.addr.1, i32 %i.1368
  %53 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx146, align 4
  %add.ptr = getelementptr %struct.sched_domain_attr, ptr %dattr_new, i32 %i.1368
  %spec.select = select i1 %tobool1.not.i305, ptr null, ptr %add.ptr
  %call148 = tail call fastcc i32 @build_sched_domains(ptr noundef %54, ptr noundef %spec.select)
  br label %for.inc149

for.inc149:                                       ; preds = %for.end145, %dattrs_equal.exit316, %dattrs_equal.exit316.thread
  %inc150 = add nuw nsw i32 %i.1368, 1
  %exitcond.not = icmp eq i32 %inc150, %ndoms_new
  br i1 %exitcond.not, label %for.cond152.preheader, label %for.cond127.preheader

for.cond155.preheader:                            ; preds = %for.inc191, %for.cond155.preheader.outer
  %i.2375 = phi i32 [ %inc192, %for.inc191 ], [ %i.2375.ph, %for.cond155.preheader.outer ]
  br i1 %cmp156371, label %land.rhs157.lr.ph, label %for.inc191

land.rhs157.lr.ph:                                ; preds = %for.cond155.preheader
  %arrayidx163 = getelementptr ptr, ptr %doms_new.addr.1, i32 %i.2375
  br label %land.rhs157

land.rhs157:                                      ; preds = %for.inc182, %land.rhs157.lr.ph
  %j.2372 = phi i32 [ 0, %land.rhs157.lr.ph ], [ %inc183, %for.inc182 ]
  %55 = load i8, ptr @sched_energy_update, align 1, !range !309
  %tobool158.not = icmp eq i8 %55, 0
  br i1 %tobool158.not, label %for.body162, label %for.inc191

for.body162:                                      ; preds = %land.rhs157
  %56 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx163, align 4
  %58 = load ptr, ptr @doms_cur, align 4
  %arrayidx164 = getelementptr ptr, ptr %58, i32 %j.2372
  %59 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx164, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %61 = load i32, ptr @nr_cpu_ids, align 4
  %call13.i.i334 = tail call i32 @__bitmap_equal(ptr noundef %57, ptr noundef %60, i32 noundef %61) #15
  %tobool.i337.not = icmp eq i32 %call13.i.i334, 0
  br i1 %tobool.i337.not, label %for.inc182, label %do.body167

do.body167:                                       ; preds = %for.body162
  %62 = load ptr, ptr @doms_cur, align 4
  %arrayidx174 = getelementptr ptr, ptr %62, i32 %j.2372
  %63 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx174, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %65 = load i32, ptr @nr_cpu_ids, align 4
  %call.i339 = tail call i32 @_find_first_bit_be(ptr noundef %64, i32 noundef %65) #15
  %arrayidx176 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call.i339
  %66 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx176, align 4
  %add177 = add i32 %67, ptrtoint (ptr @runqueues to i32)
  %68 = inttoptr i32 %add177 to ptr
  %rd178 = getelementptr inbounds %struct.rq, ptr %68, i32 0, i32 35
  %69 = ptrtoint ptr %rd178 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rd178, align 8
  %pd = getelementptr inbounds %struct.root_domain, ptr %70, i32 0, i32 21
  %71 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pd, align 8
  %tobool179.not = icmp eq ptr %72, null
  br i1 %tobool179.not, label %for.inc182, label %for.inc191.thread

for.inc182:                                       ; preds = %do.body167, %for.body162
  %inc183 = add nuw nsw i32 %j.2372, 1
  %exitcond382.not = icmp eq i32 %inc183, %n.1
  br i1 %exitcond382.not, label %for.inc191, label %land.rhs157

for.inc191:                                       ; preds = %for.inc182, %land.rhs157, %for.cond155.preheader
  %arrayidx185 = getelementptr ptr, ptr %doms_new.addr.1, i32 %i.2375
  %73 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx185, align 4
  tail call fastcc void @build_perf_domains(ptr noundef %74)
  %inc192 = add nuw nsw i32 %i.2375, 1
  %exitcond383.not = icmp eq i32 %inc192, %ndoms_new
  br i1 %exitcond383.not, label %for.end193, label %for.cond155.preheader

for.inc191.thread:                                ; preds = %do.body167
  %inc192385 = add nuw nsw i32 %i.2375, 1
  %exitcond383.not386 = icmp eq i32 %inc192385, %ndoms_new
  br i1 %exitcond383.not386, label %land.lhs.true10.critedge.i, label %for.cond155.preheader.outer

for.end193:                                       ; preds = %for.inc191
  br i1 %has_eas.0.off0378.ph, label %land.lhs.true10.critedge.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.end193, %for.cond152.preheader, %if.end123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_energy_present, ptr blockaddress(@partition_sched_domains_locked, %if.then.i340)) #15
          to label %sched_energy_set.exit [label %if.then.i340], !srcloc !299

if.then.i340:                                     ; preds = %land.lhs.true.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @sched_debug_verbose to i32))
  %75 = load i8, ptr @sched_debug_verbose, align 1, !range !309
  %tobool.i.not.i = icmp eq i8 %75, 0
  br i1 %tobool.i.not.i, label %if.end.i341, label %do.end.i

do.end.i:                                         ; preds = %if.then.i340
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120) #17
  br label %if.end.i341

if.end.i341:                                      ; preds = %do.end.i, %if.then.i340
  tail call void @static_key_disable_cpuslocked(ptr noundef nonnull @sched_energy_present) #15
  br label %sched_energy_set.exit

land.lhs.true10.critedge.i:                       ; preds = %for.end193, %for.inc191.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_energy_present, ptr blockaddress(@partition_sched_domains_locked, %sched_energy_set.exit)) #15
          to label %if.then22.i [label %sched_energy_set.exit], !srcloc !299

if.then22.i:                                      ; preds = %land.lhs.true10.critedge.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @sched_debug_verbose to i32))
  %76 = load i8, ptr @sched_debug_verbose, align 1, !range !309
  %tobool.i36.not.i = icmp eq i8 %76, 0
  br i1 %tobool.i36.not.i, label %if.end29.i, label %do.end26.i

do.end26.i:                                       ; preds = %if.then22.i
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.120) #17
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.end26.i, %if.then22.i
  tail call void @static_key_enable_cpuslocked(ptr noundef nonnull @sched_energy_present) #15
  br label %sched_energy_set.exit

sched_energy_set.exit:                            ; preds = %if.end29.i, %land.lhs.true10.critedge.i, %if.end.i341, %land.lhs.true.i
  %77 = load ptr, ptr @doms_cur, align 4
  %cmp195.not = icmp eq ptr %77, @fallback_doms
  br i1 %cmp195.not, label %if.end198, label %if.then197

if.then197:                                       ; preds = %sched_energy_set.exit
  %78 = load i32, ptr @ndoms_cur, align 4
  %cmp4.not.i = icmp eq i32 %78, 0
  br i1 %cmp4.not.i, label %free_sched_domains.exit, label %for.body.i345

for.body.i345:                                    ; preds = %for.body.i345, %if.then197
  %i.05.i = phi i32 [ %inc.i343, %for.body.i345 ], [ 0, %if.then197 ]
  %arrayidx.i342 = getelementptr ptr, ptr %77, i32 %i.05.i
  %79 = ptrtoint ptr %arrayidx.i342 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i342, align 4
  tail call void @free_cpumask_var(ptr noundef %80) #15
  %inc.i343 = add nuw i32 %i.05.i, 1
  %exitcond.not.i344 = icmp eq i32 %inc.i343, %78
  br i1 %exitcond.not.i344, label %free_sched_domains.exit, label %for.body.i345

free_sched_domains.exit:                          ; preds = %for.body.i345, %if.then197
  tail call void @kfree(ptr noundef %77) #15
  br label %if.end198

if.end198:                                        ; preds = %free_sched_domains.exit, %sched_energy_set.exit
  %81 = load ptr, ptr @dattr_cur, align 4
  tail call void @kfree(ptr noundef %81) #15
  store ptr %doms_new.addr.1, ptr @doms_cur, align 4
  store ptr %dattr_new, ptr @dattr_cur, align 4
  store i32 %ndoms_new, ptr @ndoms_cur, align 4
  tail call void @update_sched_domain_debugfs() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dl_clear_root_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @build_perf_domains(ptr noundef %cpu_map) unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef %cpu_map, i32 noundef %0) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %cpu_map, i32 noundef %1) #15
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @runqueues to i32)
  %4 = inttoptr i32 %add to ptr
  %rd4 = getelementptr inbounds %struct.rq, ptr %4, i32 0, i32 35
  %5 = ptrtoint ptr %rd4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rd4, align 8
  %7 = load i32, ptr @sysctl_sched_energy_aware, align 4
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %free, label %do.body5

do.body5:                                         ; preds = %entry
  %add13 = add i32 %3, ptrtoint (ptr @sd_asym_cpucapacity to i32)
  %8 = inttoptr i32 %add13 to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool14.not = icmp eq ptr %10, null
  br i1 %tobool14.not, label %if.then15, label %if.end24

if.then15:                                        ; preds = %do.body5
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @sched_debug_verbose to i32))
  %11 = load i8, ptr @sched_debug_verbose, align 1, !range !309
  %tobool.i.not = icmp eq i8 %11, 0
  br i1 %tobool.i.not, label %free, label %free.sink.split

if.end24:                                         ; preds = %do.body5
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @sched_smt_present, i32 1), ptr blockaddress(@build_perf_domains, %if.end34)) #15
          to label %free.sink.split [label %if.end34], !srcloc !316

if.end34:                                         ; preds = %if.end24
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @sched_debug_verbose to i32))
  %12 = load i8, ptr @sched_debug_verbose, align 1, !range !309
  %tobool.i2.not = icmp eq i8 %12, 0
  br i1 %tobool.i2.not, label %free, label %free.sink.split

free.sink.split:                                  ; preds = %if.end34, %if.end24, %if.then15
  %.str.117.sink = phi ptr [ @.str.111, %if.then15 ], [ @.str.114, %if.end24 ], [ @.str.117, %if.end34 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.117.sink, i32 noundef %13, ptr noundef %cpu_map) #17
  br label %free

free:                                             ; preds = %free.sink.split, %if.end34, %if.then15, %entry
  %pd45 = getelementptr inbounds %struct.root_domain, ptr %6, i32 0, i32 21
  %14 = ptrtoint ptr %pd45 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pd45, align 8
  store volatile ptr null, ptr %pd45, align 8
  %tobool83.not = icmp eq ptr %15, null
  br i1 %tobool83.not, label %if.end85, label %if.then84

if.then84:                                        ; preds = %free
  %rcu = getelementptr inbounds %struct.perf_domain, ptr %15, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @destroy_perf_domain_rcu) #15
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %free
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_sched_domain_debugfs() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @partition_sched_domains(i32 noundef %ndoms_new, ptr noundef %doms_new, ptr noundef %dattr_new) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @sched_domains_mutex, i32 noundef 0) #15
  tail call void @partition_sched_domains_locked(i32 noundef %ndoms_new, ptr noundef %doms_new, ptr noundef %dattr_new)
  tail call void @mutex_unlock(ptr noundef nonnull @sched_domains_mutex) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpupri_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpudl_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rto_push_irq_work_func(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_dl_bw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpudl_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpupri_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @cpu_smt_mask(i32 noundef %cpu) #7 align 64 {
entry:
  %thread_sibling = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %cpu, i32 5
  ret ptr %thread_sibling
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cpu_smt_flags() #7 align 64 {
entry:
  ret i32 384
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpu_coregroup_mask(i32 noundef) #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cpu_core_flags() #7 align 64 {
entry:
  ret i32 256
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @cpu_cpu_mask(i32 noundef %cpu) #7 align 64 {
entry:
  ret ptr @__cpu_online_mask
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpu_attach_domain(ptr noundef %sd, ptr noundef %rd, i32 noundef %cpu) unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i.i = alloca i32, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %cond = icmp eq ptr %sd, null
  br i1 %cond, label %if.end34, label %for.body

for.body:                                         ; preds = %cleanup, %entry
  %tmp2.0381 = phi ptr [ %tmp2.2, %cleanup ], [ %sd, %entry ]
  %2 = ptrtoint ptr %tmp2.0381 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tmp2.0381, align 8
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end.i.i.i119, label %if.end

if.end:                                           ; preds = %for.body
  %flags.i = getelementptr inbounds %struct.sched_domain, ptr %tmp2.0381, i32 0, i32 9
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %flags1.i = getelementptr inbounds %struct.sched_domain, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags1.i, align 4
  %span.i.i.i = getelementptr inbounds %struct.sched_domain, ptr %3, i32 0, i32 41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i.i = tail call i32 @__bitmap_weight(ptr noundef %span.i.i.i, i32 noundef %8) #15
  %cmp.i.i = icmp eq i32 %call4.i.i.i.i, 1
  br i1 %cmp.i.i, label %if.then6, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end
  %9 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags1.i, align 4
  %and.i.i = and i32 %10, 16367
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %sd_degenerate.exit.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %groups.i.i = getelementptr inbounds %struct.sched_domain, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %groups.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %groups.i.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %cmp3.not.i.i = icmp eq ptr %12, %14
  %15 = and i32 %10, 16
  %tobool.not.not.i = icmp eq i32 %15, 0
  %or.cond.i = select i1 %cmp3.not.i.i, i1 %tobool.not.not.i, i1 false
  br i1 %or.cond.i, label %if.then6, label %if.end.i

sd_degenerate.exit.i:                             ; preds = %if.end.i.i
  %.old.i = and i32 %10, 16
  %tobool.not.not.old.i = icmp eq i32 %.old.i, 0
  br i1 %tobool.not.not.old.i, label %if.then6, label %if.end.i

if.end.i:                                         ; preds = %sd_degenerate.exit.i, %land.lhs.true.i.i
  %span.i.i = getelementptr inbounds %struct.sched_domain, ptr %tmp2.0381, i32 0, i32 41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %call13.i.i.i = tail call i32 @__bitmap_equal(ptr noundef %span.i.i, ptr noundef %span.i.i.i, i32 noundef %16) #15
  %tobool.i.not.i = icmp eq i32 %call13.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.else, label %sd_parent_degenerate.exit

sd_parent_degenerate.exit:                        ; preds = %if.end.i
  %groups.i = getelementptr inbounds %struct.sched_domain, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %groups.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %cmp.i = icmp eq ptr %18, %20
  %and.i = and i32 %7, -16368
  %spec.select.i = select i1 %cmp.i, i32 %and.i, i32 %7
  %neg.i = xor i32 %5, -1
  %and10.i = and i32 %spec.select.i, %neg.i
  %tobool11.not.i.not = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %sd_parent_degenerate.exit, %sd_degenerate.exit.i, %land.lhs.true.i.i, %if.end
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 8
  %23 = ptrtoint ptr %tmp2.0381 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %tmp2.0381, align 8
  %24 = load ptr, ptr %3, align 8
  %tobool10.not = icmp eq ptr %24, null
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.then6
  %child = getelementptr inbounds %struct.sched_domain, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %child to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %tmp2.0381, ptr %child, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then6
  %26 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags1.i, align 4
  %and = and i32 %27, 2048
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end13
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 4
  %or = or i32 %29, 2048
  store i32 %or, ptr %flags.i, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13
  %groups.i108 = getelementptr inbounds %struct.sched_domain, ptr %3, i32 0, i32 2
  %30 = ptrtoint ptr %groups.i108 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %groups.i108, align 8
  tail call fastcc void @free_sched_groups(ptr noundef %31, i32 noundef 1) #15
  %shared.i = getelementptr inbounds %struct.sched_domain, ptr %3, i32 0, i32 39
  %32 = ptrtoint ptr %shared.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %shared.i, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %destroy_sched_domain.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %33, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !302
  tail call void @llvm.prefetch.p0(ptr nonnull %33, i32 1, i32 3, i32 1) #15
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %33, ptr nonnull %33, i32 1, ptr nonnull elementtype(i32) %33) #15, !srcloc !303
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %34, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !304
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %destroy_sched_domain.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %35 = ptrtoint ptr %shared.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %shared.i, align 4
  tail call void @kfree(ptr noundef %36) #15
  br label %destroy_sched_domain.exit

destroy_sched_domain.exit:                        ; preds = %if.then.i, %land.lhs.true.i, %if.end17
  tail call void @kfree(ptr noundef nonnull %3) #15
  br label %cleanup

if.else:                                          ; preds = %sd_parent_degenerate.exit, %if.end.i
  %37 = ptrtoint ptr %tmp2.0381 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tmp2.0381, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %destroy_sched_domain.exit
  %tmp2.2 = phi ptr [ %tmp2.0381, %destroy_sched_domain.exit ], [ %38, %if.else ]
  %tobool.not = icmp eq ptr %tmp2.2, null
  br i1 %tobool.not, label %if.end.i.i.i119, label %for.body

if.end.i.i.i119:                                  ; preds = %cleanup, %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %39 = load i32, ptr @nr_cpu_ids, align 4
  %span.i.i110 = getelementptr inbounds %struct.sched_domain, ptr %sd, i32 0, i32 41
  %call4.i.i.i = tail call i32 @__bitmap_weight(ptr noundef %span.i.i110, i32 noundef %39) #15
  %cmp.i121 = icmp eq i32 %call4.i.i.i, 1
  br i1 %cmp.i121, label %if.then23, label %if.end.i125

if.end.i125:                                      ; preds = %if.end.i.i.i119
  %flags.i122 = getelementptr inbounds %struct.sched_domain, ptr %sd, i32 0, i32 9
  %40 = ptrtoint ptr %flags.i122 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.i122, align 4
  %and.i123 = and i32 %41, 16367
  %tobool.not.i124 = icmp eq i32 %and.i123, 0
  br i1 %tobool.not.i124, label %sd_degenerate.exit, label %land.lhs.true.i127

land.lhs.true.i127:                               ; preds = %if.end.i125
  %groups.i126 = getelementptr inbounds %struct.sched_domain, ptr %sd, i32 0, i32 2
  %42 = ptrtoint ptr %groups.i126 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %groups.i126, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %cmp3.not.i = icmp eq ptr %43, %45
  %46 = and i32 %41, 16
  %tobool22.not.not = icmp eq i32 %46, 0
  %or.cond = select i1 %cmp3.not.i, i1 %tobool22.not.not, i1 false
  br i1 %or.cond, label %if.then23, label %if.end34

sd_degenerate.exit:                               ; preds = %if.end.i125
  %.old = and i32 %41, 16
  %tobool22.not.not.old = icmp eq i32 %.old, 0
  br i1 %tobool22.not.not.old, label %if.then23, label %if.end34

if.then23:                                        ; preds = %sd_degenerate.exit, %land.lhs.true.i127, %if.end.i.i.i119
  %47 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sd, align 8
  %groups.i129 = getelementptr inbounds %struct.sched_domain, ptr %sd, i32 0, i32 2
  %49 = ptrtoint ptr %groups.i129 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %groups.i129, align 8
  tail call fastcc void @free_sched_groups(ptr noundef %50, i32 noundef 1) #15
  %shared.i130 = getelementptr inbounds %struct.sched_domain, ptr %sd, i32 0, i32 39
  %51 = ptrtoint ptr %shared.i130 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %shared.i130, align 4
  %tobool.not.i131 = icmp eq ptr %52, null
  br i1 %tobool.not.i131, label %destroy_sched_domain.exit138, label %land.lhs.true.i135

land.lhs.true.i135:                               ; preds = %if.then23
  %call.i.i.i132 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %52, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !302
  tail call void @llvm.prefetch.p0(ptr nonnull %52, i32 1, i32 3, i32 1) #15
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %52, ptr nonnull %52, i32 1, ptr nonnull elementtype(i32) %52) #15, !srcloc !303
  %asmresult.i.i.i.i.i.i133 = extractvalue { i32, i32 } %53, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !304
  %cmp.i.i.i134 = icmp eq i32 %asmresult.i.i.i.i.i.i133, 0
  br i1 %cmp.i.i.i134, label %if.then.i136, label %destroy_sched_domain.exit138

if.then.i136:                                     ; preds = %land.lhs.true.i135
  %54 = ptrtoint ptr %shared.i130 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %shared.i130, align 4
  tail call void @kfree(ptr noundef %55) #15
  br label %destroy_sched_domain.exit138

destroy_sched_domain.exit138:                     ; preds = %if.then.i136, %land.lhs.true.i135, %if.then23
  tail call void @kfree(ptr noundef nonnull %sd) #15
  %tobool25.not = icmp eq ptr %48, null
  br i1 %tobool25.not, label %if.end34, label %if.then26

if.then26:                                        ; preds = %destroy_sched_domain.exit138
  %groups = getelementptr inbounds %struct.sched_domain, ptr %48, i32 0, i32 2
  %56 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %groups, align 8
  %flags28 = getelementptr inbounds %struct.sched_group, ptr %57, i32 0, i32 5
  br label %do.body27

do.body27:                                        ; preds = %do.body27, %if.then26
  %58 = ptrtoint ptr %flags28 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %flags28, align 4
  %59 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %groups, align 8
  %cmp.not = icmp eq ptr %57, %60
  br i1 %cmp.not, label %do.end31, label %do.body27

do.end31:                                         ; preds = %do.body27
  %child32 = getelementptr inbounds %struct.sched_domain, ptr %48, i32 0, i32 1
  %61 = ptrtoint ptr %child32 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %child32, align 4
  br label %if.end34

if.end34:                                         ; preds = %do.end31, %destroy_sched_domain.exit138, %sd_degenerate.exit, %land.lhs.true.i127, %entry
  %sd.addr.0 = phi ptr [ %48, %do.end31 ], [ null, %destroy_sched_domain.exit138 ], [ %sd, %sd_degenerate.exit ], [ %sd, %land.lhs.true.i127 ], [ null, %entry ]
  %add = add i32 %1, ptrtoint (ptr @runqueues to i32)
  %62 = inttoptr i32 %add to ptr
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @sched_debug_verbose to i32))
  %63 = load i8, ptr @sched_debug_verbose, align 1, !range !309
  %tobool.not.i139 = icmp eq i8 %63, 0
  br i1 %tobool.not.i139, label %sched_domain_debug.exit, label %if.end.i140

if.end.i140:                                      ; preds = %if.end34
  %tobool1.not.i = icmp eq ptr %sd.addr.0, null
  br i1 %tobool1.not.i, label %do.end.i, label %do.end6.i

do.end.i:                                         ; preds = %if.end.i140
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %cpu) #17
  br label %sched_domain_debug.exit

do.end6.i:                                        ; preds = %if.end.i140
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %cpu) #17
  %div3.i.i.i.i = lshr i32 %cpu, 5
  %and.i.i.i.i141 = and i32 %cpu, 31
  %64 = shl nuw i32 1, %and.i.i.i.i141
  br label %for.cond.i

for.cond.i:                                       ; preds = %sched_domain_debug_one.exit.i, %do.end6.i
  %level.0.i = phi i32 [ 0, %do.end6.i ], [ %add68.i.i, %sched_domain_debug_one.exit.i ]
  %sd.addr.0.i = phi ptr [ %sd.addr.0, %do.end6.i ], [ %137, %sched_domain_debug_one.exit.i ]
  %65 = load ptr, ptr @sched_domains_tmpmask, align 4
  %groups.i.i142 = getelementptr inbounds %struct.sched_domain, ptr %sd.addr.0.i, i32 0, i32 2
  %66 = ptrtoint ptr %groups.i.i142 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %groups.i.i142, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i.i) #15
  %flags1.i.i = getelementptr inbounds %struct.sched_domain, ptr %sd.addr.0.i, i32 0, i32 9
  %68 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags1.i.i, align 4
  %70 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %flags.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %71 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i.i143 = add i32 %71, 31
  %72 = lshr i32 %sub.i.i.i.i143, 3
  %mul.i.i.i.i = and i32 %72, 536870908
  %73 = call ptr @memset(ptr %65, i32 0, i32 %mul.i.i.i.i)
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %level.0.i, ptr noundef nonnull @.str.46, i32 noundef %level.0.i) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %74 = load i32, ptr @nr_cpu_ids, align 4
  %span.i.i.i144 = getelementptr inbounds %struct.sched_domain, ptr %sd.addr.0.i, i32 0, i32 41
  %name.i.i = getelementptr inbounds %struct.sched_domain, ptr %sd.addr.0.i, i32 0, i32 37
  %75 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %name.i.i, align 8
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %74, ptr noundef %span.i.i.i144, ptr noundef %76) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %77 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i.i = icmp ugt i32 %77, %cpu
  br i1 %cmp.not.i.i.i.i.i, label %cpumask_test_cpu.exit.i.i, label %land.rhs.i.i.i.i.i

land.rhs.i.i.i.i.i:                               ; preds = %for.cond.i
  %.b37.i.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i, label %cpumask_test_cpu.exit.i.i, label %if.then.i.i.i.i.i, !prof !301

if.then.i.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpumask_test_cpu.exit.i.i

cpumask_test_cpu.exit.i.i:                        ; preds = %if.then.i.i.i.i.i, %land.rhs.i.i.i.i.i, %for.cond.i
  %arrayidx.i.i.i.i = getelementptr i32, ptr %span.i.i.i144, i32 %div3.i.i.i.i
  %78 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %80 = and i32 %79, %64
  %tobool.not.i.i145 = icmp eq i32 %80, 0
  br i1 %tobool.not.i.i145, label %do.end12.i.i, label %if.end.i.i146

do.end12.i.i:                                     ; preds = %cpumask_test_cpu.exit.i.i
  %call14.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %cpu) #17
  br label %if.end.i.i146

if.end.i.i146:                                    ; preds = %do.end12.i.i, %cpumask_test_cpu.exit.i.i
  %tobool15.not.i.i = icmp eq ptr %67, null
  br i1 %tobool15.not.i.i, label %if.end25.i.i, label %land.lhs.true.i.i147

land.lhs.true.i.i147:                             ; preds = %if.end.i.i146
  %cpumask.i.i.i = getelementptr inbounds %struct.sched_group, ptr %67, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %81 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i2.i.i = icmp ugt i32 %81, %cpu
  br i1 %cmp.not.i.i.i2.i.i, label %cpumask_test_cpu.exit11.i.i, label %land.rhs.i.i.i4.i.i

land.rhs.i.i.i4.i.i:                              ; preds = %land.lhs.true.i.i147
  %.b37.i.i.i3.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i3.i.i, label %cpumask_test_cpu.exit11.i.i, label %if.then.i.i.i5.i.i, !prof !301

if.then.i.i.i5.i.i:                               ; preds = %land.rhs.i.i.i4.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpumask_test_cpu.exit11.i.i

cpumask_test_cpu.exit11.i.i:                      ; preds = %if.then.i.i.i5.i.i, %land.rhs.i.i.i4.i.i, %land.lhs.true.i.i147
  %arrayidx.i.i7.i.i = getelementptr i32, ptr %cpumask.i.i.i, i32 %div3.i.i.i.i
  %82 = ptrtoint ptr %arrayidx.i.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %arrayidx.i.i7.i.i, align 4
  %84 = and i32 %83, %64
  %tobool18.not.i.i = icmp eq i32 %84, 0
  br i1 %tobool18.not.i.i, label %do.end22.i.i, label %if.end25.i.i

do.end22.i.i:                                     ; preds = %cpumask_test_cpu.exit11.i.i
  %call24.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %cpu) #17
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %do.end22.i.i, %cpumask_test_cpu.exit11.i.i, %if.end.i.i146
  %call26.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %flags.i.i, i32 noundef 14, i32 noundef 0) #15
  %cmp99.i.i = icmp ult i32 %call26.i.i, 14
  br i1 %cmp99.i.i, label %for.body.lr.ph.i.i, label %do.end66.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end25.i.i
  %child.i.i = getelementptr inbounds %struct.sched_domain, ptr %sd.addr.0.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end62.i.i, %for.body.lr.ph.i.i
  %idx.0100.i.i = phi i32 [ %call26.i.i, %for.body.lr.ph.i.i ], [ %call63.i.i, %if.end62.i.i ]
  %shl.i.i = shl nuw nsw i32 1, %idx.0100.i.i
  %arrayidx.i.i = getelementptr [14 x %struct.sd_flag_debug], ptr @sd_flag_debug, i32 0, i32 %idx.0100.i.i
  %85 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i148 = and i32 %86, 1
  %tobool28.not.i.i = icmp eq i32 %and.i.i148, 0
  br i1 %tobool28.not.i.i, label %if.end44.i.i, label %land.lhs.true29.i.i

land.lhs.true29.i.i:                              ; preds = %for.body.i.i
  %87 = ptrtoint ptr %child.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %child.i.i, align 4
  %tobool30.not.i.i = icmp eq ptr %88, null
  br i1 %tobool30.not.i.i, label %if.end44.i.i, label %land.lhs.true31.i.i

land.lhs.true31.i.i:                              ; preds = %land.lhs.true29.i.i
  %flags33.i.i = getelementptr inbounds %struct.sched_domain, ptr %88, i32 0, i32 9
  %89 = ptrtoint ptr %flags33.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags33.i.i, align 4
  %and34.i.i = and i32 %90, %shl.i.i
  %tobool35.not.i.i = icmp eq i32 %and34.i.i, 0
  br i1 %tobool35.not.i.i, label %do.end39.i.i, label %if.end44.i.i

do.end39.i.i:                                     ; preds = %land.lhs.true31.i.i
  %name42.i.i = getelementptr [14 x %struct.sd_flag_debug], ptr @sd_flag_debug, i32 0, i32 %idx.0100.i.i, i32 1
  %91 = ptrtoint ptr %name42.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %name42.i.i, align 4
  %call43.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %92) #17
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %do.end39.i.i, %land.lhs.true31.i.i, %land.lhs.true29.i.i, %for.body.i.i
  %and45.i.i = and i32 %86, 2
  %tobool46.not.i.i = icmp eq i32 %and45.i.i, 0
  br i1 %tobool46.not.i.i, label %if.end62.i.i, label %land.lhs.true47.i.i

land.lhs.true47.i.i:                              ; preds = %if.end44.i.i
  %93 = ptrtoint ptr %sd.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sd.addr.0.i, align 8
  %tobool48.not.i.i = icmp eq ptr %94, null
  br i1 %tobool48.not.i.i, label %if.end62.i.i, label %land.lhs.true49.i.i

land.lhs.true49.i.i:                              ; preds = %land.lhs.true47.i.i
  %flags51.i.i = getelementptr inbounds %struct.sched_domain, ptr %94, i32 0, i32 9
  %95 = ptrtoint ptr %flags51.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flags51.i.i, align 4
  %and52.i.i = and i32 %96, %shl.i.i
  %tobool53.not.i.i = icmp eq i32 %and52.i.i, 0
  br i1 %tobool53.not.i.i, label %do.end57.i.i, label %if.end62.i.i

do.end57.i.i:                                     ; preds = %land.lhs.true49.i.i
  %name60.i.i = getelementptr [14 x %struct.sd_flag_debug], ptr @sd_flag_debug, i32 0, i32 %idx.0100.i.i, i32 1
  %97 = ptrtoint ptr %name60.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %name60.i.i, align 4
  %call61.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %98) #17
  br label %if.end62.i.i

if.end62.i.i:                                     ; preds = %do.end57.i.i, %land.lhs.true49.i.i, %land.lhs.true47.i.i, %if.end44.i.i
  %add.i.i = add nuw nsw i32 %idx.0100.i.i, 1
  %call63.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %flags.i.i, i32 noundef 14, i32 noundef %add.i.i) #15
  %cmp.i.i149 = icmp ult i32 %call63.i.i, 14
  br i1 %cmp.i.i149, label %for.body.i.i, label %do.end66.i.i

do.end66.i.i:                                     ; preds = %if.end62.i.i, %if.end25.i.i
  %add68.i.i = add i32 %level.0.i, 1
  %call69.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %add68.i.i, ptr noundef nonnull @.str.46) #17
  %child157.i.i = getelementptr inbounds %struct.sched_domain, ptr %sd.addr.0.i, i32 0, i32 1
  br label %do.body70.i.i

do.body70.i.i:                                    ; preds = %do.cond185.i.i, %do.end66.i.i
  %group.0.i.i = phi ptr [ %67, %do.end66.i.i ], [ %127, %do.cond185.i.i ]
  %tobool71.not.i.i = icmp eq ptr %group.0.i.i, null
  br i1 %tobool71.not.i.i, label %do.end191.sink.split.i.i, label %if.end83.i.i

if.end83.i.i:                                     ; preds = %do.body70.i.i
  %cpumask.i12.i.i = getelementptr inbounds %struct.sched_group, ptr %group.0.i.i, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %99 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i.i245 = call i32 @__bitmap_weight(ptr noundef %cpumask.i12.i.i, i32 noundef %99) #15
  %tobool86.not.i.i = icmp eq i32 %call4.i.i.i.i245, 0
  br i1 %tobool86.not.i.i, label %do.end191.sink.split.i.i, label %if.end98.i.i

if.end98.i.i:                                     ; preds = %if.end83.i.i
  %100 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %flags1.i.i, align 4
  %and100.i.i = and i32 %101, 4096
  %tobool101.not.i.i = icmp eq i32 %and100.i.i, 0
  br i1 %tobool101.not.i.i, label %if.else.i.i.i.i, label %if.else.i.i25.i.i

if.else.i.i.i.i:                                  ; preds = %if.end98.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %102 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i.i = call i32 @__bitmap_intersects(ptr noundef %65, ptr noundef %cpumask.i12.i.i, i32 noundef %102) #15
  %tobool.i.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i25.i.i, label %do.end191.sink.split.i.i

if.else.i.i25.i.i:                                ; preds = %if.else.i.i.i.i, %if.end98.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %103 = load i32, ptr @nr_cpu_ids, align 4
  call void @__bitmap_or(ptr noundef %65, ptr noundef %65, ptr noundef %cpumask.i12.i.i, i32 noundef %103) #15
  %sgc.i.i = getelementptr inbounds %struct.sched_group, ptr %group.0.i.i, i32 0, i32 3
  %104 = ptrtoint ptr %sgc.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sgc.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.sched_group_capacity, ptr %105, i32 0, i32 6
  %106 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %id.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %108 = load i32, ptr @nr_cpu_ids, align 4
  %call125.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %107, i32 noundef %108, ptr noundef %cpumask.i12.i.i) #17
  %109 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %flags1.i.i, align 4
  %and127.i.i = and i32 %110, 4096
  %tobool128.not.i.i = icmp eq i32 %and127.i.i, 0
  br i1 %tobool128.not.i.i, label %if.end142.i.i, label %land.lhs.true129.i.i

land.lhs.true129.i.i:                             ; preds = %if.else.i.i25.i.i
  %111 = ptrtoint ptr %sgc.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %sgc.i.i, align 4
  %cpumask.i27.i.i = getelementptr inbounds %struct.sched_group_capacity, ptr %112, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %113 = load i32, ptr @nr_cpu_ids, align 4
  %call13.i.i.i.i = call i32 @__bitmap_equal(ptr noundef %cpumask.i27.i.i, ptr noundef %cpumask.i12.i.i, i32 noundef %113) #15
  %tobool.i37.not.i.i = icmp eq i32 %call13.i.i.i.i, 0
  br i1 %tobool.i37.not.i.i, label %do.end136.i.i, label %if.end142.i.i

do.end136.i.i:                                    ; preds = %land.lhs.true129.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %114 = load i32, ptr @nr_cpu_ids, align 4
  %115 = ptrtoint ptr %sgc.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %sgc.i.i, align 4
  %cpumask.i39.i.i = getelementptr inbounds %struct.sched_group_capacity, ptr %116, i32 0, i32 7
  %call141.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %114, ptr noundef %cpumask.i39.i.i) #17
  br label %if.end142.i.i

if.end142.i.i:                                    ; preds = %do.end136.i.i, %land.lhs.true129.i.i, %if.else.i.i25.i.i
  %117 = ptrtoint ptr %sgc.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %sgc.i.i, align 4
  %capacity.i.i = getelementptr inbounds %struct.sched_group_capacity, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %capacity.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %capacity.i.i, align 4
  %cmp144.not.i.i = icmp eq i32 %120, 1024
  br i1 %cmp144.not.i.i, label %if.end153.i.i, label %do.end148.i.i

do.end148.i.i:                                    ; preds = %if.end142.i.i
  %call152.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %120) #17
  br label %if.end153.i.i

if.end153.i.i:                                    ; preds = %do.end148.i.i, %if.end142.i.i
  %121 = ptrtoint ptr %groups.i.i142 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %groups.i.i142, align 8
  %cmp155.i.i = icmp eq ptr %group.0.i.i, %122
  br i1 %cmp155.i.i, label %land.lhs.true156.i.i, label %do.end173.i.i

land.lhs.true156.i.i:                             ; preds = %if.end153.i.i
  %123 = ptrtoint ptr %child157.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %child157.i.i, align 4
  %tobool158.not.i.i = icmp eq ptr %124, null
  br i1 %tobool158.not.i.i, label %do.end173.i.i, label %land.lhs.true159.i.i

land.lhs.true159.i.i:                             ; preds = %land.lhs.true156.i.i
  %span.i40.i.i = getelementptr inbounds %struct.sched_domain, ptr %124, i32 0, i32 41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %125 = load i32, ptr @nr_cpu_ids, align 4
  %call13.i.i59.i.i = call i32 @__bitmap_equal(ptr noundef %span.i40.i.i, ptr noundef %cpumask.i12.i.i, i32 noundef %125) #15
  %tobool.i62.not.i.i = icmp eq i32 %call13.i.i59.i.i, 0
  br i1 %tobool.i62.not.i.i, label %do.end167.i.i, label %do.end173.i.i

do.end167.i.i:                                    ; preds = %land.lhs.true159.i.i
  %call169.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #17
  br label %do.end173.i.i

do.end173.i.i:                                    ; preds = %do.end167.i.i, %land.lhs.true159.i.i, %land.lhs.true156.i.i, %if.end153.i.i
  %call175.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #17
  %126 = ptrtoint ptr %group.0.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %group.0.i.i, align 4
  %128 = ptrtoint ptr %groups.i.i142 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %groups.i.i142, align 8
  %cmp177.not.i.i = icmp eq ptr %127, %129
  br i1 %cmp177.not.i.i, label %do.cond185.i.i, label %do.end181.i.i

do.end181.i.i:                                    ; preds = %do.end173.i.i
  %call183.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #17
  br label %do.cond185.i.i

do.cond185.i.i:                                   ; preds = %do.end181.i.i, %do.end173.i.i
  %130 = ptrtoint ptr %groups.i.i142 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %groups.i.i142, align 8
  %cmp187.not.i.i = icmp eq ptr %127, %131
  br i1 %cmp187.not.i.i, label %do.end191.i.i, label %do.body70.i.i

do.end191.sink.split.i.i:                         ; preds = %if.else.i.i.i.i, %if.end83.i.i, %do.body70.i.i
  %.str.66.sink.i.i = phi ptr [ @.str.66, %do.body70.i.i ], [ @.str.72, %if.end83.i.i ], [ @.str.72, %if.else.i.i.i.i ]
  %.str.69.sink.i.i = phi ptr [ @.str.69, %do.body70.i.i ], [ @.str.75, %if.end83.i.i ], [ @.str.80, %if.else.i.i.i.i ]
  %call77.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.66.sink.i.i) #17
  %call82.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.69.sink.i.i) #17
  br label %do.end191.i.i

do.end191.i.i:                                    ; preds = %do.end191.sink.split.i.i, %do.cond185.i.i
  %call193.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %132 = load i32, ptr @nr_cpu_ids, align 4
  %call13.i.i82.i.i = call i32 @__bitmap_equal(ptr noundef %span.i.i.i144, ptr noundef %65, i32 noundef %132) #15
  %tobool.i85.not.i.i = icmp eq i32 %call13.i.i82.i.i, 0
  br i1 %tobool.i85.not.i.i, label %do.end199.i.i, label %if.end202.i.i

do.end199.i.i:                                    ; preds = %do.end191.i.i
  %call201.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #17
  br label %if.end202.i.i

if.end202.i.i:                                    ; preds = %do.end199.i.i, %do.end191.i.i
  %133 = ptrtoint ptr %sd.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %sd.addr.0.i, align 8
  %tobool204.not.i.i = icmp eq ptr %134, null
  br i1 %tobool204.not.i.i, label %sched_domain_debug_one.exit.i, label %if.else.i.i97.i.i

if.else.i.i97.i.i:                                ; preds = %if.end202.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %135 = load i32, ptr @nr_cpu_ids, align 4
  %span.i87.i.i = getelementptr inbounds %struct.sched_domain, ptr %134, i32 0, i32 41
  %call.i.i96.i.i = call i32 @__bitmap_subset(ptr noundef %65, ptr noundef %span.i87.i.i, i32 noundef %135) #15
  %tobool209.not.i.i = icmp eq i32 %call.i.i96.i.i, 0
  br i1 %tobool209.not.i.i, label %do.end213.i.i, label %sched_domain_debug_one.exit.i

do.end213.i.i:                                    ; preds = %if.else.i.i97.i.i
  %call215.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #17
  br label %sched_domain_debug_one.exit.i

sched_domain_debug_one.exit.i:                    ; preds = %do.end213.i.i, %if.else.i.i97.i.i, %if.end202.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i.i) #15
  %136 = ptrtoint ptr %sd.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %sd.addr.0.i, align 8
  %tobool13.not.i = icmp eq ptr %137, null
  br i1 %tobool13.not.i, label %sched_domain_debug.exit, label %for.cond.i

sched_domain_debug.exit:                          ; preds = %sched_domain_debug_one.exit.i, %do.end.i, %if.end34
  call void @rq_attach_root(ptr noundef %62, ptr noundef %rd)
  %sd35 = getelementptr inbounds %struct.rq, ptr %62, i32 0, i32 36
  %138 = ptrtoint ptr %sd35 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %sd35, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !317
  %140 = ptrtoint ptr %sd35 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %sd.addr.0, ptr %sd35, align 4
  call void @dirty_sched_domain_sysctl(i32 noundef %cpu) #15
  %tobool.not.i249 = icmp eq ptr %139, null
  br i1 %tobool.not.i249, label %destroy_sched_domains.exit, label %if.then.i250

if.then.i250:                                     ; preds = %sched_domain_debug.exit
  %141 = getelementptr inbounds %struct.sched_domain, ptr %139, i32 0, i32 38
  call void @call_rcu(ptr noundef %141, ptr noundef nonnull @destroy_sched_domains_rcu) #15
  br label %destroy_sched_domains.exit

destroy_sched_domains.exit:                       ; preds = %if.then.i250, %sched_domain_debug.exit
  %142 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx, align 4
  %add.i.i253 = add i32 %143, ptrtoint (ptr @runqueues to i32)
  %144 = inttoptr i32 %add.i.i253 to ptr
  %sd6.i.i = getelementptr inbounds %struct.rq, ptr %144, i32 0, i32 36
  %145 = ptrtoint ptr %sd6.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile ptr, ptr %sd6.i.i, align 4
  %call.i.i.i254 = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @sched_domains_mutex, i32 0, i32 5), i32 noundef -1) #15
  %tobool.not.i.i255 = icmp eq i32 %call.i.i.i254, 0
  br i1 %tobool.not.i.i255, label %lor.lhs.false.i.i, label %do.end15.i.i

lor.lhs.false.i.i:                                ; preds = %destroy_sched_domains.exit
  %call8.i.i = call i32 @rcu_read_lock_held() #15
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %land.lhs.true.i.i256, label %do.end15.i.i

land.lhs.true.i.i256:                             ; preds = %lor.lhs.false.i.i
  %call10.i.i = call i32 @debug_lockdep_rcu_enabled() #15
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %do.end15.i.i, label %land.lhs.true12.i.i

land.lhs.true12.i.i:                              ; preds = %land.lhs.true.i.i256
  %.b24.i.i = load i1, ptr @highest_flag_domain.__warned, align 1
  br i1 %.b24.i.i, label %do.end15.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true12.i.i
  store i1 true, ptr @highest_flag_domain.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.108, i32 noundef 1744, ptr noundef nonnull @.str.109) #15
  br label %do.end15.i.i

do.end15.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true12.i.i, %land.lhs.true.i.i256, %lor.lhs.false.i.i, %destroy_sched_domains.exit
  %tobool17.not25.i.i = icmp eq ptr %146, null
  br i1 %tobool17.not25.i.i, label %do.body.i, label %for.body.i.preheader.i

for.body.i.preheader.i:                           ; preds = %do.end15.i.i
  %flags.i399.i = getelementptr inbounds %struct.sched_domain, ptr %146, i32 0, i32 9
  %147 = ptrtoint ptr %flags.i399.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %flags.i399.i, align 4
  %and.i400.i = and i32 %148, 256
  %tobool18.not.i401.i = icmp eq i32 %and.i400.i, 0
  br i1 %tobool18.not.i401.i, label %do.body.i, label %if.end20.i.i

for.body.i.i260:                                  ; preds = %if.end20.i.i
  %flags.i.i257 = getelementptr inbounds %struct.sched_domain, ptr %152, i32 0, i32 9
  %149 = ptrtoint ptr %flags.i.i257 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %flags.i.i257, align 4
  %and.i.i258 = and i32 %150, 256
  %tobool18.not.i.i259 = icmp eq i32 %and.i.i258, 0
  br i1 %tobool18.not.i.i259, label %if.then.i263, label %if.end20.i.i

if.end20.i.i:                                     ; preds = %for.body.i.i260, %for.body.i.preheader.i
  %sd.027.i402.i = phi ptr [ %152, %for.body.i.i260 ], [ %146, %for.body.i.preheader.i ]
  %151 = ptrtoint ptr %sd.027.i402.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %sd.027.i402.i, align 8
  %tobool17.not.i.i = icmp eq ptr %152, null
  br i1 %tobool17.not.i.i, label %if.then.i263, label %for.body.i.i260

if.then.i263:                                     ; preds = %if.end20.i.i, %for.body.i.i260
  %span.i.i261 = getelementptr inbounds %struct.sched_domain, ptr %sd.027.i402.i, i32 0, i32 41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %153 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i262 = call i32 @_find_first_bit_be(ptr noundef %span.i.i261, i32 noundef %153) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %154 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i362 = call i32 @__bitmap_weight(ptr noundef %span.i.i261, i32 noundef %154) #15
  %shared.i365 = getelementptr inbounds %struct.sched_domain, ptr %sd.027.i402.i, i32 0, i32 39
  %155 = ptrtoint ptr %shared.i365 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %shared.i365, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i263, %for.body.i.preheader.i, %do.end15.i.i
  %hsd.0.lcssa.i392.i = phi ptr [ %sd.027.i402.i, %if.then.i263 ], [ null, %do.end15.i.i ], [ null, %for.body.i.preheader.i ]
  %size.0.i = phi i32 [ %call4.i.i.i362, %if.then.i263 ], [ 1, %do.end15.i.i ], [ 1, %for.body.i.preheader.i ]
  %id.0.i = phi i32 [ %call.i.i262, %if.then.i263 ], [ %cpu, %do.end15.i.i ], [ %cpu, %for.body.i.preheader.i ]
  %sds.0.i = phi ptr [ %156, %if.then.i263 ], [ null, %do.end15.i.i ], [ null, %for.body.i.preheader.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !318
  %157 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx, align 4
  %add38.i = add i32 %158, ptrtoint (ptr @sd_llc to i32)
  %159 = inttoptr i32 %add38.i to ptr
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %160)
  store volatile ptr %hsd.0.lcssa.i392.i, ptr %159, align 4
  %161 = load i32, ptr %arrayidx, align 4
  %add58.i = add i32 %161, ptrtoint (ptr @sd_llc_size to i32)
  %162 = inttoptr i32 %add58.i to ptr
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %size.0.i, ptr %162, align 4
  %164 = load i32, ptr %arrayidx, align 4
  %add67.i = add i32 %164, ptrtoint (ptr @sd_llc_id to i32)
  %165 = inttoptr i32 %add67.i to ptr
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %id.0.i, ptr %165, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !319
  %167 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx, align 4
  %add113.i = add i32 %168, ptrtoint (ptr @sd_llc_shared to i32)
  %169 = inttoptr i32 %add113.i to ptr
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %170)
  store volatile ptr %sds.0.i, ptr %169, align 4
  %171 = load i32, ptr %arrayidx, align 4
  %add.i319.i = add i32 %171, ptrtoint (ptr @runqueues to i32)
  %172 = inttoptr i32 %add.i319.i to ptr
  %sd6.i320.i = getelementptr inbounds %struct.rq, ptr %172, i32 0, i32 36
  %173 = ptrtoint ptr %sd6.i320.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile ptr, ptr %sd6.i320.i, align 4
  %call.i.i321.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @sched_domains_mutex, i32 0, i32 5), i32 noundef -1) #15
  %tobool.not.i322.i = icmp eq i32 %call.i.i321.i, 0
  br i1 %tobool.not.i322.i, label %lor.lhs.false.i325.i, label %do.end15.i333.i

lor.lhs.false.i325.i:                             ; preds = %do.body.i
  %call8.i323.i = call i32 @rcu_read_lock_held() #15
  %tobool9.not.i324.i = icmp eq i32 %call8.i323.i, 0
  br i1 %tobool9.not.i324.i, label %land.lhs.true.i328.i, label %do.end15.i333.i

land.lhs.true.i328.i:                             ; preds = %lor.lhs.false.i325.i
  %call10.i326.i = call i32 @debug_lockdep_rcu_enabled() #15
  %tobool11.not.i327.i = icmp eq i32 %call10.i326.i, 0
  br i1 %tobool11.not.i327.i, label %do.end15.i333.i, label %land.lhs.true12.i330.i

land.lhs.true12.i330.i:                           ; preds = %land.lhs.true.i328.i
  %.b24.i329.i = load i1, ptr @lowest_flag_domain.__warned, align 1
  br i1 %.b24.i329.i, label %do.end15.i333.i, label %if.then.i331.i

if.then.i331.i:                                   ; preds = %land.lhs.true12.i330.i
  store i1 true, ptr @lowest_flag_domain.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.108, i32 noundef 1757, ptr noundef nonnull @.str.109) #15
  br label %do.end15.i333.i

do.end15.i333.i:                                  ; preds = %if.then.i331.i, %land.lhs.true12.i330.i, %land.lhs.true.i328.i, %lor.lhs.false.i325.i, %do.body.i
  %tobool17.not25.i332.i = icmp eq ptr %174, null
  br i1 %tobool17.not25.i332.i, label %lowest_flag_domain.exit.i, label %for.body.i337.i

for.body.i337.i:                                  ; preds = %for.inc.i.i, %do.end15.i333.i
  %sd.026.i.i = phi ptr [ %178, %for.inc.i.i ], [ %174, %do.end15.i333.i ]
  %flags.i334.i = getelementptr inbounds %struct.sched_domain, ptr %sd.026.i.i, i32 0, i32 9
  %175 = ptrtoint ptr %flags.i334.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %flags.i334.i, align 4
  %and.i335.i = and i32 %176, 8192
  %tobool18.not.i336.i = icmp eq i32 %and.i335.i, 0
  br i1 %tobool18.not.i336.i, label %for.inc.i.i, label %lowest_flag_domain.exit.i

for.inc.i.i:                                      ; preds = %for.body.i337.i
  %177 = ptrtoint ptr %sd.026.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %sd.026.i.i, align 8
  %tobool17.not.i338.i = icmp eq ptr %178, null
  br i1 %tobool17.not.i338.i, label %lowest_flag_domain.exit.i, label %for.body.i337.i

lowest_flag_domain.exit.i:                        ; preds = %for.inc.i.i, %for.body.i337.i, %do.end15.i333.i
  %sd.0.lcssa.i.i = phi ptr [ null, %do.end15.i333.i ], [ %sd.026.i.i, %for.body.i337.i ], [ null, %for.inc.i.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !320
  %179 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx, align 4
  %add171.i = add i32 %180, ptrtoint (ptr @sd_numa to i32)
  %181 = inttoptr i32 %add171.i to ptr
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_store4_noabort(i32 %182)
  store volatile ptr %sd.0.lcssa.i.i, ptr %181, align 4
  %183 = load i32, ptr %arrayidx, align 4
  %add.i340.i = add i32 %183, ptrtoint (ptr @runqueues to i32)
  %184 = inttoptr i32 %add.i340.i to ptr
  %sd6.i341.i = getelementptr inbounds %struct.rq, ptr %184, i32 0, i32 36
  %185 = ptrtoint ptr %sd6.i341.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile ptr, ptr %sd6.i341.i, align 4
  %call.i.i342.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @sched_domains_mutex, i32 0, i32 5), i32 noundef -1) #15
  %tobool.not.i343.i = icmp eq i32 %call.i.i342.i, 0
  br i1 %tobool.not.i343.i, label %lor.lhs.false.i346.i, label %do.end15.i354.i

lor.lhs.false.i346.i:                             ; preds = %lowest_flag_domain.exit.i
  %call8.i344.i = call i32 @rcu_read_lock_held() #15
  %tobool9.not.i345.i = icmp eq i32 %call8.i344.i, 0
  br i1 %tobool9.not.i345.i, label %land.lhs.true.i349.i, label %do.end15.i354.i

land.lhs.true.i349.i:                             ; preds = %lor.lhs.false.i346.i
  %call10.i347.i = call i32 @debug_lockdep_rcu_enabled() #15
  %tobool11.not.i348.i = icmp eq i32 %call10.i347.i, 0
  br i1 %tobool11.not.i348.i, label %do.end15.i354.i, label %land.lhs.true12.i351.i

land.lhs.true12.i351.i:                           ; preds = %land.lhs.true.i349.i
  %.b24.i350.i = load i1, ptr @highest_flag_domain.__warned, align 1
  br i1 %.b24.i350.i, label %do.end15.i354.i, label %if.then.i352.i

if.then.i352.i:                                   ; preds = %land.lhs.true12.i351.i
  store i1 true, ptr @highest_flag_domain.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.108, i32 noundef 1744, ptr noundef nonnull @.str.109) #15
  br label %do.end15.i354.i

do.end15.i354.i:                                  ; preds = %if.then.i352.i, %land.lhs.true12.i351.i, %land.lhs.true.i349.i, %lor.lhs.false.i346.i, %lowest_flag_domain.exit.i
  %tobool17.not25.i353.i = icmp eq ptr %186, null
  br i1 %tobool17.not25.i353.i, label %highest_flag_domain.exit364.i, label %for.body.i360.preheader.i

for.body.i360.preheader.i:                        ; preds = %do.end15.i354.i
  %flags.i357403.i = getelementptr inbounds %struct.sched_domain, ptr %186, i32 0, i32 9
  %187 = ptrtoint ptr %flags.i357403.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %flags.i357403.i, align 4
  %and.i358404.i = and i32 %188, 1024
  %tobool18.not.i359405.i = icmp eq i32 %and.i358404.i, 0
  br i1 %tobool18.not.i359405.i, label %highest_flag_domain.exit364.i, label %if.end20.i362.i

for.body.i360.i:                                  ; preds = %if.end20.i362.i
  %flags.i357.i = getelementptr inbounds %struct.sched_domain, ptr %192, i32 0, i32 9
  %189 = ptrtoint ptr %flags.i357.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %flags.i357.i, align 4
  %and.i358.i = and i32 %190, 1024
  %tobool18.not.i359.i = icmp eq i32 %and.i358.i, 0
  br i1 %tobool18.not.i359.i, label %highest_flag_domain.exit364.i, label %if.end20.i362.i

if.end20.i362.i:                                  ; preds = %for.body.i360.i, %for.body.i360.preheader.i
  %sd.027.i355406.i = phi ptr [ %192, %for.body.i360.i ], [ %186, %for.body.i360.preheader.i ]
  %191 = ptrtoint ptr %sd.027.i355406.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %sd.027.i355406.i, align 8
  %tobool17.not.i361.i = icmp eq ptr %192, null
  br i1 %tobool17.not.i361.i, label %highest_flag_domain.exit364.i, label %for.body.i360.i

highest_flag_domain.exit364.i:                    ; preds = %if.end20.i362.i, %for.body.i360.i, %for.body.i360.preheader.i, %do.end15.i354.i
  %hsd.0.lcssa.i363.i = phi ptr [ null, %do.end15.i354.i ], [ null, %for.body.i360.preheader.i ], [ %sd.027.i355406.i, %for.body.i360.i ], [ %sd.027.i355406.i, %if.end20.i362.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !321
  %193 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx, align 4
  %add229.i = add i32 %194, ptrtoint (ptr @sd_asym_packing to i32)
  %195 = inttoptr i32 %add229.i to ptr
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_store4_noabort(i32 %196)
  store volatile ptr %hsd.0.lcssa.i363.i, ptr %195, align 4
  %197 = load i32, ptr %arrayidx, align 4
  %add.i366.i = add i32 %197, ptrtoint (ptr @runqueues to i32)
  %198 = inttoptr i32 %add.i366.i to ptr
  %sd6.i367.i = getelementptr inbounds %struct.rq, ptr %198, i32 0, i32 36
  %199 = ptrtoint ptr %sd6.i367.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load volatile ptr, ptr %sd6.i367.i, align 4
  %call.i.i368.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @sched_domains_mutex, i32 0, i32 5), i32 noundef -1) #15
  %tobool.not.i369.i = icmp eq i32 %call.i.i368.i, 0
  br i1 %tobool.not.i369.i, label %lor.lhs.false.i372.i, label %do.end15.i380.i

lor.lhs.false.i372.i:                             ; preds = %highest_flag_domain.exit364.i
  %call8.i370.i = call i32 @rcu_read_lock_held() #15
  %tobool9.not.i371.i = icmp eq i32 %call8.i370.i, 0
  br i1 %tobool9.not.i371.i, label %land.lhs.true.i375.i, label %do.end15.i380.i

land.lhs.true.i375.i:                             ; preds = %lor.lhs.false.i372.i
  %call10.i373.i = call i32 @debug_lockdep_rcu_enabled() #15
  %tobool11.not.i374.i = icmp eq i32 %call10.i373.i, 0
  br i1 %tobool11.not.i374.i, label %do.end15.i380.i, label %land.lhs.true12.i377.i

land.lhs.true12.i377.i:                           ; preds = %land.lhs.true.i375.i
  %.b24.i376.i = load i1, ptr @lowest_flag_domain.__warned, align 1
  br i1 %.b24.i376.i, label %do.end15.i380.i, label %if.then.i378.i

if.then.i378.i:                                   ; preds = %land.lhs.true12.i377.i
  store i1 true, ptr @lowest_flag_domain.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.108, i32 noundef 1757, ptr noundef nonnull @.str.109) #15
  br label %do.end15.i380.i

do.end15.i380.i:                                  ; preds = %if.then.i378.i, %land.lhs.true12.i377.i, %land.lhs.true.i375.i, %lor.lhs.false.i372.i, %highest_flag_domain.exit364.i
  %tobool17.not25.i379.i = icmp eq ptr %200, null
  br i1 %tobool17.not25.i379.i, label %update_top_cache_domain.exit, label %for.body.i385.i

for.body.i385.i:                                  ; preds = %for.inc.i387.i, %do.end15.i380.i
  %sd.026.i381.i = phi ptr [ %204, %for.inc.i387.i ], [ %200, %do.end15.i380.i ]
  %flags.i382.i = getelementptr inbounds %struct.sched_domain, ptr %sd.026.i381.i, i32 0, i32 9
  %201 = ptrtoint ptr %flags.i382.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %flags.i382.i, align 4
  %and.i383.i = and i32 %202, 64
  %tobool18.not.i384.i = icmp eq i32 %and.i383.i, 0
  br i1 %tobool18.not.i384.i, label %for.inc.i387.i, label %update_top_cache_domain.exit

for.inc.i387.i:                                   ; preds = %for.body.i385.i
  %203 = ptrtoint ptr %sd.026.i381.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %sd.026.i381.i, align 8
  %tobool17.not.i386.i = icmp eq ptr %204, null
  br i1 %tobool17.not.i386.i, label %update_top_cache_domain.exit, label %for.body.i385.i

update_top_cache_domain.exit:                     ; preds = %for.inc.i387.i, %for.body.i385.i, %do.end15.i380.i
  %sd.0.lcssa.i388.i = phi ptr [ null, %do.end15.i380.i ], [ %sd.026.i381.i, %for.body.i385.i ], [ null, %for.inc.i387.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !322
  %205 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx, align 4
  %add287.i = add i32 %206, ptrtoint (ptr @sd_asym_cpucapacity to i32)
  %207 = inttoptr i32 %add287.i to ptr
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_store4_noabort(i32 %208)
  store volatile ptr %sd.0.lcssa.i388.i, ptr %207, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #12 align 64 {
entry:
  %call = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call, label %do.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %do.end, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.110) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !315
  %0 = tail call i32 @llvm.read_register.i32(metadata !289) #15
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_slow_inc_cpuslocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_subset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_next_wrap(i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_sched_groups(ptr noundef %sg, i32 noundef %free_sgc) unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sg, null
  br i1 %tobool.not, label %cleanup, label %do.body.preheader

do.body.preheader:                                ; preds = %entry
  %tobool1.not = icmp eq i32 %free_sgc, 0
  br label %do.body

do.body:                                          ; preds = %if.end8, %do.body.preheader
  %sg.addr.0 = phi ptr [ %1, %if.end8 ], [ %sg, %do.body.preheader ]
  %0 = ptrtoint ptr %sg.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg.addr.0, align 4
  br i1 %tobool1.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %sgc = getelementptr inbounds %struct.sched_group, ptr %sg.addr.0, i32 0, i32 3
  %2 = ptrtoint ptr %sgc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sgc, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !302
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #15, !srcloc !303
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !304
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then2, label %if.end4

if.then2:                                         ; preds = %land.lhs.true
  %5 = ptrtoint ptr %sgc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sgc, align 4
  tail call void @kfree(ptr noundef %6) #15
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %land.lhs.true, %do.body
  %ref5 = getelementptr inbounds %struct.sched_group, ptr %sg.addr.0, i32 0, i32 1
  %call.i.i17 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref5, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !302
  tail call void @llvm.prefetch.p0(ptr %ref5, i32 1, i32 3, i32 1) #15
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref5, ptr %ref5, i32 1, ptr elementtype(i32) %ref5) #15, !srcloc !303
  %asmresult.i.i.i.i.i18 = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !304
  %cmp.i.i19 = icmp eq i32 %asmresult.i.i.i.i.i18, 0
  br i1 %cmp.i.i19, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  tail call void @kfree(ptr noundef %sg.addr.0) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4
  %cmp.not = icmp eq ptr %1, %sg
  br i1 %cmp.not, label %cleanup, label %do.body

cleanup:                                          ; preds = %if.end8, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_group_capacity(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_asym_cpu_priority(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #12 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dirty_sched_domain_sysctl(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @destroy_sched_domains_rcu(ptr noundef %rcu) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -228
  %tobool.not4 = icmp eq ptr %add.ptr, null
  br i1 %tobool.not4, label %while.end, label %while.body

while.body:                                       ; preds = %destroy_sched_domain.exit, %entry
  %sd.05 = phi ptr [ %1, %destroy_sched_domain.exit ], [ %add.ptr, %entry ]
  %0 = ptrtoint ptr %sd.05 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd.05, align 8
  %groups.i = getelementptr inbounds %struct.sched_domain, ptr %sd.05, i32 0, i32 2
  %2 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups.i, align 8
  tail call fastcc void @free_sched_groups(ptr noundef %3, i32 noundef 1) #15
  %shared.i = getelementptr inbounds %struct.sched_domain, ptr %sd.05, i32 0, i32 39
  %4 = ptrtoint ptr %shared.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shared.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %destroy_sched_domain.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %while.body
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !302
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #15
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #15, !srcloc !303
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !304
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %destroy_sched_domain.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %7 = ptrtoint ptr %shared.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %shared.i, align 4
  tail call void @kfree(ptr noundef %8) #15
  br label %destroy_sched_domain.exit

destroy_sched_domain.exit:                        ; preds = %if.then.i, %land.lhs.true.i, %while.body
  tail call void @kfree(ptr noundef nonnull %sd.05) #15
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %destroy_sched_domain.exit, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #12 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_equal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_slow_dec_cpuslocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @destroy_perf_domain_rcu(ptr noundef %rp) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rp, i32 -8
  %tobool.not3.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not3.i, label %free_pd.exit, label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %entry
  %pd.addr.04.i = phi ptr [ %1, %while.body.i ], [ %add.ptr, %entry ]
  %next.i = getelementptr inbounds %struct.perf_domain, ptr %pd.addr.04.i, i32 0, i32 1
  %0 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next.i, align 4
  tail call void @kfree(ptr noundef nonnull %pd.addr.04.i) #15
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %free_pd.exit, label %while.body.i

free_pd.exit:                                     ; preds = %while.body.i, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_disable_cpuslocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable_cpuslocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind readonly }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !46, !48, !50, !51, !53, !55, !57, !59, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !93, !95, !97, !99, !100, !102, !103, !105, !106, !107, !109, !110, !111, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !131, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !148, !149, !151, !153, !155, !157, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !252, !253, !254, !256, !257, !258, !260, !261, !262, !264, !266, !267, !269, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !285, !287, !288}
!llvm.named.register.sp = !{!289}
!llvm.module.flags = !{!290, !291, !292, !293, !294, !295, !296, !297}
!llvm.ident = !{!298}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/sched/topology.c", i32 7, i32 1}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @sched_domains_mutex, !1, !"sched_domains_mutex", i1 false, i1 false}
!4 = !{ptr @__setup_sched_debug_setup, !5, !"__setup_sched_debug_setup", i1 false, i1 false}
!5 = !{!"../kernel/sched/topology.c", i32 21, i32 1}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/sched/sd_flags.h", i32 51, i32 1}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/sched/sd_flags.h", i32 59, i32 1}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/sched/sd_flags.h", i32 67, i32 1}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/sched/sd_flags.h", i32 75, i32 1}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/sched/sd_flags.h", i32 82, i32 1}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/sched/sd_flags.h", i32 91, i32 1}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/sched/sd_flags.h", i32 101, i32 1}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/sched/sd_flags.h", i32 110, i32 1}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/sched/sd_flags.h", i32 119, i32 1}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/sched/sd_flags.h", i32 130, i32 1}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/sched/sd_flags.h", i32 140, i32 1}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/sched/sd_flags.h", i32 150, i32 1}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/sched/sd_flags.h", i32 158, i32 1}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/sched/sd_flags.h", i32 166, i32 1}
!34 = !{ptr @sd_flag_debug, !35, !"sd_flag_debug", i1 false, i1 false}
!35 = !{!"../kernel/sched/topology.c", i32 29, i32 28}
!36 = !{ptr @sched_energy_present, !37, !"sched_energy_present", i1 false, i1 false}
!37 = !{!"../kernel/sched/topology.c", i32 209, i32 1}
!38 = !{ptr @sysctl_sched_energy_aware, !39, !"sysctl_sched_energy_aware", i1 false, i1 false}
!39 = !{!"../kernel/sched/topology.c", i32 210, i32 14}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/sched/topology.c", i32 211, i32 1}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @sched_energy_mutex, !41, !"sched_energy_mutex", i1 false, i1 false}
!44 = !{ptr @sched_asym_cpucapacity, !45, !"sched_asym_cpucapacity", i1 false, i1 false}
!45 = !{!"../kernel/sched/topology.c", i32 651, i32 1}
!46 = !{ptr @__setup_setup_relax_domain_level, !47, !"__setup_setup_relax_domain_level", i1 false, i1 false}
!47 = !{!"../kernel/sched/topology.c", i32 1405, i32 1}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../kernel/sched/topology.c", i32 1660, i32 6}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../kernel/sched/topology.c", i32 2437, i32 3}
!53 = !{ptr @sched_domains_tmpmask, !54, !"sched_domains_tmpmask", i1 false, i1 false}
!54 = !{!"../kernel/sched/topology.c", i32 10, i32 22}
!55 = !{ptr @sched_domains_tmpmask2, !56, !"sched_domains_tmpmask2", i1 false, i1 false}
!56 = !{!"../kernel/sched/topology.c", i32 11, i32 22}
!57 = !{ptr @sched_energy_update, !58, !"sched_energy_update", i1 false, i1 false}
!58 = !{!"../kernel/sched/topology.c", i32 212, i32 6}
!59 = !{ptr @def_root_domain, !60, !"def_root_domain", i1 false, i1 false}
!60 = !{!"../kernel/sched/topology.c", i32 559, i32 20}
!61 = !{ptr @__pcpu_scope_sd_llc, !62, !"__pcpu_scope_sd_llc", i1 false, i1 false}
!62 = !{!"../kernel/sched/topology.c", i32 644, i32 1}
!63 = !{ptr @__pcpu_unique_sd_llc, !62, !"__pcpu_unique_sd_llc", i1 false, i1 false}
!64 = !{ptr @sd_llc, !62, !"sd_llc", i1 false, i1 false}
!65 = !{ptr @__pcpu_scope_sd_llc_size, !66, !"__pcpu_scope_sd_llc_size", i1 false, i1 false}
!66 = !{!"../kernel/sched/topology.c", i32 645, i32 1}
!67 = !{ptr @__pcpu_unique_sd_llc_size, !66, !"__pcpu_unique_sd_llc_size", i1 false, i1 false}
!68 = !{ptr @sd_llc_size, !66, !"sd_llc_size", i1 false, i1 false}
!69 = !{ptr @__pcpu_scope_sd_llc_id, !70, !"__pcpu_scope_sd_llc_id", i1 false, i1 false}
!70 = !{!"../kernel/sched/topology.c", i32 646, i32 1}
!71 = !{ptr @__pcpu_unique_sd_llc_id, !70, !"__pcpu_unique_sd_llc_id", i1 false, i1 false}
!72 = !{ptr @sd_llc_id, !70, !"sd_llc_id", i1 false, i1 false}
!73 = !{ptr @__pcpu_scope_sd_llc_shared, !74, !"__pcpu_scope_sd_llc_shared", i1 false, i1 false}
!74 = !{!"../kernel/sched/topology.c", i32 647, i32 1}
!75 = !{ptr @__pcpu_unique_sd_llc_shared, !74, !"__pcpu_unique_sd_llc_shared", i1 false, i1 false}
!76 = !{ptr @sd_llc_shared, !74, !"sd_llc_shared", i1 false, i1 false}
!77 = !{ptr @__pcpu_scope_sd_numa, !78, !"__pcpu_scope_sd_numa", i1 false, i1 false}
!78 = !{!"../kernel/sched/topology.c", i32 648, i32 1}
!79 = !{ptr @__pcpu_unique_sd_numa, !78, !"__pcpu_unique_sd_numa", i1 false, i1 false}
!80 = !{ptr @sd_numa, !78, !"sd_numa", i1 false, i1 false}
!81 = !{ptr @__pcpu_scope_sd_asym_packing, !82, !"__pcpu_scope_sd_asym_packing", i1 false, i1 false}
!82 = !{!"../kernel/sched/topology.c", i32 649, i32 1}
!83 = !{ptr @__pcpu_unique_sd_asym_packing, !82, !"__pcpu_unique_sd_asym_packing", i1 false, i1 false}
!84 = !{ptr @sd_asym_packing, !82, !"sd_asym_packing", i1 false, i1 false}
!85 = !{ptr @__pcpu_scope_sd_asym_cpucapacity, !86, !"__pcpu_scope_sd_asym_cpucapacity", i1 false, i1 false}
!86 = !{!"../kernel/sched/topology.c", i32 650, i32 1}
!87 = !{ptr @__pcpu_unique_sd_asym_cpucapacity, !86, !"__pcpu_unique_sd_asym_cpucapacity", i1 false, i1 false}
!88 = !{ptr @sd_asym_cpucapacity, !86, !"sd_asym_cpucapacity", i1 false, i1 false}
!89 = !{ptr @sched_domain_level_max, !90, !"sched_domain_level_max", i1 false, i1 false}
!90 = !{!"../kernel/sched/topology.c", i32 1396, i32 5}
!91 = !{ptr @doms_cur, !92, !"doms_cur", i1 false, i1 false}
!92 = !{!"../kernel/sched/topology.c", i32 2286, i32 25}
!93 = !{ptr @ndoms_cur, !94, !"ndoms_cur", i1 false, i1 false}
!94 = !{!"../kernel/sched/topology.c", i32 2289, i32 15}
!95 = !{ptr @dattr_cur, !96, !"dattr_cur", i1 false, i1 false}
!96 = !{!"../kernel/sched/topology.c", i32 2292, i32 35}
!97 = !{ptr @fallback_doms, !98, !"fallback_doms", i1 false, i1 false}
!98 = !{!"../kernel/sched/topology.c", i32 2299, i32 24}
!99 = !{ptr @__setup_str_sched_debug_setup, !5, !"__setup_str_sched_debug_setup", i1 false, i1 false}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!102 = !{ptr @.str.19, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @init_rootdomain.__key, !104, !"__key", i1 false, i1 false}
!104 = !{!"../kernel/sched/topology.c", i32 528, i32 2}
!105 = !{ptr @.str.20, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @__setup_str_setup_relax_domain_level, !47, !"__setup_str_setup_relax_domain_level", i1 false, i1 false}
!107 = !{ptr @.str.21, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../kernel/sched/topology.c", i32 1401, i32 3}
!109 = !{ptr @.str.22, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @setup_relax_domain_level._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @setup_relax_domain_level._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @default_relax_domain_level, !113, !"default_relax_domain_level", i1 false, i1 false}
!113 = !{!"../kernel/sched/topology.c", i32 1395, i32 12}
!114 = !{ptr @sched_domain_topology, !115, !"sched_domain_topology", i1 false, i1 false}
!115 = !{!"../kernel/sched/topology.c", i32 1652, i32 44}
!116 = !{ptr @.str.23, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../kernel/sched/topology.c", i32 1638, i32 33}
!118 = !{ptr @.str.24, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../kernel/sched/topology.c", i32 1646, i32 40}
!120 = !{ptr @.str.25, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../kernel/sched/topology.c", i32 1648, i32 18}
!122 = !{ptr @default_topology, !123, !"default_topology", i1 false, i1 false}
!123 = !{!"../kernel/sched/topology.c", i32 1636, i32 43}
!124 = !{ptr @asym_cap_list, !125, !"asym_cap_list", i1 false, i1 false}
!125 = !{!"../kernel/sched/topology.c", i32 1295, i32 8}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../kernel/sched/topology.c", i32 1348, i32 6}
!128 = !{ptr @.str.26, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.27, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../kernel/sched/topology.c", i32 2274, i32 3}
!131 = !{ptr @.str.28, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @build_sched_domains._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @build_sched_domains._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.29, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../kernel/sched/topology.c", i32 2134, i32 4}
!136 = !{ptr @.str.30, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @build_sched_domain._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @build_sched_domain._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.32, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../kernel/sched/topology.c", i32 2136, i32 4}
!141 = !{ptr @build_sched_domain._entry.31, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @build_sched_domain._entry_ptr.33, !140, !"_entry_ptr", i1 false, i1 false}
!143 = distinct !{null, !144, !"__already_done", i1 false, i1 false}
!144 = !{!"../kernel/sched/topology.c", i32 1542, i32 6}
!145 = !{ptr @.str.34, !144, !"<string literal>", i1 false, i1 false}
!146 = distinct !{null, !147, !"__already_done", i1 false, i1 false}
!147 = !{!"../kernel/sched/topology.c", i32 1583, i32 2}
!148 = !{ptr @.str.36, !147, !"<string literal>", i1 false, i1 false}
!149 = distinct !{null, !150, !"__already_done", i1 false, i1 false}
!150 = !{!"../kernel/sched/topology.c", i32 1323, i32 2}
!151 = distinct !{null, !152, !"__already_done", i1 false, i1 false}
!152 = !{!"../kernel/sched/topology.c", i32 953, i32 3}
!153 = distinct !{null, !154, !"__already_done", i1 false, i1 false}
!154 = !{!"../kernel/sched/topology.c", i32 906, i32 2}
!155 = distinct !{null, !156, !"__already_done", i1 false, i1 false}
!156 = !{!"../kernel/sched/topology.c", i32 1473, i32 2}
!157 = distinct !{null, !158, !"__warned", i1 false, i1 false}
!158 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!159 = !{ptr @.str.37, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.38, !158, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.39, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../kernel/sched/topology.c", i32 138, i32 3}
!163 = !{ptr @.str.40, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @sched_domain_debug._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @sched_domain_debug._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.42, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../kernel/sched/topology.c", i32 142, i32 2}
!168 = !{ptr @sched_domain_debug._entry.41, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @sched_domain_debug._entry_ptr.43, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.44, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../kernel/sched/topology.c", i32 43, i32 2}
!172 = !{ptr @.str.45, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @sched_domain_debug_one._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @sched_domain_debug_one._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.46, !171, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.48, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../kernel/sched/topology.c", i32 44, i32 2}
!178 = !{ptr @sched_domain_debug_one._entry.47, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @sched_domain_debug_one._entry_ptr.49, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.51, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../kernel/sched/topology.c", i32 48, i32 3}
!182 = !{ptr @sched_domain_debug_one._entry.50, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @sched_domain_debug_one._entry_ptr.52, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.54, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../kernel/sched/topology.c", i32 51, i32 3}
!186 = !{ptr @sched_domain_debug_one._entry.53, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @sched_domain_debug_one._entry_ptr.55, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.57, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../kernel/sched/topology.c", i32 60, i32 4}
!190 = !{ptr @sched_domain_debug_one._entry.56, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @sched_domain_debug_one._entry_ptr.58, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.60, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../kernel/sched/topology.c", i32 65, i32 4}
!194 = !{ptr @sched_domain_debug_one._entry.59, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @sched_domain_debug_one._entry_ptr.61, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.63, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../kernel/sched/topology.c", i32 69, i32 2}
!198 = !{ptr @sched_domain_debug_one._entry.62, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @sched_domain_debug_one._entry_ptr.64, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.66, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../kernel/sched/topology.c", i32 72, i32 4}
!202 = !{ptr @sched_domain_debug_one._entry.65, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @sched_domain_debug_one._entry_ptr.67, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.69, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../kernel/sched/topology.c", i32 73, i32 4}
!206 = !{ptr @sched_domain_debug_one._entry.68, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @sched_domain_debug_one._entry_ptr.70, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.72, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../kernel/sched/topology.c", i32 78, i32 4}
!210 = !{ptr @sched_domain_debug_one._entry.71, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @sched_domain_debug_one._entry_ptr.73, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.75, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../kernel/sched/topology.c", i32 79, i32 4}
!214 = !{ptr @sched_domain_debug_one._entry.74, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @sched_domain_debug_one._entry_ptr.76, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @sched_domain_debug_one._entry.77, !217, !"_entry", i1 false, i1 false}
!217 = !{!"../kernel/sched/topology.c", i32 85, i32 4}
!218 = !{ptr @sched_domain_debug_one._entry_ptr.78, !217, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.80, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../kernel/sched/topology.c", i32 86, i32 4}
!221 = !{ptr @sched_domain_debug_one._entry.79, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @sched_domain_debug_one._entry_ptr.81, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.83, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../kernel/sched/topology.c", i32 92, i32 3}
!225 = !{ptr @sched_domain_debug_one._entry.82, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @sched_domain_debug_one._entry_ptr.84, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.86, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../kernel/sched/topology.c", i32 98, i32 4}
!229 = !{ptr @sched_domain_debug_one._entry.85, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @sched_domain_debug_one._entry_ptr.87, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.89, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../kernel/sched/topology.c", i32 103, i32 4}
!233 = !{ptr @sched_domain_debug_one._entry.88, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @sched_domain_debug_one._entry_ptr.90, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.92, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../kernel/sched/topology.c", i32 108, i32 4}
!237 = !{ptr @sched_domain_debug_one._entry.91, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @sched_domain_debug_one._entry_ptr.93, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.95, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../kernel/sched/topology.c", i32 111, i32 3}
!241 = !{ptr @sched_domain_debug_one._entry.94, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @sched_domain_debug_one._entry_ptr.96, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.98, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../kernel/sched/topology.c", i32 116, i32 4}
!245 = !{ptr @sched_domain_debug_one._entry.97, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @sched_domain_debug_one._entry_ptr.99, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @sched_domain_debug_one._entry.100, !248, !"_entry", i1 false, i1 false}
!248 = !{!"../kernel/sched/topology.c", i32 119, i32 2}
!249 = !{ptr @sched_domain_debug_one._entry_ptr.101, !248, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.103, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../kernel/sched/topology.c", i32 122, i32 3}
!252 = !{ptr @sched_domain_debug_one._entry.102, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @sched_domain_debug_one._entry_ptr.104, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.106, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../kernel/sched/topology.c", i32 126, i32 3}
!256 = !{ptr @sched_domain_debug_one._entry.105, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @sched_domain_debug_one._entry_ptr.107, !255, !"_entry_ptr", i1 false, i1 false}
!258 = distinct !{null, !259, !"__warned", i1 false, i1 false}
!259 = !{!"../kernel/sched/sched.h", i32 1744, i32 2}
!260 = !{ptr @.str.108, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @.str.109, !259, !"<string literal>", i1 false, i1 false}
!262 = distinct !{null, !263, !"__warned", i1 false, i1 false}
!263 = !{!"../kernel/sched/sched.h", i32 1757, i32 2}
!264 = distinct !{null, !265, !"__warned", i1 false, i1 false}
!265 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!266 = !{ptr @.str.110, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.111, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../kernel/sched/topology.c", i32 367, i32 4}
!269 = !{ptr @.str.112, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @build_perf_domains._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @build_perf_domains._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.114, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../kernel/sched/topology.c", i32 375, i32 3}
!274 = !{ptr @build_perf_domains._entry.113, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @build_perf_domains._entry_ptr.115, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.117, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../kernel/sched/topology.c", i32 382, i32 4}
!278 = !{ptr @build_perf_domains._entry.116, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @build_perf_domains._entry_ptr.118, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.119, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../kernel/sched/topology.c", i32 315, i32 4}
!282 = !{ptr @.str.120, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @sched_energy_set._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @sched_energy_set._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.122, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../kernel/sched/topology.c", i32 319, i32 4}
!287 = !{ptr @sched_energy_set._entry.121, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @sched_energy_set._entry_ptr.123, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{!"sp"}
!290 = !{i32 1, !"wchar_size", i32 2}
!291 = !{i32 1, !"min_enum_size", i32 4}
!292 = !{i32 8, !"branch-target-enforcement", i32 0}
!293 = !{i32 8, !"sign-return-address", i32 0}
!294 = !{i32 8, !"sign-return-address-all", i32 0}
!295 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!296 = !{i32 7, !"uwtable", i32 1}
!297 = !{i32 7, !"frame-pointer", i32 2}
!298 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!299 = !{i64 2148379185, i64 2148379190, i64 2148379203, i64 2148379247, i64 2148379281, i64 2148379302}
!300 = !{i64 960050, i64 960111}
!301 = !{!"branch_weights", i32 2000, i32 1}
!302 = !{i64 2148654244}
!303 = !{i64 2148568977, i64 2148569009, i64 2148569038, i64 2148569072, i64 2148569103, i64 2148569126}
!304 = !{i64 2148654473}
!305 = !{i64 2148565792, i64 2148565818, i64 2148565847, i64 2148565881, i64 2148565912, i64 2148565935}
!306 = !{i64 962782}
!307 = !{!"branch_weights", i32 1, i32 2000}
!308 = !{i64 963067}
!309 = !{i8 0, i8 2}
!310 = !{!"branch_weights", i32 2146410443, i32 1073205}
!311 = !{i64 2148651203}
!312 = !{i64 2148566512, i64 2148566544, i64 2148566573, i64 2148566607, i64 2148566638, i64 2148566661}
!313 = !{i64 2148651432}
!314 = !{i64 2149393306}
!315 = !{i64 2149393572}
!316 = !{i64 2148379588, i64 2148379593, i64 2148379614, i64 2148379658, i64 2148379692, i64 2148379713}
!317 = !{i64 2158849429}
!318 = !{i64 2158634128}
!319 = !{i64 2158682846}
!320 = !{i64 2158729191}
!321 = !{i64 2158777066}
!322 = !{i64 2158827301}
