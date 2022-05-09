; ModuleID = '/llk/IR_all_yes/net/ax25/ax25_route.c_pt.bc'
source_filename = "../net/ax25/ax25_route.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.ax25_address = type { [7 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ax25_route = type { ptr, %struct.refcount_struct, %struct.ax25_address, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ax25_route_opt_struct = type { %struct.ax25_address, %struct.ax25_address, i32, i32 }
%struct.ax25_routes_struct = type { %struct.ax25_address, %struct.ax25_address, i8, [8 x %struct.ax25_address] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ax25_dev = type { ptr, ptr, ptr, ptr, ptr, [14 x i32], %struct.ax25_dama_info, %struct.refcount_struct }
%struct.ax25_dama_info = type { i8, %struct.timer_list, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ax25_digi = type { [8 x %struct.ax25_address], [8 x i8], i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.14 }
%union.anon.14 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ax25_cb = type { %struct.hlist_node, %struct.ax25_address, %struct.ax25_address, ptr, ptr, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, i32, i16, i16, i16, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, i8, %struct.timer_list, %struct.timer_list, ptr, %struct.refcount_struct }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.70, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%struct.llist_node = type { ptr }
%union.anon.22 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.41 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.41 = type { %struct.callback_head }
%struct.ax25_uid_assoc = type { %struct.hlist_node, %struct.refcount_struct, %struct.kuid_t, %struct.ax25_address }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.104, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.105, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.106, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.4, %union.anon.6, %union.anon.7, i16, i8, i8, i32, %union.anon.9, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.100, [0 x i32], %union.anon.101, i16, i16, %union.anon.102, %struct.refcount_struct, [0 x i32], %union.anon.103 }
%union.anon.4 = type { i64 }
%union.anon.6 = type { i32 }
%union.anon.7 = type { i32 }
%union.anon.9 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { %struct.hlist_node }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.104 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.105 = type { ptr }
%union.anon.106 = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.sk_buff = type { %union.anon.0, %union.anon.3, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ax25_route_lock\00", [16 x i8] zeroinitializer }, align 32
@ax25_route_lock = dso_local global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@ax25_route_list = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ax25_rt_seqops = dso_local constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ax25_rt_seq_start, ptr @ax25_rt_seq_stop, ptr @ax25_rt_seq_next, ptr @ax25_rt_seq_show }, [16 x i8] zeroinitializer }, align 32
@null_ax25_address = external dso_local constant %struct.ax25_address, align 1
@ax25_uid_policy = external dso_local local_unnamed_addr global i32, align 4
@ax25_rt_build_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\012AX.25: ax25_dg_build_path - out of memory\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ax25_rt_build_path\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/ax25/ax25_route.c\00", [42 x i8] zeroinitializer }, align 32
@ax25_rt_build_path._entry_ptr = internal global ptr @ax25_rt_build_path._entry, section ".printk_index", align 4
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"callsign  dev  mode digipeaters\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%-9s %-4s\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"   vc\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"   dg\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"    *\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 35083, i64 35084, i64 35303]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 68, i64 86]
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"ax25_route_lock\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 40, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"ax25_route_list\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 39, i32 20 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"ax25_rt_seqops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 332, i32 29 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 461, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 156, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 295, i32 17 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 302, i32 15 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 306, i32 19 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 308, i32 40 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 312, i32 18 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 315, i32 18 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 318, i32 18 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 324, i32 21 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [25 x i8] c"../net/ax25/ax25_route.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 327, i32 17 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @ax25_rt_build_path._entry, ptr @ax25_rt_build_path._entry_ptr, ptr @ax25_rt_free, ptr @.str, ptr @ax25_route_lock, ptr @ax25_route_list, ptr @ax25_rt_seqops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_route_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_route_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_rt_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_rt_build_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_rt_device_down(ptr noundef readnone %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @ax25_route_lock) #10
  %0 = load ptr, ptr @ax25_route_list, align 4
  %cmp.not31 = icmp eq ptr %0, null
  br i1 %cmp.not31, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end15.while.body_crit_edge, %entry.while.body_crit_edge
  %ax25_rt.032 = phi ptr [ %2, %if.end15.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %1 = ptrtoint ptr %ax25_rt.032 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ax25_rt.032, align 4
  %dev1 = getelementptr inbounds %struct.ax25_route, ptr %ax25_rt.032, i32 0, i32 3
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  %cmp2 = icmp eq ptr %4, %dev
  br i1 %cmp2, label %if.then, label %while.body.if.end15_crit_edge

while.body.if.end15_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr @ax25_route_list, align 4
  %cmp3 = icmp eq ptr %5, %ax25_rt.032
  br i1 %cmp3, label %if.then.if.end15.sink.split_crit_edge, label %if.then.for.cond_crit_edge

if.then.for.cond_crit_edge:                       ; preds = %if.then
  br label %for.cond

if.then.if.end15.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then.for.cond_crit_edge
  %t.0 = phi ptr [ %7, %for.body.for.cond_crit_edge ], [ %5, %if.then.for.cond_crit_edge ]
  %cmp6.not = icmp eq ptr %t.0, null
  br i1 %cmp6.not, label %for.cond.if.end15_crit_edge, label %for.body

for.cond.if.end15_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

for.body:                                         ; preds = %for.cond
  %6 = ptrtoint ptr %t.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t.0, align 4
  %cmp8 = icmp eq ptr %7, %ax25_rt.032
  br i1 %cmp8, label %for.body.if.end15.sink.split_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.body.if.end15.sink.split_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %for.body.if.end15.sink.split_crit_edge, %if.then.if.end15.sink.split_crit_edge
  %ax25_route_list.sink = phi ptr [ @ax25_route_list, %if.then.if.end15.sink.split_crit_edge ], [ %t.0, %for.body.if.end15.sink.split_crit_edge ]
  %8 = ptrtoint ptr %ax25_route_list.sink to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %2, ptr %ax25_route_list.sink, align 4
  %digipeat = getelementptr inbounds %struct.ax25_route, ptr %ax25_rt.032, i32 0, i32 4
  %9 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %digipeat, align 4
  tail call void @kfree(ptr noundef %10) #10
  tail call void @kfree(ptr noundef nonnull %ax25_rt.032) #10
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %for.cond.if.end15_crit_edge, %while.body.if.end15_crit_edge
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %if.end15.while.end_crit_edge, label %if.end15.while.body_crit_edge

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end15.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @ax25_route_lock) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__ax25_put_route(ptr noundef %ax25_rt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %digipeat = getelementptr inbounds %struct.ax25_route, ptr %ax25_rt, i32 0, i32 4
  %0 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %digipeat, align 4
  tail call void @kfree(ptr noundef %1) #10
  tail call void @kfree(ptr noundef %ax25_rt) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ax25_rt_ioctl(i32 noundef %cmd, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %rt_option = alloca %struct.ax25_route_opt_struct, align 4
  %route = alloca %struct.ax25_routes_struct, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rt_option) #10
  %0 = call ptr @memset(ptr %rt_option, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 71, ptr nonnull %route) #10
  %1 = call ptr @memset(ptr %route, i32 255, i32 71)
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 35083, label %if.end59.i.i
    i32 35084, label %if.end59.i.i20
    i32 35303, label %if.end59.i.i43
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end59.i.i:                                     ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 71, i32 -1226833920) #13, !srcloc !50
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !51

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %route, i32 noundef 71) #10
  %4 = call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !52
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !53
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %route, ptr noundef %arg, i32 noundef 71) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #10, !srcloc !53
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !51

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i113 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 71, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 71, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 71, %res.0.i.i113
  %add.ptr.i.i = getelementptr i8, ptr %route, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i113)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %digi_count.i = getelementptr inbounds %struct.ax25_routes_struct, ptr %route, i32 0, i32 2
  %8 = ptrtoint ptr %digi_count.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %digi_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %9)
  %cmp.i = icmp ugt i8 %9, 8
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call.i = call ptr @ax25_addr_ax25dev(ptr noundef nonnull %route) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @_raw_write_lock_bh(ptr noundef nonnull @ax25_route_lock) #10
  %ax25_rt.0174.i = load ptr, ptr @ax25_route_list, align 4
  %cmp4.not175.i = icmp eq ptr %ax25_rt.0174.i, null
  br i1 %cmp4.not175.i, label %if.end3.i.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end3.i.while.end.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end3.i
  %dest_addr.i = getelementptr inbounds %struct.ax25_routes_struct, ptr %route, i32 0, i32 1
  %dev9.i = getelementptr inbounds %struct.ax25_dev, ptr %call.i, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end37.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %ax25_rt.0176.i = phi ptr [ %ax25_rt.0174.i, %while.body.lr.ph.i ], [ %ax25_rt.0.i, %if.end37.i.while.body.i_crit_edge ]
  %callsign.i = getelementptr inbounds %struct.ax25_route, ptr %ax25_rt.0176.i, i32 0, i32 2
  %call6.i = call i32 @ax25cmp(ptr noundef %callsign.i, ptr noundef %dest_addr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp eq i32 %call6.i, 0
  br i1 %cmp7.i, label %land.lhs.true.i, label %while.body.i.if.end37.i_crit_edge

while.body.i.if.end37.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %dev.i = getelementptr inbounds %struct.ax25_route, ptr %ax25_rt.0176.i, i32 0, i32 3
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev9.i, align 4
  %cmp10.i = icmp eq ptr %11, %13
  br i1 %cmp10.i, label %if.then12.i, label %land.lhs.true.i.if.end37.i_crit_edge

land.lhs.true.i.if.end37.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  %digipeat.i = getelementptr inbounds %struct.ax25_route, ptr %ax25_rt.0176.i, i32 0, i32 4
  %14 = ptrtoint ptr %digipeat.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %digipeat.i, align 4
  call void @kfree(ptr noundef %15) #10
  %16 = ptrtoint ptr %digipeat.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %digipeat.i, align 4
  %17 = ptrtoint ptr %digi_count.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %digi_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp16.not.i = icmp eq i8 %18, 0
  br i1 %cmp16.not.i, label %if.then12.i.if.end36.i_crit_edge, label %if.then18.i

if.then12.i.if.end36.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.then18.i:                                      ; preds = %if.then12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 2592, i32 noundef 66) #14
  %20 = ptrtoint ptr %digipeat.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %digipeat.i, align 4
  %cmp21.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp21.i, label %if.then23.i, label %if.end24.i

