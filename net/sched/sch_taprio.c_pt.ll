; ModuleID = '/llk/IR_all_yes/net/sched/sch_taprio.c_pt.bc'
source_filename = "../net/sched/sch_taprio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+taprio_offload_get\22, \22a\22\09"
module asm "\09.weak\09__crc_taprio_offload_get\09\09\09\09"
module asm "\09.long\09__crc_taprio_offload_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_taprio_offload_get:\09\09\09\09\09"
module asm "\09.asciz \09\22taprio_offload_get\22\09\09\09\09\09"
module asm "__kstrtabns_taprio_offload_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+taprio_offload_free\22, \22a\22\09"
module asm "\09.weak\09__crc_taprio_offload_free\09\09\09\09"
module asm "\09.long\09__crc_taprio_offload_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_taprio_offload_free:\09\09\09\09\09"
module asm "\09.asciz \09\22taprio_offload_free\22\09\09\09\09\09"
module asm "__kstrtabns_taprio_offload_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.Qdisc_class_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.50 }
%union.anon.50 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, [64 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [8 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, ptr, [28 x i8], [0 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.152, [48 x i8], %union.anon.153, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.155, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.152 = type { i64 }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { i32, ptr }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.157, i32, i32, i32, i16, i16, %union.anon.159, i32, %union.anon.160, %union.anon.161, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.157 = type { i32 }
%union.anon.159 = type { i32 }
%union.anon.160 = type { i32 }
%union.anon.161 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.188, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.188 = type { ptr }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.sched_gate_list = type { %struct.callback_head, %struct.list_head, i32, i64, i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nlattr = type { i16, i16 }
%struct.sched_entry = type { %struct.list_head, i64, i64, %struct.atomic_t, i32, i32, i32, i8 }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.qdisc_walker = type { i32, i32, i32, ptr }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.49 }
%union.anon.49 = type { [4 x i32] }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.142, [0 x i32], %union.anon.143, i16, i16, %union.anon.144, %struct.refcount_struct, [0 x i32], %union.anon.145 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.142 = type { i32 }
%union.anon.143 = type { %struct.hlist_node }
%union.anon.144 = type { i32 }
%union.anon.145 = type { i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.taprio_sched = type { ptr, ptr, i32, i32, i32, %struct.atomic64_t, %struct.spinlock, ptr, ptr, ptr, %struct.hrtimer, %struct.list_head, ptr, ptr, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__tc_taprio_qopt_offload = type { %struct.refcount_struct, %struct.tc_taprio_qopt_offload }
%struct.tc_taprio_qopt_offload = type { i8, i64, i64, i64, i32, [0 x %struct.tc_taprio_sched_entry] }
%struct.tc_taprio_sched_entry = type { i8, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.183, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.183 = type { [3 x i32], [3 x i32], [3 x i32] }

@__kstrtab_taprio_offload_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_taprio_offload_get = external dso_local constant [0 x i8], align 1
@__ksymtab_taprio_offload_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @taprio_offload_get to i32), ptr @__kstrtab_taprio_offload_get, ptr @__kstrtabns_taprio_offload_get }, section "___ksymtab_gpl+taprio_offload_get", align 4
@__kstrtab_taprio_offload_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_taprio_offload_free = external dso_local constant [0 x i8], align 1
@__ksymtab_taprio_offload_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @taprio_offload_free to i32), ptr @__kstrtab_taprio_offload_free, ptr @__kstrtabns_taprio_offload_free }, section "___ksymtab_gpl+taprio_offload_free", align 4
@taprio_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr @taprio_class_ops, [16 x i8] c"taprio\00\00\00\00\00\00\00\00\00\00", i32 160, i32 0, ptr @taprio_enqueue, ptr @taprio_dequeue, ptr @taprio_peek, ptr @taprio_init, ptr @taprio_reset, ptr @taprio_destroy, ptr @taprio_change, ptr @taprio_attach, ptr null, ptr null, ptr @taprio_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@taprio_device_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @taprio_dev_notifier, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_sch_taprio__652_2063_taprio_module_init6 = internal global ptr @taprio_module_init, section ".initcall6.init", align 4
@__exitcall_taprio_module_exit = internal global ptr @taprio_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file653 = internal constant [37 x i8] c"sch_taprio.file=net/sched/sch_taprio\00", section ".modinfo", align 1
@__UNIQUE_ID_license654 = internal constant [23 x i8] c"sch_taprio.license=GPL\00", section ".modinfo", align 1
@taprio_class_ops = internal constant { %struct.Qdisc_class_ops, [40 x i8] } { %struct.Qdisc_class_ops { i32 0, ptr @taprio_select_queue, ptr @taprio_graft, ptr @taprio_leaf, ptr null, ptr @taprio_find, ptr null, ptr null, ptr @taprio_walk, ptr null, ptr null, ptr null, ptr @taprio_dump_class, ptr @taprio_dump_class_stats }, [40 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@taprio_enqueue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/sched/sch_taprio.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"Trying to enqueue skb into the root of a taprio qdisc configured with full offload\0A\00", [44 x i8] zeroinitializer }, align 32
@is_valid_interval.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@is_valid_interval.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@get_packet_txtime.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@get_packet_txtime.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@qdisc_calculate_pkt_len.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@taprio_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&q->current_entry_lock\00", [41 x i8] zeroinitializer }, align 32
@taprio_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.12 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@taprio_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @taprio_list, ptr @taprio_list }, [24 x i8] zeroinitializer }, align 32
@pfifo_qdisc_ops = external dso_local global %struct.Qdisc_ops, align 4
@advance_sched.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@advance_sched.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@advance_sched.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@taprio_dequeue_soft.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@taprio_peek_soft.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"taprio_list_lock\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@taprio_disable_offload.__msg = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Not enough memory to disable offload mode\00", [54 x i8] zeroinitializer }, align 32
@taprio_disable_offload.__msg.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Device failed to disable offload\00", [63 x i8] zeroinitializer }, align 32
@taprio_policy = internal constant { [12 x %struct.nla_policy], [32 x i8] } { [12 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 82, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 15, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 14, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 15, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 15, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@taprio_change.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Not enough memory for a new schedule\00", [59 x i8] zeroinitializer }, align 32
@taprio_change.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@taprio_change.__warned.16 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@taprio_change.__msg.17 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Changing the traffic mapping of a running schedule is not supported\00", [60 x i8] zeroinitializer }, align 32
@taprio_change.__msg.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"There should be at least one entry in the schedule\00", [45 x i8] zeroinitializer }, align 32
@taprio_change.__msg.19 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"sch_taprio: txtime-delay can only be set when txtime-assist mode is enabled\00", [52 x i8] zeroinitializer }, align 32
@taprio_change.__msg.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Internal error: failed get start time\00", [58 x i8] zeroinitializer }, align 32
@taprio_new_flags.__msg = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"sch_taprio: Changing 'flags' of a running schedule is not supported\00", [60 x i8] zeroinitializer }, align 32
@taprio_new_flags.__msg.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sch_taprio: Specified 'flags' are not valid\00", [52 x i8] zeroinitializer }, align 32
@taprio_parse_mqprio_opt.__msg = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"'mqprio' configuration is necessary\00", [60 x i8] zeroinitializer }, align 32
@taprio_parse_mqprio_opt.__msg.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Number of traffic classes is outside valid range\00", [47 x i8] zeroinitializer }, align 32
@taprio_parse_mqprio_opt.__msg.23 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Number of traffic classes is greater than number of HW queues\00", [34 x i8] zeroinitializer }, align 32
@taprio_parse_mqprio_opt.__msg.24 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Invalid traffic class in priority to traffic class mapping\00", [37 x i8] zeroinitializer }, align 32
@taprio_parse_mqprio_opt.__msg.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Invalid queue in traffic class to queue mapping\00", [48 x i8] zeroinitializer }, align 32
@taprio_parse_mqprio_opt.__msg.26 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Detected overlap in the traffic class to queue mapping\00", [41 x i8] zeroinitializer }, align 32
@parse_taprio_schedule.__msg = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Adding a single entry is not supported\00", [57 x i8] zeroinitializer }, align 32
@parse_taprio_schedule.__msg.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"'cycle_time' can never be 0\00", [36 x i8] zeroinitializer }, align 32
@parse_sched_list.__msg = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Attribute is not of type 'entry'\00", [63 x i8] zeroinitializer }, align 32
@parse_sched_list.__msg.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Not enough memory for entry\00", [36 x i8] zeroinitializer }, align 32
@entry_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.50 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@parse_sched_entry.__msg = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not parse nested entry\00", [35 x i8] zeroinitializer }, align 32
@fill_sched_entry.__msg = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid interval for schedule entry\00", [60 x i8] zeroinitializer }, align 32
@taprio_parse_clockid.__msg = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"The 'clockid' cannot be specified for full offload\00", [45 x i8] zeroinitializer }, align 32
@taprio_parse_clockid.__msg.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Device does not have a PTP clock\00", [63 x i8] zeroinitializer }, align 32
@taprio_parse_clockid.__msg.30 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Changing the 'clockid' of a running schedule is not supported\00", [34 x i8] zeroinitializer }, align 32
@taprio_parse_clockid.__msg.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid 'clockid'\00", [46 x i8] zeroinitializer }, align 32
@taprio_parse_clockid.__msg.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Specifying a 'clockid' is mandatory\00", [60 x i8] zeroinitializer }, align 32
@taprio_set_picos_per_byte.__UNIQUE_ID_ddebug633 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.34, ptr @.str, ptr @.str.35, i8 1, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sch_taprio\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"taprio_set_picos_per_byte\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"taprio: set %s's picos_per_byte to: %lld, linkspeed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@taprio_enable_offload.__msg = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Device does not support taprio offload\00", [57 x i8] zeroinitializer }, align 32
@taprio_enable_offload.__msg.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Not enough memory for enabling offload mode\00", [52 x i8] zeroinitializer }, align 32
@taprio_enable_offload.__msg.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Device failed to setup taprio offload\00", [58 x i8] zeroinitializer }, align 32
@taprio_dequeue_offload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Trying to dequeue from the root of a taprio qdisc configured with full offload\0A\00", [48 x i8] zeroinitializer }, align 32
@taprio_peek_offload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Trying to peek into the root of a taprio qdisc configured with full offload\0A\00", [51 x i8] zeroinitializer }, align 32
@taprio_offload_config_changed.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@taprio_offload_config_changed.__warned.40 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@taprio_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@taprio_dump.__warned.41 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@taprio_dev_notifier.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 7, i64 11]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 4, i64 4, i64 6]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 41]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@___asan_gen_.48 = private unnamed_addr constant [23 x i8] c"taprio_device_notifier\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 2043, i32 30 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"taprio_class_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 2017, i32 37 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 443, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 271, i32 10 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 695, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 723, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 835, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1682, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"taprio_list_lock\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [12 x i8] c"taprio_list\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 28, i32 8 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 715, i32 10 }
@___asan_gen_.91 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 271, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 29, i32 8 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1302, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1310, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [14 x i8] c"taprio_policy\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 781, i32 32 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1486, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1501, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1511, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1549, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1577, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1441, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1446, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 938, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 950, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 956, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 963, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 977, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 987, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 893, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 920, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 861, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 867, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant [13 x i8] c"entry_policy\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 774, i32 32 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 837, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 818, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1343, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1352, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1366, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1386, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1395, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1090, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1259, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1266, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1275, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 647, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 538, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 991, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.208 = private constant [26 x i8] c"../net/sched/sch_taprio.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1103, i32 2 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_file653, ptr @__UNIQUE_ID_license654, ptr @__exitcall_taprio_module_exit, ptr @__initcall__kmod_sch_taprio__652_2063_taprio_module_init6, ptr @__ksymtab_taprio_offload_free, ptr @__ksymtab_taprio_offload_get, ptr @taprio_module_exit, ptr @taprio_device_notifier, ptr @taprio_class_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @taprio_init.__key, ptr @.str.9, ptr @taprio_list_lock, ptr @taprio_list, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @taprio_disable_offload.__msg, ptr @taprio_disable_offload.__msg.15, ptr @taprio_policy, ptr @taprio_change.__msg, ptr @taprio_change.__msg.17, ptr @taprio_change.__msg.18, ptr @taprio_change.__msg.19, ptr @taprio_change.__msg.20, ptr @taprio_new_flags.__msg, ptr @taprio_new_flags.__msg.21, ptr @taprio_parse_mqprio_opt.__msg, ptr @taprio_parse_mqprio_opt.__msg.22, ptr @taprio_parse_mqprio_opt.__msg.23, ptr @taprio_parse_mqprio_opt.__msg.24, ptr @taprio_parse_mqprio_opt.__msg.25, ptr @taprio_parse_mqprio_opt.__msg.26, ptr @parse_taprio_schedule.__msg, ptr @parse_taprio_schedule.__msg.27, ptr @parse_sched_list.__msg, ptr @parse_sched_list.__msg.28, ptr @entry_policy, ptr @parse_sched_entry.__msg, ptr @fill_sched_entry.__msg, ptr @taprio_parse_clockid.__msg, ptr @taprio_parse_clockid.__msg.29, ptr @taprio_parse_clockid.__msg.30, ptr @taprio_parse_clockid.__msg.31, ptr @taprio_parse_clockid.__msg.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @taprio_enable_offload.__msg, ptr @taprio_enable_offload.__msg.36, ptr @taprio_enable_offload.__msg.37, ptr @.str.38, ptr @.str.39, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_device_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_class_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_disable_offload.__msg to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_disable_offload.__msg.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_policy to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_change.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_change.__msg.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_change.__msg.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_change.__msg.19 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_change.__msg.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_new_flags.__msg to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_new_flags.__msg.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_parse_mqprio_opt.__msg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_parse_mqprio_opt.__msg.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_parse_mqprio_opt.__msg.23 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_parse_mqprio_opt.__msg.24 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_parse_mqprio_opt.__msg.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_parse_mqprio_opt.__msg.26 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_taprio_schedule.__msg to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_taprio_schedule.__msg.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_sched_list.__msg to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_sched_list.__msg.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @entry_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_sched_entry.__msg to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fill_sched_entry.__msg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_parse_clockid.__msg to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_parse_clockid.__msg.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_parse_clockid.__msg.30 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_parse_clockid.__msg.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_parse_clockid.__msg.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_enable_offload.__msg to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_enable_offload.__msg.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taprio_enable_offload.__msg.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @taprio_offload_get(ptr noundef returned %offload) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %offload, i32 -8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #14, !srcloc !162
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !163

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !164

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef %.sink.i.i.i) #14
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret ptr %offload
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @taprio_offload_free(ptr noundef %offload) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %offload, i32 -8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !165
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #14, !srcloc !166
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !164

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef 3) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !167
  tail call void @kfree(ptr noundef %add.ptr) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @taprio_module_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @taprio_qdisc_ops) #14
  %call1 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @taprio_device_notifier) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @taprio_module_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @taprio_device_notifier) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 @register_qdisc(ptr noundef nonnull @taprio_qdisc_ops) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @taprio_enqueue(ptr noundef %skb, ptr noundef %sch, ptr noundef %to_free) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end43, label %land.end, !prof !164

land.end:                                         ; preds = %entry
  %.b153 = load i1, ptr @taprio_enqueue.__already_done, align 1
  br i1 %.b153, label %land.end.if.end34_crit_edge, label %if.then13, !prof !164

land.end.if.end34_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then13:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @taprio_enqueue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 443, i32 noundef 9, ptr noundef nonnull @.str.1) #14
  br label %if.end34

if.end34:                                         ; preds = %if.then13, %land.end.if.end34_crit_edge
  %2 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %to_free, align 4
  %4 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %5 = ptrtoint ptr %drops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %drops.i.i.i, align 4
  %inc.i.i.i = add i32 %6, 1
  store i32 %inc.i.i.i, ptr %drops.i.i.i, align 4
  br label %cleanup108

if.end43:                                         ; preds = %entry
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %7 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %8 to i32
  %9 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %privdata.i, align 8
  %arrayidx = getelementptr ptr, ptr %10, i32 %conv
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool45.not = icmp eq ptr %12, null
  br i1 %tobool45.not, label %if.then54, label %if.end56, !prof !163

if.then54:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %to_free, align 4
  %15 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i154 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %16 = ptrtoint ptr %drops.i.i.i154 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %drops.i.i.i154, align 4
  %inc.i.i.i155 = add i32 %17, 1
  store i32 %inc.i.i.i155, ptr %drops.i.i.i154, align 4
  br label %cleanup108

if.end56:                                         ; preds = %if.end43
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %18 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.i.not = icmp eq i16 %21, 0
  br i1 %tobool.i.not, label %if.end106, label %if.then62

if.then62:                                        ; preds = %if.end56
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %22 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cb.i.i, align 4
  %call64 = tail call i64 @netif_skb_features(ptr noundef %skb) #14
  %and65 = and i64 %call64, -34359672833
  %call.i = tail call ptr @__skb_gso_segment(ptr noundef %skb, i64 noundef %and65, i1 noundef zeroext true) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then68, label %cond.end

if.then68:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %to_free, align 4
  %26 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i156 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %27 = ptrtoint ptr %drops.i.i.i156 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %drops.i.i.i156, align 4
  %inc.i.i.i157 = add i32 %28, 1
  store i32 %inc.i.i.i157, ptr %drops.i.i.i156, align 4
  br label %cleanup108

cond.end:                                         ; preds = %if.then62
  %drops.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %cond.end
  %segs.0161 = phi ptr [ %call.i, %cond.end ], [ %nskb.0162, %for.inc.for.body_crit_edge ]
  %numsegs.0160 = phi i32 [ 0, %cond.end ], [ %numsegs.1, %for.inc.for.body_crit_edge ]
  %slen.0159 = phi i32 [ 0, %cond.end ], [ %add, %for.inc.for.body_crit_edge ]
  %29 = ptrtoint ptr %segs.0161 to i32
  call void @__asan_load4_noabort(i32 %29)
  %nskb.0162 = load ptr, ptr %segs.0161, align 8
  store ptr null, ptr %segs.0161, align 8
  %len73 = getelementptr inbounds %struct.sk_buff, ptr %segs.0161, i32 0, i32 6
  %30 = ptrtoint ptr %len73 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len73, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %segs.0161, i32 0, i32 3
  %32 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %cb.i, align 4
  %add = add i32 %31, %slen.0159
  %call76 = tail call fastcc i32 @taprio_enqueue_one(ptr noundef nonnull %segs.0161, ptr noundef %sch, ptr noundef nonnull %12, ptr noundef %to_free)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp.not = icmp eq i32 %call76, 0
  br i1 %cmp.not, label %if.else, label %if.then78

if.then78:                                        ; preds = %for.body
  %and79 = and i32 %call76, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.then83, label %if.then78.for.inc_crit_edge

if.then78.for.inc_crit_edge:                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then83:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %drops.i.i, align 4
  %inc.i.i = add i32 %34, 1
  store i32 %inc.i.i, ptr %drops.i.i, align 4
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add i32 %numsegs.0160, 1
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then83, %if.then78.for.inc_crit_edge
  %numsegs.1 = phi i32 [ %numsegs.0160, %if.then78.for.inc_crit_edge ], [ %numsegs.0160, %if.then83 ], [ %inc, %if.else ]
  %tobool86.not = icmp eq ptr %nskb.0162, null
  br i1 %tobool86.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %numsegs.1)
  %cmp92 = icmp ugt i32 %numsegs.1, 1
  br i1 %cmp92, label %if.then94, label %for.end.if.end96_crit_edge

for.end.if.end96_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96

if.then94:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i32 1, %numsegs.1
  %sub95 = sub i32 %23, %add
  tail call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef %sub, i32 noundef %sub95) #14
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %for.end.if.end96_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %numsegs.1)
  %cmp97.not = icmp eq i32 %numsegs.1, 0
  %cond99 = zext i1 %cmp97.not to i32
  br label %cleanup108

if.end106:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  %call107 = tail call fastcc i32 @taprio_enqueue_one(ptr noundef %skb, ptr noundef %sch, ptr noundef nonnull %12, ptr noundef %to_free)
  br label %cleanup108

cleanup108:                                       ; preds = %if.end106, %if.end96, %if.then68, %if.then54, %if.end34
  %retval.1 = phi i32 [ 1, %if.end34 ], [ 1, %if.then54 ], [ %call107, %if.end106 ], [ 1, %if.then68 ], [ %cond99, %if.end96 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @taprio_dequeue(ptr noundef %sch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dequeue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dequeue, align 8
  %call1 = tail call ptr %1(ptr noundef %sch) #14
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @taprio_peek(ptr noundef %sch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %peek = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 2
  %0 = ptrtoint ptr %peek to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peek, align 4
  %call1 = tail call ptr %1(ptr noundef %sch) #14
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @taprio_init(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %current_entry_lock = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %current_entry_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @taprio_init.__key, i16 noundef signext 3) #14
  %advance_timer = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  tail call void @hrtimer_init(ptr noundef %advance_timer, i32 noundef 11, i32 noundef 0) #14
  %function = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 56
  %4 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @advance_sched, ptr %function, align 8
  %dequeue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %dequeue to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @taprio_dequeue_soft, ptr %dequeue, align 8
  %peek = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %peek to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @taprio_peek_soft, ptr %peek, align 4
  %root = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %7 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sch, ptr %root, align 4
  %clockid = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %8 = ptrtoint ptr %clockid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %clockid, align 8
  %flags = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %flags, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @taprio_list_lock) #14
  %taprio_list = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 1
  %10 = load ptr, ptr @taprio_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %taprio_list, ptr noundef nonnull @taprio_list, ptr noundef %10) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %taprio_list, ptr %prev1.i.i, align 4
  %12 = ptrtoint ptr %taprio_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %taprio_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @taprio_list, ptr %prev3.i.i, align 4
  store volatile ptr %taprio_list, ptr @taprio_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @taprio_list_lock) #14
  %parent = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %parent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.not = icmp eq i32 %15, -1
  br i1 %cmp.not, label %if.end, label %list_add.exit.cleanup30_crit_edge

list_add.exit.cleanup30_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup30

if.end:                                           ; preds = %list_add.exit
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %16 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i = icmp ugt i32 %17, 1
  br i1 %cmp.i, label %if.end6, label %if.end.cleanup30_crit_edge

if.end.cleanup30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup30

if.end6:                                          ; preds = %if.end
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 4) #14
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !163

kcalloc.exit.thread:                              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %privdata.i, align 8
  br label %cleanup30

if.end7.i.i:                                      ; preds = %if.end6
  %21 = extractvalue { i32, i1 } %18, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #17
  %22 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call8.i.i, ptr %privdata.i, align 8
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup30_crit_edge, label %if.end10

if.end7.i.i.cleanup30_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup30

if.end10:                                         ; preds = %if.end7.i.i
  %tobool11.not = icmp eq ptr %opt, null
  br i1 %tobool11.not, label %if.end10.cleanup30_crit_edge, label %for.cond.preheader

if.end10.cleanup30_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup30

for.cond.preheader:                               ; preds = %if.end10
  %23 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp1568.not = icmp eq i32 %24, 0
  br i1 %cmp1568.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %real_num_tx_queues = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 105
  br label %for.body

for.body:                                         ; preds = %if.end26.for.body_crit_edge, %for.body.lr.ph
  %i.069 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end26.for.body_crit_edge ]
  %25 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %_tx.i, align 128
  %arrayidx.i = getelementptr %struct.netdev_queue, ptr %26, i32 %i.069
  %27 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %handle, align 32
  %and = and i32 %28, -65536
  %add = add nuw i32 %i.069, 1
  %and18 = and i32 %add, 65535
  %or = or i32 %and, %and18
  %call20 = tail call ptr @qdisc_create_dflt(ptr noundef %arrayidx.i, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %or, ptr noundef %extack) #14
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %for.body.cleanup30_crit_edge, label %if.end23

for.body.cleanup30_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup30

if.end23:                                         ; preds = %for.body
  %29 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %real_num_tx_queues, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.069, i32 %30)
  %cmp24 = icmp ult i32 %i.069, %30
  br i1 %cmp24, label %if.then25, label %if.end23.if.end26_crit_edge

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @qdisc_hash_add(ptr noundef nonnull %call20, i1 noundef zeroext false) #14
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23.if.end26_crit_edge
  %31 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %privdata.i, align 8
  %arrayidx = getelementptr ptr, ptr %32, i32 %i.069
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call20, ptr %arrayidx, align 4
  %34 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_tx_queues.i, align 4
  %cmp15 = icmp ult i32 %add, %35
  br i1 %cmp15, label %if.end26.for.body_crit_edge, label %if.end26.for.end_crit_edge

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %if.end26.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call29 = tail call i32 @taprio_change(ptr noundef %sch, ptr noundef nonnull %opt, ptr noundef %extack)
  br label %cleanup30

cleanup30:                                        ; preds = %for.end, %for.body.cleanup30_crit_edge, %if.end10.cleanup30_crit_edge, %if.end7.i.i.cleanup30_crit_edge, %kcalloc.exit.thread, %if.end.cleanup30_crit_edge, %list_add.exit.cleanup30_crit_edge
  %retval.2 = phi i32 [ %call29, %for.end ], [ -95, %list_add.exit.cleanup30_crit_edge ], [ -95, %if.end.cleanup30_crit_edge ], [ -12, %if.end7.i.i.cleanup30_crit_edge ], [ -22, %if.end10.cleanup30_crit_edge ], [ -12, %kcalloc.exit.thread ], [ -12, %for.body.cleanup30_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @taprio_reset(ptr noundef %sch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %advance_timer = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %call2 = tail call i32 @hrtimer_cancel(ptr noundef %advance_timer) #14
  %4 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %privdata.i, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %for.cond.preheader

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

for.cond.preheader:                               ; preds = %entry
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %6 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp19.not = icmp eq i32 %7, 0
  br i1 %cmp19.not, label %for.cond.preheader.if.end8_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end8_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.020 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %8 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %privdata.i, align 8
  %arrayidx = getelementptr ptr, ptr %9, i32 %i.020
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.then5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @qdisc_reset(ptr noundef nonnull %11) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.020, 1
  %12 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end8_crit_edge

for.inc.if.end8_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end8:                                          ; preds = %for.inc.if.end8_crit_edge, %for.cond.preheader.if.end8_crit_edge, %entry.if.end8_crit_edge
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %14 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %backlog, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %15 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %qlen, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @taprio_destroy(ptr noundef %sch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  tail call void @_raw_spin_lock(ptr noundef nonnull @taprio_list_lock) #14
  %taprio_list = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %taprio_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %taprio_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %taprio_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %10 = ptrtoint ptr %taprio_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %taprio_list, align 4
  %prev.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @taprio_list_lock) #14
  %advance_timer = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %call2 = tail call i32 @hrtimer_cancel(ptr noundef %advance_timer) #14
  %call3 = tail call fastcc i32 @taprio_disable_offload(ptr noundef %3, ptr noundef %privdata.i, ptr noundef null)
  %12 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %privdata.i, align 8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %list_del.exit.if.end_crit_edge, label %for.cond.preheader

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.cond.preheader:                               ; preds = %list_del.exit
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %14 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp32.not = icmp eq i32 %15, 0
  br i1 %cmp32.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.033 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %16 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %privdata.i, align 8
  %arrayidx = getelementptr ptr, ptr %17, i32 %i.033
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  tail call void @qdisc_put(ptr noundef %19) #14
  %inc = add nuw i32 %i.033, 1
  %20 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %22 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %privdata.i, align 8
  tail call void @kfree(ptr noundef %23) #14
  br label %if.end

if.end:                                           ; preds = %for.end, %list_del.exit.if.end_crit_edge
  %24 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %privdata.i, align 8
  tail call void @netdev_reset_tc(ptr noundef %3) #14
  %oper_sched = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %25 = ptrtoint ptr %oper_sched to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %oper_sched, align 8
  %tobool7.not = icmp eq ptr %26, null
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @call_rcu(ptr noundef nonnull %26, ptr noundef nonnull @taprio_free_sched_cb) #14
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %admin_sched = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 20
  %27 = ptrtoint ptr %admin_sched to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %admin_sched, align 4
  %tobool11.not = icmp eq ptr %28, null
  br i1 %tobool11.not, label %if.end10.if.end15_crit_edge, label %if.then12

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @call_rcu(ptr noundef nonnull %28, ptr noundef nonnull @taprio_free_sched_cb) #14
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @taprio_change(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #0 align 64 {
entry:
  %info.i = alloca %struct.ethtool_ts_info, align 4
  %tb.i.i.i = alloca [5 x ptr], align 4
  %tmp.i85.i = alloca i64, align 8
  %tmp.i83.i = alloca i64, align 8
  %tmp.i.i = alloca i64, align 8
  %tb = alloca [12 x ptr], align 4
  %start = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %tb) #14
  %0 = call ptr @memset(ptr %tb, i32 0, i32 48)
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %1 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_queue.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start) #14
  %5 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %start, align 8, !annotation !168
  %add.ptr.i.i = getelementptr i8, ptr %opt, i32 4
  %6 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %opt, align 2
  %conv.i.i = zext i16 %7 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 11, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @taprio_policy, i32 noundef 0, ptr noundef %extack) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [12 x ptr], ptr %tb, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %spec.select = select i1 %tobool.not, ptr null, ptr %add.ptr.i
  %arrayidx7 = getelementptr inbounds [12 x ptr], ptr %tb, i32 0, i32 10
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx7, align 4
  %flags8 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %12 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags8, align 8
  %tobool.not.i470 = icmp eq ptr %11, null
  br i1 %tobool.not.i470, label %if.end.if.end.i_crit_edge, label %if.then.i471

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i471:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i471, %if.end.if.end.i_crit_edge
  %new.0.i = phi i32 [ %15, %if.then.i471 ], [ 0, %if.end.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.not.i = icmp eq i32 %13, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %new.0.i, i32 %13)
  %cmp1.not.i = icmp eq i32 %new.0.i, %13
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp1.not.i
  br i1 %or.cond.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @taprio_new_flags.__msg) #14
  %tobool3.not.i = icmp eq ptr %extack, null
  br i1 %tobool3.not.i, label %do.body.i.cleanup_crit_edge, label %do.body.i.cleanup.sink.split.i_crit_edge

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %new.0.i)
  %tobool.not.i.i = icmp ult i32 %new.0.i, 4
  %16 = and i32 %new.0.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %17 = icmp ne i32 %16, 3
  %retval.0.i.i = and i1 %tobool.not.i.i, %17
  br i1 %retval.0.i.i, label %if.end12, label %do.body9.i

do.body9.i:                                       ; preds = %if.end6.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @taprio_new_flags.__msg.21) #14
  %tobool11.not.i = icmp eq ptr %extack, null
  br i1 %tobool11.not.i, label %do.body9.i.cleanup_crit_edge, label %do.body9.i.cleanup.sink.split.i_crit_edge

do.body9.i.cleanup.sink.split.i_crit_edge:        ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i

do.body9.i.cleanup_crit_edge:                     ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.sink.split.i:                             ; preds = %do.body9.i.cleanup.sink.split.i_crit_edge, %do.body.i.cleanup.sink.split.i_crit_edge
  %taprio_new_flags.__msg.21.sink.i = phi ptr [ @taprio_new_flags.__msg, %do.body.i.cleanup.sink.split.i_crit_edge ], [ @taprio_new_flags.__msg.21, %do.body9.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -95, %do.body.i.cleanup.sink.split.i_crit_edge ], [ -22, %do.body9.i.cleanup.sink.split.i_crit_edge ]
  %18 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %taprio_new_flags.__msg.21.sink.i, ptr %extack, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end6.i
  %19 = ptrtoint ptr %flags8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %new.0.i, ptr %flags8, align 8
  %tobool.not.i472 = icmp eq ptr %spec.select, null
  br i1 %tobool.not.i472, label %land.lhs.true.i473, label %if.end12.if.end4.i_crit_edge

if.end12.if.end4.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i

land.lhs.true.i473:                               ; preds = %if.end12
  %num_tc.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 140
  %20 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %num_tc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool1.not.i = icmp eq i16 %21, 0
  br i1 %tobool1.not.i, label %do.body.i474, label %land.lhs.true.i473.if.end4.i_crit_edge

land.lhs.true.i473.if.end4.i_crit_edge:           ; preds = %land.lhs.true.i473
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i

do.body.i474:                                     ; preds = %land.lhs.true.i473
  call void @do_trace_netlink_extack(ptr noundef nonnull @taprio_parse_mqprio_opt.__msg) #14
  %tobool2.not.i = icmp eq ptr %extack, null
  br i1 %tobool2.not.i, label %do.body.i474.cleanup_crit_edge, label %do.body.i474.cleanup115.sink.split.i_crit_edge

do.body.i474.cleanup115.sink.split.i_crit_edge:   ; preds = %do.body.i474
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115.sink.split.i

do.body.i474.cleanup_crit_edge:                   ; preds = %do.body.i474
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4.i:                                        ; preds = %land.lhs.true.i473.if.end4.i_crit_edge, %if.end12.if.end4.i_crit_edge
  %num_tc5.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 140
  %22 = ptrtoint ptr %num_tc5.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_tc5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool6.not.i = icmp eq i16 %23, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.if.end18_crit_edge

if.end4.i.if.end18_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.end8.i:                                        ; preds = %if.end4.i
  %24 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %spec.select, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %25)
  %cmp.i = icmp ugt i8 %25, 16
  br i1 %cmp.i, label %do.body12.i, label %if.end20.i

do.body12.i:                                      ; preds = %if.end8.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @taprio_parse_mqprio_opt.__msg.22) #14
  %tobool14.not.i = icmp eq ptr %extack, null
  br i1 %tobool14.not.i, label %do.body12.i.cleanup_crit_edge, label %do.body12.i.cleanup115.sink.split.i_crit_edge

do.body12.i.cleanup115.sink.split.i_crit_edge:    ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115.sink.split.i

do.body12.i.cleanup_crit_edge:                    ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end20.i:                                       ; preds = %if.end8.i
  %conv.i = zext i8 %25 to i32
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 104
  %26 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv.i)
  %cmp23.i = icmp ult i32 %27, %conv.i
  br i1 %cmp23.i, label %do.body26.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end20.i
  %arrayidx.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 0
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %25)
  %cmp40.not.i = icmp ult i8 %29, %25
  br i1 %cmp40.not.i, label %for.cond.i, label %for.body.preheader.i.do.body43.i_crit_edge

