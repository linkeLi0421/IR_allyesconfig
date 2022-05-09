; ModuleID = '/llk/IR_all_yes/net/sched/sch_netem.c_pt.bc'
source_filename = "../net/sched/sch_netem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Qdisc_class_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.48 }
%union.anon.48 = type { i32 }
%struct.vlan_hdr = type { i16, i16 }
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
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.disttable = type { i32, [0 x i16] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.clgstate = type { i8, i32, i32, i32, i32, i32 }
%struct.nlattr = type { i16, i16 }
%struct.netem_sched_data = type { %struct.rb_root, ptr, ptr, ptr, %struct.qdisc_watchdog, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.reciprocal_value, i32, %struct.crndstate, %struct.crndstate, %struct.crndstate, %struct.crndstate, %struct.crndstate, ptr, i32, i32, i32, %struct.clgstate, %struct.tc_netem_slot, %struct.slotstate, ptr }
%struct.rb_root = type { ptr }
%struct.qdisc_watchdog = type { i64, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.crndstate = type { i32, i32 }
%struct.tc_netem_slot = type { i64, i64, i32, i32, i64, i64 }
%struct.slotstate = type { i64, i32, i32 }
%struct.tc_netem_qopt = type { i32, i32, i32, i32, i32, i32 }
%struct.tc_netem_corr = type { i32, i32, i32 }
%struct.tc_netem_reorder = type { i32, i32 }
%struct.tc_netem_corrupt = type { i32, i32 }
%struct.tc_netem_rate = type { i32, i32, i32, i32 }
%struct.qdisc_walker = type { i32, i32, i32, ptr }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.tc_netem_gimodel = type { i32, i32, i32, i32, i32 }
%struct.tc_netem_gemodel = type { i32, i32, i32, i32 }

@netem_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr @netem_class_ops, [16 x i8] c"netem\00\00\00\00\00\00\00\00\00\00\00", i32 304, i32 0, ptr @netem_enqueue, ptr @netem_dequeue, ptr @qdisc_peek_dequeued, ptr @netem_init, ptr @netem_reset, ptr @netem_destroy, ptr @netem_change, ptr null, ptr null, ptr null, ptr @netem_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_netem__511_1299_netem_module_init6 = internal global ptr @netem_module_init, section ".initcall6.init", align 4
@__exitcall_netem_module_exit = internal global ptr @netem_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file512 = internal constant [35 x i8] c"sch_netem.file=net/sched/sch_netem\00", section ".modinfo", align 1
@__UNIQUE_ID_license513 = internal constant [22 x i8] c"sch_netem.license=GPL\00", section ".modinfo", align 1
@netem_class_ops = internal constant { %struct.Qdisc_class_ops, [40 x i8] } { %struct.Qdisc_class_ops { i32 0, ptr null, ptr @netem_graft, ptr @netem_leaf, ptr null, ptr @netem_find, ptr null, ptr null, ptr @netem_walk, ptr null, ptr null, ptr null, ptr @netem_dump_class, ptr null }, [40 x i8] zeroinitializer }, align 32
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@qdisc_root_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@qdisc_calculate_pkt_len.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@netem_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1073, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016netem: change failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"netem_init\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/sched/sch_netem.c\00", [42 x i8] zeroinitializer }, align 32
@netem_init._entry_ptr = internal global ptr @netem_init._entry, section ".printk_index", align 4
@__qdisc_reset_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@netem_policy = internal constant { [14 x %struct.nla_policy], [48 x i8] } { [14 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 12, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 15, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 15, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 40, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer], [48 x i8] zeroinitializer }, align 32
@parse_attr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.8, i32 940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016netem: invalid attributes len %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"parse_attr\00", [21 x i8] zeroinitializer }, align 32
@parse_attr._entry_ptr = internal global ptr @parse_attr._entry, section ".printk_index", align 4
@get_loss_clg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.8, i32 880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016netem: incorrect gi model size\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_loss_clg\00", [19 x i8] zeroinitializer }, align 32
@get_loss_clg._entry_ptr = internal global ptr @get_loss_clg._entry, section ".printk_index", align 4
@get_loss_clg._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.8, i32 899, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016netem: incorrect ge model size\0A\00", [62 x i8] zeroinitializer }, align 32
@get_loss_clg._entry_ptr.15 = internal global ptr @get_loss_clg._entry.13, section ".printk_index", align 4
@get_loss_clg._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.8, i32 913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016netem: unknown loss type %u\0A\00", [33 x i8] zeroinitializer }, align 32
@get_loss_clg._entry_ptr.18 = internal global ptr @get_loss_clg._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@netem_module_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.8, i32 1292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016netem: version 1.3\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"netem_module_init\00", [46 x i8] zeroinitializer }, align 32
@netem_module_init._entry_ptr = internal global ptr @netem_module_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 14, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"netem_class_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 1266, i32 37 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 596, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 598, i32 8 }
@___asan_gen_.42 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 565, i32 9 }
@___asan_gen_.45 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 271, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 1073, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"netem_policy\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 921, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 940, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 880, i32 5 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 899, i32 5 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 913, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 991, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [25 x i8] c"../net/sched/sch_netem.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 1292, i32 2 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_file512, ptr @__UNIQUE_ID_license513, ptr @__exitcall_netem_module_exit, ptr @__initcall__kmod_sch_netem__511_1299_netem_module_init6, ptr @get_loss_clg._entry, ptr @get_loss_clg._entry.13, ptr @get_loss_clg._entry.16, ptr @get_loss_clg._entry_ptr, ptr @get_loss_clg._entry_ptr.15, ptr @get_loss_clg._entry_ptr.18, ptr @netem_init._entry, ptr @netem_init._entry_ptr, ptr @netem_module_exit, ptr @netem_module_init._entry, ptr @netem_module_init._entry_ptr, ptr @parse_attr._entry, ptr @parse_attr._entry_ptr, ptr @netem_class_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @netem_policy, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netem_class_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netem_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netem_policy to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_attr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_loss_clg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_loss_clg._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_loss_clg._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netem_module_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @netem_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @netem_qdisc_ops) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @netem_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #16
  %call1 = tail call i32 @register_qdisc(ptr noundef nonnull @netem_qdisc_ops) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netem_enqueue(ptr noundef %skb, ptr noundef %sch, ptr noundef %to_free) #2 align 64 {
entry:
  %vhdr.i.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i.i, align 4
  %prev = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 1
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %prev, align 4
  %duplicate = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 52
  %3 = ptrtoint ptr %duplicate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %duplicate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dup_cor = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 3
  %tobool.not.i = icmp eq ptr %dup_cor, null
  br i1 %tobool.not.i, label %land.lhs.true.if.then.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.if.then.i_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true
  %rho1.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 6
  %5 = ptrtoint ptr %rho1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rho1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %land.lhs.true.if.then.i_crit_edge
  %call.i = tail call i32 @prandom_u32() #13
  br label %get_crandom.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i = tail call i32 @prandom_u32() #13
  %conv.i = zext i32 %call2.i to i64
  %7 = ptrtoint ptr %rho1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rho1.i, align 4
  %conv4.i = zext i32 %8 to i64
  %add.i = add nuw nsw i64 %conv4.i, 1
  %sub.i = xor i64 %conv4.i, 4294967295
  %mul.i = mul nuw i64 %sub.i, %conv.i
  %9 = ptrtoint ptr %dup_cor to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dup_cor, align 4
  %conv5.i = zext i32 %10 to i64
  %mul6.i = mul nuw i64 %add.i, %conv5.i
  %add7.i = add i64 %mul.i, %mul6.i
  %shr.i = lshr i64 %add7.i, 32
  %conv8.i = trunc i64 %shr.i to i32
  store i32 %conv8.i, ptr %dup_cor, align 4
  br label %get_crandom.exit

get_crandom.exit:                                 ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %conv8.i, %if.end.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %retval.0.i)
  %cmp.not = icmp ult i32 %4, %retval.0.i
  %spec.select = select i1 %cmp.not, i32 1, i32 2
  br label %if.end

if.end:                                           ; preds = %get_crandom.exit, %entry.if.end_crit_edge
  %count.0 = phi i32 [ 1, %entry.if.end_crit_edge ], [ %spec.select, %get_crandom.exit ]
  %loss_model.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %loss_model.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %loss_model.i, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %if.end.if.end15_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb4.i
  ]

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

sw.bb.i:                                          ; preds = %if.end
  %loss.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %14 = ptrtoint ptr %loss.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %loss.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i334 = icmp eq i32 %15, 0
  br i1 %tobool.not.i334, label %sw.bb.i.if.end15_crit_edge, label %land.rhs.i

sw.bb.i.if.end15_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.rhs.i:                                       ; preds = %sw.bb.i
  %rho1.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %rho1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rho1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i = icmp eq i32 %17, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = tail call i32 @prandom_u32() #13
  br label %get_crandom.exit.i

if.end.i.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  %loss_cor.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 1, i32 1
  %call2.i.i = tail call i32 @prandom_u32() #13
  %conv.i.i = zext i32 %call2.i.i to i64
  %18 = ptrtoint ptr %rho1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rho1.i.i, align 4
  %conv4.i.i = zext i32 %19 to i64
  %add.i.i = add nuw nsw i64 %conv4.i.i, 1
  %sub.i.i = xor i64 %conv4.i.i, 4294967295
  %mul.i.i = mul nuw i64 %sub.i.i, %conv.i.i
  %20 = ptrtoint ptr %loss_cor.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %loss_cor.i, align 4
  %conv5.i.i = zext i32 %21 to i64
  %mul6.i.i = mul nuw i64 %add.i.i, %conv5.i.i
  %add7.i.i = add i64 %mul.i.i, %mul6.i.i
  %shr.i.i = lshr i64 %add7.i.i, 32
  %conv8.i.i = trunc i64 %shr.i.i to i32
  store i32 %conv8.i.i, ptr %loss_cor.i, align 4
  br label %get_crandom.exit.i

get_crandom.exit.i:                               ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %conv8.i.i, %if.end.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %retval.0.i.i)
  %cmp.i335.not = icmp ult i32 %15, %retval.0.i.i
  br i1 %cmp.i335.not, label %get_crandom.exit.i.if.end15_crit_edge, label %get_crandom.exit.i.if.then5_crit_edge

get_crandom.exit.i.if.then5_crit_edge:            ; preds = %get_crandom.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5

get_crandom.exit.i.if.end15_crit_edge:            ; preds = %get_crandom.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

sw.bb2.i:                                         ; preds = %if.end
  %clg1.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 4
  %call.i11.i = tail call i32 @prandom_u32() #13
  %22 = ptrtoint ptr %clg1.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %clg1.i.i, align 4
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %23, label %sw.bb2.i.if.end15_crit_edge [
    i8 1, label %sw.bb.i.i
    i8 2, label %loss_event.exit
    i8 4, label %sw.bb30.i.i
    i8 3, label %sw.bb2.i.loss_event.exit.thread477_crit_edge
  ]

sw.bb2.i.loss_event.exit.thread477_crit_edge:     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %loss_event.exit.thread477

sw.bb2.i.if.end15_crit_edge:                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

sw.bb.i.i:                                        ; preds = %sw.bb2.i
  %a4.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 4, i32 3
  %25 = ptrtoint ptr %a4.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %a4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i11.i, i32 %26)
  %cmp.i12.i = icmp ult i32 %call.i11.i, %26
  br i1 %cmp.i12.i, label %sw.bb.i.i.loss_event.exit.thread482_crit_edge, label %if.else.i.i

sw.bb.i.i.loss_event.exit.thread482_crit_edge:    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %loss_event.exit.thread482

if.else.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %call.i11.i)
  %cmp5.i.i = icmp ult i32 %26, %call.i11.i
  br i1 %cmp5.i.i, label %land.lhs.true.i.i, label %if.else.i.i.if.else12.i.i_crit_edge

if.else.i.i.if.else12.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else12.i.i

land.lhs.true.i.i:                                ; preds = %if.else.i.i
  %a1.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %a1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %a1.i.i, align 4
  %add.i13.i = add i32 %28, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i11.i, i32 %add.i13.i)
  %cmp8.i.i = icmp ult i32 %call.i11.i, %add.i13.i
  br i1 %cmp8.i.i, label %land.lhs.true.i.i.loss_event.exit.thread482_crit_edge, label %land.lhs.true.i.i.if.else12.i.i_crit_edge

land.lhs.true.i.i.if.else12.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else12.i.i

land.lhs.true.i.i.loss_event.exit.thread482_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %loss_event.exit.thread482

if.else12.i.i:                                    ; preds = %land.lhs.true.i.i.if.else12.i.i_crit_edge, %if.else.i.i.if.else12.i.i_crit_edge
  %a113.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %a113.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %a113.i.i, align 4
  %add15.i.i = add i32 %30, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i.i, i32 %call.i11.i)
  %cmp16.i.i = icmp ult i32 %add15.i.i, %call.i11.i
  br i1 %cmp16.i.i, label %if.else12.i.i.loss_event.exit.thread477_crit_edge, label %if.else12.i.i.if.end15_crit_edge

if.else12.i.i.if.end15_crit_edge:                 ; preds = %if.else12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.else12.i.i.loss_event.exit.thread477_crit_edge: ; preds = %if.else12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %loss_event.exit.thread477

sw.bb30.i.i:                                      ; preds = %sw.bb2.i
  %a3.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 4, i32 2
  %31 = ptrtoint ptr %a3.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %a3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i11.i, i32 %32)
  %cmp31.i.i = icmp ult i32 %call.i11.i, %32
  br i1 %cmp31.i.i, label %sw.bb30.i.i.loss_event.exit.thread477_crit_edge, label %if.else35.i.i

sw.bb30.i.i.loss_event.exit.thread477_crit_edge:  ; preds = %sw.bb30.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %loss_event.exit.thread477

if.else35.i.i:                                    ; preds = %sw.bb30.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %call.i11.i)
  %cmp37.i.i = icmp ult i32 %32, %call.i11.i
  br i1 %cmp37.i.i, label %land.lhs.true39.i.i, label %if.else35.i.i.if.else46.i.i_crit_edge

if.else35.i.i.if.else46.i.i_crit_edge:            ; preds = %if.else35.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else46.i.i

land.lhs.true39.i.i:                              ; preds = %if.else35.i.i
  %a2.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 4, i32 1, i32 1
  %33 = ptrtoint ptr %a2.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %a2.i.i, align 4
  %add41.i.i = add i32 %34, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i11.i, i32 %add41.i.i)
  %cmp42.i.i = icmp ult i32 %call.i11.i, %add41.i.i
  br i1 %cmp42.i.i, label %land.lhs.true39.i.i.loss_event.exit.thread477_crit_edge, label %land.lhs.true39.i.i.if.else46.i.i_crit_edge

land.lhs.true39.i.i.if.else46.i.i_crit_edge:      ; preds = %land.lhs.true39.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else46.i.i

land.lhs.true39.i.i.loss_event.exit.thread477_crit_edge: ; preds = %land.lhs.true39.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %loss_event.exit.thread477

if.else46.i.i:                                    ; preds = %land.lhs.true39.i.i.if.else46.i.i_crit_edge, %if.else35.i.i.if.else46.i.i_crit_edge
  %a247.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 4, i32 1, i32 1
  %35 = ptrtoint ptr %a247.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %a247.i.i, align 4
  %add49.i.i = add i32 %36, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %add49.i.i, i32 %call.i11.i)
  %cmp50.i.i = icmp ult i32 %add49.i.i, %call.i11.i
  br i1 %cmp50.i.i, label %if.else46.i.i.loss_event.exit.thread482_crit_edge, label %if.else46.i.i.if.end15_crit_edge

if.else46.i.i.if.end15_crit_edge:                 ; preds = %if.else46.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.else46.i.i.loss_event.exit.thread482_crit_edge: ; preds = %if.else46.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %loss_event.exit.thread482

sw.bb4.i:                                         ; preds = %if.end
  %clg1.i15.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 4
  %37 = ptrtoint ptr %clg1.i15.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %clg1.i15.i, align 4
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %38, label %sw.bb4.i.if.end15_crit_edge [
    i8 1, label %sw.bb.i19.i
    i8 2, label %sw.bb9.i.i
  ]

sw.bb4.i.if.end15_crit_edge:                      ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

sw.bb.i19.i:                                      ; preds = %sw.bb4.i
  %call.i16.i = tail call i32 @prandom_u32() #13
  %a1.i17.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %a1.i17.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %a1.i17.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i16.i, i32 %41)
  %cmp.i18.i = icmp ult i32 %call.i16.i, %41
  br i1 %cmp.i18.i, label %if.then.i20.i, label %sw.bb.i19.i.if.end.i23.i_crit_edge

sw.bb.i19.i.if.end.i23.i_crit_edge:               ; preds = %sw.bb.i19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i23.i

if.then.i20.i:                                    ; preds = %sw.bb.i19.i
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %clg1.i15.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %clg1.i15.i, align 4
  br label %if.end.i23.i

if.end.i23.i:                                     ; preds = %if.then.i20.i, %sw.bb.i19.i.if.end.i23.i_crit_edge
  %call4.i.i = tail call i32 @prandom_u32() #13
  %a4.i21.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 4, i32 3
  %43 = ptrtoint ptr %a4.i21.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %a4.i21.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i.i, i32 %44)
  %cmp5.i22.i = icmp ult i32 %call4.i.i, %44
  br i1 %cmp5.i22.i, label %if.end.i23.i.if.then5_crit_edge, label %if.end.i23.i.if.end15_crit_edge

if.end.i23.i.if.end15_crit_edge:                  ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end.i23.i.if.then5_crit_edge:                  ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5

sw.bb9.i.i:                                       ; preds = %sw.bb4.i
  %call10.i.i = tail call i32 @prandom_u32() #13
  %a2.i24.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 4, i32 1, i32 1
  %45 = ptrtoint ptr %a2.i24.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %a2.i24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call10.i.i, i32 %46)
  %cmp11.i.i = icmp ult i32 %call10.i.i, %46
  br i1 %cmp11.i.i, label %if.then13.i.i, label %sw.bb9.i.i.if.end15.i.i_crit_edge

sw.bb9.i.i.if.end15.i.i_crit_edge:                ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i.i

if.then13.i.i:                                    ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %clg1.i15.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %clg1.i15.i, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then13.i.i, %sw.bb9.i.i.if.end15.i.i_crit_edge
  %call16.i.i = tail call i32 @prandom_u32() #13
  %a3.i25.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 4, i32 2
  %48 = ptrtoint ptr %a3.i25.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %a3.i25.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call16.i.i, i32 %49)
  %cmp17.i.i = icmp ugt i32 %call16.i.i, %49
  br i1 %cmp17.i.i, label %if.end15.i.i.if.then5_crit_edge, label %if.end15.i.i.if.end15_crit_edge

if.end15.i.i.if.end15_crit_edge:                  ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end15.i.i.if.then5_crit_edge:                  ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5

loss_event.exit.thread477:                        ; preds = %land.lhs.true39.i.i.loss_event.exit.thread477_crit_edge, %sw.bb30.i.i.loss_event.exit.thread477_crit_edge, %if.else12.i.i.loss_event.exit.thread477_crit_edge, %sw.bb2.i.loss_event.exit.thread477_crit_edge
  %.sink.i.i.ph = phi i8 [ 1, %sw.bb2.i.loss_event.exit.thread477_crit_edge ], [ 1, %land.lhs.true39.i.i.loss_event.exit.thread477_crit_edge ], [ 2, %sw.bb30.i.i.loss_event.exit.thread477_crit_edge ], [ 1, %if.else12.i.i.loss_event.exit.thread477_crit_edge ]
  %50 = ptrtoint ptr %clg1.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %.sink.i.i.ph, ptr %clg1.i.i, align 4
  br label %if.end15

loss_event.exit.thread482:                        ; preds = %if.else46.i.i.loss_event.exit.thread482_crit_edge, %land.lhs.true.i.i.loss_event.exit.thread482_crit_edge, %sw.bb.i.i.loss_event.exit.thread482_crit_edge
  %.sink.i.i.ph481 = phi i8 [ 4, %if.else46.i.i.loss_event.exit.thread482_crit_edge ], [ 4, %land.lhs.true.i.i.loss_event.exit.thread482_crit_edge ], [ 3, %sw.bb.i.i.loss_event.exit.thread482_crit_edge ]
  %51 = ptrtoint ptr %clg1.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %.sink.i.i.ph481, ptr %clg1.i.i, align 4
  br label %if.then5

loss_event.exit:                                  ; preds = %sw.bb2.i
  %a5.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 4, i32 6
  %52 = ptrtoint ptr %a5.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %a5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i11.i, i32 %53)
  %cmp23.i.i = icmp ult i32 %call.i11.i, %53
  %..i.i = select i1 %cmp23.i.i, i8 4, i8 2
  %54 = ptrtoint ptr %clg1.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %..i.i, ptr %clg1.i.i, align 4
  br i1 %cmp23.i.i, label %loss_event.exit.if.then5_crit_edge, label %loss_event.exit.if.end15_crit_edge

loss_event.exit.if.end15_crit_edge:               ; preds = %loss_event.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

loss_event.exit.if.then5_crit_edge:               ; preds = %loss_event.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5