if.then23.i:                                      ; preds = %if.then18.i
  call void @_raw_write_unlock_bh(ptr noundef nonnull @ax25_route_lock) #10
  %refcount.i.i = getelementptr inbounds %struct.ax25_dev, ptr %call.i, i32 0, i32 7
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #10
  %21 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #10, !srcloc !56
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i63, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !51

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i63:                                    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @kfree(ptr noundef nonnull %call.i) #10
  br label %cleanup

if.end24.i:                                       ; preds = %if.then18.i
  %lastrepeat.i = getelementptr inbounds %struct.ax25_digi, ptr %call7.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %lastrepeat.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %lastrepeat.i, align 1
  %23 = ptrtoint ptr %digi_count.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %digi_count.i, align 1
  %25 = ptrtoint ptr %digipeat.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %digipeat.i, align 4
  %ndigi.i = getelementptr inbounds %struct.ax25_digi, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %ndigi.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %24, ptr %ndigi.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp30178.not.i = icmp eq i8 %24, 0
  br i1 %cmp30178.not.i, label %if.end24.i.if.end36.i_crit_edge, label %if.end24.i.for.body.i_crit_edge

if.end24.i.for.body.i_crit_edge:                  ; preds = %if.end24.i
  br label %for.body.i

if.end24.i.if.end36.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end24.i.for.body.i_crit_edge
  %i.0179.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end24.i.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %digipeat.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %digipeat.i, align 4
  %arrayidx.i = getelementptr %struct.ax25_digi, ptr %29, i32 0, i32 1, i32 %i.0179.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx.i, align 1
  %31 = load ptr, ptr %digipeat.i, align 4
  %arrayidx34.i = getelementptr [8 x %struct.ax25_address], ptr %31, i32 0, i32 %i.0179.i
  %arrayidx35.i = getelementptr %struct.ax25_routes_struct, ptr %route, i32 0, i32 3, i32 %i.0179.i
  %32 = call ptr @memcpy(ptr %arrayidx34.i, ptr %arrayidx35.i, i32 7)
  %inc.i = add nuw nsw i32 %i.0179.i, 1
  %33 = ptrtoint ptr %digi_count.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %digi_count.i, align 1
  %conv29.i = zext i8 %34 to i32
  %cmp30.i = icmp ult i32 %inc.i, %conv29.i
  br i1 %cmp30.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end36.i_crit_edge

for.body.i.if.end36.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end36.i:                                       ; preds = %for.body.i.if.end36.i_crit_edge, %if.end24.i.if.end36.i_crit_edge, %if.then12.i.if.end36.i_crit_edge
  call void @_raw_write_unlock_bh(ptr noundef nonnull @ax25_route_lock) #10
  %refcount.i137.i = getelementptr inbounds %struct.ax25_dev, ptr %call.i, i32 0, i32 7
  %call.i.i.i.i.i.i138.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i137.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @llvm.prefetch.p0(ptr %refcount.i137.i, i32 1, i32 3, i32 1) #10
  %35 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i137.i, ptr %refcount.i137.i, i32 1, ptr elementtype(i32) %refcount.i137.i) #10, !srcloc !56
  %asmresult.i.i.i.i.i.i.i139.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i139.i)
  %cmp.i.i.i.i140.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i139.i, 1
  br i1 %cmp.i.i.i.i140.i, label %if.then.i144.i, label %if.end5.i.i.i.i142.i

if.end5.i.i.i.i142.i:                             ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i139.i)
  %.not.i.i.i.i141.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i139.i, 0
  br i1 %.not.i.i.i.i141.i, label %if.end5.i.i.i.i142.i.cleanup_crit_edge, label %if.then10.i.i.i.i143.i, !prof !51

if.end5.i.i.i.i142.i.cleanup_crit_edge:           ; preds = %if.end5.i.i.i.i142.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i143.i:                           ; preds = %if.end5.i.i.i.i142.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i137.i, i32 noundef 3) #10
  br label %cleanup

if.then.i144.i:                                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @kfree(ptr noundef nonnull %call.i) #10
  br label %cleanup

if.end37.i:                                       ; preds = %land.lhs.true.i.if.end37.i_crit_edge, %while.body.i.if.end37.i_crit_edge
  %36 = ptrtoint ptr %ax25_rt.0176.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %ax25_rt.0.i = load ptr, ptr %ax25_rt.0176.i, align 4
  %cmp4.not.i = icmp eq ptr %ax25_rt.0.i, null
  br i1 %cmp4.not.i, label %if.end37.i.while.end.i_crit_edge, label %if.end37.i.while.body.i_crit_edge

if.end37.i.while.body.i_crit_edge:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end37.i.while.end.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %if.end37.i.while.end.i_crit_edge, %if.end3.i.while.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i135.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 2592, i32 noundef 28) #14
  %cmp39.i = icmp eq ptr %call7.i135.i, null
  br i1 %cmp39.i, label %if.then41.i, label %if.end42.i

if.then41.i:                                      ; preds = %while.end.i
  call void @_raw_write_unlock_bh(ptr noundef nonnull @ax25_route_lock) #10
  %refcount.i146.i = getelementptr inbounds %struct.ax25_dev, ptr %call.i, i32 0, i32 7
  %call.i.i.i.i.i.i147.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i146.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @llvm.prefetch.p0(ptr %refcount.i146.i, i32 1, i32 3, i32 1) #10
  %38 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i146.i, ptr %refcount.i146.i, i32 1, ptr elementtype(i32) %refcount.i146.i) #10, !srcloc !56
  %asmresult.i.i.i.i.i.i.i148.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i148.i)
  %cmp.i.i.i.i149.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i148.i, 1
  br i1 %cmp.i.i.i.i149.i, label %if.then.i153.i, label %if.end5.i.i.i.i151.i

if.end5.i.i.i.i151.i:                             ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i148.i)
  %.not.i.i.i.i150.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i148.i, 0
  br i1 %.not.i.i.i.i150.i, label %if.end5.i.i.i.i151.i.cleanup_crit_edge, label %if.then10.i.i.i.i152.i, !prof !51

if.end5.i.i.i.i151.i.cleanup_crit_edge:           ; preds = %if.end5.i.i.i.i151.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i152.i:                           ; preds = %if.end5.i.i.i.i151.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i146.i, i32 noundef 3) #10
  br label %cleanup

if.then.i153.i:                                   ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @kfree(ptr noundef nonnull %call.i) #10
  br label %cleanup

if.end42.i:                                       ; preds = %while.end.i
  %refcount.i = getelementptr inbounds %struct.ax25_route, ptr %call7.i135.i, i32 0, i32 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  %39 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 1, ptr %refcount.i, align 4
  %callsign43.i = getelementptr inbounds %struct.ax25_route, ptr %call7.i135.i, i32 0, i32 2
  %dest_addr44.i = getelementptr inbounds %struct.ax25_routes_struct, ptr %route, i32 0, i32 1
  %40 = call ptr @memcpy(ptr %callsign43.i, ptr %dest_addr44.i, i32 7)
  %dev45.i = getelementptr inbounds %struct.ax25_dev, ptr %call.i, i32 0, i32 1
  %41 = ptrtoint ptr %dev45.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev45.i, align 4
  %dev46.i = getelementptr inbounds %struct.ax25_route, ptr %call7.i135.i, i32 0, i32 3
  %43 = ptrtoint ptr %dev46.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %dev46.i, align 8
  %digipeat47.i = getelementptr inbounds %struct.ax25_route, ptr %call7.i135.i, i32 0, i32 4
  %44 = ptrtoint ptr %digipeat47.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %digipeat47.i, align 4
  %ip_mode.i = getelementptr inbounds %struct.ax25_route, ptr %call7.i135.i, i32 0, i32 5
  %45 = ptrtoint ptr %ip_mode.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 32, ptr %ip_mode.i, align 8
  %46 = ptrtoint ptr %digi_count.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %digi_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp50.not.i = icmp eq i8 %47, 0
  br i1 %cmp50.not.i, label %if.end42.i.if.end81.i_crit_edge, label %if.then52.i

