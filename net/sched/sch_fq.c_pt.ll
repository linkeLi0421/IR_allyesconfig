; ModuleID = '/llk/IR_all_yes/net/sched/sch_fq.c_pt.bc'
source_filename = "../net/sched/sch_fq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fq_flow = type { %struct.rb_root, ptr, %union.anon.189, %struct.rb_node, ptr, i32, i32, i32, ptr, %struct.rb_node, i64, [64 x i8] }
%struct.rb_root = type { ptr }
%union.anon.189 = type { ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.50 }
%union.anon.50 = type { i32 }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, [64 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [8 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, ptr, [28 x i8], [0 x i32] }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.150, [48 x i8], %union.anon.151, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.153, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.150 = type { i64 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { i32, ptr }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.155, i32, i32, i32, i16, i16, %union.anon.157, i32, %union.anon.158, %union.anon.159, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.155 = type { i32 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%union.anon.159 = type { i16 }
%struct.fq_sched_data = type { %struct.fq_flow_head, %struct.fq_flow_head, %struct.rb_root, i64, i64, i32, [84 x i8], %struct.fq_flow, i32, i32, i32, i32, i32, i64, i64, i32, i32, ptr, i8, i8, i8, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, %struct.qdisc_watchdog, [40 x i8] }
%struct.fq_flow_head = type { ptr, ptr }
%struct.qdisc_watchdog = type { i64, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.140, [0 x i32], %union.anon.141, i16, i16, %union.anon.142, %struct.refcount_struct, [0 x i32], %union.anon.143 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.49 }
%union.anon.49 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.140 = type { i32 }
%union.anon.141 = type { %struct.hlist_node }
%union.anon.142 = type { i32 }
%union.anon.143 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.144, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.145, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.146, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.144 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.145 = type { ptr }
%union.anon.146 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.vlan_hdr = type { i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.183, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.183 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.tc_fq_qd_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64 }

@fq_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr null, [16 x i8] c"fq\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 512, i32 0, ptr @fq_enqueue, ptr @fq_dequeue, ptr @qdisc_peek_dequeued, ptr @fq_init, ptr @fq_reset, ptr @fq_destroy, ptr @fq_change, ptr null, ptr null, ptr null, ptr @fq_dump, ptr @fq_dump_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@fq_flow_cachep = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__initcall__kmod_sch_fq__614_1074_fq_module_init6 = internal global ptr @fq_module_init, section ".initcall6.init", align 4
@__exitcall_fq_module_exit = internal global ptr @fq_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author615 = internal constant [27 x i8] c"sch_fq.author=Eric Dumazet\00", section ".modinfo", align 1
@__UNIQUE_ID_file616 = internal constant [29 x i8] c"sch_fq.file=net/sched/sch_fq\00", section ".modinfo", align 1
@__UNIQUE_ID_license617 = internal constant [19 x i8] c"sch_fq.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description618 = internal constant [47 x i8] c"sch_fq.description=Fair Queue Packet Scheduler\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@throttled = internal global %struct.fq_flow zeroinitializer, align 128
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@fq_change.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sch_fq: invalid quantum\00", [40 x i8] zeroinitializer }, align 32
@fq_change._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.fq_change = private unnamed_addr constant [10 x i8] c"fq_change\00", align 1
@fq_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.fq_change, ptr @.str.6, i32 853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014sch_fq: defrate %u ignored.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/sched/sch_fq.c\00", [45 x i8] zeroinitializer }, align 32
@fq_change._entry_ptr = internal global ptr @fq_change._entry, section ".printk_index", align 4
@fq_policy = internal constant { <{ { i8, i8, i16, { i16, [2 x i8] } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }>, [32 x i8] } { <{ { i8, i8, i16, { i16, [2 x i8] } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ { i8, i8, i16, { i16, [2 x i8] } } { i8 0, i8 0, i16 0, { i16, [2 x i8] } { i16 13, [2 x i8] undef } }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.50 zeroinitializer } }>, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fq_flow_cache\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.12 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 598, i32 8 }
@___asan_gen_.15 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 271, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 596, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 843, i32 4 }
@___asan_gen_.26 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 852, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [10 x i8] c"fq_policy\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 782, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [22 x i8] c"../net/sched/sch_fq.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 1056, i32 37 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author615, ptr @__UNIQUE_ID_description618, ptr @__UNIQUE_ID_file616, ptr @__UNIQUE_ID_license617, ptr @__exitcall_fq_module_exit, ptr @__initcall__kmod_sch_fq__614_1074_fq_module_init6, ptr @fq_change._entry, ptr @fq_change._entry_ptr, ptr @fq_module_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @fq_change.__msg, ptr @fq_change._rs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @fq_policy, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fq_change.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fq_change._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fq_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fq_policy to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fq_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @fq_qdisc_ops) #10
  %0 = load ptr, ptr @fq_flow_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fq_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.8, i32 noundef 128, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  store ptr %call, ptr @fq_flow_cachep, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_qdisc(ptr noundef nonnull @fq_qdisc_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @fq_flow_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fq_enqueue(ptr noundef %skb, ptr noundef %sch, ptr nocapture noundef %to_free) #2 align 64 {
entry:
  %tofree.i.i = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %0 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen, align 8
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %2 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end, label %if.then, !prof !50

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %to_free, align 4
  %6 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %7 = ptrtoint ptr %drops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %drops.i.i.i, align 4
  %inc.i.i.i = add i32 %8, 1
  store i32 %inc.i.i.i, ptr %drops.i.i.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %9, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool4.not = icmp eq i64 %11, 0
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i64 @ktime_get() #10
  %ktime_cache = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %12 = ptrtoint ptr %ktime_cache to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call.i, ptr %ktime_cache, align 32
  br label %if.end24

if.else:                                          ; preds = %if.end
  %ktime_cache.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %13 = ptrtoint ptr %ktime_cache.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ktime_cache.i, align 32
  %horizon.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19
  %15 = ptrtoint ptr %horizon.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %horizon.i, align 32
  %add.i = add i64 %16, %14
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %add.i)
  %cmp.i = icmp sgt i64 %11, %add.i
  br i1 %cmp.i, label %if.then9, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then9:                                         ; preds = %if.else
  %call.i116 = tail call i64 @ktime_get() #10
  %17 = ptrtoint ptr %ktime_cache.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %call.i116, ptr %ktime_cache.i, align 32
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %9, align 8
  %20 = ptrtoint ptr %horizon.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %horizon.i, align 32
  %add.i119 = add i64 %21, %call.i116
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %add.i119)
  %cmp.i120 = icmp sgt i64 %19, %add.i119
  br i1 %cmp.i120, label %if.then13, label %if.then9.if.end21_crit_edge

if.then9.if.end21_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then13:                                        ; preds = %if.then9
  %horizon_drop = getelementptr inbounds %struct.fq_sched_data, ptr %privdata.i, i32 0, i32 20
  %22 = ptrtoint ptr %horizon_drop to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %horizon_drop, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool14.not = icmp eq i8 %23, 0
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %stat_horizon_drops = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %stat_horizon_drops to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %stat_horizon_drops, align 8
  %inc = add i64 %25, 1
  store i64 %inc, ptr %stat_horizon_drops, align 8
  %26 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %to_free, align 4
  %28 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i121 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %29 = ptrtoint ptr %drops.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %drops.i.i.i121, align 4
  %inc.i.i.i122 = add i32 %30, 1
  store i32 %inc.i.i.i122, ptr %drops.i.i.i121, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %stat_horizon_caps = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 6
  %31 = ptrtoint ptr %stat_horizon_caps to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %stat_horizon_caps, align 16
  %inc18 = add i64 %32, 1
  store i64 %inc18, ptr %stat_horizon_caps, align 16
  %33 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %add.i119, ptr %9, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end17, %if.then9.if.end21_crit_edge, %if.else.if.end21_crit_edge
  %34 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %9, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.end21, %if.then5
  %.sink = phi i64 [ %35, %if.end21 ], [ %call.i, %if.then5 ]
  %data.i123 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %36 = ptrtoint ptr %data.i123 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %.sink, ptr %data.i123, align 8
  %37 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %40 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %priority.i, align 4
  %and.i = and i32 %41, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i)
  %cmp.i124 = icmp eq i32 %and.i, 7
  br i1 %cmp.i124, label %if.end24.fq_classify.exit.thread_crit_edge, label %if.end.i, !prof !51

if.end24.fq_classify.exit.thread_crit_edge:       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %fq_classify.exit.thread

if.end.i:                                         ; preds = %if.end24
  %tobool2.not.i = icmp eq ptr %39, null
  br i1 %tobool2.not.i, label %if.end.i.if.then3.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %39, i32 0, i32 4
  %42 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %43 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, 5120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %lor.lhs.false.i.if.then3.i_crit_edge

lor.lhs.false.i.if.then3.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

if.then3.i:                                       ; preds = %lor.lhs.false.i.if.then3.i_crit_edge, %if.end.i.if.then3.i_crit_edge
  %l4_hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %44 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load.i.i = load i16, ptr %l4_hash.i.i, align 8
  %45 = and i16 %bf.load.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %if.then.i.i, label %if.then3.i.skb_get_hash.exit.i_crit_edge

if.then3.i.skb_get_hash.exit.i_crit_edge:         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_get_hash.exit.i

if.then.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__skb_get_hash(ptr noundef %skb) #10
  br label %skb_get_hash.exit.i

skb_get_hash.exit.i:                              ; preds = %if.then.i.i, %if.then3.i.skb_get_hash.exit.i_crit_edge
  %hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %47 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hash.i.i, align 4
  %orphan_mask.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19, i32 2
  %49 = ptrtoint ptr %orphan_mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %orphan_mask.i, align 8
  %and5.i = and i32 %50, %48
  %shl.i = shl i32 %and5.i, 1
  %or.i = or i32 %shl.i, 1
  %51 = inttoptr i32 %or.i to ptr
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %52 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %destructor.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i202.i

if.then.i202.i:                                   ; preds = %skb_get_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %53(ptr noundef %skb) #10
  %54 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %destructor.i.i, align 4
  %55 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %37, align 4
  br label %if.end16.i

do.body.i.i:                                      ; preds = %skb_get_hash.exit.i
  %56 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %37, align 4
  %tobool3.not.i.i = icmp eq ptr %57, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.if.end16.i_crit_edge, label %do.body7.i.i, !prof !50

do.body.i.i.if.end16.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

do.body7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #10, !srcloc !52
  unreachable

if.else.i:                                        ; preds = %lor.lhs.false.i
  %58 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %59)
  %cmp6.i = icmp eq i8 %59, 7
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i.if.end16.i_crit_edge

if.else.i.if.end16.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then8.i:                                       ; preds = %if.else.i
  %l4_hash.i203.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %60 = ptrtoint ptr %l4_hash.i203.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %bf.load.i204.i = load i16, ptr %l4_hash.i203.i, align 8
  %61 = and i16 %bf.load.i204.i, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %if.then.i205.i, label %if.then8.i.skb_get_hash.exit207.i_crit_edge

if.then8.i.skb_get_hash.exit207.i_crit_edge:      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_get_hash.exit207.i

if.then.i205.i:                                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__skb_get_hash(ptr noundef %skb) #10
  br label %skb_get_hash.exit207.i

skb_get_hash.exit207.i:                           ; preds = %if.then.i205.i, %if.then8.i.skb_get_hash.exit207.i_crit_edge
  %hash.i206.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %63 = ptrtoint ptr %hash.i206.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hash.i206.i, align 4
  %orphan_mask11.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19, i32 2
  %65 = ptrtoint ptr %orphan_mask11.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %orphan_mask11.i, align 8
  %and12.i = and i32 %66, %64
  %shl13.i = shl i32 %and12.i, 1
  %or14.i = or i32 %shl13.i, 1
  %67 = inttoptr i32 %or14.i to ptr
  br label %if.end16.i

if.end16.i:                                       ; preds = %skb_get_hash.exit207.i, %if.else.i.if.end16.i_crit_edge, %do.body.i.i.if.end16.i_crit_edge, %if.then.i202.i
  %sk.0.i = phi ptr [ %67, %skb_get_hash.exit207.i ], [ %39, %if.else.i.if.end16.i_crit_edge ], [ %51, %if.then.i202.i ], [ %51, %do.body.i.i.if.end16.i_crit_edge ]
  %fq_root.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19, i32 4
  %68 = ptrtoint ptr %fq_root.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fq_root.i, align 16
  %fq_trees_log.i = getelementptr inbounds %struct.fq_sched_data, ptr %privdata.i, i32 0, i32 19
  %70 = ptrtoint ptr %fq_trees_log.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %fq_trees_log.i, align 1
  %conv17.i = zext i8 %71 to i32
  %72 = ptrtoint ptr %sk.0.i to i32
  %mul.i.i.i.i = mul i32 %72, 1640531527
  %sub.i.i.i = sub nsw i32 32, %conv17.i
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, %sub.i.i.i
  %arrayidx.i = getelementptr %struct.rb_root, ptr %69, i32 %shr.i.i.i
  %flows.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 21
  %73 = ptrtoint ptr %flows.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flows.i, align 8
  %shl21.i = shl i32 2, %conv17.i
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %shl21.i)
  %cmp22.not.i = icmp ult i32 %74, %shl21.i
  br i1 %cmp22.not.i, label %if.end16.i.if.end28.i_crit_edge, label %land.lhs.true.i

if.end16.i.if.end28.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

land.lhs.true.i:                                  ; preds = %if.end16.i
  %inactive_flows.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 22
  %75 = ptrtoint ptr %inactive_flows.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %inactive_flows.i, align 4
  %div201.i = lshr i32 %74, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %div201.i)
  %cmp25.i = icmp ugt i32 %76, %div201.i
  br i1 %cmp25.i, label %if.then27.i, label %land.lhs.true.i.if.end28.i_crit_edge

land.lhs.true.i.if.end28.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

if.then27.i:                                      ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tofree.i.i) #10
  %77 = call ptr @memset(ptr %tofree.i.i, i32 255, i32 32)
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not41.i.i = icmp eq ptr %79, null
  br i1 %tobool.not41.i.i, label %if.then27.i.fq_gc.exit.i_crit_edge, label %if.then27.i.while.body.i.i_crit_edge

if.then27.i.while.body.i.i_crit_edge:             ; preds = %if.then27.i
  br label %while.body.i.i

if.then27.i.fq_gc.exit.i_crit_edge:               ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fq_gc.exit.i

while.body.i.i:                                   ; preds = %if.end6.i.i.while.body.i.i_crit_edge, %if.then27.i.while.body.i.i_crit_edge
  %80 = phi ptr [ %91, %if.end6.i.i.while.body.i.i_crit_edge ], [ %79, %if.then27.i.while.body.i.i_crit_edge ]
  %fcnt.042.i.i = phi i32 [ %fcnt.1.i.i, %if.end6.i.i.while.body.i.i_crit_edge ], [ 0, %if.then27.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %80, i32 -12
  %sk1.i.i = getelementptr i8, ptr %80, i32 12
  %81 = ptrtoint ptr %sk1.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sk1.i.i, align 8
  %cmp.i.i = icmp eq ptr %82, %sk.0.i
  br i1 %cmp.i.i, label %while.body.i.i.while.end.i.i_crit_edge, label %if.end.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %83 = getelementptr i8, ptr %80, i32 -4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 8
  %and.i.i.i.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.end.i.i.if.end6.i.i_crit_edge, label %fq_gc_candidate.exit.i.i

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i.i

fq_gc_candidate.exit.i.i:                         ; preds = %if.end.i.i
  %add.i.i.i = add i32 %85, 300
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %86 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i208.i = sub i32 %add.i.i.i, %86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i208.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i208.i, 0
  br i1 %cmp.i.i.i, label %if.then2.i.i, label %fq_gc_candidate.exit.i.i.if.end6.i.i_crit_edge

fq_gc_candidate.exit.i.i.if.end6.i.i_crit_edge:   ; preds = %fq_gc_candidate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i.i

if.then2.i.i:                                     ; preds = %fq_gc_candidate.exit.i.i
  %inc.i.i = add i32 %fcnt.042.i.i, 1
  %arrayidx.i.i = getelementptr [8 x ptr], ptr %tofree.i.i, i32 0, i32 %fcnt.042.i.i
  %87 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %add.ptr.i.i, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i.i)
  %cmp3.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %cmp3.i.i, label %if.then2.i.i.for.body.preheader.i.i_crit_edge, label %if.then2.i.i.if.end6.i.i_crit_edge

if.then2.i.i.if.end6.i.i_crit_edge:               ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i.i

if.then2.i.i.for.body.preheader.i.i_crit_edge:    ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader.i.i

if.end6.i.i:                                      ; preds = %if.then2.i.i.if.end6.i.i_crit_edge, %fq_gc_candidate.exit.i.i.if.end6.i.i_crit_edge, %if.end.i.i.if.end6.i.i_crit_edge
  %fcnt.1.i.i = phi i32 [ %inc.i.i, %if.then2.i.i.if.end6.i.i_crit_edge ], [ %fcnt.042.i.i, %fq_gc_candidate.exit.i.i.if.end6.i.i_crit_edge ], [ %fcnt.042.i.i, %if.end.i.i.if.end6.i.i_crit_edge ]
  %88 = ptrtoint ptr %sk1.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sk1.i.i, align 8
  %cmp8.i.i = icmp ugt ptr %89, %sk.0.i
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %80, i32 0, i32 1
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %80, i32 0, i32 2
  %p.1.i.i = select i1 %cmp8.i.i, ptr %rb_right.i.i, ptr %rb_left.i.i
  %90 = ptrtoint ptr %p.1.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %p.1.i.i, align 4
  %tobool.not.i209.i = icmp eq ptr %91, null
  br i1 %tobool.not.i209.i, label %if.end6.i.i.while.end.i.i_crit_edge, label %if.end6.i.i.while.body.i.i_crit_edge

if.end6.i.i.while.body.i.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

if.end6.i.i.while.end.i.i_crit_edge:              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end6.i.i.while.end.i.i_crit_edge, %while.body.i.i.while.end.i.i_crit_edge
  %fcnt.2.i.i = phi i32 [ %fcnt.1.i.i, %if.end6.i.i.while.end.i.i_crit_edge ], [ %fcnt.042.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fcnt.2.i.i)
  %tobool11.not.i.i = icmp eq i32 %fcnt.2.i.i, 0
  br i1 %tobool11.not.i.i, label %while.end.i.i.fq_gc.exit.i_crit_edge, label %for.cond.preheader.i.i

while.end.i.i.fq_gc.exit.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fq_gc.exit.i