if.then5:                                         ; preds = %loss_event.exit.if.then5_crit_edge, %loss_event.exit.thread482, %if.end15.i.i.if.then5_crit_edge, %if.end.i23.i.if.then5_crit_edge, %get_crandom.exit.i.if.then5_crit_edge
  %ecn = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 36
  %55 = ptrtoint ptr %ecn to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ecn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool6.not = icmp eq i32 %56, 0
  br i1 %tobool6.not, label %if.then5.if.end12_crit_edge, label %land.lhs.true7

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

land.lhs.true7:                                   ; preds = %if.then5
  %protocol.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %57 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %protocol.i.i.i, align 8
  %mac_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %59 = ptrtoint ptr %mac_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %mac_len.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %60 to i32
  %61 = zext i16 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %58, label %land.lhs.true7.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %land.lhs.true7.if.then.i.i.i.i_crit_edge
    i16 -32512, label %land.lhs.true7.if.then.i.i.i.i_crit_edge546
  ]

land.lhs.true7.if.then.i.i.i.i_crit_edge546:      ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i.i

land.lhs.true7.if.then.i.i.i.i_crit_edge:         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i.i

land.lhs.true7.skb_protocol.exit.i_crit_edge:     ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_protocol.exit.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true7.if.then.i.i.i.i_crit_edge, %land.lhs.true7.if.then.i.i.i.i_crit_edge546
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool.not.i.i.i.i = icmp eq i16 %60, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge, label %if.then1.i.i.i.i

if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i.i.i.i

if.then1.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %60)
  %cmp.i.i.i.i = icmp ult i16 %60, 4
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end25.i.i.i.i, !prof !72

do.end.i.i.i.i:                                   ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 598, i32 noundef 9, ptr noundef null) #13
  br label %if.end12

if.end25.i.i.i.i:                                 ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -4
  br label %if.end26.i.i.i.i

if.end26.i.i.i.i:                                 ; preds = %if.end25.i.i.i.i, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge
  %vlan_depth.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.end25.i.i.i.i ], [ 14, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge ]
  %62 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i.i

do.body27.i.i.i.i:                                ; preds = %do.body27.backedge.i.i.i.i, %if.end26.i.i.i.i
  %vlan_depth.1.i.i.i.i = phi i32 [ %vlan_depth.0.i.i.i.i, %if.end26.i.i.i.i ], [ %add.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  %parse_depth.0.i.i.i.i = phi i32 [ 8, %if.end26.i.i.i.i ], [ %dec.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #13
  %63 = ptrtoint ptr %vhdr.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 -1, ptr %vhdr.i.i.i.i, align 2, !annotation !73
  %64 = ptrtoint ptr %62 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 -1, ptr %62, align 2, !annotation !73
  %65 = ptrtoint ptr %len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len.i.i.i.i.i.i, align 4
  %67 = ptrtoint ptr %data_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %data_len.i.i.i.i.i.i, align 8
  %69 = add i32 %vlan_depth.1.i.i.i.i, %68
  %sub.i1.i.i.i.i.i = sub i32 %66, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, !prof !74

if.then.i.i.i.i.i.i:                              ; preds = %do.body27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %71, i32 %vlan_depth.1.i.i.i.i
  br label %skb_header_pointer.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.body27.i.i.i.i
  br i1 %tobool2.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.i

if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i.i.i.i

lor.lhs.false.i.i.i.i.i.i:                        ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i.i, ptr noundef nonnull %vhdr.i.i.i.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %cmp3.i.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i.i, !prof !72
  br label %skb_header_pointer.exit.i.i.i.i

skb_header_pointer.exit.i.i.i.i:                  ; preds = %lor.lhs.false.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i.i ]
  %tobool29.not.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i.i, null
  %dec.i.i.i.i = add nsw i32 %parse_depth.0.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %tobool30.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  %72 = select i1 %tobool29.not.i.i.i.i, i1 true, i1 %tobool30.not.i.i.i.i, !prof !72
  br i1 %72, label %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %do.cond42.i.i.i.i, !prof !72

skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i.i.i.i

cleanup.thread.i.i.i.i:                           ; preds = %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #13
  br label %if.end12

do.cond42.i.i.i.i:                                ; preds = %skb_header_pointer.exit.i.i.i.i
  %h_vlan_encapsulated_proto.i.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i, i32 0, i32 1
  %73 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #13
  %75 = zext i16 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.25)
  switch i16 %74, label %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge547
  ]

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge547: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge:  ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_protocol.exit.i

do.body27.backedge.i.i.i.i:                       ; preds = %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge, %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge547
  %add.i.i.i.i = add nsw i32 %vlan_depth.1.i.i.i.i, 4
  br label %do.body27.i.i.i.i

skb_protocol.exit.i:                              ; preds = %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge, %land.lhs.true7.skb_protocol.exit.i_crit_edge
  %retval.2.i.i.i.i = phi i16 [ %58, %land.lhs.true7.skb_protocol.exit.i_crit_edge ], [ %74, %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge ]
  %76 = zext i16 %retval.2.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %retval.2.i.i.i.i, label %skb_protocol.exit.i.if.end12_crit_edge [
    i16 2048, label %sw.bb.i338
    i16 -31011, label %sw.bb6.i
  ]

skb_protocol.exit.i.if.end12_crit_edge:           ; preds = %skb_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

sw.bb.i338:                                       ; preds = %skb_protocol.exit.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %77 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %79 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i337 = zext i16 %80 to i32
  %add.ptr.i.i = getelementptr i8, ptr %78, i32 %conv.i.i337
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 20
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %81 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tail.i.i, align 8
  %cmp.not.i = icmp ugt ptr %add.ptr.i, %82
  br i1 %cmp.not.i, label %sw.bb.i338.if.end12_crit_edge, label %if.then.i339

sw.bb.i338.if.end12_crit_edge:                    ; preds = %sw.bb.i338
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then.i339:                                     ; preds = %sw.bb.i338
  %tos.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %83 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %tos.i.i, align 1
  %85 = add i8 %84, 1
  %86 = and i8 %85, 3
  %87 = and i8 %85, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i.i = icmp eq i8 %87, 0
  br i1 %tobool.not.i.i, label %INET_ECN_set_ce.exit, label %if.end.i.i342

if.end.i.i342:                                    ; preds = %if.then.i339
  call void @__sanitizer_cov_trace_pc() #15
  %conv4.i.i341 = zext i8 %86 to i16
  %add5.i.i = add nuw nsw i16 %conv4.i.i341, -5
  %check.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 7
  %88 = ptrtoint ptr %check.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %check.i.i, align 2
  %add.i.i.i = add i16 %89, %add5.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i, i16 %add5.i.i)
  %cmp.i.i.i = icmp ult i16 %add.i.i.i, %add5.i.i
  %conv6.i.i.i = zext i1 %cmp.i.i.i to i16
  %add7.i.i.i = add i16 %add.i.i.i, %conv6.i.i.i
  %90 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %add7.i.i.i, ptr %check.i.i, align 2
  %91 = or i8 %84, 3
  %92 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %tos.i.i, align 1
  br label %if.then10

sw.bb6.i:                                         ; preds = %skb_protocol.exit.i
  %head.i23.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %93 = ptrtoint ptr %head.i23.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %head.i23.i, align 8
  %network_header.i24.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %95 = ptrtoint ptr %network_header.i24.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %network_header.i24.i, align 4
  %conv.i25.i = zext i16 %96 to i32
  %add.ptr.i26.i = getelementptr i8, ptr %94, i32 %conv.i25.i
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i26.i, i32 40
  %tail.i27.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %97 = ptrtoint ptr %tail.i27.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tail.i27.i, align 8
  %cmp10.not.i = icmp ugt ptr %add.ptr8.i, %98
  br i1 %cmp10.not.i, label %sw.bb6.i.if.end12_crit_edge, label %if.then12.i

sw.bb6.i.if.end12_crit_edge:                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then12.i:                                      ; preds = %sw.bb6.i
  %99 = ptrtoint ptr %add.ptr.i26.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %add.ptr.i26.i, align 2
  %101 = and i16 %100, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %cmp.i14.not.i.i = icmp eq i16 %101, 0
  br i1 %cmp.i14.not.i.i, label %if.then12.i.if.end12_crit_edge, label %if.end.i32.i

if.then12.i.if.end12_crit_edge:                   ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.end.i32.i:                                     ; preds = %if.then12.i
  %102 = ptrtoint ptr %add.ptr.i26.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %add.ptr.i26.i, align 4
  %or.i.i = or i32 %103, 3145728
  store i32 %or.i.i, ptr %add.ptr.i26.i, align 4
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %104 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %105 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %105)
  %cmp.i.i343 = icmp eq i16 %105, 1024
  br i1 %cmp.i.i343, label %if.then3.i.i, label %if.end.i32.i.if.then10_crit_edge

if.end.i32.i.if.then10_crit_edge:                 ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

if.then3.i.i:                                     ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #15
  %106 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 8
  %neg.i.i.i = xor i32 %103, -1
  %add.i.i.i33.i = add i32 %108, %neg.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i33.i, i32 %neg.i.i.i)
  %cmp.i.i.i34.i = icmp ult i32 %add.i.i.i33.i, %neg.i.i.i
  %conv.i.i.i35.i = zext i1 %cmp.i.i.i34.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i33.i, %or.i.i
  %add.i.i36.i = add i32 %add1.i.i.i.i, %conv.i.i.i35.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i36.i, i32 %or.i.i)
  %cmp.i.i37.i = icmp ult i32 %add.i.i36.i, %or.i.i
  %conv.i.i38.i = zext i1 %cmp.i.i37.i to i32
  %add1.i.i.i = add i32 %add.i.i36.i, %conv.i.i38.i
  %109 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %add1.i.i.i, ptr %106, align 8
  br label %if.then10

INET_ECN_set_ce.exit:                             ; preds = %if.then.i339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool2.not.i.i.not = icmp eq i8 %86, 0
  br i1 %tobool2.not.i.i.not, label %INET_ECN_set_ce.exit.if.then10_crit_edge, label %INET_ECN_set_ce.exit.if.end12_crit_edge

INET_ECN_set_ce.exit.if.end12_crit_edge:          ; preds = %INET_ECN_set_ce.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

INET_ECN_set_ce.exit.if.then10_crit_edge:         ; preds = %INET_ECN_set_ce.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

if.then10:                                        ; preds = %INET_ECN_set_ce.exit.if.then10_crit_edge, %if.then3.i.i, %if.end.i32.i.if.then10_crit_edge, %if.end.i.i342
  %drops.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %110 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %drops.i.i, align 4
  %inc.i.i = add i32 %111, 1
  store i32 %inc.i.i, ptr %drops.i.i, align 4
  br label %if.end15

if.end12:                                         ; preds = %INET_ECN_set_ce.exit.if.end12_crit_edge, %if.then12.i.if.end12_crit_edge, %sw.bb6.i.if.end12_crit_edge, %sw.bb.i338.if.end12_crit_edge, %skb_protocol.exit.i.if.end12_crit_edge, %cleanup.thread.i.i.i.i, %do.end.i.i.i.i, %if.then5.if.end12_crit_edge
  %dec = add nsw i32 %count.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp13 = icmp eq i32 %dec, 0
  br i1 %cmp13, label %if.then14, label %if.end12.if.end15_crit_edge

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %drops.i.i345 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %112 = ptrtoint ptr %drops.i.i345 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %drops.i.i345, align 4
  %inc.i.i346 = add i32 %113, 1
  store i32 %inc.i.i346, ptr %drops.i.i345, align 4
  %114 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %to_free, align 4
  %116 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %115, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end12.if.end15_crit_edge, %if.then10, %loss_event.exit.if.end15_crit_edge, %loss_event.exit.thread477, %if.end15.i.i.if.end15_crit_edge, %if.end.i23.i.if.end15_crit_edge, %sw.bb4.i.if.end15_crit_edge, %if.else46.i.i.if.end15_crit_edge, %if.else12.i.i.if.end15_crit_edge, %sw.bb2.i.if.end15_crit_edge, %get_crandom.exit.i.if.end15_crit_edge, %sw.bb.i.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %count.1493 = phi i32 [ %dec, %if.end12.if.end15_crit_edge ], [ %count.0, %if.then10 ], [ %count.0, %loss_event.exit.if.end15_crit_edge ], [ %count.0, %get_crandom.exit.i.if.end15_crit_edge ], [ %count.0, %loss_event.exit.thread477 ], [ %count.0, %sw.bb.i.if.end15_crit_edge ], [ %count.0, %if.end.if.end15_crit_edge ], [ %count.0, %if.else46.i.i.if.end15_crit_edge ], [ %count.0, %if.else12.i.i.if.end15_crit_edge ], [ %count.0, %sw.bb2.i.if.end15_crit_edge ], [ %count.0, %if.end15.i.i.if.end15_crit_edge ], [ %count.0, %if.end.i23.i.if.end15_crit_edge ], [ %count.0, %sw.bb4.i.if.end15_crit_edge ]
  %latency = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %117 = ptrtoint ptr %latency to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %latency, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %118)
  %tobool16.not = icmp eq i64 %118, 0
  br i1 %tobool16.not, label %lor.lhs.false, label %if.end15.if.then20_crit_edge

if.end15.if.then20_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.end15
  %jitter = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %119 = ptrtoint ptr %jitter to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %jitter, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %120)
  %tobool17.not = icmp eq i64 %120, 0
  br i1 %tobool17.not, label %lor.lhs.false18, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %rate = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16
  %121 = ptrtoint ptr %rate to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %rate, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %122)
  %tobool19.not = icmp eq i64 %122, 0
  br i1 %tobool19.not, label %lor.lhs.false18.if.end21_crit_edge, label %lor.lhs.false18.if.then20_crit_edge

lor.lhs.false18.if.then20_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20

lor.lhs.false18.if.end21_crit_edge:               ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then20:                                        ; preds = %lor.lhs.false18.if.then20_crit_edge, %lor.lhs.false.if.then20_crit_edge, %if.end15.if.then20_crit_edge
  call void @skb_orphan_partial(ptr noundef %skb) #13
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %lor.lhs.false18.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.1493)
  %cmp22 = icmp sgt i32 %count.1493, 1
  br i1 %cmp22, label %land.lhs.true23, label %if.end21.if.end32_crit_edge

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

land.lhs.true23:                                  ; preds = %if.end21
  %call24 = call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #13
  %cmp25.not = icmp eq ptr %call24, null
  br i1 %cmp25.not, label %land.lhs.true23.if.end32_crit_edge, label %if.then26

land.lhs.true23.if.end32_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then26:                                        ; preds = %land.lhs.true23
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %123 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev_queue.i, align 8
  %qdisc1.i = getelementptr inbounds %struct.netdev_queue, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %qdisc1.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile ptr, ptr %qdisc1.i, align 8
  %call.i347 = call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i347)
  %tobool.not.i348 = icmp eq i32 %call.i347, 0
  br i1 %tobool.not.i348, label %land.lhs.true.i, label %if.then26.qdisc_root_bh.exit_crit_edge

if.then26.qdisc_root_bh.exit_crit_edge:           ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %qdisc_root_bh.exit

land.lhs.true.i:                                  ; preds = %if.then26
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.qdisc_root_bh.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.qdisc_root_bh.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qdisc_root_bh.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @qdisc_root_bh.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.qdisc_root_bh.exit_crit_edge, label %if.then.i349

land.lhs.true5.i.qdisc_root_bh.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qdisc_root_bh.exit

if.then.i349:                                     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @qdisc_root_bh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 565, ptr noundef nonnull @.str.3) #13
  br label %qdisc_root_bh.exit

qdisc_root_bh.exit:                               ; preds = %if.then.i349, %land.lhs.true5.i.qdisc_root_bh.exit_crit_edge, %land.lhs.true.i.qdisc_root_bh.exit_crit_edge, %if.then26.qdisc_root_bh.exit_crit_edge
  %127 = ptrtoint ptr %duplicate to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %duplicate, align 4
  store i32 0, ptr %duplicate, align 4
  %129 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %126, align 128
  %call30 = call i32 %130(ptr noundef nonnull %call24, ptr noundef %126, ptr noundef %to_free) #13
  %131 = ptrtoint ptr %duplicate to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %128, ptr %duplicate, align 4
  br label %if.end32

if.end32:                                         ; preds = %qdisc_root_bh.exit, %land.lhs.true23.if.end32_crit_edge, %if.end21.if.end32_crit_edge
  %rc_drop.0 = phi i32 [ 0, %qdisc_root_bh.exit ], [ 1, %land.lhs.true23.if.end32_crit_edge ], [ 1, %if.end21.if.end32_crit_edge ]
  %corrupt = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 60
  %132 = ptrtoint ptr %corrupt to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %corrupt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool33.not = icmp eq i32 %133, 0
  br i1 %tobool33.not, label %if.end32.if.end68_crit_edge, label %land.lhs.true34

if.end32.if.end68_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

land.lhs.true34:                                  ; preds = %if.end32
  %corrupt_cor = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 1
  %tobool.not.i350 = icmp eq ptr %corrupt_cor, null
  br i1 %tobool.not.i350, label %land.lhs.true34.if.then.i355_crit_edge, label %lor.lhs.false.i353

land.lhs.true34.if.then.i355_crit_edge:           ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i355

lor.lhs.false.i353:                               ; preds = %land.lhs.true34
  %rho1.i351 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 2
  %134 = ptrtoint ptr %rho1.i351 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %rho1.i351, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp.i352 = icmp eq i32 %135, 0
  br i1 %cmp.i352, label %lor.lhs.false.i353.if.then.i355_crit_edge, label %if.end.i367

lor.lhs.false.i353.if.then.i355_crit_edge:        ; preds = %lor.lhs.false.i353
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i355

if.then.i355:                                     ; preds = %lor.lhs.false.i353.if.then.i355_crit_edge, %land.lhs.true34.if.then.i355_crit_edge
  %call.i354 = call i32 @prandom_u32() #13
  br label %get_crandom.exit369

if.end.i367:                                      ; preds = %lor.lhs.false.i353
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i356 = call i32 @prandom_u32() #13
  %conv.i357 = zext i32 %call2.i356 to i64
  %136 = ptrtoint ptr %rho1.i351 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %rho1.i351, align 4
  %conv4.i358 = zext i32 %137 to i64
  %add.i359 = add nuw nsw i64 %conv4.i358, 1
  %sub.i360 = xor i64 %conv4.i358, 4294967295
  %mul.i361 = mul nuw i64 %sub.i360, %conv.i357
  %138 = ptrtoint ptr %corrupt_cor to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %corrupt_cor, align 4
  %conv5.i362 = zext i32 %139 to i64
  %mul6.i363 = mul nuw i64 %add.i359, %conv5.i362
  %add7.i364 = add i64 %mul.i361, %mul6.i363
  %shr.i365 = lshr i64 %add7.i364, 32
  %conv8.i366 = trunc i64 %shr.i365 to i32
  store i32 %conv8.i366, ptr %corrupt_cor, align 4
  br label %get_crandom.exit369

get_crandom.exit369:                              ; preds = %if.end.i367, %if.then.i355
  %retval.0.i368 = phi i32 [ %call.i354, %if.then.i355 ], [ %conv8.i366, %if.end.i367 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %retval.0.i368)
  %cmp37.not = icmp ult i32 %133, %retval.0.i368
  br i1 %cmp37.not, label %get_crandom.exit369.if.end68_crit_edge, label %if.then38

get_crandom.exit369.if.end68_crit_edge:           ; preds = %get_crandom.exit369
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

if.then38:                                        ; preds = %get_crandom.exit369
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %140 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %141, i32 0, i32 4
  %142 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %143)
  %tobool.i.not = icmp eq i16 %143, 0
  br i1 %tobool.i.not, label %if.then38.if.end46_crit_edge, label %if.then40

if.then38.if.end46_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then40:                                        ; preds = %if.then38
  %call.i370 = call i64 @netif_skb_features(ptr noundef %skb) #13
  %and.i = and i64 %call.i370, -34359672833
  %call.i.i371 = call ptr @__skb_gso_segment(ptr noundef %skb, i64 noundef %and.i, i1 noundef zeroext true) #13
  %tobool.not.i.i372 = icmp eq ptr %call.i.i371, null
  %cmp.i.i373 = icmp ugt ptr %call.i.i371, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i372, %cmp.i.i373
  br i1 %spec.select.i.i, label %netem_segment.exit.thread, label %if.end44

netem_segment.exit.thread:                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  %144 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %to_free, align 4
  %146 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %145, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %147 = ptrtoint ptr %drops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %drops.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %148, 1
  store i32 %inc.i.i.i.i, ptr %drops.i.i.i.i, align 4
  br label %cleanup