if.end42.i.if.end81.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81.i

if.then52.i:                                      ; preds = %if.end42.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i136.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 2592, i32 noundef 66) #14
  %49 = ptrtoint ptr %digipeat47.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i136.i, ptr %digipeat47.i, align 4
  %cmp55.i = icmp eq ptr %call7.i136.i, null
  br i1 %cmp55.i, label %if.then57.i, label %if.end58.i

if.then57.i:                                      ; preds = %if.then52.i
  call void @_raw_write_unlock_bh(ptr noundef nonnull @ax25_route_lock) #10
  call void @kfree(ptr noundef nonnull %call7.i135.i) #10
  %refcount.i155.i = getelementptr inbounds %struct.ax25_dev, ptr %call.i, i32 0, i32 7
  %call.i.i.i.i.i.i156.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i155.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @llvm.prefetch.p0(ptr %refcount.i155.i, i32 1, i32 3, i32 1) #10
  %50 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i155.i, ptr %refcount.i155.i, i32 1, ptr elementtype(i32) %refcount.i155.i) #10, !srcloc !56
  %asmresult.i.i.i.i.i.i.i157.i = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i157.i)
  %cmp.i.i.i.i158.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i157.i, 1
  br i1 %cmp.i.i.i.i158.i, label %if.then.i162.i, label %if.end5.i.i.i.i160.i

if.end5.i.i.i.i160.i:                             ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i157.i)
  %.not.i.i.i.i159.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i157.i, 0
  br i1 %.not.i.i.i.i159.i, label %if.end5.i.i.i.i160.i.cleanup_crit_edge, label %if.then10.i.i.i.i161.i, !prof !51

if.end5.i.i.i.i160.i.cleanup_crit_edge:           ; preds = %if.end5.i.i.i.i160.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i161.i:                           ; preds = %if.end5.i.i.i.i160.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i155.i, i32 noundef 3) #10
  br label %cleanup

if.then.i162.i:                                   ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @kfree(ptr noundef nonnull %call.i) #10
  br label %cleanup

if.end58.i:                                       ; preds = %if.then52.i
  %lastrepeat60.i = getelementptr inbounds %struct.ax25_digi, ptr %call7.i136.i, i32 0, i32 3
  %51 = ptrtoint ptr %lastrepeat60.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -1, ptr %lastrepeat60.i, align 1
  %52 = ptrtoint ptr %digi_count.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %digi_count.i, align 1
  %ndigi63.i = getelementptr inbounds %struct.ax25_digi, ptr %call7.i136.i, i32 0, i32 2
  %54 = ptrtoint ptr %ndigi63.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %ndigi63.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp67181.not.i = icmp eq i8 %53, 0
  br i1 %cmp67181.not.i, label %if.end58.i.if.end81.i_crit_edge, label %if.end58.i.for.body69.i_crit_edge

if.end58.i.for.body69.i_crit_edge:                ; preds = %if.end58.i
  br label %for.body69.i

if.end58.i.if.end81.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81.i

for.body69.i:                                     ; preds = %for.body69.i.for.body69.i_crit_edge, %if.end58.i.for.body69.i_crit_edge
  %i.1182.i = phi i32 [ %inc79.i, %for.body69.i.for.body69.i_crit_edge ], [ 0, %if.end58.i.for.body69.i_crit_edge ]
  %55 = ptrtoint ptr %digipeat47.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %digipeat47.i, align 4
  %arrayidx72.i = getelementptr %struct.ax25_digi, ptr %56, i32 0, i32 1, i32 %i.1182.i
  %57 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %arrayidx72.i, align 1
  %58 = load ptr, ptr %digipeat47.i, align 4
  %arrayidx75.i = getelementptr [8 x %struct.ax25_address], ptr %58, i32 0, i32 %i.1182.i
  %arrayidx77.i = getelementptr %struct.ax25_routes_struct, ptr %route, i32 0, i32 3, i32 %i.1182.i
  %59 = call ptr @memcpy(ptr %arrayidx75.i, ptr %arrayidx77.i, i32 7)
  %inc79.i = add nuw nsw i32 %i.1182.i, 1
  %60 = ptrtoint ptr %digi_count.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %digi_count.i, align 1
  %conv66.i = zext i8 %61 to i32
  %cmp67.i = icmp ult i32 %inc79.i, %conv66.i
  br i1 %cmp67.i, label %for.body69.i.for.body69.i_crit_edge, label %for.body69.i.if.end81.i_crit_edge

for.body69.i.if.end81.i_crit_edge:                ; preds = %for.body69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81.i

for.body69.i.for.body69.i_crit_edge:              ; preds = %for.body69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body69.i

if.end81.i:                                       ; preds = %for.body69.i.if.end81.i_crit_edge, %if.end58.i.if.end81.i_crit_edge, %if.end42.i.if.end81.i_crit_edge
  %62 = load ptr, ptr @ax25_route_list, align 4
  %63 = ptrtoint ptr %call7.i135.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %call7.i135.i, align 8
  store ptr %call7.i135.i, ptr @ax25_route_list, align 4
  call void @_raw_write_unlock_bh(ptr noundef nonnull @ax25_route_lock) #10
  %refcount.i164.i = getelementptr inbounds %struct.ax25_dev, ptr %call.i, i32 0, i32 7
  %call.i.i.i.i.i.i165.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i164.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @llvm.prefetch.p0(ptr %refcount.i164.i, i32 1, i32 3, i32 1) #10
  %64 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i164.i, ptr %refcount.i164.i, i32 1, ptr elementtype(i32) %refcount.i164.i) #10, !srcloc !56
  %asmresult.i.i.i.i.i.i.i166.i = extractvalue { i32, i32, i32 } %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i166.i)
  %cmp.i.i.i.i167.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i166.i, 1
  br i1 %cmp.i.i.i.i167.i, label %if.then.i171.i, label %if.end5.i.i.i.i169.i

if.end5.i.i.i.i169.i:                             ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i166.i)
  %.not.i.i.i.i168.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i166.i, 0
  br i1 %.not.i.i.i.i168.i, label %if.end5.i.i.i.i169.i.cleanup_crit_edge, label %if.then10.i.i.i.i170.i, !prof !51

if.end5.i.i.i.i169.i.cleanup_crit_edge:           ; preds = %if.end5.i.i.i.i169.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i170.i:                           ; preds = %if.end5.i.i.i.i169.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i164.i, i32 noundef 3) #10
  br label %cleanup

if.then.i171.i:                                   ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @kfree(ptr noundef nonnull %call.i) #10
  br label %cleanup

if.end59.i.i20:                                   ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #10
  %call.i.i21 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i21, label %if.end59.i.i20.if.then11.i.i37_crit_edge, label %land.lhs.true.i.i24

if.end59.i.i20.if.then11.i.i37_crit_edge:         ; preds = %if.end59.i.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i37

land.lhs.true.i.i24:                              ; preds = %if.end59.i.i20
  %65 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 71, i32 -1226833920) #13, !srcloc !50
  %asmresult.i.i22 = extractvalue { i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i22)
  %cmp.i6.i23 = icmp eq i32 %asmresult.i.i22, 0
  br i1 %cmp.i6.i23, label %if.end.i.i34, label %land.lhs.true.i.i24.if.then11.i.i37_crit_edge, !prof !51

land.lhs.true.i.i24.if.then11.i.i37_crit_edge:    ; preds = %land.lhs.true.i.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i37

if.end.i.i34:                                     ; preds = %land.lhs.true.i.i24
  %call.i.i.i25 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %route, i32 noundef 71) #10
  %66 = call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i.i.i.i.i26 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i.i26 to ptr
  %cpu_domain.i.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 4
  %68 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i27) #9, !srcloc !52
  %and.i.i.i.i28 = and i32 %68, -13
  %or.i.i.i.i29 = or i32 %and.i.i.i.i28, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i29) #10, !srcloc !53
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  %call1.i.i.i30 = call i32 @arm_copy_from_user(ptr noundef nonnull %route, ptr noundef %arg, i32 noundef 71) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #10, !srcloc !53
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i30)
  %tobool4.not.i.i33 = icmp eq i32 %call1.i.i.i30, 0
  br i1 %tobool4.not.i.i33, label %if.end6, label %if.end.i.i34.if.then11.i.i37_crit_edge, !prof !51

if.end.i.i34.if.then11.i.i37_crit_edge:           ; preds = %if.end.i.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i37

if.then11.i.i37:                                  ; preds = %if.end.i.i34.if.then11.i.i37_crit_edge, %land.lhs.true.i.i24.if.then11.i.i37_crit_edge, %if.end59.i.i20.if.then11.i.i37_crit_edge
  %res.0.i.i32118 = phi i32 [ %call1.i.i.i30, %if.end.i.i34.if.then11.i.i37_crit_edge ], [ 71, %if.end59.i.i20.if.then11.i.i37_crit_edge ], [ 71, %land.lhs.true.i.i24.if.then11.i.i37_crit_edge ]
  %sub.i.i35 = sub i32 71, %res.0.i.i32118
  %add.ptr.i.i36 = getelementptr i8, ptr %route, i32 %sub.i.i35
  %69 = call ptr @memset(ptr %add.ptr.i.i36, i32 0, i32 %res.0.i.i32118)
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.i34
  %call.i64 = call ptr @ax25_addr_ax25dev(ptr noundef nonnull %route) #10
  %cmp.i65 = icmp eq ptr %call.i64, null
  br i1 %cmp.i65, label %if.end6.cleanup_crit_edge, label %if.end.i66

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i66:                                       ; preds = %if.end6
  call void @_raw_write_lock_bh(ptr noundef nonnull @ax25_route_lock) #10
  %70 = load ptr, ptr @ax25_route_list, align 4
  %cmp1.not57.i = icmp eq ptr %70, null
  br i1 %cmp1.not57.i, label %if.end.i66.while.end.i83_crit_edge, label %while.body.lr.ph.i68