for.cond.preheader.i.i:                           ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fcnt.2.i.i)
  %cmp1445.i.i = icmp sgt i32 %fcnt.2.i.i, 0
  br i1 %cmp1445.i.i, label %for.cond.preheader.i.i.for.body.preheader.i.i_crit_edge, label %for.cond.preheader.i.i.for.end.i.i_crit_edge

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.cond.preheader.i.i.for.body.preheader.i.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %for.cond.preheader.i.i.for.body.preheader.i.i_crit_edge, %if.then2.i.i.for.body.preheader.i.i_crit_edge
  %fcnt.25256.i.i = phi i32 [ %fcnt.2.i.i, %for.cond.preheader.i.i.for.body.preheader.i.i_crit_edge ], [ 8, %if.then2.i.i.for.body.preheader.i.i_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.046.i.i = phi i32 [ %dec.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %fcnt.25256.i.i, %for.body.preheader.i.i ]
  %dec.i.i = add nsw i32 %i.046.i.i, -1
  %arrayidx15.i.i = getelementptr [8 x ptr], ptr %tofree.i.i, i32 0, i32 %dec.i.i
  %92 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx15.i.i, align 4
  %fq_node.i.i = getelementptr inbounds %struct.fq_flow, ptr %93, i32 0, i32 3
  tail call void @rb_erase(ptr noundef %fq_node.i.i, ptr noundef %arrayidx.i) #10
  %cmp14.i.i = icmp ugt i32 %i.046.i.i, 1
  br i1 %cmp14.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %fcnt.25255.i.i = phi i32 [ %fcnt.2.i.i, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %fcnt.25256.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %94 = ptrtoint ptr %flows.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flows.i, align 8
  %sub.i.i = sub i32 %95, %fcnt.25255.i.i
  store i32 %sub.i.i, ptr %flows.i, align 8
  %96 = ptrtoint ptr %inactive_flows.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %inactive_flows.i, align 4
  %sub16.i.i = sub i32 %97, %fcnt.25255.i.i
  store i32 %sub16.i.i, ptr %inactive_flows.i, align 4
  %conv.i210.i = sext i32 %fcnt.25255.i.i to i64
  %stat_gc_flows.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 1
  %98 = ptrtoint ptr %stat_gc_flows.i.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %stat_gc_flows.i.i, align 8
  %add.i.i = add i64 %99, %conv.i210.i
  store i64 %add.i.i, ptr %stat_gc_flows.i.i, align 8
  %100 = load ptr, ptr @fq_flow_cachep, align 4
  call void @kmem_cache_free_bulk(ptr noundef %100, i32 noundef %fcnt.25255.i.i, ptr noundef nonnull %tofree.i.i) #10
  br label %fq_gc.exit.i

fq_gc.exit.i:                                     ; preds = %for.end.i.i, %while.end.i.i.fq_gc.exit.i_crit_edge, %if.then27.i.fq_gc.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tofree.i.i) #10
  br label %if.end28.i

if.end28.i:                                       ; preds = %fq_gc.exit.i, %land.lhs.true.i.if.end28.i_crit_edge, %if.end16.i.if.end28.i_crit_edge
  %101 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i, align 4
  %tobool29.not217.i = icmp eq ptr %102, null
  br i1 %tobool29.not217.i, label %if.end28.i.while.end.i_crit_edge, label %if.end28.i.while.body.i_crit_edge

if.end28.i.while.body.i_crit_edge:                ; preds = %if.end28.i
  br label %while.body.i

if.end28.i.while.end.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i:                                     ; preds = %if.end73.i.while.body.i_crit_edge, %if.end28.i.while.body.i_crit_edge
  %103 = phi ptr [ %126, %if.end73.i.while.body.i_crit_edge ], [ %102, %if.end28.i.while.body.i_crit_edge ]
  %sk30.i = getelementptr i8, ptr %103, i32 12
  %104 = ptrtoint ptr %sk30.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sk30.i, align 8
  %cmp31.i = icmp eq ptr %105, %sk.0.i
  br i1 %cmp31.i, label %if.then33.i, label %if.end73.i

if.then33.i:                                      ; preds = %while.body.i
  %add.ptr.le.i = getelementptr i8, ptr %103, i32 -12
  %106 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %37, align 4
  %cmp34.i = icmp eq ptr %107, %sk.0.i
  br i1 %cmp34.i, label %land.rhs.i, label %if.then33.i.fq_classify.exit_crit_edge

if.then33.i.fq_classify.exit_crit_edge:           ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fq_classify.exit

land.rhs.i:                                       ; preds = %if.then33.i
  %socket_hash.i = getelementptr i8, ptr %103, i32 16
  %108 = ptrtoint ptr %socket_hash.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %socket_hash.i, align 4
  %110 = getelementptr inbounds %struct.sock_common, ptr %sk.0.i, i32 0, i32 1
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %112)
  %cmp37.not.i = icmp eq i32 %109, %112
  br i1 %cmp37.not.i, label %land.rhs.i.fq_classify.exit_crit_edge, label %if.then45.i, !prof !50

land.rhs.i.fq_classify.exit_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fq_classify.exit

if.then45.i:                                      ; preds = %land.rhs.i
  %initial_quantum.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1
  %113 = ptrtoint ptr %initial_quantum.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %initial_quantum.i, align 4
  %credit.i = getelementptr i8, ptr %103, i32 24
  %115 = ptrtoint ptr %credit.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %credit.i, align 4
  %116 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %110, align 8
  %118 = ptrtoint ptr %socket_hash.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %socket_hash.i, align 4
  %rate_enable.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 20
  %119 = ptrtoint ptr %rate_enable.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %rate_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool48.not.i = icmp eq i8 %120, 0
  br i1 %tobool48.not.i, label %if.then45.i.if.end68.i_crit_edge, label %do.end54.i

if.then45.i.if.end68.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68.i

do.end54.i:                                       ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !53
  %sk_pacing_status.i = getelementptr inbounds %struct.sock, ptr %sk.0.i, i32 0, i32 30
  %121 = ptrtoint ptr %sk_pacing_status.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile i32 2, ptr %sk_pacing_status.i, align 4
  br label %if.end68.i

if.end68.i:                                       ; preds = %do.end54.i, %if.then45.i.if.end68.i_crit_edge
  %next.i.i = getelementptr i8, ptr %103, i32 28
  %122 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %next.i.i, align 8
  %cmp.i211.i = icmp eq ptr %123, @throttled
  br i1 %cmp.i211.i, label %if.then70.i, label %if.end68.i.if.end71.i_crit_edge

if.end68.i.if.end71.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71.i

if.then70.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @fq_flow_unset_throttled(ptr noundef %privdata.i, ptr noundef %add.ptr.le.i) #10
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then70.i, %if.end68.i.if.end71.i_crit_edge
  %time_next_packet.i = getelementptr i8, ptr %103, i32 44
  %124 = ptrtoint ptr %time_next_packet.i to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 0, ptr %time_next_packet.i, align 8
  br label %fq_classify.exit

if.end73.i:                                       ; preds = %while.body.i
  %cmp75.i = icmp ugt ptr %105, %sk.0.i
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %103, i32 0, i32 1
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %103, i32 0, i32 2
  %p.1.i = select i1 %cmp75.i, ptr %rb_right.i, ptr %rb_left.i
  %125 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %p.1.i, align 4
  %tobool29.not.i = icmp eq ptr %126, null
  br i1 %tobool29.not.i, label %while.cond.while.end_crit_edge.i, label %if.end73.i.while.body.i_crit_edge

if.end73.i.while.body.i_crit_edge:                ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  %phi.cast.le.i = ptrtoint ptr %103 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %if.end28.i.while.end.i_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end28.i.while.end.i_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %arrayidx.i, %if.end28.i.while.end.i_crit_edge ]
  %127 = load ptr, ptr @fq_flow_cachep, align 4
  %call.i.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %127, i32 noundef 11040) #10
  %tobool81.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool81.not.i, label %if.then90.i, label %if.end92.i, !prof !51

if.then90.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %stat_allocation_errors.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 2
  %128 = ptrtoint ptr %stat_allocation_errors.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %stat_allocation_errors.i, align 8
  %inc.i = add i64 %129, 1
  store i64 %inc.i, ptr %stat_allocation_errors.i, align 8
  br label %fq_classify.exit.thread

if.end92.i:                                       ; preds = %while.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %130 = load volatile i32, ptr @jiffies, align 128
  %or.i.i = or i32 %130, 1
  %131 = getelementptr inbounds %struct.fq_flow, ptr %call.i.i, i32 0, i32 2
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %or.i.i, ptr %131, align 8
  %sk93.i = getelementptr inbounds %struct.fq_flow, ptr %call.i.i, i32 0, i32 4
  %133 = ptrtoint ptr %sk93.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %sk.0.i, ptr %sk93.i, align 8
  %134 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %37, align 4
  %cmp94.i = icmp eq ptr %135, %sk.0.i
  br i1 %cmp94.i, label %if.then96.i, label %if.end92.i.if.end125.i_crit_edge

if.end92.i.if.end125.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.i

if.then96.i:                                      ; preds = %if.end92.i
  %136 = getelementptr inbounds %struct.sock_common, ptr %sk.0.i, i32 0, i32 1
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %136, align 8
  %socket_hash98.i = getelementptr inbounds %struct.fq_flow, ptr %call.i.i, i32 0, i32 5
  %139 = ptrtoint ptr %socket_hash98.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %socket_hash98.i, align 4
  %rate_enable99.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 20
  %140 = ptrtoint ptr %rate_enable99.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %rate_enable99.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool100.not.i = icmp eq i8 %141, 0
  br i1 %tobool100.not.i, label %if.then96.i.if.end125.i_crit_edge, label %do.end109.i

if.then96.i.if.end125.i_crit_edge:                ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.i

do.end109.i:                                      ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  %sk_pacing_status115.i = getelementptr inbounds %struct.sock, ptr %sk.0.i, i32 0, i32 30
  %142 = ptrtoint ptr %sk_pacing_status115.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile i32 2, ptr %sk_pacing_status115.i, align 4
  br label %if.end125.i

if.end125.i:                                      ; preds = %do.end109.i, %if.then96.i.if.end125.i_crit_edge, %if.end92.i.if.end125.i_crit_edge
  %initial_quantum126.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1
  %143 = ptrtoint ptr %initial_quantum126.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %initial_quantum126.i, align 4
  %credit127.i = getelementptr inbounds %struct.fq_flow, ptr %call.i.i, i32 0, i32 7
  %145 = ptrtoint ptr %credit127.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %credit127.i, align 4
  %fq_node.i = getelementptr inbounds %struct.fq_flow, ptr %call.i.i, i32 0, i32 3
  %146 = ptrtoint ptr %fq_node.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %parent.0.lcssa.i, ptr %fq_node.i, align 4
  %rb_right.i212.i = getelementptr inbounds %struct.fq_flow, ptr %call.i.i, i32 0, i32 3, i32 1
  %147 = ptrtoint ptr %rb_right.i212.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr null, ptr %rb_right.i212.i, align 8
  %rb_left.i213.i = getelementptr inbounds %struct.fq_flow, ptr %call.i.i, i32 0, i32 3, i32 2
  %148 = ptrtoint ptr %rb_left.i213.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %rb_left.i213.i, align 4
  %149 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %fq_node.i, ptr %p.0.lcssa.i, align 4
  call void @rb_insert_color(ptr noundef %fq_node.i, ptr noundef %arrayidx.i) #10
  %150 = ptrtoint ptr %flows.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %flows.i, align 8
  %inc130.i = add i32 %151, 1
  store i32 %inc130.i, ptr %flows.i, align 8
  %inactive_flows131.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 22
  %152 = ptrtoint ptr %inactive_flows131.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %inactive_flows131.i, align 4
  %inc132.i = add i32 %153, 1
  store i32 %inc132.i, ptr %inactive_flows131.i, align 4
  br label %fq_classify.exit

fq_classify.exit.thread:                          ; preds = %if.then90.i, %if.end24.fq_classify.exit.thread_crit_edge
  %internal.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16
  %qlen26152 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 1
  %154 = ptrtoint ptr %qlen26152 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %qlen26152, align 32
  %internal155 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16
  br label %if.end38

fq_classify.exit:                                 ; preds = %if.end125.i, %if.end71.i, %land.rhs.i.fq_classify.exit_crit_edge, %if.then33.i.fq_classify.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i.i, %if.end125.i ], [ %add.ptr.le.i, %if.then33.i.fq_classify.exit_crit_edge ], [ %add.ptr.le.i, %if.end71.i ], [ %add.ptr.le.i, %land.rhs.i.fq_classify.exit_crit_edge ]
  %qlen26 = getelementptr inbounds %struct.fq_flow, ptr %retval.0.i, i32 0, i32 6
  %156 = ptrtoint ptr %qlen26 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %qlen26, align 32
  %flow_plimit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1, i32 1, i32 1
  %158 = ptrtoint ptr %flow_plimit to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %flow_plimit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %159)
  %cmp27.not = icmp uge i32 %157, %159
  %internal = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16
  %cmp28 = icmp ne ptr %retval.0.i, %internal
  %160 = select i1 %cmp27.not, i1 %cmp28, i1 false
  br i1 %160, label %if.then35, label %fq_classify.exit.if.end38_crit_edge, !prof !51

fq_classify.exit.if.end38_crit_edge:              ; preds = %fq_classify.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then35:                                        ; preds = %fq_classify.exit
  call void @__sanitizer_cov_trace_pc() #12
  %stat_flows_plimit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 24
  %161 = ptrtoint ptr %stat_flows_plimit to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %stat_flows_plimit, align 8
  %inc36 = add i64 %162, 1
  store i64 %inc36, ptr %stat_flows_plimit, align 8
  %163 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %to_free, align 4
  %165 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %164, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i125 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %166 = ptrtoint ptr %drops.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %drops.i.i.i125, align 4
  %inc.i.i.i126 = add i32 %167, 1
  store i32 %inc.i.i.i126, ptr %drops.i.i.i125, align 4
  br label %cleanup

if.end38:                                         ; preds = %fq_classify.exit.if.end38_crit_edge, %fq_classify.exit.thread
  %internal159 = phi ptr [ %internal155, %fq_classify.exit.thread ], [ %internal, %fq_classify.exit.if.end38_crit_edge ]
  %168 = phi i32 [ %155, %fq_classify.exit.thread ], [ %157, %fq_classify.exit.if.end38_crit_edge ]
  %qlen26158 = phi ptr [ %qlen26152, %fq_classify.exit.thread ], [ %qlen26, %fq_classify.exit.if.end38_crit_edge ]
  %retval.0.i157 = phi ptr [ %internal.i, %fq_classify.exit.thread ], [ %retval.0.i, %fq_classify.exit.if.end38_crit_edge ]
  %inc40 = add i32 %168, 1
  %169 = ptrtoint ptr %qlen26158 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %inc40, ptr %qlen26158, align 32
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %170 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %cb.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %172 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %backlog.i, align 4
  %add.i127 = add i32 %173, %171
  store i32 %add.i127, ptr %backlog.i, align 4
  %174 = getelementptr inbounds %struct.fq_flow, ptr %retval.0.i157, i32 0, i32 2
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %174, align 8
  %and.i128 = and i32 %176, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i128)
  %tobool.i.not = icmp eq i32 %and.i128, 0
  br i1 %tobool.i.not, label %if.end38.if.end49_crit_edge, label %if.then42

if.end38.if.end49_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then42:                                        ; preds = %if.end38
  %177 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %privdata.i, align 4
  %tobool.not.i = icmp eq ptr %178, null
  br i1 %tobool.not.i, label %if.else.i130, label %if.then.i129

if.then.i129:                                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  %last.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %179 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %last.i, align 4
  %next.i = getelementptr inbounds %struct.fq_flow, ptr %180, i32 0, i32 8
  %181 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %retval.0.i157, ptr %next.i, align 8
  br label %fq_flow_add_tail.exit

if.else.i130:                                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  %182 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %retval.0.i157, ptr %privdata.i, align 4
  br label %fq_flow_add_tail.exit

fq_flow_add_tail.exit:                            ; preds = %if.else.i130, %if.then.i129
  %last2.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %183 = ptrtoint ptr %last2.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %retval.0.i157, ptr %last2.i, align 4
  %next3.i = getelementptr inbounds %struct.fq_flow, ptr %retval.0.i157, i32 0, i32 8
  %184 = ptrtoint ptr %next3.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr null, ptr %next3.i, align 8
  %185 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %174, align 8
  %flow_refill_delay = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1, i32 1
  %187 = ptrtoint ptr %flow_refill_delay to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %flow_refill_delay, align 8
  %add43 = add i32 %188, %186
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %189 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add43, %189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp44 = icmp slt i32 %sub, 0
  br i1 %cmp44, label %if.then45, label %fq_flow_add_tail.exit.if.end48_crit_edge

fq_flow_add_tail.exit.if.end48_crit_edge:         ; preds = %fq_flow_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then45:                                        ; preds = %fq_flow_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %credit = getelementptr inbounds %struct.fq_flow, ptr %retval.0.i157, i32 0, i32 7
  %190 = ptrtoint ptr %credit to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %credit, align 4
  %quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2
  %192 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %quantum, align 128
  %194 = call i32 @llvm.umax.i32(i32 %191, i32 %193)
  %195 = ptrtoint ptr %credit to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %credit, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %fq_flow_add_tail.exit.if.end48_crit_edge
  %inactive_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 22
  %196 = ptrtoint ptr %inactive_flows to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %inactive_flows, align 4
  %dec = add i32 %197, -1
  store i32 %dec, ptr %inactive_flows, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end38.if.end49_crit_edge
  %head1.i = getelementptr inbounds %struct.fq_flow, ptr %retval.0.i157, i32 0, i32 1
  %198 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %head1.i, align 4
  %tobool.not.i132 = icmp eq ptr %199, null
  br i1 %tobool.not.i132, label %if.then5.critedge.i, label %lor.lhs.false.i133

lor.lhs.false.i133:                               ; preds = %if.end49
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %200 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %data.i.i, align 8
  %202 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %174, align 8
  %data.i44.i = getelementptr inbounds %struct.sk_buff, ptr %203, i32 0, i32 3, i32 8
  %204 = ptrtoint ptr %data.i44.i to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %data.i44.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %201, i64 %205)
  %cmp.not.i = icmp ult i64 %201, %205
  br i1 %cmp.not.i, label %while.cond.preheader.i, label %if.else.i134

while.cond.preheader.i:                           ; preds = %lor.lhs.false.i133
  %206 = ptrtoint ptr %retval.0.i157 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %retval.0.i157, align 4
  %tobool9.not47.i = icmp eq ptr %207, null
  br i1 %tobool9.not47.i, label %while.cond.preheader.i.while.end.i145_crit_edge, label %while.cond.preheader.i.cond.end.i_crit_edge

while.cond.preheader.i.cond.end.i_crit_edge:      ; preds = %while.cond.preheader.i
  br label %cond.end.i

while.cond.preheader.i.while.end.i145_crit_edge:  ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i145

if.then5.critedge.i:                              ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %208 = ptrtoint ptr %head1.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %skb, ptr %head1.i, align 4
  br label %if.end.i135

if.else.i134:                                     ; preds = %lor.lhs.false.i133
  call void @__sanitizer_cov_trace_pc() #12
  %209 = ptrtoint ptr %203 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %skb, ptr %203, align 8
  br label %if.end.i135

if.end.i135:                                      ; preds = %if.else.i134, %if.then5.critedge.i
  %210 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %skb, ptr %174, align 8
  %211 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr null, ptr %skb, align 8
  br label %flow_queue_add.exit

cond.end.i:                                       ; preds = %cond.end.i.cond.end.i_crit_edge, %while.cond.preheader.i.cond.end.i_crit_edge
  %212 = phi ptr [ %216, %cond.end.i.cond.end.i_crit_edge ], [ %207, %while.cond.preheader.i.cond.end.i_crit_edge ]
  %data.i46.i = getelementptr inbounds %struct.sk_buff, ptr %212, i32 0, i32 3, i32 8
  %213 = ptrtoint ptr %data.i46.i to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %data.i46.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %201, i64 %214)
  %cmp16.not.i = icmp ult i64 %201, %214
  %rb_right.i136 = getelementptr inbounds %struct.rb_node, ptr %212, i32 0, i32 1
  %rb_left.i137 = getelementptr inbounds %struct.rb_node, ptr %212, i32 0, i32 2
  %p.1.i138 = select i1 %cmp16.not.i, ptr %rb_left.i137, ptr %rb_right.i136
  %215 = ptrtoint ptr %p.1.i138 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %p.1.i138, align 4
  %tobool9.not.i = icmp eq ptr %216, null
  br i1 %tobool9.not.i, label %while.cond.while.end_crit_edge.i140, label %cond.end.i.cond.end.i_crit_edge

