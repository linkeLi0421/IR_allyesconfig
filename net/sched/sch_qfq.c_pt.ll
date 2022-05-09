; ModuleID = '/llk/IR_all_yes/net/sched/sch_qfq.c_pt.bc'
source_filename = "../net/sched/sch_qfq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Qdisc_class_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, [64 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [8 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, ptr, [28 x i8], [0 x i32] }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.70, i32, %struct.spinlock }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.25 }
%union.anon.25 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.26 }
%union.anon.26 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.22 }
%union.anon.22 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.qfq_class = type { %struct.Qdisc_class_common, i32, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, ptr, ptr, %struct.list_head, ptr, i32 }
%struct.Qdisc_class_common = type { i32, %struct.hlist_node }
%struct.list_head = type { ptr, ptr }
%struct.qfq_aggregate = type { %struct.hlist_node, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.hlist_node }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.121, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.121 = type { ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.qfq_sched = type { ptr, ptr, %struct.Qdisc_class_hash, i64, i64, ptr, i32, i32, [4 x i32], [25 x %struct.qfq_group], i32, i32, %struct.hlist_head }
%struct.Qdisc_class_hash = type { ptr, i32, i32, i32 }
%struct.qfq_group = type { i64, i64, i32, i32, i32, i32, [32 x %struct.hlist_head] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.qdisc_walker = type { i32, i32, i32, ptr }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.tc_qfq_stats = type { i32, i32 }
%struct.tcf_result = type { %union.anon.117 }
%union.anon.117 = type { %struct.anon.118 }
%struct.anon.118 = type { i32, i32 }

@qfq_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr @qfq_class_ops, [16 x i8] c"qfq\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4088, i32 0, ptr @qfq_enqueue, ptr @qfq_dequeue, ptr @qdisc_peek_dequeued, ptr @qfq_init_qdisc, ptr @qfq_reset_qdisc, ptr @qfq_destroy_qdisc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_qfq__380_1521_qfq_init6 = internal global ptr @qfq_init, section ".initcall6.init", align 4
@__exitcall_qfq_exit = internal global ptr @qfq_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file381 = internal constant [31 x i8] c"sch_qfq.file=net/sched/sch_qfq\00", section ".modinfo", align 1
@__UNIQUE_ID_license382 = internal constant [20 x i8] c"sch_qfq.license=GPL\00", section ".modinfo", align 1
@qfq_class_ops = internal constant { %struct.Qdisc_class_ops, [40 x i8] } { %struct.Qdisc_class_ops { i32 0, ptr null, ptr @qfq_graft_class, ptr @qfq_class_leaf, ptr @qfq_qlen_notify, ptr @qfq_search_class, ptr @qfq_change_class, ptr @qfq_delete_class, ptr @qfq_walk, ptr @qfq_tcf_block, ptr @qfq_bind_tcf, ptr @qfq_unbind_tcf, ptr @qfq_dump_class, ptr @qfq_dump_class_stats }, [40 x i8] zeroinitializer }, align 32
@pfifo_qdisc_ops = external dso_local global %struct.Qdisc_ops, align 4
@noop_qdisc = external dso_local global %struct.Qdisc, align 128
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@qfq_slot_scan.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 -25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sch_qfq\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qfq_slot_scan\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/sched/sch_qfq.c\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qfq slot_scan: grp %u full %#lx\0A\00", [63 x i8] zeroinitializer }, align 32
@qfq_change_class._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.4, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\015qfq: no options\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qfq_change_class\00", [47 x i8] zeroinitializer }, align 32
@qfq_change_class._entry_ptr = internal global ptr @qfq_change_class._entry, section ".printk_index", align 4
@qfq_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.22 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.22 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@qfq_change_class._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.4, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\015qfq: invalid weight %u\0A\00", [38 x i8] zeroinitializer }, align 32
@qfq_change_class._entry_ptr.10 = internal global ptr @qfq_change_class._entry.8, section ".printk_index", align 4
@qfq_change_class._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.4, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015qfq: invalid max length %u\0A\00", [34 x i8] zeroinitializer }, align 32
@qfq_change_class._entry_ptr.13 = internal global ptr @qfq_change_class._entry.11, section ".printk_index", align 4
@qfq_change_class._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.4, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015qfq: total weight out of range (%d + %u)\0A\00", [52 x i8] zeroinitializer }, align 32
@qfq_change_class._entry_ptr.16 = internal global ptr @qfq_change_class._entry.14, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qfq_calc_index.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.17, ptr @.str.4, ptr @.str.18, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qfq_calc_index\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"qfq calc_index: W = %lu, L = %u, I = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@qfq_schedule_agg.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.19, ptr @.str.4, ptr @.str.20, i8 1, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qfq_schedule_agg\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"qfq enqueue: new state %d %#lx S %lld F %lld V %lld\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@qfq_enqueue.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 1, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qfq_enqueue\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qfq_enqueue: cl = %x\0A\00", [42 x i8] zeroinitializer }, align 32
@qfq_enqueue.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.22, ptr @.str.4, ptr @.str.24, i8 1, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"qfq: increasing maxpkt from %u to %u for class %u\00", [46 x i8] zeroinitializer }, align 32
@qfq_enqueue.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.22, ptr @.str.4, ptr @.str.25, i8 1, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qfq_enqueue: enqueue failed %d\0A\00", [32 x i8] zeroinitializer }, align 32
@qfq_classify.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.26, ptr @.str.4, ptr @.str.27, i8 0, i8 -85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qfq_classify\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qfq_classify: found %d\0A\00", [40 x i8] zeroinitializer }, align 32
@qfq_classify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@qdisc_calculate_pkt_len.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@qfq_dequeue.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.30, ptr @.str.4, ptr @.str.31, i8 1, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qfq_dequeue\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"qfq dequeue: len %u F %lld now %lld\0A\00", [59 x i8] zeroinitializer }, align 32
@qfq_peek_skb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"qfq_dequeue: non-workconserving leaf\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 5, i64 8]
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"qfq_class_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1483, i32 37 }
@___asan_gen_.40 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 596, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 924, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 406, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [11 x i8] c"qfq_policy\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 217, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 418, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 427, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 444, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 243, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1303, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 991, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1213, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1216, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1229, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 685, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 692, i32 7 }
@___asan_gen_.121 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 271, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1146, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [23 x i8] c"../net/sched/sch_qfq.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 997, i32 3 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_file381, ptr @__UNIQUE_ID_license382, ptr @__exitcall_qfq_exit, ptr @__initcall__kmod_sch_qfq__380_1521_qfq_init6, ptr @qfq_change_class._entry, ptr @qfq_change_class._entry.11, ptr @qfq_change_class._entry.14, ptr @qfq_change_class._entry.8, ptr @qfq_change_class._entry_ptr, ptr @qfq_change_class._entry_ptr.10, ptr @qfq_change_class._entry_ptr.13, ptr @qfq_change_class._entry_ptr.16, ptr @qfq_exit, ptr @qfq_class_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @qfq_policy, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qfq_class_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qfq_change_class._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qfq_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qfq_change_class._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qfq_change_class._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qfq_change_class._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qfq_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @qfq_qdisc_ops) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qfq_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @qfq_qdisc_ops) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qfq_enqueue(ptr noundef %skb, ptr noundef %sch, ptr noundef %to_free) #2 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i.i, align 4
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #16
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %err, align 4
  %call2 = call fastcc ptr @qfq_classify(ptr noundef %skb, ptr noundef %sch, ptr noundef nonnull %err)
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %err, align 4
  %and = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %drops.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %5 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %drops.i.i, align 4
  %inc.i.i = add i32 %6, 1
  store i32 %inc.i.i, ptr %drops.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %to_free, align 4
  %9 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qfq_enqueue.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qfq_enqueue, %if.then9)) #16
          to label %do.end [label %if.then9], !srcloc !89

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call2, align 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qfq_enqueue.__UNIQUE_ID_ddebug374, ptr noundef nonnull @.str.23, i32 noundef %11) #16
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %agg11 = getelementptr inbounds %struct.qfq_class, ptr %call2, i32 0, i32 7
  %12 = ptrtoint ptr %agg11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %agg11, align 4
  %lmax = getelementptr inbounds %struct.qfq_aggregate, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %lmax to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lmax, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %1)
  %cmp12 = icmp ult i32 %15, %1
  br i1 %cmp12, label %do.body20, label %do.end.if.end46_crit_edge, !prof !90

do.end.if.end46_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46

do.body20:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qfq_enqueue.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qfq_enqueue, %if.then32)) #16
          to label %do.end39 [label %if.then32], !srcloc !89

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %agg11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %agg11, align 4
  %lmax34 = getelementptr inbounds %struct.qfq_aggregate, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %lmax34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lmax34, align 8
  %20 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call2, align 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qfq_enqueue.__UNIQUE_ID_ddebug375, ptr noundef nonnull @.str.24, i32 noundef %19, i32 noundef %1, i32 noundef %21) #16
  br label %do.end39

do.end39:                                         ; preds = %if.then32, %do.body20
  %22 = ptrtoint ptr %agg11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %agg11, align 4
  %class_weight = getelementptr inbounds %struct.qfq_aggregate, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %class_weight to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %class_weight, align 4
  %call41 = tail call fastcc i32 @qfq_change_agg(ptr noundef %sch, ptr noundef nonnull %call2, i32 noundef %25, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %do.end39.if.end46_crit_edge, label %if.then43

do.end39.if.end46_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46

if.then43:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #18
  %drops = getelementptr inbounds %struct.qfq_class, ptr %call2, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %drops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %drops, align 8
  %inc = add i32 %27, 1
  store i32 %inc, ptr %drops, align 8
  %28 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %to_free, align 4
  %30 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %31 = ptrtoint ptr %drops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %drops.i.i.i, align 4
  %inc.i.i.i = add i32 %32, 1
  store i32 %inc.i.i.i, ptr %drops.i.i.i, align 4
  br label %cleanup

if.end46:                                         ; preds = %do.end39.if.end46_crit_edge, %do.end.if.end46_crit_edge
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %33 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool.i.not = icmp eq i16 %36, 0
  br i1 %tobool.i.not, label %if.end46.cond.end_crit_edge, label %cond.true

if.end46.cond.end_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.true:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  %gso_segs49 = getelementptr inbounds %struct.skb_shared_info, ptr %34, i32 0, i32 5
  %37 = ptrtoint ptr %gso_segs49 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %gso_segs49, align 2
  %conv = zext i16 %38 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end46.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.true ], [ 1, %if.end46.cond.end_crit_edge ]
  %qdisc = getelementptr inbounds %struct.qfq_class, ptr %call2, i32 0, i32 5
  %39 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %qdisc, align 8
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %40, i32 0, i32 17, i32 2
  %41 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %qlen, align 8
  %stab1.i.i = getelementptr inbounds %struct.Qdisc, ptr %40, i32 0, i32 5
  %43 = ptrtoint ptr %stab1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %stab1.i.i, align 4
  %call.i.i = tail call i32 @rcu_read_lock_bh_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %cond.end.do.end8.i.i_crit_edge

cond.end.do.end8.i.i_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %cond.end
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b14.i.i = load i1, ptr @qdisc_calculate_pkt_len.__warned, align 1
  br i1 %.b14.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @qdisc_calculate_pkt_len.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 835, ptr noundef nonnull @.str.28) #16
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %cond.end.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %44, null
  br i1 %tobool10.not.i.i, label %do.end8.i.i.qdisc_enqueue.exit_crit_edge, label %if.then11.i.i

do.end8.i.i.qdisc_enqueue.exit_crit_edge:         ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qdisc_enqueue.exit

if.then11.i.i:                                    ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__qdisc_calculate_pkt_len(ptr noundef %skb, ptr noundef nonnull %44) #16
  br label %qdisc_enqueue.exit

qdisc_enqueue.exit:                               ; preds = %if.then11.i.i, %do.end8.i.i.qdisc_enqueue.exit_crit_edge
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %40, align 128
  %call.i = tail call i32 %46(ptr noundef %skb, ptr noundef %40, ptr noundef %to_free) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp57.not = icmp eq i32 %call.i, 0
  br i1 %cmp57.not, label %if.end91, label %do.body66, !prof !91

do.body66:                                        ; preds = %qdisc_enqueue.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qfq_enqueue.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qfq_enqueue, %if.then78)) #16
          to label %do.end81 [label %if.then78], !srcloc !89

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qfq_enqueue.__UNIQUE_ID_ddebug376, ptr noundef nonnull @.str.25, i32 noundef %call.i) #16
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %do.body66
  %and82 = and i32 %call.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.then86, label %do.end81.cleanup_crit_edge

do.end81.cleanup_crit_edge:                       ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then86:                                        ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #18
  %drops88 = getelementptr inbounds %struct.qfq_class, ptr %call2, i32 0, i32 3, i32 2
  %47 = ptrtoint ptr %drops88 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %drops88, align 8
  %inc89 = add i32 %48, 1
  store i32 %inc89, ptr %drops88, align 8
  %drops.i.i196 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %49 = ptrtoint ptr %drops.i.i196 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %drops.i.i196, align 4
  %inc.i.i197 = add i32 %50, 1
  store i32 %inc.i.i197, ptr %drops.i.i196, align 4
  br label %cleanup

if.end91:                                         ; preds = %qdisc_enqueue.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool51.not = icmp eq i32 %42, 0
  %bstats = getelementptr inbounds %struct.qfq_class, ptr %call2, i32 0, i32 2
  %conv92 = zext i32 %1 to i64
  tail call fastcc void @_bstats_update(ptr noundef %bstats, i64 noundef %conv92, i32 noundef %cond)
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %51 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %backlog, align 4
  %add = add i32 %52, %1
  store i32 %add, ptr %backlog, align 4
  %qlen95 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %53 = ptrtoint ptr %qlen95 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %qlen95, align 8
  %inc96 = add i32 %54, 1
  store i32 %inc96, ptr %qlen95, align 8
  %55 = ptrtoint ptr %agg11 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %agg11, align 4
  br i1 %tobool51.not, label %if.end120, label %if.then99

if.then99:                                        ; preds = %if.end91
  %57 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %qdisc, align 8
  %ops = getelementptr inbounds %struct.Qdisc, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops, align 16
  %peek = getelementptr inbounds %struct.Qdisc_ops, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %peek to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %peek, align 4
  %call102 = tail call ptr %62(ptr noundef %58) #16
  %cmp103 = icmp eq ptr %call102, %skb
  br i1 %cmp103, label %land.lhs.true, label %if.then99.cleanup_crit_edge, !prof !90

if.then99.cleanup_crit_edge:                      ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then99
  %active = getelementptr inbounds %struct.qfq_aggregate, ptr %56, i32 0, i32 11
  %63 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %active, align 8
  %add.ptr = getelementptr i8, ptr %64, i32 -92
  %cmp112 = icmp eq ptr %add.ptr, %call2
  br i1 %cmp112, label %land.lhs.true114, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true114:                                 ; preds = %land.lhs.true
  %deficit = getelementptr inbounds %struct.qfq_class, ptr %call2, i32 0, i32 8
  %65 = ptrtoint ptr %deficit to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %deficit, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %1)
  %cmp115 = icmp ult i32 %66, %1
  br i1 %cmp115, label %if.then117, label %land.lhs.true114.cleanup_crit_edge

land.lhs.true114.cleanup_crit_edge:               ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then117:                                       ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #18
  %alist = getelementptr inbounds %struct.qfq_class, ptr %call2, i32 0, i32 6
  tail call fastcc void @list_move_tail(ptr noundef %alist, ptr noundef %active)
  br label %cleanup

if.end120:                                        ; preds = %if.end91
  %lmax121 = getelementptr inbounds %struct.qfq_aggregate, ptr %56, i32 0, i32 5
  %67 = ptrtoint ptr %lmax121 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %lmax121, align 8
  %deficit122 = getelementptr inbounds %struct.qfq_class, ptr %call2, i32 0, i32 8
  %69 = ptrtoint ptr %deficit122 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %deficit122, align 8
  %alist123 = getelementptr inbounds %struct.qfq_class, ptr %call2, i32 0, i32 6
  %active124 = getelementptr inbounds %struct.qfq_aggregate, ptr %56, i32 0, i32 11
  %prev.i = getelementptr inbounds %struct.qfq_aggregate, ptr %56, i32 0, i32 11, i32 1
  %70 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i, align 4
  %call.i.i198 = tail call zeroext i1 @__list_add_valid(ptr noundef %alist123, ptr noundef %71, ptr noundef %active124) #16
  br i1 %call.i.i198, label %if.end.i.i, label %if.end120.list_add_tail.exit_crit_edge

if.end120.list_add_tail.exit_crit_edge:           ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #18
  %72 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %alist123, ptr %prev.i, align 4
  %73 = ptrtoint ptr %alist123 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %active124, ptr %alist123, align 4
  %prev3.i.i = getelementptr inbounds %struct.qfq_class, ptr %call2, i32 0, i32 6, i32 1
  %74 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev3.i.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %alist123, ptr %71, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end120.list_add_tail.exit_crit_edge
  %76 = ptrtoint ptr %active124 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %active124, align 8
  %add.ptr129 = getelementptr i8, ptr %77, i32 -92
  %cmp130.not = icmp eq ptr %add.ptr129, %call2
  br i1 %cmp130.not, label %lor.lhs.false, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %list_add_tail.exit
  %in_serv_agg = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %78 = ptrtoint ptr %in_serv_agg to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %in_serv_agg, align 8
  %cmp132 = icmp eq ptr %79, %56
  br i1 %cmp132, label %lor.lhs.false.cleanup_crit_edge, label %if.end135

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end135:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @qfq_activate_agg(ptr noundef %privdata.i, ptr noundef %56)
  br label %cleanup

cleanup:                                          ; preds = %if.end135, %lor.lhs.false.cleanup_crit_edge, %list_add_tail.exit.cleanup_crit_edge, %if.then117, %land.lhs.true114.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then99.cleanup_crit_edge, %if.then86, %do.end81.cleanup_crit_edge, %if.then43, %if.end
  %retval.0 = phi i32 [ %4, %if.end ], [ 1, %if.then43 ], [ 0, %if.end135 ], [ %call.i, %do.end81.cleanup_crit_edge ], [ %call.i, %if.then86 ], [ 0, %if.then117 ], [ 0, %land.lhs.true114.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then99.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %list_add_tail.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qfq_dequeue(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %in_serv_agg1 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %0 = ptrtoint ptr %in_serv_agg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_serv_agg1, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %active = getelementptr inbounds %struct.qfq_aggregate, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %active, align 4
  %cmp.i.not = icmp eq ptr %3, %active
  br i1 %cmp.i.not, label %if.end.if.then8_crit_edge, label %if.then3

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8

if.then3:                                         ; preds = %if.end
  %qdisc.i = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qdisc.i, align 8
  %ops.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 16
  %peek.i = getelementptr inbounds %struct.Qdisc_ops, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %peek.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %peek.i, align 4
  %call.i = tail call ptr %9(ptr noundef %5) #16
  %cmp.i88 = icmp eq ptr %call.i, null
  br i1 %cmp.i88, label %land.end.i, label %if.end5

land.end.i:                                       ; preds = %if.then3
  %.b44.i = load i1, ptr @qfq_peek_skb.__already_done, align 1
  br i1 %.b44.i, label %land.end.i.if.then8_crit_edge, label %if.then6.i, !prof !91

land.end.i.if.then8_crit_edge:                    ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8

if.then6.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @qfq_peek_skb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 997, i32 noundef 9, ptr noundef nonnull @.str.32) #16
  br label %if.then8

if.end5:                                          ; preds = %if.then3
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cb.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp6 = icmp eq i32 %11, 0
  br i1 %cmp6, label %if.end5.if.then8_crit_edge, label %lor.lhs.false

if.end5.if.then8_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.end5
  %budget = getelementptr inbounds %struct.qfq_aggregate, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %budget to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %budget, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp7 = icmp ult i32 %13, %11
  br i1 %cmp7, label %lor.lhs.false.if.then8_crit_edge, label %lor.lhs.false.if.end26_crit_edge

lor.lhs.false.if.end26_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.end5.if.then8_crit_edge, %if.then6.i, %land.end.i.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %budgetmax.i = getelementptr inbounds %struct.qfq_aggregate, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %budgetmax.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %budgetmax.i, align 8
  %initial_budget.i = getelementptr inbounds %struct.qfq_aggregate, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %initial_budget.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %initial_budget.i, align 4
  %budget.i = getelementptr inbounds %struct.qfq_aggregate, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %budget.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %budget.i, align 8
  %sub.i = sub i32 %17, %19
  %20 = tail call i32 @llvm.umin.i32(i32 %15, i32 %sub.i) #16
  %S.i = getelementptr inbounds %struct.qfq_aggregate, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %S.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %S.i, align 8
  %conv.i89 = zext i32 %20 to i64
  %inv_w.i = getelementptr inbounds %struct.qfq_aggregate, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %inv_w.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %inv_w.i, align 4
  %conv1.i = zext i32 %24 to i64
  %mul.i = mul nuw i64 %conv.i89, %conv1.i
  %add.i = add i64 %mul.i, %22
  %F.i = getelementptr inbounds %struct.qfq_aggregate, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %F.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add.i, ptr %F.i, align 8
  %26 = ptrtoint ptr %budget.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %15, ptr %budget.i, align 8
  %27 = ptrtoint ptr %initial_budget.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %15, ptr %initial_budget.i, align 4
  %28 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %active, align 4
  %cmp.i90.not = icmp eq ptr %29, %active
  br i1 %cmp.i90.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %S.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %add.i, ptr %S.i, align 8
  %conv.i96 = zext i32 %15 to i64
  %mul.i98 = mul nuw i64 %conv1.i, %conv.i96
  %add.i99 = add i64 %add.i, %mul.i98
  %31 = ptrtoint ptr %F.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %add.i99, ptr %F.i, align 8
  tail call fastcc void @qfq_schedule_agg(ptr noundef %privdata.i, ptr noundef nonnull %1)
  br label %if.end19

if.else:                                          ; preds = %if.then8
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %32 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp15 = icmp eq i32 %33, 0
  br i1 %cmp15, label %if.then16, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %in_serv_agg1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %in_serv_agg1, align 8
  br label %cleanup

if.end19:                                         ; preds = %if.else.if.end19_crit_edge, %if.then13
  %call20 = tail call fastcc ptr @qfq_choose_next_agg(ptr noundef %privdata.i)
  %35 = ptrtoint ptr %in_serv_agg1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call20, ptr %in_serv_agg1, align 8
  %active.i100 = getelementptr inbounds %struct.qfq_aggregate, ptr %call20, i32 0, i32 11
  %36 = ptrtoint ptr %active.i100 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %active.i100, align 8
  %qdisc.i102 = getelementptr i8, ptr %37, i32 -4
  %38 = ptrtoint ptr %qdisc.i102 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %qdisc.i102, align 8
  %ops.i103 = getelementptr inbounds %struct.Qdisc, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %ops.i103 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i103, align 16
  %peek.i104 = getelementptr inbounds %struct.Qdisc_ops, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %peek.i104 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %peek.i104, align 4
  %call.i105 = tail call ptr %43(ptr noundef %39) #16
  %cmp.i106 = icmp eq ptr %call.i105, null
  br i1 %cmp.i106, label %land.end.i108, label %if.else.i111

land.end.i108:                                    ; preds = %if.end19
  %.b44.i107 = load i1, ptr @qfq_peek_skb.__already_done, align 1
  br i1 %.b44.i107, label %land.end.i108.cleanup_crit_edge, label %if.then6.i109, !prof !91

land.end.i108.cleanup_crit_edge:                  ; preds = %land.end.i108
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then6.i109:                                    ; preds = %land.end.i108
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @qfq_peek_skb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 997, i32 noundef 9, ptr noundef nonnull @.str.32) #16
  br label %cleanup