if.end.i66.while.end.i83_crit_edge:               ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i83

while.body.lr.ph.i68:                             ; preds = %if.end.i66
  %dev2.i = getelementptr inbounds %struct.ax25_dev, ptr %call.i64, i32 0, i32 1
  %dest_addr.i67 = getelementptr inbounds %struct.ax25_routes_struct, ptr %route, i32 0, i32 1
  br label %while.body.i70

while.body.i70:                                   ; preds = %if.end19.i.while.body.i70_crit_edge, %while.body.lr.ph.i68
  %ax25_rt.058.i = phi ptr [ %70, %while.body.lr.ph.i68 ], [ %72, %if.end19.i.while.body.i70_crit_edge ]
  %71 = ptrtoint ptr %ax25_rt.058.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ax25_rt.058.i, align 4
  %dev.i69 = getelementptr inbounds %struct.ax25_route, ptr %ax25_rt.058.i, i32 0, i32 3
  %73 = ptrtoint ptr %dev.i69 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i69, align 4
  %75 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev2.i, align 4
  %cmp3.i = icmp eq ptr %74, %76
  br i1 %cmp3.i, label %land.lhs.true.i72, label %while.body.i70.if.end19.i_crit_edge

while.body.i70.if.end19.i_crit_edge:              ; preds = %while.body.i70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

land.lhs.true.i72:                                ; preds = %while.body.i70
  %callsign.i71 = getelementptr inbounds %struct.ax25_route, ptr %ax25_rt.058.i, i32 0, i32 2
  %call4.i = call i32 @ax25cmp(ptr noundef %dest_addr.i67, ptr noundef %callsign.i71) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp eq i32 %call4.i, 0
  br i1 %cmp5.i, label %if.then6.i, label %land.lhs.true.i72.if.end19.i_crit_edge

land.lhs.true.i72.if.end19.i_crit_edge:           ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.then6.i:                                       ; preds = %land.lhs.true.i72
  %77 = load ptr, ptr @ax25_route_list, align 4
  %cmp7.i73 = icmp eq ptr %77, %ax25_rt.058.i
  br i1 %cmp7.i73, label %if.then8.i, label %if.then6.i.for.cond.i_crit_edge

if.then6.i.for.cond.i_crit_edge:                  ; preds = %if.then6.i
  br label %for.cond.i

if.then8.i:                                       ; preds = %if.then6.i
  %78 = ptrtoint ptr %ax25_rt.058.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ax25_rt.058.i, align 4
  store ptr %79, ptr @ax25_route_list, align 4
  %refcount.i.i74 = getelementptr inbounds %struct.ax25_route, ptr %ax25_rt.058.i, i32 0, i32 1
  %call.i.i.i.i.i.i.i75 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i74, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @llvm.prefetch.p0(ptr %refcount.i.i74, i32 1, i32 3, i32 1) #10
  %80 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i74, ptr %refcount.i.i74, i32 1, ptr elementtype(i32) %refcount.i.i74) #10, !srcloc !56
  %asmresult.i.i.i.i.i.i.i.i76 = extractvalue { i32, i32, i32 } %80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i76)
  %cmp.i.i.i.i.i77 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i76, 1
  br i1 %cmp.i.i.i.i.i77, label %if.then.i.i81, label %if.end5.i.i.i.i.i79

if.end5.i.i.i.i.i79:                              ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i76)
  %.not.i.i.i.i.i78 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i76, 0
  br i1 %.not.i.i.i.i.i78, label %if.end5.i.i.i.i.i79.if.end19.i_crit_edge, label %if.then10.i.i.i.i.i80, !prof !51

if.end5.i.i.i.i.i79.if.end19.i_crit_edge:         ; preds = %if.end5.i.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.then10.i.i.i.i.i80:                            ; preds = %if.end5.i.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i74, i32 noundef 3) #10
  br label %if.end19.i

if.then.i.i81:                                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %digipeat.i.i.i = getelementptr inbounds %struct.ax25_route, ptr %ax25_rt.058.i, i32 0, i32 4
  %81 = ptrtoint ptr %digipeat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %digipeat.i.i.i, align 4
  call void @kfree(ptr noundef %82) #10
  call void @kfree(ptr noundef nonnull %ax25_rt.058.i) #10
  br label %if.end19.i

for.cond.i:                                       ; preds = %for.body.i82.for.cond.i_crit_edge, %if.then6.i.for.cond.i_crit_edge
  %t.0.i = phi ptr [ %84, %for.body.i82.for.cond.i_crit_edge ], [ %77, %if.then6.i.for.cond.i_crit_edge ]
  %cmp10.not.i = icmp eq ptr %t.0.i, null
  br i1 %cmp10.not.i, label %for.cond.i.if.end19.i_crit_edge, label %for.body.i82

for.cond.i.if.end19.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

for.body.i82:                                     ; preds = %for.cond.i
  %83 = ptrtoint ptr %t.0.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %t.0.i, align 4
  %cmp12.i = icmp eq ptr %84, %ax25_rt.058.i
  br i1 %cmp12.i, label %if.then13.i, label %for.body.i82.for.cond.i_crit_edge

for.body.i82.for.cond.i_crit_edge:                ; preds = %for.body.i82
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.then13.i:                                      ; preds = %for.body.i82
  %85 = ptrtoint ptr %ax25_rt.058.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ax25_rt.058.i, align 4
  %87 = ptrtoint ptr %t.0.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %t.0.i, align 4
  %refcount.i38.i = getelementptr inbounds %struct.ax25_route, ptr %ax25_rt.058.i, i32 0, i32 1
  %call.i.i.i.i.i.i39.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i38.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @llvm.prefetch.p0(ptr %refcount.i38.i, i32 1, i32 3, i32 1) #10
  %88 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i38.i, ptr %refcount.i38.i, i32 1, ptr elementtype(i32) %refcount.i38.i) #10, !srcloc !56
  %asmresult.i.i.i.i.i.i.i40.i = extractvalue { i32, i32, i32 } %88, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i40.i)
  %cmp.i.i.i.i41.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i40.i, 1
  br i1 %cmp.i.i.i.i41.i, label %if.then.i46.i, label %if.end5.i.i.i.i43.i

if.end5.i.i.i.i43.i:                              ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i40.i)
  %.not.i.i.i.i42.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i40.i, 0
  br i1 %.not.i.i.i.i42.i, label %if.end5.i.i.i.i43.i.if.end19.i_crit_edge, label %if.then10.i.i.i.i44.i, !prof !51

if.end5.i.i.i.i43.i.if.end19.i_crit_edge:         ; preds = %if.end5.i.i.i.i43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.then10.i.i.i.i44.i:                            ; preds = %if.end5.i.i.i.i43.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i38.i, i32 noundef 3) #10
  br label %if.end19.i

if.then.i46.i:                                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %digipeat.i.i45.i = getelementptr inbounds %struct.ax25_route, ptr %ax25_rt.058.i, i32 0, i32 4
  %89 = ptrtoint ptr %digipeat.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %digipeat.i.i45.i, align 4
  call void @kfree(ptr noundef %90) #10
  call void @kfree(ptr noundef nonnull %ax25_rt.058.i) #10
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then.i46.i, %if.then10.i.i.i.i44.i, %if.end5.i.i.i.i43.i.if.end19.i_crit_edge, %for.cond.i.if.end19.i_crit_edge, %if.then.i.i81, %if.then10.i.i.i.i.i80, %if.end5.i.i.i.i.i79.if.end19.i_crit_edge, %land.lhs.true.i72.if.end19.i_crit_edge, %while.body.i70.if.end19.i_crit_edge
  %cmp1.not.i = icmp eq ptr %72, null
  br i1 %cmp1.not.i, label %if.end19.i.while.end.i83_crit_edge, label %if.end19.i.while.body.i70_crit_edge

if.end19.i.while.body.i70_crit_edge:              ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i70

if.end19.i.while.end.i83_crit_edge:               ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i83

while.end.i83:                                    ; preds = %if.end19.i.while.end.i83_crit_edge, %if.end.i66.while.end.i83_crit_edge
  call void @_raw_write_unlock_bh(ptr noundef nonnull @ax25_route_lock) #10
  %refcount.i48.i = getelementptr inbounds %struct.ax25_dev, ptr %call.i64, i32 0, i32 7
  %call.i.i.i.i.i.i49.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i48.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @llvm.prefetch.p0(ptr %refcount.i48.i, i32 1, i32 3, i32 1) #10
  %91 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i48.i, ptr %refcount.i48.i, i32 1, ptr elementtype(i32) %refcount.i48.i) #10, !srcloc !56
  %asmresult.i.i.i.i.i.i.i50.i = extractvalue { i32, i32, i32 } %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i50.i)
  %cmp.i.i.i.i51.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i50.i, 1
  br i1 %cmp.i.i.i.i51.i, label %if.then.i55.i, label %if.end5.i.i.i.i53.i