cond.end.i.cond.end.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

while.cond.while.end_crit_edge.i140:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %phi.cast.le.i139 = ptrtoint ptr %212 to i32
  br label %while.end.i145

while.end.i145:                                   ; preds = %while.cond.while.end_crit_edge.i140, %while.cond.preheader.i.while.end.i145_crit_edge
  %parent.0.lcssa.i141 = phi i32 [ %phi.cast.le.i139, %while.cond.while.end_crit_edge.i140 ], [ 0, %while.cond.preheader.i.while.end.i145_crit_edge ]
  %p.0.lcssa.i142 = phi ptr [ %p.1.i138, %while.cond.while.end_crit_edge.i140 ], [ %retval.0.i157, %while.cond.preheader.i.while.end.i145_crit_edge ]
  %217 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %parent.0.lcssa.i141, ptr %skb, align 4
  %rb_right.i.i143 = getelementptr inbounds %struct.rb_node, ptr %skb, i32 0, i32 1
  %218 = ptrtoint ptr %rb_right.i.i143 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr null, ptr %rb_right.i.i143, align 4
  %rb_left.i.i144 = getelementptr inbounds %struct.rb_node, ptr %skb, i32 0, i32 2
  %219 = ptrtoint ptr %rb_left.i.i144 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr null, ptr %rb_left.i.i144, align 4
  %220 = ptrtoint ptr %p.0.lcssa.i142 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %skb, ptr %p.0.lcssa.i142, align 4
  call void @rb_insert_color(ptr noundef %skb, ptr noundef %retval.0.i157) #10
  br label %flow_queue_add.exit

flow_queue_add.exit:                              ; preds = %while.end.i145, %if.end.i135
  %cmp51 = icmp eq ptr %retval.0.i157, %internal159
  br i1 %cmp51, label %if.then58, label %flow_queue_add.exit.if.end60_crit_edge, !prof !51

flow_queue_add.exit.if.end60_crit_edge:           ; preds = %flow_queue_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then58:                                        ; preds = %flow_queue_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  %stat_internal_packets = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 1
  %221 = ptrtoint ptr %stat_internal_packets to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %stat_internal_packets, align 16
  %inc59 = add i64 %222, 1
  store i64 %inc59, ptr %stat_internal_packets, align 16
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %flow_queue_add.exit.if.end60_crit_edge
  %223 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %qlen, align 8
  %inc63 = add i32 %224, 1
  store i32 %inc63, ptr %qlen, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.then35, %if.then15, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then15 ], [ 1, %if.then35 ], [ 0, %if.end60 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fq_dequeue(ptr noundef %sch) #2 align 64 {
entry:
  %vhdr.i.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %0 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup142_crit_edge, label %if.end

entry.cleanup142_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup142

if.end:                                           ; preds = %entry
  %internal = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16
  %call.i = tail call ptr @rb_first(ptr noundef %internal) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  %head2.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %head2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head2.i, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %fq_peek.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end
  br i1 %tobool3.not, label %if.end.i.if.then6_crit_edge, label %if.end6.i

if.end.i.if.then6_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %data.i.i, align 8
  %data.i21.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %data.i21.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %data.i21.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp.i = icmp ult i64 %5, %7
  %spec.select..i = select i1 %cmp.i, ptr %call.i, ptr %3
  br label %if.then6

fq_peek.exit:                                     ; preds = %if.end
  br i1 %tobool3.not, label %if.end8, label %fq_peek.exit.if.then6_crit_edge, !prof !50

fq_peek.exit.if.then6_crit_edge:                  ; preds = %fq_peek.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.then6:                                         ; preds = %fq_peek.exit.if.then6_crit_edge, %if.end6.i, %if.end.i.if.then6_crit_edge
  %retval.0.i296 = phi ptr [ %3, %fq_peek.exit.if.then6_crit_edge ], [ %spec.select..i, %if.end6.i ], [ %call.i, %if.end.i.if.then6_crit_edge ]
  tail call fastcc void @fq_dequeue_skb(ptr noundef %sch, ptr noundef %internal, ptr noundef nonnull %retval.0.i296)
  br label %out

if.end8:                                          ; preds = %fq_peek.exit
  %call.i246 = tail call i64 @ktime_get() #10
  %ktime_cache = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %8 = ptrtoint ptr %ktime_cache to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call.i246, ptr %ktime_cache, align 32
  %time_next_delayed_flow.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %9 = ptrtoint ptr %time_next_delayed_flow.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %time_next_delayed_flow.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i246, i64 %10)
  %cmp.i247 = icmp ult i64 %call.i246, %10
  br i1 %cmp.i247, label %if.end8.fq_check_throttled.exit_crit_edge, label %if.end.i248

if.end8.fq_check_throttled.exit_crit_edge:        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %fq_check_throttled.exit

if.end.i248:                                      ; preds = %if.end8
  %sub.i = sub i64 %call.i246, %10
  %conv.i = trunc i64 %sub.i to i32
  %unthrottle_latency_ns.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %11 = ptrtoint ptr %unthrottle_latency_ns.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %unthrottle_latency_ns.i, align 8
  %shr.i = lshr i32 %12, 3
  %shr4.i = lshr i32 %conv.i, 3
  %sub3.i = add i32 %12, %shr4.i
  %add.i = sub i32 %sub3.i, %shr.i
  store i32 %add.i, ptr %unthrottle_latency_ns.i, align 8
  %13 = ptrtoint ptr %time_next_delayed_flow.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %time_next_delayed_flow.i, align 8
  %delayed.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %call34.i = tail call ptr @rb_first(ptr noundef %delayed.i) #10
  %cmp7.not35.i = icmp eq ptr %call34.i, null
  br i1 %cmp7.not35.i, label %if.end.i248.fq_check_throttled.exit_crit_edge, label %while.body.lr.ph.i

if.end.i248.fq_check_throttled.exit_crit_edge:    ; preds = %if.end.i248
  call void @__sanitizer_cov_trace_pc() #12
  br label %fq_check_throttled.exit

while.body.lr.ph.i:                               ; preds = %if.end.i248
  %throttled_flows.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23
  %old_flows.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %last.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call36.i = phi ptr [ %call34.i, %while.body.lr.ph.i ], [ %call.i249, %cleanup.i.while.body.i_crit_edge ]
  %time_next_packet.i = getelementptr i8, ptr %call36.i, i32 12
  %14 = ptrtoint ptr %time_next_packet.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %time_next_packet.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %call.i246)
  %cmp9.i = icmp ugt i64 %15, %call.i246
  br i1 %cmp9.i, label %cleanup.thread.i, label %if.end14.i

cleanup.thread.i:                                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %time_next_delayed_flow.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %time_next_delayed_flow.i, align 8
  br label %fq_check_throttled.exit

if.end14.i:                                       ; preds = %while.body.i
  %add.ptr.i = getelementptr i8, ptr %call36.i, i32 -44
  tail call void @rb_erase(ptr noundef nonnull %call36.i, ptr noundef %delayed.i) #10
  %17 = ptrtoint ptr %throttled_flows.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %throttled_flows.i.i, align 64
  %dec.i.i = add i32 %18, -1
  store i32 %dec.i.i, ptr %throttled_flows.i.i, align 64
  %19 = ptrtoint ptr %old_flows.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %old_flows.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %last.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %last.i.i.i, align 4
  %next.i.i.i = getelementptr inbounds %struct.fq_flow, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i, ptr %next.i.i.i, align 8
  br label %cleanup.i

if.else.i.i.i:                                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %old_flows.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i, ptr %old_flows.i.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i.i.i, %if.then.i.i.i
  %25 = ptrtoint ptr %last.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i, ptr %last.i.i.i, align 4
  %next3.i.i.i = getelementptr i8, ptr %call36.i, i32 -4
  %26 = ptrtoint ptr %next3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %next3.i.i.i, align 8
  %call.i249 = tail call ptr @rb_first(ptr noundef %delayed.i) #10
  %cmp7.not.i = icmp eq ptr %call.i249, null
  br i1 %cmp7.not.i, label %cleanup.i.fq_check_throttled.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

cleanup.i.fq_check_throttled.exit_crit_edge:      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fq_check_throttled.exit

fq_check_throttled.exit:                          ; preds = %cleanup.i.fq_check_throttled.exit_crit_edge, %cleanup.thread.i, %if.end.i248.fq_check_throttled.exit_crit_edge, %if.end8.fq_check_throttled.exit_crit_edge
  %old_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %delayed.i265 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %throttled_flows.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23
  %stat_throttled.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 3
  %last.i278 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %inactive_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 22
  %quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2
  br label %begin

begin:                                            ; preds = %begin.backedge, %fq_check_throttled.exit
  %27 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %privdata.i, align 4
  %tobool10.not = icmp eq ptr %28, null
  br i1 %tobool10.not, label %if.then11, label %begin.if.end19_crit_edge

begin.if.end19_crit_edge:                         ; preds = %begin
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then11:                                        ; preds = %begin
  %29 = ptrtoint ptr %old_flows to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %old_flows, align 4
  %tobool13.not = icmp eq ptr %30, null
  br i1 %tobool13.not, label %if.then14, label %if.then11.if.end19_crit_edge

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then14:                                        ; preds = %if.then11
  %31 = ptrtoint ptr %time_next_delayed_flow.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %time_next_delayed_flow.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %32)
  %cmp.not = icmp eq i64 %32, -1
  br i1 %cmp.not, label %if.then14.cleanup142_crit_edge, label %if.then15

if.then14.cleanup142_crit_edge:                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup142

if.then15:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4, i32 1, i32 1
  %timer_slack = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4
  %33 = ptrtoint ptr %timer_slack to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %timer_slack, align 16
  %conv = zext i32 %34 to i64
  tail call void @qdisc_watchdog_schedule_range_ns(ptr noundef %watchdog, i64 noundef %32, i64 noundef %conv) #10
  br label %cleanup142

if.end19:                                         ; preds = %if.then11.if.end19_crit_edge, %begin.if.end19_crit_edge
  %head.0 = phi ptr [ %privdata.i, %begin.if.end19_crit_edge ], [ %old_flows, %if.then11.if.end19_crit_edge ]
  %35 = ptrtoint ptr %head.0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.0, align 4
  %credit = getelementptr inbounds %struct.fq_flow, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %credit to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %credit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp21 = icmp slt i32 %38, 1
  br i1 %cmp21, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.end19
  %39 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %quantum, align 128
  %add = add i32 %40, %38
  %41 = ptrtoint ptr %credit to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add, ptr %credit, align 4
  %next = getelementptr inbounds %struct.fq_flow, ptr %36, i32 0, i32 8
  %42 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %next, align 8
  %44 = ptrtoint ptr %head.0 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %head.0, align 4
  %45 = ptrtoint ptr %old_flows to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %old_flows, align 4
  %tobool.not.i250 = icmp eq ptr %46, null
  br i1 %tobool.not.i250, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %last.i278 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %last.i278, align 4
  %next.i = getelementptr inbounds %struct.fq_flow, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %36, ptr %next.i, align 8
  br label %fq_flow_add_tail.exit

if.else.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %old_flows to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %36, ptr %old_flows, align 4
  br label %fq_flow_add_tail.exit

fq_flow_add_tail.exit:                            ; preds = %if.else.i, %if.then.i
  %51 = ptrtoint ptr %last.i278 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %36, ptr %last.i278, align 4
  %52 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %next, align 8
  br label %begin.backedge

if.end27:                                         ; preds = %if.end19
  %call.i252 = tail call ptr @rb_first(ptr noundef %36) #10
  %tobool.not.i253 = icmp eq ptr %call.i252, null
  %head2.i254 = getelementptr inbounds %struct.fq_flow, ptr %36, i32 0, i32 1
  %53 = ptrtoint ptr %head2.i254 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %head2.i254, align 4
  %tobool29.not = icmp eq ptr %54, null
  br i1 %tobool.not.i253, label %fq_peek.exit264, label %if.end.i256

if.end.i256:                                      ; preds = %if.end27
  br i1 %tobool29.not, label %if.end.i256.if.then30_crit_edge, label %if.end6.i261

if.end.i256.if.then30_crit_edge:                  ; preds = %if.end.i256
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

if.end6.i261:                                     ; preds = %if.end.i256
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i257 = getelementptr inbounds %struct.sk_buff, ptr %call.i252, i32 0, i32 3, i32 8
  %55 = ptrtoint ptr %data.i.i257 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %data.i.i257, align 8
  %data.i21.i258 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 3, i32 8
  %57 = ptrtoint ptr %data.i21.i258 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %data.i21.i258, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %56, i64 %58)
  %cmp.i259 = icmp ult i64 %56, %58
  %spec.select..i260 = select i1 %cmp.i259, ptr %call.i252, ptr %54
  br label %if.then30

fq_peek.exit264:                                  ; preds = %if.end27
  br i1 %tobool29.not, label %if.else, label %fq_peek.exit264.if.then30_crit_edge

fq_peek.exit264.if.then30_crit_edge:              ; preds = %fq_peek.exit264
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

if.then30:                                        ; preds = %fq_peek.exit264.if.then30_crit_edge, %if.end6.i261, %if.end.i256.if.then30_crit_edge
  %retval.0.i262299 = phi ptr [ %54, %fq_peek.exit264.if.then30_crit_edge ], [ %spec.select..i260, %if.end6.i261 ], [ %call.i252, %if.end.i256.if.then30_crit_edge ]
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i262299, i32 0, i32 3, i32 8
  %59 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %data.i, align 8
  %time_next_packet32 = getelementptr inbounds %struct.fq_flow, ptr %36, i32 0, i32 10
  %61 = ptrtoint ptr %time_next_packet32 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %time_next_packet32, align 8
  %63 = tail call i64 @llvm.umax.i64(i64 %60, i64 %62)
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i246, i64 %63)
  %cmp35 = icmp ult i64 %call.i246, %63
  br i1 %cmp35, label %if.then37, label %if.end41

if.then37:                                        ; preds = %if.then30
  %next38 = getelementptr inbounds %struct.fq_flow, ptr %36, i32 0, i32 8
  %64 = ptrtoint ptr %next38 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %next38, align 8
  %66 = ptrtoint ptr %head.0 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %head.0, align 4
  %67 = ptrtoint ptr %time_next_packet32 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %63, ptr %time_next_packet32, align 8
  %68 = ptrtoint ptr %delayed.i265 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %delayed.i265, align 4
  %tobool.not27.i = icmp eq ptr %69, null
  br i1 %tobool.not27.i, label %if.then37.while.end.i_crit_edge, label %if.then37.while.body.i269_crit_edge

if.then37.while.body.i269_crit_edge:              ; preds = %if.then37
  br label %while.body.i269

if.then37.while.end.i_crit_edge:                  ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i269:                                  ; preds = %while.body.i269.while.body.i269_crit_edge, %if.then37.while.body.i269_crit_edge
  %70 = phi ptr [ %74, %while.body.i269.while.body.i269_crit_edge ], [ %69, %if.then37.while.body.i269_crit_edge ]
  %time_next_packet1.i = getelementptr i8, ptr %70, i32 12
  %71 = ptrtoint ptr %time_next_packet1.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %time_next_packet1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %63, i64 %72)
  %cmp.not.i = icmp ult i64 %63, %72
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %70, i32 0, i32 1
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %70, i32 0, i32 2
  %p.1.i = select i1 %cmp.not.i, ptr %rb_left.i, ptr %rb_right.i
  %73 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i268 = icmp eq ptr %74, null
  br i1 %tobool.not.i268, label %while.cond.while.end_crit_edge.i, label %while.body.i269.while.body.i269_crit_edge

while.body.i269.while.body.i269_crit_edge:        ; preds = %while.body.i269
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i269

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i269
  call void @__sanitizer_cov_trace_pc() #12
  %phi.cast.le.i = ptrtoint ptr %70 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %if.then37.while.end.i_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.then37.while.end.i_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %delayed.i265, %if.then37.while.end.i_crit_edge ]
  %rate_node.i = getelementptr inbounds %struct.fq_flow, ptr %36, i32 0, i32 9
  %75 = ptrtoint ptr %rate_node.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %parent.0.lcssa.i, ptr %rate_node.i, align 4
  %rb_right.i.i = getelementptr inbounds %struct.fq_flow, ptr %36, i32 0, i32 9, i32 1
  %76 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.fq_flow, ptr %36, i32 0, i32 9, i32 2
  %77 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %rb_left.i.i, align 4
  %78 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %rate_node.i, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %rate_node.i, ptr noundef %delayed.i265) #10
  %79 = ptrtoint ptr %throttled_flows.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %throttled_flows.i, align 64
  %inc.i = add i32 %80, 1
  store i32 %inc.i, ptr %throttled_flows.i, align 64
  %81 = ptrtoint ptr %stat_throttled.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %stat_throttled.i, align 8
  %inc4.i = add i64 %82, 1
  store i64 %inc4.i, ptr %stat_throttled.i, align 8
  %83 = ptrtoint ptr %next38 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @throttled, ptr %next38, align 8
  %84 = ptrtoint ptr %time_next_delayed_flow.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %time_next_delayed_flow.i, align 8
  %86 = ptrtoint ptr %time_next_packet32 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %time_next_packet32, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %85, i64 %87)
  %cmp6.i = icmp ugt i64 %85, %87
  br i1 %cmp6.i, label %if.then7.i, label %while.end.i.begin.backedge_crit_edge

while.end.i.begin.backedge_crit_edge:             ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %begin.backedge

if.then7.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %time_next_delayed_flow.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %87, ptr %time_next_delayed_flow.i, align 8
  br label %begin.backedge

if.end41:                                         ; preds = %if.then30
  %head2.i254.le = getelementptr inbounds %struct.fq_flow, ptr %36, i32 0, i32 1
  %end = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i262299, i32 0, i32 17
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %end) #10, !srcloc !55
  %ce_threshold = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1, i32 6
  %89 = ptrtoint ptr %ce_threshold to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %ce_threshold, align 8
  %91 = add i64 %63, %90
  %sub42 = sub i64 %call.i246, %91
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub42)
  %cmp43 = icmp sgt i64 %sub42, 0
  br i1 %cmp43, label %if.then45, label %if.end41.if.end47_crit_edge

if.end41.if.end47_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then45:                                        ; preds = %if.end41
  %protocol.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i262299, i32 0, i32 15, i32 0, i32 18
  %92 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %protocol.i.i.i, align 8
  %mac_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i262299, i32 0, i32 8
  %94 = ptrtoint ptr %mac_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %mac_len.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %95 to i32
  %96 = zext i16 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values)
  switch i16 %93, label %if.then45.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %if.then45.if.then.i.i.i.i_crit_edge
    i16 -32512, label %if.then45.if.then.i.i.i.i_crit_edge338
  ]

if.then45.if.then.i.i.i.i_crit_edge338:           ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i.i

if.then45.if.then.i.i.i.i_crit_edge:              ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i.i

if.then45.skb_protocol.exit.i_crit_edge:          ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_protocol.exit.i

if.then.i.i.i.i:                                  ; preds = %if.then45.if.then.i.i.i.i_crit_edge, %if.then45.if.then.i.i.i.i_crit_edge338
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool.not.i.i.i.i = icmp eq i16 %95, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge, label %if.then1.i.i.i.i

if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i.i.i.i

if.then1.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %95)
  %cmp.i.i.i.i = icmp ult i16 %95, 4
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end25.i.i.i.i, !prof !51

do.end.i.i.i.i:                                   ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 598, i32 noundef 9, ptr noundef null) #10
  br label %INET_ECN_set_ce.exit