if.end44:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  call void @consume_skb(ptr noundef %skb) #13
  %149 = ptrtoint ptr %call.i.i371 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %call.i.i371, align 8
  store ptr null, ptr %call.i.i371, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i.i371, i32 0, i32 6
  %151 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %len, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i371, i32 0, i32 3
  %153 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %cb.i, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.end44, %if.then38.if.end46_crit_edge
  %segs.0 = phi ptr [ %150, %if.end44 ], [ null, %if.then38.if.end46_crit_edge ]
  %skb.addr.0 = phi ptr [ %call.i.i371, %if.end44 ], [ %skb, %if.then38.if.end46_crit_edge ]
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 12
  %154 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %bf.load.i.i377 = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i377)
  %tobool.not.i.i378 = icmp sgt i8 %bf.load.i.i377, -1
  br i1 %tobool.not.i.i378, label %if.end46.skb_unshare.exit_crit_edge, label %skb_cloned.exit.i

if.end46.skb_unshare.exit_crit_edge:              ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_unshare.exit

skb_cloned.exit.i:                                ; preds = %if.end46
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 17
  %155 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %156, i32 0, i32 10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #13
  %157 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %158, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.skb_unshare.exit_crit_edge, label %if.then6.i

skb_cloned.exit.i.skb_unshare.exit_crit_edge:     ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_unshare.exit

if.then6.i:                                       ; preds = %skb_cloned.exit.i
  %call7.i = call ptr @skb_copy(ptr noundef %skb.addr.0, i32 noundef 2592) #13
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_unshare.exit.thread, label %skb_unshare.exit.thread500, !prof !72

skb_unshare.exit.thread500:                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @consume_skb(ptr noundef %skb.addr.0) #13
  br label %if.end53

skb_unshare.exit.thread:                          ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #13
  br label %finish_segs.thread530

skb_unshare.exit:                                 ; preds = %skb_cloned.exit.i.skb_unshare.exit_crit_edge, %if.end46.skb_unshare.exit_crit_edge
  %tobool48.not = icmp eq ptr %skb.addr.0, null
  br i1 %tobool48.not, label %skb_unshare.exit.finish_segs.thread530_crit_edge, label %skb_unshare.exit.if.end53_crit_edge, !prof !72

skb_unshare.exit.if.end53_crit_edge:              ; preds = %skb_unshare.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

skb_unshare.exit.finish_segs.thread530_crit_edge: ; preds = %skb_unshare.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %finish_segs.thread530

if.end53:                                         ; preds = %skb_unshare.exit.if.end53_crit_edge, %skb_unshare.exit.thread500
  %skb.addr.0.i503 = phi ptr [ %call7.i, %skb_unshare.exit.thread500 ], [ %skb.addr.0, %skb_unshare.exit.if.end53_crit_edge ]
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i503, i32 0, i32 15
  %159 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %159)
  %bf.load = load i16, ptr %ip_summed, align 8
  %160 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %160)
  %cmp54 = icmp eq i16 %160, 1536
  br i1 %cmp54, label %land.lhs.true56, label %if.end53.if.end61_crit_edge

if.end53.if.end61_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

land.lhs.true56:                                  ; preds = %if.end53
  %call57 = call i32 @skb_checksum_help(ptr noundef nonnull %skb.addr.0.i503) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %land.lhs.true56.if.end61_crit_edge, label %finish_segs.thread

land.lhs.true56.if.end61_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.end61:                                         ; preds = %land.lhs.true56.if.end61_crit_edge, %if.end53.if.end61_crit_edge
  %call62 = call i32 @prandom_u32() #13
  %rem = and i32 %call62, 7
  %shl = shl nuw nsw i32 1, %rem
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i503, i32 0, i32 19
  %161 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %data, align 4
  %call63 = call i32 @prandom_u32() #13
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i503, i32 0, i32 6
  %163 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i503, i32 0, i32 7
  %165 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %data_len.i, align 8
  %sub.i381 = sub i32 %164, %166
  %rem65 = urem i32 %call63, %sub.i381
  %arrayidx = getelementptr i8, ptr %162, i32 %rem65
  %167 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx, align 1
  %169 = trunc i32 %shl to i8
  %conv67 = xor i8 %168, %169
  store i8 %conv67, ptr %arrayidx, align 1
  br label %if.end68

if.end68:                                         ; preds = %if.end61, %get_crandom.exit369.if.end68_crit_edge, %if.end32.if.end68_crit_edge
  %segs.1 = phi ptr [ %segs.0, %if.end61 ], [ null, %get_crandom.exit369.if.end68_crit_edge ], [ null, %if.end32.if.end68_crit_edge ]
  %skb.addr.1 = phi ptr [ %skb.addr.0.i503, %if.end61 ], [ %skb, %get_crandom.exit369.if.end68_crit_edge ], [ %skb, %if.end32.if.end68_crit_edge ]
  %q69 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %170 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %qlen, align 8
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %172 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %171, i32 %173)
  %cmp70.not = icmp ult i32 %171, %173
  br i1 %cmp70.not, label %if.end81, label %if.then78, !prof !74

if.then78:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  %174 = ptrtoint ptr %skb.addr.1 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %segs.1, ptr %skb.addr.1, align 8
  %prev.i.i = getelementptr inbounds %struct.anon.0, ptr %skb.addr.1, i32 0, i32 1
  %175 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %prev.i.i, align 4
  %tobool.not.i.i382 = icmp eq ptr %176, null
  %177 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %to_free, align 4
  %skb..i.i = select i1 %tobool.not.i.i382, ptr %skb.addr.1, ptr %176
  %179 = ptrtoint ptr %skb..i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %178, ptr %skb..i.i, align 8
  store ptr %skb.addr.1, ptr %to_free, align 4
  %drops.i.i.i383 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %180 = ptrtoint ptr %drops.i.i.i383 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %drops.i.i.i383, align 4
  %inc.i.i.i384 = add i32 %181, 1
  store i32 %inc.i.i.i384, ptr %drops.i.i.i383, align 4
  br label %cleanup

if.end81:                                         ; preds = %if.end68
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 3
  %182 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %cb.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %184 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %backlog.i, align 4
  %add.i385 = add i32 %185, %183
  store i32 %add.i385, ptr %backlog.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 3, i32 8
  %gap = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 48
  %186 = ptrtoint ptr %gap to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %gap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %cmp83 = icmp eq i32 %187, 0
  br i1 %cmp83, label %if.end81.if.then93_crit_edge, label %lor.lhs.false85

if.end81.if.then93_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then93

lor.lhs.false85:                                  ; preds = %if.end81
  %counter = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 44
  %188 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %counter, align 4
  %sub = add i32 %187, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %189, i32 %sub)
  %cmp87 = icmp ult i32 %189, %sub
  br i1 %cmp87, label %lor.lhs.false85.if.then93_crit_edge, label %lor.lhs.false89

lor.lhs.false85.if.then93_crit_edge:              ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then93

lor.lhs.false89:                                  ; preds = %lor.lhs.false85
  %reorder = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 56
  %190 = ptrtoint ptr %reorder to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %reorder, align 8
  %reorder_cor = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 7
  %tobool.not.i386 = icmp eq ptr %reorder_cor, null
  br i1 %tobool.not.i386, label %lor.lhs.false89.if.then.i391_crit_edge, label %lor.lhs.false.i389

lor.lhs.false89.if.then.i391_crit_edge:           ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i391

lor.lhs.false.i389:                               ; preds = %lor.lhs.false89
  %rho1.i387 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17
  %192 = ptrtoint ptr %rho1.i387 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %rho1.i387, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %cmp.i388 = icmp eq i32 %193, 0
  br i1 %cmp.i388, label %lor.lhs.false.i389.if.then.i391_crit_edge, label %if.end.i403

lor.lhs.false.i389.if.then.i391_crit_edge:        ; preds = %lor.lhs.false.i389
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i391

if.then.i391:                                     ; preds = %lor.lhs.false.i389.if.then.i391_crit_edge, %lor.lhs.false89.if.then.i391_crit_edge
  %call.i390 = call i32 @prandom_u32() #13
  br label %get_crandom.exit405

if.end.i403:                                      ; preds = %lor.lhs.false.i389
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i392 = call i32 @prandom_u32() #13
  %conv.i393 = zext i32 %call2.i392 to i64
  %194 = ptrtoint ptr %rho1.i387 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %rho1.i387, align 4
  %conv4.i394 = zext i32 %195 to i64
  %add.i395 = add nuw nsw i64 %conv4.i394, 1
  %sub.i396 = xor i64 %conv4.i394, 4294967295
  %mul.i397 = mul nuw i64 %sub.i396, %conv.i393
  %196 = ptrtoint ptr %reorder_cor to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %reorder_cor, align 4
  %conv5.i398 = zext i32 %197 to i64
  %mul6.i399 = mul nuw i64 %add.i395, %conv5.i398
  %add7.i400 = add i64 %mul.i397, %mul6.i399
  %shr.i401 = lshr i64 %add7.i400, 32
  %conv8.i402 = trunc i64 %shr.i401 to i32
  store i32 %conv8.i402, ptr %reorder_cor, align 4
  br label %get_crandom.exit405

get_crandom.exit405:                              ; preds = %if.end.i403, %if.then.i391
  %retval.0.i404 = phi i32 [ %call.i390, %if.then.i391 ], [ %conv8.i402, %if.end.i403 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %191, i32 %retval.0.i404)
  %cmp91 = icmp ult i32 %191, %retval.0.i404
  br i1 %cmp91, label %get_crandom.exit405.if.then93_crit_edge, label %if.else160

get_crandom.exit405.if.then93_crit_edge:          ; preds = %get_crandom.exit405
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then93

if.then93:                                        ; preds = %get_crandom.exit405.if.then93_crit_edge, %lor.lhs.false85.if.then93_crit_edge, %if.end81.if.then93_crit_edge
  %198 = ptrtoint ptr %latency to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %latency, align 8
  %jitter95 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %200 = ptrtoint ptr %jitter95 to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %jitter95, align 8
  %conv96 = trunc i64 %201 to i32
  %delay_cor = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4
  %delay_dist = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3
  %202 = ptrtoint ptr %delay_dist to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %delay_dist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv96)
  %cmp.i406 = icmp eq i32 %conv96, 0
  br i1 %cmp.i406, label %if.then93.tabledist.exit_crit_edge, label %if.end.i408

if.then93.tabledist.exit_crit_edge:               ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #15
  br label %tabledist.exit

if.end.i408:                                      ; preds = %if.then93
  %tobool.not.i.i407 = icmp eq ptr %delay_cor, null
  br i1 %tobool.not.i.i407, label %if.end.i408.if.then.i.i412_crit_edge, label %lor.lhs.false.i.i

if.end.i408.if.then.i.i412_crit_edge:             ; preds = %if.end.i408
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i412

lor.lhs.false.i.i:                                ; preds = %if.end.i408
  %rho1.i.i409 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 1
  %204 = ptrtoint ptr %rho1.i.i409 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %rho1.i.i409, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %cmp.i.i410 = icmp eq i32 %205, 0
  br i1 %cmp.i.i410, label %lor.lhs.false.i.i.if.then.i.i412_crit_edge, label %if.end.i.i424

lor.lhs.false.i.i.if.then.i.i412_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i412

if.then.i.i412:                                   ; preds = %lor.lhs.false.i.i.if.then.i.i412_crit_edge, %if.end.i408.if.then.i.i412_crit_edge
  %call.i.i411 = call i32 @prandom_u32() #13
  br label %get_crandom.exit.i426

if.end.i.i424:                                    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i.i413 = call i32 @prandom_u32() #13
  %conv.i.i414 = zext i32 %call2.i.i413 to i64
  %206 = ptrtoint ptr %rho1.i.i409 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %rho1.i.i409, align 4
  %conv4.i.i415 = zext i32 %207 to i64
  %add.i.i416 = add nuw nsw i64 %conv4.i.i415, 1
  %sub.i.i417 = xor i64 %conv4.i.i415, 4294967295
  %mul.i.i418 = mul nuw i64 %sub.i.i417, %conv.i.i414
  %208 = ptrtoint ptr %delay_cor to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %delay_cor, align 4
  %conv5.i.i419 = zext i32 %209 to i64
  %mul6.i.i420 = mul nuw i64 %add.i.i416, %conv5.i.i419
  %add7.i.i421 = add i64 %mul.i.i418, %mul6.i.i420
  %shr.i.i422 = lshr i64 %add7.i.i421, 32
  %conv8.i.i423 = trunc i64 %shr.i.i422 to i32
  store i32 %conv8.i.i423, ptr %delay_cor, align 4
  br label %get_crandom.exit.i426

get_crandom.exit.i426:                            ; preds = %if.end.i.i424, %if.then.i.i412
  %retval.0.i.i425 = phi i32 [ %call.i.i411, %if.then.i.i412 ], [ %conv8.i.i423, %if.end.i.i424 ]
  %cmp1.i = icmp eq ptr %203, null
  br i1 %cmp1.i, label %if.then2.i, label %if.end4.i

if.then2.i:                                       ; preds = %get_crandom.exit.i426
  call void @__sanitizer_cov_trace_pc() #15
  %mul.i427 = shl i32 %conv96, 1
  %rem.i = urem i32 %retval.0.i.i425, %mul.i427
  %conv.i428 = zext i32 %rem.i to i64
  %conv3.i = sext i32 %conv96 to i64
  %add.i429 = sub i64 %199, %conv3.i
  %sub.i430 = add i64 %add.i429, %conv.i428
  br label %tabledist.exit

if.end4.i:                                        ; preds = %get_crandom.exit.i426
  call void @__sanitizer_cov_trace_pc() #15
  %210 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %203, align 4
  %rem5.i = urem i32 %retval.0.i.i425, %211
  %arrayidx.i = getelementptr %struct.disttable, ptr %203, i32 0, i32 1, i32 %rem5.i
  %212 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %arrayidx.i, align 2
  %conv6.i = sext i16 %213 to i32
  %conv96.frozen = freeze i32 %conv96
  %div16.i = sdiv i32 %conv96.frozen, 8192
  %214 = mul i32 %div16.i, 8192
  %rem7.i.decomposed = sub i32 %conv96.frozen, %214
  %mul8.i = mul nsw i32 %rem7.i.decomposed, %conv6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul8.i)
  %cmp1037.i = icmp slt i32 %mul8.i, 0
  %x.0.v.i = select i1 %cmp1037.i, i32 -4096, i32 4096
  %x.0.i = add nsw i32 %x.0.v.i, %mul8.i
  %div36.i = sdiv i32 %x.0.i, 8192
  %div.sext.i = sext i32 %div36.i to i64
  %mul17.i = mul i32 %div16.i, %conv6.i
  %conv18.i = sext i32 %mul17.i to i64
  %add19.i = add i64 %199, %conv18.i
  %add20.i = add i64 %add19.i, %div.sext.i
  br label %tabledist.exit

tabledist.exit:                                   ; preds = %if.end4.i, %if.then2.i, %if.then93.tabledist.exit_crit_edge
  %retval.0.i431 = phi i64 [ %sub.i430, %if.then2.i ], [ %add20.i, %if.end4.i ], [ %199, %if.then93.tabledist.exit_crit_edge ]
  %call.i432 = call i64 @ktime_get() #13
  %rate99 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16
  %215 = ptrtoint ptr %rate99 to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %rate99, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %216)
  %tobool100.not = icmp eq i64 %216, 0
  br i1 %tobool100.not, label %tabledist.exit.if.end155_crit_edge, label %if.then101

tabledist.exit.if.end155_crit_edge:               ; preds = %tabledist.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end155

if.then101:                                       ; preds = %tabledist.exit
  %tail = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %217 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %tail, align 4
  %tobool103.not = icmp eq ptr %218, null
  %data.i433 = getelementptr inbounds %struct.sk_buff, ptr %218, i32 0, i32 3, i32 8
  %spec.select520 = select i1 %tobool103.not, ptr null, ptr %data.i433
  %219 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %privdata.i, align 8
  %tobool109.not = icmp eq ptr %220, null
  br i1 %tobool109.not, label %if.then101.if.end123_crit_edge, label %if.then110

if.then101.if.end123_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end123

if.then110:                                       ; preds = %if.then101
  %call112 = call ptr @rb_last(ptr noundef %privdata.i) #13
  %data.i434 = getelementptr inbounds %struct.sk_buff, ptr %call112, i32 0, i32 3, i32 8
  %tobool116.not = icmp eq ptr %spec.select520, null
  br i1 %tobool116.not, label %if.then110.if.then121_crit_edge, label %lor.lhs.false117

if.then110.if.then121_crit_edge:                  ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then121

lor.lhs.false117:                                 ; preds = %if.then110
  %221 = ptrtoint ptr %data.i434 to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %data.i434, align 8
  %223 = ptrtoint ptr %spec.select520 to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %spec.select520, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %222, i64 %224)
  %cmp119 = icmp ugt i64 %222, %224
  br i1 %cmp119, label %lor.lhs.false117.if.then121_crit_edge, label %lor.lhs.false117.if.end123_crit_edge

lor.lhs.false117.if.end123_crit_edge:             ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end123

lor.lhs.false117.if.then121_crit_edge:            ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then121

if.then121:                                       ; preds = %lor.lhs.false117.if.then121_crit_edge, %if.then110.if.then121_crit_edge
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %lor.lhs.false117.if.end123_crit_edge, %if.then101.if.end123_crit_edge
  %last.2 = phi ptr [ %spec.select520, %if.then101.if.end123_crit_edge ], [ %data.i434, %if.then121 ], [ %data.i433, %lor.lhs.false117.if.end123_crit_edge ]
  %t_tail = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %225 = ptrtoint ptr %t_tail to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %t_tail, align 8
  %tobool124.not = icmp eq ptr %226, null
  br i1 %tobool124.not, label %if.end123.if.end137_crit_edge, label %if.then125

if.end123.if.end137_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end137

if.then125:                                       ; preds = %if.end123
  %data.i435 = getelementptr inbounds %struct.sk_buff, ptr %226, i32 0, i32 3, i32 8
  %tobool129.not = icmp eq ptr %last.2, null
  br i1 %tobool129.not, label %if.then125.if.end137_crit_edge, label %lor.lhs.false130

if.then125.if.end137_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end137

lor.lhs.false130:                                 ; preds = %if.then125
  %227 = ptrtoint ptr %data.i435 to i32
  call void @__asan_load8_noabort(i32 %227)
  %228 = load i64, ptr %data.i435, align 8
  %229 = ptrtoint ptr %last.2 to i32
  call void @__asan_load8_noabort(i32 %229)
  %230 = load i64, ptr %last.2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %228, i64 %230)
  %cmp133 = icmp ugt i64 %228, %230
  br i1 %cmp133, label %lor.lhs.false130.if.end137_crit_edge, label %lor.lhs.false130.if.then139_crit_edge

lor.lhs.false130.if.then139_crit_edge:            ; preds = %lor.lhs.false130
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then139

lor.lhs.false130.if.end137_crit_edge:             ; preds = %lor.lhs.false130
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end137

if.end137:                                        ; preds = %lor.lhs.false130.if.end137_crit_edge, %if.then125.if.end137_crit_edge, %if.end123.if.end137_crit_edge
  %last.4 = phi ptr [ %last.2, %if.end123.if.end137_crit_edge ], [ %data.i435, %lor.lhs.false130.if.end137_crit_edge ], [ %data.i435, %if.then125.if.end137_crit_edge ]
  %tobool138.not = icmp eq ptr %last.4, null
  br i1 %tobool138.not, label %if.end137.if.end151_crit_edge, label %if.end137.if.then139_crit_edge

if.end137.if.then139_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then139

if.end137.if.end151_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end151

if.then139:                                       ; preds = %if.end137.if.then139_crit_edge, %lor.lhs.false130.if.then139_crit_edge
  %last.4506 = phi ptr [ %last.4, %if.end137.if.then139_crit_edge ], [ %last.2, %lor.lhs.false130.if.then139_crit_edge ]
  %231 = ptrtoint ptr %last.4506 to i32
  call void @__asan_load8_noabort(i32 %231)
  %232 = load i64, ptr %last.4506, align 8
  %sub141.neg = add i64 %call.i432, %retval.0.i431
  %sub142 = sub i64 %sub141.neg, %232
  %233 = call i64 @llvm.smax.i64(i64 %sub142, i64 0)
  br label %if.end151

if.end151:                                        ; preds = %if.then139, %if.end137.if.end151_crit_edge
  %now.0 = phi i64 [ %232, %if.then139 ], [ %call.i432, %if.end137.if.end151_crit_edge ]
  %delay.0 = phi i64 [ %233, %if.then139 ], [ %retval.0.i431, %if.end137.if.end151_crit_edge ]
  %234 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %cb.i.i.i, align 4
  %conv153 = zext i32 %235 to i64
  %packet_overhead.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 1
  %236 = ptrtoint ptr %packet_overhead.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %packet_overhead.i, align 8
  %conv.i437 = sext i32 %237 to i64
  %add.i438 = add nsw i64 %conv.i437, %conv153
  %cell_size.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2
  %238 = ptrtoint ptr %cell_size.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %cell_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool.not.i439 = icmp eq i32 %239, 0
  br i1 %tobool.not.i439, label %if.end151.packet_time_ns.exit_crit_edge, label %if.then.i451

if.end151.packet_time_ns.exit_crit_edge:          ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #15
  br label %packet_time_ns.exit