if.end5.i.i.i.i53.i:                              ; preds = %while.end.i83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i50.i)
  %.not.i.i.i.i52.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i50.i, 0
  br i1 %.not.i.i.i.i52.i, label %if.end5.i.i.i.i53.i.cleanup_crit_edge, label %if.then10.i.i.i.i54.i, !prof !51

if.end5.i.i.i.i53.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i54.i:                            ; preds = %if.end5.i.i.i.i53.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i48.i, i32 noundef 3) #10
  br label %cleanup

if.then.i55.i:                                    ; preds = %while.end.i83
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @kfree(ptr noundef nonnull %call.i64) #10
  br label %cleanup

if.end59.i.i43:                                   ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #10
  %call.i.i44 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i44, label %if.end59.i.i43.if.then11.i.i60_crit_edge, label %land.lhs.true.i.i47

if.end59.i.i43.if.then11.i.i60_crit_edge:         ; preds = %if.end59.i.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i60

land.lhs.true.i.i47:                              ; preds = %if.end59.i.i43
  %92 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 24, i32 -1226833920) #13, !srcloc !50
  %asmresult.i.i45 = extractvalue { i32, i32 } %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i45)
  %cmp.i6.i46 = icmp eq i32 %asmresult.i.i45, 0
  br i1 %cmp.i6.i46, label %if.end.i.i57, label %land.lhs.true.i.i47.if.then11.i.i60_crit_edge, !prof !51

land.lhs.true.i.i47.if.then11.i.i60_crit_edge:    ; preds = %land.lhs.true.i.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i60

if.end.i.i57:                                     ; preds = %land.lhs.true.i.i47
  %call.i.i.i48 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rt_option, i32 noundef 24) #10
  %93 = call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i.i.i.i.i49 = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i.i.i.i.i49 to ptr
  %cpu_domain.i.i.i.i.i50 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 4
  %95 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i50) #9, !srcloc !52
  %and.i.i.i.i51 = and i32 %95, -13
  %or.i.i.i.i52 = or i32 %and.i.i.i.i51, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i52) #10, !srcloc !53
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  %call1.i.i.i53 = call i32 @arm_copy_from_user(ptr noundef nonnull %rt_option, ptr noundef %arg, i32 noundef 24) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %95) #10, !srcloc !53
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i53)
  %tobool4.not.i.i56 = icmp eq i32 %call1.i.i.i53, 0
  br i1 %tobool4.not.i.i56, label %if.end12, label %if.end.i.i57.if.then11.i.i60_crit_edge, !prof !51

if.end.i.i57.if.then11.i.i60_crit_edge:           ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i60

if.then11.i.i60:                                  ; preds = %if.end.i.i57.if.then11.i.i60_crit_edge, %land.lhs.true.i.i47.if.then11.i.i60_crit_edge, %if.end59.i.i43.if.then11.i.i60_crit_edge
  %res.0.i.i55123 = phi i32 [ %call1.i.i.i53, %if.end.i.i57.if.then11.i.i60_crit_edge ], [ 24, %if.end59.i.i43.if.then11.i.i60_crit_edge ], [ 24, %land.lhs.true.i.i47.if.then11.i.i60_crit_edge ]
  %sub.i.i58 = sub i32 24, %res.0.i.i55123
  %add.ptr.i.i59 = getelementptr i8, ptr %rt_option, i32 %sub.i.i58
  %96 = call ptr @memset(ptr %add.ptr.i.i59, i32 0, i32 %res.0.i.i55123)
  br label %cleanup

if.end12:                                         ; preds = %if.end.i.i57
  %call.i85 = call ptr @ax25_addr_ax25dev(ptr noundef nonnull %rt_option) #10
  %cmp.i86 = icmp eq ptr %call.i85, null
  br i1 %cmp.i86, label %if.end12.cleanup_crit_edge, label %if.end.i87

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i87:                                       ; preds = %if.end12
  call void @_raw_write_lock_bh(ptr noundef nonnull @ax25_route_lock) #10
  %cmd.i = getelementptr inbounds %struct.ax25_route_opt_struct, ptr %rt_option, i32 0, i32 2
  %ax25_rt.023.i = load ptr, ptr @ax25_route_list, align 4
  %cmp1.not24.i = icmp eq ptr %ax25_rt.023.i, null
  br i1 %cmp1.not24.i, label %if.end.i87.out.i_crit_edge, label %while.body.lr.ph.i90

if.end.i87.out.i_crit_edge:                       ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

while.body.lr.ph.i90:                             ; preds = %if.end.i87
  %dev2.i88 = getelementptr inbounds %struct.ax25_dev, ptr %call.i85, i32 0, i32 1
  %dest_addr.i89 = getelementptr inbounds %struct.ax25_route_opt_struct, ptr %rt_option, i32 0, i32 1
  %arg.i = getelementptr inbounds %struct.ax25_route_opt_struct, ptr %rt_option, i32 0, i32 3
  br label %while.body.i93

while.body.i93:                                   ; preds = %if.end11.i.while.body.i93_crit_edge, %while.body.lr.ph.i90
  %ax25_rt.025.i = phi ptr [ %ax25_rt.023.i, %while.body.lr.ph.i90 ], [ %ax25_rt.0.i100, %if.end11.i.while.body.i93_crit_edge ]
  %dev.i91 = getelementptr inbounds %struct.ax25_route, ptr %ax25_rt.025.i, i32 0, i32 3
  %97 = ptrtoint ptr %dev.i91 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i91, align 4
  %99 = ptrtoint ptr %dev2.i88 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev2.i88, align 4
  %cmp3.i92 = icmp eq ptr %98, %100
  br i1 %cmp3.i92, label %land.lhs.true.i97, label %while.body.i93.if.end11.i_crit_edge

while.body.i93.if.end11.i_crit_edge:              ; preds = %while.body.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

land.lhs.true.i97:                                ; preds = %while.body.i93
  %callsign.i94 = getelementptr inbounds %struct.ax25_route, ptr %ax25_rt.025.i, i32 0, i32 2
  %call4.i95 = call i32 @ax25cmp(ptr noundef %dest_addr.i89, ptr noundef %callsign.i94) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i95)
  %cmp5.i96 = icmp eq i32 %call4.i95, 0
  br i1 %cmp5.i96, label %if.then6.i98, label %land.lhs.true.i97.if.end11.i_crit_edge

land.lhs.true.i97.if.end11.i_crit_edge:           ; preds = %land.lhs.true.i97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then6.i98:                                     ; preds = %land.lhs.true.i97
  %101 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cmd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %102)
  %cond.i = icmp eq i32 %102, 2
  br i1 %cond.i, label %sw.bb.i, label %if.then6.i98.out.i_crit_edge

if.then6.i98.out.i_crit_edge:                     ; preds = %if.then6.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

sw.bb.i:                                          ; preds = %if.then6.i98
  %103 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arg.i, align 4
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %104, label %sw.bb.i.out.i_crit_edge [
    i32 32, label %sw.bb.i.sw.bb7.i_crit_edge
    i32 68, label %sw.bb.i.sw.bb7.i_crit_edge138
    i32 86, label %sw.bb.i.sw.bb7.i_crit_edge139
  ]

sw.bb.i.sw.bb7.i_crit_edge139:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7.i

sw.bb.i.sw.bb7.i_crit_edge138:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7.i

sw.bb.i.sw.bb7.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7.i

sw.bb.i.out.i_crit_edge:                          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

sw.bb7.i:                                         ; preds = %sw.bb.i.sw.bb7.i_crit_edge, %sw.bb.i.sw.bb7.i_crit_edge138, %sw.bb.i.sw.bb7.i_crit_edge139
  %conv.i = trunc i32 %104 to i8
  %ip_mode.i99 = getelementptr inbounds %struct.ax25_route, ptr %ax25_rt.025.i, i32 0, i32 5
  %106 = ptrtoint ptr %ip_mode.i99 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv.i, ptr %ip_mode.i99, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %sw.bb7.i, %land.lhs.true.i97.if.end11.i_crit_edge, %while.body.i93.if.end11.i_crit_edge
  %107 = ptrtoint ptr %ax25_rt.025.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %ax25_rt.0.i100 = load ptr, ptr %ax25_rt.025.i, align 4
  %cmp1.not.i101 = icmp eq ptr %ax25_rt.0.i100, null
  br i1 %cmp1.not.i101, label %if.end11.i.out.i_crit_edge, label %if.end11.i.while.body.i93_crit_edge

if.end11.i.while.body.i93_crit_edge:              ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i93

if.end11.i.out.i_crit_edge:                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