if.end25.i.i.i.i:                                 ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -4
  br label %if.end26.i.i.i.i

if.end26.i.i.i.i:                                 ; preds = %if.end25.i.i.i.i, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge
  %vlan_depth.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.end25.i.i.i.i ], [ 14, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge ]
  %97 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i262299, i32 0, i32 6
  %data_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i262299, i32 0, i32 7
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i262299, i32 0, i32 19
  br label %do.body27.i.i.i.i

do.body27.i.i.i.i:                                ; preds = %do.body27.backedge.i.i.i.i, %if.end26.i.i.i.i
  %vlan_depth.1.i.i.i.i = phi i32 [ %vlan_depth.0.i.i.i.i, %if.end26.i.i.i.i ], [ %add.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  %parse_depth.0.i.i.i.i = phi i32 [ 8, %if.end26.i.i.i.i ], [ %dec.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #10
  %98 = ptrtoint ptr %vhdr.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 -1, ptr %vhdr.i.i.i.i, align 2, !annotation !56
  %99 = ptrtoint ptr %97 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 -1, ptr %97, align 2, !annotation !56
  %100 = ptrtoint ptr %len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %len.i.i.i.i.i.i, align 4
  %102 = ptrtoint ptr %data_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %data_len.i.i.i.i.i.i, align 8
  %104 = add i32 %vlan_depth.1.i.i.i.i, %103
  %sub.i1.i.i.i.i.i = sub i32 %101, %104
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %lor.lhs.false.i.i.i.i.i.i, !prof !50

if.then.i.i.i.i.i.i:                              ; preds = %do.body27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %106, i32 %vlan_depth.1.i.i.i.i
  br label %skb_header_pointer.exit.i.i.i.i

lor.lhs.false.i.i.i.i.i.i:                        ; preds = %do.body27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %retval.0.i262299, i32 noundef %vlan_depth.1.i.i.i.i, ptr noundef nonnull %vhdr.i.i.i.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %cmp3.i.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i.i, !prof !51
  br label %skb_header_pointer.exit.i.i.i.i

skb_header_pointer.exit.i.i.i.i:                  ; preds = %lor.lhs.false.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i.i ]
  %tobool29.not.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i.i, null
  %dec.i.i.i.i = add nsw i32 %parse_depth.0.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %tobool30.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  %107 = select i1 %tobool29.not.i.i.i.i, i1 true, i1 %tobool30.not.i.i.i.i, !prof !51
  br i1 %107, label %cleanup.thread.i.i.i.i, label %do.cond42.i.i.i.i, !prof !51

cleanup.thread.i.i.i.i:                           ; preds = %skb_header_pointer.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #10
  br label %INET_ECN_set_ce.exit

do.cond42.i.i.i.i:                                ; preds = %skb_header_pointer.exit.i.i.i.i
  %h_vlan_encapsulated_proto.i.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i, i32 0, i32 1
  %108 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #10
  %110 = zext i16 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %109, label %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge339
  ]

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge339: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge:  ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_protocol.exit.i

do.body27.backedge.i.i.i.i:                       ; preds = %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge, %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge339
  %add.i.i.i.i = add nsw i32 %vlan_depth.1.i.i.i.i, 4
  br label %do.body27.i.i.i.i

skb_protocol.exit.i:                              ; preds = %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge, %if.then45.skb_protocol.exit.i_crit_edge
  %retval.2.i.i.i.i = phi i16 [ %93, %if.then45.skb_protocol.exit.i_crit_edge ], [ %109, %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge ]
  %111 = zext i16 %retval.2.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %retval.2.i.i.i.i, label %skb_protocol.exit.i.INET_ECN_set_ce.exit_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb6.i
  ]

skb_protocol.exit.i.INET_ECN_set_ce.exit_crit_edge: ; preds = %skb_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %INET_ECN_set_ce.exit

sw.bb.i:                                          ; preds = %skb_protocol.exit.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i262299, i32 0, i32 18
  %112 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i262299, i32 0, i32 15, i32 0, i32 20
  %114 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %115 to i32
  %add.ptr.i.i = getelementptr i8, ptr %113, i32 %conv.i.i
  %add.ptr.i272 = getelementptr i8, ptr %add.ptr.i.i, i32 20
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i262299, i32 0, i32 16
  %116 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %tail.i.i, align 8
  %cmp.not.i273 = icmp ugt ptr %add.ptr.i272, %117
  br i1 %cmp.not.i273, label %sw.bb.i.INET_ECN_set_ce.exit_crit_edge, label %if.then.i274

sw.bb.i.INET_ECN_set_ce.exit_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %INET_ECN_set_ce.exit

if.then.i274:                                     ; preds = %sw.bb.i
  %tos.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %118 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %tos.i.i, align 1
  %120 = add i8 %119, 1
  %121 = and i8 %120, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool.not.i.i = icmp eq i8 %121, 0
  br i1 %tobool.not.i.i, label %if.then.i274.INET_ECN_set_ce.exit_crit_edge, label %if.end.i.i

if.then.i274.INET_ECN_set_ce.exit_crit_edge:      ; preds = %if.then.i274
  call void @__sanitizer_cov_trace_pc() #12
  br label %INET_ECN_set_ce.exit

if.end.i.i:                                       ; preds = %if.then.i274
  call void @__sanitizer_cov_trace_pc() #12
  %122 = and i8 %120, 3
  %conv4.i.i = zext i8 %122 to i16
  %add5.i.i = add nuw nsw i16 %conv4.i.i, -5
  %check.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 7
  %123 = ptrtoint ptr %check.i.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %check.i.i, align 2
  %add.i.i.i = add i16 %124, %add5.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i, i16 %add5.i.i)
  %cmp.i.i.i = icmp ult i16 %add.i.i.i, %add5.i.i
  %conv6.i.i.i = zext i1 %cmp.i.i.i to i16
  %add7.i.i.i = add i16 %add.i.i.i, %conv6.i.i.i
  %125 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %add7.i.i.i, ptr %check.i.i, align 2
  %126 = or i8 %119, 3
  %127 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %tos.i.i, align 1
  br label %INET_ECN_set_ce.exit

sw.bb6.i:                                         ; preds = %skb_protocol.exit.i
  %head.i1.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i262299, i32 0, i32 18
  %128 = ptrtoint ptr %head.i1.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %head.i1.i, align 8
  %network_header.i2.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i262299, i32 0, i32 15, i32 0, i32 20
  %130 = ptrtoint ptr %network_header.i2.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %network_header.i2.i, align 4
  %conv.i3.i = zext i16 %131 to i32
  %add.ptr.i4.i = getelementptr i8, ptr %129, i32 %conv.i3.i
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i4.i, i32 40
  %tail.i5.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i262299, i32 0, i32 16
  %132 = ptrtoint ptr %tail.i5.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %tail.i5.i, align 8
  %cmp10.not.i = icmp ugt ptr %add.ptr8.i, %133
  br i1 %cmp10.not.i, label %sw.bb6.i.INET_ECN_set_ce.exit_crit_edge, label %if.then12.i

sw.bb6.i.INET_ECN_set_ce.exit_crit_edge:          ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %INET_ECN_set_ce.exit

if.then12.i:                                      ; preds = %sw.bb6.i
  %134 = ptrtoint ptr %add.ptr.i4.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %add.ptr.i4.i, align 2
  %136 = and i16 %135, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %136)
  %cmp.i14.not.i.i = icmp eq i16 %136, 0
  br i1 %cmp.i14.not.i.i, label %if.then12.i.INET_ECN_set_ce.exit_crit_edge, label %if.end.i10.i

if.then12.i.INET_ECN_set_ce.exit_crit_edge:       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %INET_ECN_set_ce.exit

if.end.i10.i:                                     ; preds = %if.then12.i
  %137 = ptrtoint ptr %add.ptr.i4.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %add.ptr.i4.i, align 4
  %or.i.i = or i32 %138, 3145728
  store i32 %or.i.i, ptr %add.ptr.i4.i, align 4
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i262299, i32 0, i32 15
  %139 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %140 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %140)
  %cmp.i.i = icmp eq i16 %140, 1024
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.end.i10.i.INET_ECN_set_ce.exit_crit_edge

if.end.i10.i.INET_ECN_set_ce.exit_crit_edge:      ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %INET_ECN_set_ce.exit

if.then3.i.i:                                     ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #12
  %141 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i262299, i32 0, i32 15, i32 0, i32 5
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 8
  %neg.i.i.i = xor i32 %138, -1
  %add.i.i.i11.i = add i32 %143, %neg.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i11.i, i32 %neg.i.i.i)
  %cmp.i.i.i12.i = icmp ult i32 %add.i.i.i11.i, %neg.i.i.i
  %conv.i.i.i13.i = zext i1 %cmp.i.i.i12.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i11.i, %or.i.i
  %add.i.i14.i = add i32 %add1.i.i.i.i, %conv.i.i.i13.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i14.i, i32 %or.i.i)
  %cmp.i.i15.i = icmp ult i32 %add.i.i14.i, %or.i.i
  %conv.i.i16.i = zext i1 %cmp.i.i15.i to i32
  %add1.i.i.i = add i32 %add.i.i14.i, %conv.i.i16.i
  %144 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %add1.i.i.i, ptr %141, align 8
  br label %INET_ECN_set_ce.exit

INET_ECN_set_ce.exit:                             ; preds = %if.then3.i.i, %if.end.i10.i.INET_ECN_set_ce.exit_crit_edge, %if.then12.i.INET_ECN_set_ce.exit_crit_edge, %sw.bb6.i.INET_ECN_set_ce.exit_crit_edge, %if.end.i.i, %if.then.i274.INET_ECN_set_ce.exit_crit_edge, %sw.bb.i.INET_ECN_set_ce.exit_crit_edge, %skb_protocol.exit.i.INET_ECN_set_ce.exit_crit_edge, %cleanup.thread.i.i.i.i, %do.end.i.i.i.i
  %stat_ce_mark = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 1
  %145 = ptrtoint ptr %stat_ce_mark to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %stat_ce_mark, align 32
  %inc = add i64 %146, 1
  store i64 %inc, ptr %stat_ce_mark, align 32
  br label %if.end47

if.end47:                                         ; preds = %INET_ECN_set_ce.exit, %if.end41.if.end47_crit_edge
  %147 = ptrtoint ptr %head2.i254.le to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %head2.i254.le, align 4
  %cmp.i.i276 = icmp eq ptr %148, %retval.0.i262299
  br i1 %cmp.i.i276, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %149 = ptrtoint ptr %retval.0.i262299 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %retval.0.i262299, align 8
  %151 = ptrtoint ptr %head2.i254.le to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %150, ptr %head2.i254.le, align 4
  br label %if.end61

if.else.i.i:                                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  call void @rb_erase(ptr noundef %retval.0.i262299, ptr noundef %36) #10
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %152 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev_queue.i.i.i, align 8
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 128
  %156 = getelementptr inbounds %struct.anon.0, ptr %retval.0.i262299, i32 0, i32 2
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %155, ptr %156, align 8
  br label %if.end61

if.else:                                          ; preds = %fq_peek.exit264
  %next48 = getelementptr inbounds %struct.fq_flow, ptr %36, i32 0, i32 8
  %158 = ptrtoint ptr %next48 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %next48, align 8
  %160 = ptrtoint ptr %head.0 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %159, ptr %head.0, align 4
  %cmp51 = icmp eq ptr %head.0, %privdata.i
  br i1 %cmp51, label %land.lhs.true, label %if.else.if.else58_crit_edge

if.else.if.else58_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else58

land.lhs.true:                                    ; preds = %if.else
  %161 = ptrtoint ptr %old_flows to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %old_flows, align 8
  %tobool55.not = icmp eq ptr %162, null
  br i1 %tobool55.not, label %land.lhs.true.if.else58_crit_edge, label %fq_flow_add_tail.exit285

land.lhs.true.if.else58_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else58

fq_flow_add_tail.exit285:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %163 = ptrtoint ptr %last.i278 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %last.i278, align 4
  %next.i279 = getelementptr inbounds %struct.fq_flow, ptr %164, i32 0, i32 8
  %165 = ptrtoint ptr %next.i279 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %36, ptr %next.i279, align 8
  store ptr %36, ptr %last.i278, align 4
  %166 = ptrtoint ptr %next48 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %next48, align 8
  br label %begin.backedge

begin.backedge:                                   ; preds = %if.else58, %fq_flow_add_tail.exit285, %if.then7.i, %while.end.i.begin.backedge_crit_edge, %fq_flow_add_tail.exit
  br label %begin

if.else58:                                        ; preds = %land.lhs.true.if.else58_crit_edge, %if.else.if.else58_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %167 = load volatile i32, ptr @jiffies, align 128
  %or.i = or i32 %167, 1
  %168 = getelementptr inbounds %struct.fq_flow, ptr %36, i32 0, i32 2
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %or.i, ptr %168, align 8
  %170 = ptrtoint ptr %inactive_flows to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %inactive_flows, align 4
  %inc59 = add i32 %171, 1
  store i32 %inc59, ptr %inactive_flows, align 4
  br label %begin.backedge

if.end61:                                         ; preds = %if.else.i.i, %if.then.i.i
  %172 = ptrtoint ptr %retval.0.i262299 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr null, ptr %retval.0.i262299, align 8
  %qlen.i = getelementptr inbounds %struct.fq_flow, ptr %36, i32 0, i32 6
  %173 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %qlen.i, align 32
  %dec.i = add i32 %174, -1
  store i32 %dec.i, ptr %qlen.i, align 32
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i262299, i32 0, i32 3
  %175 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %cb.i.i.i.i, align 4
  %backlog.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %177 = ptrtoint ptr %backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %backlog.i.i, align 4
  %sub.i.i = sub i32 %178, %176
  store i32 %sub.i.i, ptr %backlog.i.i, align 4
  %179 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %qlen, align 8
  %dec2.i = add i32 %180, -1
  store i32 %dec2.i, ptr %qlen, align 8
  %181 = load i32, ptr %cb.i.i.i.i, align 4
  %182 = ptrtoint ptr %credit to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %credit, align 4
  %sub64 = sub i32 %183, %181
  store i32 %sub64, ptr %credit, align 4
  %rate_enable = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 20
  %184 = ptrtoint ptr %rate_enable to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %rate_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool65.not = icmp eq i8 %185, 0
  br i1 %tobool65.not, label %if.end61.out_crit_edge, label %if.end67

if.end61.out_crit_edge:                           ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end67:                                         ; preds = %if.end61
  %flow_max_rate = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1, i32 2
  %186 = ptrtoint ptr %flow_max_rate to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %flow_max_rate, align 16
  %188 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i262299, i32 0, i32 2
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %188, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %190)
  %tobool68.not = icmp eq i64 %190, 0
  br i1 %tobool68.not, label %if.then69, label %if.end67.if.end99_crit_edge

if.end67.if.end99_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.then69:                                        ; preds = %if.end67
  %191 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i262299, i32 0, i32 1
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %191, align 4
  %tobool70.not = icmp eq ptr %193, null
  br i1 %tobool70.not, label %if.then69.if.end79_crit_edge, label %if.then71

if.then69.if.end79_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then71:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  %sk_pacing_rate = getelementptr inbounds %struct.sock, ptr %193, i32 0, i32 35
  %194 = ptrtoint ptr %sk_pacing_rate to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %sk_pacing_rate, align 4
  %196 = call i32 @llvm.umin.i32(i32 %195, i32 %187)
  br label %if.end79

if.end79:                                         ; preds = %if.then71, %if.then69.if.end79_crit_edge
  %rate.0 = phi i32 [ %196, %if.then71 ], [ %187, %if.then69.if.end79_crit_edge ]
  %low_rate_threshold = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19, i32 3
  %197 = ptrtoint ptr %low_rate_threshold to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %low_rate_threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rate.0, i32 %198)
  %cmp80.not = icmp ugt i32 %rate.0, %198
  br i1 %cmp80.not, label %if.else84, label %if.then82

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  %199 = ptrtoint ptr %credit to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 0, ptr %credit, align 4
  br label %if.end99

if.else84:                                        ; preds = %if.end79
  %200 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %quantum, align 128
  %202 = call i32 @llvm.umax.i32(i32 %181, i32 %201)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub64)
  %cmp94 = icmp sgt i32 %sub64, 0
  br i1 %cmp94, label %if.else84.out_crit_edge, label %if.else84.if.end99_crit_edge

if.else84.if.end99_crit_edge:                     ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.else84.out_crit_edge:                          ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end99:                                         ; preds = %if.else84.if.end99_crit_edge, %if.then82, %if.end67.if.end99_crit_edge
  %rate.1 = phi i32 [ %187, %if.end67.if.end99_crit_edge ], [ %rate.0, %if.then82 ], [ %rate.0, %if.else84.if.end99_crit_edge ]
  %plen.0 = phi i32 [ %181, %if.end67.if.end99_crit_edge ], [ %181, %if.then82 ], [ %202, %if.else84.if.end99_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rate.1)
  %cmp100.not = icmp eq i32 %rate.1, -1
  br i1 %cmp100.not, label %if.end99.out_crit_edge, label %if.then102

if.end99.out_crit_edge:                           ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then102:                                       ; preds = %if.end99
  %conv103 = zext i32 %plen.0 to i64
  %mul = mul nuw nsw i64 %conv103, 1000000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate.1)
  %tobool104.not = icmp eq i32 %rate.1, 0
  br i1 %tobool104.not, label %if.then102.if.end113_crit_edge, label %if.else162.i.i, !prof !51

if.then102.if.end113_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.else162.i.i:                                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp164.i.i = icmp ult i64 %mul, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !50

if.then168.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv169.i.i = trunc i64 %mul to i32
  %div172.i.i = udiv i32 %conv169.i.i, %rate.1
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %if.end113

if.else174.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %203 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %rate.1, i64 %mul) #13, !srcloc !57
  %asmresult1.i.i.i = extractvalue { i64, i64 } %203, 1
  br label %if.end113

if.end113:                                        ; preds = %if.else174.i.i, %if.then168.i.i, %if.then102.if.end113_crit_edge
  %len.0 = phi i64 [ %mul, %if.then102.if.end113_crit_edge ], [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1000000000, i64 %len.0)
  %cmp114 = icmp ugt i64 %len.0, 1000000000
  br i1 %cmp114, label %if.then122, label %if.end113.if.end124_crit_edge, !prof !51

if.end113.if.end124_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.then122:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  %stat_pkts_too_long = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25
  %204 = ptrtoint ptr %stat_pkts_too_long to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %stat_pkts_too_long, align 128
  %inc123 = add i64 %205, 1
  store i64 %inc123, ptr %stat_pkts_too_long, align 128
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %if.end113.if.end124_crit_edge
  %len.1 = phi i64 [ 1000000000, %if.then122 ], [ %len.0, %if.end113.if.end124_crit_edge ]
  %206 = ptrtoint ptr %time_next_packet32 to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %time_next_packet32, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %207)
  %tobool126.not = icmp eq i64 %207, 0
  br i1 %tobool126.not, label %if.end124.if.end138_crit_edge, label %if.then127

if.end124.if.end138_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

if.then127:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  %div244 = lshr i64 %len.1, 1
  %sub129 = sub i64 %call.i246, %207
  %208 = call i64 @llvm.umin.i64(i64 %div244, i64 %sub129)
  %sub137 = sub nsw i64 %len.1, %208
  br label %if.end138

if.end138:                                        ; preds = %if.then127, %if.end124.if.end138_crit_edge
  %len.2 = phi i64 [ %sub137, %if.then127 ], [ %len.1, %if.end124.if.end138_crit_edge ]
  %add139 = add i64 %len.2, %call.i246
  %209 = ptrtoint ptr %time_next_packet32 to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 %add139, ptr %time_next_packet32, align 8
  br label %out