if.else.i111:                                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  %cb.i.i.i110 = getelementptr inbounds %struct.sk_buff, ptr %call.i105, i32 0, i32 3
  %44 = ptrtoint ptr %cb.i.i.i110 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cb.i.i.i110, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else.i111, %lor.lhs.false.if.end26_crit_edge
  %.pn = phi ptr [ %3, %lor.lhs.false.if.end26_crit_edge ], [ %37, %if.else.i111 ]
  %len.3 = phi i32 [ %11, %lor.lhs.false.if.end26_crit_edge ], [ %45, %if.else.i111 ]
  %in_serv_agg.0 = phi ptr [ %1, %lor.lhs.false.if.end26_crit_edge ], [ %call20, %if.else.i111 ]
  %skb.1 = phi ptr [ %call.i, %lor.lhs.false.if.end26_crit_edge ], [ %call.i105, %if.else.i111 ]
  %cb.i.i.i113 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 3
  %46 = ptrtoint ptr %cb.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cb.i.i.i113, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %48 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %backlog.i, align 4
  %sub.i114 = sub i32 %49, %47
  store i32 %sub.i114, ptr %backlog.i, align 4
  %qlen28 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %50 = ptrtoint ptr %qlen28 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %qlen28, align 8
  %dec = add i32 %51, -1
  store i32 %dec, ptr %qlen28, align 8
  %52 = load i32, ptr %cb.i.i.i113, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 17
  %53 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool.i.not.i.i = icmp eq i16 %56, 0
  br i1 %tobool.i.not.i.i, label %if.end26.qdisc_bstats_update.exit_crit_edge, label %cond.true.i.i

if.end26.qdisc_bstats_update.exit_crit_edge:      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %qdisc_bstats_update.exit

cond.true.i.i:                                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %54, i32 0, i32 5
  %57 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %gso_segs.i.i, align 2
  %conv4.i.i = zext i16 %58 to i32
  br label %qdisc_bstats_update.exit

qdisc_bstats_update.exit:                         ; preds = %cond.true.i.i, %if.end26.qdisc_bstats_update.exit_crit_edge
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ 1, %if.end26.qdisc_bstats_update.exit_crit_edge ]
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i = zext i32 %52 to i64
  tail call fastcc void @_bstats_update(ptr noundef %bstats.i, i64 noundef %conv.i.i, i32 noundef %cond.i.i) #16
  %qdisc.i115 = getelementptr i8, ptr %.pn, i32 -4
  %59 = ptrtoint ptr %qdisc.i115 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %qdisc.i115, align 8
  %gso_skb.i.i = getelementptr inbounds %struct.Qdisc, ptr %60, i32 0, i32 16
  %61 = ptrtoint ptr %gso_skb.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %gso_skb.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %62, %gso_skb.i.i
  %tobool.not13.i.i = icmp eq ptr %62, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not13.i.i
  br i1 %tobool.not.i.i, label %if.else5.i.i, label %__skb_dequeue.exit.i.i

__skb_dequeue.exit.i.i:                           ; preds = %qdisc_bstats_update.exit
  %qlen.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %60, i32 0, i32 16, i32 1
  %63 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %qlen.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %64, -1
  store volatile i32 %sub.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %62, align 8
  %prev9.i.i.i.i = getelementptr inbounds %struct.anon.0, ptr %62, i32 0, i32 1
  %67 = ptrtoint ptr %prev9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %62, align 8
  %prev17.i.i.i.i = getelementptr inbounds %struct.anon.0, ptr %66, i32 0, i32 1
  %69 = ptrtoint ptr %prev17.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %68, ptr %prev17.i.i.i.i, align 4
  %70 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %66, ptr %68, align 8
  %flags.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %60, i32 0, i32 2
  %71 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags.i.i.i, align 8
  %and.i.i.i = and i32 %72, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i116 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i116, label %if.else.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %__skb_dequeue.exit.i.i
  %73 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !92
  %cb.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 3
  %74 = ptrtoint ptr %cb.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cb.i.i.i.i.i, align 4
  %cpu_qstats.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %60, i32 0, i32 12
  %76 = ptrtoint ptr %cpu_qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cpu_qstats.i.i.i, align 4
  %backlog.i.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %backlog.i.i.i to i32
  %79 = tail call i32 @llvm.read_register.i32(metadata !79) #16
  %and.i.i.i.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %82
  %83 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %84, %78
  %85 = inttoptr i32 %add.i.i.i to ptr
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %add14.i.i.i = sub i32 %87, %75
  store i32 %add14.i.i.i, ptr %85, align 4
  %88 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !93
  %and.i.i.i.i.i = and i32 %88, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i1.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i1.i.i, label %if.then.i2.i.i, label %if.then4.i.i.qdisc_qstats_cpu_backlog_dec.exit.i.i_crit_edge, !prof !90

if.then4.i.i.qdisc_qstats_cpu_backlog_dec.exit.i.i_crit_edge: ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qdisc_qstats_cpu_backlog_dec.exit.i.i

if.then.i2.i.i:                                   ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %qdisc_qstats_cpu_backlog_dec.exit.i.i

qdisc_qstats_cpu_backlog_dec.exit.i.i:            ; preds = %if.then.i2.i.i, %if.then4.i.i.qdisc_qstats_cpu_backlog_dec.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %73) #16, !srcloc !94
  %89 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !92
  %90 = ptrtoint ptr %cpu_qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cpu_qstats.i.i.i, align 4
  %92 = ptrtoint ptr %91 to i32
  %93 = tail call i32 @llvm.read_register.i32(metadata !79) #16
  %and.i.i4.i.i = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i4.i.i to ptr
  %cpu.i5.i.i = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %cpu.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cpu.i5.i.i, align 4
  %arrayidx.i6.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %96
  %97 = ptrtoint ptr %arrayidx.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.i6.i.i, align 4
  %add.i7.i.i = add i32 %98, %92
  %99 = inttoptr i32 %add.i7.i.i to ptr
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  %add13.i.i.i = add i32 %101, -1
  store i32 %add13.i.i.i, ptr %99, align 4
  %102 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !93
  %and.i.i.i8.i.i = and i32 %102, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %and.i.i.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %if.then.i10.i.i, label %qdisc_qstats_cpu_backlog_dec.exit.i.i.qdisc_qstats_cpu_qlen_dec.exit.i.i_crit_edge, !prof !90

qdisc_qstats_cpu_backlog_dec.exit.i.i.qdisc_qstats_cpu_qlen_dec.exit.i.i_crit_edge: ; preds = %qdisc_qstats_cpu_backlog_dec.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qdisc_qstats_cpu_qlen_dec.exit.i.i

if.then.i10.i.i:                                  ; preds = %qdisc_qstats_cpu_backlog_dec.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %qdisc_qstats_cpu_qlen_dec.exit.i.i

qdisc_qstats_cpu_qlen_dec.exit.i.i:               ; preds = %if.then.i10.i.i, %qdisc_qstats_cpu_backlog_dec.exit.i.i.qdisc_qstats_cpu_qlen_dec.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %89) #16, !srcloc !94
  br label %qdisc_dequeue_peeked.exit.i

if.else.i.i:                                      ; preds = %__skb_dequeue.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %cb.i.i.i11.i.i = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 3
  %103 = ptrtoint ptr %cb.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cb.i.i.i11.i.i, align 4
  %backlog.i12.i.i = getelementptr inbounds %struct.Qdisc, ptr %60, i32 0, i32 19, i32 1
  %105 = ptrtoint ptr %backlog.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %backlog.i12.i.i, align 4
  %sub.i.i.i = sub i32 %106, %104
  store i32 %sub.i.i.i, ptr %backlog.i12.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.Qdisc, ptr %60, i32 0, i32 17, i32 2
  %107 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %qlen.i.i, align 8
  %dec.i.i = add i32 %108, -1
  store i32 %dec.i.i, ptr %qlen.i.i, align 8
  br label %qdisc_dequeue_peeked.exit.i

if.else5.i.i:                                     ; preds = %qdisc_bstats_update.exit
  call void @__sanitizer_cov_trace_pc() #18
  %dequeue.i.i = getelementptr inbounds %struct.Qdisc, ptr %60, i32 0, i32 1
  %109 = ptrtoint ptr %dequeue.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dequeue.i.i, align 4
  %call6.i.i = tail call ptr %110(ptr noundef %60) #16
  br label %qdisc_dequeue_peeked.exit.i

qdisc_dequeue_peeked.exit.i:                      ; preds = %if.else5.i.i, %if.else.i.i, %qdisc_qstats_cpu_qlen_dec.exit.i.i
  %deficit.i = getelementptr i8, ptr %.pn, i32 12
  %111 = ptrtoint ptr %deficit.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %deficit.i, align 8
  %sub.i117 = sub i32 %112, %len.3
  store i32 %sub.i117, ptr %deficit.i, align 8
  %113 = ptrtoint ptr %qdisc.i115 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %qdisc.i115, align 8
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %114, i32 0, i32 17, i32 2
  %115 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %qlen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp.i118 = icmp eq i32 %116, 0
  br i1 %cmp.i118, label %if.then.i, label %if.else.i122

if.then.i:                                        ; preds = %qdisc_dequeue_peeked.exit.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr i8, ptr %.pn, i32 4
  %117 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %prev.i.i.i, align 4
  %119 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %118, ptr %prev1.i.i.i.i, align 4
  %122 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %120, ptr %118, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %123 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn, align 4
  %prev.i.i = getelementptr i8, ptr %.pn, i32 4
  %124 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %agg_dequeue.exit

if.else.i122:                                     ; preds = %qdisc_dequeue_peeked.exit.i
  %ops.i119 = getelementptr inbounds %struct.Qdisc, ptr %114, i32 0, i32 4
  %125 = ptrtoint ptr %ops.i119 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ops.i119, align 16
  %peek.i120 = getelementptr inbounds %struct.Qdisc_ops, ptr %126, i32 0, i32 7
  %127 = ptrtoint ptr %peek.i120 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %peek.i120, align 4
  %call5.i = tail call ptr %128(ptr noundef %114) #16
  %cb.i.i.i121 = getelementptr inbounds %struct.sk_buff, ptr %call5.i, i32 0, i32 3
  %129 = ptrtoint ptr %cb.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %cb.i.i.i121, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i117, i32 %130)
  %cmp7.i = icmp ult i32 %sub.i117, %130
  br i1 %cmp7.i, label %if.then8.i, label %if.else.i122.agg_dequeue.exit_crit_edge

if.else.i122.agg_dequeue.exit_crit_edge:          ; preds = %if.else.i122
  call void @__sanitizer_cov_trace_pc() #18
  br label %agg_dequeue.exit

if.then8.i:                                       ; preds = %if.else.i122
  %lmax.i = getelementptr inbounds %struct.qfq_aggregate, ptr %in_serv_agg.0, i32 0, i32 5
  %131 = ptrtoint ptr %lmax.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %lmax.i, align 8
  %133 = ptrtoint ptr %deficit.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %deficit.i, align 8
  %add.i123 = add i32 %134, %132
  store i32 %add.i123, ptr %deficit.i, align 8
  %active.i124 = getelementptr inbounds %struct.qfq_aggregate, ptr %in_serv_agg.0, i32 0, i32 11
  %call.i.i21.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #16
  br i1 %call.i.i21.i, label %if.end.i.i24.i, label %if.then8.i.__list_del_entry.exit.i.i_crit_edge

if.then8.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__list_del_entry.exit.i.i

if.end.i.i24.i:                                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i22.i = getelementptr i8, ptr %.pn, i32 4
  %135 = ptrtoint ptr %prev.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %prev.i.i22.i, align 4
  %137 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i23.i = getelementptr inbounds %struct.list_head, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %prev1.i.i.i23.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %136, ptr %prev1.i.i.i23.i, align 4
  %140 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %138, ptr %136, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i24.i, %if.then8.i.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.qfq_aggregate, ptr %in_serv_agg.0, i32 0, i32 11, i32 1
  %141 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn, ptr noundef %142, ptr noundef %active.i124) #16
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.agg_dequeue.exit_crit_edge

__list_del_entry.exit.i.i.agg_dequeue.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %agg_dequeue.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %143 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %.pn, ptr %prev.i2.i.i, align 4
  %144 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %active.i124, ptr %.pn, align 4
  %prev3.i.i.i.i = getelementptr i8, ptr %.pn, i32 4
  %145 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %142, ptr %prev3.i.i.i.i, align 4
  %146 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %.pn, ptr %142, align 4
  br label %agg_dequeue.exit

agg_dequeue.exit:                                 ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.agg_dequeue.exit_crit_edge, %if.else.i122.agg_dequeue.exit_crit_edge, %list_del.exit.i
  %budget29 = getelementptr inbounds %struct.qfq_aggregate, ptr %in_serv_agg.0, i32 0, i32 9
  %147 = ptrtoint ptr %budget29 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %budget29, align 8
  %149 = tail call i32 @llvm.usub.sat.i32(i32 %148, i32 %len.3)
  %150 = ptrtoint ptr %budget29 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %budget29, align 8
  %conv = zext i32 %len.3 to i64
  %iwsum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %151 = ptrtoint ptr %iwsum to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %iwsum, align 8
  %conv38 = zext i32 %152 to i64
  %mul = mul nuw i64 %conv38, %conv
  %V = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %153 = ptrtoint ptr %V to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %V, align 8
  %add = add i64 %mul, %154
  store i64 %add, ptr %V, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qfq_dequeue.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qfq_dequeue, %if.then47)) #16
          to label %cleanup [label %if.then47], !srcloc !89

if.then47:                                        ; preds = %agg_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #18
  %F = getelementptr inbounds %struct.qfq_aggregate, ptr %in_serv_agg.0, i32 0, i32 2
  %155 = ptrtoint ptr %F to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %F, align 8
  %157 = ptrtoint ptr %V to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %V, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qfq_dequeue.__UNIQUE_ID_ddebug373, ptr noundef nonnull @.str.31, i32 noundef %len.3, i64 noundef %156, i64 noundef %158) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %agg_dequeue.exit, %if.then6.i109, %land.end.i108.cleanup_crit_edge, %if.then16, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then16 ], [ null, %entry.cleanup_crit_edge ], [ %skb.1, %if.then47 ], [ %skb.1, %agg_dequeue.exit ], [ null, %land.end.i108.cleanup_crit_edge ], [ null, %if.then6.i109 ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qdisc_peek_dequeued(ptr noundef %sch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %gso_skb = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 16
  %0 = ptrtoint ptr %gso_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gso_skb, align 4
  %cmp.i = icmp eq ptr %1, %gso_skb
  %tobool.not15 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.i, %tobool.not15
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then:                                          ; preds = %entry
  %dequeue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 1
  %2 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dequeue, align 4
  %call1 = tail call ptr %3(ptr noundef %sch) #16
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
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
define internal i32 @qfq_init_qdisc(ptr noundef %sch, ptr nocapture noundef readnone %opt, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %call1 = tail call i32 @tcf_block_get(ptr noundef %block, ptr noundef %privdata.i, ptr noundef %sch, ptr noundef %extack) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %clhash = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %call2 = tail call i32 @qdisc_class_hash_init(ptr noundef %clhash) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 107
  %4 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_queue_len, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp6 = icmp ult i32 %5, 7
  %add = add i32 %5, 1
  %6 = tail call i32 @llvm.ctlz.i32(i32 %add, i1 false), !range !95
  %.op = sub nsw i32 31, %6
  %sub.i = select i1 %cmp6, i32 %.op, i32 3
  %shl = shl nuw i32 1, %sub.i
  %max_agg_classes = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 8, i32 29, i32 8
  %7 = ptrtoint ptr %max_agg_classes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl, ptr %max_agg_classes, align 4
  %sub = add nsw i32 %sub.i, 22
  %min_slot_shift = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 8, i32 29, i32 4
  %8 = ptrtoint ptr %min_slot_shift to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %min_slot_shift, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end4
  %i.056 = phi i32 [ 0, %if.end4 ], [ %inc22, %for.body.for.body_crit_edge ]
  %9 = mul nuw nsw i32 %i.056, 160
  %10 = add nuw nsw i32 %9, 616
  %uglygep = getelementptr i8, ptr %sch, i32 %10
  %index = getelementptr %struct.qfq_sched, ptr %privdata.i, i32 0, i32 9, i32 %i.056, i32 3
  %11 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %i.056, ptr %index, align 4
  %add15 = add i32 %sub, %i.056
  %slot_shift = getelementptr %struct.qfq_sched, ptr %privdata.i, i32 0, i32 9, i32 %i.056, i32 2
  %12 = ptrtoint ptr %slot_shift to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add15, ptr %slot_shift, align 8
  %13 = call ptr @memset(ptr %uglygep, i32 0, i32 128)
  %inc22 = add nuw nsw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc22, 25
  br i1 %exitcond.not, label %for.end23, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %nonfull_aggs = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 8, i32 29, i32 12
  %14 = ptrtoint ptr %nonfull_aggs to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %nonfull_aggs, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end23, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end23 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qfq_reset_qdisc(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %hashsize = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %0 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hashsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp43.not = icmp eq i32 %1, 0
  br i1 %cmp43.not, label %entry.for.end20_crit_edge, label %for.body.lr.ph

entry.for.end20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end20

for.body.lr.ph:                                   ; preds = %entry
  %clhash = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc19.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc19.for.body_crit_edge ]
  %2 = ptrtoint ptr %clhash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clhash, align 8
  %arrayidx = getelementptr %struct.hlist_head, ptr %3, i32 %i.044
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -4
  %tobool4.not3945 = icmp eq ptr %add.ptr, null
  %tobool4.not39 = or i1 %tobool.not, %tobool4.not3945
  br i1 %tobool4.not39, label %for.body.for.inc19_crit_edge, label %for.body.for.body5_crit_edge

for.body.for.body5_crit_edge:                     ; preds = %for.body
  br label %for.body5

for.body.for.inc19_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc19

for.body5:                                        ; preds = %if.end.for.body5_crit_edge, %for.body.for.body5_crit_edge
  %cl.040 = phi ptr [ %add.ptr15, %if.end.for.body5_crit_edge ], [ %add.ptr, %for.body.for.body5_crit_edge ]
  %qdisc = getelementptr inbounds %struct.qfq_class, ptr %cl.040, i32 0, i32 5
  %6 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qdisc, align 8
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %7, i32 0, i32 17, i32 2
  %8 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp7.not = icmp eq i32 %9, 0
  br i1 %cmp7.not, label %for.body5.if.end_crit_edge, label %if.then

for.body5.if.end_crit_edge:                       ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %for.body5
  %agg1.i = getelementptr inbounds %struct.qfq_class, ptr %cl.040, i32 0, i32 7
  %10 = ptrtoint ptr %agg1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %agg1.i, align 4
  %alist.i = getelementptr inbounds %struct.qfq_class, ptr %cl.040, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %alist.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_del.exit.i_crit_edge

if.then.list_del.exit.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.qfq_class, ptr %cl.040, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %alist.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %alist.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.list_del.exit.i_crit_edge
  %18 = ptrtoint ptr %alist.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %alist.i, align 4
  %prev.i.i = getelementptr inbounds %struct.qfq_class, ptr %cl.040, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %active.i = getelementptr inbounds %struct.qfq_aggregate, ptr %11, i32 0, i32 11
  %20 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %active.i, align 4
  %cmp.i.not.i = icmp eq ptr %21, %active.i
  br i1 %cmp.i.not.i, label %if.then.i, label %list_del.exit.i.if.end_crit_edge

list_del.exit.i.if.end_crit_edge:                 ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @qfq_deactivate_agg(ptr noundef %privdata.i, ptr noundef %11) #16
  br label %if.end

if.end:                                           ; preds = %if.then.i, %list_del.exit.i.if.end_crit_edge, %for.body5.if.end_crit_edge
  %22 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %qdisc, align 8
  tail call void @qdisc_reset(ptr noundef %23) #16
  %hnode = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.040, i32 0, i32 1
  %24 = ptrtoint ptr %hnode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hnode, align 4
  %tobool11.not = icmp eq ptr %25, null
  %add.ptr15 = getelementptr i8, ptr %25, i32 -4
  %tobool4.not46 = icmp eq ptr %add.ptr15, null
  %tobool4.not = or i1 %tobool11.not, %tobool4.not46
  br i1 %tobool4.not, label %if.end.for.inc19_crit_edge, label %if.end.for.body5_crit_edge

if.end.for.body5_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body5

if.end.for.inc19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc19

for.inc19:                                        ; preds = %if.end.for.inc19_crit_edge, %for.body.for.inc19_crit_edge
  %inc = add nuw i32 %i.044, 1
  %26 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hashsize, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %for.inc19.for.body_crit_edge, label %for.inc19.for.end20_crit_edge

for.inc19.for.end20_crit_edge:                    ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end20

for.inc19.for.body_crit_edge:                     ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end20:                                        ; preds = %for.inc19.for.end20_crit_edge, %entry.for.end20_crit_edge
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %28 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %backlog, align 4
  %qlen22 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %29 = ptrtoint ptr %qlen22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %qlen22, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qfq_destroy_qdisc(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block, align 4
  tail call void @tcf_block_put(ptr noundef %1) #16
  %clhash = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %hashsize = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %2 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hashsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp37.not = icmp eq i32 %3, 0
  br i1 %cmp37.not, label %entry.for.end20_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end20

for.body:                                         ; preds = %for.inc19.for.body_crit_edge, %entry.for.body_crit_edge
  %i.038 = phi i32 [ %inc, %for.inc19.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %clhash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clhash, align 8
  %arrayidx = getelementptr %struct.hlist_head, ptr %5, i32 %i.038
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  %add.ptr = getelementptr i8, ptr %7, i32 -4
  %tobool4.not3539 = icmp eq ptr %add.ptr, null
  %tobool4.not35 = or i1 %tobool.not, %tobool4.not3539
  br i1 %tobool4.not35, label %for.body.for.inc19_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.inc19_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc19

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %cl.036 = phi ptr [ %add.ptr15, %land.rhs.land.rhs_crit_edge ], [ %add.ptr, %for.body.land.rhs_crit_edge ]
  %hnode = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.036, i32 0, i32 1
  %8 = ptrtoint ptr %hnode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hnode, align 4
  tail call fastcc void @qfq_destroy_class(ptr noundef %sch, ptr noundef nonnull %cl.036)
  %tobool11.not = icmp eq ptr %9, null
  %add.ptr15 = getelementptr i8, ptr %9, i32 -4
  %tobool4.not40 = icmp eq ptr %add.ptr15, null
  %tobool4.not = or i1 %tobool11.not, %tobool4.not40
  br i1 %tobool4.not, label %land.rhs.for.inc19_crit_edge, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs

land.rhs.for.inc19_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc19

for.inc19:                                        ; preds = %land.rhs.for.inc19_crit_edge, %for.body.for.inc19_crit_edge
  %inc = add nuw i32 %i.038, 1
  %10 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hashsize, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.inc19.for.body_crit_edge, label %for.inc19.for.end20_crit_edge

for.inc19.for.end20_crit_edge:                    ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end20

for.inc19.for.body_crit_edge:                     ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end20:                                        ; preds = %for.inc19.for.end20_crit_edge, %entry.for.end20_crit_edge
  tail call void @qdisc_class_hash_destroy(ptr noundef %clhash) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qfq_graft_class(ptr noundef %sch, i32 noundef %arg, ptr noundef %new, ptr nocapture noundef writeonly %old, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %qstats.i.i.i = alloca %struct.gnet_stats_queue, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %cmp = icmp eq ptr %new, null
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %1 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_queue, align 8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 16
  %call = tail call ptr @qdisc_create_dflt(ptr noundef %2, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %4, ptr noundef null) #16
  %cmp1 = icmp eq ptr %call, null
  %spec.store.select = select i1 %cmp1, ptr @noop_qdisc, ptr %call
  br label %if.end3

if.end3:                                          ; preds = %if.then, %entry.if.end3_crit_edge
  %new.addr.0 = phi ptr [ %spec.store.select, %if.then ], [ %new, %entry.if.end3_crit_edge ]
  %qdisc = getelementptr inbounds %struct.qfq_class, ptr %0, i32 0, i32 5
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end3.sch_tree_lock.exit.i_crit_edge

if.end3.sch_tree_lock.exit.i_crit_edge:           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_lock.exit.i

if.else.i.i:                                      ; preds = %if.end3
  %dev_queue.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %7 = ptrtoint ptr %dev_queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_queue.i.i.i.i, align 8
  %qdisc_sleeping.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %qdisc_sleeping.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qdisc_sleeping.i.i.i.i, align 4
  %call1.i.i.i = tail call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %if.else.i.i.sch_tree_lock.exit.i_crit_edge

if.else.i.i.sch_tree_lock.exit.i_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_lock.exit.i

land.rhs.i.i.i:                                   ; preds = %if.else.i.i
  %.b41.i.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i.i, label %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, label %if.then.i.i.i, !prof !91

land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_lock.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #16
  br label %sch_tree_lock.exit.i

sch_tree_lock.exit.i:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, %if.else.i.i.sch_tree_lock.exit.i_crit_edge, %if.end3.sch_tree_lock.exit.i_crit_edge
  %.sink.i.i = phi ptr [ %sch, %if.end3.sch_tree_lock.exit.i_crit_edge ], [ %10, %if.else.i.i.sch_tree_lock.exit.i_crit_edge ], [ %10, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge ], [ %10, %if.then.i.i.i ]
  %lock.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i.i) #16
  %11 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qdisc, align 4
  store ptr %new.addr.0, ptr %qdisc, align 4
  %cmp.not.i = icmp eq ptr %12, null
  br i1 %cmp.not.i, label %sch_tree_lock.exit.i.if.end.i_crit_edge, label %if.then.i

sch_tree_lock.exit.i.if.end.i_crit_edge:          ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i.i) #16
  %13 = call ptr @memset(ptr %qstats.i.i.i, i32 0, i32 20)
  %cpu_qstats.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %12, i32 0, i32 12
  %14 = ptrtoint ptr %cpu_qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cpu_qstats.i.i.i, align 4
  %qstats1.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %12, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i.i, ptr noundef %15, ptr noundef %qstats1.i.i.i) #16
  %16 = ptrtoint ptr %qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qstats.i.i.i, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %12, i32 0, i32 17, i32 2
  %18 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qlen.i.i.i.i, align 8
  %add.i.i.i = add i32 %19, %17
  %backlog3.i.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %backlog3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %backlog3.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i.i) #16
  call void @qdisc_reset(ptr noundef nonnull %12) #16
  call void @qdisc_tree_reduce_backlog(ptr noundef nonnull %12, i32 noundef %add.i.i.i, i32 noundef %21) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sch_tree_lock.exit.i.if.end.i_crit_edge
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i.i, align 8
  %and.i6.i = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.i)
  %tobool.not.i7.i = icmp eq i32 %and.i6.i, 0
  br i1 %tobool.not.i7.i, label %if.else.i12.i, label %if.end.i.qdisc_replace.exit_crit_edge

if.end.i.qdisc_replace.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qdisc_replace.exit

if.else.i12.i:                                    ; preds = %if.end.i
  %dev_queue.i.i.i8.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %24 = ptrtoint ptr %dev_queue.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_queue.i.i.i8.i, align 8
  %qdisc_sleeping.i.i.i9.i = getelementptr inbounds %struct.netdev_queue, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %qdisc_sleeping.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qdisc_sleeping.i.i.i9.i, align 4
  %call1.i.i10.i = call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i10.i)
  %tobool.not.i.i11.i = icmp eq i32 %call1.i.i10.i, 0
  br i1 %tobool.not.i.i11.i, label %land.rhs.i.i14.i, label %if.else.i12.i.qdisc_replace.exit_crit_edge