out.i:                                            ; preds = %if.end11.i.out.i_crit_edge, %sw.bb.i.out.i_crit_edge, %if.then6.i98.out.i_crit_edge, %if.end.i87.out.i_crit_edge
  %err.0.i = phi i32 [ 0, %if.end.i87.out.i_crit_edge ], [ 0, %if.end11.i.out.i_crit_edge ], [ -22, %sw.bb.i.out.i_crit_edge ], [ -22, %if.then6.i98.out.i_crit_edge ]
  call void @_raw_write_unlock_bh(ptr noundef nonnull @ax25_route_lock) #10
  %refcount.i.i102 = getelementptr inbounds %struct.ax25_dev, ptr %call.i85, i32 0, i32 7
  %call.i.i.i.i.i.i.i103 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i102, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @llvm.prefetch.p0(ptr %refcount.i.i102, i32 1, i32 3, i32 1) #10
  %108 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i102, ptr %refcount.i.i102, i32 1, ptr elementtype(i32) %refcount.i.i102) #10, !srcloc !56
  %asmresult.i.i.i.i.i.i.i.i104 = extractvalue { i32, i32, i32 } %108, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i104)
  %cmp.i.i.i.i.i105 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i104, 1
  br i1 %cmp.i.i.i.i.i105, label %if.then.i.i109, label %if.end5.i.i.i.i.i107

if.end5.i.i.i.i.i107:                             ; preds = %out.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i104)
  %.not.i.i.i.i.i106 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i104, 0
  br i1 %.not.i.i.i.i.i106, label %if.end5.i.i.i.i.i107.cleanup_crit_edge, label %if.then10.i.i.i.i.i108, !prof !51

if.end5.i.i.i.i.i107.cleanup_crit_edge:           ; preds = %if.end5.i.i.i.i.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i108:                           ; preds = %if.end5.i.i.i.i.i107
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i102, i32 noundef 3) #10
  br label %cleanup

if.then.i.i109:                                   ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @kfree(ptr noundef nonnull %call.i85) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i109, %if.then10.i.i.i.i.i108, %if.end5.i.i.i.i.i107.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then11.i.i60, %if.then.i55.i, %if.then10.i.i.i.i54.i, %if.end5.i.i.i.i53.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then11.i.i37, %if.then.i171.i, %if.then10.i.i.i.i170.i, %if.end5.i.i.i.i169.i.cleanup_crit_edge, %if.then.i162.i, %if.then10.i.i.i.i161.i, %if.end5.i.i.i.i160.i.cleanup_crit_edge, %if.then.i153.i, %if.then10.i.i.i.i152.i, %if.end5.i.i.i.i151.i.cleanup_crit_edge, %if.then.i144.i, %if.then10.i.i.i.i143.i, %if.end5.i.i.i.i142.i.cleanup_crit_edge, %if.then.i.i63, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -12, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ -12, %if.then10.i.i.i.i.i ], [ -12, %if.then.i.i63 ], [ 0, %if.end5.i.i.i.i142.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i143.i ], [ 0, %if.then.i144.i ], [ -12, %if.end5.i.i.i.i151.i.cleanup_crit_edge ], [ -12, %if.then10.i.i.i.i152.i ], [ -12, %if.then.i153.i ], [ -12, %if.end5.i.i.i.i160.i.cleanup_crit_edge ], [ -12, %if.then10.i.i.i.i161.i ], [ -12, %if.then.i162.i ], [ 0, %if.end5.i.i.i.i169.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i170.i ], [ 0, %if.then.i171.i ], [ -22, %if.end6.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i53.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i54.i ], [ 0, %if.then.i55.i ], [ -22, %if.end12.cleanup_crit_edge ], [ %err.0.i, %if.end5.i.i.i.i.i107.cleanup_crit_edge ], [ %err.0.i, %if.then10.i.i.i.i.i108 ], [ %err.0.i, %if.then.i.i109 ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i37 ], [ -14, %if.then11.i.i60 ]
  call void @llvm.lifetime.end.p0(i64 71, ptr nonnull %route) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rt_option) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ax25_rt_seq_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @ax25_route_lock) #10
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %ax25_rt.011 = load ptr, ptr @ax25_route_list, align 4
  %cmp1.not12 = icmp eq ptr %ax25_rt.011, null
  br i1 %cmp1.not12, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add i32 %i.013, 1
  %2 = ptrtoint ptr %ax25_rt.014 to i32
  call void @__asan_load4_noabort(i32 %2)
  %ax25_rt.0 = load ptr, ptr %ax25_rt.014, align 4
  %cmp1.not = icmp eq ptr %ax25_rt.0, null
  br i1 %cmp1.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ax25_rt.014 = phi ptr [ %ax25_rt.0, %for.cond.for.body_crit_edge ], [ %ax25_rt.011, %for.cond.preheader.for.body_crit_edge ]
  %i.013 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %conv = sext i32 %i.013 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %conv)
  %cmp2 = icmp eq i64 %1, %conv
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 1 to ptr), %entry.cleanup_crit_edge ], [ null, %for.cond.preheader.cleanup_crit_edge ], [ %ax25_rt.014, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax25_rt_seq_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_unlock(ptr noundef nonnull @ax25_route_lock) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ax25_rt_seq_next(ptr nocapture noundef readnone %seq, ptr noundef readonly %v, ptr nocapture noundef %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  %ax25_route_list.v = select i1 %cmp, ptr @ax25_route_list, ptr %v
  %2 = ptrtoint ptr %ax25_route_list.v to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load ptr, ptr %ax25_route_list.v, align 4
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax25_rt_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  %buf = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf) #10
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  %0 = call ptr @memset(ptr %buf, i32 255, i32 11)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.7) #10
  br label %if.end21

if.else:                                          ; preds = %entry
  %callsign1 = getelementptr inbounds %struct.ax25_route, ptr %v, i32 0, i32 2
  %call = tail call i32 @ax25cmp(ptr noundef %callsign1, ptr noundef nonnull @null_ax25_address) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.else.if.end_crit_edge, label %if.else4

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = call ptr @ax2asc(ptr noundef nonnull %buf, ptr noundef %callsign1) #10
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.else.if.end_crit_edge
  %callsign.0 = phi ptr [ %call6, %if.else4 ], [ @.str.8, %if.else.if.end_crit_edge ]
  %dev = getelementptr inbounds %struct.ax25_route, ptr %v, i32 0, i32 3
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %2, null
  %spec.select = select i1 %tobool.not, ptr @.str.10, ptr %2
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef %callsign.0, ptr noundef nonnull %spec.select) #10
  %ip_mode = getelementptr inbounds %struct.ax25_route, ptr %v, i32 0, i32 5
  %3 = ptrtoint ptr %ip_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ip_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %4)
  %switch.selectcmp = icmp eq i8 %4, 68
  %switch.select = select i1 %switch.selectcmp, ptr @.str.12, ptr @.str.13
  call void @__sanitizer_cov_trace_const_cmp1(i8 86, i8 %4)
  %switch.selectcmp42 = icmp eq i8 %4, 86
  %switch.select43 = select i1 %switch.selectcmp42, ptr @.str.11, ptr %switch.select
  call void @seq_puts(ptr noundef %seq, ptr noundef nonnull %switch.select43) #10
  %digipeat = getelementptr inbounds %struct.ax25_route, ptr %v, i32 0, i32 4
  %5 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %digipeat, align 4
  %cmp10.not = icmp eq ptr %6, null
  br i1 %cmp10.not, label %if.end.if.end20_crit_edge, label %for.cond.preheader

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

for.cond.preheader:                               ; preds = %if.end
  %7 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %digipeat, align 4
  %ndigi38 = getelementptr inbounds %struct.ax25_digi, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %ndigi38 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ndigi38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp1540.not = icmp eq i8 %10, 0
  br i1 %cmp1540.not, label %for.cond.preheader.if.end20_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end20_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %11 = phi ptr [ %13, %for.body.for.body_crit_edge ], [ %8, %for.cond.preheader.for.body_crit_edge ]
  %i.041 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.ax25_address], ptr %11, i32 0, i32 %i.041
  %call19 = call ptr @ax2asc(ptr noundef nonnull %buf, ptr noundef %arrayidx) #10
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.14, ptr noundef %call19) #10
  %inc = add nuw nsw i32 %i.041, 1
  %12 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %digipeat, align 4
  %ndigi = getelementptr inbounds %struct.ax25_digi, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ndigi to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ndigi, align 1
  %conv14 = zext i8 %15 to i32
  %cmp15 = icmp ult i32 %inc, %conv14
  br i1 %cmp15, label %for.body.for.body_crit_edge, label %for.body.if.end20_crit_edge