for.body.preheader.i.do.body43.i_crit_edge:       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body43.i

do.body26.i:                                      ; preds = %if.end20.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @taprio_parse_mqprio_opt.__msg.23) #14
  %tobool28.not.i = icmp eq ptr %extack, null
  br i1 %tobool28.not.i, label %do.body26.i.cleanup_crit_edge, label %do.body26.i.cleanup115.sink.split.i_crit_edge

do.body26.i.cleanup115.sink.split.i_crit_edge:    ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115.sink.split.i

do.body26.i.cleanup_crit_edge:                    ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.preheader.i
  %arrayidx.1.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %25)
  %cmp40.not.1.i = icmp ult i8 %31, %25
  br i1 %cmp40.not.1.i, label %for.cond.1.i, label %for.cond.i.do.body43.i_crit_edge

for.cond.i.do.body43.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body43.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %25)
  %cmp40.not.2.i = icmp ult i8 %33, %25
  br i1 %cmp40.not.2.i, label %for.cond.2.i, label %for.cond.1.i.do.body43.i_crit_edge

for.cond.1.i.do.body43.i_crit_edge:               ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body43.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 3
  %34 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %25)
  %cmp40.not.3.i = icmp ult i8 %35, %25
  br i1 %cmp40.not.3.i, label %for.cond.3.i, label %for.cond.2.i.do.body43.i_crit_edge

for.cond.2.i.do.body43.i_crit_edge:               ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body43.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 4
  %36 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %25)
  %cmp40.not.4.i = icmp ult i8 %37, %25
  br i1 %cmp40.not.4.i, label %for.cond.4.i, label %for.cond.3.i.do.body43.i_crit_edge

for.cond.3.i.do.body43.i_crit_edge:               ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body43.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx.5.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 5
  %38 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %25)
  %cmp40.not.5.i = icmp ult i8 %39, %25
  br i1 %cmp40.not.5.i, label %for.cond.5.i, label %for.cond.4.i.do.body43.i_crit_edge

for.cond.4.i.do.body43.i_crit_edge:               ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body43.i

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %arrayidx.6.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 6
  %40 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %25)
  %cmp40.not.6.i = icmp ult i8 %41, %25
  br i1 %cmp40.not.6.i, label %for.cond.6.i, label %for.cond.5.i.do.body43.i_crit_edge

for.cond.5.i.do.body43.i_crit_edge:               ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body43.i

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %arrayidx.7.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 7
  %42 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.7.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %25)
  %cmp40.not.7.i = icmp ult i8 %43, %25
  br i1 %cmp40.not.7.i, label %for.cond.7.i, label %for.cond.6.i.do.body43.i_crit_edge

for.cond.6.i.do.body43.i_crit_edge:               ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body43.i

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %arrayidx.8.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 8
  %44 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.8.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %25)
  %cmp40.not.8.i = icmp ult i8 %45, %25
  br i1 %cmp40.not.8.i, label %for.cond.8.i, label %for.cond.7.i.do.body43.i_crit_edge

for.cond.7.i.do.body43.i_crit_edge:               ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body43.i

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %arrayidx.9.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 9
  %46 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.9.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %25)
  %cmp40.not.9.i = icmp ult i8 %47, %25
  br i1 %cmp40.not.9.i, label %for.cond.9.i, label %for.cond.8.i.do.body43.i_crit_edge

for.cond.8.i.do.body43.i_crit_edge:               ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body43.i

for.cond.9.i:                                     ; preds = %for.cond.8.i
  %arrayidx.10.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 10
  %48 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.10.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %25)
  %cmp40.not.10.i = icmp ult i8 %49, %25
  br i1 %cmp40.not.10.i, label %for.cond.10.i, label %for.cond.9.i.do.body43.i_crit_edge

for.cond.9.i.do.body43.i_crit_edge:               ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body43.i

for.cond.10.i:                                    ; preds = %for.cond.9.i
  %arrayidx.11.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 11
  %50 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.11.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %25)
  %cmp40.not.11.i = icmp ult i8 %51, %25
  br i1 %cmp40.not.11.i, label %for.cond.11.i, label %for.cond.10.i.do.body43.i_crit_edge

for.cond.10.i.do.body43.i_crit_edge:              ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body43.i

for.cond.11.i:                                    ; preds = %for.cond.10.i
  %arrayidx.12.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 12
  %52 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.12.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %25)
  %cmp40.not.12.i = icmp ult i8 %53, %25
  br i1 %cmp40.not.12.i, label %for.cond.12.i, label %for.cond.11.i.do.body43.i_crit_edge

for.cond.11.i.do.body43.i_crit_edge:              ; preds = %for.cond.11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body43.i

for.cond.12.i:                                    ; preds = %for.cond.11.i
  %arrayidx.13.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 13
  %54 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.13.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %25)
  %cmp40.not.13.i = icmp ult i8 %55, %25
  br i1 %cmp40.not.13.i, label %for.cond.13.i, label %for.cond.12.i.do.body43.i_crit_edge

for.cond.12.i.do.body43.i_crit_edge:              ; preds = %for.cond.12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body43.i

for.cond.13.i:                                    ; preds = %for.cond.12.i
  %arrayidx.14.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 14
  %56 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.14.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %25)
  %cmp40.not.14.i = icmp ult i8 %57, %25
  br i1 %cmp40.not.14.i, label %for.cond.14.i, label %for.cond.13.i.do.body43.i_crit_edge

for.cond.13.i.do.body43.i_crit_edge:              ; preds = %for.cond.13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body43.i

for.cond.14.i:                                    ; preds = %for.cond.13.i
  %arrayidx.15.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 15
  %58 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.15.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %25)
  %cmp40.not.15.i = icmp ult i8 %59, %25
  br i1 %cmp40.not.15.i, label %for.body57.lr.ph.i, label %for.cond.14.i.do.body43.i_crit_edge

for.cond.14.i.do.body43.i_crit_edge:              ; preds = %for.cond.14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body43.i

for.body57.lr.ph.i:                               ; preds = %for.cond.14.i
  %real_num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 105
  %and.i = and i32 %new.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool84.not.i = icmp eq i32 %and.i, 0
  br label %for.body57.i

do.body43.i:                                      ; preds = %for.cond.14.i.do.body43.i_crit_edge, %for.cond.13.i.do.body43.i_crit_edge, %for.cond.12.i.do.body43.i_crit_edge, %for.cond.11.i.do.body43.i_crit_edge, %for.cond.10.i.do.body43.i_crit_edge, %for.cond.9.i.do.body43.i_crit_edge, %for.cond.8.i.do.body43.i_crit_edge, %for.cond.7.i.do.body43.i_crit_edge, %for.cond.6.i.do.body43.i_crit_edge, %for.cond.5.i.do.body43.i_crit_edge, %for.cond.4.i.do.body43.i_crit_edge, %for.cond.3.i.do.body43.i_crit_edge, %for.cond.2.i.do.body43.i_crit_edge, %for.cond.1.i.do.body43.i_crit_edge, %for.cond.i.do.body43.i_crit_edge, %for.body.preheader.i.do.body43.i_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @taprio_parse_mqprio_opt.__msg.24) #14
  %tobool45.not.i = icmp eq ptr %extack, null
  br i1 %tobool45.not.i, label %do.body43.i.cleanup_crit_edge, label %do.body43.i.cleanup115.sink.split.i_crit_edge

do.body43.i.cleanup115.sink.split.i_crit_edge:    ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115.sink.split.i

do.body43.i.cleanup_crit_edge:                    ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body57.i:                                     ; preds = %for.inc112.i.for.body57.i_crit_edge, %for.body57.lr.ph.i
  %i.1158.i = phi i32 [ 0, %for.body57.lr.ph.i ], [ %inc113.i, %for.inc112.i.for.body57.i_crit_edge ]
  %arrayidx58.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 4, i32 %i.1158.i
  %60 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx58.i, align 2
  %conv59.i = zext i16 %61 to i32
  %arrayidx60.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 3, i32 %i.1158.i
  %62 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx60.i, align 2
  %conv61.i = zext i16 %63 to i32
  %add.i = add nuw nsw i32 %conv61.i, %conv59.i
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv59.i)
  %cmp66.not.i = icmp ule i32 %27, %conv59.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool70.not.i = icmp eq i16 %63, 0
  %or.cond.i475 = select i1 %cmp66.not.i, i1 true, i1 %tobool70.not.i
  br i1 %or.cond.i475, label %for.body57.i.do.body75.i_crit_edge, label %lor.lhs.false71.i

for.body57.i.do.body75.i_crit_edge:               ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body75.i

lor.lhs.false71.i:                                ; preds = %for.body57.i
  %64 = ptrtoint ptr %real_num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %real_num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %65)
  %cmp72.i = icmp ugt i32 %add.i, %65
  br i1 %cmp72.i, label %lor.lhs.false71.i.do.body75.i_crit_edge, label %if.end83.i

lor.lhs.false71.i.do.body75.i_crit_edge:          ; preds = %lor.lhs.false71.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body75.i

do.body75.i:                                      ; preds = %lor.lhs.false71.i.do.body75.i_crit_edge, %for.body57.i.do.body75.i_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @taprio_parse_mqprio_opt.__msg.25) #14
  %tobool77.not.i = icmp eq ptr %extack, null
  br i1 %tobool77.not.i, label %do.body75.i.cleanup_crit_edge, label %do.body75.i.cleanup115.sink.split.i_crit_edge

do.body75.i.cleanup115.sink.split.i_crit_edge:    ; preds = %do.body75.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115.sink.split.i

do.body75.i.cleanup_crit_edge:                    ; preds = %do.body75.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end83.i:                                       ; preds = %lor.lhs.false71.i
  br i1 %tobool84.not.i, label %if.end83.i.for.cond88.i_crit_edge, label %if.end83.i.for.inc112.i_crit_edge

if.end83.i.for.inc112.i_crit_edge:                ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc112.i

if.end83.i.for.cond88.i_crit_edge:                ; preds = %if.end83.i
  br label %for.cond88.i

for.cond88.i:                                     ; preds = %for.body93.i.for.cond88.i_crit_edge, %if.end83.i.for.cond88.i_crit_edge
  %j.0.in.i = phi i32 [ %j.0.i, %for.body93.i.for.cond88.i_crit_edge ], [ %i.1158.i, %if.end83.i.for.cond88.i_crit_edge ]
  %j.0.i = add nuw nsw i32 %j.0.in.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.i, i32 %conv.i)
  %cmp91.i = icmp ult i32 %j.0.i, %conv.i
  br i1 %cmp91.i, label %for.body93.i, label %for.cond88.i.for.inc112.i_crit_edge

for.cond88.i.for.inc112.i_crit_edge:              ; preds = %for.cond88.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc112.i

for.body93.i:                                     ; preds = %for.cond88.i
  %arrayidx95.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 4, i32 %j.0.i
  %66 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx95.i, align 2
  %conv96.i = zext i16 %67 to i32
  %cmp97.i = icmp ugt i32 %add.i, %conv96.i
  br i1 %cmp97.i, label %do.body100.i, label %for.body93.i.for.cond88.i_crit_edge

for.body93.i.for.cond88.i_crit_edge:              ; preds = %for.body93.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond88.i

do.body100.i:                                     ; preds = %for.body93.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @taprio_parse_mqprio_opt.__msg.26) #14
  %tobool102.not.i = icmp eq ptr %extack, null
  br i1 %tobool102.not.i, label %do.body100.i.cleanup_crit_edge, label %do.body100.i.cleanup115.sink.split.i_crit_edge

do.body100.i.cleanup115.sink.split.i_crit_edge:   ; preds = %do.body100.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115.sink.split.i

do.body100.i.cleanup_crit_edge:                   ; preds = %do.body100.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc112.i:                                     ; preds = %for.cond88.i.for.inc112.i_crit_edge, %if.end83.i.for.inc112.i_crit_edge
  %inc113.i = add nuw nsw i32 %i.1158.i, 1
  %exitcond.not.i = icmp eq i32 %inc113.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc112.i.if.end18_crit_edge, label %for.inc112.i.for.body57.i_crit_edge

for.inc112.i.for.body57.i_crit_edge:              ; preds = %for.inc112.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body57.i

for.inc112.i.if.end18_crit_edge:                  ; preds = %for.inc112.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

cleanup115.sink.split.i:                          ; preds = %do.body100.i.cleanup115.sink.split.i_crit_edge, %do.body75.i.cleanup115.sink.split.i_crit_edge, %do.body43.i.cleanup115.sink.split.i_crit_edge, %do.body26.i.cleanup115.sink.split.i_crit_edge, %do.body12.i.cleanup115.sink.split.i_crit_edge, %do.body.i474.cleanup115.sink.split.i_crit_edge
  %taprio_parse_mqprio_opt.__msg.26.sink.i = phi ptr [ @taprio_parse_mqprio_opt.__msg, %do.body.i474.cleanup115.sink.split.i_crit_edge ], [ @taprio_parse_mqprio_opt.__msg.22, %do.body12.i.cleanup115.sink.split.i_crit_edge ], [ @taprio_parse_mqprio_opt.__msg.23, %do.body26.i.cleanup115.sink.split.i_crit_edge ], [ @taprio_parse_mqprio_opt.__msg.24, %do.body43.i.cleanup115.sink.split.i_crit_edge ], [ @taprio_parse_mqprio_opt.__msg.25, %do.body75.i.cleanup115.sink.split.i_crit_edge ], [ @taprio_parse_mqprio_opt.__msg.26, %do.body100.i.cleanup115.sink.split.i_crit_edge ]
  %68 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %taprio_parse_mqprio_opt.__msg.26.sink.i, ptr %extack, align 4
  br label %cleanup

if.end18:                                         ; preds = %for.inc112.i.if.end18_crit_edge, %if.end4.i.if.end18_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %69 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 3520, i32 noundef 56) #18
  %tobool20.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool20.not, label %do.body, label %if.end25

do.body:                                          ; preds = %if.end18
  call void @do_trace_netlink_extack(ptr noundef nonnull @taprio_change.__msg) #14
  %tobool22.not = icmp eq ptr %extack, null
  br i1 %tobool22.not, label %do.body.cleanup_crit_edge, label %if.then23

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %70 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @taprio_change.__msg, ptr %extack, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %entries = getelementptr inbounds %struct.sched_gate_list, ptr %call7.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %entries, ptr %entries, align 8
  %prev.i = getelementptr inbounds %struct.sched_gate_list, ptr %call7.i.i, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %entries, ptr %prev.i, align 4
  %73 = call i32 @llvm.read_register.i32(metadata !152) #14
  %and.i.i.i.i.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %76, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end25.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end25.rcu_read_lock.exit_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end25
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end25.rcu_read_lock.exit_crit_edge
  %oper_sched = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %77 = ptrtoint ptr %oper_sched to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %oper_sched, align 8
  %call30 = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end39_crit_edge

rcu_read_lock.exit.do.end39_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end39

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call32 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true.do.end39_crit_edge, label %land.lhs.true34

land.lhs.true.do.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end39

land.lhs.true34:                                  ; preds = %land.lhs.true
  %.b468 = load i1, ptr @taprio_change.__warned, align 1
  br i1 %.b468, label %land.lhs.true34.do.end39_crit_edge, label %if.then36

land.lhs.true34.do.end39_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end39

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @taprio_change.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1492, ptr noundef nonnull @.str.2) #14
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %land.lhs.true34.do.end39_crit_edge, %land.lhs.true.do.end39_crit_edge, %rcu_read_lock.exit.do.end39_crit_edge
  %admin_sched = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 20
  %79 = ptrtoint ptr %admin_sched to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %admin_sched, align 4
  %call46 = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %land.lhs.true48, label %do.end39.do.end56_crit_edge

do.end39.do.end56_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end56

land.lhs.true48:                                  ; preds = %do.end39
  %call49 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true48.do.end56_crit_edge, label %land.lhs.true51

land.lhs.true48.do.end56_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end56

land.lhs.true51:                                  ; preds = %land.lhs.true48
  %.b466467 = load i1, ptr @taprio_change.__warned.16, align 1
  br i1 %.b466467, label %land.lhs.true51.do.end56_crit_edge, label %if.then53

land.lhs.true51.do.end56_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end56

if.then53:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @taprio_change.__warned.16, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1493, ptr noundef nonnull @.str.2) #14
  br label %do.end56

do.end56:                                         ; preds = %if.then53, %land.lhs.true51.do.end56_crit_edge, %land.lhs.true48.do.end56_crit_edge, %do.end39.do.end56_crit_edge
  %call.i476 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i476, label %do.end56.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i479

do.end56.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i479:                               ; preds = %do.end56
  %call1.i477 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i477)
  %tobool.not.i478 = icmp eq i32 %call1.i477, 0
  br i1 %tobool.not.i478, label %land.lhs.true.i479.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i481

land.lhs.true.i479.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i479
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i481:                              ; preds = %land.lhs.true.i479
  %.b4.i480 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i480, label %land.lhs.true2.i481.rcu_read_unlock.exit_crit_edge, label %if.then.i482

land.lhs.true2.i481.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i481
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i482:                                     ; preds = %land.lhs.true2.i481
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i482, %land.lhs.true2.i481.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i479.rcu_read_unlock.exit_crit_edge, %do.end56.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !170
  %81 = call i32 @llvm.read_register.i32(metadata !152) #14
  %and.i.i.i.i.i483 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i.i.i483 to ptr
  %preempt_count.i.i.i.i484 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i.i.i484 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i.i.i484, align 4
  %sub.i.i.i = add i32 %84, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i484, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br i1 %tobool.not.i472, label %rcu_read_unlock.exit.if.end75_crit_edge, label %lor.lhs.false.i

rcu_read_unlock.exit.if.end75_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

lor.lhs.false.i:                                  ; preds = %rcu_read_unlock.exit
  %85 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %spec.select, align 2
  %conv.i486 = zext i8 %86 to i32
  %87 = ptrtoint ptr %num_tc5.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %num_tc5.i, align 4
  %conv2.i = sext i16 %88 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i486, i32 %conv2.i)
  %cmp.not.i487 = icmp eq i32 %conv.i486, %conv2.i
  br i1 %cmp.not.i487, label %for.cond.preheader.i, label %lor.lhs.false.i.land.lhs.true63_crit_edge

lor.lhs.false.i.land.lhs.true63_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true63

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp659.not.i = icmp eq i8 %86, 0
  br i1 %cmp659.not.i, label %for.cond.preheader.i.for.cond25.preheader.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.cond25.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond25.preheader.i

for.cond.i489:                                    ; preds = %lor.lhs.false14.i
  %inc.i = add nuw nsw i32 %i.060.i, 1
  %exitcond.not.i488 = icmp eq i32 %inc.i, %conv.i486
  br i1 %exitcond.not.i488, label %for.cond.i489.for.cond25.preheader.i_crit_edge, label %for.cond.i489.for.body.i_crit_edge

for.cond.i489.for.body.i_crit_edge:               ; preds = %for.cond.i489
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.cond.i489.for.cond25.preheader.i_crit_edge:   ; preds = %for.cond.i489
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond25.preheader.i

for.cond25.preheader.i:                           ; preds = %for.cond.i489.for.cond25.preheader.i_crit_edge, %for.cond.preheader.i.for.cond25.preheader.i_crit_edge
  %arrayidx29.i = getelementptr %struct.net_device, ptr %4, i32 0, i32 142, i32 0
  %89 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx29.i, align 1
  %arrayidx32.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 0
  %91 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx32.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %90, i8 %92)
  %cmp34.not.i = icmp eq i8 %90, %92
  br i1 %cmp34.not.i, label %for.cond25.i, label %for.cond25.preheader.i.land.lhs.true63_crit_edge

for.cond25.preheader.i.land.lhs.true63_crit_edge: ; preds = %for.cond25.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true63

for.body.i:                                       ; preds = %for.cond.i489.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.060.i = phi i32 [ %inc.i, %for.cond.i489.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i490 = getelementptr %struct.net_device, ptr %4, i32 0, i32 141, i32 %i.060.i
  %93 = ptrtoint ptr %arrayidx.i490 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx.i490, align 2
  %arrayidx10.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 3, i32 %i.060.i
  %95 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx10.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %94, i16 %96)
  %cmp12.not.i = icmp eq i16 %94, %96
  br i1 %cmp12.not.i, label %lor.lhs.false14.i, label %for.body.i.land.lhs.true63_crit_edge

for.body.i.land.lhs.true63_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true63

lor.lhs.false14.i:                                ; preds = %for.body.i
  %offset.i = getelementptr %struct.net_device, ptr %4, i32 0, i32 141, i32 %i.060.i, i32 1
  %97 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %offset.i, align 2
  %arrayidx19.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 4, i32 %i.060.i
  %99 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arrayidx19.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %98, i16 %100)
  %cmp21.not.i = icmp eq i16 %98, %100
  br i1 %cmp21.not.i, label %for.cond.i489, label %lor.lhs.false14.i.land.lhs.true63_crit_edge

lor.lhs.false14.i.land.lhs.true63_crit_edge:      ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true63

for.cond25.i:                                     ; preds = %for.cond25.preheader.i
  %arrayidx29.1.i = getelementptr %struct.net_device, ptr %4, i32 0, i32 142, i32 1
  %101 = ptrtoint ptr %arrayidx29.1.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx29.1.i, align 1
  %arrayidx32.1.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 1
  %103 = ptrtoint ptr %arrayidx32.1.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx32.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %102, i8 %104)
  %cmp34.not.1.i = icmp eq i8 %102, %104
  br i1 %cmp34.not.1.i, label %for.cond25.1.i, label %for.cond25.i.land.lhs.true63_crit_edge

for.cond25.i.land.lhs.true63_crit_edge:           ; preds = %for.cond25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true63

for.cond25.1.i:                                   ; preds = %for.cond25.i
  %arrayidx29.2.i = getelementptr %struct.net_device, ptr %4, i32 0, i32 142, i32 2
  %105 = ptrtoint ptr %arrayidx29.2.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx29.2.i, align 1
  %arrayidx32.2.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 2
  %107 = ptrtoint ptr %arrayidx32.2.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx32.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %106, i8 %108)
  %cmp34.not.2.i = icmp eq i8 %106, %108
  br i1 %cmp34.not.2.i, label %for.cond25.2.i, label %for.cond25.1.i.land.lhs.true63_crit_edge

for.cond25.1.i.land.lhs.true63_crit_edge:         ; preds = %for.cond25.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true63

for.cond25.2.i:                                   ; preds = %for.cond25.1.i
  %arrayidx29.3.i = getelementptr %struct.net_device, ptr %4, i32 0, i32 142, i32 3
  %109 = ptrtoint ptr %arrayidx29.3.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx29.3.i, align 1
  %arrayidx32.3.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 3
  %111 = ptrtoint ptr %arrayidx32.3.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx32.3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %110, i8 %112)
  %cmp34.not.3.i = icmp eq i8 %110, %112
  br i1 %cmp34.not.3.i, label %for.cond25.3.i, label %for.cond25.2.i.land.lhs.true63_crit_edge

for.cond25.2.i.land.lhs.true63_crit_edge:         ; preds = %for.cond25.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true63

for.cond25.3.i:                                   ; preds = %for.cond25.2.i
  %arrayidx29.4.i = getelementptr %struct.net_device, ptr %4, i32 0, i32 142, i32 4
  %113 = ptrtoint ptr %arrayidx29.4.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx29.4.i, align 1
  %arrayidx32.4.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 4
  %115 = ptrtoint ptr %arrayidx32.4.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx32.4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %114, i8 %116)
  %cmp34.not.4.i = icmp eq i8 %114, %116
  br i1 %cmp34.not.4.i, label %for.cond25.4.i, label %for.cond25.3.i.land.lhs.true63_crit_edge

for.cond25.3.i.land.lhs.true63_crit_edge:         ; preds = %for.cond25.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true63

for.cond25.4.i:                                   ; preds = %for.cond25.3.i
  %arrayidx29.5.i = getelementptr %struct.net_device, ptr %4, i32 0, i32 142, i32 5
  %117 = ptrtoint ptr %arrayidx29.5.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx29.5.i, align 1
  %arrayidx32.5.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 5
  %119 = ptrtoint ptr %arrayidx32.5.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx32.5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %118, i8 %120)
  %cmp34.not.5.i = icmp eq i8 %118, %120
  br i1 %cmp34.not.5.i, label %for.cond25.5.i, label %for.cond25.4.i.land.lhs.true63_crit_edge

for.cond25.4.i.land.lhs.true63_crit_edge:         ; preds = %for.cond25.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true63

for.cond25.5.i:                                   ; preds = %for.cond25.4.i
  %arrayidx29.6.i = getelementptr %struct.net_device, ptr %4, i32 0, i32 142, i32 6
  %121 = ptrtoint ptr %arrayidx29.6.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx29.6.i, align 1
  %arrayidx32.6.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 6
  %123 = ptrtoint ptr %arrayidx32.6.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx32.6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %122, i8 %124)
  %cmp34.not.6.i = icmp eq i8 %122, %124
  br i1 %cmp34.not.6.i, label %for.cond25.6.i, label %for.cond25.5.i.land.lhs.true63_crit_edge

for.cond25.5.i.land.lhs.true63_crit_edge:         ; preds = %for.cond25.5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true63

for.cond25.6.i:                                   ; preds = %for.cond25.5.i
  %arrayidx29.7.i = getelementptr %struct.net_device, ptr %4, i32 0, i32 142, i32 7
  %125 = ptrtoint ptr %arrayidx29.7.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx29.7.i, align 1
  %arrayidx32.7.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 7
  %127 = ptrtoint ptr %arrayidx32.7.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx32.7.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %126, i8 %128)
  %cmp34.not.7.i = icmp eq i8 %126, %128
  br i1 %cmp34.not.7.i, label %for.cond25.7.i, label %for.cond25.6.i.land.lhs.true63_crit_edge

for.cond25.6.i.land.lhs.true63_crit_edge:         ; preds = %for.cond25.6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true63

for.cond25.7.i:                                   ; preds = %for.cond25.6.i
  %arrayidx29.8.i = getelementptr %struct.net_device, ptr %4, i32 0, i32 142, i32 8
  %129 = ptrtoint ptr %arrayidx29.8.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx29.8.i, align 1
  %arrayidx32.8.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 8
  %131 = ptrtoint ptr %arrayidx32.8.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx32.8.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %130, i8 %132)
  %cmp34.not.8.i = icmp eq i8 %130, %132
  br i1 %cmp34.not.8.i, label %for.cond25.8.i, label %for.cond25.7.i.land.lhs.true63_crit_edge

for.cond25.7.i.land.lhs.true63_crit_edge:         ; preds = %for.cond25.7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true63

for.cond25.8.i:                                   ; preds = %for.cond25.7.i
  %arrayidx29.9.i = getelementptr %struct.net_device, ptr %4, i32 0, i32 142, i32 9
  %133 = ptrtoint ptr %arrayidx29.9.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx29.9.i, align 1
  %arrayidx32.9.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 9
  %135 = ptrtoint ptr %arrayidx32.9.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx32.9.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %134, i8 %136)
  %cmp34.not.9.i = icmp eq i8 %134, %136
  br i1 %cmp34.not.9.i, label %for.cond25.9.i, label %for.cond25.8.i.land.lhs.true63_crit_edge

for.cond25.8.i.land.lhs.true63_crit_edge:         ; preds = %for.cond25.8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true63

for.cond25.9.i:                                   ; preds = %for.cond25.8.i
  %arrayidx29.10.i = getelementptr %struct.net_device, ptr %4, i32 0, i32 142, i32 10
  %137 = ptrtoint ptr %arrayidx29.10.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx29.10.i, align 1
  %arrayidx32.10.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 10
  %139 = ptrtoint ptr %arrayidx32.10.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx32.10.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %138, i8 %140)
  %cmp34.not.10.i = icmp eq i8 %138, %140
  br i1 %cmp34.not.10.i, label %for.cond25.10.i, label %for.cond25.9.i.land.lhs.true63_crit_edge

for.cond25.9.i.land.lhs.true63_crit_edge:         ; preds = %for.cond25.9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true63

for.cond25.10.i:                                  ; preds = %for.cond25.9.i
  %arrayidx29.11.i = getelementptr %struct.net_device, ptr %4, i32 0, i32 142, i32 11
  %141 = ptrtoint ptr %arrayidx29.11.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx29.11.i, align 1
  %arrayidx32.11.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 11
  %143 = ptrtoint ptr %arrayidx32.11.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx32.11.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %142, i8 %144)
  %cmp34.not.11.i = icmp eq i8 %142, %144
  br i1 %cmp34.not.11.i, label %for.cond25.11.i, label %for.cond25.10.i.land.lhs.true63_crit_edge

for.cond25.10.i.land.lhs.true63_crit_edge:        ; preds = %for.cond25.10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true63

for.cond25.11.i:                                  ; preds = %for.cond25.10.i
  %arrayidx29.12.i = getelementptr %struct.net_device, ptr %4, i32 0, i32 142, i32 12
  %145 = ptrtoint ptr %arrayidx29.12.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx29.12.i, align 1
  %arrayidx32.12.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 12
  %147 = ptrtoint ptr %arrayidx32.12.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx32.12.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %146, i8 %148)
  %cmp34.not.12.i = icmp eq i8 %146, %148
  br i1 %cmp34.not.12.i, label %for.cond25.12.i, label %for.cond25.11.i.land.lhs.true63_crit_edge

for.cond25.11.i.land.lhs.true63_crit_edge:        ; preds = %for.cond25.11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true63

for.cond25.12.i:                                  ; preds = %for.cond25.11.i
  %arrayidx29.13.i = getelementptr %struct.net_device, ptr %4, i32 0, i32 142, i32 13
  %149 = ptrtoint ptr %arrayidx29.13.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx29.13.i, align 1
  %arrayidx32.13.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 13
  %151 = ptrtoint ptr %arrayidx32.13.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx32.13.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %150, i8 %152)
  %cmp34.not.13.i = icmp eq i8 %150, %152
  br i1 %cmp34.not.13.i, label %for.cond25.13.i, label %for.cond25.12.i.land.lhs.true63_crit_edge

for.cond25.12.i.land.lhs.true63_crit_edge:        ; preds = %for.cond25.12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true63

for.cond25.13.i:                                  ; preds = %for.cond25.12.i
  %arrayidx29.14.i = getelementptr %struct.net_device, ptr %4, i32 0, i32 142, i32 14
  %153 = ptrtoint ptr %arrayidx29.14.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx29.14.i, align 1
  %arrayidx32.14.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 14
  %155 = ptrtoint ptr %arrayidx32.14.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx32.14.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %154, i8 %156)
  %cmp34.not.14.i = icmp eq i8 %154, %156
  br i1 %cmp34.not.14.i, label %taprio_mqprio_cmp.exit, label %for.cond25.13.i.land.lhs.true63_crit_edge

for.cond25.13.i.land.lhs.true63_crit_edge:        ; preds = %for.cond25.13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true63

taprio_mqprio_cmp.exit:                           ; preds = %for.cond25.13.i
  %arrayidx29.15.i = getelementptr %struct.net_device, ptr %4, i32 0, i32 142, i32 15
  %157 = ptrtoint ptr %arrayidx29.15.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx29.15.i, align 1
  %arrayidx32.15.i = getelementptr %struct.tc_mqprio_qopt, ptr %spec.select, i32 0, i32 1, i32 15
  %159 = ptrtoint ptr %arrayidx32.15.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx32.15.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %158, i8 %160)
  %cmp34.not.15.i.not = icmp eq i8 %158, %160
  br i1 %cmp34.not.15.i.not, label %taprio_mqprio_cmp.exit.if.end75_crit_edge, label %taprio_mqprio_cmp.exit.land.lhs.true63_crit_edge

taprio_mqprio_cmp.exit.land.lhs.true63_crit_edge: ; preds = %taprio_mqprio_cmp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true63

taprio_mqprio_cmp.exit.if.end75_crit_edge:        ; preds = %taprio_mqprio_cmp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

land.lhs.true63:                                  ; preds = %taprio_mqprio_cmp.exit.land.lhs.true63_crit_edge, %for.cond25.13.i.land.lhs.true63_crit_edge, %for.cond25.12.i.land.lhs.true63_crit_edge, %for.cond25.11.i.land.lhs.true63_crit_edge, %for.cond25.10.i.land.lhs.true63_crit_edge, %for.cond25.9.i.land.lhs.true63_crit_edge, %for.cond25.8.i.land.lhs.true63_crit_edge, %for.cond25.7.i.land.lhs.true63_crit_edge, %for.cond25.6.i.land.lhs.true63_crit_edge, %for.cond25.5.i.land.lhs.true63_crit_edge, %for.cond25.4.i.land.lhs.true63_crit_edge, %for.cond25.3.i.land.lhs.true63_crit_edge, %for.cond25.2.i.land.lhs.true63_crit_edge, %for.cond25.1.i.land.lhs.true63_crit_edge, %for.cond25.i.land.lhs.true63_crit_edge, %lor.lhs.false14.i.land.lhs.true63_crit_edge, %for.body.i.land.lhs.true63_crit_edge, %for.cond25.preheader.i.land.lhs.true63_crit_edge, %lor.lhs.false.i.land.lhs.true63_crit_edge
  %tobool64.not = icmp eq ptr %78, null
  %tobool65.not = icmp eq ptr %80, null
  %or.cond = select i1 %tobool64.not, i1 %tobool65.not, i1 false
  br i1 %or.cond, label %land.lhs.true63.if.end75_crit_edge, label %do.body67

land.lhs.true63.if.end75_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

do.body67:                                        ; preds = %land.lhs.true63
  call void @do_trace_netlink_extack(ptr noundef nonnull @taprio_change.__msg.17) #14
  %tobool69.not = icmp eq ptr %extack, null
  br i1 %tobool69.not, label %do.body67.free_sched_crit_edge, label %if.then70

do.body67.free_sched_crit_edge:                   ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_sched

if.then70:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #16
  %161 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @taprio_change.__msg.17, ptr %extack, align 4
  br label %free_sched