if.then.i451:                                     ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #15
  %conv1.i = trunc i64 %add.i438 to i32
  %cell_size_reciprocal.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 1
  %240 = ptrtoint ptr %cell_size_reciprocal.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %.unpack.i = load i32, ptr %cell_size_reciprocal.i, align 8
  %.elt24.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 2
  %241 = ptrtoint ptr %.elt24.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %.unpack25.i = load i32, ptr %.elt24.i, align 4
  %R.sroa.2.4.extract.shift.i.i = lshr i32 %.unpack25.i, 24
  %R.sroa.4.4.extract.shift.i.i = lshr i32 %.unpack25.i, 16
  %conv.i.i440 = and i64 %add.i438, 4294967295
  %conv1.i.i = zext i32 %.unpack.i to i64
  %mul.i.i441 = mul nuw i64 %conv.i.i440, %conv1.i.i
  %shr.i.i442 = lshr i64 %mul.i.i441, 32
  %conv2.i.i = trunc i64 %shr.i.i442 to i32
  %sub.i.i443 = sub i32 %conv1.i, %conv2.i.i
  %shr4.i.i = lshr i32 %sub.i.i443, %R.sroa.2.4.extract.shift.i.i
  %add.i.i444 = add i32 %shr4.i.i, %conv2.i.i
  %conv5.i.i445 = and i32 %R.sroa.4.4.extract.shift.i.i, 255
  %shr6.i.i = lshr i32 %add.i.i444, %conv5.i.i445
  %mul.i446 = mul i32 %shr6.i.i, %239
  %conv3.i447 = zext i32 %mul.i446 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i438, i64 %conv3.i447)
  %cmp.i448 = icmp ugt i64 %add.i438, %conv3.i447
  %inc.i = zext i1 %cmp.i448 to i32
  %spec.select.i = add i32 %shr6.i.i, %inc.i
  %cell_overhead.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 3
  %242 = ptrtoint ptr %cell_overhead.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %cell_overhead.i, align 8
  %add7.i449 = add i32 %243, %239
  %mul8.i450 = mul i32 %spec.select.i, %add7.i449
  %conv9.i = zext i32 %mul8.i450 to i64
  br label %packet_time_ns.exit

packet_time_ns.exit:                              ; preds = %if.then.i451, %if.end151.packet_time_ns.exit_crit_edge
  %len.addr.0.i = phi i64 [ %conv9.i, %if.then.i451 ], [ %add.i438, %if.end151.packet_time_ns.exit_crit_edge ]
  %mul11.i = mul nsw i64 %len.addr.0.i, 1000000000
  %244 = ptrtoint ptr %rate99 to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %rate99, align 8
  %call12.i = call i64 @div64_u64(i64 noundef %mul11.i, i64 noundef %245) #13
  %add = add i64 %call12.i, %delay.0
  br label %if.end155

if.end155:                                        ; preds = %packet_time_ns.exit, %tabledist.exit.if.end155_crit_edge
  %now.1 = phi i64 [ %now.0, %packet_time_ns.exit ], [ %call.i432, %tabledist.exit.if.end155_crit_edge ]
  %delay.1 = phi i64 [ %add, %packet_time_ns.exit ], [ %retval.0.i431, %tabledist.exit.if.end155_crit_edge ]
  %add156 = add i64 %delay.1, %now.1
  %246 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %246)
  store i64 %add156, ptr %data.i, align 8
  %counter158 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 44
  %247 = ptrtoint ptr %counter158 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %counter158, align 4
  %inc159 = add i32 %248, 1
  store i32 %inc159, ptr %counter158, align 4
  %249 = load i64, ptr %data.i, align 8
  %t_tail.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %250 = ptrtoint ptr %t_tail.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %t_tail.i, align 8
  %tobool.not.i452 = icmp eq ptr %251, null
  br i1 %tobool.not.i452, label %if.else.i455, label %lor.lhs.false.i454

lor.lhs.false.i454:                               ; preds = %if.end155
  %data.i46.i = getelementptr inbounds %struct.sk_buff, ptr %251, i32 0, i32 3, i32 8
  %252 = ptrtoint ptr %data.i46.i to i32
  call void @__asan_load8_noabort(i32 %252)
  %253 = load i64, ptr %data.i46.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %249, i64 %253)
  %cmp.not.i453 = icmp ult i64 %249, %253
  br i1 %cmp.not.i453, label %while.cond.preheader.i, label %if.then7.i

while.cond.preheader.i:                           ; preds = %lor.lhs.false.i454
  %254 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %privdata.i, align 4
  %tobool11.not48.i = icmp eq ptr %255, null
  br i1 %tobool11.not48.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.cond.preheader.i.cond.end.i_crit_edge

while.cond.preheader.i.cond.end.i_crit_edge:      ; preds = %while.cond.preheader.i
  br label %cond.end.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

if.then7.i:                                       ; preds = %lor.lhs.false.i454
  call void @__sanitizer_cov_trace_pc() #15
  %256 = ptrtoint ptr %251 to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %skb.addr.1, ptr %251, align 8
  br label %if.end.i456

if.else.i455:                                     ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #15
  %t_head.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %257 = ptrtoint ptr %t_head.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %skb.addr.1, ptr %t_head.i, align 4
  br label %if.end.i456

if.end.i456:                                      ; preds = %if.else.i455, %if.then7.i
  %258 = ptrtoint ptr %t_tail.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %skb.addr.1, ptr %t_tail.i, align 8
  br label %tfifo_enqueue.exit

cond.end.i:                                       ; preds = %cond.end.i.cond.end.i_crit_edge, %while.cond.preheader.i.cond.end.i_crit_edge
  %259 = phi ptr [ %263, %cond.end.i.cond.end.i_crit_edge ], [ %255, %while.cond.preheader.i.cond.end.i_crit_edge ]
  %data.i47.i = getelementptr inbounds %struct.sk_buff, ptr %259, i32 0, i32 3, i32 8
  %260 = ptrtoint ptr %data.i47.i to i32
  call void @__asan_load8_noabort(i32 %260)
  %261 = load i64, ptr %data.i47.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %249, i64 %261)
  %cmp16.not.i = icmp ult i64 %249, %261
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %259, i32 0, i32 1
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %259, i32 0, i32 2
  %p.1.i = select i1 %cmp16.not.i, ptr %rb_left.i, ptr %rb_right.i
  %262 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %p.1.i, align 4
  %tobool11.not.i = icmp eq ptr %263, null
  br i1 %tobool11.not.i, label %while.cond.while.end_crit_edge.i, label %cond.end.i.cond.end.i_crit_edge

cond.end.i.cond.end.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

while.cond.while.end_crit_edge.i:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.le.i = ptrtoint ptr %259 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %while.cond.preheader.i.while.end.i_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %while.cond.preheader.i.while.end.i_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %privdata.i, %while.cond.preheader.i.while.end.i_crit_edge ]
  %264 = ptrtoint ptr %skb.addr.1 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %parent.0.lcssa.i, ptr %skb.addr.1, align 4
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %skb.addr.1, i32 0, i32 1
  %265 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %skb.addr.1, i32 0, i32 2
  %266 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr null, ptr %rb_left.i.i, align 4
  %267 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %skb.addr.1, ptr %p.0.lcssa.i, align 4
  call void @rb_insert_color(ptr noundef %skb.addr.1, ptr noundef %privdata.i) #13
  br label %tfifo_enqueue.exit

tfifo_enqueue.exit:                               ; preds = %while.end.i, %if.end.i456
  %268 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %qlen, align 8
  %inc.i457 = add i32 %269, 1
  store i32 %inc.i457, ptr %qlen, align 8
  br label %finish_segs

if.else160:                                       ; preds = %get_crandom.exit405
  %call.i458 = call i64 @ktime_get() #13
  %270 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %270)
  store i64 %call.i458, ptr %data.i, align 8
  %271 = ptrtoint ptr %counter to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 0, ptr %counter, align 4
  %272 = ptrtoint ptr %q69 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %q69, align 4
  %274 = ptrtoint ptr %skb.addr.1 to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr %273, ptr %skb.addr.1, align 8
  %275 = load ptr, ptr %q69, align 4
  %tobool.not.i459 = icmp eq ptr %275, null
  br i1 %tobool.not.i459, label %if.then.i460, label %if.else160.__qdisc_enqueue_head.exit_crit_edge

if.else160.__qdisc_enqueue_head.exit_crit_edge:   ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #15
  br label %__qdisc_enqueue_head.exit

if.then.i460:                                     ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #15
  %tail.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %276 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr %skb.addr.1, ptr %tail.i, align 4
  br label %__qdisc_enqueue_head.exit

__qdisc_enqueue_head.exit:                        ; preds = %if.then.i460, %if.else160.__qdisc_enqueue_head.exit_crit_edge
  %277 = ptrtoint ptr %q69 to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %skb.addr.1, ptr %q69, align 4
  %278 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %qlen, align 4
  %inc.i462 = add i32 %279, 1
  store i32 %inc.i462, ptr %qlen, align 4
  %requeues = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 3
  %280 = ptrtoint ptr %requeues to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %requeues, align 4
  %inc165 = add i32 %281, 1
  store i32 %inc165, ptr %requeues, align 4
  br label %finish_segs

finish_segs:                                      ; preds = %__qdisc_enqueue_head.exit, %tfifo_enqueue.exit
  %tobool167.not = icmp eq ptr %segs.1, null
  %tobool202.not = icmp eq ptr %skb.addr.1, null
  br i1 %tobool167.not, label %if.else201, label %if.then168

finish_segs.thread530:                            ; preds = %skb_unshare.exit.finish_segs.thread530_crit_edge, %skb_unshare.exit.thread
  %drops.i.i379 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %282 = ptrtoint ptr %drops.i.i379 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %drops.i.i379, align 4
  %inc.i.i380 = add i32 %283, 1
  store i32 %inc.i.i380, ptr %drops.i.i379, align 4
  %tobool167.not533 = icmp eq ptr %segs.0, null
  br i1 %tobool167.not533, label %finish_segs.thread530.cleanup_crit_edge, label %finish_segs.thread530.while.body.lr.ph_crit_edge

finish_segs.thread530.while.body.lr.ph_crit_edge: ; preds = %finish_segs.thread530
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.lr.ph

finish_segs.thread530.cleanup_crit_edge:          ; preds = %finish_segs.thread530
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

finish_segs.thread:                               ; preds = %land.lhs.true56
  %284 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %to_free, align 4
  %286 = ptrtoint ptr %skb.addr.0.i503 to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr %285, ptr %skb.addr.0.i503, align 8
  store ptr %skb.addr.0.i503, ptr %to_free, align 4
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %287 = ptrtoint ptr %drops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %drops.i.i.i, align 4
  %inc.i.i.i = add i32 %288, 1
  store i32 %inc.i.i.i, ptr %drops.i.i.i, align 4
  %tobool167.not509 = icmp eq ptr %segs.0, null
  br i1 %tobool167.not509, label %finish_segs.thread.cleanup_crit_edge, label %finish_segs.thread.while.body.lr.ph_crit_edge

finish_segs.thread.while.body.lr.ph_crit_edge:    ; preds = %finish_segs.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.lr.ph

finish_segs.thread.cleanup_crit_edge:             ; preds = %finish_segs.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then168:                                       ; preds = %finish_segs
  br i1 %tobool202.not, label %if.then168.while.body.lr.ph_crit_edge, label %cond.true171

if.then168.while.body.lr.ph_crit_edge:            ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.lr.ph

cond.true171:                                     ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #15
  %len172 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 6
  %289 = ptrtoint ptr %len172 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %len172, align 4
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %cond.true171, %if.then168.while.body.lr.ph_crit_edge, %finish_segs.thread.while.body.lr.ph_crit_edge, %finish_segs.thread530.while.body.lr.ph_crit_edge
  %tobool170.not517 = phi i32 [ 1, %cond.true171 ], [ 0, %if.then168.while.body.lr.ph_crit_edge ], [ 0, %finish_segs.thread.while.body.lr.ph_crit_edge ], [ 0, %finish_segs.thread530.while.body.lr.ph_crit_edge ]
  %segs.2510516 = phi ptr [ %segs.1, %cond.true171 ], [ %segs.1, %if.then168.while.body.lr.ph_crit_edge ], [ %segs.0, %finish_segs.thread.while.body.lr.ph_crit_edge ], [ %segs.0, %finish_segs.thread530.while.body.lr.ph_crit_edge ]
  %cond175 = phi i32 [ %290, %cond.true171 ], [ 0, %if.then168.while.body.lr.ph_crit_edge ], [ 0, %finish_segs.thread.while.body.lr.ph_crit_edge ], [ 0, %finish_segs.thread530.while.body.lr.ph_crit_edge ]
  %stab1.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 5
  %drops.i.i470 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end196.while.body_crit_edge, %while.body.lr.ph
  %nb.0527 = phi i32 [ %tobool170.not517, %while.body.lr.ph ], [ %nb.1, %if.end196.while.body_crit_edge ]
  %len169.0526 = phi i32 [ %cond175, %while.body.lr.ph ], [ %len169.1, %if.end196.while.body_crit_edge ]
  %segs.3525 = phi ptr [ %segs.2510516, %while.body.lr.ph ], [ %292, %if.end196.while.body_crit_edge ]
  %291 = ptrtoint ptr %segs.3525 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %segs.3525, align 8
  store ptr null, ptr %segs.3525, align 8
  %len180 = getelementptr inbounds %struct.sk_buff, ptr %segs.3525, i32 0, i32 6
  %293 = ptrtoint ptr %len180 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %len180, align 4
  %cb.i464 = getelementptr inbounds %struct.sk_buff, ptr %segs.3525, i32 0, i32 3
  %295 = ptrtoint ptr %cb.i464 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %294, ptr %cb.i464, align 4
  %296 = ptrtoint ptr %stab1.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load volatile ptr, ptr %stab1.i.i, align 4
  %call.i.i465 = call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i465)
  %tobool.not.i.i466 = icmp eq i32 %call.i.i465, 0
  br i1 %tobool.not.i.i466, label %land.lhs.true.i.i467, label %while.body.do.end8.i.i_crit_edge

while.body.do.end8.i.i_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i.i

land.lhs.true.i.i467:                             ; preds = %while.body
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i467.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i467.do.end8.i.i_crit_edge:       ; preds = %land.lhs.true.i.i467
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i467
  %.b14.i.i = load i1, ptr @qdisc_calculate_pkt_len.__warned, align 1
  br i1 %.b14.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i468

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i.i

if.then.i.i468:                                   ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @qdisc_calculate_pkt_len.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 835, ptr noundef nonnull @.str.3) #13
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i468, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i467.do.end8.i.i_crit_edge, %while.body.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %297, null
  br i1 %tobool10.not.i.i, label %do.end8.i.i.qdisc_enqueue.exit_crit_edge, label %if.then11.i.i

do.end8.i.i.qdisc_enqueue.exit_crit_edge:         ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qdisc_enqueue.exit

if.then11.i.i:                                    ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__qdisc_calculate_pkt_len(ptr noundef nonnull %segs.3525, ptr noundef nonnull %297) #13
  br label %qdisc_enqueue.exit

qdisc_enqueue.exit:                               ; preds = %if.then11.i.i, %do.end8.i.i.qdisc_enqueue.exit_crit_edge
  %298 = ptrtoint ptr %sch to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %sch, align 128
  %call.i469 = call i32 %299(ptr noundef nonnull %segs.3525, ptr noundef %sch, ptr noundef %to_free) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i469)
  %cmp185.not = icmp eq i32 %call.i469, 0
  br i1 %cmp185.not, label %if.else193, label %if.then187

if.then187:                                       ; preds = %qdisc_enqueue.exit
  %and = and i32 %call.i469, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool188.not = icmp eq i32 %and, 0
  br i1 %tobool188.not, label %if.then191, label %if.then187.if.end196_crit_edge

if.then187.if.end196_crit_edge:                   ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end196

if.then191:                                       ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #15
  %300 = ptrtoint ptr %drops.i.i470 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %drops.i.i470, align 4
  %inc.i.i471 = add i32 %301, 1
  store i32 %inc.i.i471, ptr %drops.i.i470, align 4
  br label %if.end196

if.else193:                                       ; preds = %qdisc_enqueue.exit
  call void @__sanitizer_cov_trace_pc() #15
  %inc194 = add i32 %nb.0527, 1
  %add195 = add i32 %294, %len169.0526
  br label %if.end196

if.end196:                                        ; preds = %if.else193, %if.then191, %if.then187.if.end196_crit_edge
  %len169.1 = phi i32 [ %len169.0526, %if.then187.if.end196_crit_edge ], [ %len169.0526, %if.then191 ], [ %add195, %if.else193 ]
  %nb.1 = phi i32 [ %nb.0527, %if.then187.if.end196_crit_edge ], [ %nb.0527, %if.then191 ], [ %inc194, %if.else193 ]
  %tobool178.not = icmp eq ptr %292, null
  br i1 %tobool178.not, label %while.end, label %if.end196.while.body_crit_edge

if.end196.while.body_crit_edge:                   ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #15
  %sub198 = sub i32 1, %nb.1
  %sub199.neg = sub i32 %1, %len169.1
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef %sub198, i32 noundef %sub199.neg) #13
  br label %if.end205

if.else201:                                       ; preds = %finish_segs
  br i1 %tobool202.not, label %if.else201.cleanup_crit_edge, label %if.else201.if.end205_crit_edge

if.else201.if.end205_crit_edge:                   ; preds = %if.else201
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end205

if.else201.cleanup_crit_edge:                     ; preds = %if.else201
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end205:                                        ; preds = %if.else201.if.end205_crit_edge, %while.end
  br label %cleanup

cleanup:                                          ; preds = %if.end205, %if.else201.cleanup_crit_edge, %finish_segs.thread.cleanup_crit_edge, %finish_segs.thread530.cleanup_crit_edge, %if.then78, %netem_segment.exit.thread, %if.then14
  %retval.0 = phi i32 [ 131072, %if.then14 ], [ 0, %if.end205 ], [ %rc_drop.0, %if.then78 ], [ 1, %if.else201.cleanup_crit_edge ], [ %rc_drop.0, %netem_segment.exit.thread ], [ 1, %finish_segs.thread.cleanup_crit_edge ], [ 1, %finish_segs.thread530.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @netem_dequeue(ptr noundef %sch) #2 align 64 {
entry:
  %to_free = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %q1 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %0 = ptrtoint ptr %q1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q1, align 4
  %cmp.not.i218 = icmp eq ptr %1, null
  br i1 %cmp.not.i218, label %if.end.lr.ph, label %entry.if.then.i_crit_edge, !prof !72

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.end.lr.ph:                                     ; preds = %entry
  %t_head.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %slot = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1, i32 6
  %slot_dist.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19, i32 2
  %dist_delay.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1, i32 1
  %dist_jitter.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1, i32 2
  %slot_config.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18
  %max_delay.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 1
  %max_packets.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2
  %packets_left.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19
  %max_bytes.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1
  %bytes_left.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19, i32 1
  %t_tail.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %backlog.i153 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %drops.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  br label %if.end

if.then.i:                                        ; preds = %cleanup.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %.lcssa = phi ptr [ %1, %entry.if.then.i_crit_edge ], [ %179, %cleanup.if.then.i_crit_edge ]
  %2 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %.lcssa, align 8
  %4 = ptrtoint ptr %q1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %q1, align 4
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %5 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i, align 4
  %dec.i = add i32 %6, -1
  store i32 %dec.i, ptr %qlen.i, align 4
  %cmp4.i = icmp eq ptr %3, null
  br i1 %cmp4.i, label %if.then5.i, label %if.then.i.if.then_crit_edge

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %tail.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tail.i, align 4
  br label %if.then

if.then:                                          ; preds = %if.then5.i, %if.then.i.if.then_crit_edge
  %8 = ptrtoint ptr %.lcssa to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %.lcssa, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %.lcssa, i32 0, i32 3
  %9 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cb.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %11 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %backlog.i, align 4
  %sub.i = sub i32 %12, %10
  store i32 %sub.i, ptr %backlog.i, align 4
  br label %deliver

deliver:                                          ; preds = %if.then70.deliver_crit_edge, %if.then53.deliver_crit_edge, %if.end38.deliver_crit_edge, %if.then
  %skb.0 = phi ptr [ %.lcssa, %if.then ], [ %call75, %if.then70.deliver_crit_edge ], [ %call56, %if.then53.deliver_crit_edge ], [ %retval.0.i201, %if.end38.deliver_crit_edge ]
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3
  %13 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cb.i.i.i.i, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 17
  %15 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.i.not.i.i = icmp eq i16 %18, 0
  br i1 %tobool.i.not.i.i, label %deliver.cond.end.i.i_crit_edge, label %cond.true.i.i

deliver.cond.end.i.i_crit_edge:                   ; preds = %deliver
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %deliver
  call void @__sanitizer_cov_trace_pc() #15
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 5
  %19 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %gso_segs.i.i, align 2
  %conv4.i.i = zext i16 %20 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %deliver.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ 1, %deliver.cond.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %21 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i.i.i.i, label %cond.end.i.i.qdisc_bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i.i

cond.end.i.i.qdisc_bstats_update.exit_crit_edge:  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qdisc_bstats_update.exit

land.lhs.true.i.i.i.i.i:                          ; preds = %cond.end.i.i
  %22 = call i32 @llvm.read_register.i32(metadata !62) #13
  %and.i.i.i.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %25, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !75
  %26 = call i32 @llvm.read_register.i32(metadata !62) #13
  %and.i.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %31, ptrtoint (ptr @lockdep_recursion to i32)
  %32 = inttoptr i32 %add.i.i.i.i.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !76
  %35 = call i32 @llvm.read_register.i32(metadata !62) #13
  %and.i.i.i7.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i7.i.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool20.not.i.i.i.i.i = icmp eq i32 %34, 0
  br i1 %tobool20.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qdisc_bstats_update.exit

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %39 = call i32 @llvm.read_register.i32(metadata !62) #13
  %and.i.i.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i.i.i.i.i = icmp eq i32 %42, 0
  br i1 %cmp.i.i.i.i.i, label %land.rhs22.i.i.i.i.i, label %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qdisc_bstats_update.exit

land.rhs22.i.i.i.i.i:                             ; preds = %land.rhs.i.i.i.i.i
  %43 = call i32 @llvm.read_register.i32(metadata !62) #13
  %and.i.i.i9.i.i.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i9.i.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  %add.i11.i.i.i.i.i = add i32 %46, 1
  store volatile i32 %add.i11.i.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !77
  %47 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx46.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx46.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx46.i.i.i.i.i, align 4
  %add47.i.i.i.i.i = add i32 %50, ptrtoint (ptr @hardirqs_enabled to i32)
  %51 = inttoptr i32 %add47.i.i.i.i.i to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !78
  %54 = call i32 @llvm.read_register.i32(metadata !62) #13
  %and.i.i.i12.i.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i12.i.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  %sub.i14.i.i.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i14.i.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool54.not.i.i.i.i.i = icmp eq i32 %53, 0
  br i1 %tobool54.not.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i.i

land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qdisc_bstats_update.exit

land.rhs58.i.i.i.i.i:                             ; preds = %land.rhs22.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %if.then.i.i.i.i.i, !prof !74

land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qdisc_bstats_update.exit

if.then.i.i.i.i.i:                                ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 271, i32 noundef 9, ptr noundef null) #13
  br label %qdisc_bstats_update.exit