for.body.if.end20_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end20:                                         ; preds = %for.body.if.end20_crit_edge, %for.cond.preheader.if.end20_crit_edge, %if.end.if.end20_crit_edge
  call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.15) #10
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ax25_get_route(ptr noundef %addr, ptr noundef readnone %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ax25_rt.056 = load ptr, ptr @ax25_route_list, align 4
  %cmp.not57 = icmp eq ptr %ax25_rt.056, null
  br i1 %cmp.not57, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cmp1 = icmp eq ptr %dev, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ax25_rt.060 = phi ptr [ %ax25_rt.056, %for.body.lr.ph ], [ %ax25_rt.0, %for.inc.for.body_crit_edge ]
  %ax25_def_rt.059 = phi ptr [ null, %for.body.lr.ph ], [ %ax25_def_rt.1, %for.inc.for.body_crit_edge ]
  %ax25_spe_rt.058 = phi ptr [ null, %for.body.lr.ph ], [ %ax25_spe_rt.3, %for.inc.for.body_crit_edge ]
  %callsign = getelementptr inbounds %struct.ax25_route, ptr %ax25_rt.060, i32 0, i32 2
  %call = tail call i32 @ax25cmp(ptr noundef %callsign, ptr noundef %addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br i1 %cmp2, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev3 = getelementptr inbounds %struct.ax25_route, ptr %ax25_rt.060, i32 0, i32 3
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev3, align 4
  %cmp4.not = icmp eq ptr %1, null
  %spec.select = select i1 %cmp4.not, ptr %ax25_spe_rt.058, ptr %ax25_rt.060
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.then.if.end_crit_edge
  %ax25_spe_rt.1 = phi ptr [ %ax25_spe_rt.058, %if.then.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call7 = tail call i32 @ax25cmp(ptr noundef %callsign, ptr noundef nonnull @null_ax25_address) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %land.lhs.true9, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true9:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev10 = getelementptr inbounds %struct.ax25_route, ptr %ax25_rt.060, i32 0, i32 3
  %2 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev10, align 4
  %cmp11.not = icmp eq ptr %3, null
  %spec.select52 = select i1 %cmp11.not, ptr %ax25_def_rt.059, ptr %ax25_rt.060
  br label %for.inc

if.else:                                          ; preds = %for.body
  br i1 %cmp2, label %land.lhs.true17, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

land.lhs.true17:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %dev18 = getelementptr inbounds %struct.ax25_route, ptr %ax25_rt.060, i32 0, i32 3
  %4 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev18, align 4
  %cmp19 = icmp eq ptr %5, %dev
  %spec.select53 = select i1 %cmp19, ptr %ax25_rt.060, ptr %ax25_spe_rt.058
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true17, %if.else.if.end21_crit_edge
  %ax25_spe_rt.2 = phi ptr [ %ax25_spe_rt.058, %if.else.if.end21_crit_edge ], [ %spec.select53, %land.lhs.true17 ]
  %call23 = tail call i32 @ax25cmp(ptr noundef %callsign, ptr noundef nonnull @null_ax25_address) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %land.lhs.true25, label %if.end21.for.inc_crit_edge

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true25:                                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %dev26 = getelementptr inbounds %struct.ax25_route, ptr %ax25_rt.060, i32 0, i32 3
  %6 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev26, align 4
  %cmp27 = icmp eq ptr %7, %dev
  %spec.select54 = select i1 %cmp27, ptr %ax25_rt.060, ptr %ax25_def_rt.059
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true25, %if.end21.for.inc_crit_edge, %land.lhs.true9, %if.end.for.inc_crit_edge
  %ax25_spe_rt.3 = phi ptr [ %ax25_spe_rt.1, %if.end.for.inc_crit_edge ], [ %ax25_spe_rt.2, %if.end21.for.inc_crit_edge ], [ %ax25_spe_rt.1, %land.lhs.true9 ], [ %ax25_spe_rt.2, %land.lhs.true25 ]
  %ax25_def_rt.1 = phi ptr [ %ax25_def_rt.059, %if.end.for.inc_crit_edge ], [ %ax25_def_rt.059, %if.end21.for.inc_crit_edge ], [ %spec.select52, %land.lhs.true9 ], [ %spec.select54, %land.lhs.true25 ]
  %8 = ptrtoint ptr %ax25_rt.060 to i32
  call void @__asan_load4_noabort(i32 %8)
  %ax25_rt.0 = load ptr, ptr %ax25_rt.060, align 4
  %cmp.not = icmp eq ptr %ax25_rt.0, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ax25_spe_rt.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %ax25_spe_rt.3, %for.inc.for.end_crit_edge ]
  %ax25_def_rt.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %ax25_def_rt.1, %for.inc.for.end_crit_edge ]
  %cmp31.not = icmp eq ptr %ax25_spe_rt.0.lcssa, null
  %spec.select55 = select i1 %cmp31.not, ptr %ax25_def_rt.0.lcssa, ptr %ax25_spe_rt.0.lcssa
  ret ptr %spec.select55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ax25_rt_autobind(ptr nocapture noundef %ax25, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @ax25_route_lock) #10
  %ax25_rt.056.i = load ptr, ptr @ax25_route_list, align 4
  %cmp.not57.i = icmp eq ptr %ax25_rt.056.i, null
  br i1 %cmp.not57.i, label %entry.ax25_get_route.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.ax25_get_route.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax25_get_route.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %ax25_rt.060.i = phi ptr [ %ax25_rt.0.i, %for.inc.i.for.body.i_crit_edge ], [ %ax25_rt.056.i, %entry.for.body.i_crit_edge ]
  %ax25_def_rt.059.i = phi ptr [ %ax25_def_rt.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %entry.for.body.i_crit_edge ]
  %ax25_spe_rt.058.i = phi ptr [ %ax25_spe_rt.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %entry.for.body.i_crit_edge ]
  %callsign.i = getelementptr inbounds %struct.ax25_route, ptr %ax25_rt.060.i, i32 0, i32 2
  %call.i = tail call i32 @ax25cmp(ptr noundef %callsign.i, ptr noundef %addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev3.i = getelementptr inbounds %struct.ax25_route, ptr %ax25_rt.060.i, i32 0, i32 3
  %0 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev3.i, align 4
  %cmp4.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %cmp4.not.i, ptr %ax25_spe_rt.058.i, ptr %ax25_rt.060.i
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %for.body.i.if.end.i_crit_edge
  %ax25_spe_rt.1.i = phi ptr [ %ax25_spe_rt.058.i, %for.body.i.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %call7.i = tail call i32 @ax25cmp(ptr noundef %callsign.i, ptr noundef nonnull @null_ax25_address) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.i, label %land.lhs.true9.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true9.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev10.i = getelementptr inbounds %struct.ax25_route, ptr %ax25_rt.060.i, i32 0, i32 3
  %2 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev10.i, align 4
  %cmp11.not.i = icmp eq ptr %3, null
  %spec.select52.i = select i1 %cmp11.not.i, ptr %ax25_def_rt.059.i, ptr %ax25_rt.060.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true9.i, %if.end.i.for.inc.i_crit_edge
  %ax25_def_rt.1.i = phi ptr [ %ax25_def_rt.059.i, %if.end.i.for.inc.i_crit_edge ], [ %spec.select52.i, %land.lhs.true9.i ]
  %4 = ptrtoint ptr %ax25_rt.060.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %ax25_rt.0.i = load ptr, ptr %ax25_rt.060.i, align 4
  %cmp.not.i = icmp eq ptr %ax25_rt.0.i, null
  br i1 %cmp.not.i, label %for.inc.i.ax25_get_route.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.ax25_get_route.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax25_get_route.exit

ax25_get_route.exit:                              ; preds = %for.inc.i.ax25_get_route.exit_crit_edge, %entry.ax25_get_route.exit_crit_edge
  %ax25_spe_rt.0.lcssa.i = phi ptr [ null, %entry.ax25_get_route.exit_crit_edge ], [ %ax25_spe_rt.1.i, %for.inc.i.ax25_get_route.exit_crit_edge ]
  %ax25_def_rt.0.lcssa.i = phi ptr [ null, %entry.ax25_get_route.exit_crit_edge ], [ %ax25_def_rt.1.i, %for.inc.i.ax25_get_route.exit_crit_edge ]
  %cmp31.not.i = icmp eq ptr %ax25_spe_rt.0.lcssa.i, null
  %spec.select55.i = select i1 %cmp31.not.i, ptr %ax25_def_rt.0.lcssa.i, ptr %ax25_spe_rt.0.lcssa.i
  %tobool.not = icmp eq ptr %spec.select55.i, null
  br i1 %tobool.not, label %ax25_get_route.exit.cleanup_crit_edge, label %if.end

ax25_get_route.exit.cleanup_crit_edge:            ; preds = %ax25_get_route.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %ax25_get_route.exit
  %dev = getelementptr inbounds %struct.ax25_route, ptr %spec.select55.i, i32 0, i32 3
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %ax25_ptr.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 81
  %7 = ptrtoint ptr %ax25_ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ax25_ptr.i, align 4
  %ax25_dev = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 4
  %9 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %ax25_dev, align 4
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  %10 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 99
  %14 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cred, align 16
  %euid = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %16)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %euid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call5 = tail call ptr @ax25_findbyuid([1 x i32] %.fca.0.insert) #10
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %do.end
  %source_addr = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 1
  %call8 = getelementptr inbounds %struct.ax25_uid_assoc, ptr %call5, i32 0, i32 3
  %17 = call ptr @memcpy(ptr %source_addr, ptr %call8, i32 7)
  %refcount.i = getelementptr inbounds %struct.ax25_uid_assoc, ptr %call5, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !56
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end16_crit_edge, label %if.then10.i.i.i.i, !prof !51

if.end5.i.i.i.i.if.end16_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %if.end16

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  tail call void @kfree(ptr noundef nonnull %call5) #10
  br label %if.end16

if.else:                                          ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ax25_uid_policy to i32))
  %19 = load i32, ptr @ax25_uid_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool9.not = icmp eq i32 %19, 0
  br i1 %tobool9.not, label %if.else.if.end12_crit_edge, label %land.lhs.true

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true:                                    ; preds = %if.else
  %call10 = tail call zeroext i1 @capable(i32 noundef 10) #10
  br i1 %call10, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.else.if.end12_crit_edge
  %source_addr13 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 1
  %20 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ax25_dev, align 4
  %dev15 = getelementptr inbounds %struct.ax25_dev, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev15, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 86
  %24 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_addr, align 64
  %26 = call ptr @memcpy(ptr %source_addr13, ptr %25, i32 7)
  br label %if.end16