if.else.i12.i.qdisc_replace.exit_crit_edge:       ; preds = %if.else.i12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qdisc_replace.exit

land.rhs.i.i14.i:                                 ; preds = %if.else.i12.i
  %.b41.i.i13.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i13.i, label %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, label %if.then.i.i15.i, !prof !91

land.rhs.i.i14.i.qdisc_replace.exit_crit_edge:    ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qdisc_replace.exit

if.then.i.i15.i:                                  ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #16
  br label %qdisc_replace.exit

qdisc_replace.exit:                               ; preds = %if.then.i.i15.i, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, %if.else.i12.i.qdisc_replace.exit_crit_edge, %if.end.i.qdisc_replace.exit_crit_edge
  %.sink.i16.i = phi ptr [ %sch, %if.end.i.qdisc_replace.exit_crit_edge ], [ %27, %if.else.i12.i.qdisc_replace.exit_crit_edge ], [ %27, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge ], [ %27, %if.then.i.i15.i ]
  %lock.i.i.i17.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i16.i, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i17.i) #16
  %28 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %12, ptr %old, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @qfq_class_leaf(ptr nocapture noundef readnone %sch, i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %qdisc = getelementptr inbounds %struct.qfq_class, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %qdisc, align 8
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qfq_qlen_notify(ptr noundef %sch, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = inttoptr i32 %arg to ptr
  %agg1.i = getelementptr inbounds %struct.qfq_class, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %agg1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %agg1.i, align 4
  %alist.i = getelementptr inbounds %struct.qfq_class, ptr %0, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %alist.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.list_del.exit.i_crit_edge

entry.list_del.exit.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.qfq_class, ptr %0, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %alist.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alist.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %entry.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %alist.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %alist.i, align 4
  %prev.i.i = getelementptr inbounds %struct.qfq_class, ptr %0, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %active.i = getelementptr inbounds %struct.qfq_aggregate, ptr %2, i32 0, i32 11
  %11 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %active.i, align 4
  %cmp.i.not.i = icmp eq ptr %12, %active.i
  br i1 %cmp.i.not.i, label %if.then.i, label %list_del.exit.i.qfq_deactivate_class.exit_crit_edge

list_del.exit.i.qfq_deactivate_class.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qfq_deactivate_class.exit

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @qfq_deactivate_agg(ptr noundef %privdata.i, ptr noundef %2) #16
  br label %qfq_deactivate_class.exit

qfq_deactivate_class.exit:                        ; preds = %if.then.i, %list_del.exit.i.qfq_deactivate_class.exit_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @qfq_search_class(ptr nocapture noundef readonly %sch, i32 noundef %classid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %classid)
  %tobool.not.i.i = icmp eq i32 %classid, 0
  br i1 %tobool.not.i.i, label %entry.qfq_find_class.exit_crit_edge, label %if.end.i.i

entry.qfq_find_class.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %qfq_find_class.exit

if.end.i.i:                                       ; preds = %entry
  %clhash.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %hashmask.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %0 = ptrtoint ptr %hashmask.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hashmask.i.i, align 4
  %shr.i.i.i = lshr i32 %classid, 8
  %xor.i.i.i = xor i32 %shr.i.i.i, %classid
  %shr1.i.i.i = lshr i32 %xor.i.i.i, 4
  %xor2.i.i.i = xor i32 %shr1.i.i.i, %xor.i.i.i
  %and.i.i.i = and i32 %1, %xor2.i.i.i
  %2 = ptrtoint ptr %clhash.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clhash.i, align 4
  %arrayidx.i.i = getelementptr %struct.hlist_head, ptr %3, i32 %and.i.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %5, null
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -4
  %tobool4.not3033.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool4.not30.i.i = or i1 %tobool2.not.i.i, %tobool4.not3033.i.i
  br i1 %tobool4.not30.i.i, label %if.end.i.i.qfq_find_class.exit_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.qfq_find_class.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qfq_find_class.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %cl.031.i.i = phi ptr [ %add.ptr13.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %cl.031.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cl.031.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %classid)
  %cmp.i.i = icmp eq i32 %7, %classid
  br i1 %cmp.i.i, label %for.body.i.i.qfq_find_class.exit_crit_edge, label %for.inc.i.i

for.body.i.i.qfq_find_class.exit_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qfq_find_class.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %hnode.i.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %hnode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hnode.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %9, null
  %add.ptr13.i.i = getelementptr i8, ptr %9, i32 -4
  %tobool4.not34.i.i = icmp eq ptr %add.ptr13.i.i, null
  %tobool4.not.i.i = or i1 %tobool9.not.i.i, %tobool4.not34.i.i
  br i1 %tobool4.not.i.i, label %for.inc.i.i.qfq_find_class.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.inc.i.i.qfq_find_class.exit_crit_edge:        ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qfq_find_class.exit

qfq_find_class.exit:                              ; preds = %for.inc.i.i.qfq_find_class.exit_crit_edge, %for.body.i.i.qfq_find_class.exit_crit_edge, %if.end.i.i.qfq_find_class.exit_crit_edge, %entry.qfq_find_class.exit_crit_edge
  %retval.0.i.i = phi ptr [ null, %entry.qfq_find_class.exit_crit_edge ], [ null, %if.end.i.i.qfq_find_class.exit_crit_edge ], [ %cl.031.i.i, %for.body.i.i.qfq_find_class.exit_crit_edge ], [ null, %for.inc.i.i.qfq_find_class.exit_crit_edge ]
  %10 = ptrtoint ptr %retval.0.i.i to i32
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qfq_change_class(ptr noundef %sch, i32 noundef %classid, i32 noundef %parentid, ptr nocapture noundef readonly %tca, ptr nocapture noundef %arg, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %tb = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb) #16
  %3 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb, align 4, !annotation !96
  %4 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !96
  %6 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !96
  %arrayidx = getelementptr ptr, ptr %tca, i32 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 2
  %conv.i.i = zext i16 %11 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 2, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @qfq_policy, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp4 = icmp slt i32 %call2.i, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %4, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end6.if.end20_crit_edge, label %if.then8

if.end6.if.end20_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then8:                                         ; preds = %if.end6
  %add.ptr.i.i202 = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i202 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i202, align 4
  %16 = add i32 %15, -1025
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %16)
  %17 = icmp ult i32 %16, -1024
  br i1 %17, label %do.end16, label %if.then8.if.end20_crit_edge

if.then8.if.end20_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

do.end16:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %15) #19
  br label %cleanup

if.end20:                                         ; preds = %if.then8.if.end20_crit_edge, %if.end6.if.end20_crit_edge
  %weight.0 = phi i32 [ %15, %if.then8.if.end20_crit_edge ], [ 1, %if.end6.if.end20_crit_edge ]
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %6, align 4
  %tobool22.not = icmp eq ptr %19, null
  br i1 %tobool22.not, label %if.else36, label %if.then23

if.then23:                                        ; preds = %if.end20
  %add.ptr.i.i203 = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i203 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i203, align 4
  %22 = add i32 %21, -65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65025, i32 %22)
  %23 = icmp ult i32 %22, -65025
  br i1 %23, label %do.end32, label %if.then23.if.end39_crit_edge

if.then23.if.end39_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

do.end32:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %21) #19
  br label %cleanup

if.else36:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %24 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_queue.i, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 128
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 20
  %28 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mtu.i, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 19
  %30 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %hard_header_len.i, align 2
  %conv.i = zext i16 %31 to i32
  %add.i = add i32 %29, %conv.i
  br label %if.end39

if.end39:                                         ; preds = %if.else36, %if.then23.if.end39_crit_edge
  %lmax.0 = phi i32 [ %add.i, %if.else36 ], [ %21, %if.then23.if.end39_crit_edge ]
  %div = udiv i32 1073741824, %weight.0
  %div40 = udiv i32 1073741824, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp41.not = icmp eq i32 %1, 0
  br i1 %cmp41.not, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end39
  %agg = getelementptr inbounds %struct.qfq_class, ptr %2, i32 0, i32 7
  %32 = ptrtoint ptr %agg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %agg, align 4
  %lmax42 = getelementptr inbounds %struct.qfq_aggregate, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %lmax42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lmax42, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %lmax.0, i32 %35)
  %cmp43 = icmp eq i32 %lmax.0, %35
  br i1 %cmp43, label %land.lhs.true44, label %land.lhs.true.cond.end.thread_crit_edge

land.lhs.true.cond.end.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.thread

land.lhs.true44:                                  ; preds = %land.lhs.true
  %class_weight = getelementptr inbounds %struct.qfq_aggregate, ptr %33, i32 0, i32 4
  %36 = ptrtoint ptr %class_weight to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %class_weight, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div40, i32 %37)
  %cmp46 = icmp eq i32 %div40, %37
  br i1 %cmp46, label %land.lhs.true44.cleanup_crit_edge, label %land.lhs.true44.cond.end.thread_crit_edge

land.lhs.true44.cond.end.thread_crit_edge:        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.thread

land.lhs.true44.cleanup_crit_edge:                ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cond.end:                                         ; preds = %if.end39
  %wsum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 10
  %38 = ptrtoint ptr %wsum to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %wsum, align 4
  %add = add i32 %39, %div40
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp52 = icmp ugt i32 %add, 65536
  br i1 %cmp52, label %cond.end.do.end56_crit_edge, label %if.end72

cond.end.do.end56_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end56

cond.end.thread:                                  ; preds = %land.lhs.true44.cond.end.thread_crit_edge, %land.lhs.true.cond.end.thread_crit_edge
  %class_weight51 = getelementptr inbounds %struct.qfq_aggregate, ptr %33, i32 0, i32 4
  %40 = ptrtoint ptr %class_weight51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %class_weight51, align 4
  %sub258 = sub i32 %div40, %41
  %wsum259 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 10
  %42 = ptrtoint ptr %wsum259 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %wsum259, align 4
  %add260 = add i32 %43, %sub258
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add260)
  %cmp52261 = icmp ugt i32 %add260, 65536
  br i1 %cmp52261, label %cond.end.thread.do.end56_crit_edge, label %if.then62

cond.end.thread.do.end56_crit_edge:               ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end56

do.end56:                                         ; preds = %cond.end.thread.do.end56_crit_edge, %cond.end.do.end56_crit_edge
  %44 = phi i32 [ %43, %cond.end.thread.do.end56_crit_edge ], [ %39, %cond.end.do.end56_crit_edge ]
  %sub262 = phi i32 [ %sub258, %cond.end.thread.do.end56_crit_edge ], [ %div40, %cond.end.do.end56_crit_edge ]
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %sub262, i32 noundef %44) #19
  br label %cleanup

if.then62:                                        ; preds = %cond.end.thread
  %arrayidx63 = getelementptr ptr, ptr %tca, i32 5
  %45 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx63, align 4
  %tobool64.not = icmp eq ptr %46, null
  br i1 %tobool64.not, label %if.then62.set_change_agg_crit_edge, label %if.then65

if.then62.set_change_agg_crit_edge:               ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_change_agg

if.then65:                                        ; preds = %if.then62
  %bstats = getelementptr inbounds %struct.qfq_class, ptr %2, i32 0, i32 2
  %rate_est = getelementptr inbounds %struct.qfq_class, ptr %2, i32 0, i32 4
  %call67 = call i32 @gen_replace_estimator(ptr noundef %bstats, ptr noundef null, ptr noundef %rate_est, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull %46) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then65.set_change_agg_crit_edge, label %if.then65.cleanup_crit_edge

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then65.set_change_agg_crit_edge:               ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_change_agg

if.end72:                                         ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 112) #20
  %cmp74 = icmp eq ptr %call7.i.i, null
  br i1 %cmp74, label %if.end72.cleanup_crit_edge, label %if.end76

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end76:                                         ; preds = %if.end72
  %bstats77 = getelementptr inbounds %struct.qfq_class, ptr %call7.i.i, i32 0, i32 2
  call void @gnet_stats_basic_sync_init(ptr noundef %bstats77) #16
  %48 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %classid, ptr %call7.i.i, align 16
  %deficit = getelementptr inbounds %struct.qfq_class, ptr %call7.i.i, i32 0, i32 8
  %49 = ptrtoint ptr %deficit to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %lmax.0, ptr %deficit, align 8
  %dev_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %50 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_queue, align 8
  %call79 = call ptr @qdisc_create_dflt(ptr noundef %51, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %classid, ptr noundef null) #16
  %qdisc = getelementptr inbounds %struct.qfq_class, ptr %call7.i.i, i32 0, i32 5
  %cmp81 = icmp eq ptr %call79, null
  %spec.select = select i1 %cmp81, ptr @noop_qdisc, ptr %call79
  %52 = ptrtoint ptr %qdisc to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %spec.select, ptr %qdisc, align 8
  %arrayidx85 = getelementptr ptr, ptr %tca, i32 5
  %53 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx85, align 4
  %tobool86.not = icmp eq ptr %54, null
  br i1 %tobool86.not, label %if.end76.if.end95_crit_edge, label %if.then87

if.end76.if.end95_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end95

if.then87:                                        ; preds = %if.end76
  %rate_est89 = getelementptr inbounds %struct.qfq_class, ptr %call7.i.i, i32 0, i32 4
  %call91 = call i32 @gen_new_estimator(ptr noundef %bstats77, ptr noundef null, ptr noundef %rate_est89, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull %54) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end95thread-pre-split, label %if.then87.destroy_class_crit_edge

if.then87.destroy_class_crit_edge:                ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #18
  br label %destroy_class

if.end95thread-pre-split:                         ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #18
  %55 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr = load ptr, ptr %qdisc, align 8
  br label %if.end95

if.end95:                                         ; preds = %if.end95thread-pre-split, %if.end76.if.end95_crit_edge
  %56 = phi ptr [ %.pr, %if.end95thread-pre-split ], [ %spec.select, %if.end76.if.end95_crit_edge ]
  %cmp97.not = icmp eq ptr %56, @noop_qdisc
  br i1 %cmp97.not, label %if.end95.set_change_agg_crit_edge, label %if.then98

if.end95.set_change_agg_crit_edge:                ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_change_agg

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #18
  call void @qdisc_hash_add(ptr noundef %56, i1 noundef zeroext true) #16
  br label %set_change_agg

set_change_agg:                                   ; preds = %if.then98, %if.end95.set_change_agg_crit_edge, %if.then65.set_change_agg_crit_edge, %if.then62.set_change_agg_crit_edge
  %cl.0 = phi ptr [ %call7.i.i, %if.then98 ], [ %call7.i.i, %if.end95.set_change_agg_crit_edge ], [ %2, %if.then65.set_change_agg_crit_edge ], [ %2, %if.then62.set_change_agg_crit_edge ]
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %57 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %58, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %set_change_agg.sch_tree_lock.exit_crit_edge

set_change_agg.sch_tree_lock.exit_crit_edge:      ; preds = %set_change_agg
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_lock.exit

if.else.i:                                        ; preds = %set_change_agg
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %59 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i.sch_tree_lock.exit_crit_edge

if.else.i.sch_tree_lock.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !91

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #16
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i.sch_tree_lock.exit_crit_edge, %set_change_agg.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %set_change_agg.sch_tree_lock.exit_crit_edge ], [ %62, %if.else.i.sch_tree_lock.exit_crit_edge ], [ %62, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %62, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #16
  %nonfull_aggs.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 8, i32 29, i32 12
  %63 = ptrtoint ptr %nonfull_aggs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %nonfull_aggs.i, align 8
  %tobool.not.i204 = icmp eq ptr %64, null
  %add.ptr.i = getelementptr i8, ptr %64, i32 -64
  %tobool2.not2529.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not25.i = or i1 %tobool.not.i204, %tobool2.not2529.i
  br i1 %tobool2.not25.i, label %sch_tree_lock.exit.if.then103_crit_edge, label %sch_tree_lock.exit.for.body.i_crit_edge

sch_tree_lock.exit.for.body.i_crit_edge:          ; preds = %sch_tree_lock.exit
  br label %for.body.i

sch_tree_lock.exit.if.then103_crit_edge:          ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then103

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sch_tree_lock.exit.for.body.i_crit_edge
  %agg.026.i = phi ptr [ %add.ptr11.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %sch_tree_lock.exit.for.body.i_crit_edge ]
  %lmax3.i = getelementptr inbounds %struct.qfq_aggregate, ptr %agg.026.i, i32 0, i32 5
  %65 = ptrtoint ptr %lmax3.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %lmax3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %lmax.0)
  %cmp.i = icmp eq i32 %66, %lmax.0
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %class_weight.i = getelementptr inbounds %struct.qfq_aggregate, ptr %agg.026.i, i32 0, i32 4
  %67 = ptrtoint ptr %class_weight.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %class_weight.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %div40)
  %cmp4.i = icmp eq i32 %68, %div40
  br i1 %cmp4.i, label %land.lhs.true.i.if.end109_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i.if.end109_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end109

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %nonfull_next.i = getelementptr inbounds %struct.qfq_aggregate, ptr %agg.026.i, i32 0, i32 12
  %69 = ptrtoint ptr %nonfull_next.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %nonfull_next.i, align 8
  %tobool7.not.i = icmp eq ptr %70, null
  %add.ptr11.i = getelementptr i8, ptr %70, i32 -64
  %tobool2.not30.i = icmp eq ptr %add.ptr11.i, null
  %tobool2.not.i = or i1 %tobool7.not.i, %tobool2.not30.i
  br i1 %tobool2.not.i, label %for.inc.i.if.then103_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.if.then103_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then103

if.then103:                                       ; preds = %for.inc.i.if.then103_crit_edge, %sch_tree_lock.exit.if.then103_crit_edge
  %71 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags.i, align 8
  %and.i206 = and i32 %72, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i206)
  %tobool.not.i207 = icmp eq i32 %and.i206, 0
  br i1 %tobool.not.i207, label %if.else.i212, label %if.then103.sch_tree_unlock.exit_crit_edge

if.then103.sch_tree_unlock.exit_crit_edge:        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_unlock.exit

if.else.i212:                                     ; preds = %if.then103
  %dev_queue.i.i.i208 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %73 = ptrtoint ptr %dev_queue.i.i.i208 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_queue.i.i.i208, align 8
  %qdisc_sleeping.i.i.i209 = getelementptr inbounds %struct.netdev_queue, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %qdisc_sleeping.i.i.i209 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %qdisc_sleeping.i.i.i209, align 4
  %call1.i.i210 = call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i210)
  %tobool.not.i.i211 = icmp eq i32 %call1.i.i210, 0
  br i1 %tobool.not.i.i211, label %land.rhs.i.i214, label %if.else.i212.sch_tree_unlock.exit_crit_edge

if.else.i212.sch_tree_unlock.exit_crit_edge:      ; preds = %if.else.i212
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_unlock.exit

land.rhs.i.i214:                                  ; preds = %if.else.i212
  %.b41.i.i213 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i213, label %land.rhs.i.i214.sch_tree_unlock.exit_crit_edge, label %if.then.i.i215, !prof !91

land.rhs.i.i214.sch_tree_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i214
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_unlock.exit