qdisc_bstats_update.exit:                         ; preds = %if.then.i.i.i.i.i, %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %cond.end.i.i.qdisc_bstats_update.exit_crit_edge
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i = zext i32 %14 to i64
  %syncp.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2
  %58 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %59, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !79
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2, i32 0, i32 1
  %60 = call ptr @llvm.returnaddress(i32 0) #13
  %61 = ptrtoint ptr %60 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %61) #13
  %62 = ptrtoint ptr %bstats.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %bstats.i, align 8
  %add.i.i.i.i = add i64 %63, %conv.i.i
  store i64 %add.i.i.i.i, ptr %bstats.i, align 8
  %packets2.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 1
  %conv.i7.i.i.i = zext i32 %cond.i.i to i64
  %64 = ptrtoint ptr %packets2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %packets2.i.i.i, align 8
  %add.i8.i.i.i = add i64 %65, %conv.i7.i.i.i
  store i64 %add.i8.i.i.i, ptr %packets2.i.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef %61) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !80
  %66 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %67, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  br label %cleanup80

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.end.lr.ph
  %call.i = call ptr @rb_first(ptr noundef %privdata.i) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  %68 = ptrtoint ptr %t_head.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %t_head.i, align 4
  %tobool4.not = icmp eq ptr %69, null
  br i1 %tobool.not.i, label %netem_peek.exit, label %if.end.i140

if.end.i140:                                      ; preds = %if.end
  br i1 %tobool4.not, label %if.end.i140.if.then5_crit_edge, label %if.end6.i

if.end.i140.if.then5_crit_edge:                   ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5

if.end6.i:                                        ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 8
  %70 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %data.i.i, align 8
  %data.i24.i = getelementptr inbounds %struct.sk_buff, ptr %69, i32 0, i32 3, i32 8
  %72 = ptrtoint ptr %data.i24.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %data.i24.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %71, i64 %73)
  %cmp.i = icmp ult i64 %71, %73
  %spec.select.i = select i1 %cmp.i, ptr %call.i, ptr %69
  br label %if.then5

netem_peek.exit:                                  ; preds = %if.end
  br i1 %tobool4.not, label %netem_peek.exit.if.end67_crit_edge, label %netem_peek.exit.if.then5_crit_edge

netem_peek.exit.if.then5_crit_edge:               ; preds = %netem_peek.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5

netem_peek.exit.if.end67_crit_edge:               ; preds = %netem_peek.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

if.then5:                                         ; preds = %netem_peek.exit.if.then5_crit_edge, %if.end6.i, %if.end.i140.if.then5_crit_edge
  %retval.0.i201 = phi ptr [ %69, %netem_peek.exit.if.then5_crit_edge ], [ %spec.select.i, %if.end6.i ], [ %call.i, %if.end.i140.if.then5_crit_edge ]
  %call.i141 = call i64 @ktime_get() #13
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i201, i32 0, i32 3, i32 8
  %74 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %data.i, align 8
  %76 = ptrtoint ptr %slot to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %slot, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %77)
  %tobool9.not = icmp ne i64 %77, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %77, i64 %75)
  %cmp = icmp ult i64 %77, %75
  %or.cond = select i1 %tobool9.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then12, label %if.then5.if.end13_crit_edge

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then12:                                        ; preds = %if.then5
  %78 = ptrtoint ptr %slot_dist.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %slot_dist.i, align 8
  %tobool.not.i142 = icmp eq ptr %79, null
  br i1 %tobool.not.i142, label %if.then.i145, label %if.else.i

if.then.i145:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  %80 = ptrtoint ptr %slot_config.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %slot_config.i, align 8
  %call.i143 = call i32 @prandom_u32() #13
  %conv.i = zext i32 %call.i143 to i64
  %82 = ptrtoint ptr %max_delay.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %max_delay.i, align 8
  %84 = ptrtoint ptr %slot_config.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %slot_config.i, align 8
  %sub.i144 = sub i64 %83, %85
  %mul.i = mul i64 %sub.i144, %conv.i
  %shr.i = ashr i64 %mul.i, 32
  %add.i = add i64 %shr.i, %81
  br label %get_slot_next.exit

if.else.i:                                        ; preds = %if.then12
  %86 = ptrtoint ptr %dist_delay.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %dist_delay.i, align 8
  %88 = ptrtoint ptr %dist_jitter.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %dist_jitter.i, align 8
  %conv6.i = trunc i64 %89 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv6.i)
  %cmp.i.i = icmp eq i32 %conv6.i, 0
  br i1 %cmp.i.i, label %if.else.i.get_slot_next.exit_crit_edge, label %if.end4.i.i

if.else.i.get_slot_next.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_slot_next.exit

if.end4.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = call i32 @prandom_u32() #13
  %90 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %79, align 4
  %rem5.i.i = urem i32 %call.i.i.i, %91
  %arrayidx.i.i = getelementptr %struct.disttable, ptr %79, i32 0, i32 1, i32 %rem5.i.i
  %92 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx.i.i, align 2
  %conv6.i.i = sext i16 %93 to i32
  %conv6.i.frozen = freeze i32 %conv6.i
  %div16.i.i = sdiv i32 %conv6.i.frozen, 8192
  %94 = mul i32 %div16.i.i, 8192
  %rem7.i.i.decomposed = sub i32 %conv6.i.frozen, %94
  %mul8.i.i = mul nsw i32 %rem7.i.i.decomposed, %conv6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul8.i.i)
  %cmp1037.i.i = icmp slt i32 %mul8.i.i, 0
  %x.0.v.i.i = select i1 %cmp1037.i.i, i32 -4096, i32 4096
  %x.0.i.i = add nsw i32 %x.0.v.i.i, %mul8.i.i
  %div36.i.i = sdiv i32 %x.0.i.i, 8192
  %div.sext.i.i = sext i32 %div36.i.i to i64
  %mul17.i.i = mul i32 %div16.i.i, %conv6.i.i
  %conv18.i.i = sext i32 %mul17.i.i to i64
  %add19.i.i = add i64 %87, %conv18.i.i
  %add20.i.i = add i64 %add19.i.i, %div.sext.i.i
  br label %get_slot_next.exit

get_slot_next.exit:                               ; preds = %if.end4.i.i, %if.else.i.get_slot_next.exit_crit_edge, %if.then.i145
  %next_delay.0.i = phi i64 [ %add.i, %if.then.i145 ], [ %add20.i.i, %if.end4.i.i ], [ %87, %if.else.i.get_slot_next.exit_crit_edge ]
  %add9.i = add i64 %next_delay.0.i, %call.i141
  %95 = ptrtoint ptr %slot to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %add9.i, ptr %slot, align 8
  %96 = ptrtoint ptr %max_packets.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %max_packets.i, align 8
  %98 = ptrtoint ptr %packets_left.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %packets_left.i, align 8
  %99 = ptrtoint ptr %max_bytes.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %max_bytes.i, align 4
  %101 = ptrtoint ptr %bytes_left.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %bytes_left.i, align 4
  br label %if.end13

if.end13:                                         ; preds = %get_slot_next.exit, %if.then5.if.end13_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %75, i64 %call.i141)
  %cmp14.not = icmp ugt i64 %75, %call.i141
  br i1 %cmp14.not, label %if.end13.if.end50_crit_edge, label %land.lhs.true15

if.end13.if.end50_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

land.lhs.true15:                                  ; preds = %if.end13
  %102 = ptrtoint ptr %slot to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %slot, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %103, i64 %call.i141)
  %cmp18.not = icmp ugt i64 %103, %call.i141
  br i1 %cmp18.not, label %land.lhs.true15.if.end50_crit_edge, label %if.then19

land.lhs.true15.if.end50_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.then19:                                        ; preds = %land.lhs.true15
  %104 = ptrtoint ptr %t_head.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %t_head.i, align 4
  %cmp.i148 = icmp eq ptr %105, %retval.0.i201
  br i1 %cmp.i148, label %if.then.i150, label %if.else.i151

if.then.i150:                                     ; preds = %if.then19
  %106 = ptrtoint ptr %retval.0.i201 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %retval.0.i201, align 8
  %108 = ptrtoint ptr %t_head.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %107, ptr %t_head.i, align 4
  %tobool.not.i149 = icmp eq ptr %107, null
  br i1 %tobool.not.i149, label %if.then3.i, label %if.then.i150.netem_erase_head.exit_crit_edge

if.then.i150.netem_erase_head.exit_crit_edge:     ; preds = %if.then.i150
  call void @__sanitizer_cov_trace_pc() #15
  br label %netem_erase_head.exit

if.then3.i:                                       ; preds = %if.then.i150
  call void @__sanitizer_cov_trace_pc() #15
  %109 = ptrtoint ptr %t_tail.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %t_tail.i, align 8
  br label %netem_erase_head.exit

if.else.i151:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  call void @rb_erase(ptr noundef nonnull %retval.0.i201, ptr noundef %privdata.i) #13
  br label %netem_erase_head.exit

netem_erase_head.exit:                            ; preds = %if.else.i151, %if.then3.i, %if.then.i150.netem_erase_head.exit_crit_edge
  %110 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %qlen, align 8
  %dec = add i32 %111, -1
  store i32 %dec, ptr %qlen, align 8
  %cb.i.i.i152 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i201, i32 0, i32 3
  %112 = ptrtoint ptr %cb.i.i.i152 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cb.i.i.i152, align 4
  %114 = ptrtoint ptr %backlog.i153 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %backlog.i153, align 4
  %sub.i154 = sub i32 %115, %113
  store i32 %sub.i154, ptr %backlog.i153, align 4
  %116 = ptrtoint ptr %retval.0.i201 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %retval.0.i201, align 8
  %prev = getelementptr inbounds %struct.anon.0, ptr %retval.0.i201, i32 0, i32 1
  %117 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %prev, align 4
  %118 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev_queue.i, align 8
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 128
  %122 = getelementptr inbounds %struct.anon.0, ptr %retval.0.i201, i32 0, i32 2
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %121, ptr %122, align 8
  %124 = ptrtoint ptr %slot to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %slot, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %125)
  %tobool24.not = icmp eq i64 %125, 0
  br i1 %tobool24.not, label %netem_erase_head.exit.if.end38_crit_edge, label %if.then25

netem_erase_head.exit.if.end38_crit_edge:         ; preds = %netem_erase_head.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then25:                                        ; preds = %netem_erase_head.exit
  %126 = ptrtoint ptr %packets_left.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %packets_left.i, align 8
  %dec27 = add i32 %127, -1
  store i32 %dec27, ptr %packets_left.i, align 8
  %128 = ptrtoint ptr %cb.i.i.i152 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %cb.i.i.i152, align 4
  %130 = ptrtoint ptr %bytes_left.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %bytes_left.i, align 4
  %sub = sub i32 %131, %129
  store i32 %sub, ptr %bytes_left.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec27)
  %cmp32 = icmp slt i32 %dec27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp35 = icmp slt i32 %sub, 1
  %or.cond138 = select i1 %cmp32, i1 true, i1 %cmp35
  br i1 %or.cond138, label %if.then36, label %if.then25.if.end38_crit_edge

if.then25.if.end38_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then36:                                        ; preds = %if.then25
  %132 = ptrtoint ptr %slot_dist.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %slot_dist.i, align 8
  %tobool.not.i156 = icmp eq ptr %133, null
  br i1 %tobool.not.i156, label %if.then.i165, label %if.else.i170

if.then.i165:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  %134 = ptrtoint ptr %slot_config.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %slot_config.i, align 8
  %call.i158 = call i32 @prandom_u32() #13
  %conv.i159 = zext i32 %call.i158 to i64
  %136 = ptrtoint ptr %max_delay.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %max_delay.i, align 8
  %138 = ptrtoint ptr %slot_config.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %slot_config.i, align 8
  %sub.i161 = sub i64 %137, %139
  %mul.i162 = mul i64 %sub.i161, %conv.i159
  %shr.i163 = ashr i64 %mul.i162, 32
  %add.i164 = add i64 %shr.i163, %135
  br label %get_slot_next.exit196

if.else.i170:                                     ; preds = %if.then36
  %140 = ptrtoint ptr %dist_delay.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %dist_delay.i, align 8
  %142 = ptrtoint ptr %dist_jitter.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %dist_jitter.i, align 8
  %conv6.i168 = trunc i64 %143 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv6.i168)
  %cmp.i.i169 = icmp eq i32 %conv6.i168, 0
  br i1 %cmp.i.i169, label %if.else.i170.get_slot_next.exit196_crit_edge, label %if.end4.i.i187

if.else.i170.get_slot_next.exit196_crit_edge:     ; preds = %if.else.i170
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_slot_next.exit196

if.end4.i.i187:                                   ; preds = %if.else.i170
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i171 = call i32 @prandom_u32() #13
  %144 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %133, align 4
  %rem5.i.i172 = urem i32 %call.i.i.i171, %145
  %arrayidx.i.i173 = getelementptr %struct.disttable, ptr %133, i32 0, i32 1, i32 %rem5.i.i172
  %146 = ptrtoint ptr %arrayidx.i.i173 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %arrayidx.i.i173, align 2
  %conv6.i.i174 = sext i16 %147 to i32
  %conv6.i168.frozen = freeze i32 %conv6.i168
  %div16.i.i182 = sdiv i32 %conv6.i168.frozen, 8192
  %148 = mul i32 %div16.i.i182, 8192
  %rem7.i.i175.decomposed = sub i32 %conv6.i168.frozen, %148
  %mul8.i.i176 = mul nsw i32 %rem7.i.i175.decomposed, %conv6.i.i174
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul8.i.i176)
  %cmp1037.i.i177 = icmp slt i32 %mul8.i.i176, 0
  %x.0.v.i.i178 = select i1 %cmp1037.i.i177, i32 -4096, i32 4096
  %x.0.i.i179 = add nsw i32 %x.0.v.i.i178, %mul8.i.i176
  %div36.i.i180 = sdiv i32 %x.0.i.i179, 8192
  %div.sext.i.i181 = sext i32 %div36.i.i180 to i64
  %mul17.i.i183 = mul i32 %div16.i.i182, %conv6.i.i174
  %conv18.i.i184 = sext i32 %mul17.i.i183 to i64
  %add19.i.i185 = add i64 %141, %conv18.i.i184
  %add20.i.i186 = add i64 %add19.i.i185, %div.sext.i.i181
  br label %get_slot_next.exit196

get_slot_next.exit196:                            ; preds = %if.end4.i.i187, %if.else.i170.get_slot_next.exit196_crit_edge, %if.then.i165
  %next_delay.0.i188 = phi i64 [ %add.i164, %if.then.i165 ], [ %add20.i.i186, %if.end4.i.i187 ], [ %141, %if.else.i170.get_slot_next.exit196_crit_edge ]
  %add9.i189 = add i64 %next_delay.0.i188, %call.i141
  %149 = ptrtoint ptr %slot to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %add9.i189, ptr %slot, align 8
  %150 = ptrtoint ptr %max_packets.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %max_packets.i, align 8
  %152 = ptrtoint ptr %packets_left.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %packets_left.i, align 8
  %153 = ptrtoint ptr %max_bytes.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %max_bytes.i, align 4
  %155 = ptrtoint ptr %bytes_left.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %bytes_left.i, align 4
  br label %if.end38

if.end38:                                         ; preds = %get_slot_next.exit196, %if.then25.if.end38_crit_edge, %netem_erase_head.exit.if.end38_crit_edge
  %156 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %qdisc, align 4
  %tobool39.not = icmp eq ptr %157, null
  br i1 %tobool39.not, label %if.end38.deliver_crit_edge, label %if.then40

if.end38.deliver_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %deliver

if.then40:                                        ; preds = %if.end38
  %158 = ptrtoint ptr %cb.i.i.i152 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %cb.i.i.i152, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %to_free) #13
  %160 = ptrtoint ptr %to_free to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %to_free, align 4
  %stab1.i.i = getelementptr inbounds %struct.Qdisc, ptr %157, i32 0, i32 5
  %161 = ptrtoint ptr %stab1.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile ptr, ptr %stab1.i.i, align 4
  %call.i.i = call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then40.do.end8.i.i_crit_edge

if.then40.do.end8.i.i_crit_edge:                  ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %if.then40
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b14.i.i = load i1, ptr @qdisc_calculate_pkt_len.__warned, align 1
  br i1 %.b14.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @qdisc_calculate_pkt_len.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 835, ptr noundef nonnull @.str.3) #13
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %if.then40.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %162, null
  br i1 %tobool10.not.i.i, label %do.end8.i.i.qdisc_enqueue.exit_crit_edge, label %if.then11.i.i

do.end8.i.i.qdisc_enqueue.exit_crit_edge:         ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qdisc_enqueue.exit

if.then11.i.i:                                    ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__qdisc_calculate_pkt_len(ptr noundef nonnull %retval.0.i201, ptr noundef nonnull %162) #13
  br label %qdisc_enqueue.exit

qdisc_enqueue.exit:                               ; preds = %if.then11.i.i, %do.end8.i.i.qdisc_enqueue.exit_crit_edge
  %163 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %157, align 128
  %call.i198 = call i32 %164(ptr noundef nonnull %retval.0.i201, ptr noundef nonnull %157, ptr noundef nonnull %to_free) #13
  %165 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %to_free, align 4
  call void @kfree_skb_list(ptr noundef %166) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %cmp44.not = icmp ne i32 %call.i198, 0
  %and = and i32 %call.i198, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  %or.cond139 = and i1 %cmp44.not, %tobool46.not
  br i1 %or.cond139, label %if.then47, label %qdisc_enqueue.exit.cleanup_crit_edge

qdisc_enqueue.exit.cleanup_crit_edge:             ; preds = %qdisc_enqueue.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then47:                                        ; preds = %qdisc_enqueue.exit
  call void @__sanitizer_cov_trace_pc() #15
  %167 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %drops.i.i, align 4
  %inc.i.i = add i32 %168, 1
  store i32 %inc.i.i, ptr %drops.i.i, align 4
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef 1, i32 noundef %159) #13
  br label %cleanup

if.end50:                                         ; preds = %land.lhs.true15.if.end50_crit_edge, %if.end13.if.end50_crit_edge
  %169 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %qdisc, align 4
  %tobool52.not = icmp eq ptr %170, null
  br i1 %tobool52.not, label %if.end50.cleanup.thread205_crit_edge, label %if.then53

if.end50.cleanup.thread205_crit_edge:             ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread205

if.then53:                                        ; preds = %if.end50
  %ops = getelementptr inbounds %struct.Qdisc, ptr %170, i32 0, i32 4
  %171 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ops, align 16
  %dequeue = getelementptr inbounds %struct.Qdisc_ops, ptr %172, i32 0, i32 6
  %173 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dequeue, align 4
  %call56 = call ptr %174(ptr noundef nonnull %170) #13
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %if.then53.cleanup.thread205_crit_edge, label %if.then53.deliver_crit_edge

if.then53.deliver_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  br label %deliver

if.then53.cleanup.thread205_crit_edge:            ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread205