if.end16:                                         ; preds = %if.end12, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end16_crit_edge
  %digipeat = getelementptr inbounds %struct.ax25_route, ptr %spec.select55.i, i32 0, i32 4
  %27 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %digipeat, align 4
  %cmp17.not = icmp eq ptr %28, null
  br i1 %cmp17.not, label %if.end16.if.end27_crit_edge, label %if.then18

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then18:                                        ; preds = %if.end16
  %call20 = tail call ptr @kmemdup(ptr noundef nonnull %28, i32 noundef 66, i32 noundef 2592) #10
  %digipeat21 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 3
  %29 = ptrtoint ptr %digipeat21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call20, ptr %digipeat21, align 4
  %cmp23 = icmp eq ptr %call20, null
  br i1 %cmp23, label %if.then18.cleanup_crit_edge, label %if.end25

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %if.then18
  %ndigi.i = getelementptr inbounds %struct.ax25_digi, ptr %call20, i32 0, i32 2
  %30 = ptrtoint ptr %ndigi.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ndigi.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp12.not.i = icmp eq i8 %31, 0
  br i1 %cmp12.not.i, label %if.end25.ax25_adjust_path.exit_crit_edge, label %if.end25.for.body.i57_crit_edge

if.end25.for.body.i57_crit_edge:                  ; preds = %if.end25
  br label %for.body.i57

if.end25.ax25_adjust_path.exit_crit_edge:         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax25_adjust_path.exit

for.body.i57:                                     ; preds = %for.inc.i58.for.body.i57_crit_edge, %if.end25.for.body.i57_crit_edge
  %k.013.i = phi i32 [ %inc.i, %for.inc.i58.for.body.i57_crit_edge ], [ 0, %if.end25.for.body.i57_crit_edge ]
  %arrayidx.i = getelementptr [8 x %struct.ax25_address], ptr %call20, i32 0, i32 %k.013.i
  %call.i55 = tail call i32 @ax25cmp(ptr noundef %addr, ptr noundef %arrayidx.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %cmp2.i56 = icmp eq i32 %call.i55, 0
  br i1 %cmp2.i56, label %for.body.i57.ax25_adjust_path.exit_crit_edge, label %for.inc.i58

for.body.i57.ax25_adjust_path.exit_crit_edge:     ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax25_adjust_path.exit

for.inc.i58:                                      ; preds = %for.body.i57
  %inc.i = add nuw nsw i32 %k.013.i, 1
  %32 = ptrtoint ptr %ndigi.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ndigi.i, align 1
  %conv.i = zext i8 %33 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i58.for.body.i57_crit_edge, label %for.inc.i58.ax25_adjust_path.exit_crit_edge

for.inc.i58.ax25_adjust_path.exit_crit_edge:      ; preds = %for.inc.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %ax25_adjust_path.exit

for.inc.i58.for.body.i57_crit_edge:               ; preds = %for.inc.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i57

ax25_adjust_path.exit:                            ; preds = %for.inc.i58.ax25_adjust_path.exit_crit_edge, %for.body.i57.ax25_adjust_path.exit_crit_edge, %if.end25.ax25_adjust_path.exit_crit_edge
  %k.0.lcssa.i = phi i32 [ 0, %if.end25.ax25_adjust_path.exit_crit_edge ], [ %inc.i, %for.inc.i58.ax25_adjust_path.exit_crit_edge ], [ %k.013.i, %for.body.i57.ax25_adjust_path.exit_crit_edge ]
  %conv4.i = trunc i32 %k.0.lcssa.i to i8
  %34 = ptrtoint ptr %ndigi.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv4.i, ptr %ndigi.i, align 1
  br label %if.end27

if.end27:                                         ; preds = %ax25_adjust_path.exit, %if.end16.if.end27_crit_edge
  %sk = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 35
  %35 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sk, align 4
  %cmp28.not = icmp eq ptr %36, null
  br i1 %cmp28.not, label %if.end27.cleanup_crit_edge, label %if.then29

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %37 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sk, align 4
  %sk_lock = getelementptr inbounds %struct.sock, ptr %38, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #10
  %39 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sk, align 4
  %41 = getelementptr inbounds %struct.sock_common, ptr %40, i32 0, i32 13
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %and.i.i = and i32 %43, -257
  store i32 %and.i.i, ptr %41, align 4
  %44 = load ptr, ptr %sk, align 4
  %sk_lock33 = getelementptr inbounds %struct.sock, ptr %44, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock33) #10
  tail call fastcc void @local_bh_enable()
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end27.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ax25_get_route.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -113, %ax25_get_route.exit.cleanup_crit_edge ], [ 0, %if.then29 ], [ 0, %if.end27.cleanup_crit_edge ], [ -113, %if.end.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.then18.cleanup_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @ax25_route_lock) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax25_findbyuid([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ax25_rt_build_path(ptr noundef %skb, ptr noundef %src, ptr noundef %dest, ptr noundef %digi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ndigi = getelementptr inbounds %struct.ax25_digi, ptr %digi, i32 0, i32 2
  %0 = ptrtoint ptr %ndigi to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ndigi, align 1
  %conv = zext i8 %1 to i32
  %mul = mul nuw nsw i32 %conv, 7
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %mul)
  %cmp = icmp ult i32 %sub.ptr.sub.i, %mul
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge, !prof !58

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %entry
  %call3 = tail call ptr @skb_expand_head(ptr noundef %skb, i32 noundef %mul) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #15
  br label %cleanup

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %skb.addr.0 = phi ptr [ %call3, %if.then.if.end7_crit_edge ], [ %skb, %entry.if.end7_crit_edge ]
  %call8 = tail call ptr @skb_push(ptr noundef %skb.addr.0, i32 noundef %mul) #10
  %call9 = tail call i32 @ax25_addr_build(ptr noundef %call8, ptr noundef %src, ptr noundef %dest, ptr noundef %digi, i32 noundef 1, i32 noundef 8) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end
  %retval.0 = phi ptr [ %skb.addr.0, %if.end7 ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_expand_head(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_addr_build(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_rt_free() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @ax25_route_list, align 4
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @ax25_route_lock) #10
  %cmp.not4 = icmp eq ptr %0, null
  br i1 %cmp.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %ax25_rt.05 = phi ptr [ %2, %while.body.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %1 = ptrtoint ptr %ax25_rt.05 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ax25_rt.05, align 4
  %digipeat = getelementptr inbounds %struct.ax25_route, ptr %ax25_rt.05, i32 0, i32 4
  %3 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %digipeat, align 4
  tail call void @kfree(ptr noundef %4) #10
  tail call void @kfree(ptr noundef nonnull %ax25_rt.05) #10
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @ax25_route_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax25_addr_ax25dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax2asc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38}
!llvm.named.register.sp = !{!40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ax25/ax25_route.c", i32 40, i32 1}
!2 = !{ptr @ax25_route_lock, !1, !"ax25_route_lock", i1 false, i1 false}
!3 = !{ptr @ax25_rt_seqops, !4, !"ax25_rt_seqops", i1 false, i1 false}
!4 = !{!"../net/ax25/ax25_route.c", i32 332, i32 29}
!5 = distinct !{null, !6, !"__warned", i1 false, i1 false}
!6 = !{!"../net/ax25/ax25_route.c", i32 415, i32 24}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/ax25/ax25_route.c", i32 461, i32 4}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ax25_rt_build_path._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @ax25_rt_build_path._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @ax25_route_list, !14, !"ax25_route_list", i1 false, i1 false}
!14 = !{!"../net/ax25/ax25_route.c", i32 39, i32 20}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!17 = distinct !{null, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/ax25/ax25_route.c", i32 295, i32 17}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/ax25/ax25_route.c", i32 302, i32 15}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/ax25/ax25_route.c", i32 306, i32 19}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/ax25/ax25_route.c", i32 308, i32 40}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/ax25/ax25_route.c", i32 312, i32 18}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/ax25/ax25_route.c", i32 315, i32 18}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/ax25/ax25_route.c", i32 318, i32 18}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/ax25/ax25_route.c", i32 324, i32 21}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/ax25/ax25_route.c", i32 327, i32 17}
!40 = !{!"sp"}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i64 2152289573, i64 2152289598}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{i64 4785128}
!53 = !{i64 4785325}
!54 = !{i64 2152270558}
!55 = !{i64 2148384015}
!56 = !{i64 2148298479, i64 2148298511, i64 2148298540, i64 2148298574, i64 2148298605, i64 2148298628}
!57 = !{i64 2149320295}
!58 = !{!"branch_weights", i32 1, i32 2000}