if.end75:                                         ; preds = %land.lhs.true63.if.end75_crit_edge, %taprio_mqprio_cmp.exit.if.end75_crit_edge, %rcu_read_unlock.exit.if.end75_crit_edge
  %tobool62.not539 = phi i1 [ false, %land.lhs.true63.if.end75_crit_edge ], [ true, %taprio_mqprio_cmp.exit.if.end75_crit_edge ], [ true, %rcu_read_unlock.exit.if.end75_crit_edge ]
  %162 = phi ptr [ %spec.select, %land.lhs.true63.if.end75_crit_edge ], [ null, %taprio_mqprio_cmp.exit.if.end75_crit_edge ], [ null, %rcu_read_unlock.exit.if.end75_crit_edge ]
  %arrayidx.i492 = getelementptr inbounds ptr, ptr %tb, i32 4
  %163 = ptrtoint ptr %arrayidx.i492 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %arrayidx.i492, align 4
  %tobool.not.i493 = icmp eq ptr %164, null
  br i1 %tobool.not.i493, label %if.end3.i, label %do.body.i495

do.body.i495:                                     ; preds = %if.end75
  call void @do_trace_netlink_extack(ptr noundef nonnull @parse_taprio_schedule.__msg) #14
  %tobool1.not.i494 = icmp eq ptr %extack, null
  br i1 %tobool1.not.i494, label %do.body.i495.free_sched_crit_edge, label %if.then2.i

do.body.i495.free_sched_crit_edge:                ; preds = %do.body.i495
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_sched

if.then2.i:                                       ; preds = %do.body.i495
  call void @__sanitizer_cov_trace_pc() #16
  %165 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr @parse_taprio_schedule.__msg, ptr %extack, align 4
  br label %free_sched

if.end3.i:                                        ; preds = %if.end75
  %arrayidx4.i = getelementptr inbounds ptr, ptr %tb, i32 3
  %166 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.not.i = icmp eq ptr %167, null
  br i1 %tobool5.not.i, label %if.end3.i.if.end8.i496_crit_edge, label %if.then6.i

if.end3.i.if.end8.i496_crit_edge:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i496

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i) #14
  %168 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 -1, ptr %tmp.i.i, align 8, !annotation !168
  %call.i.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i.i, ptr noundef nonnull %167, i32 noundef 8) #14
  %169 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %tmp.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #14
  %base_time.i = getelementptr inbounds %struct.sched_gate_list, ptr %call7.i.i, i32 0, i32 6
  %171 = ptrtoint ptr %base_time.i to i32
  call void @__asan_store8_noabort(i32 %171)
  store i64 %170, ptr %base_time.i, align 8
  br label %if.end8.i496

if.end8.i496:                                     ; preds = %if.then6.i, %if.end3.i.if.end8.i496_crit_edge
  %arrayidx9.i = getelementptr inbounds ptr, ptr %tb, i32 9
  %172 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx9.i, align 4
  %tobool10.not.i = icmp eq ptr %173, null
  br i1 %tobool10.not.i, label %if.end8.i496.if.end14.i_crit_edge, label %if.then11.i

if.end8.i496.if.end14.i_crit_edge:                ; preds = %if.end8.i496
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.end8.i496
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i83.i) #14
  %174 = ptrtoint ptr %tmp.i83.i to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 -1, ptr %tmp.i83.i, align 8, !annotation !168
  %call.i84.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i83.i, ptr noundef nonnull %173, i32 noundef 8) #14
  %175 = ptrtoint ptr %tmp.i83.i to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %tmp.i83.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i83.i) #14
  %cycle_time_extension.i = getelementptr inbounds %struct.sched_gate_list, ptr %call7.i.i, i32 0, i32 5
  %177 = ptrtoint ptr %cycle_time_extension.i to i32
  call void @__asan_store8_noabort(i32 %177)
  store i64 %176, ptr %cycle_time_extension.i, align 8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.end8.i496.if.end14.i_crit_edge
  %arrayidx15.i = getelementptr inbounds ptr, ptr %tb, i32 8
  %178 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx15.i, align 4
  %tobool16.not.i = icmp eq ptr %179, null
  br i1 %tobool16.not.i, label %if.end14.i.if.end20.i497_crit_edge, label %if.then17.i

if.end14.i.if.end20.i497_crit_edge:               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i497

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i85.i) #14
  %180 = ptrtoint ptr %tmp.i85.i to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 -1, ptr %tmp.i85.i, align 8, !annotation !168
  %call.i86.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i85.i, ptr noundef nonnull %179, i32 noundef 8) #14
  %181 = ptrtoint ptr %tmp.i85.i to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %tmp.i85.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i85.i) #14
  %cycle_time.i = getelementptr inbounds %struct.sched_gate_list, ptr %call7.i.i, i32 0, i32 4
  %183 = ptrtoint ptr %cycle_time.i to i32
  call void @__asan_store8_noabort(i32 %183)
  store i64 %182, ptr %cycle_time.i, align 8
  br label %if.end20.i497

if.end20.i497:                                    ; preds = %if.then17.i, %if.end14.i.if.end20.i497_crit_edge
  %arrayidx21.i = getelementptr inbounds ptr, ptr %tb, i32 2
  %184 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx21.i, align 4
  %tobool22.not.i = icmp eq ptr %185, null
  br i1 %tobool22.not.i, label %if.end20.i497.if.end28.i_crit_edge, label %if.end.i.i

if.end20.i497.if.end28.i_crit_edge:               ; preds = %if.end20.i497
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28.i

if.end.i.i:                                       ; preds = %if.end20.i497
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %185, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %187)
  %cmp.i71.i.i = icmp ugt i16 %187, 7
  br i1 %cmp.i71.i.i, label %land.lhs.true.i.lr.ph.i.i, label %if.end26.thread92.i

if.end26.thread92.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %num_entries.i94.i = getelementptr inbounds %struct.sched_gate_list, ptr %call7.i.i, i32 0, i32 2
  %188 = ptrtoint ptr %num_entries.i94.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 0, ptr %num_entries.i94.i, align 8
  br label %if.end28.i

land.lhs.true.i.lr.ph.i.i:                        ; preds = %if.end.i.i
  %conv.i.i.i = zext i16 %187 to i32
  %sub.i.i.i498 = add nsw i32 %conv.i.i.i, -4
  %add.ptr.i.i.i499 = getelementptr i8, ptr %185, i32 4
  %tobool7.not.i.i = icmp eq ptr %extack, null
  %picos_per_byte.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %arrayidx.i.i.i.i = getelementptr inbounds ptr, ptr %tb.i.i.i, i32 2
  %arrayidx4.i.i.i.i = getelementptr inbounds ptr, ptr %tb.i.i.i, i32 3
  %arrayidx10.i.i.i.i = getelementptr inbounds ptr, ptr %tb.i.i.i, i32 4
  br label %land.lhs.true.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.inc.i.i.land.lhs.true.i.i.i_crit_edge, %land.lhs.true.i.lr.ph.i.i
  %i.074.i.i = phi i32 [ 0, %land.lhs.true.i.lr.ph.i.i ], [ %i.1.i.i, %for.inc.i.i.land.lhs.true.i.i.i_crit_edge ]
  %n.073.i.i = phi ptr [ %add.ptr.i.i.i499, %land.lhs.true.i.lr.ph.i.i ], [ %add.ptr.i56.i.i, %for.inc.i.i.land.lhs.true.i.i.i_crit_edge ]
  %rem.072.i.i = phi i32 [ %sub.i.i.i498, %land.lhs.true.i.lr.ph.i.i ], [ %sub1.i.i.i, %for.inc.i.i.land.lhs.true.i.i.i_crit_edge ]
  %189 = ptrtoint ptr %n.073.i.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %n.073.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %190)
  %cmp1.i.i.i = icmp ult i16 %190, 4
  %conv.i50.i.i = zext i16 %190 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.072.i.i, i32 %conv.i50.i.i)
  %cmp5.i.not.i.i = icmp ult i32 %rem.072.i.i, %conv.i50.i.i
  %or.cond.i.i = select i1 %cmp1.i.i.i, i1 true, i1 %cmp5.i.not.i.i
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.i.if.end26.i_crit_edge, label %for.body.i.i

land.lhs.true.i.i.i.if.end26.i_crit_edge:         ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i

for.body.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %nla_type.i.i.i = getelementptr inbounds %struct.nlattr, ptr %n.073.i.i, i32 0, i32 1
  %191 = ptrtoint ptr %nla_type.i.i.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %nla_type.i.i.i, align 2
  %193 = and i16 %192, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %193)
  %cmp.not.i.i = icmp eq i16 %193, 1
  br i1 %cmp.not.i.i, label %if.end10.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %for.body.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @parse_sched_list.__msg) #14
  br i1 %tobool7.not.i.i, label %do.body.i.i.for.inc.i.i_crit_edge, label %if.then8.i.i

do.body.i.i.for.inc.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then8.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %194 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr @parse_sched_list.__msg, ptr %extack, align 4
  br label %for.inc.i.i

if.end10.i.i:                                     ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %195 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %195, i32 noundef 3520, i32 noundef 48) #18
  %tobool12.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool12.not.i.i, label %do.body14.i.i, label %if.end22.i.i

do.body14.i.i:                                    ; preds = %if.end10.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @parse_sched_list.__msg.28) #14
  br i1 %tobool7.not.i.i, label %do.body14.i.i.free_sched_crit_edge, label %if.then17.i.i

do.body14.i.i.free_sched_crit_edge:               ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_sched

if.then17.i.i:                                    ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %196 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr @parse_sched_list.__msg.28, ptr %extack, align 4
  br label %free_sched

if.end22.i.i:                                     ; preds = %if.end10.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tb.i.i.i) #14
  %197 = call ptr @memset(ptr %tb.i.i.i, i32 0, i32 20)
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %n.073.i.i, i32 4
  %198 = ptrtoint ptr %n.073.i.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %n.073.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %199 to i32
  %sub.i.i.i.i.i = add nsw i32 %conv.i.i.i.i.i, -4
  %call2.i.i.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i.i.i, i32 noundef 4, ptr noundef %add.ptr.i.i.i.i.i, i32 noundef %sub.i.i.i.i.i, ptr noundef nonnull @entry_policy, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %cmp.i51.i.i = icmp slt i32 %call2.i.i.i.i, 0
  br i1 %cmp.i51.i.i, label %do.body.i.i.i, label %if.end3.i.i.i

do.body.i.i.i:                                    ; preds = %if.end22.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @parse_sched_entry.__msg) #14
  br i1 %tobool7.not.i.i, label %do.body.i.i.i.if.then25.i.i_crit_edge, label %do.body.i.i.i.if.then25.sink.split.i.i_crit_edge

do.body.i.i.i.if.then25.sink.split.i.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25.sink.split.i.i

do.body.i.i.i.if.then25.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25.i.i

if.end3.i.i.i:                                    ; preds = %if.end22.i.i
  %index4.i.i.i = getelementptr inbounds %struct.sched_entry, ptr %call7.i.i.i.i, i32 0, i32 4
  %200 = ptrtoint ptr %index4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %i.074.i.i, ptr %index4.i.i.i, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %picos_per_byte.i.i.i.i.i, i32 noundef 8) #14
  %call.i.i.i.i.i.i = call i64 @generic_atomic64_read(ptr noundef %picos_per_byte.i.i.i.i.i) #14
  %mul.i.i.i.i.i = mul i64 %call.i.i.i.i.i.i, 60
  %201 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i.i.i.i.i, i32 0) #19, !srcloc !171
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i64, i32 } %201, 0
  %asmresult4.i.i.i.i.i.i.i.i = extractvalue { i64, i32 } %201, 1
  %202 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i.i.i.i.i, i64 %asmresult.i.i.i.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i.i.i.i) #19, !srcloc !172
  %asmresult10.i.i.i.i.i.i.i.i = extractvalue { i64, i32 } %202, 0
  %div1581.i.i.i.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i.i.i.i, 9
  %conv2.i.i.i.i.i = trunc i64 %div1581.i.i.i.i.i.i.i to i32
  %203 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %204, null
  br i1 %tobool.not.i.i.i.i, label %if.end3.i.i.i.if.end.i.i.i.i_crit_edge, label %if.then.i.i.i.i

if.end3.i.i.i.if.end.i.i.i.i_crit_edge:           ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %204, i32 4
  %205 = ptrtoint ptr %add.ptr.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %add.ptr.i.i.i.i.i.i, align 1
  %command.i.i.i.i = getelementptr inbounds %struct.sched_entry, ptr %call7.i.i.i.i, i32 0, i32 7
  %207 = ptrtoint ptr %command.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %206, ptr %command.i.i.i.i, align 8
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i, %if.end3.i.i.i.if.end.i.i.i.i_crit_edge
  %208 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %arrayidx4.i.i.i.i, align 4
  %tobool5.not.i.i.i.i = icmp eq ptr %209, null
  br i1 %tobool5.not.i.i.i.i, label %if.end.i.i.i.i.if.end9.i.i.i.i_crit_edge, label %if.then6.i.i.i.i

if.end.i.i.i.i.if.end9.i.i.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i.i.i.i

if.then6.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i34.i.i.i.i = getelementptr i8, ptr %209, i32 4
  %210 = ptrtoint ptr %add.ptr.i.i34.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %add.ptr.i.i34.i.i.i.i, align 4
  %gate_mask.i.i.i.i = getelementptr inbounds %struct.sched_entry, ptr %call7.i.i.i.i, i32 0, i32 5
  %212 = ptrtoint ptr %gate_mask.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %gate_mask.i.i.i.i, align 8
  br label %if.end9.i.i.i.i

if.end9.i.i.i.i:                                  ; preds = %if.then6.i.i.i.i, %if.end.i.i.i.i.if.end9.i.i.i.i_crit_edge
  %213 = ptrtoint ptr %arrayidx10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %arrayidx10.i.i.i.i, align 4
  %tobool11.not.i.i.i.i = icmp eq ptr %214, null
  br i1 %tobool11.not.i.i.i.i, label %if.end9.i.i.i.i.if.end15.i.i.i.i_crit_edge, label %if.then12.i.i.i.i

if.end9.i.i.i.i.if.end15.i.i.i.i_crit_edge:       ; preds = %if.end9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i.i.i.i

if.then12.i.i.i.i:                                ; preds = %if.end9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i35.i.i.i.i = getelementptr i8, ptr %214, i32 4
  %215 = ptrtoint ptr %add.ptr.i.i35.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %add.ptr.i.i35.i.i.i.i, align 4
  br label %if.end15.i.i.i.i

if.end15.i.i.i.i:                                 ; preds = %if.then12.i.i.i.i, %if.end9.i.i.i.i.if.end15.i.i.i.i_crit_edge
  %interval.0.i.i.i.i = phi i32 [ %216, %if.then12.i.i.i.i ], [ 0, %if.end9.i.i.i.i.if.end15.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %interval.0.i.i.i.i, i32 %conv2.i.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %interval.0.i.i.i.i, %conv2.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %do.body.i.i.i.i, label %if.end26.i.i

do.body.i.i.i.i:                                  ; preds = %if.end15.i.i.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @fill_sched_entry.__msg) #14
  br i1 %tobool7.not.i.i, label %do.body.i.i.i.i.if.then25.i.i_crit_edge, label %do.body.i.i.i.i.if.then25.sink.split.i.i_crit_edge

do.body.i.i.i.i.if.then25.sink.split.i.i_crit_edge: ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25.sink.split.i.i

do.body.i.i.i.i.if.then25.i.i_crit_edge:          ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25.i.i

if.then25.sink.split.i.i:                         ; preds = %do.body.i.i.i.i.if.then25.sink.split.i.i_crit_edge, %do.body.i.i.i.if.then25.sink.split.i.i_crit_edge
  %parse_sched_entry.__msg.sink.i.i = phi ptr [ @parse_sched_entry.__msg, %do.body.i.i.i.if.then25.sink.split.i.i_crit_edge ], [ @fill_sched_entry.__msg, %do.body.i.i.i.i.if.then25.sink.split.i.i_crit_edge ]
  %217 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %parse_sched_entry.__msg.sink.i.i, ptr %extack, align 4
  br label %if.then25.i.i

if.then25.i.i:                                    ; preds = %if.then25.sink.split.i.i, %do.body.i.i.i.i.if.then25.i.i_crit_edge, %do.body.i.i.i.if.then25.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb.i.i.i) #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #14
  br label %free_sched

if.end26.i.i:                                     ; preds = %if.end15.i.i.i.i
  %interval21.i.i.i.i = getelementptr inbounds %struct.sched_entry, ptr %call7.i.i.i.i, i32 0, i32 6
  %218 = ptrtoint ptr %interval21.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %interval.0.i.i.i.i, ptr %interval21.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb.i.i.i) #14
  %219 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %220, ptr noundef %entries) #14
  br i1 %call.i.i.i.i, label %if.end.i.i52.i.i, label %if.end26.i.i.list_add_tail.exit.i.i_crit_edge

if.end26.i.i.list_add_tail.exit.i.i_crit_edge:    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit.i.i

if.end.i.i52.i.i:                                 ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %221 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %call7.i.i.i.i, ptr %prev.i, align 4
  %222 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %entries, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %223 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %220, ptr %prev3.i.i.i.i, align 4
  %224 = ptrtoint ptr %220 to i32
  call void @__asan_store4_noabort(i32 %224)
  store volatile ptr %call7.i.i.i.i, ptr %220, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i52.i.i, %if.end26.i.i.list_add_tail.exit.i.i_crit_edge
  %inc.i.i = add i32 %i.074.i.i, 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %list_add_tail.exit.i.i, %if.then8.i.i, %do.body.i.i.for.inc.i.i_crit_edge
  %i.1.i.i = phi i32 [ %inc.i.i, %list_add_tail.exit.i.i ], [ %i.074.i.i, %if.then8.i.i ], [ %i.074.i.i, %do.body.i.i.for.inc.i.i_crit_edge ]
  %225 = ptrtoint ptr %n.073.i.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %n.073.i.i, align 2
  %conv.i53.i.i = zext i16 %226 to i32
  %sub.i54.i.i = add nuw nsw i32 %conv.i53.i.i, 3
  %and.i55.i.i = and i32 %sub.i54.i.i, 131068
  %sub1.i.i.i = sub nsw i32 %rem.072.i.i, %and.i55.i.i
  %add.ptr.i56.i.i = getelementptr i8, ptr %n.073.i.i, i32 %and.i55.i.i
  %cmp.i.i.i = icmp sgt i32 %sub1.i.i.i, 3
  br i1 %cmp.i.i.i, label %for.inc.i.i.land.lhs.true.i.i.i_crit_edge, label %for.inc.i.i.if.end26.i_crit_edge

for.inc.i.i.if.end26.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i

for.inc.i.i.land.lhs.true.i.i.i_crit_edge:        ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i.i.i

if.end26.i:                                       ; preds = %for.inc.i.i.if.end26.i_crit_edge, %land.lhs.true.i.i.i.if.end26.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ %i.1.i.i, %for.inc.i.i.if.end26.i_crit_edge ], [ %i.074.i.i, %land.lhs.true.i.i.i.if.end26.i_crit_edge ]
  %num_entries.i.i = getelementptr inbounds %struct.sched_gate_list, ptr %call7.i.i, i32 0, i32 2
  %227 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %i.0.lcssa.i.i, ptr %num_entries.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i.i)
  %cmp.i500 = icmp slt i32 %i.0.lcssa.i.i, 0
  br i1 %cmp.i500, label %if.end26.i.free_sched_crit_edge, label %if.end26.i.if.end28.i_crit_edge

if.end26.i.if.end28.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28.i

if.end26.i.free_sched_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_sched

if.end28.i:                                       ; preds = %if.end26.i.if.end28.i_crit_edge, %if.end26.thread92.i, %if.end20.i497.if.end28.i_crit_edge
  %cycle_time29.i = getelementptr inbounds %struct.sched_gate_list, ptr %call7.i.i, i32 0, i32 4
  %228 = ptrtoint ptr %cycle_time29.i to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %cycle_time29.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %229)
  %tobool30.not.i = icmp eq i64 %229, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %if.end28.i.if.end80_crit_edge

if.end28.i.if.end80_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80

if.then31.i:                                      ; preds = %if.end28.i
  %230 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %230)
  %entry32.0100.i = load ptr, ptr %entries, align 8
  %cmp34.not101.i = icmp eq ptr %entry32.0100.i, %entries
  br i1 %cmp34.not101.i, label %if.then31.i.do.body42.i_crit_edge, label %if.then31.i.for.body.i504_crit_edge

if.then31.i.for.body.i504_crit_edge:              ; preds = %if.then31.i
  br label %for.body.i504

if.then31.i.do.body42.i_crit_edge:                ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body42.i

for.body.i504:                                    ; preds = %for.body.i504.for.body.i504_crit_edge, %if.then31.i.for.body.i504_crit_edge
  %entry32.0103.i = phi ptr [ %entry32.0.i, %for.body.i504.for.body.i504_crit_edge ], [ %entry32.0100.i, %if.then31.i.for.body.i504_crit_edge ]
  %cycle.0102.i = phi i64 [ %add.i502, %for.body.i504.for.body.i504_crit_edge ], [ 0, %if.then31.i.for.body.i504_crit_edge ]
  %interval.i = getelementptr inbounds %struct.sched_entry, ptr %entry32.0103.i, i32 0, i32 6
  %231 = ptrtoint ptr %interval.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %interval.i, align 4
  %conv.i501 = zext i32 %232 to i64
  %add.i502 = add i64 %cycle.0102.i, %conv.i501
  %233 = ptrtoint ptr %entry32.0103.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %entry32.0.i = load ptr, ptr %entry32.0103.i, align 8
  %cmp34.not.i503 = icmp eq ptr %entry32.0.i, %entries
  br i1 %cmp34.not.i503, label %for.end.i, label %for.body.i504.for.body.i504_crit_edge

for.body.i504.for.body.i504_crit_edge:            ; preds = %for.body.i504
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i504

for.end.i:                                        ; preds = %for.body.i504
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i502)
  %tobool40.not.i = icmp eq i64 %add.i502, 0
  br i1 %tobool40.not.i, label %for.end.i.do.body42.i_crit_edge, label %if.end50.i

for.end.i.do.body42.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body42.i

do.body42.i:                                      ; preds = %for.end.i.do.body42.i_crit_edge, %if.then31.i.do.body42.i_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @parse_taprio_schedule.__msg.27) #14
  %tobool44.not.i = icmp eq ptr %extack, null
  br i1 %tobool44.not.i, label %do.body42.i.free_sched_crit_edge, label %if.then45.i

do.body42.i.free_sched_crit_edge:                 ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_sched

if.then45.i:                                      ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #16
  %234 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr @parse_taprio_schedule.__msg.27, ptr %extack, align 4
  br label %free_sched

if.end50.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %235 = ptrtoint ptr %cycle_time29.i to i32
  call void @__asan_store8_noabort(i32 %235)
  store i64 %add.i502, ptr %cycle_time29.i, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.end50.i, %if.end28.i.if.end80_crit_edge
  %num_entries = getelementptr inbounds %struct.sched_gate_list, ptr %call7.i.i, i32 0, i32 2
  %236 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %num_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %cmp81 = icmp eq i32 %237, 0
  br i1 %cmp81, label %do.body83, label %if.end91

do.body83:                                        ; preds = %if.end80
  call void @do_trace_netlink_extack(ptr noundef nonnull @taprio_change.__msg.18) #14
  %tobool85.not = icmp eq ptr %extack, null
  br i1 %tobool85.not, label %do.body83.free_sched_crit_edge, label %if.then86

do.body83.free_sched_crit_edge:                   ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_sched

if.then86:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #16
  %238 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr @taprio_change.__msg.18, ptr %extack, align 4
  br label %free_sched

if.end91:                                         ; preds = %if.end80
  %239 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dev_queue.i, align 8
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %240, align 128
  %243 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %flags8, align 8
  %and.i505 = and i32 %244, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i505)
  %tobool.not.i506 = icmp eq i32 %and.i505, 0
  br i1 %tobool.not.i506, label %if.else.i, label %if.then.i509

if.then.i509:                                     ; preds = %if.end91
  %ethtool_ops.i = getelementptr inbounds %struct.net_device, ptr %242, i32 0, i32 44
  %245 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %ethtool_ops.i, align 16
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %info.i) #14
  %247 = getelementptr inbounds i8, ptr %info.i, i32 4
  %248 = call ptr @memset(ptr %247, i32 0, i32 40)
  %249 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 65, ptr %info.i, align 4
  %250 = getelementptr inbounds %struct.ethtool_ts_info, ptr %info.i, i32 0, i32 2
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 -1, ptr %250, align 4
  %arrayidx.i507 = getelementptr inbounds ptr, ptr %tb, i32 5
  %252 = ptrtoint ptr %arrayidx.i507 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %arrayidx.i507, align 4
  %tobool2.not.i508 = icmp eq ptr %253, null
  br i1 %tobool2.not.i508, label %if.end6.i511, label %do.body.i510

do.body.i510:                                     ; preds = %if.then.i509
  call void @do_trace_netlink_extack(ptr noundef nonnull @taprio_parse_clockid.__msg) #14
  %tobool4.not.i = icmp eq ptr %extack, null
  br i1 %tobool4.not.i, label %do.body.i510.cleanup.thread.i_crit_edge, label %do.body.i510.cleanup.thread.sink.split.i_crit_edge

do.body.i510.cleanup.thread.sink.split.i_crit_edge: ; preds = %do.body.i510
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.sink.split.i

do.body.i510.cleanup.thread.i_crit_edge:          ; preds = %do.body.i510
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i

if.end6.i511:                                     ; preds = %if.then.i509
  %tobool7.not.i = icmp eq ptr %246, null
  br i1 %tobool7.not.i, label %if.end6.i511.do.body15.i_crit_edge, label %land.lhs.true.i512

if.end6.i511.do.body15.i_crit_edge:               ; preds = %if.end6.i511
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body15.i

land.lhs.true.i512:                               ; preds = %if.end6.i511
  %get_ts_info.i = getelementptr inbounds %struct.ethtool_ops, ptr %246, i32 0, i32 47
  %254 = ptrtoint ptr %get_ts_info.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %get_ts_info.i, align 4
  %tobool8.not.i = icmp eq ptr %255, null
  br i1 %tobool8.not.i, label %land.lhs.true.i512.do.body15.i_crit_edge, label %if.then9.i

land.lhs.true.i512.do.body15.i_crit_edge:         ; preds = %land.lhs.true.i512
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body15.i

if.then9.i:                                       ; preds = %land.lhs.true.i512
  %call11.i = call i32 %255(ptr noundef %242, ptr noundef nonnull %info.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %phi.cmp.i = icmp eq i32 %call11.i, 0
  br i1 %phi.cmp.i, label %lor.lhs.false.i514, label %if.then9.i.do.body15.i_crit_edge

if.then9.i.do.body15.i_crit_edge:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body15.i

lor.lhs.false.i514:                               ; preds = %if.then9.i
  %256 = ptrtoint ptr %250 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %250, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %cmp.i513 = icmp slt i32 %257, 0
  br i1 %cmp.i513, label %lor.lhs.false.i514.do.body15.i_crit_edge, label %cleanup.i

lor.lhs.false.i514.do.body15.i_crit_edge:         ; preds = %lor.lhs.false.i514
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body15.i

do.body15.i:                                      ; preds = %lor.lhs.false.i514.do.body15.i_crit_edge, %if.then9.i.do.body15.i_crit_edge, %land.lhs.true.i512.do.body15.i_crit_edge, %if.end6.i511.do.body15.i_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @taprio_parse_clockid.__msg.29) #14
  %tobool17.not.i = icmp eq ptr %extack, null
  br i1 %tobool17.not.i, label %do.body15.i.cleanup.thread.i_crit_edge, label %do.body15.i.cleanup.thread.sink.split.i_crit_edge

do.body15.i.cleanup.thread.sink.split.i_crit_edge: ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.sink.split.i

do.body15.i.cleanup.thread.i_crit_edge:           ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i

cleanup.thread.sink.split.i:                      ; preds = %do.body15.i.cleanup.thread.sink.split.i_crit_edge, %do.body.i510.cleanup.thread.sink.split.i_crit_edge
  %taprio_parse_clockid.__msg.sink.i = phi ptr [ @taprio_parse_clockid.__msg, %do.body.i510.cleanup.thread.sink.split.i_crit_edge ], [ @taprio_parse_clockid.__msg.29, %do.body15.i.cleanup.thread.sink.split.i_crit_edge ]
  %err.1.ph.ph.i = phi i32 [ -22, %do.body.i510.cleanup.thread.sink.split.i_crit_edge ], [ -524, %do.body15.i.cleanup.thread.sink.split.i_crit_edge ]
  %258 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %taprio_parse_clockid.__msg.sink.i, ptr %extack, align 4
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %cleanup.thread.sink.split.i, %do.body15.i.cleanup.thread.i_crit_edge, %do.body.i510.cleanup.thread.i_crit_edge
  %err.1.ph.i = phi i32 [ -524, %do.body15.i.cleanup.thread.i_crit_edge ], [ -22, %do.body.i510.cleanup.thread.i_crit_edge ], [ %err.1.ph.ph.i, %cleanup.thread.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %info.i) #14
  br label %free_sched

cleanup.i:                                        ; preds = %lor.lhs.false.i514
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %info.i) #14
  br label %if.end96

if.else.i:                                        ; preds = %if.end91
  %arrayidx25.i = getelementptr inbounds ptr, ptr %tb, i32 5
  %259 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %arrayidx25.i, align 4
  %tobool26.not.i = icmp eq ptr %260, null
  br i1 %tobool26.not.i, label %do.body74.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.else.i
  %add.ptr.i.i.i515 = getelementptr i8, ptr %260, i32 4
  %261 = ptrtoint ptr %add.ptr.i.i.i515 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %add.ptr.i.i.i515, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %cmp30.i = icmp slt i32 %262, 0
  br i1 %cmp30.i, label %if.then27.i.do.body38.i_crit_edge, label %lor.lhs.false31.i

if.then27.i.do.body38.i_crit_edge:                ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body38.i

lor.lhs.false31.i:                                ; preds = %if.then27.i
  %clockid32.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %263 = ptrtoint ptr %clockid32.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %clockid32.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %264)
  %cmp33.not.i = icmp eq i32 %264, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %264, i32 %262)
  %cmp36.not.i = icmp eq i32 %264, %262
  %or.cond.i516 = select i1 %cmp33.not.i, i1 true, i1 %cmp36.not.i
  br i1 %or.cond.i516, label %if.end46.i, label %lor.lhs.false31.i.do.body38.i_crit_edge

lor.lhs.false31.i.do.body38.i_crit_edge:          ; preds = %lor.lhs.false31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body38.i

do.body38.i:                                      ; preds = %lor.lhs.false31.i.do.body38.i_crit_edge, %if.then27.i.do.body38.i_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @taprio_parse_clockid.__msg.30) #14
  %tobool40.not.i517 = icmp eq ptr %extack, null
  br i1 %tobool40.not.i517, label %do.body38.i.free_sched_crit_edge, label %if.then41.i

do.body38.i.free_sched_crit_edge:                 ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_sched

if.then41.i:                                      ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #16
  %265 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr @taprio_parse_clockid.__msg.30, ptr %extack, align 4
  br label %free_sched

if.end46.i:                                       ; preds = %lor.lhs.false31.i
  %266 = zext i32 %262 to i64
  call void @__sanitizer_cov_trace_switch(i64 %266, ptr @__sancov_gen_cov_switch_values)
  switch i32 %262, label %do.body50.i [
    i32 0, label %if.end46.i.cleanup69.i_crit_edge
    i32 1, label %sw.bb47.i
    i32 7, label %sw.bb48.i
    i32 11, label %sw.bb49.i
  ]

if.end46.i.cleanup69.i_crit_edge:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup69.i

sw.bb47.i:                                        ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup69.i

sw.bb48.i:                                        ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup69.i

sw.bb49.i:                                        ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup69.i

do.body50.i:                                      ; preds = %if.end46.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @taprio_parse_clockid.__msg.31) #14
  %tobool52.not.i = icmp eq ptr %extack, null
  br i1 %tobool52.not.i, label %do.body50.i.free_sched_crit_edge, label %if.then53.i

do.body50.i.free_sched_crit_edge:                 ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_sched

if.then53.i:                                      ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #16
  %267 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr @taprio_parse_clockid.__msg.31, ptr %extack, align 4
  br label %free_sched

cleanup69.i:                                      ; preds = %sw.bb49.i, %sw.bb48.i, %sw.bb47.i, %if.end46.i.cleanup69.i_crit_edge
  %tk_offset.0.i = phi i32 [ 2, %sw.bb49.i ], [ 1, %sw.bb48.i ], [ 3, %sw.bb47.i ], [ %262, %if.end46.i.cleanup69.i_crit_edge ]
  %tk_offset63.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %268 = ptrtoint ptr %tk_offset63.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store volatile i32 %tk_offset.0.i, ptr %tk_offset63.i, align 4
  %269 = ptrtoint ptr %clockid32.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %262, ptr %clockid32.i, align 8
  br label %if.end96

do.body74.i:                                      ; preds = %if.else.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @taprio_parse_clockid.__msg.32) #14
  %tobool76.not.i = icmp eq ptr %extack, null
  br i1 %tobool76.not.i, label %do.body74.i.free_sched_crit_edge, label %if.then77.i

do.body74.i.free_sched_crit_edge:                 ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_sched

if.then77.i:                                      ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #16
  %270 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr @taprio_parse_clockid.__msg.32, ptr %extack, align 4
  br label %free_sched

if.end96:                                         ; preds = %cleanup69.i, %cleanup.i
  call fastcc void @taprio_set_picos_per_byte(ptr noundef %4, ptr noundef %privdata.i)
  br i1 %tobool62.not539, label %if.end96.if.end120_crit_edge, label %if.then98

if.end96.if.end120_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120

if.then98:                                        ; preds = %if.end96
  %271 = ptrtoint ptr %162 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %162, align 2
  %call99 = call i32 @netdev_set_num_tc(ptr noundef %4, i8 noundef zeroext %272) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %for.cond.preheader, label %if.then98.free_sched_crit_edge

if.then98.free_sched_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_sched