cleanup.thread205:                                ; preds = %if.then53.cleanup.thread205_crit_edge, %if.end50.cleanup.thread205_crit_edge
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %175 = ptrtoint ptr %slot to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %slot, align 8
  %177 = call i64 @llvm.umax.i64(i64 %75, i64 %176)
  call void @qdisc_watchdog_schedule_range_ns(ptr noundef %watchdog, i64 noundef %177, i64 noundef 0) #13
  br label %if.end67

cleanup:                                          ; preds = %if.then47, %qdisc_enqueue.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %to_free) #13
  %178 = ptrtoint ptr %q1 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %q1, align 4
  %cmp.not.i = icmp eq ptr %179, null
  br i1 %cmp.not.i, label %cleanup.if.end_crit_edge, label %cleanup.if.then.i_crit_edge, !prof !72

cleanup.if.then.i_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end67:                                         ; preds = %cleanup.thread205, %netem_peek.exit.if.end67_crit_edge
  %180 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %qdisc, align 4
  %tobool69.not = icmp eq ptr %181, null
  br i1 %tobool69.not, label %if.end67.cleanup80_crit_edge, label %if.then70

if.end67.cleanup80_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

if.then70:                                        ; preds = %if.end67
  %ops72 = getelementptr inbounds %struct.Qdisc, ptr %181, i32 0, i32 4
  %182 = ptrtoint ptr %ops72 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ops72, align 16
  %dequeue73 = getelementptr inbounds %struct.Qdisc_ops, ptr %183, i32 0, i32 6
  %184 = ptrtoint ptr %dequeue73 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dequeue73, align 4
  %call75 = call ptr %185(ptr noundef nonnull %181) #13
  %tobool76.not = icmp eq ptr %call75, null
  br i1 %tobool76.not, label %if.then70.cleanup80_crit_edge, label %if.then70.deliver_crit_edge

if.then70.deliver_crit_edge:                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  br label %deliver

if.then70.cleanup80_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

cleanup80:                                        ; preds = %if.then70.cleanup80_crit_edge, %if.end67.cleanup80_crit_edge, %qdisc_bstats_update.exit
  %retval.0 = phi ptr [ %skb.0, %qdisc_bstats_update.exit ], [ null, %if.then70.cleanup80_crit_edge ], [ null, %if.end67.cleanup80_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qdisc_peek_dequeued(ptr noundef %sch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %gso_skb = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 16
  %0 = ptrtoint ptr %gso_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gso_skb, align 4
  %cmp.i = icmp eq ptr %1, %gso_skb
  %tobool.not15 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.i, %tobool.not15
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then:                                          ; preds = %entry
  %dequeue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 1
  %2 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dequeue, align 4
  %call1 = tail call ptr %3(ptr noundef %sch) #13
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
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
define internal i32 @netem_init(ptr noundef %sch, ptr noundef %opt, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  tail call void @qdisc_watchdog_init(ptr noundef %watchdog, ptr noundef %sch) #13
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %loss_model = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %loss_model to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %loss_model, align 8
  %call1 = tail call i32 @netem_change(ptr noundef %sch, ptr noundef nonnull %opt, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netem_reset(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %q.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %call.i.i = tail call i32 @rtnl_is_locked() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %entry.if.end29.i.i_crit_edge

entry.if.end29.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %entry
  %.b50.i.i = load i1, ptr @__qdisc_reset_queue.__already_done, align 1
  br i1 %.b50.i.i, label %land.rhs.i.i.if.end29.i.i_crit_edge, label %if.then.i.i, !prof !74

land.rhs.i.i.if.end29.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__qdisc_reset_queue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1165, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1165) #13
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.if.end29.i.i_crit_edge, %entry.if.end29.i.i_crit_edge
  %qlen.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %0 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool37.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool37.not.i.i, label %if.end29.i.i.qdisc_reset_queue.exit_crit_edge, label %if.then38.i.i

if.end29.i.i.qdisc_reset_queue.exit_crit_edge:    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qdisc_reset_queue.exit

if.then38.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q.i, align 4
  %tail.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 4
  tail call void @rtnl_kfree_skbs(ptr noundef %3, ptr noundef %5) #13
  %6 = ptrtoint ptr %q.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %q.i, align 4
  %7 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tail.i.i, align 4
  %8 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %qlen.i.i, align 4
  br label %qdisc_reset_queue.exit

qdisc_reset_queue.exit:                           ; preds = %if.then38.i.i, %if.end29.i.i.qdisc_reset_queue.exit_crit_edge
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %9 = ptrtoint ptr %backlog.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %backlog.i, align 4
  %call1.i = tail call ptr @rb_first(ptr noundef %privdata.i) #13
  %tobool.not18.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not18.i, label %qdisc_reset_queue.exit.tfifo_reset.exit_crit_edge, label %qdisc_reset_queue.exit.cond.end.i_crit_edge

qdisc_reset_queue.exit.cond.end.i_crit_edge:      ; preds = %qdisc_reset_queue.exit
  br label %cond.end.i

qdisc_reset_queue.exit.tfifo_reset.exit_crit_edge: ; preds = %qdisc_reset_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %tfifo_reset.exit

cond.end.i:                                       ; preds = %cond.end.i.cond.end.i_crit_edge, %qdisc_reset_queue.exit.cond.end.i_crit_edge
  %p.019.i = phi ptr [ %call4.i, %cond.end.i.cond.end.i_crit_edge ], [ %call1.i, %qdisc_reset_queue.exit.cond.end.i_crit_edge ]
  %call4.i = tail call ptr @rb_next(ptr noundef nonnull %p.019.i) #13
  tail call void @rb_erase(ptr noundef nonnull %p.019.i, ptr noundef %privdata.i) #13
  tail call void @rtnl_kfree_skbs(ptr noundef nonnull %p.019.i, ptr noundef nonnull %p.019.i) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %cond.end.i.tfifo_reset.exit_crit_edge, label %cond.end.i.cond.end.i_crit_edge

cond.end.i.cond.end.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.end.i.tfifo_reset.exit_crit_edge:            ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tfifo_reset.exit

tfifo_reset.exit:                                 ; preds = %cond.end.i.tfifo_reset.exit_crit_edge, %qdisc_reset_queue.exit.tfifo_reset.exit_crit_edge
  %t_head.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %10 = ptrtoint ptr %t_head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %t_head.i, align 4
  %t_tail.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %12 = ptrtoint ptr %t_tail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %t_tail.i, align 8
  tail call void @rtnl_kfree_skbs(ptr noundef %11, ptr noundef %13) #13
  %14 = ptrtoint ptr %t_head.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %t_head.i, align 4
  %15 = ptrtoint ptr %t_tail.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %t_tail.i, align 8
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %16 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qdisc, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %tfifo_reset.exit.if.end_crit_edge, label %if.then

tfifo_reset.exit.if.end_crit_edge:                ; preds = %tfifo_reset.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %tfifo_reset.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @qdisc_reset(ptr noundef nonnull %17) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %tfifo_reset.exit.if.end_crit_edge
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  tail call void @qdisc_watchdog_cancel(ptr noundef %watchdog) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netem_destroy(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  tail call void @qdisc_watchdog_cancel(ptr noundef %watchdog) #13
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @qdisc_put(ptr noundef nonnull %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %delay_dist = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3
  %2 = ptrtoint ptr %delay_dist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %delay_dist, align 4
  tail call void @kvfree(ptr noundef %3) #13
  %slot_dist = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19, i32 2
  %4 = ptrtoint ptr %slot_dist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slot_dist, align 8
  tail call void @kvfree(ptr noundef %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netem_change(ptr noundef %sch, ptr noundef %opt, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %tmp.i210 = alloca i64, align 8
  %tmp.i208 = alloca i64, align 8
  %tmp.i207 = alloca i64, align 8
  %tmp.i = alloca %struct.reciprocal_value, align 8
  %tb = alloca [14 x ptr], align 4
  %old_clg = alloca %struct.clgstate, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tb) #13
  %0 = call ptr @memset(ptr %tb, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %old_clg)
  %cmp = icmp eq ptr %opt, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %opt, i32 4
  %1 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %opt, align 2
  %conv.i.i = zext i16 %2 to i32
  %sub1.i = add nsw i32 %conv.i.i, -28
  call void @__sanitizer_cov_trace_const_cmp2(i16 28, i16 %2)
  %cmp.i = icmp ult i16 %2, 28
  br i1 %cmp.i, label %parse_attr.exit.thread, label %if.end.i

parse_attr.exit.thread:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %sub1.i) #16
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub1.i)
  %cmp4.i = icmp ugt i32 %sub1.i, 3
  br i1 %cmp4.i, label %parse_attr.exit, label %parse_attr.exit.thread221

parse_attr.exit.thread221:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %3 = call ptr @memset(ptr %tb, i32 0, i32 56)
  br label %if.end5

parse_attr.exit:                                  ; preds = %if.end.i
  %add.ptr.i191 = getelementptr i8, ptr %opt, i32 28
  %call.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 13, ptr noundef %add.ptr.i191, i32 noundef %sub1.i, ptr noundef nonnull @netem_policy, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3 = icmp slt i32 %call.i.i, 0
  br i1 %cmp3, label %parse_attr.exit.cleanup_crit_edge, label %parse_attr.exit.if.end5_crit_edge

parse_attr.exit.if.end5_crit_edge:                ; preds = %parse_attr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

parse_attr.exit.cleanup_crit_edge:                ; preds = %parse_attr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %parse_attr.exit.if.end5_crit_edge, %parse_attr.exit.thread221
  %retval.0.i224 = phi i32 [ 0, %parse_attr.exit.thread221 ], [ %call.i.i, %parse_attr.exit.if.end5_crit_edge ]
  %clg = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 4
  %4 = call ptr @memcpy(ptr %old_clg, ptr %clg, i32 24)
  %loss_model = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %loss_model to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %loss_model, align 8
  %arrayidx = getelementptr inbounds [14 x ptr], ptr %tb, i32 0, i32 5
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end5
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %10)
  %cmp.i100.i = icmp ugt i16 %10, 7
  br i1 %cmp.i100.i, label %land.lhs.true.i.lr.ph.i, label %if.then6.if.end14_crit_edge

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

land.lhs.true.i.lr.ph.i:                          ; preds = %if.then6
  %conv.i.i192 = zext i16 %10 to i32
  %sub.i.i = add nsw i32 %conv.i.i192, -4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 4
  %a130.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 4, i32 1
  %a232.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 4, i32 1, i32 1
  %a334.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 4, i32 2
  %a436.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 4, i32 3
  %a5.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3, i32 0, i32 0, i32 4, i32 6
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.inc.i.land.lhs.true.i.i_crit_edge, %land.lhs.true.i.lr.ph.i
  %la.0102.i = phi ptr [ %add.ptr.i.i, %land.lhs.true.i.lr.ph.i ], [ %add.ptr.i95.i, %for.inc.i.land.lhs.true.i.i_crit_edge ]
  %rem.0101.i = phi i32 [ %sub.i.i, %land.lhs.true.i.lr.ph.i ], [ %sub1.i.i, %for.inc.i.land.lhs.true.i.i_crit_edge ]
  %11 = ptrtoint ptr %la.0102.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %la.0102.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %12)
  %cmp1.i.i = icmp ult i16 %12, 4
  %conv.i85.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0101.i, i32 %conv.i85.i)
  %cmp5.i.not.i = icmp ult i32 %rem.0101.i, %conv.i85.i
  %or.cond.i = select i1 %cmp1.i.i, i1 true, i1 %cmp5.i.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.if.end14_crit_edge, label %for.body.i

land.lhs.true.i.i.if.end14_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

for.body.i:                                       ; preds = %land.lhs.true.i.i
  %nla_type.i.i = getelementptr inbounds %struct.nlattr, ptr %la.0102.i, i32 0, i32 1
  %13 = ptrtoint ptr %nla_type.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nla_type.i.i, align 2
  %trunc.i = trunc i16 %14 to i14
  %15 = zext i14 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.27)
  switch i14 %trunc.i, label %do.end41.i [
    i14 1, label %sw.bb.i
    i14 2, label %sw.bb14.i
  ]

sw.bb.i:                                          ; preds = %for.body.i
  %sub.i88.i = add nsw i32 %conv.i85.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i88.i)
  %cmp.i193 = icmp ult i32 %sub.i88.i, 20
  br i1 %cmp.i193, label %do.end.i194, label %if.end.i195

do.end.i194:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #16
  br label %if.then10

if.end.i195:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i86.i = getelementptr i8, ptr %la.0102.i, i32 4
  %16 = ptrtoint ptr %loss_model to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %loss_model, align 8
  %17 = ptrtoint ptr %clg to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %clg, align 4
  %18 = ptrtoint ptr %add.ptr.i86.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i86.i, align 4
  %20 = ptrtoint ptr %a130.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %a130.i, align 4
  %p31.i = getelementptr i8, ptr %la.0102.i, i32 8
  br label %for.inc.i

sw.bb14.i:                                        ; preds = %for.body.i
  %sub.i91.i = add nsw i32 %conv.i85.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i91.i)
  %cmp17.i = icmp ult i32 %sub.i91.i, 16
  br i1 %cmp17.i, label %do.end22.i, label %if.end25.i

do.end22.i:                                       ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #15
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #16
  br label %if.then10

if.end25.i:                                       ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i89.i = getelementptr i8, ptr %la.0102.i, i32 4
  %21 = ptrtoint ptr %loss_model to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %loss_model, align 8
  %22 = ptrtoint ptr %clg to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %clg, align 4
  br label %for.inc.i

do.end41.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %23 = and i16 %14, 16383
  %and.i.i = zext i16 %23 to i32
  %call44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %and.i.i) #16
  br label %if.then10

for.inc.i:                                        ; preds = %if.end25.i, %if.end.i195
  %add.ptr.i89.sink.i = phi ptr [ %add.ptr.i89.i, %if.end25.i ], [ %p31.i, %if.end.i195 ]
  %a130.sink.i = phi ptr [ %a130.i, %if.end25.i ], [ %a232.i, %if.end.i195 ]
  %.sink111.i = phi i32 [ 8, %if.end25.i ], [ 12, %if.end.i195 ]
  %a232.sink.i = phi ptr [ %a232.i, %if.end25.i ], [ %a334.i, %if.end.i195 ]
  %.sink109.i = phi i32 [ 12, %if.end25.i ], [ 16, %if.end.i195 ]
  %a334.sink.i = phi ptr [ %a334.i, %if.end25.i ], [ %a436.i, %if.end.i195 ]
  %.sink.i = phi i32 [ 16, %if.end25.i ], [ 20, %if.end.i195 ]
  %a436.sink.i = phi ptr [ %a436.i, %if.end25.i ], [ %a5.i, %if.end.i195 ]
  %24 = ptrtoint ptr %add.ptr.i89.sink.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i89.sink.i, align 4
  %26 = ptrtoint ptr %a130.sink.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %a130.sink.i, align 4
  %r.i = getelementptr i8, ptr %la.0102.i, i32 %.sink111.i
  %27 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %r.i, align 4
  %29 = ptrtoint ptr %a232.sink.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %a232.sink.i, align 4
  %h.i = getelementptr i8, ptr %la.0102.i, i32 %.sink109.i
  %30 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %h.i, align 4
  %32 = ptrtoint ptr %a334.sink.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %a334.sink.i, align 4
  %k1.i = getelementptr i8, ptr %la.0102.i, i32 %.sink.i
  %33 = ptrtoint ptr %k1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %k1.i, align 4
  %35 = ptrtoint ptr %a436.sink.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %a436.sink.i, align 4
  %36 = ptrtoint ptr %la.0102.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %la.0102.i, align 2
  %conv.i92.i = zext i16 %37 to i32
  %sub.i93.i = add nuw nsw i32 %conv.i92.i, 3
  %and.i94.i = and i32 %sub.i93.i, 131068
  %sub1.i.i = sub nsw i32 %rem.0101.i, %and.i94.i
  %add.ptr.i95.i = getelementptr i8, ptr %la.0102.i, i32 %and.i94.i
  %cmp.i.i = icmp sgt i32 %sub1.i.i, 3
  br i1 %cmp.i.i, label %for.inc.i.land.lhs.true.i.i_crit_edge, label %for.inc.i.if.end14_crit_edge

for.inc.i.if.end14_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

for.inc.i.land.lhs.true.i.i_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i.i