if.then.i.i215:                                   ; preds = %land.rhs.i.i214
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #16
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i215, %land.rhs.i.i214.sch_tree_unlock.exit_crit_edge, %if.else.i212.sch_tree_unlock.exit_crit_edge, %if.then103.sch_tree_unlock.exit_crit_edge
  %.sink.i216 = phi ptr [ %sch, %if.then103.sch_tree_unlock.exit_crit_edge ], [ %76, %if.else.i212.sch_tree_unlock.exit_crit_edge ], [ %76, %land.rhs.i.i214.sch_tree_unlock.exit_crit_edge ], [ %76, %if.then.i.i215 ]
  %lock.i.i.i217 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i216, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i217) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %77 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i218 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %77, i32 noundef 3520, i32 noundef 72) #20
  %cmp105 = icmp eq ptr %call7.i.i218, null
  br i1 %cmp105, label %if.then106, label %if.end108

if.then106:                                       ; preds = %sch_tree_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  %rate_est107 = getelementptr inbounds %struct.qfq_class, ptr %cl.0, i32 0, i32 4
  call void @gen_kill_estimator(ptr noundef %rate_est107) #16
  br label %destroy_class

if.end108:                                        ; preds = %sch_tree_unlock.exit
  %78 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags.i, align 8
  %and.i220 = and i32 %79, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i220)
  %tobool.not.i221 = icmp eq i32 %and.i220, 0
  br i1 %tobool.not.i221, label %if.else.i226, label %if.end108.sch_tree_lock.exit232_crit_edge

if.end108.sch_tree_lock.exit232_crit_edge:        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_lock.exit232

if.else.i226:                                     ; preds = %if.end108
  %dev_queue.i.i.i222 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %80 = ptrtoint ptr %dev_queue.i.i.i222 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev_queue.i.i.i222, align 8
  %qdisc_sleeping.i.i.i223 = getelementptr inbounds %struct.netdev_queue, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %qdisc_sleeping.i.i.i223 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %qdisc_sleeping.i.i.i223, align 4
  %call1.i.i224 = call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i224)
  %tobool.not.i.i225 = icmp eq i32 %call1.i.i224, 0
  br i1 %tobool.not.i.i225, label %land.rhs.i.i228, label %if.else.i226.sch_tree_lock.exit232_crit_edge

if.else.i226.sch_tree_lock.exit232_crit_edge:     ; preds = %if.else.i226
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_lock.exit232

land.rhs.i.i228:                                  ; preds = %if.else.i226
  %.b41.i.i227 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i227, label %land.rhs.i.i228.sch_tree_lock.exit232_crit_edge, label %if.then.i.i229, !prof !91

land.rhs.i.i228.sch_tree_lock.exit232_crit_edge:  ; preds = %land.rhs.i.i228
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_lock.exit232

if.then.i.i229:                                   ; preds = %land.rhs.i.i228
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #16
  br label %sch_tree_lock.exit232

sch_tree_lock.exit232:                            ; preds = %if.then.i.i229, %land.rhs.i.i228.sch_tree_lock.exit232_crit_edge, %if.else.i226.sch_tree_lock.exit232_crit_edge, %if.end108.sch_tree_lock.exit232_crit_edge
  %.sink.i230 = phi ptr [ %sch, %if.end108.sch_tree_lock.exit232_crit_edge ], [ %83, %if.else.i226.sch_tree_lock.exit232_crit_edge ], [ %83, %land.rhs.i.i228.sch_tree_lock.exit232_crit_edge ], [ %83, %if.then.i.i229 ]
  %lock.i.i.i231 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i230, i32 0, i32 17, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i231) #16
  %active.i = getelementptr inbounds %struct.qfq_aggregate, ptr %call7.i.i218, i32 0, i32 11
  %84 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %active.i, ptr %active.i, align 8
  %prev.i.i = getelementptr inbounds %struct.qfq_aggregate, ptr %call7.i.i218, i32 0, i32 11, i32 1
  %85 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %active.i, ptr %prev.i.i, align 4
  %nonfull_next.i233 = getelementptr inbounds %struct.qfq_aggregate, ptr %call7.i.i218, i32 0, i32 12
  %86 = ptrtoint ptr %nonfull_aggs.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %nonfull_aggs.i, align 4
  %88 = ptrtoint ptr %nonfull_next.i233 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %87, ptr %nonfull_next.i233, align 8
  %tobool.not.i.i235 = icmp eq ptr %87, null
  br i1 %tobool.not.i.i235, label %sch_tree_lock.exit232.qfq_init_agg.exit_crit_edge, label %do.body12.i.i

sch_tree_lock.exit232.qfq_init_agg.exit_crit_edge: ; preds = %sch_tree_lock.exit232
  call void @__sanitizer_cov_trace_pc() #18
  br label %qfq_init_agg.exit

do.body12.i.i:                                    ; preds = %sch_tree_lock.exit232
  call void @__sanitizer_cov_trace_pc() #18
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %87, i32 0, i32 1
  %89 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %nonfull_next.i233, ptr %pprev.i.i, align 4
  br label %qfq_init_agg.exit

qfq_init_agg.exit:                                ; preds = %do.body12.i.i, %sch_tree_lock.exit232.qfq_init_agg.exit_crit_edge
  %90 = ptrtoint ptr %nonfull_aggs.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %nonfull_next.i233, ptr %nonfull_aggs.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.qfq_aggregate, ptr %call7.i.i218, i32 0, i32 12, i32 1
  %91 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %nonfull_aggs.i, ptr %pprev34.i.i, align 4
  %lmax1.i = getelementptr inbounds %struct.qfq_aggregate, ptr %call7.i.i218, i32 0, i32 5
  %92 = ptrtoint ptr %lmax1.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %lmax.0, ptr %lmax1.i, align 8
  %class_weight.i236 = getelementptr inbounds %struct.qfq_aggregate, ptr %call7.i.i218, i32 0, i32 4
  %93 = ptrtoint ptr %class_weight.i236 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %div40, ptr %class_weight.i236, align 4
  br label %if.end109

if.end109:                                        ; preds = %qfq_init_agg.exit, %land.lhs.true.i.if.end109_crit_edge
  %new_agg.0 = phi ptr [ %call7.i.i218, %qfq_init_agg.exit ], [ %agg.026.i, %land.lhs.true.i.if.end109_crit_edge ]
  br i1 %cmp41.not, label %if.else112, label %if.then111

if.then111:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @qfq_deact_rm_from_agg(ptr noundef %privdata.i, ptr noundef %cl.0)
  br label %if.end114

if.else112:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #18
  %clhash = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  call void @qdisc_class_hash_insert(ptr noundef %clhash, ptr noundef %cl.0) #16
  br label %if.end114

if.end114:                                        ; preds = %if.else112, %if.then111
  %agg1.i = getelementptr inbounds %struct.qfq_class, ptr %cl.0, i32 0, i32 7
  %94 = ptrtoint ptr %agg1.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %new_agg.0, ptr %agg1.i, align 4
  %num_classes.i = getelementptr inbounds %struct.qfq_aggregate, ptr %new_agg.0, i32 0, i32 10
  %95 = ptrtoint ptr %num_classes.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_classes.i, align 4
  %add.i237 = add i32 %96, 1
  call fastcc void @qfq_update_agg(ptr noundef %privdata.i, ptr noundef nonnull %new_agg.0, i32 noundef %add.i237) #16
  %qdisc.i = getelementptr inbounds %struct.qfq_class, ptr %cl.0, i32 0, i32 5
  %97 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %qdisc.i, align 8
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %98, i32 0, i32 17, i32 2
  %99 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %qlen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp.not.i = icmp eq i32 %100, 0
  br i1 %cmp.not.i, label %if.end114.qfq_add_to_agg.exit_crit_edge, label %if.then.i

if.end114.qfq_add_to_agg.exit_crit_edge:          ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #18
  br label %qfq_add_to_agg.exit

if.then.i:                                        ; preds = %if.end114
  %alist.i = getelementptr inbounds %struct.qfq_class, ptr %cl.0, i32 0, i32 6
  %active.i238 = getelementptr inbounds %struct.qfq_aggregate, ptr %new_agg.0, i32 0, i32 11
  %prev.i.i239 = getelementptr inbounds %struct.qfq_aggregate, ptr %new_agg.0, i32 0, i32 11, i32 1
  %101 = ptrtoint ptr %prev.i.i239 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %prev.i.i239, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %alist.i, ptr noundef %102, ptr noundef %active.i238) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_add_tail.exit.i_crit_edge

if.then.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %103 = ptrtoint ptr %prev.i.i239 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %alist.i, ptr %prev.i.i239, align 4
  %104 = ptrtoint ptr %alist.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %active.i238, ptr %alist.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.qfq_class, ptr %cl.0, i32 0, i32 6, i32 1
  %105 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %102, ptr %prev3.i.i.i, align 4
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %alist.i, ptr %102, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_add_tail.exit.i_crit_edge
  %107 = ptrtoint ptr %active.i238 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %active.i238, align 8
  %add.ptr.i240 = getelementptr i8, ptr %108, i32 -92
  %cmp4.i241 = icmp eq ptr %add.ptr.i240, %cl.0
  br i1 %cmp4.i241, label %land.lhs.true.i242, label %list_add_tail.exit.i.qfq_add_to_agg.exit_crit_edge

list_add_tail.exit.i.qfq_add_to_agg.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qfq_add_to_agg.exit

land.lhs.true.i242:                               ; preds = %list_add_tail.exit.i
  %in_serv_agg.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %109 = ptrtoint ptr %in_serv_agg.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %in_serv_agg.i, align 8
  %cmp5.not.i = icmp eq ptr %110, %new_agg.0
  br i1 %cmp5.not.i, label %land.lhs.true.i242.qfq_add_to_agg.exit_crit_edge, label %if.then6.i

land.lhs.true.i242.qfq_add_to_agg.exit_crit_edge: ; preds = %land.lhs.true.i242
  call void @__sanitizer_cov_trace_pc() #18
  br label %qfq_add_to_agg.exit

if.then6.i:                                       ; preds = %land.lhs.true.i242
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @qfq_activate_agg(ptr noundef %privdata.i, ptr noundef nonnull %new_agg.0) #16
  br label %qfq_add_to_agg.exit

qfq_add_to_agg.exit:                              ; preds = %if.then6.i, %land.lhs.true.i242.qfq_add_to_agg.exit_crit_edge, %list_add_tail.exit.i.qfq_add_to_agg.exit_crit_edge, %if.end114.qfq_add_to_agg.exit_crit_edge
  %111 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %flags.i, align 8
  %and.i244 = and i32 %112, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i244)
  %tobool.not.i245 = icmp eq i32 %and.i244, 0
  br i1 %tobool.not.i245, label %if.else.i250, label %qfq_add_to_agg.exit.sch_tree_unlock.exit256_crit_edge

qfq_add_to_agg.exit.sch_tree_unlock.exit256_crit_edge: ; preds = %qfq_add_to_agg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_unlock.exit256

if.else.i250:                                     ; preds = %qfq_add_to_agg.exit
  %dev_queue.i.i.i246 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %113 = ptrtoint ptr %dev_queue.i.i.i246 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev_queue.i.i.i246, align 8
  %qdisc_sleeping.i.i.i247 = getelementptr inbounds %struct.netdev_queue, ptr %114, i32 0, i32 3
  %115 = ptrtoint ptr %qdisc_sleeping.i.i.i247 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %qdisc_sleeping.i.i.i247, align 4
  %call1.i.i248 = call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i248)
  %tobool.not.i.i249 = icmp eq i32 %call1.i.i248, 0
  br i1 %tobool.not.i.i249, label %land.rhs.i.i252, label %if.else.i250.sch_tree_unlock.exit256_crit_edge

if.else.i250.sch_tree_unlock.exit256_crit_edge:   ; preds = %if.else.i250
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_unlock.exit256

land.rhs.i.i252:                                  ; preds = %if.else.i250
  %.b41.i.i251 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i251, label %land.rhs.i.i252.sch_tree_unlock.exit256_crit_edge, label %if.then.i.i253, !prof !91

land.rhs.i.i252.sch_tree_unlock.exit256_crit_edge: ; preds = %land.rhs.i.i252
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_unlock.exit256

if.then.i.i253:                                   ; preds = %land.rhs.i.i252
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #16
  br label %sch_tree_unlock.exit256

sch_tree_unlock.exit256:                          ; preds = %if.then.i.i253, %land.rhs.i.i252.sch_tree_unlock.exit256_crit_edge, %if.else.i250.sch_tree_unlock.exit256_crit_edge, %qfq_add_to_agg.exit.sch_tree_unlock.exit256_crit_edge
  %.sink.i254 = phi ptr [ %sch, %qfq_add_to_agg.exit.sch_tree_unlock.exit256_crit_edge ], [ %116, %if.else.i250.sch_tree_unlock.exit256_crit_edge ], [ %116, %land.rhs.i.i252.sch_tree_unlock.exit256_crit_edge ], [ %116, %if.then.i.i253 ]
  %lock.i.i.i255 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i254, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i255) #16
  %clhash115 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  call void @qdisc_class_hash_grow(ptr noundef %sch, ptr noundef %clhash115) #16
  %117 = ptrtoint ptr %cl.0 to i32
  %118 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %arg, align 4
  br label %cleanup

destroy_class:                                    ; preds = %if.then106, %if.then87.destroy_class_crit_edge
  %err.0 = phi i32 [ -105, %if.then106 ], [ %call91, %if.then87.destroy_class_crit_edge ]
  %cl.1 = phi ptr [ %cl.0, %if.then106 ], [ %call7.i.i, %if.then87.destroy_class_crit_edge ]
  %qdisc116 = getelementptr inbounds %struct.qfq_class, ptr %cl.1, i32 0, i32 5
  %119 = ptrtoint ptr %qdisc116 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %qdisc116, align 8
  call void @qdisc_put(ptr noundef %120) #16
  call void @kfree(ptr noundef %cl.1) #16
  br label %cleanup

cleanup:                                          ; preds = %destroy_class, %sch_tree_unlock.exit256, %if.end72.cleanup_crit_edge, %if.then65.cleanup_crit_edge, %do.end56, %land.lhs.true44.cleanup_crit_edge, %do.end32, %do.end16, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end16 ], [ -22, %do.end32 ], [ -22, %do.end56 ], [ %err.0, %destroy_class ], [ 0, %sch_tree_unlock.exit256 ], [ %call2.i, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true44.cleanup_crit_edge ], [ %call67, %if.then65.cleanup_crit_edge ], [ -105, %if.end72.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qfq_delete_class(ptr noundef %sch, i32 noundef %arg, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %qstats.i.i = alloca %struct.gnet_stats_queue, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %filter_cnt = getelementptr inbounds %struct.qfq_class, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %filter_cnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %filter_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end.sch_tree_lock.exit_crit_edge

if.end.sch_tree_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_lock.exit

if.else.i:                                        ; preds = %if.end
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %5 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = tail call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i.sch_tree_lock.exit_crit_edge

if.else.i.sch_tree_lock.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !91

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #16
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i.sch_tree_lock.exit_crit_edge, %if.end.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %if.end.sch_tree_lock.exit_crit_edge ], [ %8, %if.else.i.sch_tree_lock.exit_crit_edge ], [ %8, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %8, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #16
  %qdisc = getelementptr inbounds %struct.qfq_class, ptr %0, i32 0, i32 5
  %9 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qdisc, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i) #16
  %11 = call ptr @memset(ptr %qstats.i.i, i32 0, i32 20)
  %cpu_qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %10, i32 0, i32 12
  %12 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpu_qstats.i.i, align 4
  %qstats1.i.i = getelementptr inbounds %struct.Qdisc, ptr %10, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i, ptr noundef %13, ptr noundef %qstats1.i.i) #16
  %14 = ptrtoint ptr %qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qstats.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %10, i32 0, i32 17, i32 2
  %16 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qlen.i.i.i, align 8
  %add.i.i = add i32 %17, %15
  %backlog3.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %backlog3.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %backlog3.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i) #16
  call void @qdisc_reset(ptr noundef %10) #16
  call void @qdisc_tree_reduce_backlog(ptr noundef %10, i32 noundef %add.i.i, i32 noundef %19) #16
  %clhash = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  call void @qdisc_class_hash_remove(ptr noundef %clhash, ptr noundef %0) #16
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i, align 8
  %and.i9 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool.not.i10 = icmp eq i32 %and.i9, 0
  br i1 %tobool.not.i10, label %if.else.i15, label %sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge

sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge: ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_unlock.exit

if.else.i15:                                      ; preds = %sch_tree_lock.exit
  %dev_queue.i.i.i11 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %22 = ptrtoint ptr %dev_queue.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_queue.i.i.i11, align 8
  %qdisc_sleeping.i.i.i12 = getelementptr inbounds %struct.netdev_queue, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %qdisc_sleeping.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %qdisc_sleeping.i.i.i12, align 4
  %call1.i.i13 = call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i13)
  %tobool.not.i.i14 = icmp eq i32 %call1.i.i13, 0
  br i1 %tobool.not.i.i14, label %land.rhs.i.i17, label %if.else.i15.sch_tree_unlock.exit_crit_edge

if.else.i15.sch_tree_unlock.exit_crit_edge:       ; preds = %if.else.i15
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_unlock.exit

land.rhs.i.i17:                                   ; preds = %if.else.i15
  %.b41.i.i16 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i16, label %land.rhs.i.i17.sch_tree_unlock.exit_crit_edge, label %if.then.i.i18, !prof !91

land.rhs.i.i17.sch_tree_unlock.exit_crit_edge:    ; preds = %land.rhs.i.i17
  call void @__sanitizer_cov_trace_pc() #18
  br label %sch_tree_unlock.exit

if.then.i.i18:                                    ; preds = %land.rhs.i.i17
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #16
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i18, %land.rhs.i.i17.sch_tree_unlock.exit_crit_edge, %if.else.i15.sch_tree_unlock.exit_crit_edge, %sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge
  %.sink.i19 = phi ptr [ %sch, %sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge ], [ %25, %if.else.i15.sch_tree_unlock.exit_crit_edge ], [ %25, %land.rhs.i.i17.sch_tree_unlock.exit_crit_edge ], [ %25, %if.then.i.i18 ]
  %lock.i.i.i20 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i19, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i20) #16
  call fastcc void @qfq_destroy_class(ptr noundef %sch, ptr noundef %0)
  br label %cleanup

cleanup:                                          ; preds = %sch_tree_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sch_tree_unlock.exit ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qfq_walk(ptr noundef %sch, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %hashsize = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %2 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hashsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp55.not = icmp eq i32 %3, 0
  br i1 %cmp55.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %clhash = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %count = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 2
  %skip = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 1
  %fn = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc28.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc29, %for.inc28.for.body_crit_edge ]
  %4 = ptrtoint ptr %clhash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clhash, align 8
  %arrayidx = getelementptr %struct.hlist_head, ptr %5, i32 %i.056
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %7, null
  %add.ptr = getelementptr i8, ptr %7, i32 -4
  %tobool5.not5357 = icmp eq ptr %add.ptr, null
  %tobool5.not53 = or i1 %tobool2.not, %tobool5.not5357
  br i1 %tobool5.not53, label %for.body.for.inc28_crit_edge, label %for.body.for.body6_crit_edge

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.body.for.inc28_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc28

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %cl.054 = phi ptr [ %add.ptr24, %for.inc.for.body6_crit_edge ], [ %add.ptr, %for.body.for.body6_crit_edge ]
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  %10 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp7 = icmp slt i32 %9, %11
  br i1 %cmp7, label %for.body6.for.inc_crit_edge, label %if.end10

for.body6.for.inc_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end10:                                         ; preds = %for.body6
  %12 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fn, align 4
  %14 = ptrtoint ptr %cl.054 to i32
  %call11 = tail call i32 %13(ptr noundef %sch, i32 noundef %14, ptr noundef %arg) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %arg, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %for.body6.for.inc_crit_edge
  %storemerge.in = phi i32 [ %17, %if.end15 ], [ %9, %for.body6.for.inc_crit_edge ]
  %storemerge = add i32 %storemerge.in, 1
  %18 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge, ptr %count, align 4
  %hnode = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.054, i32 0, i32 1
  %19 = ptrtoint ptr %hnode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hnode, align 4
  %tobool20.not = icmp eq ptr %20, null
  %add.ptr24 = getelementptr i8, ptr %20, i32 -4
  %tobool5.not58 = icmp eq ptr %add.ptr24, null
  %tobool5.not = or i1 %tobool20.not, %tobool5.not58
  br i1 %tobool5.not, label %for.inc.for.inc28_crit_edge, label %for.inc.for.body6_crit_edge

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body6

for.inc.for.inc28_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc28

for.inc28:                                        ; preds = %for.inc.for.inc28_crit_edge, %for.body.for.inc28_crit_edge
  %inc29 = add nuw i32 %i.056, 1
  %21 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hashsize, align 4
  %cmp = icmp ult i32 %inc29, %22
  br i1 %cmp, label %for.inc28.for.body_crit_edge, label %for.inc28.cleanup_crit_edge