out:                                              ; preds = %if.end138, %if.end99.out_crit_edge, %if.else84.out_crit_edge, %if.end61.out_crit_edge, %if.then6
  %skb.0 = phi ptr [ %retval.0.i296, %if.then6 ], [ %retval.0.i262299, %if.end138 ], [ %retval.0.i262299, %if.end99.out_crit_edge ], [ %retval.0.i262299, %if.else84.out_crit_edge ], [ %retval.0.i262299, %if.end61.out_crit_edge ]
  %cb.i.i.i.i290 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3
  %210 = ptrtoint ptr %cb.i.i.i.i290 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %cb.i.i.i.i290, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 17
  %212 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %213, i32 0, i32 4
  %214 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %215)
  %tobool.i.not.i.i = icmp eq i16 %215, 0
  br i1 %tobool.i.not.i.i, label %out.cond.end.i.i_crit_edge, label %cond.true.i.i

out.cond.end.i.i_crit_edge:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %213, i32 0, i32 5
  %216 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %gso_segs.i.i, align 2
  %conv4.i.i291 = zext i16 %217 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %out.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv4.i.i291, %cond.true.i.i ], [ 1, %out.cond.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %218 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool.not.i.i.i.i.i = icmp eq i32 %218, 0
  br i1 %tobool.not.i.i.i.i.i, label %cond.end.i.i.qdisc_bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i.i

cond.end.i.i.qdisc_bstats_update.exit_crit_edge:  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qdisc_bstats_update.exit

land.lhs.true.i.i.i.i.i:                          ; preds = %cond.end.i.i
  %219 = call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i.i.i.i.i.i.i = and i32 %219, -16384
  %220 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %220, i32 0, i32 1
  %221 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %222, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !58
  %223 = call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i.i.i.i.i = and i32 %223, -16384
  %224 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %224, i32 0, i32 3
  %225 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %226
  %227 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %228, ptrtoint (ptr @lockdep_recursion to i32)
  %229 = inttoptr i32 %add.i.i.i.i.i to ptr
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load volatile i32, ptr %229, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !59
  %232 = call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i.i7.i.i.i.i.i = and i32 %232, -16384
  %233 = inttoptr i32 %and.i.i.i7.i.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %233, i32 0, i32 1
  %234 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %235, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool20.not.i.i.i.i.i = icmp eq i32 %231, 0
  br i1 %tobool20.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qdisc_bstats_update.exit

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %236 = call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i.i.i.i.i.i = and i32 %236, -16384
  %237 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %237, i32 0, i32 1
  %238 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %cmp.i.i.i.i.i = icmp eq i32 %239, 0
  br i1 %cmp.i.i.i.i.i, label %land.rhs22.i.i.i.i.i, label %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qdisc_bstats_update.exit

land.rhs22.i.i.i.i.i:                             ; preds = %land.rhs.i.i.i.i.i
  %240 = call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i.i9.i.i.i.i.i = and i32 %240, -16384
  %241 = inttoptr i32 %and.i.i.i9.i.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  %add.i11.i.i.i.i.i = add i32 %243, 1
  store volatile i32 %add.i11.i.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !60
  %244 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx46.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %245
  %246 = ptrtoint ptr %arrayidx46.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx46.i.i.i.i.i, align 4
  %add47.i.i.i.i.i = add i32 %247, ptrtoint (ptr @hardirqs_enabled to i32)
  %248 = inttoptr i32 %add47.i.i.i.i.i to ptr
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load volatile i32, ptr %248, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !61
  %251 = call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i.i12.i.i.i.i.i = and i32 %251, -16384
  %252 = inttoptr i32 %and.i.i.i12.i.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %252, i32 0, i32 1
  %253 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  %sub.i14.i.i.i.i.i = add i32 %254, -1
  store volatile i32 %sub.i14.i.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool54.not.i.i.i.i.i = icmp eq i32 %250, 0
  br i1 %tobool54.not.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i.i

land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qdisc_bstats_update.exit

land.rhs58.i.i.i.i.i:                             ; preds = %land.rhs22.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %if.then.i.i.i.i.i, !prof !50

land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qdisc_bstats_update.exit

if.then.i.i.i.i.i:                                ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %qdisc_bstats_update.exit

qdisc_bstats_update.exit:                         ; preds = %if.then.i.i.i.i.i, %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %cond.end.i.i.qdisc_bstats_update.exit_crit_edge
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i292 = zext i32 %211 to i64
  %syncp.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2
  %255 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %256, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !62
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2, i32 0, i32 1
  %257 = call ptr @llvm.returnaddress(i32 0) #10
  %258 = ptrtoint ptr %257 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %258) #10
  %259 = ptrtoint ptr %bstats.i to i32
  call void @__asan_load8_noabort(i32 %259)
  %260 = load i64, ptr %bstats.i, align 8
  %add.i.i.i.i293 = add i64 %260, %conv.i.i292
  store i64 %add.i.i.i.i293, ptr %bstats.i, align 8
  %packets2.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 1
  %conv.i7.i.i.i = zext i32 %cond.i.i to i64
  %261 = ptrtoint ptr %packets2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %261)
  %262 = load i64, ptr %packets2.i.i.i, align 8
  %add.i8.i.i.i = add i64 %262, %conv.i7.i.i.i
  store i64 %add.i8.i.i.i, ptr %packets2.i.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef %258) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !63
  %263 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %264, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  br label %cleanup142

cleanup142:                                       ; preds = %qdisc_bstats_update.exit, %if.then15, %if.then14.cleanup142_crit_edge, %entry.cleanup142_crit_edge
  %retval.0 = phi ptr [ %skb.0, %qdisc_bstats_update.exit ], [ null, %entry.cleanup142_crit_edge ], [ null, %if.then15 ], [ null, %if.then14.cleanup142_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qdisc_peek_dequeued(ptr noundef %sch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %gso_skb = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 16
  %0 = ptrtoint ptr %gso_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gso_skb, align 4
  %cmp.i = icmp eq ptr %1, %gso_skb
  %tobool.not15 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.i, %tobool.not15
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %dequeue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 1
  %2 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dequeue, align 4
  %call1 = tail call ptr %3(ptr noundef %sch) #10
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %gso_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gso_skb, align 4
  %6 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %5, ptr %call1, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.0, ptr %call1, i32 0, i32 1
  %7 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %gso_skb, ptr %prev10.i.i.i, align 4
  %prev17.i.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call1, ptr %prev17.i.i.i, align 4
  store volatile ptr %call1, ptr %gso_skb, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 16, i32 1
  %9 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 3
  %11 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cb.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %13 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %backlog.i, align 4
  %add.i = add i32 %14, %12
  store i32 %add.i, ptr %backlog.i, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %15 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qlen, align 8
  %inc = add i32 %16, 1
  store i32 %inc, ptr %qlen, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %skb.0 = phi ptr [ %1, %entry.if.end5_crit_edge ], [ %call1, %if.then3 ], [ null, %if.then.if.end5_crit_edge ]
  ret ptr %skb.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fq_init(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %0 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10000, ptr %limit, align 4
  %flow_plimit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1, i32 1, i32 1
  %1 = ptrtoint ptr %flow_plimit to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 100, ptr %flow_plimit, align 4
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %2 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_queue.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mtu.i, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 19
  %8 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hard_header_len.i, align 2
  %conv.i = zext i16 %9 to i32
  %add.i = add i32 %7, %conv.i
  %mul = shl i32 %add.i, 1
  %quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2
  %10 = ptrtoint ptr %quantum to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %quantum, align 128
  %11 = load ptr, ptr %3, align 128
  %mtu.i38 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %mtu.i38 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mtu.i38, align 4
  %hard_header_len.i39 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 19
  %14 = ptrtoint ptr %hard_header_len.i39 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hard_header_len.i39, align 2
  %conv.i40 = zext i16 %15 to i32
  %add.i41 = add i32 %13, %conv.i40
  %mul5 = mul i32 %add.i41, 10
  %initial_quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %initial_quantum to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul5, ptr %initial_quantum, align 4
  %flow_refill_delay = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %flow_refill_delay to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %flow_refill_delay, align 8
  %flow_max_rate = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %flow_max_rate to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %flow_max_rate, align 16
  %time_next_delayed_flow = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %19 = ptrtoint ptr %time_next_delayed_flow to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 -1, ptr %time_next_delayed_flow, align 8
  %rate_enable = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 20
  %20 = ptrtoint ptr %rate_enable to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %rate_enable, align 4
  %21 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %privdata.i, align 128
  %old_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %22 = ptrtoint ptr %old_flows to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %old_flows, align 8
  %delayed = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %23 = ptrtoint ptr %delayed to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %delayed, align 16
  %fq_root = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19, i32 4
  %24 = ptrtoint ptr %fq_root to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %fq_root, align 16
  %fq_trees_log = getelementptr inbounds %struct.fq_sched_data, ptr %privdata.i, i32 0, i32 19
  %25 = ptrtoint ptr %fq_trees_log to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 10, ptr %fq_trees_log, align 1
  %orphan_mask = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19, i32 2
  %26 = ptrtoint ptr %orphan_mask to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1023, ptr %orphan_mask, align 8
  %low_rate_threshold = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19, i32 3
  %27 = ptrtoint ptr %low_rate_threshold to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 68750, ptr %low_rate_threshold, align 4
  %timer_slack = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4
  %28 = ptrtoint ptr %timer_slack to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 10000, ptr %timer_slack, align 16
  %horizon = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19
  %29 = ptrtoint ptr %horizon to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 10000000000, ptr %horizon, align 32
  %horizon_drop = getelementptr inbounds %struct.fq_sched_data, ptr %privdata.i, i32 0, i32 20
  %30 = ptrtoint ptr %horizon_drop to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %horizon_drop, align 2
  %ce_threshold = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1, i32 6
  %31 = ptrtoint ptr %ce_threshold to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 4294967295000, ptr %ce_threshold, align 8
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4, i32 1, i32 1
  tail call void @qdisc_watchdog_init_clockid(ptr noundef %watchdog, ptr noundef %sch, i32 noundef 1) #10
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 @fq_change(ptr noundef %sch, ptr noundef nonnull %opt, ptr noundef %extack)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %fq_trees_log to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %fq_trees_log, align 1
  %conv = zext i8 %33 to i32
  %call10 = tail call fastcc i32 @fq_resize(ptr noundef %sch, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call8, %if.then ], [ %call10, %if.else ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fq_reset(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %0 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %qlen, align 8
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %1 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %backlog, align 4
  %internal = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16
  %call.i = tail call ptr @rb_first(ptr noundef %internal) #10
  %tobool.not16.i = icmp eq ptr %call.i, null
  br i1 %tobool.not16.i, label %entry.fq_flow_purge.exit_crit_edge, label %entry.cond.end.i_crit_edge

entry.cond.end.i_crit_edge:                       ; preds = %entry
  br label %cond.end.i

entry.fq_flow_purge.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %fq_flow_purge.exit

cond.end.i:                                       ; preds = %cond.end.i.cond.end.i_crit_edge, %entry.cond.end.i_crit_edge
  %p.017.i = phi ptr [ %call3.i, %cond.end.i.cond.end.i_crit_edge ], [ %call.i, %entry.cond.end.i_crit_edge ]
  %call3.i = tail call ptr @rb_next(ptr noundef nonnull %p.017.i) #10
  tail call void @rb_erase(ptr noundef nonnull %p.017.i, ptr noundef %internal) #10
  tail call void @rtnl_kfree_skbs(ptr noundef nonnull %p.017.i, ptr noundef nonnull %p.017.i) #10
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %cond.end.i.fq_flow_purge.exit_crit_edge, label %cond.end.i.cond.end.i_crit_edge

cond.end.i.cond.end.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.end.i.fq_flow_purge.exit_crit_edge:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fq_flow_purge.exit

fq_flow_purge.exit:                               ; preds = %cond.end.i.fq_flow_purge.exit_crit_edge, %entry.fq_flow_purge.exit_crit_edge
  %head.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 4
  %4 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  tail call void @rtnl_kfree_skbs(ptr noundef %3, ptr noundef %6) #10
  %7 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %head.i, align 4
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %qlen.i, align 32
  %fq_root = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19, i32 4
  %9 = ptrtoint ptr %fq_root to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fq_root, align 16
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %fq_flow_purge.exit.cleanup_crit_edge, label %for.cond.preheader

fq_flow_purge.exit.cleanup_crit_edge:             ; preds = %fq_flow_purge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %fq_flow_purge.exit
  %fq_trees_log = getelementptr inbounds %struct.fq_sched_data, ptr %privdata.i, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %idx.041 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %fq_root to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fq_root, align 16
  %arrayidx = getelementptr %struct.rb_root, ptr %12, i32 %idx.041
  %call437 = tail call ptr @rb_first(ptr noundef %arrayidx) #10
  %cmp5.not38 = icmp eq ptr %call437, null
  br i1 %cmp5.not38, label %for.body.for.inc_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.body:                                       ; preds = %fq_flow_purge.exit36.while.body_crit_edge, %for.body.while.body_crit_edge
  %call439 = phi ptr [ %call4, %fq_flow_purge.exit36.while.body_crit_edge ], [ %call437, %for.body.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call439, i32 -12
  tail call void @rb_erase(ptr noundef nonnull %call439, ptr noundef %arrayidx) #10
  %call.i28 = tail call ptr @rb_first(ptr noundef %add.ptr) #10
  %tobool.not16.i29 = icmp eq ptr %call.i28, null
  br i1 %tobool.not16.i29, label %while.body.fq_flow_purge.exit36_crit_edge, label %while.body.cond.end.i33_crit_edge

while.body.cond.end.i33_crit_edge:                ; preds = %while.body
  br label %cond.end.i33

while.body.fq_flow_purge.exit36_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %fq_flow_purge.exit36

cond.end.i33:                                     ; preds = %cond.end.i33.cond.end.i33_crit_edge, %while.body.cond.end.i33_crit_edge
  %p.017.i30 = phi ptr [ %call3.i31, %cond.end.i33.cond.end.i33_crit_edge ], [ %call.i28, %while.body.cond.end.i33_crit_edge ]
  %call3.i31 = tail call ptr @rb_next(ptr noundef nonnull %p.017.i30) #10
  tail call void @rb_erase(ptr noundef nonnull %p.017.i30, ptr noundef %add.ptr) #10
  tail call void @rtnl_kfree_skbs(ptr noundef nonnull %p.017.i30, ptr noundef nonnull %p.017.i30) #10
  %tobool.not.i32 = icmp eq ptr %call3.i31, null
  br i1 %tobool.not.i32, label %cond.end.i33.fq_flow_purge.exit36_crit_edge, label %cond.end.i33.cond.end.i33_crit_edge

cond.end.i33.cond.end.i33_crit_edge:              ; preds = %cond.end.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i33

cond.end.i33.fq_flow_purge.exit36_crit_edge:      ; preds = %cond.end.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %fq_flow_purge.exit36

fq_flow_purge.exit36:                             ; preds = %cond.end.i33.fq_flow_purge.exit36_crit_edge, %while.body.fq_flow_purge.exit36_crit_edge
  %head.i34 = getelementptr i8, ptr %call439, i32 -8
  %13 = ptrtoint ptr %head.i34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i34, align 4
  %15 = getelementptr i8, ptr %call439, i32 -4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  tail call void @rtnl_kfree_skbs(ptr noundef %14, ptr noundef %17) #10
  %18 = ptrtoint ptr %head.i34 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %head.i34, align 4
  %qlen.i35 = getelementptr i8, ptr %call439, i32 20
  %19 = ptrtoint ptr %qlen.i35 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %qlen.i35, align 32
  %20 = load ptr, ptr @fq_flow_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %20, ptr noundef %add.ptr) #10
  %call4 = tail call ptr @rb_first(ptr noundef %arrayidx) #10
  %cmp5.not = icmp eq ptr %call4, null
  br i1 %cmp5.not, label %fq_flow_purge.exit36.for.inc_crit_edge, label %fq_flow_purge.exit36.while.body_crit_edge

fq_flow_purge.exit36.while.body_crit_edge:        ; preds = %fq_flow_purge.exit36
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

fq_flow_purge.exit36.for.inc_crit_edge:           ; preds = %fq_flow_purge.exit36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %fq_flow_purge.exit36.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %idx.041, 1
  %21 = ptrtoint ptr %fq_trees_log to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fq_trees_log, align 1
  %conv = zext i8 %22 to i32
  %idx.0.highbits = lshr i32 %inc, %conv
  %cmp = icmp eq i32 %idx.0.highbits, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %privdata.i, align 128
  %old_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %24 = ptrtoint ptr %old_flows to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %old_flows, align 8
  %delayed = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %25 = ptrtoint ptr %delayed to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %delayed, align 16
  %flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 21
  %26 = ptrtoint ptr %flows to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %flows, align 8
  %inactive_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 22
  %27 = ptrtoint ptr %inactive_flows to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %inactive_flows, align 4
  %throttled_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23
  %28 = ptrtoint ptr %throttled_flows to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %throttled_flows, align 64
  br label %cleanup

cleanup:                                          ; preds = %for.end, %fq_flow_purge.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fq_destroy(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @fq_reset(ptr noundef %sch)
  %fq_root = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19, i32 4
  %0 = ptrtoint ptr %fq_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fq_root, align 16
  tail call void @kvfree(ptr noundef %1) #10
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4, i32 1, i32 1
  tail call void @qdisc_watchdog_cancel(ptr noundef %watchdog) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fq_change(ptr noundef %sch, ptr noundef %opt, ptr noundef writeonly %extack) #2 align 64 {
entry:
  %tb = alloca [16 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tb) #10
  %0 = call ptr @memset(ptr %tb, i32 255, i32 64)
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.cleanup144_crit_edge, label %if.end

entry.cleanup144_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup144

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %opt, i32 4
  %1 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %opt, align 2
  %conv.i.i = zext i16 %2 to i32
  %sub.i.i202 = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 15, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i202, ptr noundef nonnull @fq_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end.cleanup144_crit_edge, label %if.end3

if.end.cleanup144_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup144

if.end3:                                          ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i203, label %if.end3.sch_tree_lock.exit_crit_edge

if.end3.sch_tree_lock.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_lock.exit

if.else.i203:                                     ; preds = %if.end3
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %5 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i203.sch_tree_lock.exit_crit_edge

if.else.i203.sch_tree_lock.exit_crit_edge:        ; preds = %if.else.i203
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i203
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !50

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 596) #10
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i203.sch_tree_lock.exit_crit_edge, %if.end3.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %if.end3.sch_tree_lock.exit_crit_edge ], [ %8, %if.else.i203.sch_tree_lock.exit_crit_edge ], [ %8, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %8, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #10
  %fq_trees_log = getelementptr inbounds %struct.fq_sched_data, ptr %privdata.i, i32 0, i32 19
  %9 = ptrtoint ptr %fq_trees_log to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fq_trees_log, align 1
  %conv = zext i8 %10 to i32
  %arrayidx = getelementptr inbounds [16 x ptr], ptr %tb, i32 0, i32 8
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %12, null
  br i1 %tobool4.not, label %sch_tree_lock.exit.if.end14_crit_edge, label %if.then5

sch_tree_lock.exit.if.end14_crit_edge:            ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then5:                                         ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i205 = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i205 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i205, align 4
  %15 = add i32 %14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %15)
  %16 = icmp ult i32 %15, 18
  %err.0 = select i1 %16, i32 %call2.i, i32 -22
  %fq_log.0 = select i1 %16, i32 %14, i32 %conv
  br label %if.end14

if.end14:                                         ; preds = %if.then5, %sch_tree_lock.exit.if.end14_crit_edge
  %err.1 = phi i32 [ %err.0, %if.then5 ], [ %call2.i, %sch_tree_lock.exit.if.end14_crit_edge ]
  %fq_log.1 = phi i32 [ %fq_log.0, %if.then5 ], [ %conv, %sch_tree_lock.exit.if.end14_crit_edge ]
  %arrayidx15 = getelementptr inbounds [16 x ptr], ptr %tb, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %18, null
  br i1 %tobool16.not, label %if.end14.if.end20_crit_edge, label %if.then17

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i206 = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i206 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i206, align 4
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %21 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %limit, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end14.if.end20_crit_edge
  %arrayidx21 = getelementptr inbounds [16 x ptr], ptr %tb, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx21, align 4
  %tobool22.not = icmp eq ptr %23, null
  br i1 %tobool22.not, label %if.end20.if.end26_crit_edge, label %if.then23

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i207 = getelementptr i8, ptr %23, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i207 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i207, align 4
  %flow_plimit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1, i32 1, i32 1
  %26 = ptrtoint ptr %flow_plimit to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %flow_plimit, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end20.if.end26_crit_edge
  %arrayidx27 = getelementptr inbounds [16 x ptr], ptr %tb, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx27, align 4
  %tobool28.not = icmp eq ptr %28, null
  br i1 %tobool28.not, label %if.end26.if.end44_crit_edge, label %if.then29

if.end26.if.end44_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then29:                                        ; preds = %if.end26
  %add.ptr.i.i208 = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i208 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i208, align 4
  %31 = add i32 %30, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %31)
  %32 = icmp ult i32 %31, 1048576
  br i1 %32, label %if.then37, label %do.body

if.then37:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  %quantum38 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2
  %33 = ptrtoint ptr %quantum38 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %quantum38, align 128
  br label %if.end44

do.body:                                          ; preds = %if.then29
  call void @do_trace_netlink_extack(ptr noundef nonnull @fq_change.__msg) #10
  %tobool40.not = icmp eq ptr %extack, null
  br i1 %tobool40.not, label %do.body.if.end44_crit_edge, label %if.then41

do.body.if.end44_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @fq_change.__msg, ptr %extack, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %do.body.if.end44_crit_edge, %if.then37, %if.end26.if.end44_crit_edge
  %err.3 = phi i32 [ %err.1, %if.end26.if.end44_crit_edge ], [ %err.1, %if.then37 ], [ -22, %if.then41 ], [ -22, %do.body.if.end44_crit_edge ]
  %arrayidx45 = getelementptr inbounds [16 x ptr], ptr %tb, i32 0, i32 4
  %35 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx45, align 4
  %tobool46.not = icmp eq ptr %36, null
  br i1 %tobool46.not, label %if.end44.if.end50_crit_edge, label %if.then47

if.end44.if.end50_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i209 = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i209 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i209, align 4
  %initial_quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1
  %39 = ptrtoint ptr %initial_quantum to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %initial_quantum, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end44.if.end50_crit_edge
  %arrayidx51 = getelementptr inbounds [16 x ptr], ptr %tb, i32 0, i32 6
  %40 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx51, align 4
  %tobool52.not = icmp eq ptr %41, null
  br i1 %tobool52.not, label %if.end50.if.end64_crit_edge, label %if.then53

if.end50.if.end64_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then53:                                        ; preds = %if.end50
  %call54 = call i32 @___ratelimit(ptr noundef nonnull @fq_change._rs, ptr noundef nonnull @__func__.fq_change) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then53.if.end64_crit_edge, label %do.end59

if.then53.if.end64_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

do.end59:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx51, align 4
  %add.ptr.i.i210 = getelementptr i8, ptr %43, i32 4
  %44 = ptrtoint ptr %add.ptr.i.i210 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i.i210, align 4
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %45) #14
  br label %if.end64

if.end64:                                         ; preds = %do.end59, %if.then53.if.end64_crit_edge, %if.end50.if.end64_crit_edge
  %arrayidx65 = getelementptr inbounds [16 x ptr], ptr %tb, i32 0, i32 7
  %46 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx65, align 4
  %tobool66.not = icmp eq ptr %47, null
  br i1 %tobool66.not, label %if.end64.if.end72_crit_edge, label %if.then67

if.end64.if.end72_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i211 = getelementptr i8, ptr %47, i32 4
  %48 = ptrtoint ptr %add.ptr.i.i211 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i.i211, align 4
  %flow_max_rate = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1, i32 2
  %50 = ptrtoint ptr %flow_max_rate to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %flow_max_rate, align 16
  br label %if.end72

if.end72:                                         ; preds = %if.then67, %if.end64.if.end72_crit_edge
  %arrayidx73 = getelementptr inbounds [16 x ptr], ptr %tb, i32 0, i32 11
  %51 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx73, align 4
  %tobool74.not = icmp eq ptr %52, null
  br i1 %tobool74.not, label %if.end72.if.end78_crit_edge, label %if.then75

if.end72.if.end78_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i212 = getelementptr i8, ptr %52, i32 4
  %53 = ptrtoint ptr %add.ptr.i.i212 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i.i212, align 4
  %low_rate_threshold = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19, i32 3
  %55 = ptrtoint ptr %low_rate_threshold to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %low_rate_threshold, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.end72.if.end78_crit_edge
  %arrayidx79 = getelementptr inbounds [16 x ptr], ptr %tb, i32 0, i32 5
  %56 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx79, align 4
  %tobool80.not = icmp eq ptr %57, null
  br i1 %tobool80.not, label %if.end78.if.end90_crit_edge, label %if.then81

if.end78.if.end90_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then81:                                        ; preds = %if.end78
  %add.ptr.i.i213 = getelementptr i8, ptr %57, i32 4
  %58 = ptrtoint ptr %add.ptr.i.i213 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i.i213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp84 = icmp ult i32 %59, 2
  br i1 %cmp84, label %if.then86, label %if.then81.if.end90_crit_edge

if.then81.if.end90_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then86:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  %conv87 = trunc i32 %59 to i8
  %rate_enable = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 20
  %60 = ptrtoint ptr %rate_enable to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv87, ptr %rate_enable, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then86, %if.then81.if.end90_crit_edge, %if.end78.if.end90_crit_edge
  %err.5 = phi i32 [ %err.3, %if.end78.if.end90_crit_edge ], [ %err.3, %if.then86 ], [ -22, %if.then81.if.end90_crit_edge ]
  %arrayidx91 = getelementptr inbounds [16 x ptr], ptr %tb, i32 0, i32 9
  %61 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx91, align 4
  %tobool92.not = icmp eq ptr %62, null
  br i1 %tobool92.not, label %if.end90.if.end97_crit_edge, label %if.else.i

if.end90.if.end97_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

if.else.i:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i214 = getelementptr i8, ptr %62, i32 4
  %63 = ptrtoint ptr %add.ptr.i.i214 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i.i214, align 4
  %call3.i = call i32 @__usecs_to_jiffies(i32 noundef %64) #10
  %flow_refill_delay = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %flow_refill_delay to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call3.i, ptr %flow_refill_delay, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.else.i, %if.end90.if.end97_crit_edge
  %arrayidx98 = getelementptr inbounds [16 x ptr], ptr %tb, i32 0, i32 10
  %66 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx98, align 4
  %tobool99.not = icmp eq ptr %67, null
  br i1 %tobool99.not, label %if.end97.if.end103_crit_edge, label %if.then100

if.end97.if.end103_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

if.then100:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i215 = getelementptr i8, ptr %67, i32 4
  %68 = ptrtoint ptr %add.ptr.i.i215 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr.i.i215, align 4
  %orphan_mask = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19, i32 2
  %70 = ptrtoint ptr %orphan_mask to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %orphan_mask, align 8
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %if.end97.if.end103_crit_edge
  %arrayidx104 = getelementptr inbounds [16 x ptr], ptr %tb, i32 0, i32 12
  %71 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx104, align 4
  %tobool105.not = icmp eq ptr %72, null
  br i1 %tobool105.not, label %if.end103.if.end110_crit_edge, label %if.then106

if.end103.if.end110_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

if.then106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i216 = getelementptr i8, ptr %72, i32 4
  %73 = ptrtoint ptr %add.ptr.i.i216 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr.i.i216, align 4
  %conv109 = zext i32 %74 to i64
  %mul = mul nuw nsw i64 %conv109, 1000
  %ce_threshold = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1, i32 6
  %75 = ptrtoint ptr %ce_threshold to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %mul, ptr %ce_threshold, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.then106, %if.end103.if.end110_crit_edge
  %arrayidx111 = getelementptr inbounds [16 x ptr], ptr %tb, i32 0, i32 13
  %76 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx111, align 4
  %tobool112.not = icmp eq ptr %77, null
  br i1 %tobool112.not, label %if.end110.if.end116_crit_edge, label %if.then113

if.end110.if.end116_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then113:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i217 = getelementptr i8, ptr %77, i32 4
  %78 = ptrtoint ptr %add.ptr.i.i217 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr.i.i217, align 4
  %timer_slack = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4
  %80 = ptrtoint ptr %timer_slack to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %timer_slack, align 16
  br label %if.end116

if.end116:                                        ; preds = %if.then113, %if.end110.if.end116_crit_edge
  %arrayidx117 = getelementptr inbounds [16 x ptr], ptr %tb, i32 0, i32 14
  %81 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx117, align 4
  %tobool118.not = icmp eq ptr %82, null
  br i1 %tobool118.not, label %if.end116.if.end124_crit_edge, label %if.then119

if.end116.if.end124_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.then119:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i218 = getelementptr i8, ptr %82, i32 4
  %83 = ptrtoint ptr %add.ptr.i.i218 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr.i.i218, align 4
  %conv122 = zext i32 %84 to i64
  %mul123 = mul nuw nsw i64 %conv122, 1000
  %horizon = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19
  %85 = ptrtoint ptr %horizon to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %mul123, ptr %horizon, align 32
  br label %if.end124

if.end124:                                        ; preds = %if.then119, %if.end116.if.end124_crit_edge
  %arrayidx125 = getelementptr inbounds [16 x ptr], ptr %tb, i32 0, i32 15
  %86 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx125, align 4
  %tobool126.not = icmp eq ptr %87, null
  br i1 %tobool126.not, label %if.end124.if.end130_crit_edge, label %if.then127

if.end124.if.end130_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130

if.then127:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i219 = getelementptr i8, ptr %87, i32 4
  %88 = ptrtoint ptr %add.ptr.i.i219 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %add.ptr.i.i219, align 1
  %horizon_drop = getelementptr inbounds %struct.fq_sched_data, ptr %privdata.i, i32 0, i32 20
  %90 = ptrtoint ptr %horizon_drop to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %horizon_drop, align 2
  br label %if.end130

if.end130:                                        ; preds = %if.then127, %if.end124.if.end130_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.5)
  %tobool131.not = icmp eq i32 %err.5, 0
  br i1 %tobool131.not, label %if.then132, label %if.end130.if.end134_crit_edge

if.end130.if.end134_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

if.then132:                                       ; preds = %if.end130
  %91 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags.i, align 8
  %and.i221 = and i32 %92, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i221)
  %tobool.not.i222 = icmp eq i32 %and.i221, 0
  br i1 %tobool.not.i222, label %if.else.i227, label %if.then132.sch_tree_unlock.exit_crit_edge