if.then10:                                        ; preds = %do.end41.i, %do.end22.i, %do.end.i194
  %38 = ptrtoint ptr %loss_model to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %6, ptr %loss_model, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %loss_model to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %loss_model, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %for.inc.i.if.end14_crit_edge, %land.lhs.true.i.i.if.end14_crit_edge, %if.then6.if.end14_crit_edge
  %ret.0 = phi i32 [ %retval.0.i224, %if.else ], [ 0, %if.then6.if.end14_crit_edge ], [ 0, %for.inc.i.if.end14_crit_edge ], [ 0, %land.lhs.true.i.i.if.end14_crit_edge ]
  %arrayidx15 = getelementptr inbounds [14 x ptr], ptr %tb, i32 0, i32 2
  %40 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %41, null
  br i1 %tobool16.not, label %if.end14.if.end23_crit_edge, label %if.then17

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then17:                                        ; preds = %if.end14
  %delay_dist = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 3
  %call19 = call fastcc i32 @get_dist_table(ptr noundef %sch, ptr noundef %delay_dist, ptr noundef nonnull %41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then17.if.end23_crit_edge, label %if.then17.get_table_failure_crit_edge

if.then17.get_table_failure_crit_edge:            ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_table_failure

if.then17.if.end23_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.end23:                                         ; preds = %if.then17.if.end23_crit_edge, %if.end14.if.end23_crit_edge
  %ret.1 = phi i32 [ 0, %if.then17.if.end23_crit_edge ], [ %ret.0, %if.end14.if.end23_crit_edge ]
  %arrayidx24 = getelementptr inbounds [14 x ptr], ptr %tb, i32 0, i32 13
  %42 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %43, null
  br i1 %tobool25.not, label %if.end23.if.end32_crit_edge, label %if.then26

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then26:                                        ; preds = %if.end23
  %slot_dist = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19, i32 2
  %call28 = call fastcc i32 @get_dist_table(ptr noundef %sch, ptr noundef %slot_dist, ptr noundef nonnull %43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then26.if.end32_crit_edge, label %if.then26.get_table_failure_crit_edge

if.then26.get_table_failure_crit_edge:            ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_table_failure

if.then26.if.end32_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.end32:                                         ; preds = %if.then26.if.end32_crit_edge, %if.end23.if.end32_crit_edge
  %ret.2 = phi i32 [ 0, %if.then26.if.end32_crit_edge ], [ %ret.1, %if.end23.if.end32_crit_edge ]
  %limit = getelementptr i8, ptr %opt, i32 8
  %44 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %limit, align 4
  %limit33 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %46 = ptrtoint ptr %limit33 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %limit33, align 4
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i, align 4
  %conv = zext i32 %48 to i64
  %shl = shl nuw nsw i64 %conv, 6
  %latency34 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %49 = ptrtoint ptr %latency34 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %shl, ptr %latency34, align 8
  %jitter = getelementptr i8, ptr %opt, i32 24
  %50 = ptrtoint ptr %jitter to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %jitter, align 4
  %conv35 = zext i32 %51 to i64
  %shl36 = shl nuw nsw i64 %conv35, 6
  %jitter37 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %52 = ptrtoint ptr %jitter37 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %shl36, ptr %jitter37, align 8
  %53 = load i32, ptr %limit, align 4
  %limit39 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 40
  %54 = ptrtoint ptr %limit39 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %limit39, align 8
  %gap = getelementptr i8, ptr %opt, i32 16
  %55 = ptrtoint ptr %gap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %gap, align 4
  %gap40 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 48
  %57 = ptrtoint ptr %gap40 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %gap40, align 8
  %counter = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 44
  %58 = ptrtoint ptr %counter to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %counter, align 4
  %loss = getelementptr i8, ptr %opt, i32 12
  %59 = ptrtoint ptr %loss to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %loss, align 4
  %loss41 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %61 = ptrtoint ptr %loss41 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %loss41, align 8
  %duplicate = getelementptr i8, ptr %opt, i32 20
  %62 = ptrtoint ptr %duplicate to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %duplicate, align 4
  %duplicate42 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 52
  %64 = ptrtoint ptr %duplicate42 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %duplicate42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool44.not = icmp eq i32 %56, 0
  br i1 %tobool44.not, label %if.end32.if.end46_crit_edge, label %if.then45

if.end32.if.end46_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then45:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %reorder = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 56
  %65 = ptrtoint ptr %reorder to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %reorder, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end32.if.end46_crit_edge
  %arrayidx47 = getelementptr inbounds [14 x ptr], ptr %tb, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx47, align 4
  %tobool48.not = icmp eq ptr %67, null
  br i1 %tobool48.not, label %if.end46.if.end51_crit_edge, label %if.then49

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i196 = getelementptr i8, ptr %67, i32 4
  %delay_cor.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4
  %68 = ptrtoint ptr %add.ptr.i.i196 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr.i.i196, align 4
  %rho1.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 1
  %70 = ptrtoint ptr %rho1.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %rho1.i.i, align 4
  %call.i.i197 = call i32 @prandom_u32() #13
  %71 = ptrtoint ptr %delay_cor.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call.i.i197, ptr %delay_cor.i, align 4
  %loss_cor.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 1, i32 1
  %loss_corr.i = getelementptr i8, ptr %67, i32 8
  %72 = ptrtoint ptr %loss_corr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %loss_corr.i, align 4
  %rho1.i5.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 2
  %74 = ptrtoint ptr %rho1.i5.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %rho1.i5.i, align 4
  %call.i6.i = call i32 @prandom_u32() #13
  %75 = ptrtoint ptr %loss_cor.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call.i6.i, ptr %loss_cor.i, align 4
  %dup_cor.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 3
  %dup_corr.i = getelementptr i8, ptr %67, i32 12
  %76 = ptrtoint ptr %dup_corr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dup_corr.i, align 4
  %rho1.i7.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 6
  %78 = ptrtoint ptr %rho1.i7.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %rho1.i7.i, align 4
  %call.i8.i = call i32 @prandom_u32() #13
  %79 = ptrtoint ptr %dup_cor.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %call.i8.i, ptr %dup_cor.i, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end46.if.end51_crit_edge
  %arrayidx52 = getelementptr inbounds [14 x ptr], ptr %tb, i32 0, i32 3
  %80 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx52, align 4
  %tobool53.not = icmp eq ptr %81, null
  br i1 %tobool53.not, label %if.end51.if.end56_crit_edge, label %if.then54

if.end51.if.end56_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i198 = getelementptr i8, ptr %81, i32 4
  %82 = ptrtoint ptr %add.ptr.i.i198 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr.i.i198, align 4
  %reorder.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 56
  %84 = ptrtoint ptr %reorder.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %reorder.i, align 8
  %reorder_cor.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 7
  %correlation.i = getelementptr i8, ptr %81, i32 8
  %85 = ptrtoint ptr %correlation.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %correlation.i, align 4
  %rho1.i.i199 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17
  %87 = ptrtoint ptr %rho1.i.i199 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %rho1.i.i199, align 4
  %call.i.i200 = call i32 @prandom_u32() #13
  %88 = ptrtoint ptr %reorder_cor.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %call.i.i200, ptr %reorder_cor.i, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end51.if.end56_crit_edge
  %arrayidx57 = getelementptr inbounds [14 x ptr], ptr %tb, i32 0, i32 4
  %89 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx57, align 4
  %tobool58.not = icmp eq ptr %90, null
  br i1 %tobool58.not, label %if.end56.if.end61_crit_edge, label %if.then59

if.end56.if.end61_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i201 = getelementptr i8, ptr %90, i32 4
  %91 = ptrtoint ptr %add.ptr.i.i201 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr.i.i201, align 4
  %corrupt.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 60
  %93 = ptrtoint ptr %corrupt.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %corrupt.i, align 4
  %corrupt_cor.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 1
  %correlation.i202 = getelementptr i8, ptr %90, i32 8
  %94 = ptrtoint ptr %correlation.i202 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %correlation.i202, align 4
  %rho1.i.i203 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 2
  %96 = ptrtoint ptr %rho1.i.i203 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %rho1.i.i203, align 4
  %call.i.i204 = call i32 @prandom_u32() #13
  %97 = ptrtoint ptr %corrupt_cor.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %call.i.i204, ptr %corrupt_cor.i, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end56.if.end61_crit_edge
  %arrayidx62 = getelementptr inbounds [14 x ptr], ptr %tb, i32 0, i32 6
  %98 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx62, align 4
  %tobool63.not = icmp eq ptr %99, null
  br i1 %tobool63.not, label %if.end61.if.end66_crit_edge, label %if.then64

if.end61.if.end66_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.then64:                                        ; preds = %if.end61
  %add.ptr.i.i205 = getelementptr i8, ptr %99, i32 4
  %100 = ptrtoint ptr %add.ptr.i.i205 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %add.ptr.i.i205, align 4
  %conv.i = zext i32 %101 to i64
  %rate1.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16
  %102 = ptrtoint ptr %rate1.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %conv.i, ptr %rate1.i, align 8
  %packet_overhead.i = getelementptr i8, ptr %99, i32 8
  %103 = ptrtoint ptr %packet_overhead.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %packet_overhead.i, align 4
  %packet_overhead2.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 1
  %105 = ptrtoint ptr %packet_overhead2.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %packet_overhead2.i, align 8
  %cell_size.i = getelementptr i8, ptr %99, i32 12
  %106 = ptrtoint ptr %cell_size.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cell_size.i, align 4
  %cell_size3.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2
  %108 = ptrtoint ptr %cell_size3.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %cell_size3.i, align 4
  %cell_overhead.i = getelementptr i8, ptr %99, i32 16
  %109 = ptrtoint ptr %cell_overhead.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %cell_overhead.i, align 4
  %cell_overhead4.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 3
  %111 = ptrtoint ptr %cell_overhead4.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %cell_overhead4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.not.i = icmp eq i32 %107, 0
  %cell_size_reciprocal7.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #13
  call void @reciprocal_value(ptr nonnull sret(%struct.reciprocal_value) align 4 %tmp.i, i32 noundef %107) #13
  %112 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %tmp.i, align 8
  %114 = ptrtoint ptr %cell_size_reciprocal7.i to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %113, ptr %cell_size_reciprocal7.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #13
  br label %if.end66

if.else.i:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  %115 = ptrtoint ptr %cell_size_reciprocal7.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %cell_size_reciprocal7.i, align 8
  %.compoundliteral.sroa.2.0.cell_size_reciprocal7.sroa_idx.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 2
  %116 = ptrtoint ptr %.compoundliteral.sroa.2.0.cell_size_reciprocal7.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %.compoundliteral.sroa.2.0.cell_size_reciprocal7.sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0.cell_size_reciprocal7.sroa_idx.i = getelementptr inbounds %struct.netem_sched_data, ptr %privdata.i, i32 0, i32 18, i32 2
  %117 = ptrtoint ptr %.compoundliteral.sroa.3.0.cell_size_reciprocal7.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %.compoundliteral.sroa.3.0.cell_size_reciprocal7.sroa_idx.i, align 1
  br label %if.end66

if.end66:                                         ; preds = %if.else.i, %if.then.i, %if.end61.if.end66_crit_edge
  %arrayidx67 = getelementptr inbounds [14 x ptr], ptr %tb, i32 0, i32 8
  %118 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx67, align 4
  %tobool68.not = icmp eq ptr %119, null
  br i1 %tobool68.not, label %if.end66.if.end75_crit_edge, label %if.then69

if.end66.if.end75_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  %rate = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16
  %120 = ptrtoint ptr %rate to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %rate, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i207) #13
  %122 = ptrtoint ptr %tmp.i207 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 -1, ptr %tmp.i207, align 8, !annotation !73
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i207, ptr noundef nonnull %119, i32 noundef 8) #13
  %123 = ptrtoint ptr %tmp.i207 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %tmp.i207, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i207) #13
  %125 = call i64 @llvm.umax.i64(i64 %121, i64 %124)
  %126 = ptrtoint ptr %rate to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %125, ptr %rate, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.then69, %if.end66.if.end75_crit_edge
  %arrayidx76 = getelementptr inbounds [14 x ptr], ptr %tb, i32 0, i32 10
  %127 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx76, align 4
  %tobool77.not = icmp eq ptr %128, null
  br i1 %tobool77.not, label %if.end75.if.end82_crit_edge, label %if.then78

if.end75.if.end82_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

if.then78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i208) #13
  %129 = ptrtoint ptr %tmp.i208 to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 -1, ptr %tmp.i208, align 8, !annotation !73
  %call.i209 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i208, ptr noundef nonnull %128, i32 noundef 8) #13
  %130 = ptrtoint ptr %tmp.i208 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %tmp.i208, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i208) #13
  %132 = ptrtoint ptr %latency34 to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %131, ptr %latency34, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then78, %if.end75.if.end82_crit_edge
  %arrayidx83 = getelementptr inbounds [14 x ptr], ptr %tb, i32 0, i32 11
  %133 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx83, align 4
  %tobool84.not = icmp eq ptr %134, null
  br i1 %tobool84.not, label %if.end82.if.end89_crit_edge, label %if.then85

if.end82.if.end89_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i210) #13
  %135 = ptrtoint ptr %tmp.i210 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 -1, ptr %tmp.i210, align 8, !annotation !73
  %call.i211 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i210, ptr noundef nonnull %134, i32 noundef 8) #13
  %136 = ptrtoint ptr %tmp.i210 to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %tmp.i210, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i210) #13
  %138 = ptrtoint ptr %jitter37 to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %137, ptr %jitter37, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.then85, %if.end82.if.end89_crit_edge
  %arrayidx90 = getelementptr inbounds [14 x ptr], ptr %tb, i32 0, i32 7
  %139 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx90, align 4
  %tobool91.not = icmp eq ptr %140, null
  br i1 %tobool91.not, label %if.end89.if.end95_crit_edge, label %if.then92

if.end89.if.end95_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i212 = getelementptr i8, ptr %140, i32 4
  %141 = ptrtoint ptr %add.ptr.i.i212 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %add.ptr.i.i212, align 4
  %ecn = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 36
  %143 = ptrtoint ptr %ecn to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %ecn, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %if.end89.if.end95_crit_edge
  %arrayidx96 = getelementptr inbounds [14 x ptr], ptr %tb, i32 0, i32 12
  %144 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx96, align 4
  %tobool97.not = icmp eq ptr %145, null
  br i1 %tobool97.not, label %if.end95.if.end100_crit_edge, label %if.then98

if.end95.if.end100_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

if.then98:                                        ; preds = %if.end95
  %add.ptr.i.i213 = getelementptr i8, ptr %145, i32 4
  %slot_config.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18
  %146 = call ptr @memcpy(ptr %slot_config.i, ptr %add.ptr.i.i213, i32 40)
  %max_packets.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2
  %147 = ptrtoint ptr %max_packets.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %max_packets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %cmp.i214 = icmp eq i32 %148, 0
  br i1 %cmp.i214, label %if.then.i215, label %if.then98.if.end.i216_crit_edge

if.then98.if.end.i216_crit_edge:                  ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i216

if.then.i215:                                     ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #15
  %149 = ptrtoint ptr %max_packets.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 2147483647, ptr %max_packets.i, align 8
  br label %if.end.i216

if.end.i216:                                      ; preds = %if.then.i215, %if.then98.if.end.i216_crit_edge
  %max_bytes.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1
  %150 = ptrtoint ptr %max_bytes.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %max_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %cmp5.i = icmp eq i32 %151, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.end.i216.if.end9.i_crit_edge

if.end.i216.if.end9.i_crit_edge:                  ; preds = %if.end.i216
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i216
  call void @__sanitizer_cov_trace_pc() #15
  %152 = ptrtoint ptr %max_bytes.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 2147483647, ptr %max_bytes.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end.i216.if.end9.i_crit_edge
  %dist_jitter.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1, i32 2
  %153 = ptrtoint ptr %dist_jitter.i to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %dist_jitter.i, align 8
  %155 = call i64 @llvm.abs.i64(i64 %154, i1 false) #13
  %156 = call i64 @llvm.smin.i64(i64 %155, i64 2147483647) #13
  %157 = ptrtoint ptr %dist_jitter.i to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 %156, ptr %dist_jitter.i, align 8
  %158 = ptrtoint ptr %max_packets.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %max_packets.i, align 8
  %packets_left.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19
  %160 = ptrtoint ptr %packets_left.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %packets_left.i, align 8
  %161 = ptrtoint ptr %max_bytes.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %max_bytes.i, align 4
  %bytes_left.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19, i32 1
  %163 = ptrtoint ptr %bytes_left.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %bytes_left.i, align 4
  %164 = ptrtoint ptr %slot_config.i to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %slot_config.i, align 8
  %max_delay.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 1
  %166 = ptrtoint ptr %max_delay.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %max_delay.i, align 8
  %or.i = or i64 %165, %156
  %or29.i = or i64 %or.i, %167
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or29.i)
  %tobool.not.i217 = icmp eq i64 %or29.i, 0
  br i1 %tobool.not.i217, label %if.end9.i.get_slot.exit_crit_edge, label %if.then30.i

if.end9.i.get_slot.exit_crit_edge:                ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_slot.exit

if.then30.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i218 = call i64 @ktime_get() #13
  br label %get_slot.exit

get_slot.exit:                                    ; preds = %if.then30.i, %if.end9.i.get_slot.exit_crit_edge
  %storemerge.i = phi i64 [ %call.i.i218, %if.then30.i ], [ 0, %if.end9.i.get_slot.exit_crit_edge ]
  %slot.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1, i32 6
  %168 = ptrtoint ptr %slot.i to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 %storemerge.i, ptr %slot.i, align 8
  br label %if.end100

if.end100:                                        ; preds = %get_slot.exit, %if.end95.if.end100_crit_edge
  %169 = ptrtoint ptr %jitter37 to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %jitter37, align 8
  %171 = call i64 @llvm.abs.i64(i64 %170, i1 false)
  %172 = call i64 @llvm.smin.i64(i64 %171, i64 2147483647)
  %173 = ptrtoint ptr %jitter37 to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 %172, ptr %jitter37, align 8
  br label %cleanup

get_table_failure:                                ; preds = %if.then26.get_table_failure_crit_edge, %if.then17.get_table_failure_crit_edge
  %ret.3 = phi i32 [ %call19, %if.then17.get_table_failure_crit_edge ], [ %call28, %if.then26.get_table_failure_crit_edge ]
  %174 = call ptr @memcpy(ptr %clg, ptr %old_clg, i32 24)
  %175 = ptrtoint ptr %loss_model to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %6, ptr %loss_model, align 8
  br label %cleanup

cleanup:                                          ; preds = %get_table_failure, %if.end100, %if.then10, %parse_attr.exit.cleanup_crit_edge, %parse_attr.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then10 ], [ %ret.3, %get_table_failure ], [ %ret.2, %if.end100 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %parse_attr.exit.cleanup_crit_edge ], [ -22, %parse_attr.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %old_clg)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tb) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netem_dump(ptr noundef %sch, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i156 = alloca i32, align 4
  %tmp.i = alloca i64, align 8
  %qopt = alloca %struct.tc_netem_qopt, align 4
  %cor = alloca %struct.tc_netem_corr, align 4
  %reorder = alloca %struct.tc_netem_reorder, align 4
  %corrupt = alloca %struct.tc_netem_corrupt, align 4
  %rate = alloca %struct.tc_netem_rate, align 4
  %slot = alloca %struct.tc_netem_slot, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %qopt) #13
  %2 = getelementptr inbounds %struct.tc_netem_qopt, ptr %qopt, i32 0, i32 1
  %3 = getelementptr inbounds %struct.tc_netem_qopt, ptr %qopt, i32 0, i32 2
  %4 = getelementptr inbounds %struct.tc_netem_qopt, ptr %qopt, i32 0, i32 3
  %5 = getelementptr inbounds %struct.tc_netem_qopt, ptr %qopt, i32 0, i32 4
  %6 = getelementptr inbounds %struct.tc_netem_qopt, ptr %qopt, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cor) #13
  %7 = ptrtoint ptr %cor to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %cor, align 4, !annotation !73
  %8 = getelementptr inbounds %struct.tc_netem_corr, ptr %cor, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !73
  %10 = getelementptr inbounds %struct.tc_netem_corr, ptr %cor, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !73
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reorder) #13
  %12 = ptrtoint ptr %reorder to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %reorder, align 4, !annotation !73
  %13 = getelementptr inbounds %struct.tc_netem_reorder, ptr %reorder, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %13, align 4, !annotation !73
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %corrupt) #13
  %15 = ptrtoint ptr %corrupt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %corrupt, align 4, !annotation !73
  %16 = getelementptr inbounds %struct.tc_netem_corrupt, ptr %corrupt, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %16, align 4, !annotation !73
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rate) #13
  %18 = getelementptr inbounds %struct.tc_netem_rate, ptr %rate, i32 0, i32 1
  %19 = getelementptr inbounds %struct.tc_netem_rate, ptr %rate, i32 0, i32 2
  %20 = getelementptr inbounds %struct.tc_netem_rate, ptr %rate, i32 0, i32 3
  %21 = call ptr @memset(ptr %rate, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %slot) #13
  %22 = getelementptr inbounds %struct.tc_netem_slot, ptr %slot, i32 0, i32 2
  %23 = getelementptr inbounds %struct.tc_netem_slot, ptr %slot, i32 0, i32 3
  %latency = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %24 = call ptr @memset(ptr %slot, i32 255, i32 40)
  %25 = ptrtoint ptr %latency to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %latency, align 8
  %27 = lshr i64 %26, 6
  %conv = trunc i64 %27 to i32
  %28 = tail call i32 @llvm.smin.i32(i32 %conv, i32 -1)
  %29 = ptrtoint ptr %qopt to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %qopt, align 4
  %jitter = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %30 = ptrtoint ptr %jitter to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %jitter, align 8
  %32 = lshr i64 %31, 6
  %conv5 = trunc i64 %32 to i32
  %33 = tail call i32 @llvm.smin.i32(i32 %conv5, i32 -1)
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %6, align 4
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 40
  %35 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %limit, align 8
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %2, align 4
  %loss = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %38 = ptrtoint ptr %loss to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %loss, align 8
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %3, align 4
  %gap = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 48
  %41 = ptrtoint ptr %gap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %gap, align 8
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %4, align 4
  %duplicate = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 52
  %44 = ptrtoint ptr %duplicate to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %duplicate, align 4
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %5, align 4
  %call18 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 24, ptr noundef nonnull %qopt) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %call20 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 8, ptr noundef %latency) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_put_failure

if.end23:                                         ; preds = %if.end
  %call25 = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 8, ptr noundef %jitter) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.nla_put_failure_crit_edge

if.end23.nla_put_failure_crit_edge:               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_put_failure

if.end28:                                         ; preds = %if.end23
  %rho = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %rho to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rho, align 4
  %49 = ptrtoint ptr %cor to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %cor, align 4
  %rho29 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 2
  %50 = ptrtoint ptr %rho29 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rho29, align 4
  %52 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %8, align 4
  %rho30 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 6
  %53 = ptrtoint ptr %rho30 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rho30, align 4
  %55 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %10, align 4
  %call31 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 12, ptr noundef nonnull %cor) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end28.nla_put_failure_crit_edge

if.end28.nla_put_failure_crit_edge:               ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_put_failure

if.end34:                                         ; preds = %if.end28
  %reorder35 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 56
  %56 = ptrtoint ptr %reorder35 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %reorder35, align 8
  %58 = ptrtoint ptr %reorder to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %reorder, align 4
  %rho36 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17
  %59 = ptrtoint ptr %rho36 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rho36, align 4
  %61 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %13, align 4
  %call37 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %reorder) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end34.nla_put_failure_crit_edge

if.end34.nla_put_failure_crit_edge:               ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_put_failure

if.end40:                                         ; preds = %if.end34
  %corrupt41 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 60
  %62 = ptrtoint ptr %corrupt41 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %corrupt41, align 4
  %64 = ptrtoint ptr %corrupt to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %corrupt, align 4
  %rho43 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 17, i32 2
  %65 = ptrtoint ptr %rho43 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rho43, align 4
  %67 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %16, align 4
  %call45 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %corrupt) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end40.nla_put_failure_crit_edge

if.end40.nla_put_failure_crit_edge:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_put_failure

if.end48:                                         ; preds = %if.end40
  %rate49 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16
  %68 = ptrtoint ptr %rate49 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %rate49, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %69)
  %cmp50 = icmp ugt i64 %69, 4294967295
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.end48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #13
  %70 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %tmp.i, align 8
  %call.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool55.not = icmp eq i32 %call.i, 0
  br i1 %tobool55.not, label %if.then52.if.end62_crit_edge, label %if.then52.nla_put_failure_crit_edge

if.then52.nla_put_failure_crit_edge:              ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_put_failure

if.then52.if.end62_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.else:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  %conv60 = trunc i64 %69 to i32
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then52.if.end62_crit_edge
  %storemerge = phi i32 [ %conv60, %if.else ], [ -1, %if.then52.if.end62_crit_edge ]
  %71 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %storemerge, ptr %rate, align 4
  %packet_overhead = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 1
  %72 = ptrtoint ptr %packet_overhead to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %packet_overhead, align 8
  %74 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %18, align 4
  %cell_size = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2
  %75 = ptrtoint ptr %cell_size to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cell_size, align 4
  %77 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %19, align 4
  %cell_overhead = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 3
  %78 = ptrtoint ptr %cell_overhead to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cell_overhead, align 8
  %80 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %20, align 4
  %call66 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 16, ptr noundef nonnull %rate) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end62.nla_put_failure_crit_edge

if.end62.nla_put_failure_crit_edge:               ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_put_failure

if.end69:                                         ; preds = %if.end62
  %ecn = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 36
  %81 = ptrtoint ptr %ecn to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ecn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool70.not = icmp eq i32 %82, 0
  br i1 %tobool70.not, label %if.end69.if.end75_crit_edge, label %land.lhs.true

if.end69.if.end75_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