for.inc28.cleanup_crit_edge:                      ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.inc28.for.body_crit_edge:                     ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cleanup:                                          ; preds = %for.inc28.cleanup_crit_edge, %if.then13, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @qfq_tcf_block(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr nocapture noundef readnone %extack) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cl)
  %tobool.not = icmp eq i32 %cl, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qfq_bind_tcf(ptr nocapture noundef readonly %sch, i32 noundef %parent, i32 noundef %classid) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %classid)
  %tobool.not.i.i = icmp eq i32 %classid, 0
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %if.end.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i.i:                                       ; preds = %entry
  %clhash.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %hashmask.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %0 = ptrtoint ptr %hashmask.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hashmask.i.i, align 4
  %shr.i.i.i = lshr i32 %classid, 8
  %xor.i.i.i = xor i32 %shr.i.i.i, %classid
  %shr1.i.i.i = lshr i32 %xor.i.i.i, 4
  %xor2.i.i.i = xor i32 %shr1.i.i.i, %xor.i.i.i
  %and.i.i.i = and i32 %1, %xor2.i.i.i
  %2 = ptrtoint ptr %clhash.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clhash.i, align 4
  %arrayidx.i.i = getelementptr %struct.hlist_head, ptr %3, i32 %and.i.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %5, null
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -4
  %tobool4.not3033.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool4.not30.i.i = or i1 %tobool2.not.i.i, %tobool4.not3033.i.i
  br i1 %tobool4.not30.i.i, label %if.end.i.i.if.end_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %cl.031.i.i = phi ptr [ %add.ptr13.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %cl.031.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cl.031.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %classid)
  %cmp.i.i = icmp eq i32 %7, %classid
  br i1 %cmp.i.i, label %if.then, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %hnode.i.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %hnode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hnode.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %9, null
  %add.ptr13.i.i = getelementptr i8, ptr %9, i32 -4
  %tobool4.not34.i.i = icmp eq ptr %add.ptr13.i.i, null
  %tobool4.not.i.i = or i1 %tobool9.not.i.i, %tobool4.not34.i.i
  br i1 %tobool4.not.i.i, label %for.inc.i.i.if.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.inc.i.i.if.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %filter_cnt = getelementptr inbounds %struct.qfq_class, ptr %cl.031.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %filter_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %filter_cnt, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %filter_cnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.inc.i.i.if.end_crit_edge, %if.end.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i.i5 = phi ptr [ %cl.031.i.i, %if.then ], [ null, %entry.if.end_crit_edge ], [ null, %if.end.i.i.if.end_crit_edge ], [ null, %for.inc.i.i.if.end_crit_edge ]
  %12 = ptrtoint ptr %retval.0.i.i5 to i32
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qfq_unbind_tcf(ptr nocapture noundef readnone %sch, i32 noundef %arg) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %filter_cnt = getelementptr inbounds %struct.qfq_class, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %filter_cnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %filter_cnt, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr %filter_cnt, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qfq_dump_class(ptr nocapture noundef readnone %sch, i32 noundef %arg, ptr noundef %skb, ptr nocapture noundef writeonly %tcm) #2 align 64 {
entry:
  %tmp.i20 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %tcm_parent = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 5
  %1 = ptrtoint ptr %tcm_parent to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tcm_parent, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %0, align 16
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 4
  %4 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tcm_handle, align 4
  %qdisc = getelementptr inbounds %struct.qfq_class, ptr %0, i32 0, i32 5
  %5 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qdisc, align 8
  %handle = getelementptr inbounds %struct.Qdisc, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %handle, align 32
  %tcm_info = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 6
  %9 = ptrtoint ptr %tcm_info to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tcm_info, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp23 = icmp eq ptr %11, null
  %cmp = select i1 %cmp.i, i1 true, i1 %cmp23
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %agg = getelementptr inbounds %struct.qfq_class, ptr %0, i32 0, i32 7
  %12 = ptrtoint ptr %agg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %agg, align 4
  %class_weight = getelementptr inbounds %struct.qfq_aggregate, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %class_weight to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %class_weight, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #16
  %16 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then.i.i_crit_edge

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %if.end
  %17 = ptrtoint ptr %agg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %agg, align 4
  %lmax = getelementptr inbounds %struct.qfq_aggregate, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %lmax to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lmax, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i20) #16
  %21 = ptrtoint ptr %tmp.i20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %tmp.i20, align 4
  %call.i21 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i20) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i20) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool4.not = icmp eq i32 %call.i21, 0
  br i1 %tobool4.not, label %if.end6, label %lor.lhs.false.if.then.i.i_crit_edge

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end6:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i, ptr %11, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %lor.lhs.false.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %28, %11
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !90

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %if.end6 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qfq_dump_class_stats(ptr nocapture noundef readnone %sch, i32 noundef %arg, ptr noundef %d) #2 align 64 {
entry:
  %xstats = alloca %struct.tc_qfq_stats, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xstats) #16
  %1 = getelementptr inbounds %struct.tc_qfq_stats, ptr %xstats, i32 0, i32 1
  %agg = getelementptr inbounds %struct.qfq_class, ptr %0, i32 0, i32 7
  %2 = ptrtoint ptr %agg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %agg, align 4
  %class_weight = getelementptr inbounds %struct.qfq_aggregate, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %class_weight to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %class_weight, align 4
  %6 = ptrtoint ptr %xstats to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %xstats, align 8
  %lmax = getelementptr inbounds %struct.qfq_aggregate, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %lmax to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lmax, align 8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %1, align 4
  %bstats = getelementptr inbounds %struct.qfq_class, ptr %0, i32 0, i32 2
  %call = tail call i32 @gnet_stats_copy_basic(ptr noundef %d, ptr noundef null, ptr noundef %bstats, i1 noundef zeroext true) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rate_est = getelementptr inbounds %struct.qfq_class, ptr %0, i32 0, i32 4
  %call3 = tail call i32 @gnet_stats_copy_rate_est(ptr noundef %d, ptr noundef %rate_est) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %qdisc = getelementptr inbounds %struct.qfq_class, ptr %0, i32 0, i32 5
  %10 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qdisc, align 8
  %qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %11, i32 0, i32 19
  %12 = ptrtoint ptr %qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qstats.i.i, align 32
  %flags.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i.i.i, align 8
  %and.i.i.i = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %lor.lhs.false5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %call216.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__sanitizer_cov_trace_cmp4(i32 %call216.i.i, i32 %16)
  %cmp17.i.i = icmp ult i32 %call216.i.i, %16
  br i1 %cmp17.i.i, label %do.body.lr.ph.i.i, label %for.cond.preheader.i.i.qdisc_qstats_copy.exit_crit_edge

for.cond.preheader.i.i.qdisc_qstats_copy.exit_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qdisc_qstats_copy.exit

do.body.lr.ph.i.i:                                ; preds = %for.cond.preheader.i.i
  %cpu_qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %11, i32 0, i32 12
  %17 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cpu_qstats.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.lr.ph.i.i
  %call219.i.i = phi i32 [ %call216.i.i, %do.body.lr.ph.i.i ], [ %call2.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %qlen.018.i.i = phi i32 [ %13, %do.body.lr.ph.i.i ], [ %add5.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call219.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %21, %19
  %22 = inttoptr i32 %add.i.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %add5.i.i = add i32 %24, %qlen.018.i.i
  %call2.i.i = tail call i32 @cpumask_next(i32 noundef %call219.i.i, ptr noundef nonnull @__cpu_possible_mask) #21
  %cmp.i.i = icmp ult i32 %call2.i.i, %16
  br i1 %cmp.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.body.i.i.qdisc_qstats_copy.exit_crit_edge

do.body.i.i.qdisc_qstats_copy.exit_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qdisc_qstats_copy.exit

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

if.else.i.i:                                      ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #18
  %qlen7.i.i = getelementptr inbounds %struct.Qdisc, ptr %11, i32 0, i32 17, i32 2
  %25 = ptrtoint ptr %qlen7.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qlen7.i.i, align 8
  %add8.i.i = add i32 %26, %13
  br label %qdisc_qstats_copy.exit

qdisc_qstats_copy.exit:                           ; preds = %if.else.i.i, %do.body.i.i.qdisc_qstats_copy.exit_crit_edge, %for.cond.preheader.i.i.qdisc_qstats_copy.exit_crit_edge
  %qlen.1.i.i = phi i32 [ %add8.i.i, %if.else.i.i ], [ %13, %for.cond.preheader.i.i.qdisc_qstats_copy.exit_crit_edge ], [ %add5.i.i, %do.body.i.i.qdisc_qstats_copy.exit_crit_edge ]
  %cpu_qstats.i = getelementptr inbounds %struct.Qdisc, ptr %11, i32 0, i32 12
  %27 = ptrtoint ptr %cpu_qstats.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cpu_qstats.i, align 4
  %call1.i = tail call i32 @gnet_stats_copy_queue(ptr noundef %d, ptr noundef %28, ptr noundef %qstats.i.i, i32 noundef %qlen.1.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp7 = icmp slt i32 %call1.i, 0
  br i1 %cmp7, label %qdisc_qstats_copy.exit.cleanup_crit_edge, label %if.end

qdisc_qstats_copy.exit.cleanup_crit_edge:         ; preds = %qdisc_qstats_copy.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %qdisc_qstats_copy.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call8 = call i32 @gnet_stats_copy_app(ptr noundef %d, ptr noundef nonnull %xstats, i32 noundef 8) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %qdisc_qstats_copy.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ -1, %qdisc_qstats_copy.exit.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xstats) #16
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qdisc_create_dflt(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_tree_reduce_backlog(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_add_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qfq_deactivate_agg(ptr noundef %q, ptr noundef %agg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %grp1 = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 3
  %0 = ptrtoint ptr %grp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grp1, align 8
  %in_serv_agg = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 5
  %2 = ptrtoint ptr %in_serv_agg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_serv_agg, align 8
  %cmp = icmp eq ptr %3, %agg
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %budgetmax.i = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 7
  %4 = ptrtoint ptr %budgetmax.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %budgetmax.i, align 8
  %initial_budget.i = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 8
  %6 = ptrtoint ptr %initial_budget.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %initial_budget.i, align 4
  %budget.i = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 9
  %8 = ptrtoint ptr %budget.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %budget.i, align 8
  %sub.i173 = sub i32 %7, %9
  %10 = tail call i32 @llvm.umin.i32(i32 %5, i32 %sub.i173) #16
  %S.i = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 1
  %11 = ptrtoint ptr %S.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %S.i, align 8
  %conv.i = zext i32 %10 to i64
  %inv_w.i = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 6
  %13 = ptrtoint ptr %inv_w.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %inv_w.i, align 4
  %conv1.i = zext i32 %14 to i64
  %mul.i = mul nuw i64 %conv.i, %conv1.i
  %add.i = add i64 %mul.i, %12
  %F.i = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 2
  %15 = ptrtoint ptr %F.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %add.i, ptr %F.i, align 8
  %call = tail call fastcc ptr @qfq_choose_next_agg(ptr noundef %q)
  %16 = ptrtoint ptr %in_serv_agg to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %in_serv_agg, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %S = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 1
  %17 = ptrtoint ptr %S to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %S, align 8
  %F = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 2
  %19 = ptrtoint ptr %F to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %F, align 8
  %slot_shift.i = getelementptr inbounds %struct.qfq_group, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %slot_shift.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %slot_shift.i, align 8
  %sh_prom.i.i = zext i32 %21 to i64
  %notmask.i.i = shl nsw i64 -1, %sh_prom.i.i
  %and.i1.i = and i64 %notmask.i.i, %18
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %1, align 8
  %sub.i175 = sub i64 %and.i1.i, %23
  %shr.i176 = lshr i64 %sub.i175, %sh_prom.i.i
  %conv.i177 = trunc i64 %shr.i176 to i32
  %front.i = getelementptr inbounds %struct.qfq_group, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %front.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %front.i, align 8
  %add.i178 = add i32 %25, %conv.i177
  %rem.i179 = and i32 %add.i178, 31
  %26 = ptrtoint ptr %agg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %agg, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %agg, i32 0, i32 1
  %28 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pprev2.i.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %27, ptr %29, align 4
  %tobool.not.i.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i, label %if.end.hlist_del.exit.i_crit_edge, label %do.body13.i.i.i

if.end.hlist_del.exit.i_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %hlist_del.exit.i

do.body13.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %27, i32 0, i32 1
  %31 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %pprev14.i.i.i, align 4
  br label %hlist_del.exit.i

hlist_del.exit.i:                                 ; preds = %do.body13.i.i.i, %if.end.hlist_del.exit.i_crit_edge
  %32 = ptrtoint ptr %agg to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %agg, align 4
  %33 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %arrayidx.i180 = getelementptr %struct.qfq_group, ptr %1, i32 0, i32 6, i32 %rem.i179
  %34 = ptrtoint ptr %arrayidx.i180 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %arrayidx.i180, align 4
  %tobool.not.i.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.not.i, label %if.then.i, label %hlist_del.exit.i.qfq_slot_remove.exit_crit_edge

hlist_del.exit.i.qfq_slot_remove.exit_crit_edge:  ; preds = %hlist_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qfq_slot_remove.exit

if.then.i:                                        ; preds = %hlist_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %full_slots.i = getelementptr inbounds %struct.qfq_group, ptr %1, i32 0, i32 5
  %rem.i.i = and i32 %conv.i177, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %conv.i177, 5
  %add.ptr.i.i = getelementptr i32, ptr %full_slots.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %36 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %37, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  br label %qfq_slot_remove.exit

qfq_slot_remove.exit:                             ; preds = %if.then.i, %hlist_del.exit.i.qfq_slot_remove.exit_crit_edge
  %full_slots = getelementptr inbounds %struct.qfq_group, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %full_slots to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %full_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not = icmp eq i32 %39, 0
  br i1 %tobool.not, label %if.then3, label %if.else37

if.then3:                                         ; preds = %qfq_slot_remove.exit
  %index = getelementptr inbounds %struct.qfq_group, ptr %1, i32 0, i32 3
  %40 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index, align 4
  %bitmaps = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 8
  %arrayidx = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 8, i32 1
  %rem.i = and i32 %41, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %41, 5
  %add.ptr.i = getelementptr i32, ptr %arrayidx, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %43, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  %44 = load i32, ptr %index, align 4
  %arrayidx6 = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 8, i32 2
  %rem.i126 = and i32 %44, 31
  %shl.i127 = shl nuw i32 1, %rem.i126
  %div2.i128 = lshr i32 %44, 5
  %add.ptr.i129 = getelementptr i32, ptr %arrayidx6, i32 %div2.i128
  %neg.i130 = xor i32 %shl.i127, -1
  %45 = ptrtoint ptr %add.ptr.i129 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i129, align 4
  %and.i131 = and i32 %46, %neg.i130
  store i32 %and.i131, ptr %add.ptr.i129, align 4
  %47 = load i32, ptr %index, align 4
  %arrayidx9 = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 8, i32 3
  %rem.i132 = and i32 %47, 31
  %shl.i133 = shl nuw i32 1, %rem.i132
  %div2.i134 = lshr i32 %47, 5
  %add.ptr.i135 = getelementptr i32, ptr %arrayidx9, i32 %div2.i134
  %neg.i136 = xor i32 %shl.i133, -1
  %48 = ptrtoint ptr %add.ptr.i135 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i135, align 4
  %and.i137 = and i32 %49, %neg.i136
  store i32 %and.i137, ptr %add.ptr.i135, align 4
  %50 = load i32, ptr %index, align 4
  %div3.i = lshr i32 %50, 5
  %arrayidx.i = getelementptr i32, ptr %bitmaps, i32 %div3.i
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i138 = and i32 %50, 31
  %53 = shl nuw i32 1, %and.i138
  %54 = and i32 %53, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool14.not = icmp eq i32 %54, 0
  br i1 %tobool14.not, label %if.then3.if.end33_crit_edge, label %land.lhs.true

if.then3.if.end33_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

land.lhs.true:                                    ; preds = %if.then3
  %55 = ptrtoint ptr %bitmaps to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bitmaps, align 4
  %notmask = shl nsw i32 -1, %50
  %and = and i32 %56, %notmask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.then19, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %sub = xor i32 %notmask, -1
  %and25 = and i32 %56, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %57 = tail call i32 @llvm.ctlz.i32(i32 %and25, i1 false) #16, !range !95
  %sub.i = sub nsw i32 31, %57
  %notmask125 = shl nsw i32 -1, %sub.i
  %mask.0 = select i1 %tobool26.not, i32 -1, i32 %notmask125
  %58 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx6, align 4
  %and.i182 = and i32 %59, %mask.0
  %60 = ptrtoint ptr %bitmaps to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bitmaps, align 4
  %or.i183 = or i32 %61, %and.i182
  store i32 %or.i183, ptr %bitmaps, align 4
  %neg.i184 = xor i32 %mask.0, -1
  %and5.i = and i32 %59, %neg.i184
  store i32 %and5.i, ptr %arrayidx6, align 4
  %62 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx9, align 4
  %and.i186 = and i32 %63, %mask.0
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx, align 4
  %or.i188 = or i32 %65, %and.i186
  store i32 %or.i188, ptr %arrayidx, align 4
  %and5.i190 = and i32 %63, %neg.i184
  store i32 %and5.i190, ptr %arrayidx9, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then19, %land.lhs.true.if.end33_crit_edge, %if.then3.if.end33_crit_edge
  %66 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %index, align 4
  %rem.i139 = and i32 %67, 31
  %shl.i140 = shl nuw i32 1, %rem.i139
  %div2.i141 = lshr i32 %67, 5
  %add.ptr.i142 = getelementptr i32, ptr %bitmaps, i32 %div2.i141
  %neg.i143 = xor i32 %shl.i140, -1
  %68 = ptrtoint ptr %add.ptr.i142 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr.i142, align 4
  %and.i144 = and i32 %69, %neg.i143
  store i32 %and.i144, ptr %add.ptr.i142, align 4
  br label %cleanup

if.else37:                                        ; preds = %qfq_slot_remove.exit
  %70 = ptrtoint ptr %front.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %front.i, align 8
  %arrayidx38 = getelementptr %struct.qfq_group, ptr %1, i32 0, i32 6, i32 %71
  %72 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %arrayidx38, align 4
  %tobool.not.i.not = icmp eq ptr %73, null
  br i1 %tobool.not.i.not, label %if.then41, label %if.else37.cleanup_crit_edge

if.else37.cleanup_crit_edge:                      ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then41:                                        ; preds = %if.else37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qfq_slot_scan.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qfq_deactivate_agg, %if.then.i192)) #16
          to label %do.end.i [label %if.then.i192], !srcloc !89

if.then.i192:                                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #18
  %index.i = getelementptr inbounds %struct.qfq_group, ptr %1, i32 0, i32 3
  %74 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %index.i, align 4
  %76 = ptrtoint ptr %full_slots to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %full_slots, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qfq_slot_scan.__UNIQUE_ID_ddebug370, ptr noundef nonnull @.str.5, i32 noundef %75, i32 noundef %77) #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i192, %if.then41
  %78 = ptrtoint ptr %full_slots to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %full_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp.i = icmp eq i32 %79, 0
  br i1 %cmp.i, label %do.end.i.qfq_slot_scan.exit_crit_edge, label %if.end5.i

do.end.i.qfq_slot_scan.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qfq_slot_scan.exit

if.end5.i:                                        ; preds = %do.end.i
  %80 = tail call i32 @llvm.cttz.i32(i32 %79, i1 true) #16, !range !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp8.not.i = icmp eq i32 %80, 0
  br i1 %cmp8.not.i, label %if.end5.i.if.end12.i_crit_edge, label %if.then9.i

if.end5.i.if.end12.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  %81 = ptrtoint ptr %front.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %front.i, align 8
  %add.i194 = add i32 %82, %80
  %rem.i195 = and i32 %add.i194, 31
  store i32 %rem.i195, ptr %front.i, align 8
  %shr.i196 = lshr i32 %79, %80
  %83 = ptrtoint ptr %full_slots to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %shr.i196, ptr %full_slots, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.end5.i.if.end12.i_crit_edge
  %84 = ptrtoint ptr %front.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %front.i, align 8
  %arrayidx.i.i = getelementptr %struct.qfq_group, ptr %1, i32 0, i32 6, i32 %85
  %86 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i.i, align 4
  br label %qfq_slot_scan.exit

qfq_slot_scan.exit:                               ; preds = %if.end12.i, %do.end.i.qfq_slot_scan.exit_crit_edge
  %retval.0.i = phi ptr [ %87, %if.end12.i ], [ null, %do.end.i.qfq_slot_scan.exit_crit_edge ]
  %S43 = getelementptr inbounds %struct.qfq_aggregate, ptr %retval.0.i, i32 0, i32 1
  %88 = ptrtoint ptr %S43 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %S43, align 8
  %90 = ptrtoint ptr %slot_shift.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %slot_shift.i, align 8
  %sh_prom.i = zext i32 %91 to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %and.i197 = and i64 %notmask.i, %89
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %93, i64 %and.i197)
  %cmp46.not = icmp eq i64 %93, %and.i197
  br i1 %cmp46.not, label %qfq_slot_scan.exit.cleanup_crit_edge, label %if.then47

qfq_slot_scan.exit.cleanup_crit_edge:             ; preds = %qfq_slot_scan.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then47:                                        ; preds = %qfq_slot_scan.exit
  %index48 = getelementptr inbounds %struct.qfq_group, ptr %1, i32 0, i32 3
  %94 = ptrtoint ptr %index48 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %index48, align 4
  %bitmaps49 = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 8
  %rem.i145 = and i32 %95, 31
  %shl.i146 = shl nuw i32 1, %rem.i145
  %div2.i147 = lshr i32 %95, 5
  %add.ptr.i148 = getelementptr i32, ptr %bitmaps49, i32 %div2.i147
  %neg.i149 = xor i32 %shl.i146, -1
  %96 = ptrtoint ptr %add.ptr.i148 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr.i148, align 4
  %and.i150 = and i32 %97, %neg.i149
  store i32 %and.i150, ptr %add.ptr.i148, align 4
  %98 = load i32, ptr %index48, align 4
  %arrayidx53 = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 8, i32 1
  %rem.i151 = and i32 %98, 31
  %shl.i152 = shl nuw i32 1, %rem.i151
  %div2.i153 = lshr i32 %98, 5
  %add.ptr.i154 = getelementptr i32, ptr %arrayidx53, i32 %div2.i153
  %neg.i155 = xor i32 %shl.i152, -1
  %99 = ptrtoint ptr %add.ptr.i154 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %add.ptr.i154, align 4
  %and.i156 = and i32 %100, %neg.i155
  store i32 %and.i156, ptr %add.ptr.i154, align 4
  %101 = load i32, ptr %index48, align 4
  %arrayidx56 = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 8, i32 2
  %rem.i157 = and i32 %101, 31
  %shl.i158 = shl nuw i32 1, %rem.i157
  %div2.i159 = lshr i32 %101, 5
  %add.ptr.i160 = getelementptr i32, ptr %arrayidx56, i32 %div2.i159
  %neg.i161 = xor i32 %shl.i158, -1
  %102 = ptrtoint ptr %add.ptr.i160 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %add.ptr.i160, align 4
  %and.i162 = and i32 %103, %neg.i161
  store i32 %and.i162, ptr %add.ptr.i160, align 4
  %104 = load i32, ptr %index48, align 4
  %arrayidx59 = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 8, i32 3
  %rem.i163 = and i32 %104, 31
  %shl.i164 = shl nuw i32 1, %rem.i163
  %div2.i165 = lshr i32 %104, 5
  %add.ptr.i166 = getelementptr i32, ptr %arrayidx59, i32 %div2.i165
  %neg.i167 = xor i32 %shl.i164, -1
  %105 = ptrtoint ptr %add.ptr.i166 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %add.ptr.i166, align 4
  %and.i168 = and i32 %106, %neg.i167
  store i32 %and.i168, ptr %add.ptr.i166, align 4
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %and.i197, ptr %1, align 8
  %108 = ptrtoint ptr %slot_shift.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %slot_shift.i, align 8
  %sh_prom = zext i32 %109 to i64
  %shl62 = shl i64 2, %sh_prom
  %add = add i64 %shl62, %and.i197
  %F63 = getelementptr inbounds %struct.qfq_group, ptr %1, i32 0, i32 1
  %110 = ptrtoint ptr %F63 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %add, ptr %F63, align 8
  %V.i = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 4
  %111 = ptrtoint ptr %V.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %V.i, align 8
  %sub.i.i = sub i64 %and.i197, %112
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp.i.i = icmp sgt i64 %sub.i.i, 0
  %conv.i.i = zext i1 %cmp.i.i to i32
  %113 = ptrtoint ptr %bitmaps49 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %bitmaps49, align 4
  %115 = ptrtoint ptr %index48 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %index48, align 4
  %notmask.i.i199 = shl nsw i32 -1, %116
  %and.i.i200 = and i32 %notmask.i.i199, %114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i200)
  %tobool.not.i201 = icmp eq i32 %and.i.i200, 0
  br i1 %tobool.not.i201, label %if.then47.qfq_calc_state.exit_crit_edge, label %if.then.i204

if.then47.qfq_calc_state.exit_crit_edge:          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #18
  br label %qfq_calc_state.exit

if.then.i204:                                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #18
  %117 = tail call i32 @llvm.cttz.i32(i32 %and.i.i200, i1 true) #16, !range !95
  %F3.i = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 9, i32 %117, i32 1
  %118 = ptrtoint ptr %F3.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %F3.i, align 8
  %sub.i14.i = sub i64 %add, %119
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i14.i)
  %cmp.i15.i = icmp slt i64 %sub.i14.i, 1
  %or.i203 = or i32 %conv.i.i, 2
  %spec.select.i = select i1 %cmp.i15.i, i32 %conv.i.i, i32 %or.i203
  br label %qfq_calc_state.exit

qfq_calc_state.exit:                              ; preds = %if.then.i204, %if.then47.qfq_calc_state.exit_crit_edge
  %state.0.i = phi i32 [ %conv.i.i, %if.then47.qfq_calc_state.exit_crit_edge ], [ %spec.select.i, %if.then.i204 ]
  %arrayidx67 = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 8, i32 %state.0.i
  %rem.i169 = and i32 %116, 31
  %shl.i170 = shl nuw i32 1, %rem.i169
  %div2.i171 = lshr i32 %116, 5
  %add.ptr.i172 = getelementptr i32, ptr %arrayidx67, i32 %div2.i171
  %120 = ptrtoint ptr %add.ptr.i172 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %add.ptr.i172, align 4
  %or.i = or i32 %121, %shl.i170
  store i32 %or.i, ptr %add.ptr.i172, align 4
  br label %cleanup