for.cond.preheader:                               ; preds = %if.then98
  %273 = ptrtoint ptr %162 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %162, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %cmp104554.not = icmp eq i8 %274, 0
  br i1 %cmp104554.not, label %for.cond.preheader.for.body113.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.body113.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body113.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0555 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %conv106 = trunc i32 %i.0555 to i8
  %arrayidx107 = getelementptr %struct.tc_mqprio_qopt, ptr %162, i32 0, i32 3, i32 %i.0555
  %275 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %arrayidx107, align 2
  %arrayidx108 = getelementptr %struct.tc_mqprio_qopt, ptr %162, i32 0, i32 4, i32 %i.0555
  %277 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %arrayidx108, align 2
  %call109 = call i32 @netdev_set_tc_queue(ptr noundef %4, i8 noundef zeroext %conv106, i16 noundef zeroext %276, i16 noundef zeroext %278) #14
  %inc = add nuw nsw i32 %i.0555, 1
  %279 = ptrtoint ptr %162 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %162, align 2
  %conv = zext i8 %280 to i32
  %cmp104 = icmp ult i32 %inc, %conv
  br i1 %cmp104, label %for.body.for.body_crit_edge, label %for.body.for.body113.preheader_crit_edge

for.body.for.body113.preheader_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body113.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body113.preheader:                            ; preds = %for.body.for.body113.preheader_crit_edge, %for.cond.preheader.for.body113.preheader_crit_edge
  br label %for.body113

for.body113:                                      ; preds = %netdev_set_prio_tc_map.exit.for.body113_crit_edge, %for.body113.preheader
  %i.1556 = phi i32 [ %inc118, %netdev_set_prio_tc_map.exit.for.body113_crit_edge ], [ 0, %for.body113.preheader ]
  %arrayidx115 = getelementptr %struct.tc_mqprio_qopt, ptr %162, i32 0, i32 1, i32 %i.1556
  %281 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %arrayidx115, align 1
  %conv.i518 = zext i8 %282 to i32
  %283 = ptrtoint ptr %num_tc5.i to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %num_tc5.i, align 4
  %conv1.i = sext i16 %284 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i518, i32 %conv1.i)
  %cmp.not.i520 = icmp slt i32 %conv.i518, %conv1.i
  br i1 %cmp.not.i520, label %if.end.i523, label %for.body113.netdev_set_prio_tc_map.exit_crit_edge

for.body113.netdev_set_prio_tc_map.exit_crit_edge: ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_set_prio_tc_map.exit

if.end.i523:                                      ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #16
  %and.i521 = and i8 %282, 15
  %arrayidx.i522 = getelementptr %struct.net_device, ptr %4, i32 0, i32 142, i32 %i.1556
  %285 = ptrtoint ptr %arrayidx.i522 to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 %and.i521, ptr %arrayidx.i522, align 1
  br label %netdev_set_prio_tc_map.exit

netdev_set_prio_tc_map.exit:                      ; preds = %if.end.i523, %for.body113.netdev_set_prio_tc_map.exit_crit_edge
  %inc118 = add nuw nsw i32 %i.1556, 1
  %exitcond.not = icmp eq i32 %inc118, 16
  br i1 %exitcond.not, label %netdev_set_prio_tc_map.exit.if.end120_crit_edge, label %netdev_set_prio_tc_map.exit.for.body113_crit_edge

netdev_set_prio_tc_map.exit.for.body113_crit_edge: ; preds = %netdev_set_prio_tc_map.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body113

netdev_set_prio_tc_map.exit.if.end120_crit_edge:  ; preds = %netdev_set_prio_tc_map.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120

if.end120:                                        ; preds = %netdev_set_prio_tc_map.exit.if.end120_crit_edge, %if.end96.if.end120_crit_edge
  %286 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %flags8, align 8
  %and = and i32 %287, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool122.not = icmp eq i32 %and, 0
  br i1 %tobool122.not, label %if.else, label %if.then123

if.then123:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #16
  %call124 = call fastcc i32 @taprio_enable_offload(ptr noundef %4, ptr noundef nonnull %call7.i.i, ptr noundef %extack)
  br label %if.end126

if.else:                                          ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #16
  %call125 = call fastcc i32 @taprio_disable_offload(ptr noundef %4, ptr noundef %privdata.i, ptr noundef %extack)
  br label %if.end126

if.end126:                                        ; preds = %if.else, %if.then123
  %err.0 = phi i32 [ %call124, %if.then123 ], [ %call125, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool127.not = icmp eq i32 %err.0, 0
  br i1 %tobool127.not, label %if.end129, label %if.end126.free_sched_crit_edge

if.end126.free_sched_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_sched

if.end129:                                        ; preds = %if.end126
  %lock.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #14
  %arrayidx131 = getelementptr inbounds [12 x ptr], ptr %tb, i32 0, i32 11
  %288 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %arrayidx131, align 4
  %tobool132.not = icmp eq ptr %289, null
  br i1 %tobool132.not, label %if.end129.if.end149_crit_edge, label %if.then133

if.end129.if.end149_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end149

if.then133:                                       ; preds = %if.end129
  %290 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %flags8, align 8
  %and135 = and i32 %291, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %do.body138, label %if.end146

do.body138:                                       ; preds = %if.then133
  call void @do_trace_netlink_extack(ptr noundef nonnull @taprio_change.__msg.19) #14
  %tobool140.not = icmp eq ptr %extack, null
  br i1 %tobool140.not, label %do.body138.unlock_crit_edge, label %if.then141

do.body138.unlock_crit_edge:                      ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.then141:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #16
  %292 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr @taprio_change.__msg.19, ptr %extack, align 4
  br label %unlock

if.end146:                                        ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i524 = getelementptr i8, ptr %289, i32 4
  %293 = ptrtoint ptr %add.ptr.i.i524 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %add.ptr.i.i524, align 4
  %txtime_delay = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 3
  %295 = ptrtoint ptr %txtime_delay to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %294, ptr %txtime_delay, align 8
  br label %if.end149

if.end149:                                        ; preds = %if.end146, %if.end129.if.end149_crit_edge
  %296 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %flags8, align 8
  %298 = and i32 %297, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %298)
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %land.lhs.true157, label %if.end149.if.end162_crit_edge

if.end149.if.end162_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end162

land.lhs.true157:                                 ; preds = %if.end149
  %advance_timer = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %call158 = call zeroext i1 @hrtimer_active(ptr noundef %advance_timer) #14
  br i1 %call158, label %land.lhs.true157.if.end162_crit_edge, label %if.then159

land.lhs.true157.if.end162_crit_edge:             ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end162

if.then159:                                       ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #16
  %clockid = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %300 = ptrtoint ptr %clockid to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %clockid, align 8
  call void @hrtimer_init(ptr noundef %advance_timer, i32 noundef %301, i32 noundef 0) #14
  %function = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 56
  %302 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr @advance_sched, ptr %function, align 8
  br label %if.end162

if.end162:                                        ; preds = %if.then159, %land.lhs.true157.if.end162_crit_edge, %if.end149.if.end162_crit_edge
  %303 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %flags8, align 8
  %and164 = and i32 %304, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  %spec.select566 = select i1 %tobool165.not, ptr @taprio_dequeue_soft, ptr @taprio_dequeue_offload
  %spec.select567 = select i1 %tobool165.not, ptr @taprio_peek_soft, ptr @taprio_peek_offload
  %305 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 1
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %spec.select566, ptr %305, align 8
  %307 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 2
  %308 = ptrtoint ptr %307 to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr %spec.select567, ptr %307, align 4
  %call171 = call fastcc i32 @taprio_get_start_time(ptr noundef %sch, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %start)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %cmp172 = icmp slt i32 %call171, 0
  br i1 %cmp172, label %do.body175, label %if.end183

do.body175:                                       ; preds = %if.end162
  call void @do_trace_netlink_extack(ptr noundef nonnull @taprio_change.__msg.20) #14
  %tobool177.not = icmp eq ptr %extack, null
  br i1 %tobool177.not, label %do.body175.unlock_crit_edge, label %if.then178

do.body175.unlock_crit_edge:                      ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.then178:                                       ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #16
  %309 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr @taprio_change.__msg.20, ptr %extack, align 4
  br label %unlock

if.end183:                                        ; preds = %if.end162
  %310 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %310)
  %311 = load i64, ptr %start, align 8
  %312 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %312)
  %entry1.01.i = load ptr, ptr %entries, align 8
  %cmp.not2.i = icmp eq ptr %entry1.01.i, %entries
  br i1 %cmp.not2.i, label %if.end183.setup_txtime.exit_crit_edge, label %if.end183.for.body.i529_crit_edge

if.end183.for.body.i529_crit_edge:                ; preds = %if.end183
  br label %for.body.i529

if.end183.setup_txtime.exit_crit_edge:            ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #16
  br label %setup_txtime.exit

for.body.i529:                                    ; preds = %for.body.i529.for.body.i529_crit_edge, %if.end183.for.body.i529_crit_edge
  %entry1.04.i = phi ptr [ %entry1.0.i, %for.body.i529.for.body.i529_crit_edge ], [ %entry1.01.i, %if.end183.for.body.i529_crit_edge ]
  %interval.03.i = phi i32 [ %add4.i, %for.body.i529.for.body.i529_crit_edge ], [ 0, %if.end183.for.body.i529_crit_edge ]
  %conv.i526 = zext i32 %interval.03.i to i64
  %add.i527 = add i64 %311, %conv.i526
  %next_txtime.i = getelementptr inbounds %struct.sched_entry, ptr %entry1.04.i, i32 0, i32 2
  %313 = ptrtoint ptr %next_txtime.i to i32
  call void @__asan_store8_noabort(i32 %313)
  store i64 %add.i527, ptr %next_txtime.i, align 8
  %interval3.i = getelementptr inbounds %struct.sched_entry, ptr %entry1.04.i, i32 0, i32 6
  %314 = ptrtoint ptr %interval3.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %interval3.i, align 4
  %add4.i = add i32 %315, %interval.03.i
  %316 = ptrtoint ptr %entry1.04.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %entry1.0.i = load ptr, ptr %entry1.04.i, align 8
  %cmp.not.i528 = icmp eq ptr %entry1.0.i, %entries
  br i1 %cmp.not.i528, label %for.body.i529.setup_txtime.exit_crit_edge, label %for.body.i529.for.body.i529_crit_edge

for.body.i529.for.body.i529_crit_edge:            ; preds = %for.body.i529
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i529

for.body.i529.setup_txtime.exit_crit_edge:        ; preds = %for.body.i529
  call void @__sanitizer_cov_trace_pc() #16
  br label %setup_txtime.exit

setup_txtime.exit:                                ; preds = %for.body.i529.setup_txtime.exit_crit_edge, %if.end183.setup_txtime.exit_crit_edge
  %317 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %flags8, align 8
  %and185 = and i32 %318, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %if.else277, label %if.then187

if.then187:                                       ; preds = %setup_txtime.exit
  %tobool188.not = icmp eq ptr %78, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14
  br i1 %tobool188.not, label %do.body190, label %do.body232

do.body190:                                       ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #16
  %319 = ptrtoint ptr %oper_sched to i32
  call void @__asan_store4_noabort(i32 %319)
  store volatile ptr %call7.i.i, ptr %oper_sched, align 8
  br label %unlock

do.body232:                                       ; preds = %if.then187
  %320 = ptrtoint ptr %admin_sched to i32
  call void @__asan_store4_noabort(i32 %320)
  store volatile ptr %call7.i.i, ptr %admin_sched, align 4
  %tobool274.not = icmp eq ptr %80, null
  br i1 %tobool274.not, label %do.body232.unlock_crit_edge, label %if.then275

do.body232.unlock_crit_edge:                      ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.then275:                                       ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #16
  call void @call_rcu(ptr noundef nonnull %80, ptr noundef nonnull @taprio_free_sched_cb) #14
  br label %unlock

if.else277:                                       ; preds = %setup_txtime.exit
  call fastcc void @setup_first_close_time(ptr noundef %privdata.i, ptr noundef nonnull %call7.i.i, i64 noundef %311)
  %current_entry_lock = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %call284 = call i32 @_raw_spin_lock_irqsave(ptr noundef %current_entry_lock) #14
  call fastcc void @taprio_start_sched(ptr noundef %sch, i64 noundef %311)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !173
  %321 = ptrtoint ptr %admin_sched to i32
  call void @__asan_store4_noabort(i32 %321)
  store volatile ptr %call7.i.i, ptr %admin_sched, align 4
  %tobool331.not = icmp eq ptr %80, null
  br i1 %tobool331.not, label %if.else277.if.end334_crit_edge, label %if.then332

if.else277.if.end334_crit_edge:                   ; preds = %if.else277
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end334

if.then332:                                       ; preds = %if.else277
  call void @__sanitizer_cov_trace_pc() #16
  call void @call_rcu(ptr noundef nonnull %80, ptr noundef nonnull @taprio_free_sched_cb) #14
  br label %if.end334

if.end334:                                        ; preds = %if.then332, %if.else277.if.end334_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %current_entry_lock, i32 noundef %call284) #14
  %322 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %flags8, align 8
  %and337 = and i32 %323, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and337)
  %tobool338.not = icmp eq i32 %and337, 0
  br i1 %tobool338.not, label %if.end334.unlock_crit_edge, label %if.then339

if.end334.unlock_crit_edge:                       ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.then339:                                       ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @taprio_offload_config_changed(ptr noundef %privdata.i)
  br label %unlock

unlock:                                           ; preds = %if.then339, %if.end334.unlock_crit_edge, %if.then275, %do.body232.unlock_crit_edge, %do.body190, %if.then178, %do.body175.unlock_crit_edge, %if.then141, %do.body138.unlock_crit_edge
  %err.1 = phi i32 [ 0, %do.body190 ], [ -22, %if.then141 ], [ -22, %do.body138.unlock_crit_edge ], [ %call171, %if.then178 ], [ %call171, %do.body175.unlock_crit_edge ], [ 0, %if.end334.unlock_crit_edge ], [ 0, %if.then339 ], [ 0, %do.body232.unlock_crit_edge ], [ 0, %if.then275 ]
  %new_admin.0 = phi ptr [ null, %do.body190 ], [ %call7.i.i, %if.then141 ], [ %call7.i.i, %do.body138.unlock_crit_edge ], [ %call7.i.i, %if.then178 ], [ %call7.i.i, %do.body175.unlock_crit_edge ], [ null, %if.end334.unlock_crit_edge ], [ null, %if.then339 ], [ null, %do.body232.unlock_crit_edge ], [ null, %if.then275 ]
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #14
  br label %free_sched

free_sched:                                       ; preds = %unlock, %if.end126.free_sched_crit_edge, %if.then98.free_sched_crit_edge, %if.then77.i, %do.body74.i.free_sched_crit_edge, %if.then53.i, %do.body50.i.free_sched_crit_edge, %if.then41.i, %do.body38.i.free_sched_crit_edge, %cleanup.thread.i, %if.then86, %do.body83.free_sched_crit_edge, %if.then45.i, %do.body42.i.free_sched_crit_edge, %if.end26.i.free_sched_crit_edge, %if.then25.i.i, %if.then17.i.i, %do.body14.i.i.free_sched_crit_edge, %if.then2.i, %do.body.i495.free_sched_crit_edge, %if.then70, %do.body67.free_sched_crit_edge
  %err.2 = phi i32 [ %call99, %if.then98.free_sched_crit_edge ], [ %err.0, %if.end126.free_sched_crit_edge ], [ %err.1, %unlock ], [ -524, %if.then70 ], [ -524, %do.body67.free_sched_crit_edge ], [ -22, %if.then86 ], [ -22, %do.body83.free_sched_crit_edge ], [ -12, %do.body14.i.i.free_sched_crit_edge ], [ -12, %if.then17.i.i ], [ -22, %if.then25.i.i ], [ -22, %do.body42.i.free_sched_crit_edge ], [ -22, %if.then45.i ], [ %i.0.lcssa.i.i, %if.end26.i.free_sched_crit_edge ], [ -524, %do.body.i495.free_sched_crit_edge ], [ -524, %if.then2.i ], [ -524, %if.then41.i ], [ -524, %do.body38.i.free_sched_crit_edge ], [ -22, %if.then53.i ], [ -22, %do.body50.i.free_sched_crit_edge ], [ %err.1.ph.i, %cleanup.thread.i ], [ -22, %do.body74.i.free_sched_crit_edge ], [ -22, %if.then77.i ]
  %new_admin.1 = phi ptr [ %call7.i.i, %if.then98.free_sched_crit_edge ], [ %call7.i.i, %if.end126.free_sched_crit_edge ], [ %new_admin.0, %unlock ], [ %call7.i.i, %if.then70 ], [ %call7.i.i, %do.body67.free_sched_crit_edge ], [ %call7.i.i, %if.then86 ], [ %call7.i.i, %do.body83.free_sched_crit_edge ], [ %call7.i.i, %do.body14.i.i.free_sched_crit_edge ], [ %call7.i.i, %if.then17.i.i ], [ %call7.i.i, %if.then25.i.i ], [ %call7.i.i, %do.body42.i.free_sched_crit_edge ], [ %call7.i.i, %if.then45.i ], [ %call7.i.i, %if.end26.i.free_sched_crit_edge ], [ %call7.i.i, %do.body.i495.free_sched_crit_edge ], [ %call7.i.i, %if.then2.i ], [ %call7.i.i, %if.then41.i ], [ %call7.i.i, %do.body38.i.free_sched_crit_edge ], [ %call7.i.i, %if.then53.i ], [ %call7.i.i, %do.body50.i.free_sched_crit_edge ], [ %call7.i.i, %cleanup.thread.i ], [ %call7.i.i, %do.body74.i.free_sched_crit_edge ], [ %call7.i.i, %if.then77.i ]
  %tobool343.not = icmp eq ptr %new_admin.1, null
  br i1 %tobool343.not, label %free_sched.cleanup_crit_edge, label %if.then344

free_sched.cleanup_crit_edge:                     ; preds = %free_sched
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then344:                                       ; preds = %free_sched
  call void @__sanitizer_cov_trace_pc() #16
  call void @call_rcu(ptr noundef nonnull %new_admin.1, ptr noundef nonnull @taprio_free_sched_cb) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then344, %free_sched.cleanup_crit_edge, %if.then23, %do.body.cleanup_crit_edge, %cleanup115.sink.split.i, %do.body100.i.cleanup_crit_edge, %do.body75.i.cleanup_crit_edge, %do.body43.i.cleanup_crit_edge, %do.body26.i.cleanup_crit_edge, %do.body12.i.cleanup_crit_edge, %do.body.i474.cleanup_crit_edge, %cleanup.sink.split.i, %do.body9.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %entry.cleanup_crit_edge ], [ -12, %if.then23 ], [ -12, %do.body.cleanup_crit_edge ], [ %err.2, %if.then344 ], [ %err.2, %free_sched.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -22, %do.body9.i.cleanup_crit_edge ], [ -95, %do.body.i.cleanup_crit_edge ], [ -22, %do.body.i474.cleanup_crit_edge ], [ -22, %do.body12.i.cleanup_crit_edge ], [ -22, %do.body26.i.cleanup_crit_edge ], [ -22, %do.body43.i.cleanup_crit_edge ], [ -22, %do.body75.i.cleanup_crit_edge ], [ -22, %do.body100.i.cleanup_crit_edge ], [ -22, %cleanup115.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tb) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @taprio_attach(ptr noundef %sch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %4 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp29.not = icmp eq i32 %5, 0
  br i1 %cmp29.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %flags = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %refcnt.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %for.body.lr.ph
  %ntx.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end8.for.body_crit_edge ]
  %6 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %privdata.i, align 8
  %arrayidx = getelementptr ptr, ptr %7, i32 %ntx.030
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %flags2 = getelementptr inbounds %struct.Qdisc, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags2, align 8
  %or = or i32 %13, 80
  store i32 %or, ptr %flags2, align 8
  %dev_queue = getelementptr inbounds %struct.Qdisc, ptr %9, i32 0, i32 9
  %14 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_queue, align 8
  %call3 = tail call ptr @dev_graft_qdisc(ptr noundef %15, ptr noundef %9) #14
  br label %if.end

if.else:                                          ; preds = %for.body
  %dev_queue4 = getelementptr inbounds %struct.Qdisc, ptr %9, i32 0, i32 9
  %16 = ptrtoint ptr %dev_queue4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_queue4, align 8
  %call5 = tail call ptr @dev_graft_qdisc(ptr noundef %17, ptr noundef %sch) #14
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %if.else
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #14
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #14, !srcloc !162
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !163

if.end.i.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %21 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !164

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #14
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  %old.0 = phi ptr [ %call3, %if.then ], [ %call5, %if.else.if.end_crit_edge ], [ %call5, %if.else.i.i.i.i.if.end_crit_edge ], [ %call5, %if.end15.sink.split.i.i.i.i ]
  %tobool6.not = icmp eq ptr %old.0, null
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @qdisc_put(ptr noundef nonnull %old.0) #14
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %inc = add nuw i32 %ntx.030, 1
  %22 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %if.end8.for.body_crit_edge, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %if.end8.for.end_crit_edge, %entry.for.end_crit_edge
  %flags9 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %24 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags9, align 8
  %and10 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %for.end.if.end15_crit_edge, label %if.then12

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then12:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %privdata.i, align 8
  tail call void @kfree(ptr noundef %27) #14
  %28 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %privdata.i, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %for.end.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @taprio_dump(ptr noundef %sch, ptr noundef %skb) #0 align 64 {
entry:
  %tmp.i140 = alloca i32, align 4
  %tmp.i138 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %opt = alloca %struct.tc_mqprio_qopt, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 82, ptr nonnull %opt) #14
  %4 = call ptr @memset(ptr %opt, i32 0, i32 82)
  %5 = tail call i32 @llvm.read_register.i32(metadata !152) #14
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %oper_sched = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %9 = ptrtoint ptr %oper_sched to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %oper_sched, align 8
  %call3 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b133 = load i1, ptr @taprio_dump.__warned, align 1
  br i1 %.b133, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @taprio_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1888, ptr noundef nonnull @.str.2) #14
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %admin_sched = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 20
  %11 = ptrtoint ptr %admin_sched to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %admin_sched, align 4
  %call16 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %do.end9.do.end26_crit_edge

do.end9.do.end26_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end26

land.lhs.true18:                                  ; preds = %do.end9
  %call19 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true18.do.end26_crit_edge, label %land.lhs.true21

land.lhs.true18.do.end26_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end26

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %.b131132 = load i1, ptr @taprio_dump.__warned.41, align 1
  br i1 %.b131132, label %land.lhs.true21.do.end26_crit_edge, label %if.then23

land.lhs.true21.do.end26_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end26

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @taprio_dump.__warned.41, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1889, ptr noundef nonnull @.str.2) #14
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %land.lhs.true21.do.end26_crit_edge, %land.lhs.true18.do.end26_crit_edge, %do.end9.do.end26_crit_edge
  %num_tc.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 140
  %13 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_tc.i, align 4
  %conv = trunc i16 %14 to i8
  %15 = ptrtoint ptr %opt to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %opt, align 2
  %prio_tc_map = getelementptr inbounds %struct.tc_mqprio_qopt, ptr %opt, i32 0, i32 1
  %prio_tc_map29 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 142
  %16 = call ptr @memcpy(ptr %prio_tc_map, ptr %prio_tc_map29, i32 16)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp167.not = icmp eq i16 %14, 0
  br i1 %cmp167.not, label %do.end26.for.end_crit_edge, label %do.end26.for.body_crit_edge

do.end26.for.body_crit_edge:                      ; preds = %do.end26
  br label %for.body

do.end26.for.end_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end26.for.body_crit_edge
  %i.0168 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end26.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.net_device, ptr %3, i32 0, i32 141, i32 %i.0168
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx, align 2
  %arrayidx34 = getelementptr %struct.tc_mqprio_qopt, ptr %opt, i32 0, i32 3, i32 %i.0168
  %19 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %arrayidx34, align 2
  %offset = getelementptr %struct.net_device, ptr %3, i32 0, i32 141, i32 %i.0168, i32 1
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %offset, align 2
  %arrayidx38 = getelementptr %struct.tc_mqprio_qopt, ptr %opt, i32 0, i32 4, i32 %i.0168
  %22 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %arrayidx38, align 2
  %inc = add nuw i32 %i.0168, 1
  %23 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_tc.i, align 4
  %conv.i135 = sext i16 %24 to i32
  %cmp = icmp ult i32 %inc, %conv.i135
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end26.for.end_crit_edge
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %25 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i.i, align 8
  %call1.i136 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i136)
  %cmp.i = icmp slt i32 %call1.i136, 0
  %tobool40.not164 = icmp eq ptr %26, null
  %tobool40.not = select i1 %cmp.i, i1 true, i1 %tobool40.not164
  br i1 %tobool40.not, label %for.end.start_error_crit_edge, label %if.end42

for.end.start_error_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %start_error

if.end42:                                         ; preds = %for.end
  %call43 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 82, ptr noundef nonnull %opt) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.if.then.i.i_crit_edge

if.end42.if.then.i.i_crit_edge:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

if.end46:                                         ; preds = %if.end42
  %flags = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 8
  %and = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool47.not = icmp eq i32 %and, 0
  br i1 %tobool47.not, label %land.lhs.true48, label %if.end46.land.lhs.true55_crit_edge

if.end46.land.lhs.true55_crit_edge:               ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true55

land.lhs.true48:                                  ; preds = %if.end46
  %clockid = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %29 = ptrtoint ptr %clockid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %clockid, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #14
  %31 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %tmp.i, align 4
  %call.i137 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool50.not = icmp eq i32 %call.i137, 0
  br i1 %tobool50.not, label %if.end52, label %land.lhs.true48.if.then.i.i_crit_edge

land.lhs.true48.if.then.i.i_crit_edge:            ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

if.end52:                                         ; preds = %land.lhs.true48
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load i32, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool54.not = icmp eq i32 %.pr, 0
  br i1 %tobool54.not, label %if.end52.if.end60_crit_edge, label %if.end52.land.lhs.true55_crit_edge

if.end52.land.lhs.true55_crit_edge:               ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true55

if.end52.if.end60_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

land.lhs.true55:                                  ; preds = %if.end52.land.lhs.true55_crit_edge, %if.end46.land.lhs.true55_crit_edge
  %33 = phi i32 [ %.pr, %if.end52.land.lhs.true55_crit_edge ], [ %28, %if.end46.land.lhs.true55_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i138) #14
  %34 = ptrtoint ptr %tmp.i138 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %tmp.i138, align 4
  %call.i139 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i138) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i138) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool58.not = icmp eq i32 %call.i139, 0
  br i1 %tobool58.not, label %land.lhs.true55.if.end60_crit_edge, label %land.lhs.true55.if.then.i.i_crit_edge

land.lhs.true55.if.then.i.i_crit_edge:            ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

land.lhs.true55.if.end60_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.end60:                                         ; preds = %land.lhs.true55.if.end60_crit_edge, %if.end52.if.end60_crit_edge
  %txtime_delay = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 3
  %35 = ptrtoint ptr %txtime_delay to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %txtime_delay, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool61.not = icmp eq i32 %36, 0
  br i1 %tobool61.not, label %if.end60.if.end67_crit_edge, label %land.lhs.true62

if.end60.if.end67_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

land.lhs.true62:                                  ; preds = %if.end60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i140) #14
  %37 = ptrtoint ptr %tmp.i140 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %tmp.i140, align 4
  %call.i141 = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i140) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i140) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool65.not = icmp eq i32 %call.i141, 0
  br i1 %tobool65.not, label %land.lhs.true62.if.end67_crit_edge, label %land.lhs.true62.if.then.i.i_crit_edge

land.lhs.true62.if.then.i.i_crit_edge:            ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

land.lhs.true62.if.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.end67:                                         ; preds = %land.lhs.true62.if.end67_crit_edge, %if.end60.if.end67_crit_edge
  %tobool68.not = icmp eq ptr %10, null
  br i1 %tobool68.not, label %if.end67.if.end73_crit_edge, label %land.lhs.true69

if.end67.if.end73_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

land.lhs.true69:                                  ; preds = %if.end67
  %call70 = call fastcc i32 @dump_schedule(ptr noundef %skb, ptr noundef nonnull %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %land.lhs.true69.if.end73_crit_edge, label %land.lhs.true69.if.then.i.i_crit_edge

land.lhs.true69.if.then.i.i_crit_edge:            ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

land.lhs.true69.if.end73_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.end73:                                         ; preds = %land.lhs.true69.if.end73_crit_edge, %if.end67.if.end73_crit_edge
  %tobool74.not = icmp eq ptr %12, null
  br i1 %tobool74.not, label %if.end73.done_crit_edge, label %if.end76

if.end73.done_crit_edge:                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end76:                                         ; preds = %if.end73
  %38 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tail.i.i, align 8
  %call1.i143 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i143)
  %cmp.i144 = icmp slt i32 %call1.i143, 0
  %tobool78.not165 = icmp eq ptr %39, null
  %tobool78.not = select i1 %cmp.i144, i1 true, i1 %tobool78.not165
  br i1 %tobool78.not, label %if.end76.if.then.i.i_crit_edge, label %if.end80

if.end76.if.then.i.i_crit_edge:                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

if.end80:                                         ; preds = %if.end76
  %call81 = call fastcc i32 @dump_schedule(ptr noundef %skb, ptr noundef nonnull %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %admin_error

if.end84:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %41 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i147 = trunc i32 %sub.ptr.sub.i to i16
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i147, ptr %39, align 2
  br label %done

done:                                             ; preds = %if.end84, %if.end73.done_crit_edge
  call fastcc void @rcu_read_unlock()
  %43 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i149 = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast.i150 = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i151 = sub i32 %sub.ptr.lhs.cast.i149, %sub.ptr.rhs.cast.i150
  %conv.i152 = trunc i32 %sub.ptr.sub.i151 to i16
  %45 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i152, ptr %26, align 2
  %len.i153 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %46 = ptrtoint ptr %len.i153 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len.i153, align 4
  br label %cleanup

admin_error:                                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @nla_nest_cancel(ptr noundef %skb, ptr noundef nonnull %39)
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %admin_error, %if.end76.if.then.i.i_crit_edge, %land.lhs.true69.if.then.i.i_crit_edge, %land.lhs.true62.if.then.i.i_crit_edge, %land.lhs.true55.if.then.i.i_crit_edge, %land.lhs.true48.if.then.i.i_crit_edge, %if.end42.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %48 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %49, %26
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !163

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %50 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #14
  br label %start_error

start_error:                                      ; preds = %nla_nest_cancel.exit, %for.end.start_error_crit_edge
  %call.i154 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i154, label %start_error.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i157

start_error.rcu_read_unlock.exit_crit_edge:       ; preds = %start_error
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i157:                               ; preds = %start_error
  %call1.i155 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i155)
  %tobool.not.i156 = icmp eq i32 %call1.i155, 0
  br i1 %tobool.not.i156, label %land.lhs.true.i157.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i159

land.lhs.true.i157.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i157
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i159:                              ; preds = %land.lhs.true.i157
  %.b4.i158 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i158, label %land.lhs.true2.i159.rcu_read_unlock.exit_crit_edge, label %if.then.i160

land.lhs.true2.i159.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i159
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i160:                                     ; preds = %land.lhs.true2.i159
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i160, %land.lhs.true2.i159.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i157.rcu_read_unlock.exit_crit_edge, %start_error.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !170
  %52 = call i32 @llvm.read_register.i32(metadata !152) #14
  %and.i.i.i.i.i161 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i161 to ptr
  %preempt_count.i.i.i.i162 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i162 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i162, align 4
  %sub.i.i.i = add i32 %55, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i162, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %done
  %retval.0 = phi i32 [ -28, %rcu_read_unlock.exit ], [ %47, %done ]
  call void @llvm.lifetime.end.p0(i64 82, ptr nonnull %opt) #14
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @taprio_select_queue(ptr nocapture noundef readonly %sch, ptr nocapture noundef readonly %tcm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tcm_parent = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 5
  %0 = ptrtoint ptr %tcm_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tcm_parent, align 4
  %and = and i32 %1, 65535
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %2 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_queue.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %sub.i = add nsw i32 %and, -1
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 104
  %6 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %7)
  %cmp.not.i = icmp ult i32 %sub.i, %7
  br i1 %cmp.not.i, label %if.end.i, label %entry.taprio_queue_get.exit_crit_edge

entry.taprio_queue_get.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %taprio_queue_get.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %sub.i
  br label %taprio_queue_get.exit

taprio_queue_get.exit:                            ; preds = %if.end.i, %entry.taprio_queue_get.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i.i, %if.end.i ], [ null, %entry.taprio_queue_get.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @taprio_graft(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr noundef %new, ptr nocapture noundef writeonly %old, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %sub.i = add i32 %cl, -1
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %4 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %5)
  %cmp.not.i = icmp ult i32 %sub.i, %5
  br i1 %cmp.not.i, label %taprio_queue_get.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

taprio_queue_get.exit:                            ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %sub.i
  %tobool.not = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not, label %taprio_queue_get.exit.cleanup_crit_edge, label %if.end

taprio_queue_get.exit.cleanup_crit_edge:          ; preds = %taprio_queue_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %taprio_queue_get.exit
  %flags = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dev_deactivate(ptr noundef %3) #14
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %flags6 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %10 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags6, align 8
  %and7 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %call10 = tail call ptr @dev_graft_qdisc(ptr noundef nonnull %arrayidx.i.i, ptr noundef %new) #14
  %12 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call10, ptr %old, align 4
  br label %if.end14

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %privdata.i, align 8
  %arrayidx = getelementptr ptr, ptr %14, i32 %sub.i
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %old, align 4
  %18 = load ptr, ptr %privdata.i, align 8
  %arrayidx13 = getelementptr ptr, ptr %18, i32 %sub.i
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %new, ptr %arrayidx13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  %tobool15.not = icmp eq ptr %new, null
  br i1 %tobool15.not, label %if.end14.if.end18_crit_edge, label %if.then16

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %flags17 = getelementptr inbounds %struct.Qdisc, ptr %new, i32 0, i32 2
  %20 = ptrtoint ptr %flags17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags17, align 8
  %or = or i32 %21, 80
  store i32 %or, ptr %flags17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14.if.end18_crit_edge
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 8
  %and20 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end18.cleanup_crit_edge, label %if.then22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dev_activate(ptr noundef %3) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end18.cleanup_crit_edge, %taprio_queue_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %taprio_queue_get.exit.cleanup_crit_edge ], [ 0, %if.then22 ], [ 0, %if.end18.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @taprio_leaf(ptr nocapture noundef readonly %sch, i32 noundef %cl) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %sub.i = add i32 %cl, -1
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %4 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %5)
  %cmp.not.i = icmp ult i32 %sub.i, %5
  br i1 %cmp.not.i, label %taprio_queue_get.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