if.then132.sch_tree_unlock.exit_crit_edge:        ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_unlock.exit

if.else.i227:                                     ; preds = %if.then132
  %dev_queue.i.i.i223 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %93 = ptrtoint ptr %dev_queue.i.i.i223 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev_queue.i.i.i223, align 8
  %qdisc_sleeping.i.i.i224 = getelementptr inbounds %struct.netdev_queue, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %qdisc_sleeping.i.i.i224 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %qdisc_sleeping.i.i.i224, align 4
  %call1.i.i225 = call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i225)
  %tobool.not.i.i226 = icmp eq i32 %call1.i.i225, 0
  br i1 %tobool.not.i.i226, label %land.rhs.i.i229, label %if.else.i227.sch_tree_unlock.exit_crit_edge

if.else.i227.sch_tree_unlock.exit_crit_edge:      ; preds = %if.else.i227
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_unlock.exit

land.rhs.i.i229:                                  ; preds = %if.else.i227
  %.b41.i.i228 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i228, label %land.rhs.i.i229.sch_tree_unlock.exit_crit_edge, label %if.then.i.i230, !prof !50

land.rhs.i.i229.sch_tree_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i229
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_unlock.exit

if.then.i.i230:                                   ; preds = %land.rhs.i.i229
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 596) #10
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i230, %land.rhs.i.i229.sch_tree_unlock.exit_crit_edge, %if.else.i227.sch_tree_unlock.exit_crit_edge, %if.then132.sch_tree_unlock.exit_crit_edge
  %.sink.i231 = phi ptr [ %sch, %if.then132.sch_tree_unlock.exit_crit_edge ], [ %96, %if.else.i227.sch_tree_unlock.exit_crit_edge ], [ %96, %land.rhs.i.i229.sch_tree_unlock.exit_crit_edge ], [ %96, %if.then.i.i230 ]
  %lock.i.i.i232 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i231, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i232) #10
  %call133 = call fastcc i32 @fq_resize(ptr noundef %sch, i32 noundef %fq_log.1)
  %97 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flags.i, align 8
  %and.i235 = and i32 %98, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i235)
  %tobool.not.i236 = icmp eq i32 %and.i235, 0
  br i1 %tobool.not.i236, label %if.else.i241, label %sch_tree_unlock.exit.sch_tree_lock.exit248_crit_edge

sch_tree_unlock.exit.sch_tree_lock.exit248_crit_edge: ; preds = %sch_tree_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_lock.exit248

if.else.i241:                                     ; preds = %sch_tree_unlock.exit
  %dev_queue.i.i.i237 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %99 = ptrtoint ptr %dev_queue.i.i.i237 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev_queue.i.i.i237, align 8
  %qdisc_sleeping.i.i.i238 = getelementptr inbounds %struct.netdev_queue, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %qdisc_sleeping.i.i.i238 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %qdisc_sleeping.i.i.i238, align 4
  %call1.i.i239 = call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i239)
  %tobool.not.i.i240 = icmp eq i32 %call1.i.i239, 0
  br i1 %tobool.not.i.i240, label %land.rhs.i.i243, label %if.else.i241.sch_tree_lock.exit248_crit_edge

if.else.i241.sch_tree_lock.exit248_crit_edge:     ; preds = %if.else.i241
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_lock.exit248

land.rhs.i.i243:                                  ; preds = %if.else.i241
  %.b41.i.i242 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i242, label %land.rhs.i.i243.sch_tree_lock.exit248_crit_edge, label %if.then.i.i244, !prof !50

land.rhs.i.i243.sch_tree_lock.exit248_crit_edge:  ; preds = %land.rhs.i.i243
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_lock.exit248

if.then.i.i244:                                   ; preds = %land.rhs.i.i243
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 596) #10
  br label %sch_tree_lock.exit248

sch_tree_lock.exit248:                            ; preds = %if.then.i.i244, %land.rhs.i.i243.sch_tree_lock.exit248_crit_edge, %if.else.i241.sch_tree_lock.exit248_crit_edge, %sch_tree_unlock.exit.sch_tree_lock.exit248_crit_edge
  %.sink.i245 = phi ptr [ %sch, %sch_tree_unlock.exit.sch_tree_lock.exit248_crit_edge ], [ %102, %if.else.i241.sch_tree_lock.exit248_crit_edge ], [ %102, %land.rhs.i.i243.sch_tree_lock.exit248_crit_edge ], [ %102, %if.then.i.i244 ]
  %lock.i.i.i246 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i245, i32 0, i32 17, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i246) #10
  br label %if.end134

if.end134:                                        ; preds = %sch_tree_lock.exit248, %if.end130.if.end134_crit_edge
  %err.6 = phi i32 [ %err.5, %if.end130.if.end134_crit_edge ], [ %call133, %sch_tree_lock.exit248 ]
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %limit136 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %103 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %qlen, align 8
  %105 = ptrtoint ptr %limit136 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %limit136, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %106)
  %cmp137268 = icmp ugt i32 %104, %106
  br i1 %cmp137268, label %if.end134.while.body_crit_edge, label %if.end134.while.end_crit_edge

if.end134.while.end_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end134.while.body_crit_edge:                   ; preds = %if.end134
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end134.while.body_crit_edge
  %drop_len.0270 = phi i32 [ %add, %cleanup.while.body_crit_edge ], [ 0, %if.end134.while.body_crit_edge ]
  %drop_count.0269 = phi i32 [ %inc, %cleanup.while.body_crit_edge ], [ 0, %if.end134.while.body_crit_edge ]
  %call139 = call ptr @fq_dequeue(ptr noundef %sch)
  %tobool140.not = icmp eq ptr %call139, null
  br i1 %tobool140.not, label %while.body.while.end_crit_edge, label %cleanup

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

cleanup:                                          ; preds = %while.body
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call139, i32 0, i32 3
  %107 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cb.i.i, align 4
  %add = add i32 %108, %drop_len.0270
  call void @rtnl_kfree_skbs(ptr noundef nonnull %call139, ptr noundef nonnull %call139) #10
  %inc = add i32 %drop_count.0269, 1
  %109 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %qlen, align 8
  %111 = ptrtoint ptr %limit136 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %limit136, align 4
  %cmp137 = icmp ugt i32 %110, %112
  br i1 %cmp137, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end134.while.end_crit_edge
  %drop_count.0.lcssa = phi i32 [ 0, %if.end134.while.end_crit_edge ], [ %drop_count.0269, %while.body.while.end_crit_edge ], [ %inc, %cleanup.while.end_crit_edge ]
  %drop_len.0.lcssa = phi i32 [ 0, %if.end134.while.end_crit_edge ], [ %drop_len.0270, %while.body.while.end_crit_edge ], [ %add, %cleanup.while.end_crit_edge ]
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef %drop_count.0.lcssa, i32 noundef %drop_len.0.lcssa) #10
  %113 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %flags.i, align 8
  %and.i250 = and i32 %114, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i250)
  %tobool.not.i251 = icmp eq i32 %and.i250, 0
  br i1 %tobool.not.i251, label %if.else.i256, label %while.end.sch_tree_unlock.exit263_crit_edge

while.end.sch_tree_unlock.exit263_crit_edge:      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_unlock.exit263

if.else.i256:                                     ; preds = %while.end
  %dev_queue.i.i.i252 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %115 = ptrtoint ptr %dev_queue.i.i.i252 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev_queue.i.i.i252, align 8
  %qdisc_sleeping.i.i.i253 = getelementptr inbounds %struct.netdev_queue, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %qdisc_sleeping.i.i.i253 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %qdisc_sleeping.i.i.i253, align 4
  %call1.i.i254 = call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i254)
  %tobool.not.i.i255 = icmp eq i32 %call1.i.i254, 0
  br i1 %tobool.not.i.i255, label %land.rhs.i.i258, label %if.else.i256.sch_tree_unlock.exit263_crit_edge

if.else.i256.sch_tree_unlock.exit263_crit_edge:   ; preds = %if.else.i256
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_unlock.exit263

land.rhs.i.i258:                                  ; preds = %if.else.i256
  %.b41.i.i257 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i257, label %land.rhs.i.i258.sch_tree_unlock.exit263_crit_edge, label %if.then.i.i259, !prof !50

land.rhs.i.i258.sch_tree_unlock.exit263_crit_edge: ; preds = %land.rhs.i.i258
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_unlock.exit263