cleanup:                                          ; preds = %qfq_calc_state.exit, %qfq_slot_scan.exit.cleanup_crit_edge, %if.else37.cleanup_crit_edge, %if.end33, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qfq_choose_next_agg(ptr noundef %q) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 8, i32 3
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2.i, align 4
  %or.i67 = or i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i67)
  %tobool.not.i = icmp eq i32 %or.i67, 0
  br i1 %tobool.not.i, label %entry.qfq_update_eligible.exit_crit_edge, label %if.then.i

entry.qfq_update_eligible.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %qfq_update_eligible.exit

if.then.i:                                        ; preds = %entry
  %bitmaps.i = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 8
  %4 = ptrtoint ptr %bitmaps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bitmaps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not.i = icmp eq i32 %5, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.then.i.if.end12.i_crit_edge

if.then.i.if.end12.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i

if.then6.i:                                       ; preds = %if.then.i
  %6 = tail call i32 @llvm.cttz.i32(i32 %or.i67, i1 true) #16, !range !95
  %arrayidx.i.i = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 9, i32 %6
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx.i.i, align 8
  %V.i = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 4
  %9 = ptrtoint ptr %V.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %V.i, align 8
  %sub.i.i = sub i64 %8, %10
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i.i)
  %cmp.i.i = icmp slt i64 %sub.i.i, 1
  br i1 %cmp.i.i, label %if.then6.i.if.end12.i_crit_edge, label %if.then9.i

if.then6.i.if.end12.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %V.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %8, ptr %V.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.then6.i.if.end12.i_crit_edge, %if.then.i.if.end12.i_crit_edge
  %V.i.i = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 4
  %12 = ptrtoint ptr %V.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %V.i.i, align 8
  %min_slot_shift.i.i = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 10
  %14 = ptrtoint ptr %min_slot_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %min_slot_shift.i.i, align 8
  %sh_prom.i.i = zext i32 %15 to i64
  %shr.i.i = lshr i64 %13, %sh_prom.i.i
  %conv.i22.i = trunc i64 %shr.i.i to i32
  %oldV.i.i = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 3
  %16 = ptrtoint ptr %oldV.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %oldV.i.i, align 8
  %shr3.i.i = lshr i64 %17, %sh_prom.i.i
  %conv4.i.i = trunc i64 %shr3.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i22.i, i32 %conv4.i.i)
  %cmp.not.i.i = icmp eq i32 %conv.i22.i, %conv4.i.i
  br i1 %cmp.not.i.i, label %if.end12.i.qfq_update_eligible.exit_crit_edge, label %if.then.i.i

if.end12.i.qfq_update_eligible.exit_crit_edge:    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qfq_update_eligible.exit

if.then.i.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  %xor19.i.i = xor i64 %shr.i.i, %shr3.i.i
  %xor.i.i = trunc i64 %xor19.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i.i)
  %tobool.not.i.i.i = icmp eq i32 %xor.i.i, 0
  %18 = tail call i32 @llvm.ctlz.i32(i32 %xor.i.i, i1 true) #16, !range !95
  %sub.i.i.i = sub nuw nsw i32 32, %18
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %cond.i.i.i)
  %cmp6.i.i = icmp ugt i32 %cond.i.i.i, 31
  %notmask.i.i = shl nsw i32 -1, %cond.i.i.i
  %sub.i23.i = xor i32 %notmask.i.i, -1
  %mask.0.i.i = select i1 %cmp6.i.i, i32 -1, i32 %sub.i23.i
  %and.i.i.i = and i32 %mask.0.i.i, %1
  %or.i.i.i = or i32 %and.i.i.i, %5
  %19 = ptrtoint ptr %bitmaps.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i.i.i, ptr %bitmaps.i, align 4
  %neg.i.i.i = xor i32 %mask.0.i.i, -1
  %and5.i.i.i = and i32 %1, %neg.i.i.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and5.i.i.i, ptr %arrayidx.i, align 4
  %and.i21.i.i = and i32 %mask.0.i.i, %3
  %arrayidx2.i22.i.i = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 8, i32 2
  %21 = ptrtoint ptr %arrayidx2.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx2.i22.i.i, align 4
  %or.i23.i.i = or i32 %22, %and.i21.i.i
  store i32 %or.i23.i.i, ptr %arrayidx2.i22.i.i, align 4
  %and5.i25.i.i = and i32 %3, %neg.i.i.i
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and5.i25.i.i, ptr %arrayidx2.i, align 4
  br label %qfq_update_eligible.exit

qfq_update_eligible.exit:                         ; preds = %if.then.i.i, %if.end12.i.qfq_update_eligible.exit_crit_edge, %entry.qfq_update_eligible.exit_crit_edge
  %V = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 4
  %24 = ptrtoint ptr %V to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %V, align 8
  %oldV = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 3
  %26 = ptrtoint ptr %oldV to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %oldV, align 8
  %bitmaps = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 8
  %27 = ptrtoint ptr %bitmaps to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bitmaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %qfq_update_eligible.exit.cleanup26_crit_edge, label %if.end

qfq_update_eligible.exit.cleanup26_crit_edge:     ; preds = %qfq_update_eligible.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup26

if.end:                                           ; preds = %qfq_update_eligible.exit
  %29 = tail call i32 @llvm.cttz.i32(i32 %28, i1 true) #16, !range !95
  %arrayidx.i68 = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 9, i32 %29
  %F = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 9, i32 %29, i32 1
  %30 = ptrtoint ptr %F to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %F, align 8
  %front.i = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 9, i32 %29, i32 4
  %32 = ptrtoint ptr %front.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %front.i, align 8
  %arrayidx.i69 = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 9, i32 %29, i32 6, i32 %33
  %34 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i69, align 4
  %tobool.not.i71 = icmp eq ptr %35, null
  br i1 %tobool.not.i71, label %do.body4.i, label %do.end9.i, !prof !90

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sched/sch_qfq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 909, 0\0A.popsection", ""() #16, !srcloc !97
  unreachable

do.end9.i:                                        ; preds = %if.end
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pprev2.i.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %37, ptr %39, align 4
  %tobool.not.i.i.i72 = icmp eq ptr %37, null
  br i1 %tobool.not.i.i.i72, label %do.end9.i.hlist_del.exit.i_crit_edge, label %do.body13.i.i.i

do.end9.i.hlist_del.exit.i_crit_edge:             ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hlist_del.exit.i

do.body13.i.i.i:                                  ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %37, i32 0, i32 1
  %41 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %pprev14.i.i.i, align 4
  br label %hlist_del.exit.i

hlist_del.exit.i:                                 ; preds = %do.body13.i.i.i, %do.end9.i.hlist_del.exit.i_crit_edge
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %35, align 4
  %43 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %44 = ptrtoint ptr %front.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %front.i, align 8
  %arrayidx.i73 = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 9, i32 %29, i32 6, i32 %45
  %46 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %arrayidx.i73, align 4
  %tobool.not.i.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.not.i, label %if.then12.i, label %hlist_del.exit.i.qfq_front_slot_remove.exit_crit_edge

hlist_del.exit.i.qfq_front_slot_remove.exit_crit_edge: ; preds = %hlist_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qfq_front_slot_remove.exit

if.then12.i:                                      ; preds = %hlist_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %full_slots.i = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 9, i32 %29, i32 5
  %48 = ptrtoint ptr %full_slots.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %full_slots.i, align 4
  %and.i.i = and i32 %49, -2
  store i32 %and.i.i, ptr %full_slots.i, align 4
  br label %qfq_front_slot_remove.exit

qfq_front_slot_remove.exit:                       ; preds = %if.then12.i, %hlist_del.exit.i.qfq_front_slot_remove.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qfq_slot_scan.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qfq_choose_next_agg, %if.then.i75)) #16
          to label %do.end.i [label %if.then.i75], !srcloc !89

if.then.i75:                                      ; preds = %qfq_front_slot_remove.exit
  call void @__sanitizer_cov_trace_pc() #18
  %index.i = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 9, i32 %29, i32 3
  %50 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %index.i, align 4
  %full_slots.i74 = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 9, i32 %29, i32 5
  %52 = ptrtoint ptr %full_slots.i74 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %full_slots.i74, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qfq_slot_scan.__UNIQUE_ID_ddebug370, ptr noundef nonnull @.str.5, i32 noundef %51, i32 noundef %53) #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i75, %qfq_front_slot_remove.exit
  %full_slots3.i = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 9, i32 %29, i32 5
  %54 = ptrtoint ptr %full_slots3.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %full_slots3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i = icmp eq i32 %55, 0
  br i1 %cmp.i, label %do.end.i.if.then5_crit_edge, label %if.end5.i

do.end.i.if.then5_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then5

if.end5.i:                                        ; preds = %do.end.i
  %56 = tail call i32 @llvm.cttz.i32(i32 %55, i1 true) #16, !range !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp8.not.i = icmp eq i32 %56, 0
  br i1 %cmp8.not.i, label %if.end5.i.qfq_slot_scan.exit_crit_edge, label %if.then9.i78

if.end5.i.qfq_slot_scan.exit_crit_edge:           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qfq_slot_scan.exit

if.then9.i78:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  %57 = ptrtoint ptr %front.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %front.i, align 8
  %add.i = add i32 %58, %56
  %rem.i77 = and i32 %add.i, 31
  store i32 %rem.i77, ptr %front.i, align 8
  %shr.i = lshr i32 %55, %56
  %59 = ptrtoint ptr %full_slots3.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %shr.i, ptr %full_slots3.i, align 4
  br label %qfq_slot_scan.exit

qfq_slot_scan.exit:                               ; preds = %if.then9.i78, %if.end5.i.qfq_slot_scan.exit_crit_edge
  %60 = ptrtoint ptr %front.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %front.i, align 8
  %arrayidx.i.i80 = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 9, i32 %29, i32 6, i32 %61
  %62 = ptrtoint ptr %arrayidx.i.i80 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i80, align 4
  %cmp = icmp eq ptr %63, null
  br i1 %cmp, label %qfq_slot_scan.exit.if.then5_crit_edge, label %if.else

qfq_slot_scan.exit.if.then5_crit_edge:            ; preds = %qfq_slot_scan.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then5

if.then5:                                         ; preds = %qfq_slot_scan.exit.if.then5_crit_edge, %do.end.i.if.then5_crit_edge
  %index = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 9, i32 %29, i32 3
  %64 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %index, align 4
  %rem.i = and i32 %65, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %65, 5
  %add.ptr.i = getelementptr i32, ptr %bitmaps, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %67, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  br label %if.end24

if.else:                                          ; preds = %qfq_slot_scan.exit
  %S = getelementptr inbounds %struct.qfq_aggregate, ptr %63, i32 0, i32 1
  %68 = ptrtoint ptr %S to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %S, align 8
  %slot_shift = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 9, i32 %29, i32 2
  %70 = ptrtoint ptr %slot_shift to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %slot_shift, align 8
  %sh_prom.i = zext i32 %71 to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %and.i82 = and i64 %notmask.i, %69
  %72 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx.i68, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %73, i64 %and.i82)
  %cmp10 = icmp eq i64 %73, %and.i82
  br i1 %cmp10, label %if.else.cleanup26_crit_edge, label %if.end12

if.else.cleanup26_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup26

if.end12:                                         ; preds = %if.else
  %74 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %and.i82, ptr %arrayidx.i68, align 8
  %shl = shl i64 2, %sh_prom.i
  %add = add i64 %and.i82, %shl
  %75 = ptrtoint ptr %F to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %add, ptr %F, align 8
  %index16 = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 9, i32 %29, i32 3
  %76 = ptrtoint ptr %index16 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %index16, align 4
  %rem.i57 = and i32 %77, 31
  %shl.i58 = shl nuw i32 1, %rem.i57
  %div2.i59 = lshr i32 %77, 5
  %add.ptr.i60 = getelementptr i32, ptr %bitmaps, i32 %div2.i59
  %neg.i61 = xor i32 %shl.i58, -1
  %78 = ptrtoint ptr %add.ptr.i60 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr.i60, align 4
  %and.i62 = and i32 %79, %neg.i61
  store i32 %and.i62, ptr %add.ptr.i60, align 4
  %80 = load i64, ptr %arrayidx.i68, align 8
  %81 = ptrtoint ptr %V to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %V, align 8
  %sub.i.i84 = sub i64 %80, %82
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i84)
  %cmp.i.i85 = icmp sgt i64 %sub.i.i84, 0
  %conv.i.i = zext i1 %cmp.i.i85 to i32
  %83 = ptrtoint ptr %bitmaps to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bitmaps, align 4
  %85 = ptrtoint ptr %index16 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %index16, align 4
  %notmask.i.i88 = shl nsw i32 -1, %86
  %and.i.i89 = and i32 %notmask.i.i88, %84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i89)
  %tobool.not.i90 = icmp eq i32 %and.i.i89, 0
  br i1 %tobool.not.i90, label %if.end12.qfq_calc_state.exit_crit_edge, label %if.then.i92

if.end12.qfq_calc_state.exit_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %qfq_calc_state.exit

if.then.i92:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %87 = tail call i32 @llvm.cttz.i32(i32 %and.i.i89, i1 true) #16, !range !95
  %88 = ptrtoint ptr %F to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %F, align 8
  %F3.i = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 9, i32 %87, i32 1
  %90 = ptrtoint ptr %F3.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %F3.i, align 8
  %sub.i14.i = sub i64 %89, %91
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i14.i)
  %cmp.i15.i = icmp slt i64 %sub.i14.i, 1
  %or.i91 = or i32 %conv.i.i, 2
  %spec.select.i = select i1 %cmp.i15.i, i32 %conv.i.i, i32 %or.i91
  br label %qfq_calc_state.exit

qfq_calc_state.exit:                              ; preds = %if.then.i92, %if.end12.qfq_calc_state.exit_crit_edge
  %state.0.i = phi i32 [ %conv.i.i, %if.end12.qfq_calc_state.exit_crit_edge ], [ %spec.select.i, %if.then.i92 ]
  %arrayidx22 = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 8, i32 %state.0.i
  %rem.i63 = and i32 %86, 31
  %shl.i64 = shl nuw i32 1, %rem.i63
  %div2.i65 = lshr i32 %86, 5
  %add.ptr.i66 = getelementptr i32, ptr %arrayidx22, i32 %div2.i65
  %92 = ptrtoint ptr %add.ptr.i66 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr.i66, align 4
  %or.i = or i32 %93, %shl.i64
  store i32 %or.i, ptr %add.ptr.i66, align 4
  br label %if.end24

if.end24:                                         ; preds = %qfq_calc_state.exit, %if.then5
  %index25 = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 9, i32 %29, i32 3
  %94 = ptrtoint ptr %index25 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %index25, align 4
  %96 = ptrtoint ptr %bitmaps to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bitmaps, align 4
  %add.i94 = add i32 %95, 1
  %notmask.i.i95 = shl nsw i32 -1, %add.i94
  %and.i.i96 = and i32 %notmask.i.i95, %97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i96)
  %tobool.not.i97 = icmp eq i32 %and.i.i96, 0
  br i1 %tobool.not.i97, label %if.end24.if.end5.i103_crit_edge, label %if.then.i101

if.end24.if.end5.i103_crit_edge:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5.i103

if.then.i101:                                     ; preds = %if.end24
  %98 = tail call i32 @llvm.cttz.i32(i32 %and.i.i96, i1 true) #16, !range !95
  %F.i98 = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 9, i32 %98, i32 1
  %99 = ptrtoint ptr %F.i98 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %F.i98, align 8
  %sub.i.i99 = sub i64 %100, %31
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i.i99)
  %cmp.i.i100 = icmp slt i64 %sub.i.i99, 1
  br i1 %cmp.i.i100, label %if.then.i101.cleanup26_crit_edge, label %if.then.i101.if.end5.i103_crit_edge

if.then.i101.if.end5.i103_crit_edge:              ; preds = %if.then.i101
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5.i103

if.then.i101.cleanup26_crit_edge:                 ; preds = %if.then.i101
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup26

if.end5.i103:                                     ; preds = %if.then.i101.if.end5.i103_crit_edge, %if.end24.if.end5.i103_crit_edge
  %notmask.i102 = shl nsw i32 -1, %95
  %sub.i = xor i32 %notmask.i102, -1
  %arrayidx.i14.i = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 8, i32 2
  %101 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.i14.i, align 4
  %and.i15.i = and i32 %102, %sub.i
  %or.i.i = or i32 %and.i15.i, %97
  %103 = ptrtoint ptr %bitmaps to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %or.i.i, ptr %bitmaps, align 4
  %and5.i.i = and i32 %102, %notmask.i102
  store i32 %and5.i.i, ptr %arrayidx.i14.i, align 4
  %104 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx2.i, align 4
  %and.i17.i = and i32 %105, %sub.i
  %106 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx.i, align 4
  %or.i19.i = or i32 %107, %and.i17.i
  store i32 %or.i19.i, ptr %arrayidx.i, align 4
  %and5.i20.i = and i32 %105, %notmask.i102
  store i32 %and5.i20.i, ptr %arrayidx2.i, align 4
  br label %cleanup26

cleanup26:                                        ; preds = %if.end5.i103, %if.then.i101.cleanup26_crit_edge, %if.else.cleanup26_crit_edge, %qfq_update_eligible.exit.cleanup26_crit_edge
  %retval.1 = phi ptr [ null, %qfq_update_eligible.exit.cleanup26_crit_edge ], [ %35, %if.else.cleanup26_crit_edge ], [ %35, %if.then.i101.cleanup26_crit_edge ], [ %35, %if.end5.i103 ]
  ret ptr %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_replace_estimator(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_basic_sync_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_new_estimator(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_hash_add(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_kill_estimator(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qfq_deact_rm_from_agg(ptr noundef %q, ptr noundef %cl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc = getelementptr inbounds %struct.qfq_class, ptr %cl, i32 0, i32 5
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 8
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 17, i32 2
  %2 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %agg1.i = getelementptr inbounds %struct.qfq_class, ptr %cl, i32 0, i32 7
  %4 = ptrtoint ptr %agg1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %agg1.i, align 4
  %alist.i = getelementptr inbounds %struct.qfq_class, ptr %cl, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %alist.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_del.exit.i_crit_edge

if.then.list_del.exit.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.qfq_class, ptr %cl, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %alist.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %alist.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.list_del.exit.i_crit_edge
  %12 = ptrtoint ptr %alist.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %alist.i, align 4
  %prev.i.i = getelementptr inbounds %struct.qfq_class, ptr %cl, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %active.i = getelementptr inbounds %struct.qfq_aggregate, ptr %5, i32 0, i32 11
  %14 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %active.i, align 4
  %cmp.i.not.i = icmp eq ptr %15, %active.i
  br i1 %cmp.i.not.i, label %if.then.i, label %list_del.exit.i.if.end_crit_edge

list_del.exit.i.if.end_crit_edge:                 ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @qfq_deactivate_agg(ptr noundef %q, ptr noundef %5) #16
  br label %if.end

if.end:                                           ; preds = %if.then.i, %list_del.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %agg1.i5 = getelementptr inbounds %struct.qfq_class, ptr %cl, i32 0, i32 7
  %16 = ptrtoint ptr %agg1.i5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %agg1.i5, align 4
  store ptr null, ptr %agg1.i5, align 4
  %num_classes.i = getelementptr inbounds %struct.qfq_aggregate, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %num_classes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_classes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i = icmp eq i32 %19, 1
  br i1 %cmp.i, label %if.then.i6, label %if.end.i

if.then.i6:                                       ; preds = %if.end
  %nonfull_next.i.i = getelementptr inbounds %struct.qfq_aggregate, ptr %17, i32 0, i32 12
  %pprev.i.i.i.i = getelementptr inbounds %struct.qfq_aggregate, ptr %17, i32 0, i32 12, i32 1
  %20 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.not.i.i.i, label %if.then.i6.hlist_del_init.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i6.hlist_del_init.exit.i.i_crit_edge:     ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_pc() #18
  br label %hlist_del_init.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i6
  %22 = ptrtoint ptr %nonfull_next.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nonfull_next.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %23, ptr %21, align 4
  %tobool.not.i3.i.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i3.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %21, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %26 = ptrtoint ptr %nonfull_next.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %nonfull_next.i.i, align 4
  %27 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %pprev.i.i.i.i, align 4
  br label %hlist_del_init.exit.i.i

hlist_del_init.exit.i.i:                          ; preds = %__hlist_del.exit.i.i.i, %if.then.i6.hlist_del_init.exit.i.i_crit_edge
  %class_weight.i.i = getelementptr inbounds %struct.qfq_aggregate, ptr %17, i32 0, i32 4
  %28 = ptrtoint ptr %class_weight.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %class_weight.i.i, align 4
  %wsum.i.i = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 6
  %30 = ptrtoint ptr %wsum.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wsum.i.i, align 4
  %sub.i.i = sub i32 %31, %29
  store i32 %sub.i.i, ptr %wsum.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %29)
  %cmp.not.i.i = icmp eq i32 %31, %29
  br i1 %cmp.not.i.i, label %hlist_del_init.exit.i.i.if.end.i.i_crit_edge, label %if.then.i.i

hlist_del_init.exit.i.i.if.end.i.i_crit_edge:     ; preds = %hlist_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %hlist_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %div.i.i = udiv i32 1073741824, %sub.i.i
  %iwsum.i.i = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 7
  %32 = ptrtoint ptr %iwsum.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div.i.i, ptr %iwsum.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %hlist_del_init.exit.i.i.if.end.i.i_crit_edge
  %in_serv_agg.i.i = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 5
  %33 = ptrtoint ptr %in_serv_agg.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %in_serv_agg.i.i, align 8
  %cmp3.i.i = icmp eq ptr %34, %17
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.end.i.i.qfq_destroy_agg.exit.i_crit_edge

if.end.i.i.qfq_destroy_agg.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qfq_destroy_agg.exit.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = tail call fastcc ptr @qfq_choose_next_agg(ptr noundef %q) #16
  %35 = ptrtoint ptr %in_serv_agg.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i.i, ptr %in_serv_agg.i.i, align 8
  br label %qfq_destroy_agg.exit.i

qfq_destroy_agg.exit.i:                           ; preds = %if.then4.i.i, %if.end.i.i.qfq_destroy_agg.exit.i_crit_edge
  tail call void @kfree(ptr noundef %17) #16
  br label %qfq_rm_from_agg.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i = add i32 %19, -1
  tail call fastcc void @qfq_update_agg(ptr noundef %q, ptr noundef %17, i32 noundef %sub.i) #16
  br label %qfq_rm_from_agg.exit

qfq_rm_from_agg.exit:                             ; preds = %if.end.i, %qfq_destroy_agg.exit.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_class_hash_insert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_class_hash_grow(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qfq_update_agg(ptr noundef %q, ptr noundef %agg, i32 noundef %new_num_classes) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %max_agg_classes = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 11
  %0 = ptrtoint ptr %max_agg_classes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_agg_classes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %new_num_classes)
  %cmp = icmp eq i32 %1, %new_num_classes
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %nonfull_next = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 12
  %pprev.i.i = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %4 = ptrtoint ptr %nonfull_next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nonfull_next, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %5, ptr %3, align 4
  %tobool.not.i3.i = icmp eq ptr %5, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %3, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %8 = ptrtoint ptr %nonfull_next to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %nonfull_next, align 4
  %9 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pprev.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %__hlist_del.exit.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %num_classes = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 10
  %10 = ptrtoint ptr %num_classes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_classes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %new_num_classes)
  %cmp1 = icmp sgt i32 %11, %new_num_classes
  br i1 %cmp1, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %12 = ptrtoint ptr %max_agg_classes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_agg_classes, align 4
  %sub = add i32 %13, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %new_num_classes)
  %cmp3 = icmp eq i32 %sub, %new_num_classes
  br i1 %cmp3, label %if.then4, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then4:                                         ; preds = %land.lhs.true
  %nonfull_next5 = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 12
  %nonfull_aggs = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 12
  %14 = ptrtoint ptr %nonfull_aggs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nonfull_aggs, align 4
  %16 = ptrtoint ptr %nonfull_next5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %15, ptr %nonfull_next5, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then4.hlist_add_head.exit_crit_edge, label %do.body12.i

if.then4.hlist_add_head.exit_crit_edge:           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %nonfull_next5, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.then4.hlist_add_head.exit_crit_edge
  %18 = ptrtoint ptr %nonfull_aggs to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %nonfull_next5, ptr %nonfull_aggs, align 4
  %pprev34.i = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 12, i32 1
  %19 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %nonfull_aggs, ptr %pprev34.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %hlist_add_head.exit, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %lmax = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 5
  %20 = ptrtoint ptr %lmax to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lmax, align 8
  %mul = mul i32 %21, %new_num_classes
  %budgetmax = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 7
  %22 = ptrtoint ptr %budgetmax to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul, ptr %budgetmax, align 8
  %class_weight = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 4
  %23 = ptrtoint ptr %class_weight to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %class_weight, align 4
  %mul7 = mul i32 %24, %new_num_classes
  %div = udiv i32 1073741824, %mul7
  %inv_w = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 6
  %25 = ptrtoint ptr %inv_w to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div, ptr %inv_w, align 4
  %grp = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 3
  %26 = ptrtoint ptr %grp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %grp, align 8
  %cmp8 = icmp eq ptr %27, null
  br i1 %cmp8, label %if.then9, label %if.end6.if.end13_crit_edge

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then9:                                         ; preds = %if.end6
  %min_slot_shift = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 10
  %28 = ptrtoint ptr %min_slot_shift to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %min_slot_shift, align 8
  %conv.i = zext i32 %mul to i64
  %conv1.i = zext i32 %div to i64
  %mul.i = mul nuw nsw i64 %conv1.i, %conv.i
  %sh_prom.i = zext i32 %29 to i64
  %shr.i = lshr i64 %mul.i, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2.i)
  %tobool.not.i47 = icmp eq i32 %conv2.i, 0
  br i1 %tobool.not.i47, label %if.then9.do.body.i_crit_edge, label %if.end.i

if.then9.do.body.i_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

if.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  %30 = tail call i32 @llvm.ctlz.i32(i32 %conv2.i, i1 true) #16, !range !95
  %sub.i.i = xor i32 %30, 31
  %add.i = sub nuw nsw i32 32, %30
  %sub.i = add i32 %sub.i.i, %29
  %sh_prom4.i = zext i32 %sub.i to i64
  %shl.neg.i = shl nsw i64 -1, %sh_prom4.i
  %sub5.i = sub nsw i64 0, %mul.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.neg.i, i64 %sub5.i)
  %tobool6.not.i = icmp eq i64 %shl.neg.i, %sub5.i
  %lnot.ext.neg.i = sext i1 %tobool6.not.i to i32
  %sub7.i = add nsw i32 %add.i, %lnot.ext.neg.i
  %31 = tail call i32 @llvm.smax.i32(i32 %sub7.i, i32 0) #16
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i, %if.then9.do.body.i_crit_edge
  %index.0.i = phi i32 [ %31, %if.end.i ], [ 0, %if.then9.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qfq_calc_index.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qfq_update_agg, %if.then18.i)) #16
          to label %qfq_calc_index.exit [label %if.then18.i], !srcloc !89