taprio_queue_get.exit:                            ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %sub.i
  %tobool.not = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not, label %taprio_queue_get.exit.cleanup_crit_edge, label %if.end

taprio_queue_get.exit.cleanup_crit_edge:          ; preds = %taprio_queue_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %taprio_queue_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  %qdisc_sleeping = getelementptr %struct.netdev_queue, ptr %7, i32 %sub.i, i32 3
  %8 = ptrtoint ptr %qdisc_sleeping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qdisc_sleeping, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %taprio_queue_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %9, %if.end ], [ null, %taprio_queue_get.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @taprio_find(ptr nocapture noundef readonly %sch, i32 noundef %classid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %classid, 65535
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %sub.i = add nsw i32 %and, -1
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %4 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %5)
  %cmp.not.i = icmp ult i32 %sub.i, %5
  br i1 %cmp.not.i, label %if.end.i, label %entry.taprio_queue_get.exit_crit_edge

entry.taprio_queue_get.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %taprio_queue_get.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %sub.i
  %phi.cmp = icmp eq ptr %arrayidx.i.i, null
  %phi.sel = select i1 %phi.cmp, i32 0, i32 %and
  br label %taprio_queue_get.exit

taprio_queue_get.exit:                            ; preds = %if.end.i, %entry.taprio_queue_get.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.sel, %if.end.i ], [ 0, %entry.taprio_queue_get.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @taprio_walk(ptr noundef %sch, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %2 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_queue.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %skip = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 1
  %6 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %skip, align 4
  %count = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 2
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 104
  %8 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %count, align 4
  %9 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %10)
  %cmp20 = icmp ult i32 %7, %10
  br i1 %cmp20, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %fn = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %for.body.lr.ph
  %ntx.021 = phi i32 [ %7, %for.body.lr.ph ], [ %add, %if.end6.for.body_crit_edge ]
  %11 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fn, align 4
  %add = add nuw i32 %ntx.021, 1
  %call2 = tail call i32 %12(ptr noundef %sch, i32 noundef %add, ptr noundef %arg) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %arg, align 4
  br label %cleanup

if.end6:                                          ; preds = %for.body
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %count, align 4
  %16 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %add, %17
  br i1 %cmp, label %if.end6.for.body_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup:                                          ; preds = %if.end6.cleanup_crit_edge, %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @taprio_dump_class(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr nocapture noundef readnone %skb, ptr nocapture noundef %tcm) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %sub.i = add i32 %cl, -1
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %4 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %5)
  %cmp.not.i = icmp ult i32 %sub.i, %5
  br i1 %cmp.not.i, label %if.end.i, label %entry.taprio_queue_get.exit_crit_edge

entry.taprio_queue_get.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %taprio_queue_get.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %sub.i
  br label %taprio_queue_get.exit

taprio_queue_get.exit:                            ; preds = %if.end.i, %entry.taprio_queue_get.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i.i, %if.end.i ], [ null, %entry.taprio_queue_get.exit_crit_edge ]
  %tcm_parent = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 5
  %8 = ptrtoint ptr %tcm_parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %tcm_parent, align 4
  %and = and i32 %cl, 65535
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 4
  %9 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tcm_handle, align 4
  %or = or i32 %10, %and
  store i32 %or, ptr %tcm_handle, align 4
  %qdisc_sleeping = getelementptr inbounds %struct.netdev_queue, ptr %retval.0.i, i32 0, i32 3
  %11 = ptrtoint ptr %qdisc_sleeping to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qdisc_sleeping, align 4
  %handle = getelementptr inbounds %struct.Qdisc, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %handle, align 32
  %tcm_info = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 6
  %15 = ptrtoint ptr %tcm_info to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tcm_info, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @taprio_dump_class_stats(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %sub.i = add i32 %cl, -1
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %4 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %5)
  %cmp.not.i = icmp ult i32 %sub.i, %5
  br i1 %cmp.not.i, label %if.end.i, label %entry.taprio_queue_get.exit_crit_edge

entry.taprio_queue_get.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %taprio_queue_get.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %sub.i
  br label %taprio_queue_get.exit

taprio_queue_get.exit:                            ; preds = %if.end.i, %entry.taprio_queue_get.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i.i, %if.end.i ], [ null, %entry.taprio_queue_get.exit_crit_edge ]
  %qdisc_sleeping = getelementptr inbounds %struct.netdev_queue, ptr %retval.0.i, i32 0, i32 3
  %8 = ptrtoint ptr %qdisc_sleeping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qdisc_sleeping, align 4
  %bstats = getelementptr inbounds %struct.Qdisc, ptr %9, i32 0, i32 18
  %call1 = tail call i32 @gnet_stats_copy_basic(ptr noundef %d, ptr noundef null, ptr noundef %bstats, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %taprio_queue_get.exit.cleanup_crit_edge, label %lor.lhs.false

taprio_queue_get.exit.cleanup_crit_edge:          ; preds = %taprio_queue_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %taprio_queue_get.exit
  %qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qstats.i.i, align 32
  %flags.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i.i, align 8
  %and.i.i.i = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %call216.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__sanitizer_cov_trace_cmp4(i32 %call216.i.i, i32 %14)
  %cmp17.i.i = icmp ult i32 %call216.i.i, %14
  br i1 %cmp17.i.i, label %do.body.lr.ph.i.i, label %for.cond.preheader.i.i.qdisc_qstats_copy.exit_crit_edge

for.cond.preheader.i.i.qdisc_qstats_copy.exit_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qdisc_qstats_copy.exit

do.body.lr.ph.i.i:                                ; preds = %for.cond.preheader.i.i
  %cpu_qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %9, i32 0, i32 12
  %15 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cpu_qstats.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.lr.ph.i.i
  %call219.i.i = phi i32 [ %call216.i.i, %do.body.lr.ph.i.i ], [ %call2.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %qlen.018.i.i = phi i32 [ %11, %do.body.lr.ph.i.i ], [ %add5.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %arrayidx.i.i7 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call219.i.i
  %18 = ptrtoint ptr %arrayidx.i.i7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i7, align 4
  %add.i.i = add i32 %19, %17
  %20 = inttoptr i32 %add.i.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add5.i.i = add i32 %22, %qlen.018.i.i
  %call2.i.i = tail call i32 @cpumask_next(i32 noundef %call219.i.i, ptr noundef nonnull @__cpu_possible_mask) #20
  %cmp.i.i = icmp ult i32 %call2.i.i, %14
  br i1 %cmp.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.body.i.i.qdisc_qstats_copy.exit_crit_edge

do.body.i.i.qdisc_qstats_copy.exit_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qdisc_qstats_copy.exit

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

if.else.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %qlen7.i.i = getelementptr inbounds %struct.Qdisc, ptr %9, i32 0, i32 17, i32 2
  %23 = ptrtoint ptr %qlen7.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qlen7.i.i, align 8
  %add8.i.i = add i32 %24, %11
  br label %qdisc_qstats_copy.exit

qdisc_qstats_copy.exit:                           ; preds = %if.else.i.i, %do.body.i.i.qdisc_qstats_copy.exit_crit_edge, %for.cond.preheader.i.i.qdisc_qstats_copy.exit_crit_edge
  %qlen.1.i.i = phi i32 [ %add8.i.i, %if.else.i.i ], [ %11, %for.cond.preheader.i.i.qdisc_qstats_copy.exit_crit_edge ], [ %add5.i.i, %do.body.i.i.qdisc_qstats_copy.exit_crit_edge ]
  %cpu_qstats.i = getelementptr inbounds %struct.Qdisc, ptr %9, i32 0, i32 12
  %25 = ptrtoint ptr %cpu_qstats.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cpu_qstats.i, align 4
  %call1.i = tail call i32 @gnet_stats_copy_queue(ptr noundef %d, ptr noundef %26, ptr noundef %qstats.i.i, i32 noundef %qlen.1.i.i) #14
  %call1.i.lobit = ashr i32 %call1.i, 31
  br label %cleanup

cleanup:                                          ; preds = %qdisc_qstats_copy.exit, %taprio_queue_get.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %taprio_queue_get.exit.cleanup_crit_edge ], [ %call1.i.lobit, %qdisc_qstats_copy.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_deactivate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_graft_qdisc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_activate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_basic(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_queue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @netif_skb_features(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @taprio_enqueue_one(ptr noundef %skb, ptr noundef %sch, ptr noundef %child, ptr noundef %to_free) unnamed_addr #0 align 64 {
entry:
  %_ipv6h.i.i = alloca %struct.ipv6hdr, align 4
  %interval_end.i33 = alloca i64, align 8
  %interval_start.i34 = alloca i64, align 8
  %interval_start.i = alloca i64, align 8
  %interval_end.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %interval_start.i) #14
  %7 = ptrtoint ptr %interval_start.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %interval_start.i, align 8, !annotation !168
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %interval_end.i) #14
  %8 = ptrtoint ptr %interval_end.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %interval_end.i, align 8, !annotation !168
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #14
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %if.then.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.rcu_read_lock.exit.i_crit_edge
  %oper_sched.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %13 = ptrtoint ptr %oper_sched.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %oper_sched.i, align 8
  %call3.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end9.i_crit_edge

rcu_read_lock.exit.i.do.end9.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end9.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b35.i = load i1, ptr @is_valid_interval.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true6.i.do.end9.i_crit_edge, label %if.then.i

land.lhs.true6.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @is_valid_interval.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 271, ptr noundef nonnull @.str.2) #14
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i, %land.lhs.true6.i.do.end9.i_crit_edge, %land.lhs.true.i.do.end9.i_crit_edge, %rcu_read_lock.exit.i.do.end9.i_crit_edge
  %admin_sched.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 20
  %15 = ptrtoint ptr %admin_sched.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %admin_sched.i, align 4
  %call16.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %land.lhs.true18.i, label %do.end9.i.do.end26.i_crit_edge

do.end9.i.do.end26.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end26.i

land.lhs.true18.i:                                ; preds = %do.end9.i
  %call19.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %land.lhs.true18.i.do.end26.i_crit_edge, label %land.lhs.true21.i

land.lhs.true18.i.do.end26.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end26.i

land.lhs.true21.i:                                ; preds = %land.lhs.true18.i
  %.b3334.i = load i1, ptr @is_valid_interval.__warned.3, align 1
  br i1 %.b3334.i, label %land.lhs.true21.i.do.end26.i_crit_edge, label %if.then23.i

land.lhs.true21.i.do.end26.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end26.i

if.then23.i:                                      ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @is_valid_interval.__warned.3, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 272, ptr noundef nonnull @.str.2) #14
  br label %do.end26.i

do.end26.i:                                       ; preds = %if.then23.i, %land.lhs.true21.i.do.end26.i_crit_edge, %land.lhs.true18.i.do.end26.i_crit_edge, %do.end9.i.do.end26.i_crit_edge
  %17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %17, align 8
  %call28.i = call fastcc ptr @find_entry_to_transmit(ptr noundef %skb, ptr noundef %sch, ptr noundef %14, ptr noundef %16, i64 noundef %19, ptr noundef nonnull %interval_start.i, ptr noundef nonnull %interval_end.i, i1 noundef zeroext true) #14
  %call.i36.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i36.i, label %do.end26.i.is_valid_interval.exit_crit_edge, label %land.lhs.true.i39.i

do.end26.i.is_valid_interval.exit_crit_edge:      ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %is_valid_interval.exit

land.lhs.true.i39.i:                              ; preds = %do.end26.i
  %call1.i37.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37.i)
  %tobool.not.i38.i = icmp eq i32 %call1.i37.i, 0
  br i1 %tobool.not.i38.i, label %land.lhs.true.i39.i.is_valid_interval.exit_crit_edge, label %land.lhs.true2.i41.i

land.lhs.true.i39.i.is_valid_interval.exit_crit_edge: ; preds = %land.lhs.true.i39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %is_valid_interval.exit

land.lhs.true2.i41.i:                             ; preds = %land.lhs.true.i39.i
  %.b4.i40.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i40.i, label %land.lhs.true2.i41.i.is_valid_interval.exit_crit_edge, label %if.then.i42.i

land.lhs.true2.i41.i.is_valid_interval.exit_crit_edge: ; preds = %land.lhs.true2.i41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %is_valid_interval.exit

if.then.i42.i:                                    ; preds = %land.lhs.true2.i41.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #14
  br label %is_valid_interval.exit

is_valid_interval.exit:                           ; preds = %if.then.i42.i, %land.lhs.true2.i41.i.is_valid_interval.exit_crit_edge, %land.lhs.true.i39.i.is_valid_interval.exit_crit_edge, %do.end26.i.is_valid_interval.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !170
  %20 = tail call i32 @llvm.read_register.i32(metadata !152) #14
  %and.i.i.i.i.i43.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i43.i to ptr
  %preempt_count.i.i.i.i44.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i44.i, align 4
  %sub.i.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i44.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %tobool29.i.not = icmp eq ptr %call28.i, null
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %interval_end.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %interval_start.i) #14
  br i1 %tobool29.i.not, label %if.then3, label %is_valid_interval.exit.if.end13_crit_edge

is_valid_interval.exit.if.end13_crit_edge:        ; preds = %is_valid_interval.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then3:                                         ; preds = %is_valid_interval.exit
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %to_free, align 4
  %26 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %27 = ptrtoint ptr %drops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %drops.i.i.i, align 4
  %inc.i.i.i = add i32 %28, 1
  store i32 %inc.i.i.i, ptr %drops.i.i.i, align 4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %flags = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 8
  %and = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.else.if.end13_crit_edge, label %if.then6

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then6:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %interval_end.i33) #14
  %31 = ptrtoint ptr %interval_end.i33 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 -1, ptr %interval_end.i33, align 8, !annotation !168
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %interval_start.i34) #14
  %32 = ptrtoint ptr %interval_start.i34 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 -1, ptr %interval_start.i34, align 8, !annotation !168
  %call.i128.i = tail call i64 @ktime_get() #14
  %tk_offset1.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %33 = ptrtoint ptr %tk_offset1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %tk_offset1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cond.i.i.i = icmp eq i32 %34, 3
  br i1 %cond.i.i.i, label %if.then6.taprio_get_time.exit.i_crit_edge, label %sw.default.i.i.i

if.then6.taprio_get_time.exit.i_crit_edge:        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %taprio_get_time.exit.i

sw.default.i.i.i:                                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call i64 @ktime_mono_to_any(i64 noundef %call.i128.i, i32 noundef %34) #14
  br label %taprio_get_time.exit.i

taprio_get_time.exit.i:                           ; preds = %sw.default.i.i.i, %if.then6.taprio_get_time.exit.i_crit_edge
  %retval.0.i.i.i = phi i64 [ %call.i.i.i, %sw.default.i.i.i ], [ %call.i128.i, %if.then6.taprio_get_time.exit.i_crit_edge ]
  %txtime_delay.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 3
  %35 = ptrtoint ptr %txtime_delay.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %txtime_delay.i, align 8
  %conv.i = zext i32 %36 to i64
  %add.i = add i64 %retval.0.i.i.i, %conv.i
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %37 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %39 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %40 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %38, i32 %conv.i.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %41 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_ipv6h.i.i) #14
  %43 = call ptr @memset(ptr %_ipv6h.i.i, i32 255, i32 40)
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %44 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %46 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_len.i.i.i.i, align 8
  %48 = add i32 %sub.ptr.sub.i.i.i, %47
  %sub.i1.i.i.i = sub i32 %45, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %sub.i1.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i, 39
  br i1 %cmp.i.i.i.i, label %skb_header_pointer.exit.i.i, label %if.end.i.i.i.i, !prof !164

if.end.i.i.i.i:                                   ; preds = %taprio_get_time.exit.i
  %tobool2.not.i.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.get_tcp_tstamp.exit.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.get_tcp_tstamp.exit.i_crit_edge:   ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_tcp_tstamp.exit.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub.ptr.sub.i.i.i, ptr noundef nonnull %_ipv6h.i.i, i32 noundef 40) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp3.i.i.i.i, label %lor.lhs.false.i.i.i.i.get_tcp_tstamp.exit.i_crit_edge, label %lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge

lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

lor.lhs.false.i.i.i.i.get_tcp_tstamp.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_tcp_tstamp.exit.i

skb_header_pointer.exit.i.i:                      ; preds = %taprio_get_time.exit.i
  %add.ptr.i.i55.i.i = getelementptr i8, ptr %42, i32 %sub.ptr.sub.i.i.i
  %tobool.not.i129.i = icmp eq ptr %add.ptr.i.i55.i.i, null
  br i1 %tobool.not.i129.i, label %skb_header_pointer.exit.i.i.get_tcp_tstamp.exit.i_crit_edge, label %skb_header_pointer.exit.i.i.if.end.i.i_crit_edge

skb_header_pointer.exit.i.i.if.end.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

skb_header_pointer.exit.i.i.get_tcp_tstamp.exit.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_tcp_tstamp.exit.i

if.end.i.i:                                       ; preds = %skb_header_pointer.exit.i.i.if.end.i.i_crit_edge, %lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge
  %retval.0.i.i76.i.i = phi ptr [ %add.ptr.i.i55.i.i, %skb_header_pointer.exit.i.i.if.end.i.i_crit_edge ], [ %_ipv6h.i.i, %lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge ]
  %49 = ptrtoint ptr %retval.0.i.i76.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load.i.i = load i8, ptr %retval.0.i.i76.i.i, align 4
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 4
  %trunc.i.i = trunc i8 %bf.lshr.i.i to i4
  %50 = zext i4 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.44)
  switch i4 %trunc.i.i, label %if.end.i.i.if.end36.i.i_crit_edge [
    i4 4, label %if.then3.i.i
    i4 6, label %land.lhs.true.i130.i
  ]

if.end.i.i.if.end36.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %protocol.i.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i76.i.i, i32 0, i32 6
  %51 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %protocol.i.i, align 1
  %53 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %52, label %if.then3.i.i.get_tcp_tstamp.exit.i_crit_edge [
    i8 41, label %if.then9.i.i
    i8 6, label %if.then3.i.i.if.end36.i.i_crit_edge
  ]

if.then3.i.i.if.end36.i.i_crit_edge:              ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i.i

if.then3.i.i.get_tcp_tstamp.exit.i_crit_edge:     ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_tcp_tstamp.exit.i

if.then9.i.i:                                     ; preds = %if.then3.i.i
  %bf.clear.i.i = shl i8 %bf.load.i.i, 2
  %54 = and i8 %bf.clear.i.i, 60
  %mul.i.i = zext i8 %54 to i32
  %add.i.i = add i32 %sub.ptr.sub.i.i.i, %mul.i.i
  %55 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len.i.i.i.i, align 4
  %57 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %data_len.i.i.i.i, align 8
  %59 = add i32 %add.i.i, %58
  %sub.i1.i58.i.i = sub i32 %56, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %sub.i1.i58.i.i)
  %cmp.i.i59.i.i = icmp sgt i32 %sub.i1.i58.i.i, 39
  br i1 %cmp.i.i59.i.i, label %skb_header_pointer.exit70.i.i, label %if.end.i.i64.i.i, !prof !164

if.end.i.i64.i.i:                                 ; preds = %if.then9.i.i
  %tobool2.not.i.i63.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i63.i.i, label %if.end.i.i64.i.i.get_tcp_tstamp.exit.i_crit_edge, label %lor.lhs.false.i.i68.i.i

if.end.i.i64.i.i.get_tcp_tstamp.exit.i_crit_edge: ; preds = %if.end.i.i64.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_tcp_tstamp.exit.i

lor.lhs.false.i.i68.i.i:                          ; preds = %if.end.i.i64.i.i
  %call.i.i65.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add.i.i, ptr noundef nonnull %_ipv6h.i.i, i32 noundef 40) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i65.i.i)
  %cmp3.i.i66.i.i = icmp slt i32 %call.i.i65.i.i, 0
  br i1 %cmp3.i.i66.i.i, label %lor.lhs.false.i.i68.i.i.get_tcp_tstamp.exit.i_crit_edge, label %lor.lhs.false.i.i68.i.i.lor.lhs.false.i.i_crit_edge

lor.lhs.false.i.i68.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %lor.lhs.false.i.i68.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i68.i.i.get_tcp_tstamp.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i68.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_tcp_tstamp.exit.i

skb_header_pointer.exit70.i.i:                    ; preds = %if.then9.i.i
  %60 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i61.i.i = getelementptr i8, ptr %61, i32 %add.i.i
  %tobool11.not.i.i = icmp eq ptr %add.ptr.i.i61.i.i, null
  br i1 %tobool11.not.i.i, label %skb_header_pointer.exit70.i.i.get_tcp_tstamp.exit.i_crit_edge, label %skb_header_pointer.exit70.i.i.lor.lhs.false.i.i_crit_edge

skb_header_pointer.exit70.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %skb_header_pointer.exit70.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i.i

skb_header_pointer.exit70.i.i.get_tcp_tstamp.exit.i_crit_edge: ; preds = %skb_header_pointer.exit70.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_tcp_tstamp.exit.i

lor.lhs.false.i.i:                                ; preds = %skb_header_pointer.exit70.i.i.lor.lhs.false.i.i_crit_edge, %lor.lhs.false.i.i68.i.i.lor.lhs.false.i.i_crit_edge
  %retval.0.i.i6983.i.i = phi ptr [ %add.ptr.i.i61.i.i, %skb_header_pointer.exit70.i.i.lor.lhs.false.i.i_crit_edge ], [ %_ipv6h.i.i, %lor.lhs.false.i.i68.i.i.lor.lhs.false.i.i_crit_edge ]
  %nexthdr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i6983.i.i, i32 0, i32 3
  %62 = ptrtoint ptr %nexthdr.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %nexthdr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %63)
  %cmp13.not.i.i = icmp eq i8 %63, 6
  br i1 %cmp13.not.i.i, label %lor.lhs.false.i.i.if.end36.i.i_crit_edge, label %lor.lhs.false.i.i.get_tcp_tstamp.exit.i_crit_edge

lor.lhs.false.i.i.get_tcp_tstamp.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_tcp_tstamp.exit.i

lor.lhs.false.i.i.if.end36.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i.i

land.lhs.true.i130.i:                             ; preds = %if.end.i.i
  %nexthdr30.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i76.i.i, i32 0, i32 3
  %64 = ptrtoint ptr %nexthdr30.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %nexthdr30.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %65)
  %cmp32.not.i.i = icmp eq i8 %65, 6
  br i1 %cmp32.not.i.i, label %land.lhs.true.i130.i.if.end36.i.i_crit_edge, label %land.lhs.true.i130.i.get_tcp_tstamp.exit.i_crit_edge

land.lhs.true.i130.i.get_tcp_tstamp.exit.i_crit_edge: ; preds = %land.lhs.true.i130.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_tcp_tstamp.exit.i

land.lhs.true.i130.i.if.end36.i.i_crit_edge:      ; preds = %land.lhs.true.i130.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %land.lhs.true.i130.i.if.end36.i.i_crit_edge, %lor.lhs.false.i.i.if.end36.i.i_crit_edge, %if.then3.i.i.if.end36.i.i_crit_edge, %if.end.i.i.if.end36.i.i_crit_edge
  %66 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %66, align 8
  %69 = ptrtoint ptr %tk_offset1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %tk_offset1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %70)
  %cond.i.i132.i = icmp eq i32 %70, 3
  br i1 %cond.i.i132.i, label %if.end36.i.i.get_tcp_tstamp.exit.i_crit_edge, label %sw.default.i.i134.i

if.end36.i.i.get_tcp_tstamp.exit.i_crit_edge:     ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_tcp_tstamp.exit.i

sw.default.i.i134.i:                              ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i133.i = call i64 @ktime_mono_to_any(i64 noundef %68, i32 noundef %70) #14
  br label %get_tcp_tstamp.exit.i

get_tcp_tstamp.exit.i:                            ; preds = %sw.default.i.i134.i, %if.end36.i.i.get_tcp_tstamp.exit.i_crit_edge, %land.lhs.true.i130.i.get_tcp_tstamp.exit.i_crit_edge, %lor.lhs.false.i.i.get_tcp_tstamp.exit.i_crit_edge, %skb_header_pointer.exit70.i.i.get_tcp_tstamp.exit.i_crit_edge, %lor.lhs.false.i.i68.i.i.get_tcp_tstamp.exit.i_crit_edge, %if.end.i.i64.i.i.get_tcp_tstamp.exit.i_crit_edge, %if.then3.i.i.get_tcp_tstamp.exit.i_crit_edge, %skb_header_pointer.exit.i.i.get_tcp_tstamp.exit.i_crit_edge, %lor.lhs.false.i.i.i.i.get_tcp_tstamp.exit.i_crit_edge, %if.end.i.i.i.i.get_tcp_tstamp.exit.i_crit_edge
  %retval.0.i.i = phi i64 [ 0, %skb_header_pointer.exit.i.i.get_tcp_tstamp.exit.i_crit_edge ], [ 0, %lor.lhs.false.i.i.get_tcp_tstamp.exit.i_crit_edge ], [ 0, %skb_header_pointer.exit70.i.i.get_tcp_tstamp.exit.i_crit_edge ], [ 0, %if.then3.i.i.get_tcp_tstamp.exit.i_crit_edge ], [ 0, %land.lhs.true.i130.i.get_tcp_tstamp.exit.i_crit_edge ], [ %call.i.i133.i, %sw.default.i.i134.i ], [ %68, %if.end36.i.i.get_tcp_tstamp.exit.i_crit_edge ], [ 0, %if.end.i.i.i.i.get_tcp_tstamp.exit.i_crit_edge ], [ 0, %lor.lhs.false.i.i.i.i.get_tcp_tstamp.exit.i_crit_edge ], [ 0, %if.end.i.i64.i.i.get_tcp_tstamp.exit.i_crit_edge ], [ 0, %lor.lhs.false.i.i68.i.i.get_tcp_tstamp.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_ipv6h.i.i) #14
  %71 = call i64 @llvm.smax.i64(i64 %add.i, i64 %retval.0.i.i) #14
  %72 = call i32 @llvm.read_register.i32(metadata !152) #14
  %and.i.i.i.i.i.i35 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i.i.i.i35 to ptr
  %preempt_count.i.i.i.i.i36 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i.i.i.i36, align 4
  %add.i.i.i.i37 = add i32 %75, 1
  store volatile i32 %add.i.i.i.i37, ptr %preempt_count.i.i.i.i.i36, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i38 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i38, label %get_tcp_tstamp.exit.i.rcu_read_lock.exit.i47_crit_edge, label %land.lhs.true.i.i41

get_tcp_tstamp.exit.i.rcu_read_lock.exit.i47_crit_edge: ; preds = %get_tcp_tstamp.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i47

land.lhs.true.i.i41:                              ; preds = %get_tcp_tstamp.exit.i
  %call1.i.i39 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i39)
  %tobool.not.i.i40 = icmp eq i32 %call1.i.i39, 0
  br i1 %tobool.not.i.i40, label %land.lhs.true.i.i41.rcu_read_lock.exit.i47_crit_edge, label %land.lhs.true2.i.i43

land.lhs.true.i.i41.rcu_read_lock.exit.i47_crit_edge: ; preds = %land.lhs.true.i.i41
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i47

land.lhs.true2.i.i43:                             ; preds = %land.lhs.true.i.i41
  %.b4.i.i42 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i42, label %land.lhs.true2.i.i43.rcu_read_lock.exit.i47_crit_edge, label %if.then.i.i44

land.lhs.true2.i.i43.rcu_read_lock.exit.i47_crit_edge: ; preds = %land.lhs.true2.i.i43
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i47

if.then.i.i44:                                    ; preds = %land.lhs.true2.i.i43
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #14
  br label %rcu_read_lock.exit.i47

rcu_read_lock.exit.i47:                           ; preds = %if.then.i.i44, %land.lhs.true2.i.i43.rcu_read_lock.exit.i47_crit_edge, %land.lhs.true.i.i41.rcu_read_lock.exit.i47_crit_edge, %get_tcp_tstamp.exit.i.rcu_read_lock.exit.i47_crit_edge
  %admin_sched.i45 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 20
  %76 = ptrtoint ptr %admin_sched.i45 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %admin_sched.i45, align 4
  %call7.i = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i46 = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i46, label %land.lhs.true.i48, label %rcu_read_lock.exit.i47.do.end13.i_crit_edge

rcu_read_lock.exit.i47.do.end13.i_crit_edge:      ; preds = %rcu_read_lock.exit.i47
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13.i

land.lhs.true.i48:                                ; preds = %rcu_read_lock.exit.i47
  %call8.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i48.do.end13.i_crit_edge, label %land.lhs.true10.i

land.lhs.true.i48.do.end13.i_crit_edge:           ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i48
  %.b127.i = load i1, ptr @get_packet_txtime.__warned, align 1
  br i1 %.b127.i, label %land.lhs.true10.i.do.end13.i_crit_edge, label %if.then.i49

land.lhs.true10.i.do.end13.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13.i

if.then.i49:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @get_packet_txtime.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 361, ptr noundef nonnull @.str.2) #14
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.then.i49, %land.lhs.true10.i.do.end13.i_crit_edge, %land.lhs.true.i48.do.end13.i_crit_edge, %rcu_read_lock.exit.i47.do.end13.i_crit_edge
  %oper_sched.i50 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %78 = ptrtoint ptr %oper_sched.i50 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %oper_sched.i50, align 8
  %call20.i = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %land.lhs.true22.i, label %do.end13.i.do.end30.i_crit_edge

do.end13.i.do.end30.i_crit_edge:                  ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30.i

land.lhs.true22.i:                                ; preds = %do.end13.i
  %call23.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true22.i.do.end30.i_crit_edge, label %land.lhs.true25.i

land.lhs.true22.i.do.end30.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30.i

land.lhs.true25.i:                                ; preds = %land.lhs.true22.i
  %.b124126.i = load i1, ptr @get_packet_txtime.__warned.7, align 1
  br i1 %.b124126.i, label %land.lhs.true25.i.do.end30.i_crit_edge, label %if.then27.i

land.lhs.true25.i.do.end30.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30.i

if.then27.i:                                      ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @get_packet_txtime.__warned.7, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 362, ptr noundef nonnull @.str.2) #14
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then27.i, %land.lhs.true25.i.do.end30.i_crit_edge, %land.lhs.true22.i.do.end30.i_crit_edge, %do.end13.i.do.end30.i_crit_edge
  %tobool32.not.i = icmp eq ptr %77, null
  br i1 %tobool32.not.i, label %do.end30.i.if.end37.i_crit_edge, label %land.lhs.true33.i

do.end30.i.if.end37.i_crit_edge:                  ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37.i

land.lhs.true33.i:                                ; preds = %do.end30.i
  %base_time.i = getelementptr inbounds %struct.sched_gate_list, ptr %77, i32 0, i32 6
  %80 = ptrtoint ptr %base_time.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %base_time.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %71, i64 %81)
  %cmp3.i.i.i = icmp sgt i64 %71, %81
  br i1 %cmp3.i.i.i, label %if.then36.i, label %land.lhs.true33.i.if.end37.i_crit_edge

land.lhs.true33.i.if.end37.i_crit_edge:           ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37.i

if.then36.i:                                      ; preds = %land.lhs.true33.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !174
  %82 = ptrtoint ptr %oper_sched.i50 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %77, ptr %oper_sched.i50, align 8
  %83 = ptrtoint ptr %admin_sched.i45 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr null, ptr %admin_sched.i45, align 4
  %tobool.not.i135.i = icmp eq ptr %79, null
  br i1 %tobool.not.i135.i, label %if.then36.i.lor.lhs.false.i_crit_edge, label %if.then71.i.i

if.then36.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i

if.then71.i.i:                                    ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @call_rcu(ptr noundef nonnull %79, ptr noundef nonnull @taprio_free_sched_cb) #14
  br label %lor.lhs.false.i

if.end37.i:                                       ; preds = %land.lhs.true33.i.if.end37.i_crit_edge, %do.end30.i.if.end37.i_crit_edge
  %tobool38.not.i = icmp eq ptr %79, null
  br i1 %tobool38.not.i, label %if.end37.i.if.then42.i_crit_edge, label %if.end37.i.lor.lhs.false.i_crit_edge

if.end37.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i

if.end37.i.if.then42.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then42.i

lor.lhs.false.i:                                  ; preds = %if.end37.i.lor.lhs.false.i_crit_edge, %if.then71.i.i, %if.then36.i.lor.lhs.false.i_crit_edge
  %admin.0164.i = phi ptr [ %77, %if.end37.i.lor.lhs.false.i_crit_edge ], [ null, %if.then36.i.lor.lhs.false.i_crit_edge ], [ null, %if.then71.i.i ]
  %sched.0163.i = phi ptr [ %79, %if.end37.i.lor.lhs.false.i_crit_edge ], [ %77, %if.then36.i.lor.lhs.false.i_crit_edge ], [ %77, %if.then71.i.i ]
  %base_time39.i = getelementptr inbounds %struct.sched_gate_list, ptr %sched.0163.i, i32 0, i32 6
  %84 = ptrtoint ptr %base_time39.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %base_time39.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %71, i64 %85)
  %cmp.i.i.i = icmp slt i64 %71, %85
  br i1 %cmp.i.i.i, label %lor.lhs.false.i.if.then42.i_crit_edge, label %if.end43.i

lor.lhs.false.i.if.then42.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then42.i

if.then42.i:                                      ; preds = %lor.lhs.false.i.if.then42.i_crit_edge, %if.end37.i.if.then42.i_crit_edge
  %extract.t.i = trunc i64 %71 to i32
  br label %done.i