if.then.i.i259:                                   ; preds = %land.rhs.i.i258
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 596) #10
  br label %sch_tree_unlock.exit263

sch_tree_unlock.exit263:                          ; preds = %if.then.i.i259, %land.rhs.i.i258.sch_tree_unlock.exit263_crit_edge, %if.else.i256.sch_tree_unlock.exit263_crit_edge, %while.end.sch_tree_unlock.exit263_crit_edge
  %.sink.i260 = phi ptr [ %sch, %while.end.sch_tree_unlock.exit263_crit_edge ], [ %118, %if.else.i256.sch_tree_unlock.exit263_crit_edge ], [ %118, %land.rhs.i.i258.sch_tree_unlock.exit263_crit_edge ], [ %118, %if.then.i.i259 ]
  %lock.i.i.i261 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i260, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i261) #10
  br label %cleanup144

cleanup144:                                       ; preds = %sch_tree_unlock.exit263, %if.end.cleanup144_crit_edge, %entry.cleanup144_crit_edge
  %retval.0 = phi i32 [ %err.6, %sch_tree_unlock.exit263 ], [ -22, %entry.cleanup144_crit_edge ], [ %call2.i, %if.end.cleanup144_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tb) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fq_dump(ptr nocapture noundef readonly %sch, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i690 = alloca i8, align 1
  %tmp.i688 = alloca i32, align 4
  %tmp.i686 = alloca i32, align 4
  %tmp.i684 = alloca i32, align 4
  %tmp.i682 = alloca i32, align 4
  %tmp.i680 = alloca i32, align 4
  %tmp.i678 = alloca i32, align 4
  %tmp.i676 = alloca i32, align 4
  %tmp.i674 = alloca i32, align 4
  %tmp.i672 = alloca i32, align 4
  %tmp.i670 = alloca i32, align 4
  %tmp.i668 = alloca i32, align 4
  %tmp.i666 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %ce_threshold1 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1, i32 6
  %0 = ptrtoint ptr %ce_threshold1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ce_threshold1, align 8
  %horizon2 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19
  %2 = ptrtoint ptr %horizon2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %horizon2, align 32
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp693 = icmp eq ptr %5, null
  %cmp = select i1 %cmp.i, i1 true, i1 %cmp693
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end406

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end406:                                        ; preds = %entry
  %6 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %1, i32 0) #13, !srcloc !64
  %asmresult.i = extractvalue { i64, i32 } %6, 0
  %asmresult4.i = extractvalue { i64, i32 } %6, 1
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %1, i64 %asmresult.i, i32 %asmresult4.i) #13, !srcloc !65
  %asmresult10.i = extractvalue { i64, i32 } %7, 0
  %extract656 = lshr i64 %asmresult10.i, 9
  %extract.t657 = trunc i64 %extract656 to i32
  %8 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %3, i32 0) #13, !srcloc !64
  %asmresult.i663 = extractvalue { i64, i32 } %8, 0
  %asmresult4.i664 = extractvalue { i64, i32 } %8, 1
  %9 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %3, i64 %asmresult.i663, i32 %asmresult4.i664) #13, !srcloc !65
  %asmresult10.i665 = extractvalue { i64, i32 } %9, 0
  %extract661 = lshr i64 %asmresult10.i665, 9
  %extract.t662 = trunc i64 %extract661 to i32
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %10 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %limit, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %12 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool409.not = icmp eq i32 %call.i, 0
  br i1 %tobool409.not, label %lor.lhs.false, label %if.end406.cleanup_crit_edge

if.end406.cleanup_crit_edge:                      ; preds = %if.end406
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end406
  %flow_plimit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1, i32 1, i32 1
  %13 = ptrtoint ptr %flow_plimit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flow_plimit, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i666) #10
  %15 = ptrtoint ptr %tmp.i666 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tmp.i666, align 4
  %call.i667 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i666) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i666) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i667)
  %tobool411.not = icmp eq i32 %call.i667, 0
  br i1 %tobool411.not, label %lor.lhs.false412, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false412:                                 ; preds = %lor.lhs.false
  %quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2
  %16 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %quantum, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i668) #10
  %18 = ptrtoint ptr %tmp.i668 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tmp.i668, align 4
  %call.i669 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i668) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i668) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i669)
  %tobool414.not = icmp eq i32 %call.i669, 0
  br i1 %tobool414.not, label %lor.lhs.false415, label %lor.lhs.false412.cleanup_crit_edge

lor.lhs.false412.cleanup_crit_edge:               ; preds = %lor.lhs.false412
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false415:                                 ; preds = %lor.lhs.false412
  %initial_quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1
  %19 = ptrtoint ptr %initial_quantum to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %initial_quantum, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i670) #10
  %21 = ptrtoint ptr %tmp.i670 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %tmp.i670, align 4
  %call.i671 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i670) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i670) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i671)
  %tobool417.not = icmp eq i32 %call.i671, 0
  br i1 %tobool417.not, label %lor.lhs.false418, label %lor.lhs.false415.cleanup_crit_edge

lor.lhs.false415.cleanup_crit_edge:               ; preds = %lor.lhs.false415
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false418:                                 ; preds = %lor.lhs.false415
  %rate_enable = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 20
  %22 = ptrtoint ptr %rate_enable to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rate_enable, align 4
  %conv419 = zext i8 %23 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i672) #10
  %24 = ptrtoint ptr %tmp.i672 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv419, ptr %tmp.i672, align 4
  %call.i673 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i672) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i672) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i673)
  %tobool421.not = icmp eq i32 %call.i673, 0
  br i1 %tobool421.not, label %lor.lhs.false422, label %lor.lhs.false418.cleanup_crit_edge

lor.lhs.false418.cleanup_crit_edge:               ; preds = %lor.lhs.false418
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false422:                                 ; preds = %lor.lhs.false418
  %flow_max_rate = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %flow_max_rate to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flow_max_rate, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i674) #10
  %27 = ptrtoint ptr %tmp.i674 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %tmp.i674, align 4
  %call.i675 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i674) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i674) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i675)
  %tobool431.not = icmp eq i32 %call.i675, 0
  br i1 %tobool431.not, label %lor.lhs.false432, label %lor.lhs.false422.cleanup_crit_edge

lor.lhs.false422.cleanup_crit_edge:               ; preds = %lor.lhs.false422
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false432:                                 ; preds = %lor.lhs.false422
  %flow_refill_delay = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %flow_refill_delay to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flow_refill_delay, align 8
  %call433 = call i32 @jiffies_to_usecs(i32 noundef %29) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i676) #10
  %30 = ptrtoint ptr %tmp.i676 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call433, ptr %tmp.i676, align 4
  %call.i677 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i676) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i676) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i677)
  %tobool435.not = icmp eq i32 %call.i677, 0
  br i1 %tobool435.not, label %lor.lhs.false436, label %lor.lhs.false432.cleanup_crit_edge

lor.lhs.false432.cleanup_crit_edge:               ; preds = %lor.lhs.false432
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false436:                                 ; preds = %lor.lhs.false432
  %orphan_mask = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19, i32 2
  %31 = ptrtoint ptr %orphan_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %orphan_mask, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i678) #10
  %33 = ptrtoint ptr %tmp.i678 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %tmp.i678, align 4
  %call.i679 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i678) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i678) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i679)
  %tobool438.not = icmp eq i32 %call.i679, 0
  br i1 %tobool438.not, label %lor.lhs.false439, label %lor.lhs.false436.cleanup_crit_edge

lor.lhs.false436.cleanup_crit_edge:               ; preds = %lor.lhs.false436
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false439:                                 ; preds = %lor.lhs.false436
  %low_rate_threshold = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19, i32 3
  %34 = ptrtoint ptr %low_rate_threshold to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %low_rate_threshold, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i680) #10
  %36 = ptrtoint ptr %tmp.i680 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %tmp.i680, align 4
  %call.i681 = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i680) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i680) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i681)
  %tobool441.not = icmp eq i32 %call.i681, 0
  br i1 %tobool441.not, label %lor.lhs.false442, label %lor.lhs.false439.cleanup_crit_edge

lor.lhs.false439.cleanup_crit_edge:               ; preds = %lor.lhs.false439
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false442:                                 ; preds = %lor.lhs.false439
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i682) #10
  %37 = ptrtoint ptr %tmp.i682 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %extract.t657, ptr %tmp.i682, align 4
  %call.i683 = call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 4, ptr noundef nonnull %tmp.i682) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i682) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i683)
  %tobool445.not = icmp eq i32 %call.i683, 0
  br i1 %tobool445.not, label %lor.lhs.false446, label %lor.lhs.false442.cleanup_crit_edge

lor.lhs.false442.cleanup_crit_edge:               ; preds = %lor.lhs.false442
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false446:                                 ; preds = %lor.lhs.false442
  %fq_trees_log = getelementptr inbounds %struct.fq_sched_data, ptr %privdata.i, i32 0, i32 19
  %38 = ptrtoint ptr %fq_trees_log to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %fq_trees_log, align 1
  %conv447 = zext i8 %39 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i684) #10
  %40 = ptrtoint ptr %tmp.i684 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv447, ptr %tmp.i684, align 4
  %call.i685 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i684) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i684) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i685)
  %tobool449.not = icmp eq i32 %call.i685, 0
  br i1 %tobool449.not, label %lor.lhs.false450, label %lor.lhs.false446.cleanup_crit_edge

lor.lhs.false446.cleanup_crit_edge:               ; preds = %lor.lhs.false446
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false450:                                 ; preds = %lor.lhs.false446
  %timer_slack = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4
  %41 = ptrtoint ptr %timer_slack to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %timer_slack, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i686) #10
  %43 = ptrtoint ptr %tmp.i686 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %tmp.i686, align 4
  %call.i687 = call i32 @nla_put(ptr noundef %skb, i32 noundef 13, i32 noundef 4, ptr noundef nonnull %tmp.i686) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i686) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i687)
  %tobool452.not = icmp eq i32 %call.i687, 0
  br i1 %tobool452.not, label %lor.lhs.false453, label %lor.lhs.false450.cleanup_crit_edge

lor.lhs.false450.cleanup_crit_edge:               ; preds = %lor.lhs.false450
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false453:                                 ; preds = %lor.lhs.false450
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i688) #10
  %44 = ptrtoint ptr %tmp.i688 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %extract.t662, ptr %tmp.i688, align 4
  %call.i689 = call i32 @nla_put(ptr noundef %skb, i32 noundef 14, i32 noundef 4, ptr noundef nonnull %tmp.i688) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i688) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i689)
  %tobool456.not = icmp eq i32 %call.i689, 0
  br i1 %tobool456.not, label %lor.lhs.false457, label %lor.lhs.false453.cleanup_crit_edge

lor.lhs.false453.cleanup_crit_edge:               ; preds = %lor.lhs.false453
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false457:                                 ; preds = %lor.lhs.false453
  %horizon_drop = getelementptr inbounds %struct.fq_sched_data, ptr %privdata.i, i32 0, i32 20
  %45 = ptrtoint ptr %horizon_drop to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %horizon_drop, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i690) #10
  %47 = ptrtoint ptr %tmp.i690 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %tmp.i690, align 1
  %call.i691 = call i32 @nla_put(ptr noundef %skb, i32 noundef 15, i32 noundef 1, ptr noundef nonnull %tmp.i690) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i690) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i691)
  %tobool459.not = icmp eq i32 %call.i691, 0
  br i1 %tobool459.not, label %if.end461, label %lor.lhs.false457.cleanup_crit_edge

lor.lhs.false457.cleanup_crit_edge:               ; preds = %lor.lhs.false457
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end461:                                        ; preds = %lor.lhs.false457
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %49 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i, ptr %5, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %51 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end461, %lor.lhs.false457.cleanup_crit_edge, %lor.lhs.false453.cleanup_crit_edge, %lor.lhs.false450.cleanup_crit_edge, %lor.lhs.false446.cleanup_crit_edge, %lor.lhs.false442.cleanup_crit_edge, %lor.lhs.false439.cleanup_crit_edge, %lor.lhs.false436.cleanup_crit_edge, %lor.lhs.false432.cleanup_crit_edge, %lor.lhs.false422.cleanup_crit_edge, %lor.lhs.false418.cleanup_crit_edge, %lor.lhs.false415.cleanup_crit_edge, %lor.lhs.false412.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end406.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %52, %if.end461 ], [ -1, %if.end406.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %lor.lhs.false412.cleanup_crit_edge ], [ -1, %lor.lhs.false415.cleanup_crit_edge ], [ -1, %lor.lhs.false418.cleanup_crit_edge ], [ -1, %lor.lhs.false422.cleanup_crit_edge ], [ -1, %lor.lhs.false432.cleanup_crit_edge ], [ -1, %lor.lhs.false436.cleanup_crit_edge ], [ -1, %lor.lhs.false439.cleanup_crit_edge ], [ -1, %lor.lhs.false442.cleanup_crit_edge ], [ -1, %lor.lhs.false446.cleanup_crit_edge ], [ -1, %lor.lhs.false450.cleanup_crit_edge ], [ -1, %lor.lhs.false453.cleanup_crit_edge ], [ -1, %lor.lhs.false457.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fq_dump_stats(ptr noundef %sch, ptr noundef %d) #2 align 64 {
entry:
  %st = alloca %struct.tc_fq_qd_stats, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %st) #10
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.sch_tree_lock.exit_crit_edge

entry.sch_tree_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_lock.exit

if.else.i:                                        ; preds = %entry
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %2 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i.sch_tree_lock.exit_crit_edge

if.else.i.sch_tree_lock.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !50

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 596) #10
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i.sch_tree_lock.exit_crit_edge, %entry.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %entry.sch_tree_lock.exit_crit_edge ], [ %5, %if.else.i.sch_tree_lock.exit_crit_edge ], [ %5, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %5, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #10
  %stat_gc_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 1
  %6 = ptrtoint ptr %stat_gc_flows to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %stat_gc_flows, align 8
  %8 = ptrtoint ptr %st to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %st, align 8
  %stat_internal_packets = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %stat_internal_packets to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %stat_internal_packets, align 16
  %highprio_packets = getelementptr inbounds %struct.tc_fq_qd_stats, ptr %st, i32 0, i32 1
  %11 = ptrtoint ptr %highprio_packets to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %highprio_packets, align 8
  %tcp_retrans = getelementptr inbounds %struct.tc_fq_qd_stats, ptr %st, i32 0, i32 2
  %12 = ptrtoint ptr %tcp_retrans to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %tcp_retrans, align 8
  %stat_throttled = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 3
  %13 = ptrtoint ptr %stat_throttled to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %stat_throttled, align 8
  %throttled = getelementptr inbounds %struct.tc_fq_qd_stats, ptr %st, i32 0, i32 3
  %15 = ptrtoint ptr %throttled to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %throttled, align 8
  %stat_flows_plimit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 24
  %16 = ptrtoint ptr %stat_flows_plimit to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %stat_flows_plimit, align 8
  %flows_plimit = getelementptr inbounds %struct.tc_fq_qd_stats, ptr %st, i32 0, i32 4
  %18 = ptrtoint ptr %flows_plimit to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %flows_plimit, align 8
  %stat_pkts_too_long = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25
  %19 = ptrtoint ptr %stat_pkts_too_long to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %stat_pkts_too_long, align 128
  %pkts_too_long = getelementptr inbounds %struct.tc_fq_qd_stats, ptr %st, i32 0, i32 5
  %21 = ptrtoint ptr %pkts_too_long to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %pkts_too_long, align 8
  %stat_allocation_errors = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 2
  %22 = ptrtoint ptr %stat_allocation_errors to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %stat_allocation_errors, align 8
  %allocation_errors = getelementptr inbounds %struct.tc_fq_qd_stats, ptr %st, i32 0, i32 6
  %24 = ptrtoint ptr %allocation_errors to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %allocation_errors, align 8
  %time_next_delayed_flow = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %25 = ptrtoint ptr %time_next_delayed_flow to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %time_next_delayed_flow, align 8
  %timer_slack = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 25, i32 0, i32 0, i32 4
  %27 = ptrtoint ptr %timer_slack to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %timer_slack, align 16
  %conv = zext i32 %28 to i64
  %add = add i64 %26, %conv
  %call.i = tail call i64 @ktime_get() #10
  %sub = sub i64 %add, %call.i
  %time_next_delayed_flow2 = getelementptr inbounds %struct.tc_fq_qd_stats, ptr %st, i32 0, i32 7
  %29 = ptrtoint ptr %time_next_delayed_flow2 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %sub, ptr %time_next_delayed_flow2, align 8
  %flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 21
  %30 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flows, align 8
  %flows3 = getelementptr inbounds %struct.tc_fq_qd_stats, ptr %st, i32 0, i32 8
  %32 = ptrtoint ptr %flows3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %flows3, align 8
  %inactive_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 22
  %33 = ptrtoint ptr %inactive_flows to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %inactive_flows, align 4
  %inactive_flows4 = getelementptr inbounds %struct.tc_fq_qd_stats, ptr %st, i32 0, i32 9
  %35 = ptrtoint ptr %inactive_flows4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %inactive_flows4, align 4
  %throttled_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23
  %36 = ptrtoint ptr %throttled_flows to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %throttled_flows, align 64
  %throttled_flows5 = getelementptr inbounds %struct.tc_fq_qd_stats, ptr %st, i32 0, i32 10
  %38 = ptrtoint ptr %throttled_flows5 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %throttled_flows5, align 8
  %unthrottle_latency_ns = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %39 = ptrtoint ptr %unthrottle_latency_ns to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %unthrottle_latency_ns, align 8
  %unthrottle_latency_ns7 = getelementptr inbounds %struct.tc_fq_qd_stats, ptr %st, i32 0, i32 11
  %41 = ptrtoint ptr %unthrottle_latency_ns7 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %unthrottle_latency_ns7, align 4
  %stat_ce_mark = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %stat_ce_mark to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %stat_ce_mark, align 32
  %ce_mark = getelementptr inbounds %struct.tc_fq_qd_stats, ptr %st, i32 0, i32 12
  %44 = ptrtoint ptr %ce_mark to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %ce_mark, align 8
  %stat_horizon_drops = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 2
  %45 = ptrtoint ptr %stat_horizon_drops to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %stat_horizon_drops, align 8
  %horizon_drops = getelementptr inbounds %struct.tc_fq_qd_stats, ptr %st, i32 0, i32 13
  %47 = ptrtoint ptr %horizon_drops to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %horizon_drops, align 8
  %stat_horizon_caps = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 6
  %48 = ptrtoint ptr %stat_horizon_caps to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %stat_horizon_caps, align 16
  %horizon_caps = getelementptr inbounds %struct.tc_fq_qd_stats, ptr %st, i32 0, i32 14
  %50 = ptrtoint ptr %horizon_caps to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %horizon_caps, align 8
  %51 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i, align 8
  %and.i28 = and i32 %52, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28)
  %tobool.not.i29 = icmp eq i32 %and.i28, 0
  br i1 %tobool.not.i29, label %if.else.i34, label %sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge

sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge: ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_unlock.exit

if.else.i34:                                      ; preds = %sch_tree_lock.exit
  %dev_queue.i.i.i30 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %53 = ptrtoint ptr %dev_queue.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_queue.i.i.i30, align 8
  %qdisc_sleeping.i.i.i31 = getelementptr inbounds %struct.netdev_queue, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %qdisc_sleeping.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %qdisc_sleeping.i.i.i31, align 4
  %call1.i.i32 = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i32)
  %tobool.not.i.i33 = icmp eq i32 %call1.i.i32, 0
  br i1 %tobool.not.i.i33, label %land.rhs.i.i36, label %if.else.i34.sch_tree_unlock.exit_crit_edge