if.then18.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %div.i = udiv i32 1073741824, %div
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qfq_calc_index.__UNIQUE_ID_ddebug366, ptr noundef nonnull @.str.18, i32 noundef %div.i, i32 noundef %mul, i32 noundef %index.0.i) #16
  br label %qfq_calc_index.exit

qfq_calc_index.exit:                              ; preds = %if.then18.i, %do.body.i
  %arrayidx = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 9, i32 %index.0.i
  %32 = ptrtoint ptr %grp to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx, ptr %grp, align 8
  br label %if.end13

if.end13:                                         ; preds = %qfq_calc_index.exit, %if.end6.if.end13_crit_edge
  %33 = ptrtoint ptr %class_weight to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %class_weight, align 4
  %35 = ptrtoint ptr %num_classes to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_classes, align 4
  %sub16 = sub i32 %new_num_classes, %36
  %mul17 = mul i32 %sub16, %34
  %wsum = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 6
  %37 = ptrtoint ptr %wsum to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %wsum, align 4
  %add = add i32 %mul17, %38
  store i32 %add, ptr %wsum, align 4
  %div19 = udiv i32 1073741824, %add
  %iwsum = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 7
  %39 = ptrtoint ptr %iwsum to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div19, ptr %iwsum, align 8
  store i32 %new_num_classes, ptr %num_classes, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qfq_activate_agg(ptr nocapture noundef %q, ptr noundef %agg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %budgetmax = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 7
  %0 = ptrtoint ptr %budgetmax to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %budgetmax, align 8
  %budget = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 9
  %2 = ptrtoint ptr %budget to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %budget, align 8
  %initial_budget = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 8
  %3 = ptrtoint ptr %initial_budget to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %1, ptr %initial_budget, align 4
  %grp.i.i = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 3
  %4 = ptrtoint ptr %grp.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grp.i.i, align 8
  %slot_shift1.i.i = getelementptr inbounds %struct.qfq_group, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %slot_shift1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slot_shift1.i.i, align 8
  %F.i.i = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 2
  %8 = ptrtoint ptr %F.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %F.i.i, align 8
  %sh_prom.i.i.i = zext i32 %7 to i64
  %notmask.i.i.i = shl nsw i64 -1, %sh_prom.i.i.i
  %and.i.i.i = and i64 %notmask.i.i.i, %9
  %V.i.i = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 4
  %10 = ptrtoint ptr %V.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %V.i.i, align 8
  %and.i60.i.i = and i64 %notmask.i.i.i, %11
  %shl.i.i = shl nuw i64 1, %sh_prom.i.i.i
  %add.i.i = add i64 %and.i60.i.i, %shl.i.i
  %sub.i.i.i = sub i64 %9, %11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i.i)
  %cmp.i.i.i = icmp sgt i64 %sub.i.i.i, 0
  %sub.i61.i.i = sub i64 %and.i.i.i, %add.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i61.i.i)
  %cmp.i62.i.i = icmp slt i64 %sub.i61.i.i, 1
  %or.cond.i.i = select i1 %cmp.i.i.i, i1 %cmp.i62.i.i, i1 false
  br i1 %or.cond.i.i, label %if.else27.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %bitmaps.i.i = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 8
  %12 = ptrtoint ptr %bitmaps.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bitmaps.i.i, align 4
  %index.i.i = getelementptr inbounds %struct.qfq_group, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i.i, align 4
  %notmask.i64.i.i = shl nsw i32 -1, %15
  %and.i65.i.i = and i32 %notmask.i64.i.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i65.i.i)
  %tobool10.not.i.i = icmp eq i32 %and.i65.i.i, 0
  br i1 %tobool10.not.i.i, label %if.then.i.i.if.end24.i.i_crit_edge, label %if.then11.i.i

if.then.i.i.if.end24.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24.i.i

if.then11.i.i:                                    ; preds = %if.then.i.i
  %16 = tail call i32 @llvm.cttz.i32(i32 %and.i65.i.i, i1 true) #16, !range !95
  %F13.i.i = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 9, i32 %16, i32 1
  %17 = ptrtoint ptr %F13.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %F13.i.i, align 8
  %sub.i66.i.i = sub i64 %and.i.i.i, %18
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i66.i.i)
  %cmp.i67.i.i = icmp slt i64 %sub.i66.i.i, 1
  br i1 %cmp.i67.i.i, label %if.then11.i.i.if.end24.i.i_crit_edge, label %if.then16.i.i

if.then11.i.i.if.end24.i.i_crit_edge:             ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24.i.i

if.then16.i.i:                                    ; preds = %if.then11.i.i
  %sub.i69.i.i = sub i64 %add.i.i, %18
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i69.i.i)
  %cmp.i70.i.i = icmp slt i64 %sub.i69.i.i, 1
  %S22.i.i = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 1
  br i1 %cmp.i70.i.i, label %if.else.i.i, label %if.then20.i.i

if.then20.i.i:                                    ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %S22.i.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %S22.i.i, align 8
  br label %qfq_update_agg_ts.exit

if.else.i.i:                                      ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %S22.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %add.i.i, ptr %S22.i.i, align 8
  br label %qfq_update_agg_ts.exit

if.end24.i.i:                                     ; preds = %if.then11.i.i.if.end24.i.i_crit_edge, %if.then.i.i.if.end24.i.i_crit_edge
  %S26.i.i = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 1
  %21 = ptrtoint ptr %S26.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %11, ptr %S26.i.i, align 8
  br label %qfq_update_agg_ts.exit

if.else27.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %S29.i.i = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 1
  %22 = ptrtoint ptr %S29.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %9, ptr %S29.i.i, align 8
  br label %qfq_update_agg_ts.exit

qfq_update_agg_ts.exit:                           ; preds = %if.else27.i.i, %if.end24.i.i, %if.else.i.i, %if.then20.i.i
  %S1.i = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 1
  %23 = ptrtoint ptr %S1.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %S1.i, align 8
  %conv.i = zext i32 %1 to i64
  %inv_w.i = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 6
  %25 = ptrtoint ptr %inv_w.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %inv_w.i, align 4
  %conv2.i = zext i32 %26 to i64
  %mul.i = mul nuw i64 %conv2.i, %conv.i
  %add.i = add i64 %mul.i, %24
  %27 = ptrtoint ptr %F.i.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %add.i, ptr %F.i.i, align 8
  %in_serv_agg = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 5
  %28 = ptrtoint ptr %in_serv_agg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %in_serv_agg, align 8
  %cmp = icmp eq ptr %29, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %qfq_update_agg_ts.exit
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %in_serv_agg to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %agg, ptr %in_serv_agg, align 8
  %31 = ptrtoint ptr %S1.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %S1.i, align 8
  %33 = ptrtoint ptr %V.i.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %V.i.i, align 8
  %oldV = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 3
  %34 = ptrtoint ptr %oldV to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %32, ptr %oldV, align 8
  br label %if.end5

if.else:                                          ; preds = %qfq_update_agg_ts.exit
  %cmp3.not = icmp eq ptr %29, %agg
  br i1 %cmp3.not, label %if.else.if.end5_crit_edge, label %if.then4

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @qfq_schedule_agg(ptr noundef %q, ptr noundef %agg)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.else.if.end5_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qfq_schedule_agg(ptr nocapture noundef %q, ptr noundef %agg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %grp1 = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 3
  %0 = ptrtoint ptr %grp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grp1, align 8
  %S = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 1
  %2 = ptrtoint ptr %S to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %S, align 8
  %slot_shift = getelementptr inbounds %struct.qfq_group, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %slot_shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slot_shift, align 8
  %sh_prom.i = zext i32 %5 to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %and.i79 = and i64 %notmask.i, %3
  %full_slots = getelementptr inbounds %struct.qfq_group, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %full_slots to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %full_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %1, align 8
  %sub.i = sub i64 %9, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i)
  %cmp.i = icmp slt i64 %sub.i, 1
  br i1 %cmp.i, label %if.then.skip_update_crit_edge, label %if.end

if.then.skip_update_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %skip_update

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i80 = sub i64 %9, %and.i79
  %shr.i = lshr i64 %sub.i80, %sh_prom.i
  %conv.i82 = trunc i64 %shr.i to i32
  %shl.i83 = shl i32 %7, %conv.i82
  %10 = ptrtoint ptr %full_slots to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shl.i83, ptr %full_slots, align 4
  %front.i = getelementptr inbounds %struct.qfq_group, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %front.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %front.i, align 8
  %sub1.i = sub i32 %12, %conv.i82
  %rem.i84 = and i32 %sub1.i, 31
  store i32 %rem.i84, ptr %front.i, align 8
  %index = getelementptr inbounds %struct.qfq_group, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 8, i32 1
  %rem.i = and i32 %14, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %14, 5
  %add.ptr.i = getelementptr i32, ptr %arrayidx, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %16, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  %17 = load i32, ptr %index, align 4
  %arrayidx9 = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 8, i32 3
  %rem.i69 = and i32 %17, 31
  %shl.i70 = shl nuw i32 1, %rem.i69
  %div2.i71 = lshr i32 %17, 5
  %add.ptr.i72 = getelementptr i32, ptr %arrayidx9, i32 %div2.i71
  %neg.i73 = xor i32 %shl.i70, -1
  %18 = ptrtoint ptr %add.ptr.i72 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i72, align 4
  %and.i74 = and i32 %19, %neg.i73
  store i32 %and.i74, ptr %add.ptr.i72, align 4
  br label %if.end19

if.else:                                          ; preds = %entry
  %bitmaps10 = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 8
  %20 = ptrtoint ptr %bitmaps10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bitmaps10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool12.not = icmp eq i32 %21, 0
  br i1 %tobool12.not, label %land.lhs.true, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

land.lhs.true:                                    ; preds = %if.else
  %V = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 4
  %22 = ptrtoint ptr %V to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %V, align 8
  %sub.i85 = sub i64 %and.i79, %23
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i85)
  %cmp.i86 = icmp slt i64 %sub.i85, 1
  br i1 %cmp.i86, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true15

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

land.lhs.true15:                                  ; preds = %land.lhs.true
  %in_serv_agg = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 5
  %24 = ptrtoint ptr %in_serv_agg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %in_serv_agg, align 8
  %cmp = icmp eq ptr %25, null
  br i1 %cmp, label %if.then16, label %land.lhs.true15.if.end19_crit_edge

land.lhs.true15.if.end19_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then16:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %V to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %and.i79, ptr %V, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %land.lhs.true15.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %if.else.if.end19_crit_edge, %if.end
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %and.i79, ptr %1, align 8
  %28 = ptrtoint ptr %slot_shift to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %slot_shift, align 8
  %sh_prom = zext i32 %29 to i64
  %shl = shl i64 2, %sh_prom
  %add = add i64 %shl, %and.i79
  %F = getelementptr inbounds %struct.qfq_group, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %F to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %add, ptr %F, align 8
  %V.i = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 4
  %31 = ptrtoint ptr %V.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %V.i, align 8
  %sub.i.i = sub i64 %and.i79, %32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp.i.i = icmp sgt i64 %sub.i.i, 0
  %conv.i.i = zext i1 %cmp.i.i to i32
  %bitmaps.i = getelementptr inbounds %struct.qfq_sched, ptr %q, i32 0, i32 8
  %33 = ptrtoint ptr %bitmaps.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bitmaps.i, align 4
  %index.i = getelementptr inbounds %struct.qfq_group, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index.i, align 4
  %notmask.i.i = shl nsw i32 -1, %36
  %and.i.i = and i32 %notmask.i.i, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.end19.qfq_calc_state.exit_crit_edge, label %if.then.i

if.end19.qfq_calc_state.exit_crit_edge:           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %qfq_calc_state.exit

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  %37 = tail call i32 @llvm.cttz.i32(i32 %and.i.i, i1 true) #16, !range !95
  %F3.i = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 9, i32 %37, i32 1
  %38 = ptrtoint ptr %F3.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %F3.i, align 8
  %sub.i14.i = sub i64 %add, %39
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i14.i)
  %cmp.i15.i = icmp slt i64 %sub.i14.i, 1
  %or.i88 = or i32 %conv.i.i, 2
  %spec.select.i = select i1 %cmp.i15.i, i32 %conv.i.i, i32 %or.i88
  br label %qfq_calc_state.exit

qfq_calc_state.exit:                              ; preds = %if.then.i, %if.end19.qfq_calc_state.exit_crit_edge
  %state.0.i = phi i32 [ %conv.i.i, %if.end19.qfq_calc_state.exit_crit_edge ], [ %spec.select.i, %if.then.i ]
  %arrayidx25 = getelementptr %struct.qfq_sched, ptr %q, i32 0, i32 8, i32 %state.0.i
  %rem.i75 = and i32 %36, 31
  %shl.i76 = shl nuw i32 1, %rem.i75
  %div2.i77 = lshr i32 %36, 5
  %add.ptr.i78 = getelementptr i32, ptr %arrayidx25, i32 %div2.i77
  %40 = ptrtoint ptr %add.ptr.i78 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i78, align 4
  %or.i = or i32 %41, %shl.i76
  store i32 %or.i, ptr %add.ptr.i78, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qfq_schedule_agg.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qfq_schedule_agg, %if.then30)) #16
          to label %skip_update [label %if.then30], !srcloc !89

if.then30:                                        ; preds = %qfq_calc_state.exit
  call void @__sanitizer_cov_trace_pc() #18
  %42 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx25, align 4
  %44 = ptrtoint ptr %S to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %S, align 8
  %F34 = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 2
  %46 = ptrtoint ptr %F34 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %F34, align 8
  %48 = ptrtoint ptr %V.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %V.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qfq_schedule_agg.__UNIQUE_ID_ddebug377, ptr noundef nonnull @.str.20, i32 noundef %state.0.i, i32 noundef %43, i64 noundef %45, i64 noundef %47, i64 noundef %49) #16
  br label %skip_update

skip_update:                                      ; preds = %if.then30, %qfq_calc_state.exit, %if.then.skip_update_crit_edge
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %1, align 8
  %sub.i89 = sub i64 %and.i79, %51
  %52 = ptrtoint ptr %slot_shift to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %slot_shift, align 8
  %sh_prom.i91 = zext i32 %53 to i64
  %shr.i92 = lshr i64 %sub.i89, %sh_prom.i91
  call void @__sanitizer_cov_trace_const_cmp8(i64 30, i64 %shr.i92)
  %cmp.i93 = icmp ugt i64 %shr.i92, 30
  %extract.t.i = trunc i64 %shr.i92 to i32
  br i1 %cmp.i93, label %if.then.i95, label %skip_update.if.end.i_crit_edge, !prof !90

skip_update.if.end.i_crit_edge:                   ; preds = %skip_update
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i95:                                      ; preds = %skip_update
  call void @__sanitizer_cov_trace_pc() #18
  %shl.neg.i = shl i64 -30, %sh_prom.i91
  %sub6.i = add i64 %shl.neg.i, %sub.i89
  %54 = ptrtoint ptr %S to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %S, align 8
  %sub8.i = sub i64 %55, %sub6.i
  store i64 %sub8.i, ptr %S, align 8
  %F.i94 = getelementptr inbounds %struct.qfq_aggregate, ptr %agg, i32 0, i32 2
  %56 = ptrtoint ptr %F.i94 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %F.i94, align 8
  %sub9.i = sub i64 %57, %sub6.i
  store i64 %sub9.i, ptr %F.i94, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i95, %skip_update.if.end.i_crit_edge
  %slot.0.off0.i = phi i32 [ 30, %if.then.i95 ], [ %extract.t.i, %skip_update.if.end.i_crit_edge ]
  %front.i96 = getelementptr inbounds %struct.qfq_group, ptr %1, i32 0, i32 4
  %58 = ptrtoint ptr %front.i96 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %front.i96, align 8
  %60 = add i32 %59, %slot.0.off0.i
  %conv10.i = and i32 %60, 31
  %arrayidx.i = getelementptr %struct.qfq_group, ptr %1, i32 0, i32 6, i32 %conv10.i
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i, align 4
  %63 = ptrtoint ptr %agg to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %62, ptr %agg, align 4
  %tobool.not.i.i = icmp eq ptr %62, null
  br i1 %tobool.not.i.i, label %if.end.i.qfq_slot_insert.exit_crit_edge, label %do.body12.i.i

if.end.i.qfq_slot_insert.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qfq_slot_insert.exit

do.body12.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %62, i32 0, i32 1
  %64 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %agg, ptr %pprev.i.i, align 4
  br label %qfq_slot_insert.exit