if.end43.i:                                       ; preds = %lor.lhs.false.i
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %86 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cb.i.i.i, align 4
  %conv.i.i = sext i32 %87 to i64
  %picos_per_byte.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %call.i.i.i136.i = call zeroext i1 @__kasan_check_read(ptr noundef %picos_per_byte.i.i, i32 noundef 8) #14
  %call.i.i137.i = call i64 @generic_atomic64_read(ptr noundef %picos_per_byte.i.i) #14
  %mul.i138.i = mul i64 %call.i.i137.i, %conv.i.i
  %88 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i138.i, i32 0) #19, !srcloc !171
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %88, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %88, 1
  %89 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i138.i, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #19, !srcloc !172
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %89, 0
  %base_time70.i = getelementptr inbounds %struct.sched_gate_list, ptr %admin.0164.i, i32 0, i32 6
  %90 = shl i64 %asmresult10.i.i.i.i.i, 23
  %conv75.i = ashr i64 %90, 32
  %call47.i6774 = call fastcc ptr @find_entry_to_transmit(ptr noundef %skb, ptr noundef %sch, ptr noundef nonnull %sched.0163.i, ptr noundef %admin.0164.i, i64 noundef %71, ptr noundef nonnull %interval_start.i34, ptr noundef nonnull %interval_end.i33, i1 noundef zeroext false) #14
  %tobool48.not.i6875 = icmp eq ptr %call47.i6774, null
  br i1 %tobool48.not.i6875, label %if.end43.i.done.i_crit_edge, label %if.end50.i.lr.ph.lr.ph

if.end43.i.done.i_crit_edge:                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %done.i

if.end50.i.lr.ph.lr.ph:                           ; preds = %if.end43.i
  %tobool65.not.i = icmp eq ptr %admin.0164.i, null
  %cmp67.not.i71 = icmp eq ptr %admin.0164.i, %sched.0163.i
  %or.cond.i72 = or i1 %tobool65.not.i, %cmp67.not.i71
  br label %if.end50.i.lr.ph

do.body46.outer.i.loopexit:                       ; preds = %land.lhs.true69.i
  %call47.i67 = call fastcc ptr @find_entry_to_transmit(ptr noundef %skb, ptr noundef %sch, ptr noundef %admin.0164.i, ptr noundef %admin.0164.i, i64 noundef %minimum_time.0.i69, ptr noundef nonnull %interval_start.i34, ptr noundef nonnull %interval_end.i33, i1 noundef zeroext false) #14
  %tobool48.not.i68 = icmp eq ptr %call47.i67, null
  br i1 %tobool48.not.i68, label %do.body46.outer.i.loopexit.done.i_crit_edge, label %do.body46.outer.i.loopexit.if.end50.i.lr.ph_crit_edge

do.body46.outer.i.loopexit.if.end50.i.lr.ph_crit_edge: ; preds = %do.body46.outer.i.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50.i.lr.ph

do.body46.outer.i.loopexit.done.i_crit_edge:      ; preds = %do.body46.outer.i.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %done.i

if.end50.i.lr.ph:                                 ; preds = %do.body46.outer.i.loopexit.if.end50.i.lr.ph_crit_edge, %if.end50.i.lr.ph.lr.ph
  %call47.i6780 = phi ptr [ %call47.i6774, %if.end50.i.lr.ph.lr.ph ], [ %call47.i67, %do.body46.outer.i.loopexit.if.end50.i.lr.ph_crit_edge ]
  %or.cond.i78 = phi i1 [ %or.cond.i72, %if.end50.i.lr.ph.lr.ph ], [ true, %do.body46.outer.i.loopexit.if.end50.i.lr.ph_crit_edge ]
  %minimum_time.0.ph.i77 = phi i64 [ %71, %if.end50.i.lr.ph.lr.ph ], [ %minimum_time.0.i69, %do.body46.outer.i.loopexit.if.end50.i.lr.ph_crit_edge ]
  %sched.1.ph.i76 = phi ptr [ %sched.0163.i, %if.end50.i.lr.ph.lr.ph ], [ %admin.0164.i, %do.body46.outer.i.loopexit.if.end50.i.lr.ph_crit_edge ]
  %cycle_time.i79 = getelementptr inbounds %struct.sched_gate_list, ptr %sched.1.ph.i76, i32 0, i32 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %lor.rhs.i.if.end50.i_crit_edge, %if.end50.i.lr.ph
  %call47.i70 = phi ptr [ %call47.i6780, %if.end50.i.lr.ph ], [ %call47.i, %lor.rhs.i.if.end50.i_crit_edge ]
  %minimum_time.0.i69 = phi i64 [ %minimum_time.0.ph.i77, %if.end50.i.lr.ph ], [ %add76.i, %lor.rhs.i.if.end50.i_crit_edge ]
  %next_txtime.i = getelementptr inbounds %struct.sched_entry, ptr %call47.i70, i32 0, i32 2
  %91 = ptrtoint ptr %next_txtime.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %next_txtime.i, align 8
  %93 = call i64 @llvm.smax.i64(i64 %92, i64 %minimum_time.0.i69) #14
  %94 = ptrtoint ptr %interval_start.i34 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %interval_start.i34, align 8
  %96 = call i64 @llvm.smax.i64(i64 %93, i64 %95) #14
  br i1 %or.cond.i78, label %if.end50.i.if.end74.i_crit_edge, label %land.lhs.true69.i

if.end50.i.if.end74.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74.i

land.lhs.true69.i:                                ; preds = %if.end50.i
  %97 = ptrtoint ptr %base_time70.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %base_time70.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %96, i64 %98)
  %cmp3.i.i139.i = icmp sgt i64 %96, %98
  br i1 %cmp3.i.i139.i, label %do.body46.outer.i.loopexit, label %land.lhs.true69.i.if.end74.i_crit_edge

land.lhs.true69.i.if.end74.i_crit_edge:           ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74.i

if.end74.i:                                       ; preds = %land.lhs.true69.i.if.end74.i_crit_edge, %if.end50.i.if.end74.i_crit_edge
  %add76.i = add i64 %96, %conv75.i
  %99 = ptrtoint ptr %interval_end.i33 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %interval_end.i33, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add76.i, i64 %100)
  %cmp3.i.i140.i = icmp sgt i64 %add76.i, %100
  br i1 %cmp3.i.i140.i, label %lor.rhs.i, label %do.end87.i

lor.rhs.i:                                        ; preds = %if.end74.i
  %101 = ptrtoint ptr %cycle_time.i79 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %cycle_time.i79, align 8
  %add79.i = add i64 %102, %95
  %103 = ptrtoint ptr %next_txtime.i to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %add79.i, ptr %next_txtime.i, align 8
  %call47.i = call fastcc ptr @find_entry_to_transmit(ptr noundef %skb, ptr noundef %sch, ptr noundef %sched.1.ph.i76, ptr noundef %admin.0164.i, i64 noundef %add76.i, ptr noundef nonnull %interval_start.i34, ptr noundef nonnull %interval_end.i33, i1 noundef zeroext false) #14
  %tobool48.not.i = icmp eq ptr %call47.i, null
  br i1 %tobool48.not.i, label %lor.rhs.i.done.i_crit_edge, label %lor.rhs.i.if.end50.i_crit_edge

lor.rhs.i.if.end50.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50.i

lor.rhs.i.done.i_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %done.i

do.end87.i:                                       ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #16
  %104 = ptrtoint ptr %next_txtime.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %add76.i, ptr %next_txtime.i, align 8
  %extract.t125.i = trunc i64 %96 to i32
  br label %done.i

done.i:                                           ; preds = %do.end87.i, %lor.rhs.i.done.i_crit_edge, %do.body46.outer.i.loopexit.done.i_crit_edge, %if.end43.i.done.i_crit_edge, %if.then42.i
  %txtime.0.off0.i = phi i32 [ %extract.t.i, %if.then42.i ], [ %extract.t125.i, %do.end87.i ], [ 0, %if.end43.i.done.i_crit_edge ], [ 0, %lor.rhs.i.done.i_crit_edge ], [ 0, %do.body46.outer.i.loopexit.done.i_crit_edge ]
  %call.i142.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i142.i, label %done.i.get_packet_txtime.exit_crit_edge, label %land.lhs.true.i145.i

done.i.get_packet_txtime.exit_crit_edge:          ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_packet_txtime.exit

land.lhs.true.i145.i:                             ; preds = %done.i
  %call1.i143.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i143.i)
  %tobool.not.i144.i = icmp eq i32 %call1.i143.i, 0
  br i1 %tobool.not.i144.i, label %land.lhs.true.i145.i.get_packet_txtime.exit_crit_edge, label %land.lhs.true2.i147.i

land.lhs.true.i145.i.get_packet_txtime.exit_crit_edge: ; preds = %land.lhs.true.i145.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_packet_txtime.exit

land.lhs.true2.i147.i:                            ; preds = %land.lhs.true.i145.i
  %.b4.i146.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i146.i, label %land.lhs.true2.i147.i.get_packet_txtime.exit_crit_edge, label %if.then.i148.i

land.lhs.true2.i147.i.get_packet_txtime.exit_crit_edge: ; preds = %land.lhs.true2.i147.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_packet_txtime.exit

if.then.i148.i:                                   ; preds = %land.lhs.true2.i147.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #14
  br label %get_packet_txtime.exit

get_packet_txtime.exit:                           ; preds = %if.then.i148.i, %land.lhs.true2.i147.i.get_packet_txtime.exit_crit_edge, %land.lhs.true.i145.i.get_packet_txtime.exit_crit_edge, %done.i.get_packet_txtime.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !170
  %105 = call i32 @llvm.read_register.i32(metadata !152) #14
  %and.i.i.i.i.i149.i = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i.i.i149.i to ptr
  %preempt_count.i.i.i.i150.i = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %preempt_count.i.i.i.i150.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %preempt_count.i.i.i.i150.i, align 4
  %sub.i.i.i.i51 = add i32 %108, -1
  store volatile i32 %sub.i.i.i.i51, ptr %preempt_count.i.i.i.i150.i, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %interval_start.i34) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %interval_end.i33) #14
  %conv = sext i32 %txtime.0.off0.i to i64
  %109 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %conv, ptr %109, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %txtime.0.off0.i)
  %tobool8.not = icmp eq i32 %txtime.0.off0.i, 0
  br i1 %tobool8.not, label %if.then9, label %get_packet_txtime.exit.if.end13_crit_edge

get_packet_txtime.exit.if.end13_crit_edge:        ; preds = %get_packet_txtime.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then9:                                         ; preds = %get_packet_txtime.exit
  call void @__sanitizer_cov_trace_pc() #16
  %111 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %to_free, align 4
  %113 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %112, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i52 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %114 = ptrtoint ptr %drops.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %drops.i.i.i52, align 4
  %inc.i.i.i53 = add i32 %115, 1
  store i32 %inc.i.i.i53, ptr %drops.i.i.i52, align 4
  br label %cleanup

if.end13:                                         ; preds = %get_packet_txtime.exit.if.end13_crit_edge, %if.else.if.end13_crit_edge, %is_valid_interval.exit.if.end13_crit_edge
  %cb.i.i.i54 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %116 = ptrtoint ptr %cb.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cb.i.i.i54, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %118 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %backlog.i, align 4
  %add.i55 = add i32 %119, %117
  store i32 %add.i55, ptr %backlog.i, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %120 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %qlen, align 8
  %inc = add i32 %121, 1
  store i32 %inc, ptr %qlen, align 8
  %stab1.i.i = getelementptr inbounds %struct.Qdisc, ptr %child, i32 0, i32 5
  %122 = ptrtoint ptr %stab1.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile ptr, ptr %stab1.i.i, align 4
  %call.i.i56 = call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56)
  %tobool.not.i.i57 = icmp eq i32 %call.i.i56, 0
  br i1 %tobool.not.i.i57, label %land.lhs.true.i.i58, label %if.end13.do.end8.i.i_crit_edge

if.end13.do.end8.i.i_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8.i.i

land.lhs.true.i.i58:                              ; preds = %if.end13
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i58.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i58.do.end8.i.i_crit_edge:        ; preds = %land.lhs.true.i.i58
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i58
  %.b14.i.i = load i1, ptr @qdisc_calculate_pkt_len.__warned, align 1
  br i1 %.b14.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i59

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8.i.i

if.then.i.i59:                                    ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @qdisc_calculate_pkt_len.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 835, ptr noundef nonnull @.str.2) #14
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i59, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i58.do.end8.i.i_crit_edge, %if.end13.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %123, null
  br i1 %tobool10.not.i.i, label %do.end8.i.i.qdisc_enqueue.exit_crit_edge, label %if.then11.i.i

do.end8.i.i.qdisc_enqueue.exit_crit_edge:         ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qdisc_enqueue.exit

if.then11.i.i:                                    ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__qdisc_calculate_pkt_len(ptr noundef %skb, ptr noundef nonnull %123) #14
  br label %qdisc_enqueue.exit

qdisc_enqueue.exit:                               ; preds = %if.then11.i.i, %do.end8.i.i.qdisc_enqueue.exit_crit_edge
  %124 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %child, align 128
  %call.i = call i32 %125(ptr noundef %skb, ptr noundef %child, ptr noundef %to_free) #14
  br label %cleanup

cleanup:                                          ; preds = %qdisc_enqueue.exit, %if.then9, %if.then3
  %retval.0 = phi i32 [ %call.i, %qdisc_enqueue.exit ], [ 1, %if.then3 ], [ 1, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_tree_reduce_backlog(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_gso_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_entry_to_transmit(ptr nocapture noundef readonly %skb, ptr noundef %sch, ptr noundef readonly %sched, ptr noundef readonly %admin, i64 noundef %time, ptr nocapture noundef writeonly %interval_start, ptr nocapture noundef writeonly %interval_end, i1 noundef zeroext %validate_interval) unnamed_addr #0 align 64 {
entry:
  %remainder.i = alloca i32, align 4
  %time_elapsed.i.i = alloca i32, align 4
  %time_elapsed.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %4 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priority, align 4
  %and.i = and i32 %5, 15
  %arrayidx.i = getelementptr %struct.net_device, ptr %3, i32 0, i32 142, i32 %and.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %8 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cb.i.i, align 4
  %conv.i143 = sext i32 %9 to i64
  %picos_per_byte.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %picos_per_byte.i, i32 noundef 8) #14
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %picos_per_byte.i) #14
  %mul.i = mul i64 %call.i.i, %conv.i143
  %10 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i, i32 0) #19, !srcloc !171
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %10, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %10, 1
  %11 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #19, !srcloc !172
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %11, 0
  %12 = shl i64 %asmresult10.i.i.i.i, 23
  %conv = ashr i64 %12, 32
  %13 = ptrtoint ptr %interval_start to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %interval_start, align 8
  %14 = ptrtoint ptr %interval_end to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %interval_end, align 8
  %tobool.not = icmp eq ptr %sched, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %cycle_time = getelementptr inbounds %struct.sched_gate_list, ptr %sched, i32 0, i32 4
  %15 = ptrtoint ptr %cycle_time to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %cycle_time, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time_elapsed.i) #14
  %17 = ptrtoint ptr %time_elapsed.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %time_elapsed.i, align 4, !annotation !168
  %base_time.i = getelementptr inbounds %struct.sched_gate_list, ptr %sched, i32 0, i32 6
  %18 = ptrtoint ptr %base_time.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %base_time.i, align 8
  %sub.i = sub i64 %time, %19
  %conv.i144 = trunc i64 %16 to i32
  %call.i = call i64 @div_s64_rem(i64 noundef %sub.i, i32 noundef %conv.i144, ptr noundef nonnull %time_elapsed.i) #14
  %20 = ptrtoint ptr %time_elapsed.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %time_elapsed.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time_elapsed.i) #14
  %conv7 = sext i32 %21 to i64
  %sub = sub i64 %time, %conv7
  %add = add i64 %sub, %16
  %entries = getelementptr inbounds %struct.sched_gate_list, ptr %sched, i32 0, i32 1
  %22 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %22)
  %entry1.0160 = load ptr, ptr %entries, align 8
  %cmp.not161 = icmp eq ptr %entry1.0160, %entries
  br i1 %cmp.not161, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %cycle_time_extension.i = getelementptr inbounds %struct.sched_gate_list, ptr %sched, i32 0, i32 5
  %tobool.not.i = icmp eq ptr %admin, null
  %cmp.not.i = icmp eq ptr %admin, %sched
  %or.cond.i = or i1 %tobool.not.i, %cmp.not.i
  %base_time.i149 = getelementptr inbounds %struct.sched_gate_list, ptr %admin, i32 0, i32 6
  %shl = shl nuw i32 1, %conv.i
  %add26 = add i64 %conv, %time
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %entry1.0166 = phi ptr [ %entry1.0160, %for.body.lr.ph ], [ %entry1.0, %for.inc.for.body_crit_edge ]
  %curr_intv_end.0165 = phi i64 [ %sub, %for.body.lr.ph ], [ %retval.0.i, %for.inc.for.body_crit_edge ]
  %entry_available.0.off0164 = phi i1 [ false, %for.body.lr.ph ], [ %entry_available.1.off0, %for.inc.for.body_crit_edge ]
  %earliest_txtime.0163 = phi i64 [ 9223372036854775807, %for.body.lr.ph ], [ %earliest_txtime.1, %for.inc.for.body_crit_edge ]
  %entry_found.0162 = phi ptr [ null, %for.body.lr.ph ], [ %entry_found.1, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time_elapsed.i.i) #14
  %23 = ptrtoint ptr %time_elapsed.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %time_elapsed.i.i, align 4, !annotation !168
  %24 = ptrtoint ptr %base_time.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %base_time.i, align 8
  %sub.i.i = sub i64 %curr_intv_end.0165, %25
  %26 = ptrtoint ptr %cycle_time to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %cycle_time, align 8
  %conv.i.i = trunc i64 %27 to i32
  %call.i.i145 = call i64 @div_s64_rem(i64 noundef %sub.i.i, i32 noundef %conv.i.i, ptr noundef nonnull %time_elapsed.i.i) #14
  %28 = ptrtoint ptr %time_elapsed.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %time_elapsed.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time_elapsed.i.i) #14
  %30 = ptrtoint ptr %cycle_time to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %cycle_time, align 8
  %conv.i146 = sext i32 %29 to i64
  %sub.i147 = sub i64 %31, %conv.i146
  %add.i = add i64 %sub.i147, %curr_intv_end.0165
  %interval.i = getelementptr inbounds %struct.sched_entry, ptr %entry1.0166, i32 0, i32 6
  %32 = ptrtoint ptr %interval.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %interval.i, align 4
  %conv2.i148 = zext i32 %33 to i64
  %add3.i = add i64 %curr_intv_end.0165, %conv2.i148
  call void @__sanitizer_cov_trace_cmp8(i64 %add3.i, i64 %add.i)
  %cmp.i.i.i = icmp slt i64 %add3.i, %add.i
  %brmerge168 = or i1 %cmp.i.i.i, %or.cond.i
  %34 = call i64 @llvm.smin.i64(i64 %add3.i, i64 %add.i)
  br i1 %brmerge168, label %for.body.get_interval_end_time.exit_crit_edge, label %land.lhs.true7.i

for.body.get_interval_end_time.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_interval_end_time.exit

land.lhs.true7.i:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %cycle_time_extension.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %cycle_time_extension.i, align 8
  %add4.i = add i64 %add.i, %36
  %37 = ptrtoint ptr %base_time.i149 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %base_time.i149, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %add.i)
  %cmp3.i.i.i = icmp sgt i64 %38, %add.i
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %add4.i)
  %cmp.i.i33.i = icmp slt i64 %38, %add4.i
  %or.cond34.i = select i1 %cmp3.i.i.i, i1 %cmp.i.i33.i, i1 false
  %spec.select.i = select i1 %or.cond34.i, i64 %38, i64 %add.i
  br label %get_interval_end_time.exit

get_interval_end_time.exit:                       ; preds = %land.lhs.true7.i, %for.body.get_interval_end_time.exit_crit_edge
  %retval.0.i = phi i64 [ %34, %for.body.get_interval_end_time.exit_crit_edge ], [ %spec.select.i, %land.lhs.true7.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %curr_intv_end.0165, i64 %add)
  %cmp3.i.i = icmp sgt i64 %curr_intv_end.0165, %add
  br i1 %cmp3.i.i, label %get_interval_end_time.exit.cleanup_crit_edge, label %if.end13

get_interval_end_time.exit.cleanup_crit_edge:     ; preds = %get_interval_end_time.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %get_interval_end_time.exit
  %gate_mask = getelementptr inbounds %struct.sched_entry, ptr %entry1.0166, i32 0, i32 5
  %39 = ptrtoint ptr %gate_mask to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %gate_mask, align 8
  %and = and i32 %40, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %conv2.i148)
  %cmp16 = icmp sgt i64 %conv, %conv2.i148
  %or.cond = select i1 %tobool14.not, i1 true, i1 %cmp16
  br i1 %or.cond, label %if.end13.for.inc_crit_edge, label %if.end19

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end19:                                         ; preds = %if.end13
  %next_txtime = getelementptr inbounds %struct.sched_entry, ptr %entry1.0166, i32 0, i32 2
  %41 = ptrtoint ptr %next_txtime to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %next_txtime, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %time)
  %cmp.i.i = icmp slt i64 %42, %time
  %brmerge = or i1 %cmp.i.i, %validate_interval
  br i1 %brmerge, label %if.then25, label %if.else45

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_cmp8(i64 %curr_intv_end.0165, i64 %time)
  %cmp.i.i150 = icmp sge i64 %curr_intv_end.0165, %time
  call void @__sanitizer_cov_trace_cmp8(i64 %add26, i64 %retval.0.i)
  %cmp.i.i151 = icmp sge i64 %add26, %retval.0.i
  %or.cond155 = select i1 %cmp.i.i150, i1 true, i1 %cmp.i.i151
  call void @__sanitizer_cov_trace_cmp8(i64 %curr_intv_end.0165, i64 %time)
  %cmp3.i.i152 = icmp sle i64 %curr_intv_end.0165, %time
  %brmerge140 = or i1 %cmp3.i.i152, %validate_interval
  %or.cond156 = and i1 %or.cond155, %brmerge140
  br i1 %or.cond156, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %interval_start to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %curr_intv_end.0165, ptr %interval_start, align 8
  %44 = ptrtoint ptr %interval_end to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %retval.0.i, ptr %interval_end, align 8
  br label %cleanup

if.else:                                          ; preds = %if.then25
  %brmerge141 = or i1 %entry_available.0.off0164, %validate_interval
  br i1 %brmerge141, label %if.else.for.inc_crit_edge, label %if.then40

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %add41 = add i64 %curr_intv_end.0165, %16
  %45 = ptrtoint ptr %interval_start to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %add41, ptr %interval_start, align 8
  %add42 = add i64 %retval.0.i, %16
  br label %for.inc.sink.split

if.else45:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %earliest_txtime.0163)
  %cmp.i.i153 = icmp sge i64 %42, %earliest_txtime.0163
  %brmerge142 = select i1 %cmp.i.i153, i1 true, i1 %entry_available.0.off0164
  br i1 %brmerge142, label %if.else45.for.inc_crit_edge, label %if.then50

if.else45.for.inc_crit_edge:                      ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then50:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #16
  %sub51 = sub i64 %42, %curr_intv_end.0165
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #14
  %46 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %remainder.i, align 4, !annotation !168
  %call.i154 = call i64 @div_s64_rem(i64 noundef %sub51, i32 noundef %conv.i144, ptr noundef nonnull %remainder.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #14
  %47 = shl i64 %call.i154, 32
  %conv55 = ashr exact i64 %47, 32
  %mul = mul i64 %conv55, %16
  %add56 = add i64 %mul, %curr_intv_end.0165
  %48 = ptrtoint ptr %interval_start to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %add56, ptr %interval_start, align 8
  %add59 = add i64 %mul, %retval.0.i
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then50, %if.then40
  %add42.sink = phi i64 [ %add42, %if.then40 ], [ %add59, %if.then50 ]
  %earliest_txtime.1.ph = phi i64 [ %earliest_txtime.0163, %if.then40 ], [ %42, %if.then50 ]
  %49 = ptrtoint ptr %interval_end to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %add42.sink, ptr %interval_end, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else45.for.inc_crit_edge, %if.else.for.inc_crit_edge, %if.end13.for.inc_crit_edge
  %entry_found.1 = phi ptr [ %entry_found.0162, %if.else.for.inc_crit_edge ], [ %entry_found.0162, %if.else45.for.inc_crit_edge ], [ %entry_found.0162, %if.end13.for.inc_crit_edge ], [ %entry1.0166, %for.inc.sink.split ]
  %earliest_txtime.1 = phi i64 [ %earliest_txtime.0163, %if.else.for.inc_crit_edge ], [ %earliest_txtime.0163, %if.else45.for.inc_crit_edge ], [ %earliest_txtime.0163, %if.end13.for.inc_crit_edge ], [ %earliest_txtime.1.ph, %for.inc.sink.split ]
  %entry_available.1.off0 = phi i1 [ %entry_available.0.off0164, %if.else.for.inc_crit_edge ], [ %entry_available.0.off0164, %if.else45.for.inc_crit_edge ], [ %entry_available.0.off0164, %if.end13.for.inc_crit_edge ], [ %brmerge, %for.inc.sink.split ]
  %50 = ptrtoint ptr %entry1.0166 to i32
  call void @__asan_load4_noabort(i32 %50)
  %entry1.0 = load ptr, ptr %entry1.0166, align 8
  %cmp.not = icmp eq ptr %entry1.0, %entries
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then36, %get_interval_end_time.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %entry1.0166, %if.then36 ], [ null, %if.end.cleanup_crit_edge ], [ %entry_found.0162, %get_interval_end_time.exit.cleanup_crit_edge ], [ %entry_found.1, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !170
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #14
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_mono_to_any(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @taprio_free_sched_cb(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %entries = getelementptr inbounds %struct.sched_gate_list, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entries, align 8
  %cmp.not23 = icmp eq ptr %1, %entries
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %entry1.024 = phi ptr [ %n.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %entry1.024 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.0 = load ptr, ptr %entry1.024, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.024) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.024, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %entry1.024 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entry1.024, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %entry1.024 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.024, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry1.024, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %entry1.024) #14
  %cmp.not = icmp eq ptr %n.0, %entries
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %head) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__qdisc_calculate_pkt_len(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @advance_sched(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr i8, ptr %timer, i32 -84
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %current_entry_lock = getelementptr i8, ptr %timer, i32 -56
  tail call void @_raw_spin_lock(ptr noundef %current_entry_lock) #14
  %dep_map = getelementptr i8, ptr %timer, i32 -40
  %call.i150 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %tobool.not = icmp eq i32 %call.i150, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b149 = load i1, ptr @advance_sched.__warned, align 1
  br i1 %.b149, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @advance_sched.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 716, ptr noundef nonnull @.str.10) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %current_entry = getelementptr i8, ptr %timer, i32 -12
  %2 = ptrtoint ptr %current_entry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_entry, align 4
  %call.i151 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool12.not = icmp eq i32 %call.i151, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %do.end.do.end21_crit_edge

do.end.do.end21_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end21

land.lhs.true13:                                  ; preds = %do.end
  %call14 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true13.do.end21_crit_edge, label %land.lhs.true16

land.lhs.true13.do.end21_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end21

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %.b145148 = load i1, ptr @advance_sched.__warned.11, align 1
  br i1 %.b145148, label %land.lhs.true16.do.end21_crit_edge, label %if.then18

land.lhs.true16.do.end21_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end21

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @advance_sched.__warned.11, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 718, ptr noundef nonnull @.str.10) #14
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %land.lhs.true16.do.end21_crit_edge, %land.lhs.true13.do.end21_crit_edge, %do.end.do.end21_crit_edge
  %oper_sched = getelementptr i8, ptr %timer, i32 -8
  %4 = ptrtoint ptr %oper_sched to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %oper_sched, align 8
  %call.i152 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool27.not = icmp eq i32 %call.i152, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %do.end21.do.end36_crit_edge

do.end21.do.end36_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end36

land.lhs.true28:                                  ; preds = %do.end21
  %call29 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true28.do.end36_crit_edge, label %land.lhs.true31

land.lhs.true28.do.end36_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end36

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %.b146147 = load i1, ptr @advance_sched.__warned.12, align 1
  br i1 %.b146147, label %land.lhs.true31.do.end36_crit_edge, label %if.then33

land.lhs.true31.do.end36_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end36

if.then33:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @advance_sched.__warned.12, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 720, ptr noundef nonnull @.str.10) #14
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %land.lhs.true31.do.end36_crit_edge, %land.lhs.true28.do.end36_crit_edge, %do.end21.do.end36_crit_edge
  %admin_sched = getelementptr i8, ptr %timer, i32 -4
  %6 = ptrtoint ptr %admin_sched to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %admin_sched, align 4
  %tobool38.not = icmp eq ptr %5, null
  br i1 %tobool38.not, label %switch_schedules.exit, label %do.end36.if.end40_crit_edge

do.end36.if.end40_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

switch_schedules.exit:                            ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !174
  %8 = ptrtoint ptr %oper_sched to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %oper_sched, align 8
  %9 = ptrtoint ptr %admin_sched to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr null, ptr %admin_sched, align 4
  br label %if.end40

if.end40:                                         ; preds = %switch_schedules.exit, %do.end36.if.end40_crit_edge
  %oper.0 = phi ptr [ %7, %switch_schedules.exit ], [ %5, %do.end36.if.end40_crit_edge ]
  %admin.0 = phi ptr [ null, %switch_schedules.exit ], [ %7, %do.end36.if.end40_crit_edge ]
  %tobool41.not = icmp eq ptr %3, null
  br i1 %tobool41.not, label %if.end40.if.then45_crit_edge, label %lor.rhs, !prof !163

if.end40.if.then45_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then45

lor.rhs:                                          ; preds = %if.end40
  %close_time42 = getelementptr inbounds %struct.sched_entry, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %close_time42 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %close_time42, align 8
  %base_time = getelementptr inbounds %struct.sched_gate_list, ptr %oper.0, i32 0, i32 6
  %12 = ptrtoint ptr %base_time to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %base_time, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %13)
  %cmp = icmp eq i64 %11, %13
  br i1 %cmp, label %lor.rhs.if.then45_crit_edge, label %if.end51, !prof !163

lor.rhs.if.then45_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then45

if.then45:                                        ; preds = %lor.rhs.if.then45_crit_edge, %if.end40.if.then45_crit_edge
  %entries = getelementptr inbounds %struct.sched_gate_list, ptr %oper.0, i32 0, i32 1
  %14 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %entries, align 8
  %close_time50 = getelementptr inbounds %struct.sched_entry, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %close_time50 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %close_time50, align 8
  br label %do.body76

if.end51:                                         ; preds = %lor.rhs
  %entries.i = getelementptr inbounds %struct.sched_gate_list, ptr %oper.0, i32 0, i32 1
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %cmp.i.not.i = icmp eq ptr %19, %entries.i
  br i1 %cmp.i.not.i, label %if.end51.if.then53_crit_edge, label %should_restart_cycle.exit

if.end51.if.then53_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then53

should_restart_cycle.exit:                        ; preds = %if.end51
  %cycle_close_time.i = getelementptr inbounds %struct.sched_gate_list, ptr %oper.0, i32 0, i32 3
  %20 = ptrtoint ptr %cycle_close_time.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %cycle_close_time.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %21)
  %22 = icmp eq i64 %11, %21
  br i1 %22, label %should_restart_cycle.exit.if.then53_crit_edge, label %should_restart_cycle.exit.if.end64_crit_edge

should_restart_cycle.exit.if.end64_crit_edge:     ; preds = %should_restart_cycle.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

should_restart_cycle.exit.if.then53_crit_edge:    ; preds = %should_restart_cycle.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then53

if.then53:                                        ; preds = %should_restart_cycle.exit.if.then53_crit_edge, %if.end51.if.then53_crit_edge
  %23 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %entries.i, align 8
  %cycle_close_time = getelementptr inbounds %struct.sched_gate_list, ptr %oper.0, i32 0, i32 3
  %25 = ptrtoint ptr %cycle_close_time to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %cycle_close_time, align 8
  %cycle_time = getelementptr inbounds %struct.sched_gate_list, ptr %oper.0, i32 0, i32 4
  %27 = ptrtoint ptr %cycle_time to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %cycle_time, align 8
  %add = add i64 %28, %26
  store i64 %add, ptr %cycle_close_time, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then53, %should_restart_cycle.exit.if.end64_crit_edge
  %next.0 = phi ptr [ %24, %if.then53 ], [ %19, %should_restart_cycle.exit.if.end64_crit_edge ]
  %29 = ptrtoint ptr %close_time42 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %close_time42, align 8
  %interval = getelementptr inbounds %struct.sched_entry, ptr %next.0, i32 0, i32 6
  %31 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %interval, align 4
  %conv = zext i32 %32 to i64
  %add66 = add i64 %30, %conv
  %cycle_close_time67 = getelementptr inbounds %struct.sched_gate_list, ptr %oper.0, i32 0, i32 3
  %33 = ptrtoint ptr %cycle_close_time67 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %cycle_close_time67, align 8
  %35 = tail call i64 @llvm.smin.i64(i64 %add66, i64 %34)
  %tobool.not.i154 = icmp eq ptr %admin.0, null
  br i1 %tobool.not.i154, label %if.end64.if.end74_crit_edge, label %sched_base_time.exit.i

if.end64.if.end74_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74

sched_base_time.exit.i:                           ; preds = %if.end64
  %base_time.i.i = getelementptr inbounds %struct.sched_gate_list, ptr %admin.0, i32 0, i32 6
  %36 = ptrtoint ptr %base_time.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %base_time.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %35)
  %cmp3.i.not.i = icmp sgt i64 %37, %35
  br i1 %cmp3.i.not.i, label %should_change_schedules.exit, label %sched_base_time.exit.i.sched_base_time.exit_crit_edge

sched_base_time.exit.i.sched_base_time.exit_crit_edge: ; preds = %sched_base_time.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sched_base_time.exit

should_change_schedules.exit:                     ; preds = %sched_base_time.exit.i
  %cycle_time_extension.i = getelementptr inbounds %struct.sched_gate_list, ptr %oper.0, i32 0, i32 5
  %38 = ptrtoint ptr %cycle_time_extension.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %cycle_time_extension.i, align 8
  %add.i = add i64 %39, %35
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %add.i)
  %cmp3.i14.i.not = icmp sgt i64 %37, %add.i
  br i1 %cmp3.i14.i.not, label %should_change_schedules.exit.if.end74_crit_edge, label %should_change_schedules.exit.sched_base_time.exit_crit_edge