if.else.i34.sch_tree_unlock.exit_crit_edge:       ; preds = %if.else.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_unlock.exit

land.rhs.i.i36:                                   ; preds = %if.else.i34
  %.b41.i.i35 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i35, label %land.rhs.i.i36.sch_tree_unlock.exit_crit_edge, label %if.then.i.i37, !prof !50

land.rhs.i.i36.sch_tree_unlock.exit_crit_edge:    ; preds = %land.rhs.i.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_unlock.exit

if.then.i.i37:                                    ; preds = %land.rhs.i.i36
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 596) #10
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i37, %land.rhs.i.i36.sch_tree_unlock.exit_crit_edge, %if.else.i34.sch_tree_unlock.exit_crit_edge, %sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge
  %.sink.i38 = phi ptr [ %sch, %sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge ], [ %56, %if.else.i34.sch_tree_unlock.exit_crit_edge ], [ %56, %land.rhs.i.i36.sch_tree_unlock.exit_crit_edge ], [ %56, %if.then.i.i37 ]
  %lock.i.i.i39 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i38, i32 0, i32 17, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i39) #10
  %call8 = call i32 @gnet_stats_copy_app(ptr noundef %d, ptr noundef nonnull %st, i32 noundef 104) #10
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %st) #10
  ret i32 %call8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fq_flow_unset_throttled(ptr noundef %q, ptr noundef %f) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_node = getelementptr inbounds %struct.fq_flow, ptr %f, i32 0, i32 9
  %delayed = getelementptr inbounds %struct.fq_sched_data, ptr %q, i32 0, i32 2
  tail call void @rb_erase(ptr noundef %rate_node, ptr noundef %delayed) #10
  %throttled_flows = getelementptr inbounds %struct.fq_sched_data, ptr %q, i32 0, i32 23
  %0 = ptrtoint ptr %throttled_flows to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %throttled_flows, align 64
  %dec = add i32 %1, -1
  store i32 %dec, ptr %throttled_flows, align 64
  %old_flows = getelementptr inbounds %struct.fq_sched_data, ptr %q, i32 0, i32 1
  %2 = ptrtoint ptr %old_flows to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %old_flows, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %last.i = getelementptr inbounds %struct.fq_sched_data, ptr %q, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %last.i, align 4
  %next.i = getelementptr inbounds %struct.fq_flow, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %f, ptr %next.i, align 8
  br label %fq_flow_add_tail.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %old_flows to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %f, ptr %old_flows, align 4
  br label %fq_flow_add_tail.exit

fq_flow_add_tail.exit:                            ; preds = %if.else.i, %if.then.i
  %last2.i = getelementptr inbounds %struct.fq_sched_data, ptr %q, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %last2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %f, ptr %last2.i, align 4
  %next3.i = getelementptr inbounds %struct.fq_flow, ptr %f, i32 0, i32 8
  %9 = ptrtoint ptr %next3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %next3.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_get_hash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free_bulk(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fq_dequeue_skb(ptr nocapture noundef %sch, ptr noundef %flow, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.fq_flow, ptr %flow, i32 0, i32 1
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 4
  %cmp.i = icmp eq ptr %1, %skb
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb, align 8
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %head.i, align 4
  br label %fq_erase_head.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rb_erase(ptr noundef %skb, ptr noundef %flow) #10
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %5 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_queue.i.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 128
  %9 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %9, align 8
  br label %fq_erase_head.exit

fq_erase_head.exit:                               ; preds = %if.else.i, %if.then.i
  %11 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %skb, align 8
  %qlen = getelementptr inbounds %struct.fq_flow, ptr %flow, i32 0, i32 6
  %12 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen, align 32
  %dec = add i32 %13, -1
  store i32 %dec, ptr %qlen, align 32
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %14 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cb.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %16 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %backlog.i, align 4
  %sub.i = sub i32 %17, %15
  store i32 %sub.i, ptr %backlog.i, align 4
  %qlen1 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %18 = ptrtoint ptr %qlen1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qlen1, align 8
  %dec2 = add i32 %19, -1
  store i32 %dec2, ptr %qlen1, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_schedule_range_ns(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_init_clockid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fq_resize(ptr noundef %sch, i32 noundef %log) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %fq_root = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19, i32 4
  %0 = ptrtoint ptr %fq_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fq_root, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fq_trees_log = getelementptr inbounds %struct.fq_sched_data, ptr %privdata.i, i32 0, i32 19
  %2 = ptrtoint ptr %fq_trees_log to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fq_trees_log, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %log)
  %cmp = icmp eq i32 %conv, %log
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %shl = shl i32 4, %log
  %call3 = tail call noalias ptr @kvmalloc_node(i32 noundef %shl, i32 noundef 19648, i32 noundef -1) #15
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %idx.063 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rb_root, ptr %call3, i32 %idx.063
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  %inc = add i32 %idx.063, 1
  %idx.0.highbits = lshr i32 %inc, %log
  %cmp8 = icmp eq i32 %idx.0.highbits, 0
  br i1 %cmp8, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %for.end.sch_tree_lock.exit_crit_edge

for.end.sch_tree_lock.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_lock.exit

if.else.i:                                        ; preds = %for.end
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %7 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i.sch_tree_lock.exit_crit_edge

if.else.i.sch_tree_lock.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !50

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 596) #10
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i.sch_tree_lock.exit_crit_edge, %for.end.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %for.end.sch_tree_lock.exit_crit_edge ], [ %10, %if.else.i.sch_tree_lock.exit_crit_edge ], [ %10, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %10, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #10
  %11 = ptrtoint ptr %fq_root to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fq_root, align 16
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %sch_tree_lock.exit.if.end15_crit_edge, label %if.then12

sch_tree_lock.exit.if.end15_crit_edge:            ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then12:                                        ; preds = %sch_tree_lock.exit
  %fq_trees_log13 = getelementptr inbounds %struct.fq_sched_data, ptr %privdata.i, i32 0, i32 19
  %13 = ptrtoint ptr %fq_trees_log13 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fq_trees_log13, align 1
  %conv14 = zext i8 %14 to i32
  %sub.i.i.i = sub i32 32, %log
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then12
  %idx.075.i = phi i32 [ 0, %if.then12 ], [ %inc30.i, %for.inc.i.for.body.i_crit_edge ]
  %fcnt.074.i = phi i32 [ 0, %if.then12 ], [ %fcnt.1.ph.lcssa59.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rb_root, ptr %12, i32 %idx.075.i
  %call6369.i = tail call ptr @rb_first(ptr noundef %arrayidx.i) #10
  %cmp1.not6470.i = icmp eq ptr %call6369.i, null
  br i1 %cmp1.not6470.i, label %for.body.i.for.inc.i_crit_edge, label %for.body.i.while.body.lr.ph.i_crit_edge

for.body.i.while.body.lr.ph.i_crit_edge:          ; preds = %for.body.i
  br label %while.body.lr.ph.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

while.body.lr.ph.i:                               ; preds = %if.then.i.while.body.lr.ph.i_crit_edge, %for.body.i.while.body.lr.ph.i_crit_edge
  %call6372.i = phi ptr [ %call63.i, %if.then.i.while.body.lr.ph.i_crit_edge ], [ %call6369.i, %for.body.i.while.body.lr.ph.i_crit_edge ]
  %fcnt.1.ph71.i = phi i32 [ %inc.i, %if.then.i.while.body.lr.ph.i_crit_edge ], [ %fcnt.074.i, %for.body.i.while.body.lr.ph.i_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %while.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call65.i = phi ptr [ %call6372.i, %while.body.lr.ph.i ], [ %call.i, %while.end.i.while.body.i_crit_edge ]
  tail call void @rb_erase(ptr noundef nonnull %call65.i, ptr noundef %arrayidx.i) #10
  %15 = getelementptr i8, ptr %call65.i, i32 -4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %and.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %while.body.i.if.end.i_crit_edge, label %fq_gc_candidate.exit.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

fq_gc_candidate.exit.i:                           ; preds = %while.body.i
  %add.i.i = add i32 %17, 300
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then.i, label %fq_gc_candidate.exit.i.if.end.i_crit_edge

fq_gc_candidate.exit.i.if.end.i_crit_edge:        ; preds = %fq_gc_candidate.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %fq_gc_candidate.exit.i
  %add.ptr.le.i = getelementptr i8, ptr %call65.i, i32 -12
  %inc.i = add i32 %fcnt.1.ph71.i, 1
  %19 = load ptr, ptr @fq_flow_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %19, ptr noundef %add.ptr.le.i) #10
  %call63.i = tail call ptr @rb_first(ptr noundef %arrayidx.i) #10
  %cmp1.not64.i = icmp eq ptr %call63.i, null
  br i1 %cmp1.not64.i, label %if.then.i.for.inc.i_crit_edge, label %if.then.i.while.body.lr.ph.i_crit_edge

if.then.i.while.body.lr.ph.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.lr.ph.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %fq_gc_candidate.exit.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %sk.i = getelementptr i8, ptr %call65.i, i32 12
  %20 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sk.i, align 8
  %22 = ptrtoint ptr %21 to i32
  %mul.i.i.i.i = mul i32 %22, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, %sub.i.i.i
  %arrayidx4.i = getelementptr %struct.rb_root, ptr %call3, i32 %shr.i.i.i
  %23 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx4.i, align 4
  %tobool.not61.i = icmp eq ptr %24, null
  br i1 %tobool.not61.i, label %if.end.i.while.end.i_crit_edge, label %if.end.i.while.body6.i_crit_edge

if.end.i.while.body6.i_crit_edge:                 ; preds = %if.end.i
  br label %while.body6.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body6.i:                                    ; preds = %do.end22.i.while.body6.i_crit_edge, %if.end.i.while.body6.i_crit_edge
  %25 = phi ptr [ %29, %do.end22.i.while.body6.i_crit_edge ], [ %24, %if.end.i.while.body6.i_crit_edge ]
  %sk10.i = getelementptr i8, ptr %25, i32 12
  %26 = ptrtoint ptr %sk10.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sk10.i, align 8
  %cmp12.i = icmp eq ptr %27, %21
  br i1 %cmp12.i, label %do.body16.i, label %do.end22.i, !prof !51

do.body16.i:                                      ; preds = %while.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sched/sch_fq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 725, 0\0A.popsection", ""() #10, !srcloc !66
  unreachable

do.end22.i:                                       ; preds = %while.body6.i
  %cmp25.i = icmp ugt ptr %27, %21
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %25, i32 0, i32 1
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %25, i32 0, i32 2
  %np.1.i = select i1 %cmp25.i, ptr %rb_right.i, ptr %rb_left.i
  %28 = ptrtoint ptr %np.1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %np.1.i, align 4
  %tobool.not.i42 = icmp eq ptr %29, null
  br i1 %tobool.not.i42, label %do.end22.i.while.end.i_crit_edge, label %do.end22.i.while.body6.i_crit_edge

do.end22.i.while.body6.i_crit_edge:               ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body6.i

do.end22.i.while.end.i_crit_edge:                 ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %do.end22.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %parent.0.lcssa.i = phi ptr [ null, %if.end.i.while.end.i_crit_edge ], [ %25, %do.end22.i.while.end.i_crit_edge ]
  %np.0.lcssa.i = phi ptr [ %arrayidx4.i, %if.end.i.while.end.i_crit_edge ], [ %np.1.i, %do.end22.i.while.end.i_crit_edge ]
  %30 = ptrtoint ptr %parent.0.lcssa.i to i32
  %31 = ptrtoint ptr %call65.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %call65.i, align 4
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call65.i, i32 0, i32 1
  %32 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call65.i, i32 0, i32 2
  %33 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %rb_left.i.i, align 4
  %34 = ptrtoint ptr %np.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call65.i, ptr %np.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call65.i, ptr noundef %arrayidx4.i) #10
  %call.i = tail call ptr @rb_first(ptr noundef %arrayidx.i) #10
  %cmp1.not.i = icmp eq ptr %call.i, null
  br i1 %cmp1.not.i, label %while.end.i.for.inc.i_crit_edge, label %while.end.i.while.body.i_crit_edge

while.end.i.while.body.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i.for.inc.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %while.end.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %fcnt.1.ph.lcssa59.i = phi i32 [ %fcnt.074.i, %for.body.i.for.inc.i_crit_edge ], [ %fcnt.1.ph71.i, %while.end.i.for.inc.i_crit_edge ], [ %inc.i, %if.then.i.for.inc.i_crit_edge ]
  %inc30.i = add i32 %idx.075.i, 1
  %idx.0.highbits.i = lshr i32 %inc30.i, %conv14
  %cmp.i = icmp eq i32 %idx.0.highbits.i, 0
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %fq_rehash.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

fq_rehash.exit:                                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %flows.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 21
  %35 = ptrtoint ptr %flows.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flows.i, align 8
  %sub.i = sub i32 %36, %fcnt.1.ph.lcssa59.i
  store i32 %sub.i, ptr %flows.i, align 8
  %inactive_flows.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 22
  %37 = ptrtoint ptr %inactive_flows.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %inactive_flows.i, align 4
  %sub31.i = sub i32 %38, %fcnt.1.ph.lcssa59.i
  store i32 %sub31.i, ptr %inactive_flows.i, align 4
  %conv.i = sext i32 %fcnt.1.ph.lcssa59.i to i64
  %stat_gc_flows.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 1
  %39 = ptrtoint ptr %stat_gc_flows.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %stat_gc_flows.i, align 8
  %add.i = add i64 %40, %conv.i
  store i64 %add.i, ptr %stat_gc_flows.i, align 8
  br label %if.end15

if.end15:                                         ; preds = %fq_rehash.exit, %sch_tree_lock.exit.if.end15_crit_edge
  %41 = ptrtoint ptr %fq_root to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call3, ptr %fq_root, align 16
  %conv17 = trunc i32 %log to i8
  %fq_trees_log18 = getelementptr inbounds %struct.fq_sched_data, ptr %privdata.i, i32 0, i32 19
  %42 = ptrtoint ptr %fq_trees_log18 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv17, ptr %fq_trees_log18, align 1
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i, align 8
  %and.i44 = and i32 %44, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44)
  %tobool.not.i45 = icmp eq i32 %and.i44, 0
  br i1 %tobool.not.i45, label %if.else.i50, label %if.end15.sch_tree_unlock.exit_crit_edge

if.end15.sch_tree_unlock.exit_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_unlock.exit

if.else.i50:                                      ; preds = %if.end15
  %dev_queue.i.i.i46 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %45 = ptrtoint ptr %dev_queue.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_queue.i.i.i46, align 8
  %qdisc_sleeping.i.i.i47 = getelementptr inbounds %struct.netdev_queue, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %qdisc_sleeping.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %qdisc_sleeping.i.i.i47, align 4
  %call1.i.i48 = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i48)
  %tobool.not.i.i49 = icmp eq i32 %call1.i.i48, 0
  br i1 %tobool.not.i.i49, label %land.rhs.i.i52, label %if.else.i50.sch_tree_unlock.exit_crit_edge

if.else.i50.sch_tree_unlock.exit_crit_edge:       ; preds = %if.else.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_unlock.exit

land.rhs.i.i52:                                   ; preds = %if.else.i50
  %.b41.i.i51 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i51, label %land.rhs.i.i52.sch_tree_unlock.exit_crit_edge, label %if.then.i.i53, !prof !50

land.rhs.i.i52.sch_tree_unlock.exit_crit_edge:    ; preds = %land.rhs.i.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_unlock.exit

if.then.i.i53:                                    ; preds = %land.rhs.i.i52
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 596) #10
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i53, %land.rhs.i.i52.sch_tree_unlock.exit_crit_edge, %if.else.i50.sch_tree_unlock.exit_crit_edge, %if.end15.sch_tree_unlock.exit_crit_edge
  %.sink.i54 = phi ptr [ %sch, %if.end15.sch_tree_unlock.exit_crit_edge ], [ %48, %if.else.i50.sch_tree_unlock.exit_crit_edge ], [ %48, %land.rhs.i.i52.sch_tree_unlock.exit_crit_edge ], [ %48, %if.then.i.i53 ]
  %lock.i.i.i55 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i54, i32 0, i32 17, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i55) #10
  tail call void @kvfree(ptr noundef %12) #10
  br label %cleanup

cleanup:                                          ; preds = %sch_tree_unlock.exit, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sch_tree_unlock.exit ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_kfree_skbs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_tree_reduce_backlog(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_app(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38}
!llvm.named.register.sp = !{!40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_sch_fq__614_1074_fq_module_init6, !1, !"__initcall__kmod_sch_fq__614_1074_fq_module_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_fq.c", i32 1074, i32 1}
!2 = !{ptr @__exitcall_fq_module_exit, !3, !"__exitcall_fq_module_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_fq.c", i32 1075, i32 1}
!4 = !{ptr @__UNIQUE_ID_author615, !5, !"__UNIQUE_ID_author615", i1 false, i1 false}
!5 = !{!"../net/sched/sch_fq.c", i32 1076, i32 1}
!6 = !{ptr @__UNIQUE_ID_file616, !7, !"__UNIQUE_ID_file616", i1 false, i1 false}
!7 = !{!"../net/sched/sch_fq.c", i32 1077, i32 1}
!8 = !{ptr @__UNIQUE_ID_license617, !7, !"__UNIQUE_ID_license617", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description618, !10, !"__UNIQUE_ID_description618", i1 false, i1 false}
!10 = !{!"../net/sched/sch_fq.c", i32 1078, i32 1}
!11 = !{ptr @fq_flow_cachep, !12, !"fq_flow_cachep", i1 false, i1 false}
!12 = !{!"../net/sched/sch_fq.c", i32 204, i32 27}
!13 = !{ptr @fq_qdisc_ops, !14, !"fq_qdisc_ops", i1 false, i1 false}
!14 = !{!"../net/sched/sch_fq.c", i32 1036, i32 25}
!15 = !{ptr @throttled, !16, !"throttled", i1 false, i1 false}
!16 = !{!"../net/sched/sch_fq.c", i32 155, i32 23}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @fq_change.__msg, !27, !"__msg", i1 false, i1 false}
!27 = !{!"../net/sched/sch_fq.c", i32 843, i32 4}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/sched/sch_fq.c", i32 852, i32 3}
!30 = !{ptr @fq_change._rs, !29, !"_rs", i1 false, i1 false}
!31 = !{ptr @__func__.fq_change, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @fq_change._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @fq_change._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @fq_policy, !37, !"fq_policy", i1 false, i1 false}
!37 = !{!"../net/sched/sch_fq.c", i32 782, i32 32}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/sched/sch_fq.c", i32 1056, i32 37}
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
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{i64 2154626668, i64 2154627156, i64 2154626705, i64 2154626761, i64 2154626795, i64 2154626819, i64 2154626860, i64 2154626881, i64 2154626909, i64 2154626943}
!53 = !{i64 2158620085}
!54 = !{i64 2158624981}
!55 = !{i64 863664}
!56 = !{!"auto-init"}
!57 = !{i64 2148211800, i64 2148212080, i64 2148212414, i64 2148212748}
!58 = !{i64 2149889534}
!59 = !{i64 2149894466}
!60 = !{i64 2149916178}
!61 = !{i64 2149921070}
!62 = !{i64 2149997527}
!63 = !{i64 2149997852}
!64 = !{i64 726256, i64 726283, i64 726305, i64 726333}
!65 = !{i64 726664, i64 726691, i64 726724, i64 726745, i64 726772, i64 726798}
!66 = !{i64 2158646137, i64 2158646620, i64 2158646174, i64 2158646230, i64 2158646264, i64 2158646288, i64 2158646329, i64 2158646350, i64 2158646378, i64 2158646412}