qfq_slot_insert.exit:                             ; preds = %do.body12.i.i, %if.end.i.qfq_slot_insert.exit_crit_edge
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %agg, ptr %arrayidx.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.hlist_node, ptr %agg, i32 0, i32 1
  %66 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %arrayidx.i, ptr %pprev34.i.i, align 4
  %rem.i.i = and i32 %slot.0.off0.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %slot.0.off0.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %full_slots, i32 %div2.i.i
  %67 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %68, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_class_hash_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qfq_destroy_class(ptr noundef %sch, ptr noundef %cl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %agg1.i = getelementptr inbounds %struct.qfq_class, ptr %cl, i32 0, i32 7
  %0 = ptrtoint ptr %agg1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %agg1.i, align 4
  store ptr null, ptr %agg1.i, align 4
  %num_classes.i = getelementptr inbounds %struct.qfq_aggregate, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num_classes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_classes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %nonfull_next.i.i = getelementptr inbounds %struct.qfq_aggregate, ptr %1, i32 0, i32 12
  %pprev.i.i.i.i = getelementptr inbounds %struct.qfq_aggregate, ptr %1, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.not.i.i.i, label %if.then.i.hlist_del_init.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i.hlist_del_init.exit.i.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hlist_del_init.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  %6 = ptrtoint ptr %nonfull_next.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nonfull_next.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %5, align 4
  %tobool.not.i3.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i3.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %5, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %10 = ptrtoint ptr %nonfull_next.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %nonfull_next.i.i, align 4
  %11 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pprev.i.i.i.i, align 4
  br label %hlist_del_init.exit.i.i

hlist_del_init.exit.i.i:                          ; preds = %__hlist_del.exit.i.i.i, %if.then.i.hlist_del_init.exit.i.i_crit_edge
  %class_weight.i.i = getelementptr inbounds %struct.qfq_aggregate, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %class_weight.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %class_weight.i.i, align 4
  %wsum.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 10
  %14 = ptrtoint ptr %wsum.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wsum.i.i, align 4
  %sub.i.i = sub i32 %15, %13
  store i32 %sub.i.i, ptr %wsum.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp.not.i.i = icmp eq i32 %15, %13
  br i1 %cmp.not.i.i, label %hlist_del_init.exit.i.i.if.end.i.i_crit_edge, label %if.then.i.i

hlist_del_init.exit.i.i.if.end.i.i_crit_edge:     ; preds = %hlist_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %hlist_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %div.i.i = udiv i32 1073741824, %sub.i.i
  %iwsum.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %16 = ptrtoint ptr %iwsum.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div.i.i, ptr %iwsum.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %hlist_del_init.exit.i.i.if.end.i.i_crit_edge
  %in_serv_agg.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %17 = ptrtoint ptr %in_serv_agg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %in_serv_agg.i.i, align 8
  %cmp3.i.i = icmp eq ptr %18, %1
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.end.i.i.qfq_destroy_agg.exit.i_crit_edge

if.end.i.i.qfq_destroy_agg.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qfq_destroy_agg.exit.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = tail call fastcc ptr @qfq_choose_next_agg(ptr noundef %privdata.i) #16
  %19 = ptrtoint ptr %in_serv_agg.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i, ptr %in_serv_agg.i.i, align 8
  br label %qfq_destroy_agg.exit.i

qfq_destroy_agg.exit.i:                           ; preds = %if.then4.i.i, %if.end.i.i.qfq_destroy_agg.exit.i_crit_edge
  tail call void @kfree(ptr noundef %1) #16
  br label %qfq_rm_from_agg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i = add i32 %3, -1
  tail call fastcc void @qfq_update_agg(ptr noundef %privdata.i, ptr noundef %1, i32 noundef %sub.i) #16
  br label %qfq_rm_from_agg.exit

qfq_rm_from_agg.exit:                             ; preds = %if.end.i, %qfq_destroy_agg.exit.i
  %rate_est = getelementptr inbounds %struct.qfq_class, ptr %cl, i32 0, i32 4
  tail call void @gen_kill_estimator(ptr noundef %rate_est) #16
  %qdisc = getelementptr inbounds %struct.qfq_class, ptr %cl, i32 0, i32 5
  %20 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qdisc, align 8
  tail call void @qdisc_put(ptr noundef %21) #16
  tail call void @kfree(ptr noundef %cl) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_basic(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_rate_est(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_app(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_queue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qfq_classify(ptr noundef %skb, ptr noundef %sch, ptr nocapture noundef writeonly %qerr) unnamed_addr #2 align 64 {
entry:
  %res = alloca %struct.tcf_result, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res) #16
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %res, align 4, !annotation !96
  %1 = getelementptr inbounds %struct.anon.118, ptr %res, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !96
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %3 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %priority, align 4
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %5 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %handle, align 32
  %xor = xor i32 %6, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %xor)
  %cmp = icmp ult i32 %xor, 65536
  br i1 %cmp, label %do.body, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qfq_classify.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qfq_classify, %if.then4)) #16
          to label %do.end [label %if.then4], !srcloc !89

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %priority, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qfq_classify.__UNIQUE_ID_ddebug367, ptr noundef nonnull @.str.27, i32 noundef %8) #16
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %9 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %do.end.if.end11_crit_edge, label %if.end.i.i

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.end.i.i:                                       ; preds = %do.end
  %clhash.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %hashmask.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %11 = ptrtoint ptr %hashmask.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hashmask.i.i, align 4
  %shr.i.i.i = lshr i32 %10, 8
  %xor.i.i.i = xor i32 %shr.i.i.i, %10
  %shr1.i.i.i = lshr i32 %xor.i.i.i, 4
  %xor2.i.i.i = xor i32 %shr1.i.i.i, %xor.i.i.i
  %and.i.i.i = and i32 %12, %xor2.i.i.i
  %13 = ptrtoint ptr %clhash.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clhash.i, align 4
  %arrayidx.i.i = getelementptr %struct.hlist_head, ptr %14, i32 %and.i.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %16, null
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 -4
  %tobool4.not3033.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool4.not30.i.i = or i1 %tobool2.not.i.i, %tobool4.not3033.i.i
  br i1 %tobool4.not30.i.i, label %if.end.i.i.if.end11_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.if.end11_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %cl.031.i.i = phi ptr [ %add.ptr13.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %17 = ptrtoint ptr %cl.031.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cl.031.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %10)
  %cmp.i.i = icmp eq i32 %18, %10
  br i1 %cmp.i.i, label %for.body.i.i.cleanup_crit_edge, label %for.inc.i.i

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.inc.i.i:                                      ; preds = %for.body.i.i
  %hnode.i.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %hnode.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hnode.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %20, null
  %add.ptr13.i.i = getelementptr i8, ptr %20, i32 -4
  %tobool4.not34.i.i = icmp eq ptr %add.ptr13.i.i, null
  %tobool4.not.i.i = or i1 %tobool9.not.i.i, %tobool4.not34.i.i
  br i1 %tobool4.not.i.i, label %for.inc.i.i.if.end11_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.inc.i.i.if.end11_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.end11:                                         ; preds = %for.inc.i.i.if.end11_crit_edge, %if.end.i.i.if.end11_crit_edge, %do.end.if.end11_crit_edge, %entry.if.end11_crit_edge
  %21 = ptrtoint ptr %qerr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 131072, ptr %qerr, align 4
  %22 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %privdata.i, align 8
  %call17 = tail call i32 @rcu_read_lock_bh_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true, label %if.end11.do.end26_crit_edge

if.end11.do.end26_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end26

land.lhs.true:                                    ; preds = %if.end11
  %call19 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true.do.end26_crit_edge, label %land.lhs.true21

land.lhs.true.do.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end26

land.lhs.true21:                                  ; preds = %land.lhs.true
  %.b52 = load i1, ptr @qfq_classify.__warned, align 1
  br i1 %.b52, label %land.lhs.true21.do.end26_crit_edge, label %if.then23

land.lhs.true21.do.end26_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end26

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @qfq_classify.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 692, ptr noundef nonnull @.str.28) #16
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %land.lhs.true21.do.end26_crit_edge, %land.lhs.true.do.end26_crit_edge, %if.end11.do.end26_crit_edge
  %call28 = call i32 @tcf_classify(ptr noundef %skb, ptr noundef null, ptr noundef %23, ptr noundef nonnull %res, i1 noundef zeroext false) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call28)
  %cmp29 = icmp sgt i32 %call28, -1
  br i1 %cmp29, label %if.then30, label %do.end26.cleanup_crit_edge

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then30:                                        ; preds = %do.end26
  %24 = zext i32 %call28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call28, label %sw.epilog [
    i32 5, label %if.then30.sw.bb_crit_edge
    i32 4, label %if.then30.sw.bb_crit_edge92
    i32 8, label %if.then30.sw.bb_crit_edge93
    i32 2, label %if.then30.cleanup_crit_edge
  ]

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then30.sw.bb_crit_edge93:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.then30.sw.bb_crit_edge92:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.then30.sw.bb_crit_edge:                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

sw.bb:                                            ; preds = %if.then30.sw.bb_crit_edge, %if.then30.sw.bb_crit_edge92, %if.then30.sw.bb_crit_edge93
  %25 = ptrtoint ptr %qerr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 65536, ptr %qerr, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %if.then30
  %26 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %res, align 4
  %28 = inttoptr i32 %27 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp32 = icmp eq i32 %27, 0
  br i1 %cmp32, label %if.then33, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then33:                                        ; preds = %sw.epilog
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i53 = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i53, label %if.then33.cleanup_crit_edge, label %if.end.i.i66

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i66:                                     ; preds = %if.then33
  %clhash.i54 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %hashmask.i.i55 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %31 = ptrtoint ptr %hashmask.i.i55 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hashmask.i.i55, align 4
  %shr.i.i.i56 = lshr i32 %30, 8
  %xor.i.i.i57 = xor i32 %shr.i.i.i56, %30
  %shr1.i.i.i58 = lshr i32 %xor.i.i.i57, 4
  %xor2.i.i.i59 = xor i32 %shr1.i.i.i58, %xor.i.i.i57
  %and.i.i.i60 = and i32 %32, %xor2.i.i.i59
  %33 = ptrtoint ptr %clhash.i54 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clhash.i54, align 4
  %arrayidx.i.i61 = getelementptr %struct.hlist_head, ptr %34, i32 %and.i.i.i60
  %35 = ptrtoint ptr %arrayidx.i.i61 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i61, align 4
  %tobool2.not.i.i62 = icmp eq ptr %36, null
  %add.ptr.i.i63 = getelementptr i8, ptr %36, i32 -4
  %tobool4.not3033.i.i64 = icmp eq ptr %add.ptr.i.i63, null
  %tobool4.not30.i.i65 = or i1 %tobool2.not.i.i62, %tobool4.not3033.i.i64
  br i1 %tobool4.not30.i.i65, label %if.end.i.i66.cleanup_crit_edge, label %if.end.i.i66.for.body.i.i69_crit_edge

if.end.i.i66.for.body.i.i69_crit_edge:            ; preds = %if.end.i.i66
  br label %for.body.i.i69

if.end.i.i66.cleanup_crit_edge:                   ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i.i69:                                   ; preds = %for.inc.i.i75.for.body.i.i69_crit_edge, %if.end.i.i66.for.body.i.i69_crit_edge
  %cl.031.i.i67 = phi ptr [ %add.ptr13.i.i72, %for.inc.i.i75.for.body.i.i69_crit_edge ], [ %add.ptr.i.i63, %if.end.i.i66.for.body.i.i69_crit_edge ]
  %37 = ptrtoint ptr %cl.031.i.i67 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cl.031.i.i67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %30)
  %cmp.i.i68 = icmp eq i32 %38, %30
  br i1 %cmp.i.i68, label %for.body.i.i69.cleanup_crit_edge, label %for.inc.i.i75

for.body.i.i69.cleanup_crit_edge:                 ; preds = %for.body.i.i69
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.inc.i.i75:                                    ; preds = %for.body.i.i69
  %hnode.i.i70 = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i67, i32 0, i32 1
  %39 = ptrtoint ptr %hnode.i.i70 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hnode.i.i70, align 4
  %tobool9.not.i.i71 = icmp eq ptr %40, null
  %add.ptr13.i.i72 = getelementptr i8, ptr %40, i32 -4
  %tobool4.not34.i.i73 = icmp eq ptr %add.ptr13.i.i72, null
  %tobool4.not.i.i74 = or i1 %tobool9.not.i.i71, %tobool4.not34.i.i73
  br i1 %tobool4.not.i.i74, label %for.inc.i.i75.cleanup_crit_edge, label %for.inc.i.i75.for.body.i.i69_crit_edge

for.inc.i.i75.for.body.i.i69_crit_edge:           ; preds = %for.inc.i.i75
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i69

for.inc.i.i75.cleanup_crit_edge:                  ; preds = %for.inc.i.i75
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.i75.cleanup_crit_edge, %for.body.i.i69.cleanup_crit_edge, %if.end.i.i66.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb, %if.then30.cleanup_crit_edge, %do.end26.cleanup_crit_edge, %for.body.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then30.cleanup_crit_edge ], [ null, %sw.bb ], [ %28, %sw.epilog.cleanup_crit_edge ], [ null, %do.end26.cleanup_crit_edge ], [ null, %if.then33.cleanup_crit_edge ], [ null, %if.end.i.i66.cleanup_crit_edge ], [ %cl.031.i.i67, %for.body.i.i69.cleanup_crit_edge ], [ null, %for.inc.i.i75.cleanup_crit_edge ], [ %cl.031.i.i, %for.body.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res) #16
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qfq_change_agg(ptr noundef %sch, ptr noundef %cl, i32 noundef %weight, i32 noundef %lmax) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %nonfull_aggs.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 8, i32 29, i32 12
  %0 = ptrtoint ptr %nonfull_aggs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nonfull_aggs.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -64
  %tobool2.not2529.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not25.i = or i1 %tobool.not.i, %tobool2.not2529.i
  br i1 %tobool2.not25.i, label %entry.if.then_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %agg.026.i = phi ptr [ %add.ptr11.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %entry.for.body.i_crit_edge ]
  %lmax3.i = getelementptr inbounds %struct.qfq_aggregate, ptr %agg.026.i, i32 0, i32 5
  %2 = ptrtoint ptr %lmax3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lmax3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %lmax)
  %cmp.i = icmp eq i32 %3, %lmax
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %class_weight.i = getelementptr inbounds %struct.qfq_aggregate, ptr %agg.026.i, i32 0, i32 4
  %4 = ptrtoint ptr %class_weight.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %class_weight.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %weight)
  %cmp4.i = icmp eq i32 %5, %weight
  br i1 %cmp4.i, label %land.lhs.true.i.if.end5_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i.if.end5_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %nonfull_next.i = getelementptr inbounds %struct.qfq_aggregate, ptr %agg.026.i, i32 0, i32 12
  %6 = ptrtoint ptr %nonfull_next.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nonfull_next.i, align 8
  %tobool7.not.i = icmp eq ptr %7, null
  %add.ptr11.i = getelementptr i8, ptr %7, i32 -64
  %tobool2.not30.i = icmp eq ptr %add.ptr11.i, null
  %tobool2.not.i = or i1 %tobool7.not.i, %tobool2.not30.i
  br i1 %tobool2.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2848, i32 noundef 72) #20
  %cmp3 = icmp eq ptr %call7.i.i, null
  br i1 %cmp3, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %if.then
  %active.i = getelementptr inbounds %struct.qfq_aggregate, ptr %call7.i.i, i32 0, i32 11
  %9 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %active.i, ptr %active.i, align 8
  %prev.i.i = getelementptr inbounds %struct.qfq_aggregate, ptr %call7.i.i, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %active.i, ptr %prev.i.i, align 4
  %nonfull_next.i16 = getelementptr inbounds %struct.qfq_aggregate, ptr %call7.i.i, i32 0, i32 12
  %11 = ptrtoint ptr %nonfull_aggs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nonfull_aggs.i, align 4
  %13 = ptrtoint ptr %nonfull_next.i16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %12, ptr %nonfull_next.i16, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.qfq_init_agg.exit_crit_edge, label %do.body12.i.i

if.end.qfq_init_agg.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %qfq_init_agg.exit

do.body12.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %nonfull_next.i16, ptr %pprev.i.i, align 4
  br label %qfq_init_agg.exit

qfq_init_agg.exit:                                ; preds = %do.body12.i.i, %if.end.qfq_init_agg.exit_crit_edge
  %15 = ptrtoint ptr %nonfull_aggs.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %nonfull_next.i16, ptr %nonfull_aggs.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.qfq_aggregate, ptr %call7.i.i, i32 0, i32 12, i32 1
  %16 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %nonfull_aggs.i, ptr %pprev34.i.i, align 4
  %lmax1.i = getelementptr inbounds %struct.qfq_aggregate, ptr %call7.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %lmax1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %lmax, ptr %lmax1.i, align 8
  %class_weight.i18 = getelementptr inbounds %struct.qfq_aggregate, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %class_weight.i18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %weight, ptr %class_weight.i18, align 4
  br label %if.end5

if.end5:                                          ; preds = %qfq_init_agg.exit, %land.lhs.true.i.if.end5_crit_edge
  %new_agg.0 = phi ptr [ %call7.i.i, %qfq_init_agg.exit ], [ %agg.026.i, %land.lhs.true.i.if.end5_crit_edge ]
  tail call fastcc void @qfq_deact_rm_from_agg(ptr noundef %privdata.i, ptr noundef %cl)
  %agg1.i = getelementptr inbounds %struct.qfq_class, ptr %cl, i32 0, i32 7
  %19 = ptrtoint ptr %agg1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %new_agg.0, ptr %agg1.i, align 4
  %num_classes.i = getelementptr inbounds %struct.qfq_aggregate, ptr %new_agg.0, i32 0, i32 10
  %20 = ptrtoint ptr %num_classes.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_classes.i, align 4
  %add.i = add i32 %21, 1
  tail call fastcc void @qfq_update_agg(ptr noundef %privdata.i, ptr noundef nonnull %new_agg.0, i32 noundef %add.i) #16
  %qdisc.i = getelementptr inbounds %struct.qfq_class, ptr %cl, i32 0, i32 5
  %22 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %qdisc.i, align 8
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %23, i32 0, i32 17, i32 2
  %24 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qlen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.not.i = icmp eq i32 %25, 0
  br i1 %cmp.not.i, label %if.end5.cleanup_crit_edge, label %if.then.i

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i:                                        ; preds = %if.end5
  %alist.i = getelementptr inbounds %struct.qfq_class, ptr %cl, i32 0, i32 6
  %active.i19 = getelementptr inbounds %struct.qfq_aggregate, ptr %new_agg.0, i32 0, i32 11
  %prev.i.i20 = getelementptr inbounds %struct.qfq_aggregate, ptr %new_agg.0, i32 0, i32 11, i32 1
  %26 = ptrtoint ptr %prev.i.i20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i20, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %alist.i, ptr noundef %27, ptr noundef %active.i19) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_add_tail.exit.i_crit_edge

if.then.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %prev.i.i20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %alist.i, ptr %prev.i.i20, align 4
  %29 = ptrtoint ptr %alist.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %active.i19, ptr %alist.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.qfq_class, ptr %cl, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %alist.i, ptr %27, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_add_tail.exit.i_crit_edge
  %32 = ptrtoint ptr %active.i19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %active.i19, align 8
  %add.ptr.i21 = getelementptr i8, ptr %33, i32 -92
  %cmp4.i22 = icmp eq ptr %add.ptr.i21, %cl
  br i1 %cmp4.i22, label %land.lhs.true.i23, label %list_add_tail.exit.i.cleanup_crit_edge

list_add_tail.exit.i.cleanup_crit_edge:           ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.i23:                                ; preds = %list_add_tail.exit.i
  %in_serv_agg.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %34 = ptrtoint ptr %in_serv_agg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %in_serv_agg.i, align 8
  %cmp5.not.i = icmp eq ptr %35, %new_agg.0
  br i1 %cmp5.not.i, label %land.lhs.true.i23.cleanup_crit_edge, label %if.then6.i

land.lhs.true.i23.cleanup_crit_edge:              ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then6.i:                                       ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @qfq_activate_agg(ptr noundef %privdata.i, ptr noundef nonnull %new_agg.0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then6.i, %land.lhs.true.i23.cleanup_crit_edge, %list_add_tail.exit.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -105, %if.then.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %list_add_tail.exit.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i23.cleanup_crit_edge ], [ 0, %if.then6.i ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_bstats_update(ptr noundef %bstats, i64 noundef %bytes, i32 noundef %packets) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %entry.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i

entry.u64_stats_update_begin.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !79) #16
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !98
  %5 = tail call i32 @llvm.read_register.i32(metadata !79) #16
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !99
  %14 = tail call i32 @llvm.read_register.i32(metadata !79) #16
  %and.i.i.i7.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge

land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !79) #16
  %and.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge

land.rhs.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !79) #16
  %and.i.i.i9.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %25, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !100
  %26 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !101
  %33 = tail call i32 @llvm.read_register.i32(metadata !79) #16
  %and.i.i.i12.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %36, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i, !prof !91

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %u64_stats_update_begin.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 271, i32 noundef 9, ptr noundef null) #16
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge, %entry.u64_stats_update_begin.exit_crit_edge
  %syncp = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !102
  %dep_map.i.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #16
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #16
  %conv.i = and i64 %bytes, 4294967295
  %41 = ptrtoint ptr %bstats to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %bstats, align 8
  %add.i = add i64 %42, %conv.i
  store i64 %add.i, ptr %bstats, align 8
  %packets2 = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 1
  %conv.i7 = zext i32 %packets to i64
  %43 = ptrtoint ptr %packets2 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %packets2, align 8
  %add.i8 = add i64 %44, %conv.i7
  store i64 %add.i8, ptr %packets2, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %40) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !103
  %45 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %46, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_move_tail(ptr noundef %list, ptr noundef %head) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #16
  br i1 %call.i, label %if.end.i, label %entry.__list_del_entry.exit_crit_edge

entry.__list_del_entry.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__list_del_entry.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %__list_del_entry.exit

__list_del_entry.exit:                            ; preds = %if.end.i, %entry.__list_del_entry.exit_crit_edge
  %prev.i2 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i2, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %7, ptr noundef %head) #16
  br i1 %call.i.i, label %if.end.i.i, label %__list_del_entry.exit.list_add_tail.exit_crit_edge

__list_del_entry.exit.list_add_tail.exit_crit_edge: ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i2, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %head, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %__list_del_entry.exit.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_classify(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__qdisc_calculate_pkt_len(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_block_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qdisc_class_hash_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_block_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_class_hash_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind readonly }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !17, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !56, !57, !59, !60, !62, !63, !64, !66, !67, !69, !71, !72, !74, !75, !76, !78}
!llvm.named.register.sp = !{!79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__initcall__kmod_sch_qfq__380_1521_qfq_init6, !1, !"__initcall__kmod_sch_qfq__380_1521_qfq_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_qfq.c", i32 1521, i32 1}
!2 = !{ptr @__exitcall_qfq_exit, !3, !"__exitcall_qfq_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_qfq.c", i32 1522, i32 1}
!4 = !{ptr @__UNIQUE_ID_file381, !5, !"__UNIQUE_ID_file381", i1 false, i1 false}
!5 = !{!"../net/sched/sch_qfq.c", i32 1523, i32 1}
!6 = !{ptr @__UNIQUE_ID_license382, !5, !"__UNIQUE_ID_license382", i1 false, i1 false}
!7 = !{ptr @qfq_qdisc_ops, !8, !"qfq_qdisc_ops", i1 false, i1 false}
!8 = !{!"../net/sched/sch_qfq.c", i32 1498, i32 25}
!9 = !{ptr @qfq_class_ops, !10, !"qfq_class_ops", i1 false, i1 false}
!10 = !{!"../net/sched/sch_qfq.c", i32 1483, i32 37}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/sched/sch_qfq.c", i32 924, i32 2}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @qfq_slot_scan.__UNIQUE_ID_ddebug370, !16, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/sched/sch_qfq.c", i32 406, i32 3}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @qfq_change_class._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @qfq_change_class._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/sched/sch_qfq.c", i32 418, i32 4}
!28 = !{ptr @qfq_change_class._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @qfq_change_class._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/sched/sch_qfq.c", i32 427, i32 4}
!32 = !{ptr @qfq_change_class._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @qfq_change_class._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/sched/sch_qfq.c", i32 444, i32 3}
!36 = !{ptr @qfq_change_class._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @qfq_change_class._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @qfq_policy, !39, !"qfq_policy", i1 false, i1 false}
!39 = !{!"../net/sched/sch_qfq.c", i32 217, i32 32}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/sched/sch_qfq.c", i32 243, i32 2}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @qfq_calc_index.__UNIQUE_ID_ddebug366, !41, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/sched/sch_qfq.c", i32 1303, i32 2}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @qfq_schedule_agg.__UNIQUE_ID_ddebug377, !45, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/net/netlink.h", i32 991, i32 3}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/sched/sch_qfq.c", i32 1213, i32 2}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @qfq_enqueue.__UNIQUE_ID_ddebug374, !51, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/sched/sch_qfq.c", i32 1216, i32 3}
!56 = !{ptr @qfq_enqueue.__UNIQUE_ID_ddebug375, !55, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/sched/sch_qfq.c", i32 1229, i32 3}
!59 = !{ptr @qfq_enqueue.__UNIQUE_ID_ddebug376, !58, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/sched/sch_qfq.c", i32 685, i32 3}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @qfq_classify.__UNIQUE_ID_ddebug367, !61, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../net/sched/sch_qfq.c", i32 692, i32 7}
!66 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../include/net/sch_generic.h", i32 835, i32 34}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!71 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/sched/sch_qfq.c", i32 1146, i32 2}
!74 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @qfq_dequeue.__UNIQUE_ID_ddebug373, !73, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../net/sched/sch_qfq.c", i32 997, i32 3}
!78 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!79 = !{!"sp"}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i64 2148993895, i64 2148993900, i64 2148993913, i64 2148993957, i64 2148993991, i64 2148994012}
!90 = !{!"branch_weights", i32 1, i32 2000}
!91 = !{!"branch_weights", i32 2000, i32 1}
!92 = !{i64 784218, i64 784279}
!93 = !{i64 786950}
!94 = !{i64 787235}
!95 = !{i32 0, i32 33}
!96 = !{!"auto-init"}
!97 = !{i64 2156457812, i64 2156458296, i64 2156457849, i64 2156457905, i64 2156457939, i64 2156457963, i64 2156458004, i64 2156458025, i64 2156458053, i64 2156458087}
!98 = !{i64 2149904676}
!99 = !{i64 2149909608}
!100 = !{i64 2149931320}
!101 = !{i64 2149936212}
!102 = !{i64 2150012669}
!103 = !{i64 2150012994}