should_change_schedules.exit.sched_base_time.exit_crit_edge: ; preds = %should_change_schedules.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sched_base_time.exit

should_change_schedules.exit.if.end74_crit_edge:  ; preds = %should_change_schedules.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74

sched_base_time.exit:                             ; preds = %should_change_schedules.exit.sched_base_time.exit_crit_edge, %sched_base_time.exit.i.sched_base_time.exit_crit_edge
  %40 = ptrtoint ptr %base_time.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %base_time.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !174
  %42 = ptrtoint ptr %oper_sched to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %admin.0, ptr %oper_sched, align 8
  %43 = ptrtoint ptr %admin_sched to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr null, ptr %admin_sched, align 4
  %tobool.not.i161 = icmp eq ptr %oper.0, null
  br i1 %tobool.not.i161, label %sched_base_time.exit.if.end74_crit_edge, label %if.then71.i162

sched_base_time.exit.if.end74_crit_edge:          ; preds = %sched_base_time.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74

if.then71.i162:                                   ; preds = %sched_base_time.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @call_rcu(ptr noundef nonnull %oper.0, ptr noundef nonnull @taprio_free_sched_cb) #14
  br label %if.end74

if.end74:                                         ; preds = %if.then71.i162, %sched_base_time.exit.if.end74_crit_edge, %should_change_schedules.exit.if.end74_crit_edge, %if.end64.if.end74_crit_edge
  %close_time.0 = phi i64 [ %35, %should_change_schedules.exit.if.end74_crit_edge ], [ %41, %sched_base_time.exit.if.end74_crit_edge ], [ %41, %if.then71.i162 ], [ %35, %if.end64.if.end74_crit_edge ]
  %close_time75 = getelementptr inbounds %struct.sched_entry, ptr %next.0, i32 0, i32 1
  %44 = ptrtoint ptr %close_time75 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %close_time.0, ptr %close_time75, align 8
  %budget.i = getelementptr inbounds %struct.sched_entry, ptr %next.0, i32 0, i32 3
  %45 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %interval, align 4
  %conv.i = zext i32 %46 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000
  %picos_per_byte.i = getelementptr i8, ptr %timer, i32 -64
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %picos_per_byte.i, i32 noundef 8) #14
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %picos_per_byte.i) #14
  %call2.i = tail call i64 @div64_u64(i64 noundef %mul.i, i64 noundef %call.i.i) #14
  %conv3.i = trunc i64 %call2.i to i32
  %call.i.i5.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %budget.i, i32 noundef 4) #14
  %47 = ptrtoint ptr %budget.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 %conv3.i, ptr %budget.i, align 4
  br label %do.body76

do.body76:                                        ; preds = %if.end74, %if.then45
  %close_time.1 = phi i64 [ %17, %if.then45 ], [ %close_time.0, %if.end74 ]
  %next.1 = phi ptr [ %15, %if.then45 ], [ %next.0, %if.end74 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !175
  %48 = ptrtoint ptr %current_entry to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %next.1, ptr %current_entry, align 4
  tail call void @_raw_spin_unlock(ptr noundef %current_entry_lock) #14
  %expires.i = getelementptr inbounds %struct.timerqueue_node, ptr %timer, i32 0, i32 1
  %49 = ptrtoint ptr %expires.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %close_time.1, ptr %expires.i, align 8
  %_softexpires.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 1
  %50 = ptrtoint ptr %_softexpires.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %close_time.1, ptr %_softexpires.i, align 8
  %51 = tail call i32 @llvm.read_register.i32(metadata !152) #14
  %and.i.i.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %54, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %do.body76.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.body76.rcu_read_lock.exit_crit_edge:           ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.body76
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.body76.rcu_read_lock.exit_crit_edge
  tail call void @__netif_schedule(ptr noundef %1) #14
  %call.i164 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i164, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i167

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i167:                               ; preds = %rcu_read_lock.exit
  %call1.i165 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i165)
  %tobool.not.i166 = icmp eq i32 %call1.i165, 0
  br i1 %tobool.not.i166, label %land.lhs.true.i167.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i169

land.lhs.true.i167.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i167
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i169:                              ; preds = %land.lhs.true.i167
  %.b4.i168 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i168, label %land.lhs.true2.i169.rcu_read_unlock.exit_crit_edge, label %if.then.i170

land.lhs.true2.i169.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i169
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i170:                                     ; preds = %land.lhs.true2.i169
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i170, %land.lhs.true2.i169.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i167.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !170
  %55 = tail call i32 @llvm.read_register.i32(metadata !152) #14
  %and.i.i.i.i.i171 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i171 to ptr
  %preempt_count.i.i.i.i172 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i.i172 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i.i172, align 4
  %sub.i.i.i = add i32 %58, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i172, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @taprio_dequeue_soft(ptr noundef %sch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %4 = tail call i32 @llvm.read_register.i32(metadata !152) #14
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %current_entry = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 12
  %8 = ptrtoint ptr %current_entry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %current_entry, align 4
  %call4 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end10_crit_edge

rcu_read_lock.exit.do.end10_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b116 = load i1, ptr @taprio_dequeue_soft.__warned, align 1
  br i1 %.b116, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @taprio_dequeue_soft.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 567, ptr noundef nonnull @.str.2) #14
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %rcu_read_lock.exit.do.end10_crit_edge
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %do.end10.for.cond.preheader_crit_edge, label %cond.end

do.end10.for.cond.preheader_crit_edge:            ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader

cond.end:                                         ; preds = %do.end10
  %gate_mask13 = getelementptr inbounds %struct.sched_entry, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %gate_mask13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gate_mask13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool14.not = icmp eq i32 %11, 0
  br i1 %tobool14.not, label %cond.end.done_crit_edge, label %cond.end.for.cond.preheader_crit_edge

cond.end.for.cond.preheader_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader

cond.end.done_crit_edge:                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

for.cond.preheader:                               ; preds = %cond.end.for.cond.preheader_crit_edge, %do.end10.for.cond.preheader_crit_edge
  %cond141 = phi i32 [ %11, %cond.end.for.cond.preheader_crit_edge ], [ -1, %do.end10.for.cond.preheader_crit_edge ]
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %12 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp135.not = icmp eq i32 %13, 0
  br i1 %cmp135.not, label %for.cond.preheader.done_crit_edge, label %for.body.lr.ph

for.cond.preheader.done_crit_edge:                ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %flags = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %tk_offset1.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %picos_per_byte.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond141)
  %cmp45.not = icmp eq i32 %cond141, -1
  %close_time = getelementptr inbounds %struct.sched_entry, ptr %9, i32 0, i32 1
  %budget = getelementptr inbounds %struct.sched_entry, ptr %9, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0136 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %privdata.i, align 8
  %arrayidx = getelementptr ptr, ptr %15, i32 %i.0136
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %tobool17.not = icmp eq ptr %17, null
  br i1 %tobool17.not, label %for.body.for.inc_crit_edge, label %if.end22, !prof !163

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end22:                                         ; preds = %for.body
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 8
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  %ops30 = getelementptr inbounds %struct.Qdisc, ptr %17, i32 0, i32 4
  %20 = ptrtoint ptr %ops30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops30, align 16
  br i1 %tobool23.not, label %if.end29, label %if.then24

if.then24:                                        ; preds = %if.end22
  %dequeue = getelementptr inbounds %struct.Qdisc_ops, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dequeue, align 4
  %call25 = tail call ptr %23(ptr noundef nonnull %17) #14
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.then24.for.inc_crit_edge, label %if.then24.skb_found_crit_edge

if.then24.skb_found_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_found

if.then24.for.inc_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end29:                                         ; preds = %if.end22
  %peek = getelementptr inbounds %struct.Qdisc_ops, ptr %21, i32 0, i32 7
  %24 = ptrtoint ptr %peek to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %peek, align 4
  %call31 = tail call ptr %25(ptr noundef nonnull %17) #14
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end29.for.inc_crit_edge, label %if.end34

if.end29.for.inc_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end34:                                         ; preds = %if.end29
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call31, i32 0, i32 15, i32 0, i32 6
  %26 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %priority, align 4
  %and.i = and i32 %27, 15
  %arrayidx.i = getelementptr %struct.net_device, ptr %3, i32 0, i32 142, i32 %and.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %29 to i32
  %shl = shl nuw i32 1, %conv.i
  %and37 = and i32 %shl, %cond141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end34.for.inc_crit_edge, label %if.end40

if.end34.for.inc_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end40:                                         ; preds = %if.end34
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call31, i32 0, i32 3
  %30 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cb.i.i, align 4
  %call.i117 = tail call i64 @ktime_get() #14
  %32 = ptrtoint ptr %tk_offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %tk_offset1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cond.i.i = icmp eq i32 %33, 3
  br i1 %cond.i.i, label %if.end40.taprio_get_time.exit_crit_edge, label %sw.default.i.i

if.end40.taprio_get_time.exit_crit_edge:          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %taprio_get_time.exit

sw.default.i.i:                                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i118 = tail call i64 @ktime_mono_to_any(i64 noundef %call.i117, i32 noundef %33) #14
  br label %taprio_get_time.exit

taprio_get_time.exit:                             ; preds = %sw.default.i.i, %if.end40.taprio_get_time.exit_crit_edge
  %retval.0.i.i = phi i64 [ %call.i.i118, %sw.default.i.i ], [ %call.i117, %if.end40.taprio_get_time.exit_crit_edge ]
  %conv.i119 = sext i32 %31 to i64
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %picos_per_byte.i, i32 noundef 8) #14
  %call.i.i120 = tail call i64 @generic_atomic64_read(ptr noundef %picos_per_byte.i) #14
  %mul.i = mul i64 %call.i.i120, %conv.i119
  %34 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i, i32 0) #19, !srcloc !171
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %34, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %34, 1
  %35 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #19, !srcloc !172
  br i1 %cmp45.not, label %taprio_get_time.exit.if.end59_crit_edge, label %land.lhs.true47

taprio_get_time.exit.if.end59_crit_edge:          ; preds = %taprio_get_time.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

land.lhs.true47:                                  ; preds = %taprio_get_time.exit
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %35, 0
  %36 = shl i64 %asmresult10.i.i.i.i, 23
  %conv44 = ashr i64 %36, 32
  %add = add i64 %conv44, %retval.0.i.i
  %37 = ptrtoint ptr %close_time to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %close_time, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %38)
  %cmp3.i.i = icmp sgt i64 %add, %38
  br i1 %cmp3.i.i, label %land.lhs.true47.for.inc_crit_edge, label %land.lhs.true54.critedge

land.lhs.true47.for.inc_crit_edge:                ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true54.critedge:                         ; preds = %land.lhs.true47
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %budget, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %budget, i32 1, i32 3, i32 1) #14
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %budget, ptr %budget, i32 %31, ptr elementtype(i32) %budget) #14, !srcloc !177
  %asmresult.i.i.i = extractvalue { i32, i32 } %39, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp56 = icmp slt i32 %asmresult.i.i.i, 0
  br i1 %cmp56, label %land.lhs.true54.critedge.for.inc_crit_edge, label %land.lhs.true54.critedge.if.end59_crit_edge

land.lhs.true54.critedge.if.end59_crit_edge:      ; preds = %land.lhs.true54.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

land.lhs.true54.critedge.for.inc_crit_edge:       ; preds = %land.lhs.true54.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end59:                                         ; preds = %land.lhs.true54.critedge.if.end59_crit_edge, %taprio_get_time.exit.if.end59_crit_edge
  %ops30.le = getelementptr inbounds %struct.Qdisc, ptr %17, i32 0, i32 4
  %40 = ptrtoint ptr %ops30.le to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops30.le, align 16
  %dequeue61 = getelementptr inbounds %struct.Qdisc_ops, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %dequeue61 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dequeue61, align 4
  %call62 = tail call ptr %43(ptr noundef nonnull %17) #14
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %if.end59.done_crit_edge, label %if.end59.skb_found_crit_edge, !prof !163

if.end59.skb_found_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_found

if.end59.done_crit_edge:                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

skb_found:                                        ; preds = %if.end59.skb_found_crit_edge, %if.then24.skb_found_crit_edge
  %skb.1 = phi ptr [ %call62, %if.end59.skb_found_crit_edge ], [ %call25, %if.then24.skb_found_crit_edge ]
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 3
  %44 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cb.i.i.i.i, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 17
  %46 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool.i.not.i.i = icmp eq i16 %49, 0
  br i1 %tobool.i.not.i.i, label %skb_found.cond.end.i.i_crit_edge, label %cond.true.i.i

skb_found.cond.end.i.i_crit_edge:                 ; preds = %skb_found
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %skb_found
  call void @__sanitizer_cov_trace_pc() #16
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %47, i32 0, i32 5
  %50 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %gso_segs.i.i, align 2
  %conv4.i.i = zext i16 %51 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %skb_found.cond.end.i.i_crit_edge
  %cond.i.i121 = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ 1, %skb_found.cond.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %52 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i.i.i.i.i = icmp eq i32 %52, 0
  br i1 %tobool.not.i.i.i.i.i, label %cond.end.i.i.qdisc_bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i.i

cond.end.i.i.qdisc_bstats_update.exit_crit_edge:  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qdisc_bstats_update.exit

land.lhs.true.i.i.i.i.i:                          ; preds = %cond.end.i.i
  %53 = tail call i32 @llvm.read_register.i32(metadata !152) #14
  %and.i.i.i.i.i.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %56, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !179
  %57 = tail call i32 @llvm.read_register.i32(metadata !152) #14
  %and.i.i.i.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %62, ptrtoint (ptr @lockdep_recursion to i32)
  %63 = inttoptr i32 %add.i.i.i.i.i to ptr
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %63, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !180
  %66 = tail call i32 @llvm.read_register.i32(metadata !152) #14
  %and.i.i.i7.i.i.i.i.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i7.i.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %69, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool20.not.i.i.i.i.i = icmp eq i32 %65, 0
  br i1 %tobool20.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qdisc_bstats_update.exit

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %70 = tail call i32 @llvm.read_register.i32(metadata !152) #14
  %and.i.i.i.i.i.i.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp.i.i.i.i.i = icmp eq i32 %73, 0
  br i1 %cmp.i.i.i.i.i, label %land.rhs22.i.i.i.i.i, label %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qdisc_bstats_update.exit

land.rhs22.i.i.i.i.i:                             ; preds = %land.rhs.i.i.i.i.i
  %74 = tail call i32 @llvm.read_register.i32(metadata !152) #14
  %and.i.i.i9.i.i.i.i.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i9.i.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  %add.i11.i.i.i.i.i = add i32 %77, 1
  store volatile i32 %add.i11.i.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !181
  %78 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx46.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %79
  %80 = ptrtoint ptr %arrayidx46.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx46.i.i.i.i.i, align 4
  %add47.i.i.i.i.i = add i32 %81, ptrtoint (ptr @hardirqs_enabled to i32)
  %82 = inttoptr i32 %add47.i.i.i.i.i to ptr
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %82, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !182
  %85 = tail call i32 @llvm.read_register.i32(metadata !152) #14
  %and.i.i.i12.i.i.i.i.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i12.i.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  %sub.i14.i.i.i.i.i = add i32 %88, -1
  store volatile i32 %sub.i14.i.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool54.not.i.i.i.i.i = icmp eq i32 %84, 0
  br i1 %tobool54.not.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i.i

land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qdisc_bstats_update.exit

land.rhs58.i.i.i.i.i:                             ; preds = %land.rhs22.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %if.then.i.i.i.i.i, !prof !164

land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qdisc_bstats_update.exit

if.then.i.i.i.i.i:                                ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %qdisc_bstats_update.exit

qdisc_bstats_update.exit:                         ; preds = %if.then.i.i.i.i.i, %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %cond.end.i.i.qdisc_bstats_update.exit_crit_edge
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i = zext i32 %45 to i64
  %syncp.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2
  %89 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %90, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !183
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2, i32 0, i32 1
  %91 = tail call ptr @llvm.returnaddress(i32 0) #14
  %92 = ptrtoint ptr %91 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %92) #14
  %93 = ptrtoint ptr %bstats.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %bstats.i, align 8
  %add.i.i.i.i = add i64 %94, %conv.i.i
  store i64 %add.i.i.i.i, ptr %bstats.i, align 8
  %packets2.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 1
  %conv.i7.i.i.i = zext i32 %cond.i.i121 to i64
  %95 = ptrtoint ptr %packets2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %packets2.i.i.i, align 8
  %add.i8.i.i.i = add i64 %96, %conv.i7.i.i.i
  store i64 %add.i8.i.i.i, ptr %packets2.i.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef %92) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !184
  %97 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %98, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  %99 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cb.i.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %101 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %backlog.i, align 4
  %sub.i = sub i32 %102, %100
  store i32 %sub.i, ptr %backlog.i, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %103 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %qlen, align 8
  %dec = add i32 %104, -1
  store i32 %dec, ptr %qlen, align 8
  br label %done

for.inc:                                          ; preds = %land.lhs.true54.critedge.for.inc_crit_edge, %land.lhs.true47.for.inc_crit_edge, %if.end34.for.inc_crit_edge, %if.end29.for.inc_crit_edge, %if.then24.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0136, 1
  %105 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %106
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.done_crit_edge

for.inc.done_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

done:                                             ; preds = %for.inc.done_crit_edge, %qdisc_bstats_update.exit, %if.end59.done_crit_edge, %for.cond.preheader.done_crit_edge, %cond.end.done_crit_edge
  %skb.3 = phi ptr [ null, %cond.end.done_crit_edge ], [ %skb.1, %qdisc_bstats_update.exit ], [ null, %if.end59.done_crit_edge ], [ null, %for.cond.preheader.done_crit_edge ], [ null, %for.inc.done_crit_edge ]
  %call.i122 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i122, label %done.cleanup79_crit_edge, label %land.lhs.true.i125

done.cleanup79_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup79

land.lhs.true.i125:                               ; preds = %done
  %call1.i123 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i123)
  %tobool.not.i124 = icmp eq i32 %call1.i123, 0
  br i1 %tobool.not.i124, label %land.lhs.true.i125.cleanup79_crit_edge, label %land.lhs.true2.i127

land.lhs.true.i125.cleanup79_crit_edge:           ; preds = %land.lhs.true.i125
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup79

land.lhs.true2.i127:                              ; preds = %land.lhs.true.i125
  %.b4.i126 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i126, label %land.lhs.true2.i127.cleanup79_crit_edge, label %if.then.i128

land.lhs.true2.i127.cleanup79_crit_edge:          ; preds = %land.lhs.true2.i127
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup79

if.then.i128:                                     ; preds = %land.lhs.true2.i127
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #14
  br label %cleanup79

cleanup79:                                        ; preds = %if.then.i128, %land.lhs.true2.i127.cleanup79_crit_edge, %land.lhs.true.i125.cleanup79_crit_edge, %done.cleanup79_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !170
  %107 = tail call i32 @llvm.read_register.i32(metadata !152) #14
  %and.i.i.i.i.i129 = and i32 %107, -16384
  %108 = inttoptr i32 %and.i.i.i.i.i129 to ptr
  %preempt_count.i.i.i.i130 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %preempt_count.i.i.i.i130 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %preempt_count.i.i.i.i130, align 4
  %sub.i.i.i = add i32 %110, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i130, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %skb.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @taprio_peek_soft(ptr noundef %sch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %4 = tail call i32 @llvm.read_register.i32(metadata !152) #14
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %current_entry = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 12
  %8 = ptrtoint ptr %current_entry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %current_entry, align 4
  %call4 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end10_crit_edge

rcu_read_lock.exit.do.end10_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b58 = load i1, ptr @taprio_peek_soft.__warned, align 1
  br i1 %.b58, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @taprio_peek_soft.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 502, ptr noundef nonnull @.str.2) #14
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %rcu_read_lock.exit.do.end10_crit_edge
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %do.end10.cond.end_crit_edge, label %cond.true

do.end10.cond.end_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  %gate_mask13 = getelementptr inbounds %struct.sched_entry, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %gate_mask13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gate_mask13, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end10.cond.end_crit_edge
  %cond = phi i32 [ %11, %cond.true ], [ -1, %do.end10.cond.end_crit_edge ]
  %call.i59 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i59, label %cond.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i62

cond.end.rcu_read_unlock.exit_crit_edge:          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i62:                                ; preds = %cond.end
  %call1.i60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i60)
  %tobool.not.i61 = icmp eq i32 %call1.i60, 0
  br i1 %tobool.not.i61, label %land.lhs.true.i62.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i64

land.lhs.true.i62.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i64:                               ; preds = %land.lhs.true.i62
  %.b4.i63 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i63, label %land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge, label %if.then.i65

land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i64
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i65:                                      ; preds = %land.lhs.true2.i64
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i65, %land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i62.rcu_read_unlock.exit_crit_edge, %cond.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !170
  %12 = tail call i32 @llvm.read_register.i32(metadata !152) #14
  %and.i.i.i.i.i66 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i66 to ptr
  %preempt_count.i.i.i.i67 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i67, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i67, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool14.not = icmp eq i32 %cond, 0
  br i1 %tobool14.not, label %rcu_read_unlock.exit.cleanup38_crit_edge, label %for.cond.preheader

rcu_read_unlock.exit.cleanup38_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup38

for.cond.preheader:                               ; preds = %rcu_read_unlock.exit
  %flags = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %16 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp74.not = icmp eq i32 %17, 0
  br i1 %cmp74.not, label %for.cond.preheader.cleanup38_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup38_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup38

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.075 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %18 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %privdata.i, align 8
  %arrayidx = getelementptr ptr, ptr %19, i32 %i.075
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %tobool17.not = icmp eq ptr %21, null
  br i1 %tobool17.not, label %for.body.for.inc_crit_edge, label %if.end22, !prof !163

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end22:                                         ; preds = %for.body
  %ops = getelementptr inbounds %struct.Qdisc, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops, align 16
  %peek = getelementptr inbounds %struct.Qdisc_ops, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %peek to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %peek, align 4
  %call23 = tail call ptr %25(ptr noundef nonnull %21) #14
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end22.for.inc_crit_edge, label %if.end26

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end26:                                         ; preds = %if.end22
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 8
  %and = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %cleanup, label %if.end26.cleanup38_crit_edge

if.end26.cleanup38_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup38

cleanup:                                          ; preds = %if.end26
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call23, i32 0, i32 15, i32 0, i32 6
  %28 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %priority, align 4
  %and.i = and i32 %29, 15
  %arrayidx.i = getelementptr %struct.net_device, ptr %3, i32 0, i32 142, i32 %and.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %31 to i32
  %shl = shl nuw i32 1, %conv.i
  %and32 = and i32 %shl, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %cleanup.for.inc_crit_edge, label %cleanup.cleanup38_crit_edge

cleanup.cleanup38_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup38

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %if.end22.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.075, 1
  %32 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %33
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup38_crit_edge

for.inc.cleanup38_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup38

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup38:                                        ; preds = %for.inc.cleanup38_crit_edge, %cleanup.cleanup38_crit_edge, %if.end26.cleanup38_crit_edge, %for.cond.preheader.cleanup38_crit_edge, %rcu_read_unlock.exit.cleanup38_crit_edge
  %retval.2 = phi ptr [ null, %rcu_read_unlock.exit.cleanup38_crit_edge ], [ null, %for.cond.preheader.cleanup38_crit_edge ], [ %call23, %cleanup.cleanup38_crit_edge ], [ null, %for.inc.cleanup38_crit_edge ], [ %call23, %if.end26.cleanup38_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qdisc_create_dflt(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_hash_add(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @taprio_disable_offload(ptr noundef %dev, ptr nocapture noundef readonly %q, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.taprio_sched, ptr %q, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops, align 8
  %ndo_setup_tc = getelementptr inbounds %struct.net_device_ops, ptr %3, i32 0, i32 42
  %4 = ptrtoint ptr %ndo_setup_tc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndo_setup_tc, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 48) #18
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end3.do.body_crit_edge, label %taprio_offload_alloc.exit

if.end3.do.body_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

taprio_offload_alloc.exit:                        ; preds = %if.end3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #14
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %call7.i.i.i, align 8
  %offload.i = getelementptr inbounds %struct.__tc_taprio_qopt_offload, ptr %call7.i.i.i, i32 0, i32 1
  %tobool4.not = icmp eq ptr %offload.i, null
  br i1 %tobool4.not, label %taprio_offload_alloc.exit.do.body_crit_edge, label %if.end9

taprio_offload_alloc.exit.do.body_crit_edge:      ; preds = %taprio_offload_alloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body:                                          ; preds = %taprio_offload_alloc.exit.do.body_crit_edge, %if.end3.do.body_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @taprio_disable_offload.__msg) #14
  %tobool6.not = icmp eq ptr %extack, null
  br i1 %tobool6.not, label %do.body.cleanup_crit_edge, label %if.then7

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @taprio_disable_offload.__msg, ptr %extack, align 4
  br label %cleanup

if.end9:                                          ; preds = %taprio_offload_alloc.exit
  %9 = ptrtoint ptr %offload.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %offload.i, align 8
  %10 = ptrtoint ptr %ndo_setup_tc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndo_setup_tc, align 4
  %call11 = tail call i32 %11(ptr noundef %dev, i32 noundef 13, ptr noundef nonnull %offload.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.body13, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.body13:                                        ; preds = %if.end9
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @taprio_disable_offload.__msg.15) #14
  %tobool15.not = icmp eq ptr %extack, null
  br i1 %tobool15.not, label %do.body13.out_crit_edge, label %if.then16

do.body13.out_crit_edge:                          ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then16:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @taprio_disable_offload.__msg.15, ptr %extack, align 4
  br label %out

out:                                              ; preds = %if.then16, %do.body13.out_crit_edge, %if.end9.out_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !165
  tail call void @llvm.prefetch.p0(ptr nonnull %call7.i.i.i, i32 1, i32 3, i32 1) #14
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7.i.i.i, ptr nonnull %call7.i.i.i, i32 1, ptr nonnull elementtype(i32) %call7.i.i.i) #14, !srcloc !166
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end.i33, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !164

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call7.i.i.i, i32 noundef 3) #14
  br label %cleanup

if.end.i33:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !167
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.i33, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then7, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -12, %if.then7 ], [ -12, %do.body.cleanup_crit_edge ], [ %call11, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call11, %if.then10.i.i.i.i ], [ %call11, %if.end.i33 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_reset_tc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @taprio_set_picos_per_byte(ptr noundef %dev, ptr noundef %q) unnamed_addr #0 align 64 {
entry:
  %ecmd = alloca %struct.ethtool_link_ksettings, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %ecmd) #14
  %0 = call ptr @memset(ptr %ecmd, i32 255, i32 88)
  %call = call i32 @__ethtool_get_link_ksettings(ptr noundef %dev, ptr noundef nonnull %ecmd) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.skip_crit_edge, label %if.end

entry.skip_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip

if.end:                                           ; preds = %entry
  %speed1 = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 1
  %1 = ptrtoint ptr %speed1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %speed1, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %2, label %if.then5 [
    i32 0, label %if.end.skip_crit_edge
    i32 -1, label %if.end.skip_crit_edge28
  ]

if.end.skip_crit_edge28:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip

if.end.skip_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip

skip:                                             ; preds = %if.then5, %if.end.skip_crit_edge, %if.end.skip_crit_edge28, %entry.skip_crit_edge
  %speed.0 = phi i32 [ 10, %entry.skip_crit_edge ], [ %2, %if.then5 ], [ 10, %if.end.skip_crit_edge ], [ 10, %if.end.skip_crit_edge28 ]
  %div = sdiv i32 8000000, %speed.0
  %picos_per_byte9 = getelementptr inbounds %struct.taprio_sched, ptr %q, i32 0, i32 5
  %conv = sext i32 %div to i64
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %picos_per_byte9, i32 noundef 8) #14
  call void @generic_atomic64_set(ptr noundef %picos_per_byte9, i64 noundef %conv) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @taprio_set_picos_per_byte.__UNIQUE_ID_ddebug633, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@taprio_set_picos_per_byte, %if.then15)) #14
          to label %do.end22 [label %if.then15], !srcloc !185

if.then15:                                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i26 = call zeroext i1 @__kasan_check_read(ptr noundef %picos_per_byte9, i32 noundef 8) #14
  %call.i = call i64 @generic_atomic64_read(ptr noundef %picos_per_byte9) #14
  %speed19 = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 1
  %4 = ptrtoint ptr %speed19 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed19, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @taprio_set_picos_per_byte.__UNIQUE_ID_ddebug633, ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef %dev, i64 noundef %call.i, i32 noundef %5) #14
  br label %do.end22

do.end22:                                         ; preds = %if.then15, %skip
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ecmd) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_num_tc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_tc_queue(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @taprio_enable_offload(ptr noundef %dev, ptr noundef readonly %sched, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops, align 8
  %ndo_setup_tc = getelementptr inbounds %struct.net_device_ops, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %ndo_setup_tc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndo_setup_tc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body, label %if.end8.i.i.i

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @taprio_enable_offload.__msg) #14
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @taprio_enable_offload.__msg, ptr %extack, align 4
  br label %cleanup

if.end8.i.i.i:                                    ; preds = %entry
  %num_entries = getelementptr inbounds %struct.sched_gate_list, ptr %sched, i32 0, i32 2
  %5 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_entries, align 8
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 12) #14
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %9, i32 48) #14
  %retval.0.i.i = select i1 %8, i32 -1, i32 %spec.select.i.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i, i32 noundef 3520) #17
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %do.body6, label %taprio_offload_alloc.exit

taprio_offload_alloc.exit:                        ; preds = %if.end8.i.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i.i, i32 noundef 4) #14
  %10 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %call9.i.i.i, align 128
  %offload.i = getelementptr inbounds %struct.__tc_taprio_qopt_offload, ptr %call9.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %offload.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %offload.i, align 8
  %base_time.i = getelementptr inbounds %struct.sched_gate_list, ptr %sched, i32 0, i32 6
  %12 = ptrtoint ptr %base_time.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %base_time.i, align 8
  %base_time2.i = getelementptr inbounds %struct.__tc_taprio_qopt_offload, ptr %call9.i.i.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %base_time2.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %base_time2.i, align 16
  %cycle_time.i = getelementptr inbounds %struct.sched_gate_list, ptr %sched, i32 0, i32 4
  %15 = ptrtoint ptr %cycle_time.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %cycle_time.i, align 8
  %cycle_time3.i = getelementptr inbounds %struct.__tc_taprio_qopt_offload, ptr %call9.i.i.i, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %cycle_time3.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %cycle_time3.i, align 8
  %cycle_time_extension.i = getelementptr inbounds %struct.sched_gate_list, ptr %sched, i32 0, i32 5
  %18 = ptrtoint ptr %cycle_time_extension.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %cycle_time_extension.i, align 8
  %cycle_time_extension4.i = getelementptr inbounds %struct.__tc_taprio_qopt_offload, ptr %call9.i.i.i, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %cycle_time_extension4.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %cycle_time_extension4.i, align 32
  %entries.i = getelementptr inbounds %struct.sched_gate_list, ptr %sched, i32 0, i32 1
  %21 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %entry1.031.i = load ptr, ptr %entries.i, align 8
  %cmp.not32.i = icmp eq ptr %entry1.031.i, %entries.i
  br i1 %cmp.not32.i, label %taprio_offload_alloc.exit.taprio_sched_to_offload.exit_crit_edge, label %for.body.lr.ph.i

taprio_offload_alloc.exit.taprio_sched_to_offload.exit_crit_edge: ; preds = %taprio_offload_alloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %taprio_sched_to_offload.exit