land.lhs.true:                                    ; preds = %if.end69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i156) #13
  %83 = ptrtoint ptr %tmp.i156 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %tmp.i156, align 4
  %call.i157 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i156) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i156) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool73.not = icmp eq i32 %call.i157, 0
  br i1 %tobool73.not, label %land.lhs.true.if.end75_crit_edge, label %land.lhs.true.nla_put_failure_crit_edge

land.lhs.true.nla_put_failure_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_put_failure

land.lhs.true.if.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

if.end75:                                         ; preds = %land.lhs.true.if.end75_crit_edge, %if.end69.if.end75_crit_edge
  %call76 = call fastcc i32 @dump_loss_model(ptr noundef %privdata.i, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77.not = icmp eq i32 %call76, 0
  br i1 %cmp77.not, label %if.end80, label %if.end75.nla_put_failure_crit_edge

if.end75.nla_put_failure_crit_edge:               ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_put_failure

if.end80:                                         ; preds = %if.end75
  %slot_config = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18
  %84 = ptrtoint ptr %slot_config to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %slot_config, align 8
  %max_delay = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 1
  %86 = ptrtoint ptr %max_delay to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %max_delay, align 8
  %or = or i64 %87, %85
  %dist_jitter = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 2, i32 0, i32 1, i32 2
  %88 = ptrtoint ptr %dist_jitter to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %dist_jitter, align 8
  %or83 = or i64 %or, %89
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or83)
  %tobool84.not = icmp eq i64 %or83, 0
  br i1 %tobool84.not, label %if.end80.if.end101_crit_edge, label %if.then85

if.end80.if.end101_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

if.then85:                                        ; preds = %if.end80
  %90 = call ptr @memcpy(ptr %slot, ptr %slot_config, i32 40)
  %91 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %92)
  %cmp87 = icmp eq i32 %92, 2147483647
  br i1 %cmp87, label %if.then89, label %if.then85.if.end91_crit_edge

if.then85.if.end91_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91

if.then89:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #15
  %93 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %22, align 8
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.then85.if.end91_crit_edge
  %94 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %95)
  %cmp92 = icmp eq i32 %95, 2147483647
  br i1 %cmp92, label %if.then94, label %if.end91.if.end96_crit_edge

if.end91.if.end96_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  %96 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %23, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.end91.if.end96_crit_edge
  %call97 = call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 40, ptr noundef nonnull %slot) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end96.if.end101_crit_edge, label %if.end96.nla_put_failure_crit_edge

if.end96.nla_put_failure_crit_edge:               ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_put_failure

if.end96.if.end101_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

if.end101:                                        ; preds = %if.end96.if.end101_crit_edge, %if.end80.if.end101_crit_edge
  %97 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %98 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv.i, ptr %1, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %100 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %len.i, align 4
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end96.nla_put_failure_crit_edge, %if.end75.nla_put_failure_crit_edge, %land.lhs.true.nla_put_failure_crit_edge, %if.end62.nla_put_failure_crit_edge, %if.then52.nla_put_failure_crit_edge, %if.end40.nla_put_failure_crit_edge, %if.end34.nla_put_failure_crit_edge, %if.end28.nla_put_failure_crit_edge, %if.end23.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %nla_put_failure.cleanup_crit_edge, label %if.then.i

nla_put_failure.cleanup_crit_edge:                ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %102 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %103, %1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !72

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 991, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %104 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i158 = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i159 = ptrtoint ptr %105 to i32
  %sub.ptr.sub.i160 = sub i32 %sub.ptr.lhs.cast.i158, %sub.ptr.rhs.cast.i159
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i160) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %nla_put_failure.cleanup_crit_edge, %if.end101
  %retval.0 = phi i32 [ %101, %if.end101 ], [ -1, %nla_put_failure.cleanup_crit_edge ], [ -1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %slot) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rate) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %corrupt) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reorder) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cor) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %qopt) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netem_graft(ptr noundef %sch, i32 noundef %arg, ptr noundef %new, ptr nocapture noundef writeonly %old, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %qstats.i.i.i = alloca %struct.gnet_stats_queue, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %entry.sch_tree_lock.exit.i_crit_edge

entry.sch_tree_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_lock.exit.i

if.else.i.i:                                      ; preds = %entry
  %dev_queue.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %2 = ptrtoint ptr %dev_queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_queue.i.i.i.i, align 8
  %qdisc_sleeping.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %qdisc_sleeping.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qdisc_sleeping.i.i.i.i, align 4
  %call1.i.i.i = tail call i32 @rtnl_is_locked() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %if.else.i.i.sch_tree_lock.exit.i_crit_edge

if.else.i.i.sch_tree_lock.exit.i_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_lock.exit.i

land.rhs.i.i.i:                                   ; preds = %if.else.i.i
  %.b41.i.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i.i, label %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, label %if.then.i.i.i, !prof !74

land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_lock.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #13
  br label %sch_tree_lock.exit.i

sch_tree_lock.exit.i:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, %if.else.i.i.sch_tree_lock.exit.i_crit_edge, %entry.sch_tree_lock.exit.i_crit_edge
  %.sink.i.i = phi ptr [ %sch, %entry.sch_tree_lock.exit.i_crit_edge ], [ %5, %if.else.i.i.sch_tree_lock.exit.i_crit_edge ], [ %5, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge ], [ %5, %if.then.i.i.i ]
  %lock.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i.i) #13
  %6 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qdisc, align 4
  store ptr %new, ptr %qdisc, align 4
  %cmp.not.i = icmp eq ptr %7, null
  br i1 %cmp.not.i, label %sch_tree_lock.exit.i.if.end.i_crit_edge, label %if.then.i

sch_tree_lock.exit.i.if.end.i_crit_edge:          ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i.i) #13
  %8 = call ptr @memset(ptr %qstats.i.i.i, i32 0, i32 20)
  %cpu_qstats.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %7, i32 0, i32 12
  %9 = ptrtoint ptr %cpu_qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpu_qstats.i.i.i, align 4
  %qstats1.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %7, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i.i, ptr noundef %10, ptr noundef %qstats1.i.i.i) #13
  %11 = ptrtoint ptr %qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qstats.i.i.i, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %7, i32 0, i32 17, i32 2
  %13 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qlen.i.i.i.i, align 8
  %add.i.i.i = add i32 %14, %12
  %backlog3.i.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %backlog3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %backlog3.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i.i) #13
  call void @qdisc_reset(ptr noundef nonnull %7) #13
  call void @qdisc_tree_reduce_backlog(ptr noundef nonnull %7, i32 noundef %add.i.i.i, i32 noundef %16) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sch_tree_lock.exit.i.if.end.i_crit_edge
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i.i, align 8
  %and.i6.i = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.i)
  %tobool.not.i7.i = icmp eq i32 %and.i6.i, 0
  br i1 %tobool.not.i7.i, label %if.else.i12.i, label %if.end.i.qdisc_replace.exit_crit_edge

if.end.i.qdisc_replace.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qdisc_replace.exit

if.else.i12.i:                                    ; preds = %if.end.i
  %dev_queue.i.i.i8.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %19 = ptrtoint ptr %dev_queue.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_queue.i.i.i8.i, align 8
  %qdisc_sleeping.i.i.i9.i = getelementptr inbounds %struct.netdev_queue, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %qdisc_sleeping.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %qdisc_sleeping.i.i.i9.i, align 4
  %call1.i.i10.i = call i32 @rtnl_is_locked() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i10.i)
  %tobool.not.i.i11.i = icmp eq i32 %call1.i.i10.i, 0
  br i1 %tobool.not.i.i11.i, label %land.rhs.i.i14.i, label %if.else.i12.i.qdisc_replace.exit_crit_edge

if.else.i12.i.qdisc_replace.exit_crit_edge:       ; preds = %if.else.i12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qdisc_replace.exit

land.rhs.i.i14.i:                                 ; preds = %if.else.i12.i
  %.b41.i.i13.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i13.i, label %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, label %if.then.i.i15.i, !prof !74

land.rhs.i.i14.i.qdisc_replace.exit_crit_edge:    ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qdisc_replace.exit

if.then.i.i15.i:                                  ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #13
  br label %qdisc_replace.exit

qdisc_replace.exit:                               ; preds = %if.then.i.i15.i, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, %if.else.i12.i.qdisc_replace.exit_crit_edge, %if.end.i.qdisc_replace.exit_crit_edge
  %.sink.i16.i = phi ptr [ %sch, %if.end.i.qdisc_replace.exit_crit_edge ], [ %22, %if.else.i12.i.qdisc_replace.exit_crit_edge ], [ %22, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge ], [ %22, %if.then.i.i15.i ]
  %lock.i.i.i17.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i16.i, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i17.i) #13
  %23 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %7, ptr %old, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @netem_leaf(ptr nocapture noundef readonly %sch, i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 4
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @netem_find(ptr nocapture noundef readnone %sch, i32 noundef %classid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netem_walk(ptr noundef %sch, ptr noundef %walker) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %walker to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %walker, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.qdisc_walker, ptr %walker, i32 0, i32 2
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %skip = getelementptr inbounds %struct.qdisc_walker, ptr %walker, i32 0, i32 1
  %4 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp slt i32 %3, %5
  br i1 %cmp.not, label %if.then.if.end5_crit_edge, label %if.then1

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then1:                                         ; preds = %if.then
  %fn = getelementptr inbounds %struct.qdisc_walker, ptr %walker, i32 0, i32 3
  %6 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fn, align 4
  %call = tail call i32 %7(ptr noundef %sch, i32 noundef 1, ptr noundef %walker) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.then1.if.end5_crit_edge

if.then1.if.end5_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %walker to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %walker, align 4
  br label %if.end7

if.end5:                                          ; preds = %if.then1.if.end5_crit_edge, %if.then.if.end5_crit_edge
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %count, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end5, %if.then3, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @netem_dump_class(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr nocapture noundef readnone %skb, ptr nocapture noundef %tcm) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cl)
  %cmp.not = icmp eq i32 %cl, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 4
  %2 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tcm_handle, align 4
  %or = or i32 %3, 1
  store i32 %or, ptr %tcm_handle, align 4
  %4 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qdisc, align 4
  %handle = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle, align 32
  %tcm_info = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 6
  %8 = ptrtoint ptr %tcm_info to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tcm_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_orphan_partial(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_last(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @netif_skb_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_gso_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__qdisc_calculate_pkt_len(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_schedule_range_ns(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_kfree_skbs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_dist_table(ptr nocapture noundef readonly %sch, ptr nocapture noundef %tbl, ptr nocapture noundef readonly %attr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %attr, align 2
  %conv.i = zext i16 %1 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %div28 = lshr i32 %sub.i, 1
  %add.ptr.i = getelementptr i8, ptr %attr, i32 4
  %2 = add nsw i32 %conv.i, -32774
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32768, i32 %2)
  %3 = icmp ult i32 %2, -32768
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = and i32 %sub.i, -2
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %4, i32 4) #13
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %spec.select.i, i32 noundef 3264, i32 noundef -1) #17
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div28, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i)
  %cmp729.not = icmp ult i32 %sub.i, 2
  br i1 %cmp729.not, label %if.end6.for.end_crit_edge, label %for.body.preheader

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %uglygep = getelementptr i8, ptr %call.i, i32 4
  %umax = call i32 @llvm.umax.i32(i32 %div28, i32 1)
  %6 = shl nuw i32 %umax, 1
  %7 = call ptr @memcpy(ptr %uglygep, ptr %add.ptr.i, i32 %6)
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %if.end6.for.end_crit_edge
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %8 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_queue.i.i, align 8
  %qdisc_sleeping.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %qdisc_sleeping.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qdisc_sleeping.i.i, align 4
  %call1.i = tail call i32 @rtnl_is_locked() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %for.end.qdisc_root_sleeping_lock.exit_crit_edge

for.end.qdisc_root_sleeping_lock.exit_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %qdisc_root_sleeping_lock.exit

land.rhs.i:                                       ; preds = %for.end
  %.b41.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i, label %land.rhs.i.qdisc_root_sleeping_lock.exit_crit_edge, label %if.then.i, !prof !74

land.rhs.i.qdisc_root_sleeping_lock.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qdisc_root_sleeping_lock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #13
  br label %qdisc_root_sleeping_lock.exit

qdisc_root_sleeping_lock.exit:                    ; preds = %if.then.i, %land.rhs.i.qdisc_root_sleeping_lock.exit_crit_edge, %for.end.qdisc_root_sleeping_lock.exit_crit_edge
  %lock.i.i = getelementptr inbounds %struct.Qdisc, ptr %11, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #13
  %12 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tbl, align 4
  store ptr %call.i, ptr %tbl, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #13
  tail call void @kvfree(ptr noundef %13) #13
  br label %cleanup

cleanup:                                          ; preds = %qdisc_root_sleeping_lock.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %qdisc_root_sleeping_lock.exit ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @reciprocal_value(ptr sret(%struct.reciprocal_value) align 4, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dump_loss_model(ptr nocapture noundef readonly %q, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  %gi = alloca %struct.tc_netem_gimodel, align 4
  %ge = alloca %struct.tc_netem_gemodel, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp56 = icmp eq ptr %1, null
  %cmp = select i1 %cmp.i, i1 true, i1 %cmp56
  br i1 %cmp, label %entry.cleanup25_crit_edge, label %if.end

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup25

if.end:                                           ; preds = %entry
  %loss_model = getelementptr inbounds %struct.netem_sched_data, ptr %q, i32 0, i32 26
  %2 = ptrtoint ptr %loss_model to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %loss_model, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %3, label %if.end.sw.epilog_crit_edge [
    i32 0, label %if.then.i.i
    i32 1, label %sw.bb1
    i32 2, label %sw.bb9
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then.i.i:                                      ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %6, %1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !72

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 991, i32 noundef 9, ptr noundef null) #13
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #13
  br label %cleanup25

sw.bb1:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %gi) #13
  %9 = getelementptr inbounds %struct.tc_netem_gimodel, ptr %gi, i32 0, i32 1
  %10 = getelementptr inbounds %struct.tc_netem_gimodel, ptr %gi, i32 0, i32 2
  %11 = getelementptr inbounds %struct.tc_netem_gimodel, ptr %gi, i32 0, i32 3
  %12 = getelementptr inbounds %struct.tc_netem_gimodel, ptr %gi, i32 0, i32 4
  %a1 = getelementptr inbounds %struct.netem_sched_data, ptr %q, i32 0, i32 29, i32 1
  %13 = ptrtoint ptr %a1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %a1, align 4
  %15 = ptrtoint ptr %gi to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %gi, align 4
  %a2 = getelementptr inbounds %struct.netem_sched_data, ptr %q, i32 0, i32 29, i32 2
  %16 = ptrtoint ptr %a2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %a2, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %9, align 4
  %a3 = getelementptr inbounds %struct.netem_sched_data, ptr %q, i32 0, i32 29, i32 3
  %19 = ptrtoint ptr %a3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %a3, align 4
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %10, align 4
  %a4 = getelementptr inbounds %struct.netem_sched_data, ptr %q, i32 0, i32 29, i32 4
  %22 = ptrtoint ptr %a4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %a4, align 4
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %11, align 4
  %a5 = getelementptr inbounds %struct.netem_sched_data, ptr %q, i32 0, i32 29, i32 5
  %25 = ptrtoint ptr %a5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %a5, align 4
  %27 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %12, align 4
  %call6 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 20, ptr noundef nonnull %gi) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %gi) #13
  br i1 %tobool.not, label %sw.bb1.sw.epilog_crit_edge, label %sw.bb1.if.then.i.i49_crit_edge

sw.bb1.if.then.i.i49_crit_edge:                   ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i49

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ge) #13
  %28 = getelementptr inbounds %struct.tc_netem_gemodel, ptr %ge, i32 0, i32 1
  %29 = getelementptr inbounds %struct.tc_netem_gemodel, ptr %ge, i32 0, i32 2
  %30 = getelementptr inbounds %struct.tc_netem_gemodel, ptr %ge, i32 0, i32 3
  %a111 = getelementptr inbounds %struct.netem_sched_data, ptr %q, i32 0, i32 29, i32 1
  %31 = ptrtoint ptr %a111 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %a111, align 4
  %33 = ptrtoint ptr %ge to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %ge, align 4
  %a213 = getelementptr inbounds %struct.netem_sched_data, ptr %q, i32 0, i32 29, i32 2
  %34 = ptrtoint ptr %a213 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %a213, align 4
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %28, align 4
  %a315 = getelementptr inbounds %struct.netem_sched_data, ptr %q, i32 0, i32 29, i32 3
  %37 = ptrtoint ptr %a315 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %a315, align 4
  %39 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %29, align 4
  %a417 = getelementptr inbounds %struct.netem_sched_data, ptr %q, i32 0, i32 29, i32 4
  %40 = ptrtoint ptr %a417 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %a417, align 4
  %42 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %30, align 4
  %call18 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 16, ptr noundef nonnull %ge) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ge) #13
  br i1 %tobool19.not, label %sw.bb9.sw.epilog_crit_edge, label %sw.bb9.if.then.i.i49_crit_edge

sw.bb9.if.then.i.i49_crit_edge:                   ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i49

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %43 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i, ptr %1, align 2
  br label %cleanup25

if.then.i.i49:                                    ; preds = %sw.bb9.if.then.i.i49_crit_edge, %sw.bb1.if.then.i.i49_crit_edge
  %data.i.i47 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %46 = ptrtoint ptr %data.i.i47 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i.i47, align 4
  %cmp.i.i48 = icmp ugt ptr %47, %1
  br i1 %cmp.i.i48, label %do.end.i.i50, label %if.then.i.i49.if.end.i.i54_crit_edge, !prof !72

if.then.i.i49.if.end.i.i54_crit_edge:             ; preds = %if.then.i.i49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i54

do.end.i.i50:                                     ; preds = %if.then.i.i49
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 991, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i.i54

if.end.i.i54:                                     ; preds = %do.end.i.i50, %if.then.i.i49.if.end.i.i54_crit_edge
  %48 = ptrtoint ptr %data.i.i47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i.i47, align 4
  %sub.ptr.lhs.cast.i.i51 = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i52 = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i.i53 = sub i32 %sub.ptr.lhs.cast.i.i51, %sub.ptr.rhs.cast.i.i52
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i53) #13
  br label %cleanup25

cleanup25:                                        ; preds = %if.end.i.i54, %sw.epilog, %nla_nest_cancel.exit, %entry.cleanup25_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 0, %nla_nest_cancel.exit ], [ -1, %entry.cleanup25_crit_edge ], [ -1, %if.end.i.i54 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !17, !19, !20, !22, !24, !26, !27, !29, !30, !31, !32, !33, !35, !37, !38, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61}
!llvm.named.register.sp = !{!62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_sch_netem__511_1299_netem_module_init6, !1, !"__initcall__kmod_sch_netem__511_1299_netem_module_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_netem.c", i32 1299, i32 1}
!2 = !{ptr @__exitcall_netem_module_exit, !3, !"__exitcall_netem_module_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_netem.c", i32 1300, i32 1}
!4 = !{ptr @__UNIQUE_ID_file512, !5, !"__UNIQUE_ID_file512", i1 false, i1 false}
!5 = !{!"../net/sched/sch_netem.c", i32 1301, i32 1}
!6 = !{ptr @__UNIQUE_ID_license513, !5, !"__UNIQUE_ID_license513", i1 false, i1 false}
!7 = !{ptr @netem_qdisc_ops, !8, !"netem_qdisc_ops", i1 false, i1 false}
!8 = !{!"../net/sched/sch_netem.c", i32 1274, i32 25}
!9 = !{ptr @netem_class_ops, !10, !"netem_class_ops", i1 false, i1 false}
!10 = !{!"../net/sched/sch_netem.c", i32 1266, i32 37}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/net/sch_generic.h", i32 565, i32 9}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/skbuff.h", i32 1846, i32 2}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/net/sch_generic.h", i32 835, i32 34}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/sched/sch_netem.c", i32 1073, i32 3}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @netem_init._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @netem_init._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/net/sch_generic.h", i32 1165, i32 2}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/sched/sch_netem.c", i32 940, i32 3}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @parse_attr._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @parse_attr._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @netem_policy, !41, !"netem_policy", i1 false, i1 false}
!41 = !{!"../net/sched/sch_netem.c", i32 921, i32 32}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/sched/sch_netem.c", i32 880, i32 5}
!44 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @get_loss_clg._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @get_loss_clg._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/sched/sch_netem.c", i32 899, i32 5}
!49 = !{ptr @get_loss_clg._entry.13, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @get_loss_clg._entry_ptr.15, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/sched/sch_netem.c", i32 913, i32 4}
!53 = !{ptr @get_loss_clg._entry.16, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @get_loss_clg._entry_ptr.18, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/net/netlink.h", i32 991, i32 3}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/sched/sch_netem.c", i32 1292, i32 2}
!59 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @netem_module_init._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @netem_module_init._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{!"sp"}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{!"auto-init"}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{i64 2149765536}
!76 = !{i64 2149770468}
!77 = !{i64 2149792180}
!78 = !{i64 2149797072}
!79 = !{i64 2149873529}
!80 = !{i64 2149873854}