do.body6:                                         ; preds = %if.end8.i.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @taprio_enable_offload.__msg.36) #14
  %tobool8.not = icmp eq ptr %extack, null
  br i1 %tobool8.not, label %do.body6.cleanup_crit_edge, label %if.then9

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then9:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @taprio_enable_offload.__msg.36, ptr %extack, align 4
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %taprio_offload_alloc.exit
  %num_tc.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 140
  %23 = ptrtoint ptr %num_tc.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_tc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp25.not.i.i = icmp eq i16 %24, 0
  %umax.i.i = sext i16 %24 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %tc_map_to_queue_mask.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %entry1.034.i = phi ptr [ %entry1.031.i, %for.body.lr.ph.i ], [ %entry1.0.i, %tc_map_to_queue_mask.exit.i.for.body.i_crit_edge ]
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %tc_map_to_queue_mask.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.__tc_taprio_qopt_offload, ptr %call9.i.i.i, i32 0, i32 1, i32 5, i32 %i.033.i
  %command.i = getelementptr inbounds %struct.sched_entry, ptr %entry1.034.i, i32 0, i32 7
  %25 = ptrtoint ptr %command.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %command.i, align 8
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx.i, align 4
  %interval.i = getelementptr inbounds %struct.sched_entry, ptr %entry1.034.i, i32 0, i32 6
  %28 = ptrtoint ptr %interval.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %interval.i, align 4
  %interval8.i = getelementptr %struct.__tc_taprio_qopt_offload, ptr %call9.i.i.i, i32 0, i32 1, i32 5, i32 %i.033.i, i32 2
  %30 = ptrtoint ptr %interval8.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %interval8.i, align 4
  %gate_mask.i = getelementptr inbounds %struct.sched_entry, ptr %entry1.034.i, i32 0, i32 5
  %31 = ptrtoint ptr %gate_mask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %gate_mask.i, align 8
  br i1 %cmp25.not.i.i, label %for.body.i.tc_map_to_queue_mask.exit.i_crit_edge, label %for.body.i.for.body.i.i_crit_edge

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.body.i.tc_map_to_queue_mask.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tc_map_to_queue_mask.exit.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %queue_mask.028.i.i = phi i32 [ %queue_mask.1.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.for.body.i.i_crit_edge ]
  %i.026.i.i = phi i32 [ %inc.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %i.026.i.i
  %and.i.i = and i32 %shl.i.i, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.cleanup.i.i_crit_edge, label %if.end.i.i

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i = getelementptr %struct.net_device, ptr %dev, i32 0, i32 141, i32 %i.026.i.i
  %offset2.i.i = getelementptr %struct.net_device, ptr %dev, i32 0, i32 141, i32 %i.026.i.i, i32 1
  %33 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %offset2.i.i, align 2
  %conv3.i.i = zext i16 %34 to i32
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.i.i, align 2
  %conv7.i.i = zext i16 %36 to i32
  %shl8.neg.i.i = shl nsw i32 -1, %conv3.i.i
  %37 = add nuw nsw i32 %conv3.i.i, %conv7.i.i
  %sub11.i.i = sub nsw i32 32, %37
  %shr.i.i = lshr i32 -1, %sub11.i.i
  %and12.i.i = and i32 %shr.i.i, %shl8.neg.i.i
  %or.i.i = or i32 %and12.i.i, %queue_mask.028.i.i
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.cleanup.i.i_crit_edge
  %queue_mask.1.i.i = phi i32 [ %or.i.i, %if.end.i.i ], [ %queue_mask.028.i.i, %for.body.i.i.cleanup.i.i_crit_edge ]
  %inc.i.i = add nuw i32 %i.026.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %cleanup.i.i.tc_map_to_queue_mask.exit.i_crit_edge, label %cleanup.i.i.for.body.i.i_crit_edge

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

cleanup.i.i.tc_map_to_queue_mask.exit.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tc_map_to_queue_mask.exit.i

tc_map_to_queue_mask.exit.i:                      ; preds = %cleanup.i.i.tc_map_to_queue_mask.exit.i_crit_edge, %for.body.i.tc_map_to_queue_mask.exit.i_crit_edge
  %queue_mask.0.lcssa.i.i = phi i32 [ 0, %for.body.i.tc_map_to_queue_mask.exit.i_crit_edge ], [ %queue_mask.1.i.i, %cleanup.i.i.tc_map_to_queue_mask.exit.i_crit_edge ]
  %gate_mask9.i = getelementptr %struct.__tc_taprio_qopt_offload, ptr %call9.i.i.i, i32 0, i32 1, i32 5, i32 %i.033.i, i32 1
  %38 = ptrtoint ptr %gate_mask9.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %queue_mask.0.lcssa.i.i, ptr %gate_mask9.i, align 4
  %inc.i = add i32 %i.033.i, 1
  %39 = ptrtoint ptr %entry1.034.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %entry1.0.i = load ptr, ptr %entry1.034.i, align 8
  %cmp.not.i = icmp eq ptr %entry1.0.i, %entries.i
  br i1 %cmp.not.i, label %tc_map_to_queue_mask.exit.i.taprio_sched_to_offload.exit_crit_edge, label %tc_map_to_queue_mask.exit.i.for.body.i_crit_edge

tc_map_to_queue_mask.exit.i.for.body.i_crit_edge: ; preds = %tc_map_to_queue_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

tc_map_to_queue_mask.exit.i.taprio_sched_to_offload.exit_crit_edge: ; preds = %tc_map_to_queue_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %taprio_sched_to_offload.exit

taprio_sched_to_offload.exit:                     ; preds = %tc_map_to_queue_mask.exit.i.taprio_sched_to_offload.exit_crit_edge, %taprio_offload_alloc.exit.taprio_sched_to_offload.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %taprio_offload_alloc.exit.taprio_sched_to_offload.exit_crit_edge ], [ %inc.i, %tc_map_to_queue_mask.exit.i.taprio_sched_to_offload.exit_crit_edge ]
  %num_entries.i = getelementptr inbounds %struct.__tc_taprio_qopt_offload, ptr %call9.i.i.i, i32 0, i32 1, i32 4
  %40 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %i.0.lcssa.i, ptr %num_entries.i, align 8
  %41 = ptrtoint ptr %ndo_setup_tc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ndo_setup_tc, align 4
  %call16 = tail call i32 %42(ptr noundef %dev, i32 noundef 13, ptr noundef nonnull %offload.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %do.body18, label %taprio_sched_to_offload.exit.done_crit_edge

taprio_sched_to_offload.exit.done_crit_edge:      ; preds = %taprio_sched_to_offload.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

do.body18:                                        ; preds = %taprio_sched_to_offload.exit
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @taprio_enable_offload.__msg.37) #14
  %tobool20.not = icmp eq ptr %extack, null
  br i1 %tobool20.not, label %do.body18.done_crit_edge, label %if.then21

do.body18.done_crit_edge:                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.then21:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @taprio_enable_offload.__msg.37, ptr %extack, align 4
  br label %done

done:                                             ; preds = %if.then21, %do.body18.done_crit_edge, %taprio_sched_to_offload.exit.done_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !165
  tail call void @llvm.prefetch.p0(ptr nonnull %call9.i.i.i, i32 1, i32 3, i32 1) #14
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call9.i.i.i, ptr nonnull %call9.i.i.i, i32 1, ptr nonnull elementtype(i32) %call9.i.i.i) #14, !srcloc !166
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i1 = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i1, label %if.end.i2, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %done
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !164

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call9.i.i.i, i32 noundef 3) #14
  br label %cleanup

if.end.i2:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !167
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.i2, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then9, %do.body6.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then2 ], [ -95, %do.body.cleanup_crit_edge ], [ -12, %if.then9 ], [ -12, %do.body6.cleanup_crit_edge ], [ %call16, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call16, %if.then10.i.i.i.i ], [ %call16, %if.end.i2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hrtimer_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @taprio_dequeue_offload(ptr nocapture noundef readnone %sch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %.b35 = load i1, ptr @taprio_dequeue_offload.__already_done, align 1
  br i1 %.b35, label %entry.if.end25_crit_edge, label %if.then, !prof !164

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @taprio_dequeue_offload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 647, i32 noundef 9, ptr noundef nonnull @.str.38) #14
  br label %if.end25

if.end25:                                         ; preds = %if.then, %entry.if.end25_crit_edge
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @taprio_peek_offload(ptr nocapture noundef readnone %sch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %.b35 = load i1, ptr @taprio_peek_offload.__already_done, align 1
  br i1 %.b35, label %entry.if.end25_crit_edge, label %if.then, !prof !164

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @taprio_peek_offload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 538, i32 noundef 9, ptr noundef nonnull @.str.39) #14
  br label %if.end25

if.end25:                                         ; preds = %if.then, %entry.if.end25_crit_edge
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @taprio_get_start_time(ptr noundef %sch, ptr noundef readonly %sched, ptr nocapture noundef writeonly %start) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %sched, null
  br i1 %tobool.not.i, label %entry.sched_base_time.exit_crit_edge, label %if.end.i

entry.sched_base_time.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sched_base_time.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %base_time.i = getelementptr inbounds %struct.sched_gate_list, ptr %sched, i32 0, i32 6
  %0 = ptrtoint ptr %base_time.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %base_time.i, align 8
  br label %sched_base_time.exit

sched_base_time.exit:                             ; preds = %if.end.i, %entry.sched_base_time.exit_crit_edge
  %retval.0.i = phi i64 [ %1, %if.end.i ], [ 9223372036854775807, %entry.sched_base_time.exit_crit_edge ]
  %call.i = tail call i64 @ktime_get() #14
  %tk_offset1.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %2 = ptrtoint ptr %tk_offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %tk_offset1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cond.i.i = icmp eq i32 %3, 3
  br i1 %cond.i.i, label %sched_base_time.exit.taprio_get_time.exit_crit_edge, label %sw.default.i.i

sched_base_time.exit.taprio_get_time.exit_crit_edge: ; preds = %sched_base_time.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %taprio_get_time.exit

sw.default.i.i:                                   ; preds = %sched_base_time.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i = tail call i64 @ktime_mono_to_any(i64 noundef %call.i, i32 noundef %3) #14
  br label %taprio_get_time.exit

taprio_get_time.exit:                             ; preds = %sw.default.i.i, %sched_base_time.exit.taprio_get_time.exit_crit_edge
  %retval.0.i.i = phi i64 [ %call.i.i, %sw.default.i.i ], [ %call.i, %sched_base_time.exit.taprio_get_time.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i.i, i64 %retval.0.i)
  %cmp3.i.i = icmp slt i64 %retval.0.i.i, %retval.0.i
  br i1 %cmp3.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %taprio_get_time.exit
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %retval.0.i, ptr %start, align 8
  br label %cleanup

if.end:                                           ; preds = %taprio_get_time.exit
  %cycle_time = getelementptr inbounds %struct.sched_gate_list, ptr %sched, i32 0, i32 4
  %5 = ptrtoint ptr %cycle_time to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %cycle_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.not = icmp eq i64 %6, 0
  br i1 %tobool.not, label %do.end, label %if.end28, !prof !163

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1019, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i64 %retval.0.i.i, %retval.0.i
  %call29 = tail call i64 @div64_s64(i64 noundef %sub, i64 noundef %6) #14
  %add = add i64 %call29, 1
  %mul = mul i64 %add, %6
  %add30 = add i64 %mul, %retval.0.i
  %7 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %add30, ptr %start, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -14, %do.end ], [ 0, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setup_first_close_time(ptr noundef %q, ptr nocapture noundef %sched, i64 noundef %base) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %entries = getelementptr inbounds %struct.sched_gate_list, ptr %sched, i32 0, i32 1
  %0 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entries, align 8
  %cycle_time = getelementptr inbounds %struct.sched_gate_list, ptr %sched, i32 0, i32 4
  %2 = ptrtoint ptr %cycle_time to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %cycle_time, align 8
  %add = add i64 %3, %base
  %cycle_close_time = getelementptr inbounds %struct.sched_gate_list, ptr %sched, i32 0, i32 3
  %4 = ptrtoint ptr %cycle_close_time to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add, ptr %cycle_close_time, align 8
  %interval = getelementptr inbounds %struct.sched_entry, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %interval, align 4
  %conv = zext i32 %6 to i64
  %add1 = add i64 %conv, %base
  %close_time = getelementptr inbounds %struct.sched_entry, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %close_time to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %add1, ptr %close_time, align 8
  %budget.i = getelementptr inbounds %struct.sched_entry, ptr %1, i32 0, i32 3
  %mul.i = mul nuw nsw i64 %conv, 1000
  %picos_per_byte.i = getelementptr inbounds %struct.taprio_sched, ptr %q, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %picos_per_byte.i, i32 noundef 8) #14
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %picos_per_byte.i) #14
  %call2.i = tail call i64 @div64_u64(i64 noundef %mul.i, i64 noundef %call.i.i) #14
  %conv3.i = trunc i64 %call2.i to i32
  %call.i.i5.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %budget.i, i32 noundef 4) #14
  %8 = ptrtoint ptr %budget.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %conv3.i, ptr %budget.i, align 4
  %current_entry = getelementptr inbounds %struct.taprio_sched, ptr %q, i32 0, i32 7
  %9 = ptrtoint ptr %current_entry to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr null, ptr %current_entry, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @taprio_start_sched(ptr noundef %sch, i64 noundef %start) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %advance_timer = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %expires.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 40
  %2 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %expires.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp = icmp eq i64 %3, 0
  %spec.store.select = select i1 %cmp, i64 9223372036854775807, i64 %3
  %4 = tail call i64 @llvm.smin.i64(i64 %spec.store.select, i64 %start)
  tail call void @hrtimer_start_range_ns(ptr noundef %advance_timer, i64 noundef %4, i64 noundef 0, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @taprio_offload_config_changed(ptr noundef %q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %current_entry_lock = getelementptr inbounds %struct.taprio_sched, ptr %q, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %current_entry_lock) #14
  %dep_map = getelementptr inbounds %struct.taprio_sched, ptr %q, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b30 = load i1, ptr @taprio_offload_config_changed.__warned, align 1
  br i1 %.b30, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @taprio_offload_config_changed.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1197, ptr noundef nonnull @.str.10) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %oper_sched = getelementptr inbounds %struct.taprio_sched, ptr %q, i32 0, i32 8
  %0 = ptrtoint ptr %oper_sched to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oper_sched, align 8
  %call.i31 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool10.not = icmp eq i32 %call.i31, 0
  br i1 %tobool10.not, label %land.lhs.true11, label %do.end.do.end19_crit_edge

do.end.do.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19

land.lhs.true11:                                  ; preds = %do.end
  %call12 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true11.do.end19_crit_edge, label %land.lhs.true14

land.lhs.true11.do.end19_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %.b2829 = load i1, ptr @taprio_offload_config_changed.__warned.40, align 1
  br i1 %.b2829, label %land.lhs.true14.do.end19_crit_edge, label %if.then16

land.lhs.true14.do.end19_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @taprio_offload_config_changed.__warned.40, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1199, ptr noundef nonnull @.str.10) #14
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %land.lhs.true14.do.end19_crit_edge, %land.lhs.true11.do.end19_crit_edge, %do.end.do.end19_crit_edge
  %admin_sched = getelementptr inbounds %struct.taprio_sched, ptr %q, i32 0, i32 9
  %2 = ptrtoint ptr %admin_sched to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %admin_sched, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !174
  %4 = ptrtoint ptr %oper_sched to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %oper_sched, align 8
  %5 = ptrtoint ptr %admin_sched to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr null, ptr %admin_sched, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end19.switch_schedules.exit_crit_edge, label %if.then71.i

do.end19.switch_schedules.exit_crit_edge:         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %switch_schedules.exit

if.then71.i:                                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @call_rcu(ptr noundef nonnull %1, ptr noundef nonnull @taprio_free_sched_cb) #14
  br label %switch_schedules.exit

switch_schedules.exit:                            ; preds = %if.then71.i, %do.end19.switch_schedules.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %current_entry_lock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dump_schedule(ptr noundef %msg, ptr noundef readonly %root) unnamed_addr #0 align 64 {
entry:
  %tmp.i34.i = alloca i32, align 4
  %tmp.i32.i = alloca i32, align 4
  %tmp.i30.i = alloca i8, align 1
  %tmp.i.i = alloca i32, align 4
  %tmp.i42 = alloca i64, align 8
  %tmp.i40 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %base_time = getelementptr inbounds %struct.sched_gate_list, ptr %root, i32 0, i32 6
  %0 = ptrtoint ptr %base_time to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %base_time, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #14
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %tmp.i, align 8
  %call.i = call i32 @nla_put_64bit(ptr noundef %msg, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %cycle_time = getelementptr inbounds %struct.sched_gate_list, ptr %root, i32 0, i32 4
  %3 = ptrtoint ptr %cycle_time to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %cycle_time, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i40) #14
  %5 = ptrtoint ptr %tmp.i40 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %tmp.i40, align 8
  %call.i41 = call i32 @nla_put_64bit(ptr noundef %msg, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %tmp.i40, i32 noundef 6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i40) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool3.not = icmp eq i32 %call.i41, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cycle_time_extension = getelementptr inbounds %struct.sched_gate_list, ptr %root, i32 0, i32 5
  %6 = ptrtoint ptr %cycle_time_extension to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %cycle_time_extension, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i42) #14
  %8 = ptrtoint ptr %tmp.i42 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %tmp.i42, align 8
  %call.i43 = call i32 @nla_put_64bit(ptr noundef %msg, i32 noundef 9, i32 noundef 8, ptr noundef nonnull %tmp.i42, i32 noundef 6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i42) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool7.not = icmp eq i32 %call.i43, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 2, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool11.not51 = icmp eq ptr %10, null
  %tobool11.not = select i1 %cmp.i, i1 true, i1 %tobool11.not51
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %entries = getelementptr inbounds %struct.sched_gate_list, ptr %root, i32 0, i32 1
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %dump_entry.exit.for.cond_crit_edge, %if.end13
  %entry1.0.in = phi ptr [ %entries, %if.end13 ], [ %entry1.0, %dump_entry.exit.for.cond_crit_edge ]
  %11 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 8
  %cmp.not = icmp eq ptr %entry1.0, %entries
  %12 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i.i, align 8
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call1.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 1, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not37.i = icmp eq ptr %13, null
  %tobool.not.i = select i1 %cmp.i.i, i1 true, i1 %tobool.not37.i
  br i1 %tobool.not.i, label %for.body.if.then.i.i_crit_edge, label %if.end.i

for.body.if.then.i.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

if.end.i:                                         ; preds = %for.body
  %index.i = getelementptr inbounds %struct.sched_entry, ptr %entry1.0, i32 0, i32 4
  %14 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #14
  %16 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.if.then.i.i.i_crit_edge

if.end.i.if.then.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i

if.end5.i:                                        ; preds = %if.end.i
  %command.i = getelementptr inbounds %struct.sched_entry, ptr %entry1.0, i32 0, i32 7
  %17 = ptrtoint ptr %command.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %command.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i30.i) #14
  %19 = ptrtoint ptr %tmp.i30.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %tmp.i30.i, align 1
  %call.i31.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i30.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i30.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %tobool7.not.i = icmp eq i32 %call.i31.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.if.then.i.i.i_crit_edge

if.end5.i.if.then.i.i.i_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i

if.end9.i:                                        ; preds = %if.end5.i
  %gate_mask.i = getelementptr inbounds %struct.sched_entry, ptr %entry1.0, i32 0, i32 5
  %20 = ptrtoint ptr %gate_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gate_mask.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i32.i) #14
  %22 = ptrtoint ptr %tmp.i32.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tmp.i32.i, align 4
  %call.i33.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i32.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i32.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i)
  %tobool11.not.i = icmp eq i32 %call.i33.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end9.i.if.then.i.i.i_crit_edge

if.end9.i.if.then.i.i.i_crit_edge:                ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i

if.end13.i:                                       ; preds = %if.end9.i
  %interval.i = getelementptr inbounds %struct.sched_entry, ptr %entry1.0, i32 0, i32 6
  %23 = ptrtoint ptr %interval.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %interval.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i34.i) #14
  %25 = ptrtoint ptr %tmp.i34.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tmp.i34.i, align 4
  %call.i35.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i34.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i34.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35.i)
  %tobool15.not.i = icmp eq i32 %call.i35.i, 0
  br i1 %tobool15.not.i, label %dump_entry.exit, label %if.end13.i.if.then.i.i.i_crit_edge

if.end13.i.if.then.i.i.i_crit_edge:               ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end13.i.if.then.i.i.i_crit_edge, %if.end9.i.if.then.i.i.i_crit_edge, %if.end5.i.if.then.i.i.i_crit_edge, %if.end.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %26 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %27, %13
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge, !prof !163

if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_nest_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  br label %nla_nest_cancel.exit.i

nla_nest_cancel.exit.i:                           ; preds = %do.end.i.i.i, %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge
  %28 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i) #14
  br label %if.then.i.i

dump_entry.exit:                                  ; preds = %if.end13.i
  %30 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %32 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i.i, ptr %13, align 2
  %33 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i.i, align 4
  %cmp16 = icmp slt i32 %34, 0
  br i1 %cmp16, label %dump_entry.exit.if.then.i.i_crit_edge, label %dump_entry.exit.for.cond_crit_edge

dump_entry.exit.for.cond_crit_edge:               ; preds = %dump_entry.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

dump_entry.exit.if.then.i.i_crit_edge:            ; preds = %dump_entry.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  %sub.ptr.lhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %35 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i, ptr %10, align 2
  br label %cleanup

if.then.i.i:                                      ; preds = %dump_entry.exit.if.then.i.i_crit_edge, %nla_nest_cancel.exit.i, %for.body.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %36 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i45 = icmp ugt ptr %37, %10
  br i1 %cmp.i.i45, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !163

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %38 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i46 = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i47 = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i.i48 = sub i32 %sub.ptr.lhs.cast.i.i46, %sub.ptr.rhs.cast.i.i47
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i48) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %for.end, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end5.cleanup_crit_edge ], [ -1, %if.end.i.i ], [ -1, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nla_nest_cancel(ptr noundef %skb, ptr noundef %start) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %tobool.not.i = icmp eq ptr %start, null
  br i1 %tobool.not.i, label %entry.nlmsg_trim.exit_crit_edge, label %if.then.i

entry.nlmsg_trim.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %nlmsg_trim.exit

if.then.i:                                        ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %1, %start
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !163

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %start to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #14
  br label %nlmsg_trim.exit

nlmsg_trim.exit:                                  ; preds = %if.end.i, %entry.nlmsg_trim.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @taprio_dev_notifier(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %call1 = tail call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b66 = load i1, ptr @taprio_dev_notifier.__already_done, align 1
  br i1 %.b66, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !164

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @taprio_dev_notifier.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1103, i32 noundef 9, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str, i32 noundef 1103) #14
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %event, label %if.end30.cleanup_crit_edge [
    i32 1, label %if.end30.if.end40_crit_edge
    i32 4, label %if.end30.if.end40_crit_edge73
  ]

if.end30.if.end40_crit_edge73:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end40:                                         ; preds = %if.end30.if.end40_crit_edge, %if.end30.if.end40_crit_edge73
  tail call void @_raw_spin_lock(ptr noundef nonnull @taprio_list_lock) #14
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end40
  %.pn.in = phi ptr [ @taprio_list, %if.end40 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %3 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp42.not = icmp eq ptr %.pn, @taprio_list
  br i1 %cmp42.not, label %if.end55.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %root = getelementptr i8, ptr %.pn, i32 -132
  %4 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root, align 4
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_queue.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  %cmp46 = icmp eq ptr %9, %1
  br i1 %cmp46, label %if.then54.critedge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.then54.critedge:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %q.0.le = getelementptr i8, ptr %.pn, i32 -136
  tail call void @_raw_spin_unlock(ptr noundef nonnull @taprio_list_lock) #14
  tail call fastcc void @taprio_set_picos_per_byte(ptr noundef %1, ptr noundef %q.0.le)
  br label %cleanup

if.end55.critedge:                                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef nonnull @taprio_list_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end55.critedge, %if.then54.critedge, %if.end30.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !21, !22, !24, !26, !27, !28, !30, !31, !33, !35, !37, !38, !40, !41, !43, !44, !46, !48, !50, !52, !53, !55, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !123, !124, !125, !127, !129, !131, !133, !134, !136, !137, !139, !141, !143, !145, !147, !149, !151}
!llvm.named.register.sp = !{!152}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !{ptr @__ksymtab_taprio_offload_get, !1, !"__ksymtab_taprio_offload_get", i1 false, i1 false}
!1 = !{!"../net/sched/sch_taprio.c", i32 1162, i32 1}
!2 = !{ptr @__ksymtab_taprio_offload_free, !3, !"__ksymtab_taprio_offload_free", i1 false, i1 false}
!3 = !{!"../net/sched/sch_taprio.c", i32 1176, i32 1}
!4 = !{ptr @__initcall__kmod_sch_taprio__652_2063_taprio_module_init6, !5, !"__initcall__kmod_sch_taprio__652_2063_taprio_module_init6", i1 false, i1 false}
!5 = !{!"../net/sched/sch_taprio.c", i32 2063, i32 1}
!6 = !{ptr @__exitcall_taprio_module_exit, !7, !"__exitcall_taprio_module_exit", i1 false, i1 false}
!7 = !{!"../net/sched/sch_taprio.c", i32 2064, i32 1}
!8 = !{ptr @__UNIQUE_ID_file653, !9, !"__UNIQUE_ID_file653", i1 false, i1 false}
!9 = !{!"../net/sched/sch_taprio.c", i32 2065, i32 1}
!10 = !{ptr @__UNIQUE_ID_license654, !9, !"__UNIQUE_ID_license654", i1 false, i1 false}
!11 = !{ptr @taprio_qdisc_ops, !12, !"taprio_qdisc_ops", i1 false, i1 false}
!12 = !{!"../net/sched/sch_taprio.c", i32 2027, i32 25}
!13 = !{ptr @taprio_class_ops, !14, !"taprio_class_ops", i1 false, i1 false}
!14 = !{!"../net/sched/sch_taprio.c", i32 2017, i32 37}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../net/sched/sch_taprio.c", i32 443, i32 3}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/sched/sch_taprio.c", i32 271, i32 10}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../net/sched/sch_taprio.c", i32 272, i32 10}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../net/sched/sch_taprio.c", i32 361, i32 10}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../net/sched/sch_taprio.c", i32 362, i32 10}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/net/sch_generic.h", i32 835, i32 34}
!37 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @taprio_init.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../net/sched/sch_taprio.c", i32 1682, i32 2}
!40 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../net/sched/sch_taprio.c", i32 715, i32 10}
!43 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../net/sched/sch_taprio.c", i32 717, i32 9}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../net/sched/sch_taprio.c", i32 719, i32 10}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../net/sched/sch_taprio.c", i32 567, i32 10}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!52 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../net/sched/sch_taprio.c", i32 502, i32 10}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/sched/sch_taprio.c", i32 29, i32 8}
!57 = !{ptr @taprio_list_lock, !56, !"taprio_list_lock", i1 false, i1 false}
!58 = !{ptr @taprio_list, !59, !"taprio_list", i1 false, i1 false}
!59 = !{!"../net/sched/sch_taprio.c", i32 28, i32 8}
!60 = !{ptr @taprio_disable_offload.__msg, !61, !"__msg", i1 false, i1 false}
!61 = !{!"../net/sched/sch_taprio.c", i32 1302, i32 3}
!62 = !{ptr @taprio_disable_offload.__msg.15, !63, !"__msg", i1 false, i1 false}
!63 = !{!"../net/sched/sch_taprio.c", i32 1310, i32 3}
!64 = !{ptr @taprio_change.__msg, !65, !"__msg", i1 false, i1 false}
!65 = !{!"../net/sched/sch_taprio.c", i32 1486, i32 3}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../net/sched/sch_taprio.c", i32 1492, i32 9}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../net/sched/sch_taprio.c", i32 1493, i32 10}
!70 = !{ptr @taprio_change.__msg.17, !71, !"__msg", i1 false, i1 false}
!71 = !{!"../net/sched/sch_taprio.c", i32 1501, i32 3}
!72 = !{ptr @taprio_change.__msg.18, !73, !"__msg", i1 false, i1 false}
!73 = !{!"../net/sched/sch_taprio.c", i32 1511, i32 3}
!74 = !{ptr @taprio_change.__msg.19, !75, !"__msg", i1 false, i1 false}
!75 = !{!"../net/sched/sch_taprio.c", i32 1549, i32 4}
!76 = !{ptr @taprio_change.__msg.20, !77, !"__msg", i1 false, i1 false}
!77 = !{!"../net/sched/sch_taprio.c", i32 1577, i32 3}
!78 = !{ptr @taprio_policy, !79, !"taprio_policy", i1 false, i1 false}
!79 = !{!"../net/sched/sch_taprio.c", i32 781, i32 32}
!80 = !{ptr @taprio_new_flags.__msg, !81, !"__msg", i1 false, i1 false}
!81 = !{!"../net/sched/sch_taprio.c", i32 1441, i32 3}
!82 = !{ptr @taprio_new_flags.__msg.21, !83, !"__msg", i1 false, i1 false}
!83 = !{!"../net/sched/sch_taprio.c", i32 1446, i32 3}
!84 = !{ptr @taprio_parse_mqprio_opt.__msg, !85, !"__msg", i1 false, i1 false}
!85 = !{!"../net/sched/sch_taprio.c", i32 938, i32 3}
!86 = !{ptr @taprio_parse_mqprio_opt.__msg.22, !87, !"__msg", i1 false, i1 false}
!87 = !{!"../net/sched/sch_taprio.c", i32 950, i32 3}
!88 = !{ptr @taprio_parse_mqprio_opt.__msg.23, !89, !"__msg", i1 false, i1 false}
!89 = !{!"../net/sched/sch_taprio.c", i32 956, i32 3}
!90 = !{ptr @taprio_parse_mqprio_opt.__msg.24, !91, !"__msg", i1 false, i1 false}
!91 = !{!"../net/sched/sch_taprio.c", i32 963, i32 4}
!92 = !{ptr @taprio_parse_mqprio_opt.__msg.25, !93, !"__msg", i1 false, i1 false}
!93 = !{!"../net/sched/sch_taprio.c", i32 977, i32 4}
!94 = !{ptr @taprio_parse_mqprio_opt.__msg.26, !95, !"__msg", i1 false, i1 false}
!95 = !{!"../net/sched/sch_taprio.c", i32 987, i32 5}
!96 = !{ptr @parse_taprio_schedule.__msg, !97, !"__msg", i1 false, i1 false}
!97 = !{!"../net/sched/sch_taprio.c", i32 893, i32 3}
!98 = !{ptr @parse_taprio_schedule.__msg.27, !99, !"__msg", i1 false, i1 false}
!99 = !{!"../net/sched/sch_taprio.c", i32 920, i32 4}
!100 = !{ptr @parse_sched_list.__msg, !101, !"__msg", i1 false, i1 false}
!101 = !{!"../net/sched/sch_taprio.c", i32 861, i32 4}
!102 = !{ptr @parse_sched_list.__msg.28, !103, !"__msg", i1 false, i1 false}
!103 = !{!"../net/sched/sch_taprio.c", i32 867, i32 4}
!104 = !{ptr @parse_sched_entry.__msg, !105, !"__msg", i1 false, i1 false}
!105 = !{!"../net/sched/sch_taprio.c", i32 837, i32 3}
!106 = !{ptr @entry_policy, !107, !"entry_policy", i1 false, i1 false}
!107 = !{!"../net/sched/sch_taprio.c", i32 774, i32 32}
!108 = !{ptr @fill_sched_entry.__msg, !109, !"__msg", i1 false, i1 false}
!109 = !{!"../net/sched/sch_taprio.c", i32 818, i32 3}
!110 = !{ptr @taprio_parse_clockid.__msg, !111, !"__msg", i1 false, i1 false}
!111 = !{!"../net/sched/sch_taprio.c", i32 1343, i32 4}
!112 = !{ptr @taprio_parse_clockid.__msg.29, !113, !"__msg", i1 false, i1 false}
!113 = !{!"../net/sched/sch_taprio.c", i32 1352, i32 4}
!114 = !{ptr @taprio_parse_clockid.__msg.30, !115, !"__msg", i1 false, i1 false}
!115 = !{!"../net/sched/sch_taprio.c", i32 1366, i32 4}
!116 = !{ptr @taprio_parse_clockid.__msg.31, !117, !"__msg", i1 false, i1 false}
!117 = !{!"../net/sched/sch_taprio.c", i32 1386, i32 4}
!118 = !{ptr @taprio_parse_clockid.__msg.32, !119, !"__msg", i1 false, i1 false}
!119 = !{!"../net/sched/sch_taprio.c", i32 1395, i32 3}
!120 = !{ptr @.str.33, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../net/sched/sch_taprio.c", i32 1090, i32 2}
!122 = !{ptr @.str.34, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.35, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @taprio_set_picos_per_byte.__UNIQUE_ID_ddebug633, !121, !"__UNIQUE_ID_ddebug633", i1 false, i1 false}
!125 = !{ptr @taprio_enable_offload.__msg, !126, !"__msg", i1 false, i1 false}
!126 = !{!"../net/sched/sch_taprio.c", i32 1259, i32 3}
!127 = !{ptr @taprio_enable_offload.__msg.36, !128, !"__msg", i1 false, i1 false}
!128 = !{!"../net/sched/sch_taprio.c", i32 1266, i32 3}
!129 = !{ptr @taprio_enable_offload.__msg.37, !130, !"__msg", i1 false, i1 false}
!130 = !{!"../net/sched/sch_taprio.c", i32 1275, i32 3}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../net/sched/sch_taprio.c", i32 647, i32 2}
!133 = !{ptr @.str.38, !132, !"<string literal>", i1 false, i1 false}
!134 = distinct !{null, !135, !"__already_done", i1 false, i1 false}
!135 = !{!"../net/sched/sch_taprio.c", i32 538, i32 2}
!136 = !{ptr @.str.39, !135, !"<string literal>", i1 false, i1 false}
!137 = distinct !{null, !138, !"__warned", i1 false, i1 false}
!138 = !{!"../net/sched/sch_taprio.c", i32 1196, i32 9}
!139 = distinct !{null, !140, !"__warned", i1 false, i1 false}
!140 = !{!"../net/sched/sch_taprio.c", i32 1198, i32 10}
!141 = distinct !{null, !142, !"__warned", i1 false, i1 false}
!142 = !{!"../net/sched/sch_taprio.c", i32 1888, i32 9}
!143 = distinct !{null, !144, !"__warned", i1 false, i1 false}
!144 = !{!"../net/sched/sch_taprio.c", i32 1889, i32 10}
!145 = !{ptr @.str.42, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../include/net/netlink.h", i32 991, i32 3}
!147 = !{ptr @taprio_device_notifier, !148, !"taprio_device_notifier", i1 false, i1 false}
!148 = !{!"../net/sched/sch_taprio.c", i32 2043, i32 30}
!149 = distinct !{null, !150, !"__already_done", i1 false, i1 false}
!150 = !{!"../net/sched/sch_taprio.c", i32 1103, i32 2}
!151 = !{ptr @.str.43, !150, !"<string literal>", i1 false, i1 false}
!152 = !{!"sp"}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 1, !"min_enum_size", i32 4}
!155 = !{i32 8, !"branch-target-enforcement", i32 0}
!156 = !{i32 8, !"sign-return-address", i32 0}
!157 = !{i32 8, !"sign-return-address-all", i32 0}
!158 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!162 = !{i64 2148270823, i64 2148270855, i64 2148270884, i64 2148270918, i64 2148270949, i64 2148270972}
!163 = !{!"branch_weights", i32 1, i32 2000}
!164 = !{!"branch_weights", i32 2000, i32 1}
!165 = !{i64 2148358824}
!166 = !{i64 2148273288, i64 2148273320, i64 2148273349, i64 2148273383, i64 2148273414, i64 2148273437}
!167 = !{i64 2149524950}
!168 = !{!"auto-init"}
!169 = !{i64 2149488535}
!170 = !{i64 2149488801}
!171 = !{i64 1249130, i64 1249157, i64 1249179, i64 1249207}
!172 = !{i64 1249538, i64 1249565, i64 1249598, i64 1249619, i64 1249646, i64 1249672}
!173 = !{i64 2158986502}
!174 = !{i64 2158833439}
!175 = !{i64 2158899889}
!176 = !{i64 2148357745}
!177 = !{i64 2148272478, i64 2148272510, i64 2148272539, i64 2148272573, i64 2148272604, i64 2148272627}
!178 = !{i64 2148357974}
!179 = !{i64 2150005338}
!180 = !{i64 2150010270}
!181 = !{i64 2150031982}
!182 = !{i64 2150036874}
!183 = !{i64 2150113331}
!184 = !{i64 2150113656}
!185 = !{i64 2149076581, i64 2149076586, i64 2149076599, i64 2149076643, i64 2149076677, i64 2149076698}
