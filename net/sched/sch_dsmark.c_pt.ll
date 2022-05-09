; ModuleID = '/llk/IR_all_yes/net/sched/sch_dsmark.c_pt.bc'
source_filename = "../net/sched/sch_dsmark.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Qdisc_class_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, [64 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [8 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, ptr, [28 x i8], [0 x i32] }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.nla_policy = type { i8, i8, i16, %union.anon.48 }
%union.anon.48 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vlan_hdr = type { i16, i16 }
%struct.tcf_result = type { %union.anon.141 }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.112, [48 x i8], %union.anon.113, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.115, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.112 = type { i64 }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { i32, ptr }
%union.anon.115 = type { %struct.anon.116 }
%struct.anon.116 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.117, i32, i32, i32, i16, i16, %union.anon.119, i32, %union.anon.120, %union.anon.121, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.117 = type { i32 }
%union.anon.119 = type { i32 }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i16 }
%struct.dsmark_qdisc_data = type { ptr, ptr, ptr, ptr, i16, i8, i32, [16 x %struct.mask_value] }
%struct.mask_value = type { i8, i8 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.qdisc_walker = type { i32, i32, i32, ptr }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }

@dsmark_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr @dsmark_class_ops, [16 x i8] c"dsmark\00\00\00\00\00\00\00\00\00\00", i32 56, i32 0, ptr @dsmark_enqueue, ptr @dsmark_dequeue, ptr @dsmark_peek, ptr @dsmark_init, ptr @dsmark_reset, ptr @dsmark_destroy, ptr null, ptr null, ptr null, ptr null, ptr @dsmark_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_dsmark__515_521_dsmark_module_init6 = internal global ptr @dsmark_module_init, section ".initcall6.init", align 4
@__exitcall_dsmark_module_exit = internal global ptr @dsmark_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file516 = internal constant [37 x i8] c"sch_dsmark.file=net/sched/sch_dsmark\00", section ".modinfo", align 1
@__UNIQUE_ID_license517 = internal constant [23 x i8] c"sch_dsmark.license=GPL\00", section ".modinfo", align 1
@dsmark_class_ops = internal constant { %struct.Qdisc_class_ops, [40 x i8] } { %struct.Qdisc_class_ops { i32 0, ptr null, ptr @dsmark_graft, ptr @dsmark_leaf, ptr null, ptr @dsmark_find, ptr @dsmark_change, ptr @dsmark_delete, ptr @dsmark_walk, ptr @dsmark_tcf_block, ptr @dsmark_bind_filter, ptr @dsmark_unbind_filter, ptr @dsmark_dump_class, ptr null }, [40 x i8] zeroinitializer }, align 32
@dsmark_graft.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sch_dsmark\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsmark_graft\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/sched/sch_dsmark.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(sch %p,[qdisc %p],new %p,old %p)\0A\00", [59 x i8] zeroinitializer }, align 32
@pfifo_qdisc_ops = external dso_local global %struct.Qdisc_ops, align 4
@noop_qdisc = external dso_local global %struct.Qdisc, align 128
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@dsmark_change.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dsmark_change\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s(sch %p,[qdisc %p],classid %x,parent %x), arg 0x%lx\0A\00", [41 x i8] zeroinitializer }, align 32
@dsmark_policy = internal constant { [6 x %struct.nla_policy], [48 x i8] } { [6 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@dsmark_walk.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dsmark_walk\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(sch %p,[qdisc %p],walker %p)\0A\00", [63 x i8] zeroinitializer }, align 32
@dsmark_bind_filter.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dsmark_bind_filter\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(sch %p,[qdisc %p],classid %x)\0A\00", [62 x i8] zeroinitializer }, align 32
@dsmark_dump_class.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dsmark_dump_class\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s(sch %p,[qdisc %p],class %ld\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@dsmark_enqueue.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dsmark_enqueue\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(skb %p,sch %p,[qdisc %p])\0A\00", [34 x i8] zeroinitializer }, align 32
@dsmark_enqueue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@dsmark_enqueue.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.18, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"result %d class 0x%04x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@qdisc_calculate_pkt_len.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dsmark_dequeue.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dsmark_dequeue\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(sch %p,[qdisc %p])\0A\00", [41 x i8] zeroinitializer }, align 32
@dsmark_dequeue.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.22, i8 0, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"index %d->%d\0A\00", [18 x i8] zeroinitializer }, align 32
@dsmark_dequeue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.2, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: unsupported protocol %d\0A\00", [33 x i8] zeroinitializer }, align 32
@dsmark_dequeue._entry_ptr = internal global ptr @dsmark_dequeue._entry, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@dsmark_peek.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.21, i8 0, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dsmark_peek\00", [20 x i8] zeroinitializer }, align 32
@dsmark_init.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dsmark_init\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(sch %p,[qdisc %p],opt %p)\0A\00", [34 x i8] zeroinitializer }, align 32
@dsmark_init.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.28, i8 0, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: qdisc %p\0A\00", [18 x i8] zeroinitializer }, align 32
@dsmark_reset.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.21, i8 0, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsmark_reset\00", [19 x i8] zeroinitializer }, align 32
@dsmark_destroy.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.21, i8 0, i8 105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dsmark_destroy\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.33 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 4, i64 5, i64 8]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"dsmark_class_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 482, i32 37 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 70, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 596, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 125, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [14 x i8] c"dsmark_policy\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 108, i32 32 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 172, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 98, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 434, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 991, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 209, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 244, i32 26 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 247, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 598, i32 8 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 294, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 305, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 323, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 271, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 335, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 350, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 398, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 409, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [26 x i8] c"../net/sched/sch_dsmark.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 420, i32 2 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_file516, ptr @__UNIQUE_ID_license517, ptr @__exitcall_dsmark_module_exit, ptr @__initcall__kmod_sch_dsmark__515_521_dsmark_module_init6, ptr @dsmark_dequeue._entry, ptr @dsmark_dequeue._entry_ptr, ptr @dsmark_module_exit, ptr @dsmark_class_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @dsmark_policy, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsmark_class_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsmark_policy to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsmark_dequeue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dsmark_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @dsmark_qdisc_ops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dsmark_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @dsmark_qdisc_ops) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsmark_enqueue(ptr noundef %skb, ptr noundef %sch, ptr noundef %to_free) #2 align 64 {
entry:
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  %res = alloca %struct.tcf_result, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i.i, align 4
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsmark_enqueue.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsmark_enqueue, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dsmark_enqueue.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, ptr noundef %skb, ptr noundef %sch, ptr noundef %privdata.i) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %set_tc_index = getelementptr inbounds %struct.dsmark_qdisc_data, ptr %privdata.i, i32 0, i32 5
  %2 = ptrtoint ptr %set_tc_index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %set_tc_index, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %do.end.if.end33_crit_edge, label %if.then6

do.end.if.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then6:                                         ; preds = %do.end
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %6 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %10 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %protocol.i.i, align 8
  %mac_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %12 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i.i = zext i16 %13 to i32
  %14 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i16 %11, label %if.then6.skb_protocol.exit_crit_edge [
    i16 -30552, label %if.then6.if.then.i.i.i_crit_edge
    i16 -32512, label %if.then6.if.then.i.i.i_crit_edge235
  ]

if.then6.if.then.i.i.i_crit_edge235:              ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.then6.if.then.i.i.i_crit_edge:                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.then6.skb_protocol.exit_crit_edge:             ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_protocol.exit

if.then.i.i.i:                                    ; preds = %if.then6.if.then.i.i.i_crit_edge, %if.then6.if.then.i.i.i_crit_edge235
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i.i.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %13)
  %cmp.i.i.i = icmp ult i16 %13, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !96

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 598, i32 noundef 9, ptr noundef null) #11
  br label %if.end33.sink.split

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %15 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i = icmp eq ptr %skb, null
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #11
  %16 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !97
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %15, align 2, !annotation !97
  %18 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %22 = add i32 %vlan_depth.1.i.i.i, %21
  %sub.i1.i.i.i.i = sub i32 %19, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !98

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %24, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !96
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %25 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !96
  br i1 %25, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !96

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #11
  br label %if.end33.sink.split

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #11
  %28 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %27, label %do.cond42.i.i.i.skb_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge236
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge236: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.skb_protocol.exit_crit_edge:      ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_protocol.exit

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge236
  %add.i.i.i = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

skb_protocol.exit:                                ; preds = %do.cond42.i.i.i.skb_protocol.exit_crit_edge, %if.then6.skb_protocol.exit_crit_edge
  %retval.2.i.i.i = phi i16 [ %11, %if.then6.skb_protocol.exit_crit_edge ], [ %27, %do.cond42.i.i.i.skb_protocol.exit_crit_edge ]
  %29 = zext i16 %retval.2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %retval.2.i.i.i, label %skb_protocol.exit.if.end33.sink.split_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb18
  ]

skb_protocol.exit.if.end33.sink.split_crit_edge:  ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.sink.split

sw.bb:                                            ; preds = %skb_protocol.exit
  %add = add i32 %sub.ptr.sub.i, 20
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %30 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %32 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %31, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.lor.lhs.false_crit_edge, !prof !96

sw.bb.lor.lhs.false_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %add)
  %cmp3.i = icmp ult i32 %31, %add
  br i1 %cmp3.i, label %if.end.i.drop_crit_edge, label %pskb_may_pull.exit, !prof !96

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #11
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_crit_edge, label %pskb_may_pull.exit.lor.lhs.false_crit_edge

pskb_may_pull.exit.lor.lhs.false_crit_edge:       ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

pskb_may_pull.exit.drop_crit_edge:                ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

lor.lhs.false:                                    ; preds = %pskb_may_pull.exit.lor.lhs.false_crit_edge, %sw.bb.lor.lhs.false_crit_edge
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %34 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %lor.lhs.false.if.end13_crit_edge, label %skb_cloned.exit.i

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

skb_cloned.exit.i:                                ; preds = %lor.lhs.false
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %35 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %36, i32 0, i32 10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #11
  %37 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %38, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.if.end13_crit_edge, label %land.lhs.true.i

skb_cloned.exit.i.if.end13_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

land.lhs.true.i:                                  ; preds = %skb_cloned.exit.i
  %39 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i159 = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i159, label %land.lhs.true.i.skb_clone_writable.exit.i_crit_edge, label %skb_header_cloned.exit.i.i

land.lhs.true.i.skb_clone_writable.exit.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_clone_writable.exit.i

skb_header_cloned.exit.i.i:                       ; preds = %land.lhs.true.i
  %40 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %41, i32 0, i32 10
  %call.i.i.i.i.i160 = call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #11
  %42 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %and.i.i.i = and i32 %43, 65535
  %shr.i.i.i = ashr i32 %43, 16
  %sub.i.i.i161 = sub nsw i32 %and.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i161)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i161, 1
  br i1 %cmp.i.not.i.i, label %skb_header_cloned.exit.i.i.skb_clone_writable.exit.i_crit_edge, label %skb_header_cloned.exit.i.i.skb_try_make_writable.exit_crit_edge

skb_header_cloned.exit.i.i.skb_try_make_writable.exit_crit_edge: ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_try_make_writable.exit

skb_header_cloned.exit.i.i.skb_clone_writable.exit.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_clone_writable.exit.i

skb_clone_writable.exit.i:                        ; preds = %skb_header_cloned.exit.i.i.skb_clone_writable.exit.i_crit_edge, %land.lhs.true.i.skb_clone_writable.exit.i_crit_edge
  %44 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i, align 4
  %46 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %45 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %47 to i32
  %sub.ptr.sub.i.i.i = add i32 %add, %sub.ptr.lhs.cast.i.i.i
  %add.i.i = sub i32 %sub.ptr.sub.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %hdr_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 9
  %48 = ptrtoint ptr %hdr_len.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %hdr_len.i.i, align 2
  %conv.i.i162 = zext i16 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv.i.i162)
  %cmp.i7.not.i = icmp ugt i32 %add.i.i, %conv.i.i162
  br i1 %cmp.i7.not.i, label %skb_clone_writable.exit.i.skb_try_make_writable.exit_crit_edge, label %skb_clone_writable.exit.i.if.end13_crit_edge

skb_clone_writable.exit.i.if.end13_crit_edge:     ; preds = %skb_clone_writable.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

skb_clone_writable.exit.i.skb_try_make_writable.exit_crit_edge: ; preds = %skb_clone_writable.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_try_make_writable.exit

skb_try_make_writable.exit:                       ; preds = %skb_clone_writable.exit.i.skb_try_make_writable.exit_crit_edge, %skb_header_cloned.exit.i.i.skb_try_make_writable.exit_crit_edge
  %call3.i = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.i.not = icmp eq i32 %call3.i, 0
  br i1 %tobool4.i.not, label %skb_try_make_writable.exit.if.end13_crit_edge, label %skb_try_make_writable.exit.drop_crit_edge

skb_try_make_writable.exit.drop_crit_edge:        ; preds = %skb_try_make_writable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

skb_try_make_writable.exit.if.end13_crit_edge:    ; preds = %skb_try_make_writable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end13:                                         ; preds = %skb_try_make_writable.exit.if.end13_crit_edge, %skb_clone_writable.exit.i.if.end13_crit_edge, %skb_cloned.exit.i.if.end13_crit_edge, %lor.lhs.false.if.end13_crit_edge
  %50 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %head.i.i, align 8
  %52 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i165 = zext i16 %53 to i32
  %add.ptr.i.i166 = getelementptr i8, ptr %51, i32 %conv.i.i165
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i166, i32 0, i32 1
  %54 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %tos.i, align 1
  %56 = and i8 %55, -4
  %conv17 = zext i8 %56 to i16
  br label %if.end33.sink.split

sw.bb18:                                          ; preds = %skb_protocol.exit
  %add19 = add i32 %sub.ptr.sub.i, 40
  %len.i.i167 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %57 = ptrtoint ptr %len.i.i167 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len.i.i167, align 4
  %data_len.i.i168 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %59 = ptrtoint ptr %data_len.i.i168 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %data_len.i.i168, align 8
  %sub.i.i169 = sub i32 %58, %60
  call void @__sanitizer_cov_trace_cmp4(i32 %add19, i32 %sub.i.i169)
  %cmp.not.i170 = icmp ugt i32 %add19, %sub.i.i169
  br i1 %cmp.not.i170, label %if.end.i172, label %sw.bb18.lor.lhs.false21_crit_edge, !prof !96

sw.bb18.lor.lhs.false21_crit_edge:                ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false21

if.end.i172:                                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %add19)
  %cmp3.i171 = icmp ult i32 %58, %add19
  br i1 %cmp3.i171, label %if.end.i172.drop_crit_edge, label %pskb_may_pull.exit178, !prof !96

if.end.i172.drop_crit_edge:                       ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

pskb_may_pull.exit178:                            ; preds = %if.end.i172
  %sub.i173 = sub i32 %add19, %sub.i.i169
  %call13.i174 = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i173) #11
  %cmp14.i175.not = icmp eq ptr %call13.i174, null
  br i1 %cmp14.i175.not, label %pskb_may_pull.exit178.drop_crit_edge, label %pskb_may_pull.exit178.lor.lhs.false21_crit_edge

pskb_may_pull.exit178.lor.lhs.false21_crit_edge:  ; preds = %pskb_may_pull.exit178
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false21

pskb_may_pull.exit178.drop_crit_edge:             ; preds = %pskb_may_pull.exit178
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

lor.lhs.false21:                                  ; preds = %pskb_may_pull.exit178.lor.lhs.false21_crit_edge, %sw.bb18.lor.lhs.false21_crit_edge
  %cloned.i.i179 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %61 = ptrtoint ptr %cloned.i.i179 to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load.i.i180 = load i8, ptr %cloned.i.i179, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i180)
  %tobool.not.i.i181 = icmp sgt i8 %bf.load.i.i180, -1
  br i1 %tobool.not.i.i181, label %lor.lhs.false21.if.end25_crit_edge, label %skb_cloned.exit.i187

lor.lhs.false21.if.end25_crit_edge:               ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

skb_cloned.exit.i187:                             ; preds = %lor.lhs.false21
  %end.i.i.i182 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %62 = ptrtoint ptr %end.i.i.i182 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %end.i.i.i182, align 4
  %dataref.i.i183 = getelementptr inbounds %struct.skb_shared_info, ptr %63, i32 0, i32 10
  %call.i.i.i.i184 = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i183, i32 noundef 4) #11
  %64 = ptrtoint ptr %dataref.i.i183 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %dataref.i.i183, align 4
  %and.i.i185 = and i32 %65, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i185)
  %cmp.i.not.i186 = icmp eq i32 %and.i.i185, 1
  br i1 %cmp.i.not.i186, label %skb_cloned.exit.i187.if.end25_crit_edge, label %land.lhs.true.i190

skb_cloned.exit.i187.if.end25_crit_edge:          ; preds = %skb_cloned.exit.i187
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true.i190:                               ; preds = %skb_cloned.exit.i187
  %66 = ptrtoint ptr %cloned.i.i179 to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load.i.i.i188 = load i8, ptr %cloned.i.i179, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i188)
  %tobool.not.i.i.i189 = icmp sgt i8 %bf.load.i.i.i188, -1
  br i1 %tobool.not.i.i.i189, label %land.lhs.true.i190.skb_clone_writable.exit.i207_crit_edge, label %skb_header_cloned.exit.i.i197

land.lhs.true.i190.skb_clone_writable.exit.i207_crit_edge: ; preds = %land.lhs.true.i190
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_clone_writable.exit.i207

skb_header_cloned.exit.i.i197:                    ; preds = %land.lhs.true.i190
  %67 = ptrtoint ptr %end.i.i.i182 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %end.i.i.i182, align 4
  %dataref1.i.i.i191 = getelementptr inbounds %struct.skb_shared_info, ptr %68, i32 0, i32 10
  %call.i.i.i.i.i192 = call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i191, i32 noundef 4) #11
  %69 = ptrtoint ptr %dataref1.i.i.i191 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %dataref1.i.i.i191, align 4
  %and.i.i.i193 = and i32 %70, 65535
  %shr.i.i.i194 = ashr i32 %70, 16
  %sub.i.i.i195 = sub nsw i32 %and.i.i.i193, %shr.i.i.i194
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i195)
  %cmp.i.not.i.i196 = icmp eq i32 %sub.i.i.i195, 1
  br i1 %cmp.i.not.i.i196, label %skb_header_cloned.exit.i.i197.skb_clone_writable.exit.i207_crit_edge, label %skb_header_cloned.exit.i.i197.skb_try_make_writable.exit212_crit_edge

skb_header_cloned.exit.i.i197.skb_try_make_writable.exit212_crit_edge: ; preds = %skb_header_cloned.exit.i.i197
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_try_make_writable.exit212

skb_header_cloned.exit.i.i197.skb_clone_writable.exit.i207_crit_edge: ; preds = %skb_header_cloned.exit.i.i197
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_clone_writable.exit.i207

skb_clone_writable.exit.i207:                     ; preds = %skb_header_cloned.exit.i.i197.skb_clone_writable.exit.i207_crit_edge, %land.lhs.true.i190.skb_clone_writable.exit.i207_crit_edge
  %71 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i, align 4
  %73 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i200 = ptrtoint ptr %72 to i32
  %sub.ptr.rhs.cast.i.i.i201 = ptrtoint ptr %74 to i32
  %sub.ptr.sub.i.i.i202 = add i32 %add19, %sub.ptr.lhs.cast.i.i.i200
  %add.i.i203 = sub i32 %sub.ptr.sub.i.i.i202, %sub.ptr.rhs.cast.i.i.i201
  %hdr_len.i.i204 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 9
  %75 = ptrtoint ptr %hdr_len.i.i204 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %hdr_len.i.i204, align 2
  %conv.i.i205 = zext i16 %76 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i203, i32 %conv.i.i205)
  %cmp.i7.not.i206 = icmp ugt i32 %add.i.i203, %conv.i.i205
  br i1 %cmp.i7.not.i206, label %skb_clone_writable.exit.i207.skb_try_make_writable.exit212_crit_edge, label %skb_clone_writable.exit.i207.if.end25_crit_edge

skb_clone_writable.exit.i207.if.end25_crit_edge:  ; preds = %skb_clone_writable.exit.i207
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

skb_clone_writable.exit.i207.skb_try_make_writable.exit212_crit_edge: ; preds = %skb_clone_writable.exit.i207
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_try_make_writable.exit212

skb_try_make_writable.exit212:                    ; preds = %skb_clone_writable.exit.i207.skb_try_make_writable.exit212_crit_edge, %skb_header_cloned.exit.i.i197.skb_try_make_writable.exit212_crit_edge
  %call3.i208 = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i208)
  %tobool4.i209.not = icmp eq i32 %call3.i208, 0
  br i1 %tobool4.i209.not, label %skb_try_make_writable.exit212.if.end25_crit_edge, label %skb_try_make_writable.exit212.drop_crit_edge

skb_try_make_writable.exit212.drop_crit_edge:     ; preds = %skb_try_make_writable.exit212
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

skb_try_make_writable.exit212.if.end25_crit_edge: ; preds = %skb_try_make_writable.exit212
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end25:                                         ; preds = %skb_try_make_writable.exit212.if.end25_crit_edge, %skb_clone_writable.exit.i207.if.end25_crit_edge, %skb_cloned.exit.i187.if.end25_crit_edge, %lor.lhs.false21.if.end25_crit_edge
  %77 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %head.i.i, align 8
  %79 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i215 = zext i16 %80 to i32
  %add.ptr.i.i216 = getelementptr i8, ptr %78, i32 %conv.i.i215
  %81 = ptrtoint ptr %add.ptr.i.i216 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %add.ptr.i.i216, align 2
  %83 = lshr i16 %82, 4
  %conv30 = and i16 %83, 252
  br label %if.end33.sink.split

if.end33.sink.split:                              ; preds = %if.end25, %if.end13, %skb_protocol.exit.if.end33.sink.split_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i
  %.sink = phi i16 [ %conv30, %if.end25 ], [ %conv17, %if.end13 ], [ 0, %cleanup.thread.i.i.i ], [ 0, %do.end.i.i.i ], [ 0, %skb_protocol.exit.if.end33.sink.split_crit_edge ]
  %tc_index32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 4
  %84 = ptrtoint ptr %tc_index32 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %.sink, ptr %tc_index32, align 2
  br label %if.end33

if.end33:                                         ; preds = %if.end33.sink.split, %do.end.if.end33_crit_edge
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %85 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %priority, align 4
  %and34 = and i32 %86, -65536
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %87 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %handle, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %and34, i32 %88)
  %cmp = icmp eq i32 %and34, %88
  br i1 %cmp, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %conv39 = trunc i32 %86 to i16
  %tc_index40 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 4
  %89 = ptrtoint ptr %tc_index40 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv39, ptr %tc_index40, align 2
  br label %if.end95

if.else:                                          ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res) #11
  %90 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %res, align 4, !annotation !97
  %91 = getelementptr inbounds %struct.anon.142, ptr %res, i32 0, i32 1
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -1, ptr %91, align 4, !annotation !97
  %filter_list = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %93 = ptrtoint ptr %filter_list to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile ptr, ptr %filter_list, align 4
  %call46 = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %land.lhs.true, label %if.else.do.end55_crit_edge

if.else.do.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55

land.lhs.true:                                    ; preds = %if.else
  %call48 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true.do.end55_crit_edge, label %land.lhs.true50

land.lhs.true.do.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55

land.lhs.true50:                                  ; preds = %land.lhs.true
  %.b154 = load i1, ptr @dsmark_enqueue.__warned, align 1
  br i1 %.b154, label %land.lhs.true50.do.end55_crit_edge, label %if.then52

land.lhs.true50.do.end55_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55

if.then52:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @dsmark_enqueue.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 244, ptr noundef nonnull @.str.17) #11
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %land.lhs.true50.do.end55_crit_edge, %land.lhs.true.do.end55_crit_edge, %if.else.do.end55_crit_edge
  %call57 = call i32 @tcf_classify(ptr noundef %skb, ptr noundef null, ptr noundef %94, ptr noundef nonnull %res, i1 noundef zeroext false) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsmark_enqueue.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsmark_enqueue, %if.then70)) #11
          to label %do.end73 [label %if.then70], !srcloc !95

if.then70:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #13
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %91, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dsmark_enqueue.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.18, i32 noundef %call57, i32 noundef %96) #11
  br label %do.end73

do.end73:                                         ; preds = %if.then70, %do.end55
  %97 = zext i32 %call57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call57, label %sw.default81 [
    i32 5, label %do.end73.cleanup90.thread231_crit_edge
    i32 4, label %do.end73.cleanup90.thread231_crit_edge237
    i32 8, label %do.end73.cleanup90.thread231_crit_edge238
    i32 2, label %cleanup90
    i32 0, label %sw.bb76
  ]

do.end73.cleanup90.thread231_crit_edge238:        ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup90.thread231

do.end73.cleanup90.thread231_crit_edge237:        ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup90.thread231

do.end73.cleanup90.thread231_crit_edge:           ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup90.thread231

cleanup90.thread231:                              ; preds = %do.end73.cleanup90.thread231_crit_edge, %do.end73.cleanup90.thread231_crit_edge237, %do.end73.cleanup90.thread231_crit_edge238
  %98 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %to_free, align 4
  %100 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res) #11
  br label %cleanup108

sw.bb76:                                          ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #13
  %101 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %91, align 4
  br label %cleanup90.thread.sink.split

sw.default81:                                     ; preds = %do.end73
  %default_index = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %103 = ptrtoint ptr %default_index to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %default_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %104)
  %cmp82.not = icmp eq i32 %104, 65536
  br i1 %cmp82.not, label %sw.default81.cleanup90.thread_crit_edge, label %sw.default81.cleanup90.thread.sink.split_crit_edge

sw.default81.cleanup90.thread.sink.split_crit_edge: ; preds = %sw.default81
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup90.thread.sink.split

sw.default81.cleanup90.thread_crit_edge:          ; preds = %sw.default81
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup90.thread

cleanup90.thread.sink.split:                      ; preds = %sw.default81.cleanup90.thread.sink.split_crit_edge, %sw.bb76
  %.sink234 = phi i32 [ %102, %sw.bb76 ], [ %104, %sw.default81.cleanup90.thread.sink.split_crit_edge ]
  %conv86 = trunc i32 %.sink234 to i16
  %tc_index87 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 4
  %105 = ptrtoint ptr %tc_index87 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv86, ptr %tc_index87, align 2
  br label %cleanup90.thread

cleanup90.thread:                                 ; preds = %cleanup90.thread.sink.split, %sw.default81.cleanup90.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res) #11
  br label %if.end95

cleanup90:                                        ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res) #11
  br label %drop

if.end95:                                         ; preds = %cleanup90.thread, %if.then36
  %106 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %privdata.i, align 4
  %stab1.i.i = getelementptr inbounds %struct.Qdisc, ptr %107, i32 0, i32 5
  %108 = ptrtoint ptr %stab1.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile ptr, ptr %stab1.i.i, align 4
  %call.i.i = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i217 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i217, label %land.lhs.true.i.i, label %if.end95.do.end8.i.i_crit_edge

if.end95.do.end8.i.i_crit_edge:                   ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %if.end95
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b14.i.i = load i1, ptr @qdisc_calculate_pkt_len.__warned, align 1
  br i1 %.b14.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @qdisc_calculate_pkt_len.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 835, ptr noundef nonnull @.str.17) #11
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %if.end95.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %109, null
  br i1 %tobool10.not.i.i, label %do.end8.i.i.qdisc_enqueue.exit_crit_edge, label %if.then11.i.i

do.end8.i.i.qdisc_enqueue.exit_crit_edge:         ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_enqueue.exit

if.then11.i.i:                                    ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__qdisc_calculate_pkt_len(ptr noundef %skb, ptr noundef nonnull %109) #11
  br label %qdisc_enqueue.exit

qdisc_enqueue.exit:                               ; preds = %if.then11.i.i, %do.end8.i.i.qdisc_enqueue.exit_crit_edge
  %110 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %107, align 128
  %call.i = call i32 %111(ptr noundef %skb, ptr noundef %107, ptr noundef %to_free) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp97.not = icmp eq i32 %call.i, 0
  br i1 %cmp97.not, label %if.end104, label %if.then99

if.then99:                                        ; preds = %qdisc_enqueue.exit
  %and100 = and i32 %call.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.then102, label %if.then99.cleanup108_crit_edge

if.then99.cleanup108_crit_edge:                   ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup108

if.then102:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #13
  %drops.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %112 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %drops.i.i, align 4
  %inc.i.i = add i32 %113, 1
  store i32 %inc.i.i, ptr %drops.i.i, align 4
  br label %cleanup108

if.end104:                                        ; preds = %qdisc_enqueue.exit
  call void @__sanitizer_cov_trace_pc() #13
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %114 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %backlog, align 4
  %add105 = add i32 %115, %1
  store i32 %add105, ptr %backlog, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %116 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %qlen, align 8
  %inc = add i32 %117, 1
  store i32 %inc, ptr %qlen, align 8
  br label %cleanup108

drop:                                             ; preds = %cleanup90, %skb_try_make_writable.exit212.drop_crit_edge, %pskb_may_pull.exit178.drop_crit_edge, %if.end.i172.drop_crit_edge, %skb_try_make_writable.exit.drop_crit_edge, %pskb_may_pull.exit.drop_crit_edge, %if.end.i.drop_crit_edge
  %118 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %to_free, align 4
  %120 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %119, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %121 = ptrtoint ptr %drops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %drops.i.i.i, align 4
  %inc.i.i.i = add i32 %122, 1
  store i32 %inc.i.i.i, ptr %drops.i.i.i, align 4
  br label %cleanup108

cleanup108:                                       ; preds = %drop, %if.end104, %if.then102, %if.then99.cleanup108_crit_edge, %cleanup90.thread231
  %retval.1 = phi i32 [ 131072, %drop ], [ 0, %if.end104 ], [ %call.i, %if.then99.cleanup108_crit_edge ], [ %call.i, %if.then102 ], [ 65536, %cleanup90.thread231 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dsmark_dequeue(ptr noundef %sch) #2 align 64 {
entry:
  %vhdr.i.i.i104 = alloca %struct.vlan_hdr, align 2
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsmark_dequeue.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsmark_dequeue, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dsmark_dequeue.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, ptr noundef %sch, ptr noundef %privdata.i) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %privdata.i, align 4
  %gso_skb.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %gso_skb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gso_skb.i, align 4
  %cmp.i.i = icmp eq ptr %3, %gso_skb.i
  %tobool.not31.i = icmp eq ptr %3, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not31.i
  br i1 %tobool.not.i, label %qdisc_dequeue_peeked.exit, label %__skb_dequeue.exit.i

__skb_dequeue.exit.i:                             ; preds = %do.end
  %qlen.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 16, i32 1
  %4 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %5, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.0, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %3, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.0, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %9, ptr %prev17.i.i.i, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %7, ptr %9, align 8
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %__skb_dequeue.exit.i
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !99
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cb.i.i.i.i, align 4
  %cpu_qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cpu_qstats.i.i, align 4
  %backlog.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %backlog.i.i to i32
  %20 = tail call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %25, %19
  %26 = inttoptr i32 %add.i.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add14.i.i = sub i32 %28, %16
  store i32 %add14.i.i, ptr %26, align 4
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !100
  %and.i.i.i.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i19.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i19.i, label %if.then.i20.i, label %if.then4.i.qdisc_qstats_cpu_backlog_dec.exit.i_crit_edge, !prof !96

if.then4.i.qdisc_qstats_cpu_backlog_dec.exit.i_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_qstats_cpu_backlog_dec.exit.i

if.then.i20.i:                                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %qdisc_qstats_cpu_backlog_dec.exit.i

qdisc_qstats_cpu_backlog_dec.exit.i:              ; preds = %if.then.i20.i, %if.then4.i.qdisc_qstats_cpu_backlog_dec.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #11, !srcloc !101
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !99
  %31 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cpu_qstats.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %34 = tail call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i22.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i22.i to ptr
  %cpu.i23.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %cpu.i23.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu.i23.i, align 4
  %arrayidx.i24.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i24.i, align 4
  %add.i25.i = add i32 %39, %33
  %40 = inttoptr i32 %add.i25.i to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %add13.i.i = add i32 %42, -1
  store i32 %add13.i.i, ptr %40, align 4
  %43 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !100
  %and.i.i.i26.i = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i26.i)
  %tobool.not.i27.i = icmp eq i32 %and.i.i.i26.i, 0
  br i1 %tobool.not.i27.i, label %if.then.i28.i, label %qdisc_qstats_cpu_backlog_dec.exit.i.qdisc_qstats_cpu_qlen_dec.exit.i_crit_edge, !prof !96

qdisc_qstats_cpu_backlog_dec.exit.i.qdisc_qstats_cpu_qlen_dec.exit.i_crit_edge: ; preds = %qdisc_qstats_cpu_backlog_dec.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_qstats_cpu_qlen_dec.exit.i

if.then.i28.i:                                    ; preds = %qdisc_qstats_cpu_backlog_dec.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %qdisc_qstats_cpu_qlen_dec.exit.i

qdisc_qstats_cpu_qlen_dec.exit.i:                 ; preds = %if.then.i28.i, %qdisc_qstats_cpu_backlog_dec.exit.i.qdisc_qstats_cpu_qlen_dec.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %30) #11, !srcloc !101
  br label %if.end6

if.else.i:                                        ; preds = %__skb_dequeue.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %cb.i.i.i29.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3
  %44 = ptrtoint ptr %cb.i.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cb.i.i.i29.i, align 4
  %backlog.i30.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 19, i32 1
  %46 = ptrtoint ptr %backlog.i30.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %backlog.i30.i, align 4
  %sub.i.i = sub i32 %47, %45
  store i32 %sub.i.i, ptr %backlog.i30.i, align 4
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 17, i32 2
  %48 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %qlen.i, align 8
  %dec.i = add i32 %49, -1
  store i32 %dec.i, ptr %qlen.i, align 8
  br label %if.end6

qdisc_dequeue_peeked.exit:                        ; preds = %do.end
  %dequeue.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 1
  %50 = ptrtoint ptr %dequeue.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dequeue.i, align 4
  %call6.i = tail call ptr %51(ptr noundef %1) #11
  %cmp = icmp eq ptr %call6.i, null
  br i1 %cmp, label %qdisc_dequeue_peeked.exit.cleanup_crit_edge, label %qdisc_dequeue_peeked.exit.if.end6_crit_edge

qdisc_dequeue_peeked.exit.if.end6_crit_edge:      ; preds = %qdisc_dequeue_peeked.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

qdisc_dequeue_peeked.exit.cleanup_crit_edge:      ; preds = %qdisc_dequeue_peeked.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %qdisc_dequeue_peeked.exit.if.end6_crit_edge, %if.else.i, %qdisc_qstats_cpu_qlen_dec.exit.i
  %skb.0.i148 = phi ptr [ %call6.i, %qdisc_dequeue_peeked.exit.if.end6_crit_edge ], [ %3, %qdisc_qstats_cpu_qlen_dec.exit.i ], [ %3, %if.else.i ]
  %cb.i.i.i.i92 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i148, i32 0, i32 3
  %52 = ptrtoint ptr %cb.i.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cb.i.i.i.i92, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i148, i32 0, i32 17
  %54 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool.i.not.i.i = icmp eq i16 %57, 0
  br i1 %tobool.i.not.i.i, label %if.end6.cond.end.i.i_crit_edge, label %cond.true.i.i

if.end6.cond.end.i.i_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %55, i32 0, i32 5
  %58 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %gso_segs.i.i, align 2
  %conv4.i.i = zext i16 %59 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end6.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ 1, %if.end6.cond.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %60 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i.i.i.i.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i.i.i.i.i, label %cond.end.i.i.qdisc_bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i.i

cond.end.i.i.qdisc_bstats_update.exit_crit_edge:  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

land.lhs.true.i.i.i.i.i:                          ; preds = %cond.end.i.i
  %61 = tail call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i.i.i.i.i.i.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %64, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !102
  %65 = tail call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i.i.i.i.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %68
  %69 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %70, ptrtoint (ptr @lockdep_recursion to i32)
  %71 = inttoptr i32 %add.i.i.i.i.i to ptr
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %71, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !103
  %74 = tail call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i.i7.i.i.i.i.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i7.i.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %77, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool20.not.i.i.i.i.i = icmp eq i32 %73, 0
  br i1 %tobool20.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %78 = tail call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i.i.i.i.i.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp.i.i.i.i.i = icmp eq i32 %81, 0
  br i1 %cmp.i.i.i.i.i, label %land.rhs22.i.i.i.i.i, label %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

land.rhs22.i.i.i.i.i:                             ; preds = %land.rhs.i.i.i.i.i
  %82 = tail call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i.i9.i.i.i.i.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i9.i.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  %add.i11.i.i.i.i.i = add i32 %85, 1
  store volatile i32 %add.i11.i.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !104
  %86 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx46.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %87
  %88 = ptrtoint ptr %arrayidx46.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx46.i.i.i.i.i, align 4
  %add47.i.i.i.i.i = add i32 %89, ptrtoint (ptr @hardirqs_enabled to i32)
  %90 = inttoptr i32 %add47.i.i.i.i.i to ptr
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %90, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !105
  %93 = tail call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i.i12.i.i.i.i.i = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i.i12.i.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  %sub.i14.i.i.i.i.i = add i32 %96, -1
  store volatile i32 %sub.i14.i.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool54.not.i.i.i.i.i = icmp eq i32 %92, 0
  br i1 %tobool54.not.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i.i

land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

land.rhs58.i.i.i.i.i:                             ; preds = %land.rhs22.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %if.then.i.i.i.i.i, !prof !98

land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

if.then.i.i.i.i.i:                                ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %qdisc_bstats_update.exit

qdisc_bstats_update.exit:                         ; preds = %if.then.i.i.i.i.i, %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %cond.end.i.i.qdisc_bstats_update.exit_crit_edge
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i = zext i32 %53 to i64
  %syncp.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2
  %97 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %98, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2, i32 0, i32 1
  %99 = tail call ptr @llvm.returnaddress(i32 0) #11
  %100 = ptrtoint ptr %99 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %100) #11
  %101 = ptrtoint ptr %bstats.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %bstats.i, align 8
  %add.i.i.i.i = add i64 %102, %conv.i.i
  store i64 %add.i.i.i.i, ptr %bstats.i, align 8
  %packets2.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 1
  %conv.i7.i.i.i = zext i32 %cond.i.i to i64
  %103 = ptrtoint ptr %packets2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %packets2.i.i.i, align 8
  %add.i8.i.i.i = add i64 %104, %conv.i7.i.i.i
  store i64 %add.i8.i.i.i, ptr %packets2.i.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef %100) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !107
  %105 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %106, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  %107 = ptrtoint ptr %cb.i.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cb.i.i.i.i92, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %109 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %backlog.i, align 4
  %sub.i = sub i32 %110, %108
  store i32 %sub.i, ptr %backlog.i, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %111 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %qlen, align 8
  %dec = add i32 %112, -1
  store i32 %dec, ptr %qlen, align 8
  %tc_index = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i148, i32 0, i32 15, i32 0, i32 4
  %113 = ptrtoint ptr %tc_index to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %tc_index, align 2
  %conv = zext i16 %114 to i32
  %indices = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %115 = ptrtoint ptr %indices to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %indices, align 4
  %conv8 = zext i16 %116 to i32
  %sub = add nuw nsw i32 %conv8, 65535
  %and = and i32 %sub, %conv
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsmark_dequeue.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsmark_dequeue, %if.then21)) #11
          to label %do.end26 [label %if.then21], !srcloc !95

if.then21:                                        ; preds = %qdisc_bstats_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  %117 = ptrtoint ptr %tc_index to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %tc_index, align 2
  %conv23 = zext i16 %118 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dsmark_dequeue.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.22, i32 noundef %conv23, i32 noundef %and) #11
  br label %do.end26

do.end26:                                         ; preds = %if.then21, %qdisc_bstats_update.exit
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i148, i32 0, i32 15, i32 0, i32 18
  %119 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %protocol.i.i, align 8
  %mac_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i148, i32 0, i32 8
  %121 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i.i = zext i16 %122 to i32
  %123 = zext i16 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %120, label %do.end26.skb_protocol.exit_crit_edge [
    i16 -30552, label %do.end26.if.then.i.i.i_crit_edge
    i16 -32512, label %do.end26.if.then.i.i.i_crit_edge160
  ]

do.end26.if.then.i.i.i_crit_edge160:              ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

do.end26.if.then.i.i.i_crit_edge:                 ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

do.end26.skb_protocol.exit_crit_edge:             ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_protocol.exit

if.then.i.i.i:                                    ; preds = %do.end26.if.then.i.i.i_crit_edge, %do.end26.if.then.i.i.i_crit_edge160
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %122)
  %tobool.not.i.i.i = icmp eq i16 %122, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %122)
  %cmp.i.i.i = icmp ult i16 %122, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !96

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 598, i32 noundef 9, ptr noundef null) #11
  br label %sw.default

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i93 = add nsw i32 %conv.i.i.i, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i93, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %124 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i148, i32 0, i32 6
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i148, i32 0, i32 7
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i148, i32 0, i32 19
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #11
  %125 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !97
  %126 = ptrtoint ptr %124 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 -1, ptr %124, align 2, !annotation !97
  %127 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %len.i.i.i.i.i, align 4
  %129 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %131 = add i32 %vlan_depth.1.i.i.i, %130
  %sub.i1.i.i.i.i = sub i32 %128, %131
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i94 = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i94, label %if.then.i.i.i.i.i95, label %lor.lhs.false.i.i.i.i.i, !prof !98

if.then.i.i.i.i.i95:                              ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %132 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %133, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb.0.i148, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !96
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i95
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i95 ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %134 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !96
  br i1 %134, label %cleanup.thread.i.i.i, label %do.cond42.i.i.i, !prof !96

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #11
  br label %sw.default

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %135 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #11
  %137 = zext i16 %136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %136, label %do.cond42.i.i.i.skb_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge161
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge161: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.skb_protocol.exit_crit_edge:      ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_protocol.exit

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge161
  %add.i.i.i = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

skb_protocol.exit:                                ; preds = %do.cond42.i.i.i.skb_protocol.exit_crit_edge, %do.end26.skb_protocol.exit_crit_edge
  %retval.2.i.i.i = phi i16 [ %120, %do.end26.skb_protocol.exit_crit_edge ], [ %136, %do.cond42.i.i.i.skb_protocol.exit_crit_edge ]
  %138 = zext i16 %retval.2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.36)
  switch i16 %retval.2.i.i.i, label %skb_protocol.exit.sw.default_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb32
  ]

skb_protocol.exit.sw.default_crit_edge:           ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default

sw.bb:                                            ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #13
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i148, i32 0, i32 18
  %139 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i148, i32 0, i32 15, i32 0, i32 20
  %141 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i96 = zext i16 %142 to i32
  %add.ptr.i.i = getelementptr i8, ptr %140, i32 %conv.i.i96
  %mv = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %143 = ptrtoint ptr %mv to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %mv, align 4
  %arrayidx = getelementptr %struct.mask_value, ptr %144, i32 %and
  %145 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx, align 1
  %value = getelementptr %struct.mask_value, ptr %144, i32 %and, i32 1
  %147 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %value, align 1
  %check1.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 7
  %149 = ptrtoint ptr %check1.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %check1.i, align 2
  %conv.i = zext i16 %150 to i32
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %151 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %tos.i, align 1
  %conv2.i = zext i8 %152 to i32
  %add.i = add nuw nsw i32 %conv2.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add.i)
  %tobool.not.i97 = icmp ult i32 %add.i, 65535
  %add8.i = add nuw nsw i32 %add.i, 1
  %and10.i = and i32 %add8.i, 65535
  %check.0.i = select i1 %tobool.not.i97, i32 %add.i, i32 %and10.i
  %and28.i = and i8 %152, %146
  %or29.i = or i8 %and28.i, %148
  %conv11.i = zext i8 %or29.i to i32
  %sub.i98 = sub nsw i32 %check.0.i, %conv11.i
  %shr12.i = lshr i32 %sub.i98, 16
  %add13.i = add nsw i32 %shr12.i, %sub.i98
  %conv14.i = trunc i32 %add13.i to i16
  %153 = ptrtoint ptr %check1.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %conv14.i, ptr %check1.i, align 2
  %154 = ptrtoint ptr %tos.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %or29.i, ptr %tos.i, align 1
  br label %cleanup

sw.bb32:                                          ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #13
  %head.i.i99 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i148, i32 0, i32 18
  %155 = ptrtoint ptr %head.i.i99 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %head.i.i99, align 8
  %network_header.i.i100 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i148, i32 0, i32 15, i32 0, i32 20
  %157 = ptrtoint ptr %network_header.i.i100 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %network_header.i.i100, align 4
  %conv.i.i101 = zext i16 %158 to i32
  %add.ptr.i.i102 = getelementptr i8, ptr %156, i32 %conv.i.i101
  %mv34 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %159 = ptrtoint ptr %mv34 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %mv34, align 4
  %arrayidx35 = getelementptr %struct.mask_value, ptr %160, i32 %and
  %161 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx35, align 1
  %value39 = getelementptr %struct.mask_value, ptr %160, i32 %and, i32 1
  %163 = ptrtoint ptr %value39 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %value39, align 1
  %165 = ptrtoint ptr %add.ptr.i.i102 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %add.ptr.i.i102, align 2
  %conv2.i103 = zext i8 %162 to i16
  %shl.i = shl nuw nsw i16 %conv2.i103, 4
  %or.i = or i16 %shl.i, -4081
  %and.i = and i16 %or.i, %166
  %conv6.i = zext i8 %164 to i16
  %shl7.i = shl nuw nsw i16 %conv6.i, 4
  %or10.i = or i16 %and.i, %shl7.i
  store i16 %or10.i, ptr %add.ptr.i.i102, align 2
  br label %cleanup

sw.default:                                       ; preds = %skb_protocol.exit.sw.default_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i
  %mv40 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %167 = ptrtoint ptr %mv40 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %mv40, align 4
  %arrayidx41 = getelementptr %struct.mask_value, ptr %168, i32 %and
  %169 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %170)
  %cmp44.not = icmp eq i8 %170, -1
  br i1 %cmp44.not, label %lor.lhs.false, label %sw.default.do.end54_crit_edge

sw.default.do.end54_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end54

lor.lhs.false:                                    ; preds = %sw.default
  %value48 = getelementptr %struct.mask_value, ptr %168, i32 %and, i32 1
  %171 = ptrtoint ptr %value48 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %value48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool50.not = icmp eq i8 %172, 0
  br i1 %tobool50.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.end54_crit_edge

lor.lhs.false.do.end54_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end54

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end54:                                         ; preds = %lor.lhs.false.do.end54_crit_edge, %sw.default.do.end54_crit_edge
  %173 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %protocol.i.i, align 8
  %175 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i.i107 = zext i16 %176 to i32
  %177 = zext i16 %174 to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %174, label %do.end54.skb_protocol.exit144_crit_edge [
    i16 -30552, label %do.end54.if.then.i.i.i109_crit_edge
    i16 -32512, label %do.end54.if.then.i.i.i109_crit_edge162
  ]

do.end54.if.then.i.i.i109_crit_edge162:           ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i109

do.end54.if.then.i.i.i109_crit_edge:              ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i109

do.end54.skb_protocol.exit144_crit_edge:          ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_protocol.exit144

if.then.i.i.i109:                                 ; preds = %do.end54.if.then.i.i.i109_crit_edge, %do.end54.if.then.i.i.i109_crit_edge162
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %176)
  %tobool.not.i.i.i108 = icmp eq i16 %176, 0
  br i1 %tobool.not.i.i.i108, label %if.then.i.i.i109.if.end26.i.i.i120_crit_edge, label %if.then1.i.i.i111

if.then.i.i.i109.if.end26.i.i.i120_crit_edge:     ; preds = %if.then.i.i.i109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i.i.i120

if.then1.i.i.i111:                                ; preds = %if.then.i.i.i109
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %176)
  %cmp.i.i.i110 = icmp ult i16 %176, 4
  br i1 %cmp.i.i.i110, label %do.end.i.i.i112, label %if.end25.i.i.i114, !prof !96

do.end.i.i.i112:                                  ; preds = %if.then1.i.i.i111
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 598, i32 noundef 9, ptr noundef null) #11
  br label %skb_protocol.exit144

if.end25.i.i.i114:                                ; preds = %if.then1.i.i.i111
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i113 = add nsw i32 %conv.i.i.i107, -4
  br label %if.end26.i.i.i120

if.end26.i.i.i120:                                ; preds = %if.end25.i.i.i114, %if.then.i.i.i109.if.end26.i.i.i120_crit_edge
  %vlan_depth.0.i.i.i115 = phi i32 [ %sub.i.i.i113, %if.end25.i.i.i114 ], [ 14, %if.then.i.i.i109.if.end26.i.i.i120_crit_edge ]
  %178 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i104, i32 0, i32 1
  %len.i.i.i.i.i116 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i148, i32 0, i32 6
  %data_len.i.i.i.i.i117 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i148, i32 0, i32 7
  %data.i.i.i.i119 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i148, i32 0, i32 19
  br label %do.body27.i.i.i125

do.body27.i.i.i125:                               ; preds = %do.body27.backedge.i.i.i142, %if.end26.i.i.i120
  %vlan_depth.1.i.i.i121 = phi i32 [ %vlan_depth.0.i.i.i115, %if.end26.i.i.i120 ], [ %add.i.i.i141, %do.body27.backedge.i.i.i142 ]
  %parse_depth.0.i.i.i122 = phi i32 [ 8, %if.end26.i.i.i120 ], [ %dec.i.i.i135, %do.body27.backedge.i.i.i142 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i104) #11
  %179 = ptrtoint ptr %vhdr.i.i.i104 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 -1, ptr %vhdr.i.i.i104, align 2, !annotation !97
  %180 = ptrtoint ptr %178 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 -1, ptr %178, align 2, !annotation !97
  %181 = ptrtoint ptr %len.i.i.i.i.i116 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %len.i.i.i.i.i116, align 4
  %183 = ptrtoint ptr %data_len.i.i.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %data_len.i.i.i.i.i117, align 8
  %185 = add i32 %vlan_depth.1.i.i.i121, %184
  %sub.i1.i.i.i.i123 = sub i32 %182, %185
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i123)
  %cmp.i.i.i.i.i124 = icmp sgt i32 %sub.i1.i.i.i.i123, 3
  br i1 %cmp.i.i.i.i.i124, label %if.then.i.i.i.i.i127, label %lor.lhs.false.i.i.i.i.i132, !prof !98

if.then.i.i.i.i.i127:                             ; preds = %do.body27.i.i.i125
  call void @__sanitizer_cov_trace_pc() #13
  %186 = ptrtoint ptr %data.i.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %data.i.i.i.i119, align 4
  %add.ptr.i.i.i.i.i126 = getelementptr i8, ptr %187, i32 %vlan_depth.1.i.i.i121
  br label %skb_header_pointer.exit.i.i.i137

lor.lhs.false.i.i.i.i.i132:                       ; preds = %do.body27.i.i.i125
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i129 = call i32 @skb_copy_bits(ptr noundef nonnull %skb.0.i148, i32 noundef %vlan_depth.1.i.i.i121, ptr noundef nonnull %vhdr.i.i.i104, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i129)
  %cmp3.i.i.i.i.i130 = icmp slt i32 %call.i.i.i.i.i129, 0
  %spec.select.i.i.i.i.i131 = select i1 %cmp3.i.i.i.i.i130, ptr null, ptr %vhdr.i.i.i104, !prof !96
  br label %skb_header_pointer.exit.i.i.i137

skb_header_pointer.exit.i.i.i137:                 ; preds = %lor.lhs.false.i.i.i.i.i132, %if.then.i.i.i.i.i127
  %retval.0.i.i.i.i.i133 = phi ptr [ %add.ptr.i.i.i.i.i126, %if.then.i.i.i.i.i127 ], [ %spec.select.i.i.i.i.i131, %lor.lhs.false.i.i.i.i.i132 ]
  %tobool29.not.i.i.i134 = icmp eq ptr %retval.0.i.i.i.i.i133, null
  %dec.i.i.i135 = add nsw i32 %parse_depth.0.i.i.i122, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i135)
  %tobool30.not.i.i.i136 = icmp eq i32 %dec.i.i.i135, 0
  %188 = select i1 %tobool29.not.i.i.i134, i1 true, i1 %tobool30.not.i.i.i136, !prof !96
  br i1 %188, label %cleanup.thread.i.i.i138, label %do.cond42.i.i.i140, !prof !96

cleanup.thread.i.i.i138:                          ; preds = %skb_header_pointer.exit.i.i.i137
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i104) #11
  br label %skb_protocol.exit144

do.cond42.i.i.i140:                               ; preds = %skb_header_pointer.exit.i.i.i137
  %h_vlan_encapsulated_proto.i.i.i139 = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i133, i32 0, i32 1
  %189 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i139 to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i139, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i104) #11
  %191 = zext i16 %190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %191, ptr @__sancov_gen_cov_switch_values.38)
  switch i16 %190, label %do.cond42.i.i.i140.skb_protocol.exit144_crit_edge [
    i16 -30552, label %do.cond42.i.i.i140.do.body27.backedge.i.i.i142_crit_edge
    i16 -32512, label %do.cond42.i.i.i140.do.body27.backedge.i.i.i142_crit_edge163
  ]

do.cond42.i.i.i140.do.body27.backedge.i.i.i142_crit_edge163: ; preds = %do.cond42.i.i.i140
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.backedge.i.i.i142

do.cond42.i.i.i140.do.body27.backedge.i.i.i142_crit_edge: ; preds = %do.cond42.i.i.i140
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.backedge.i.i.i142

do.cond42.i.i.i140.skb_protocol.exit144_crit_edge: ; preds = %do.cond42.i.i.i140
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_protocol.exit144

do.body27.backedge.i.i.i142:                      ; preds = %do.cond42.i.i.i140.do.body27.backedge.i.i.i142_crit_edge, %do.cond42.i.i.i140.do.body27.backedge.i.i.i142_crit_edge163
  %add.i.i.i141 = add nsw i32 %vlan_depth.1.i.i.i121, 4
  br label %do.body27.i.i.i125

skb_protocol.exit144:                             ; preds = %do.cond42.i.i.i140.skb_protocol.exit144_crit_edge, %cleanup.thread.i.i.i138, %do.end.i.i.i112, %do.end54.skb_protocol.exit144_crit_edge
  %retval.2.i.i.i143 = phi i16 [ 0, %do.end.i.i.i112 ], [ %174, %do.end54.skb_protocol.exit144_crit_edge ], [ 0, %cleanup.thread.i.i.i138 ], [ %190, %do.cond42.i.i.i140.skb_protocol.exit144_crit_edge ]
  %conv57 = zext i16 %retval.2.i.i.i143 to i32
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.20, i32 noundef %conv57) #14
  br label %cleanup

cleanup:                                          ; preds = %skb_protocol.exit144, %lor.lhs.false.cleanup_crit_edge, %sw.bb32, %sw.bb, %qdisc_dequeue_peeked.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %qdisc_dequeue_peeked.exit.cleanup_crit_edge ], [ %skb.0.i148, %lor.lhs.false.cleanup_crit_edge ], [ %skb.0.i148, %skb_protocol.exit144 ], [ %skb.0.i148, %sw.bb32 ], [ %skb.0.i148, %sw.bb ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dsmark_peek(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsmark_peek.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsmark_peek, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dsmark_peek.__UNIQUE_ID_ddebug509, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.25, ptr noundef %sch, ptr noundef %privdata.i) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %privdata.i, align 4
  %ops = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 16
  %peek = getelementptr inbounds %struct.Qdisc_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %peek to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peek, align 4
  %call5 = tail call ptr %5(ptr noundef %1) #11
  ret ptr %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsmark_init(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [6 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tb) #11
  %0 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 1
  %1 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 2
  %2 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 3
  %3 = call ptr @memset(ptr %tb, i32 255, i32 24)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsmark_init.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsmark_init, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dsmark_init.__UNIQUE_ID_ddebug510, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, ptr noundef %sch, ptr noundef %privdata.i, ptr noundef %opt) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %opt, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %filter_list = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %call7 = tail call i32 @tcf_block_get(ptr noundef %block, ptr noundef %filter_list, ptr noundef %sch, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %add.ptr.i.i = getelementptr i8, ptr %opt, i32 4
  %4 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %opt, align 2
  %conv.i.i = zext i16 %5 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 5, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @dsmark_policy, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %0, align 4
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.end16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %add.ptr.i.i475 = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i475 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i475, align 2
  %conv326 = zext i16 %9 to i32
  %call.i = call i32 @__sw_hweight32(i32 noundef %conv326) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp328.not = icmp eq i32 %call.i, 1
  br i1 %cmp328.not, label %if.end331, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end331:                                        ; preds = %if.end16
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %tobool333.not = icmp eq ptr %11, null
  br i1 %tobool333.not, label %if.end331.if.end338_crit_edge, label %if.then334

if.end331.if.end338_crit_edge:                    ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end338

if.then334:                                       ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i476 = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i476 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i476, align 2
  %conv337 = zext i16 %13 to i32
  br label %if.end338

if.end338:                                        ; preds = %if.then334, %if.end331.if.end338_crit_edge
  %default_index.0 = phi i32 [ %conv337, %if.then334 ], [ 65536, %if.end331.if.end338_crit_edge ]
  %conv339 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %9)
  %cmp340 = icmp ult i16 %9, 17
  br i1 %cmp340, label %if.then342, label %if.end7.i

if.then342:                                       ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #13
  %embedded = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  br label %if.end347

if.end7.i:                                        ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #13
  %14 = shl nuw nsw i32 %conv339, 1
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3264) #15
  br label %if.end347

if.end347:                                        ; preds = %if.end7.i, %if.then342
  %retval.0.i477.sink = phi ptr [ %embedded, %if.then342 ], [ %call8.i, %if.end7.i ]
  %mv346 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %15 = ptrtoint ptr %mv346 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %retval.0.i477.sink, ptr %mv346, align 4
  %mv348 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %tobool349.not = icmp eq ptr %retval.0.i477.sink, null
  br i1 %tobool349.not, label %if.end347.cleanup_crit_edge, label %for.cond.preheader

if.end347.cleanup_crit_edge:                      ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end347
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp353480.not = icmp eq i16 %9, 0
  br i1 %cmp353480.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0481 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %16 = ptrtoint ptr %mv348 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mv348, align 4
  %arrayidx356 = getelementptr %struct.mask_value, ptr %17, i32 %i.0481
  %18 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %arrayidx356, align 1
  %19 = load ptr, ptr %mv348, align 4
  %value = getelementptr %struct.mask_value, ptr %19, i32 %i.0481, i32 1
  %20 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %value, align 1
  %inc = add nuw nsw i32 %i.0481, 1
  %exitcond.not = icmp eq i32 %inc, %conv339
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %indices359 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %21 = ptrtoint ptr %indices359 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %9, ptr %indices359, align 4
  %default_index360 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %22 = ptrtoint ptr %default_index360 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %default_index.0, ptr %default_index360, align 4
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %2, align 4
  %tobool.i = icmp ne ptr %24, null
  %conv363 = zext i1 %tobool.i to i8
  %set_tc_index = getelementptr inbounds %struct.dsmark_qdisc_data, ptr %privdata.i, i32 0, i32 5
  %25 = ptrtoint ptr %set_tc_index to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv363, ptr %set_tc_index, align 2
  %dev_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %26 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_queue, align 8
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %28 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %handle, align 32
  %call364 = call ptr @qdisc_create_dflt(ptr noundef %27, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %29, ptr noundef null) #11
  %30 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call364, ptr %privdata.i, align 4
  %cmp366 = icmp eq ptr %call364, null
  br i1 %cmp366, label %if.then368, label %if.else370

if.then368:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @noop_qdisc, ptr %privdata.i, align 4
  br label %do.body373

if.else370:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @qdisc_hash_add(ptr noundef nonnull %call364, i1 noundef zeroext true) #11
  br label %do.body373

do.body373:                                       ; preds = %if.else370, %if.then368
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsmark_init.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsmark_init, %if.then385)) #11
          to label %cleanup [label %if.then385], !srcloc !95

if.then385:                                       ; preds = %do.body373
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %privdata.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dsmark_init.__UNIQUE_ID_ddebug511, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, ptr noundef %33) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then385, %do.body373, %if.end347.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6.cleanup_crit_edge ], [ %call2.i, %if.end10.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -12, %if.end347.cleanup_crit_edge ], [ 0, %if.then385 ], [ 0, %do.body373 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tb) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsmark_reset(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsmark_reset.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsmark_reset, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dsmark_reset.__UNIQUE_ID_ddebug512, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.29, ptr noundef %sch, ptr noundef %privdata.i) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %privdata.i, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.if.end7_crit_edge, label %if.then5

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @qdisc_reset(ptr noundef nonnull %1) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end.if.end7_crit_edge
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %2 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %backlog, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %3 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsmark_destroy(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsmark_destroy.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsmark_destroy, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dsmark_destroy.__UNIQUE_ID_ddebug513, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.30, ptr noundef %sch, ptr noundef %privdata.i) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block, align 4
  tail call void @tcf_block_put(ptr noundef %1) #11
  %2 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %privdata.i, align 4
  tail call void @qdisc_put(ptr noundef %3) #11
  %mv = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %4 = ptrtoint ptr %mv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mv, align 4
  %embedded = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %cmp.not = icmp eq ptr %5, %embedded
  br i1 %cmp.not, label %do.end.if.end6_crit_edge, label %if.then4

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef %5) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.end.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsmark_dump(ptr nocapture noundef readonly %sch, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i30 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp34 = icmp eq ptr %1, null
  %cmp = select i1 %cmp.i, i1 true, i1 %cmp34
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %indices = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %2 = ptrtoint ptr %indices to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %indices, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #11
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %if.end.if.then.i.i_crit_edge

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end4:                                          ; preds = %if.end
  %default_index = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %5 = ptrtoint ptr %default_index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %default_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %6)
  %cmp5.not = icmp eq i32 %6, 65536
  br i1 %cmp5.not, label %if.end4.if.end10_crit_edge, label %land.lhs.true

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end4
  %conv = trunc i32 %6 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i30) #11
  %7 = ptrtoint ptr %tmp.i30 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %tmp.i30, align 2
  %call.i31 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i30) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool8.not = icmp eq i32 %call.i31, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.if.then.i.i_crit_edge

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end4.if.end10_crit_edge
  %set_tc_index = getelementptr inbounds %struct.dsmark_qdisc_data, ptr %privdata.i, i32 0, i32 5
  %8 = ptrtoint ptr %set_tc_index to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %set_tc_index, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  br i1 %tobool12.not, label %if.end10.if.end17_crit_edge, label %land.lhs.true13

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

land.lhs.true13:                                  ; preds = %if.end10
  %call.i32 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool15.not = icmp eq i32 %call.i32, 0
  br i1 %tobool15.not, label %land.lhs.true13.if.end17_crit_edge, label %land.lhs.true13.if.then.i.i_crit_edge

land.lhs.true13.if.then.i.i_crit_edge:            ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

land.lhs.true13.if.end17_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true13.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %1, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %land.lhs.true13.if.then.i.i_crit_edge, %land.lhs.true.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %16, %1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !96

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.end17 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsmark_graft(ptr noundef %sch, i32 noundef %arg, ptr noundef %new, ptr noundef %old, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %qstats.i.i.i = alloca %struct.gnet_stats_queue, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsmark_graft.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsmark_graft, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dsmark_graft.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %sch, ptr noundef %privdata.i, ptr noundef %new, ptr noundef %old) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmp = icmp eq ptr %new, null
  br i1 %cmp, label %if.then4, label %do.end.if.end9_crit_edge

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue, align 8
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handle, align 32
  %call5 = tail call ptr @qdisc_create_dflt(ptr noundef %1, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %3, ptr noundef null) #11
  %cmp6 = icmp eq ptr %call5, null
  %spec.store.select = select i1 %cmp6, ptr @noop_qdisc, ptr %call5
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %do.end.if.end9_crit_edge
  %new.addr.0 = phi ptr [ %spec.store.select, %if.then4 ], [ %new, %do.end.if.end9_crit_edge ]
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end9.sch_tree_lock.exit.i_crit_edge

if.end9.sch_tree_lock.exit.i_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_lock.exit.i

if.else.i.i:                                      ; preds = %if.end9
  %dev_queue.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %6 = ptrtoint ptr %dev_queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_queue.i.i.i.i, align 8
  %qdisc_sleeping.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %qdisc_sleeping.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qdisc_sleeping.i.i.i.i, align 4
  %call1.i.i.i = tail call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %if.else.i.i.sch_tree_lock.exit.i_crit_edge

if.else.i.i.sch_tree_lock.exit.i_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_lock.exit.i

land.rhs.i.i.i:                                   ; preds = %if.else.i.i
  %.b41.i.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i.i, label %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, label %if.then.i.i.i, !prof !98

land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_lock.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 596) #11
  br label %sch_tree_lock.exit.i

sch_tree_lock.exit.i:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, %if.else.i.i.sch_tree_lock.exit.i_crit_edge, %if.end9.sch_tree_lock.exit.i_crit_edge
  %.sink.i.i = phi ptr [ %sch, %if.end9.sch_tree_lock.exit.i_crit_edge ], [ %9, %if.else.i.i.sch_tree_lock.exit.i_crit_edge ], [ %9, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge ], [ %9, %if.then.i.i.i ]
  %lock.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i.i) #11
  %10 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %privdata.i, align 4
  store ptr %new.addr.0, ptr %privdata.i, align 4
  %cmp.not.i = icmp eq ptr %11, null
  br i1 %cmp.not.i, label %sch_tree_lock.exit.i.if.end.i_crit_edge, label %if.then.i

sch_tree_lock.exit.i.if.end.i_crit_edge:          ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i.i) #11
  %12 = call ptr @memset(ptr %qstats.i.i.i, i32 0, i32 20)
  %cpu_qstats.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %11, i32 0, i32 12
  %13 = ptrtoint ptr %cpu_qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpu_qstats.i.i.i, align 4
  %qstats1.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %11, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i.i, ptr noundef %14, ptr noundef %qstats1.i.i.i) #11
  %15 = ptrtoint ptr %qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qstats.i.i.i, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %11, i32 0, i32 17, i32 2
  %17 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qlen.i.i.i.i, align 8
  %add.i.i.i = add i32 %18, %16
  %backlog3.i.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %backlog3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %backlog3.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i.i) #11
  call void @qdisc_reset(ptr noundef nonnull %11) #11
  call void @qdisc_tree_reduce_backlog(ptr noundef nonnull %11, i32 noundef %add.i.i.i, i32 noundef %20) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sch_tree_lock.exit.i.if.end.i_crit_edge
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i.i, align 8
  %and.i6.i = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.i)
  %tobool.not.i7.i = icmp eq i32 %and.i6.i, 0
  br i1 %tobool.not.i7.i, label %if.else.i12.i, label %if.end.i.qdisc_replace.exit_crit_edge

if.end.i.qdisc_replace.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_replace.exit

if.else.i12.i:                                    ; preds = %if.end.i
  %dev_queue.i.i.i8.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %23 = ptrtoint ptr %dev_queue.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_queue.i.i.i8.i, align 8
  %qdisc_sleeping.i.i.i9.i = getelementptr inbounds %struct.netdev_queue, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %qdisc_sleeping.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %qdisc_sleeping.i.i.i9.i, align 4
  %call1.i.i10.i = call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i10.i)
  %tobool.not.i.i11.i = icmp eq i32 %call1.i.i10.i, 0
  br i1 %tobool.not.i.i11.i, label %land.rhs.i.i14.i, label %if.else.i12.i.qdisc_replace.exit_crit_edge

if.else.i12.i.qdisc_replace.exit_crit_edge:       ; preds = %if.else.i12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_replace.exit

land.rhs.i.i14.i:                                 ; preds = %if.else.i12.i
  %.b41.i.i13.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i13.i, label %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, label %if.then.i.i15.i, !prof !98

land.rhs.i.i14.i.qdisc_replace.exit_crit_edge:    ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_replace.exit

if.then.i.i15.i:                                  ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 596) #11
  br label %qdisc_replace.exit

qdisc_replace.exit:                               ; preds = %if.then.i.i15.i, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, %if.else.i12.i.qdisc_replace.exit_crit_edge, %if.end.i.qdisc_replace.exit_crit_edge
  %.sink.i16.i = phi ptr [ %sch, %if.end.i.qdisc_replace.exit_crit_edge ], [ %26, %if.else.i12.i.qdisc_replace.exit_crit_edge ], [ %26, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge ], [ %26, %if.then.i.i15.i ]
  %lock.i.i.i17.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i16.i, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i17.i) #11
  %27 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %11, ptr %old, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @dsmark_leaf(ptr nocapture noundef readonly %sch, i32 noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %privdata.i, align 4
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dsmark_find(ptr nocapture noundef readnone %sch, i32 noundef %classid) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %classid, 65535
  %add = add nuw nsw i32 %and, 1
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsmark_change(ptr noundef %sch, i32 noundef %classid, i32 noundef %parent, ptr nocapture noundef readonly %tca, ptr nocapture noundef readonly %arg, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %tb = alloca [6 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tca, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tb) #11
  %2 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 4
  %3 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 5
  %4 = call ptr @memset(ptr %tb, i32 255, i32 24)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsmark_change.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsmark_change, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %5 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arg, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dsmark_change.__UNIQUE_ID_ddebug501, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, ptr noundef %sch, ptr noundef %privdata.i, i32 noundef %classid, i32 noundef %parent, i32 noundef %6) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arg, align 4
  %conv = trunc i32 %8 to i16
  %indices.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %9 = ptrtoint ptr %indices.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %indices.i, align 4
  %11 = add i16 %conv, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %10)
  %.not = icmp ult i16 %11, %10
  br i1 %.not, label %if.end7, label %do.end.errout_crit_edge

do.end.errout_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout

if.end7:                                          ; preds = %do.end
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %if.end7.errout_crit_edge, label %if.end10

if.end7.errout_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout

if.end10:                                         ; preds = %if.end7
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 2
  %conv.i.i = zext i16 %13 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 5, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @dsmark_policy, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end10.errout_crit_edge, label %if.end14

if.end10.errout_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout

if.end14:                                         ; preds = %if.end10
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %tobool16.not = icmp eq ptr %15, null
  br i1 %tobool16.not, label %if.end14.if.end21_crit_edge, label %if.then17

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i42 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i42 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr.i.i42, align 1
  %mv = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %18 = ptrtoint ptr %mv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mv, align 4
  %20 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arg, align 4
  %sub = add i32 %21, -1
  %value = getelementptr %struct.mask_value, ptr %19, i32 %sub, i32 1
  %22 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %17, ptr %value, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end14.if.end21_crit_edge
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %2, align 4
  %tobool23.not = icmp eq ptr %24, null
  br i1 %tobool23.not, label %if.end21.errout_crit_edge, label %if.then24

if.end21.errout_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i43 = getelementptr i8, ptr %24, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i43 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr.i.i43, align 1
  %mv27 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %27 = ptrtoint ptr %mv27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mv27, align 4
  %29 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arg, align 4
  %sub28 = add i32 %30, -1
  %arrayidx29 = getelementptr %struct.mask_value, ptr %28, i32 %sub28
  %31 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %26, ptr %arrayidx29, align 1
  br label %errout

errout:                                           ; preds = %if.then24, %if.end21.errout_crit_edge, %if.end10.errout_crit_edge, %if.end7.errout_crit_edge, %do.end.errout_crit_edge
  %err.0 = phi i32 [ %call2.i, %if.end10.errout_crit_edge ], [ -22, %if.end7.errout_crit_edge ], [ -2, %do.end.errout_crit_edge ], [ 0, %if.then24 ], [ 0, %if.end21.errout_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tb) #11
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dsmark_delete(ptr nocapture noundef readonly %sch, i32 noundef %arg, ptr nocapture noundef readnone %extack) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %arg to i16
  %indices.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %0 = ptrtoint ptr %indices.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %indices.i, align 4
  %2 = add i16 %conv, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %1)
  %.not = icmp ult i16 %2, %1
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mv = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %3 = ptrtoint ptr %mv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mv, align 4
  %sub = add i32 %arg, -1
  %arrayidx = getelementptr %struct.mask_value, ptr %4, i32 %sub
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %arrayidx, align 1
  %6 = load ptr, ptr %mv, align 4
  %value = getelementptr %struct.mask_value, ptr %6, i32 %sub, i32 1
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %value, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsmark_walk(ptr noundef %sch, ptr noundef %walker) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsmark_walk.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsmark_walk, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dsmark_walk.__UNIQUE_ID_ddebug502, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef %sch, ptr noundef %privdata.i, ptr noundef %walker) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %walker to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %walker, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool4.not = icmp eq i32 %1, 0
  br i1 %tobool4.not, label %for.cond.preheader, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end
  %indices = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %2 = ptrtoint ptr %indices to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %indices, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp47.not = icmp eq i16 %3, 0
  br i1 %cmp47.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mv = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %count = getelementptr inbounds %struct.qdisc_walker, ptr %walker, i32 0, i32 2
  %skip = getelementptr inbounds %struct.qdisc_walker, ptr %walker, i32 0, i32 1
  %fn = getelementptr inbounds %struct.qdisc_walker, ptr %walker, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %ignore.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc27, %ignore.for.body_crit_edge ]
  %4 = ptrtoint ptr %mv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mv, align 4
  %arrayidx = getelementptr %struct.mask_value, ptr %5, i32 %i.048
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp9 = icmp eq i8 %7, -1
  br i1 %cmp9, label %land.lhs.true, label %for.body.if.end15_crit_edge

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true:                                    ; preds = %for.body
  %value = getelementptr %struct.mask_value, ptr %5, i32 %i.048, i32 1
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %value, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool13.not = icmp eq i8 %9, 0
  br i1 %tobool13.not, label %land.lhs.true.ignore_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true.ignore_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %ignore

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %for.body.if.end15_crit_edge
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 4
  %12 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp16.not = icmp slt i32 %11, %13
  br i1 %cmp16.not, label %if.end15.ignore_crit_edge, label %if.then18

if.end15.ignore_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %ignore

if.then18:                                        ; preds = %if.end15
  %14 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fn, align 4
  %add = add nuw nsw i32 %i.048, 1
  %call19 = tail call i32 %15(ptr noundef %sch, i32 noundef %add, ptr noundef %walker) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then22, label %if.then18.ignore_crit_edge

if.then18.ignore_crit_edge:                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %ignore

if.then22:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %walker to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %walker, align 4
  br label %cleanup

ignore:                                           ; preds = %if.then18.ignore_crit_edge, %if.end15.ignore_crit_edge, %land.lhs.true.ignore_crit_edge
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %count, align 4
  %inc27 = add nuw nsw i32 %i.048, 1
  %19 = ptrtoint ptr %indices to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %indices, align 4
  %conv = zext i16 %20 to i32
  %cmp = icmp ult i32 %inc27, %conv
  br i1 %cmp, label %ignore.for.body_crit_edge, label %ignore.cleanup_crit_edge

ignore.cleanup_crit_edge:                         ; preds = %ignore
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

ignore.for.body_crit_edge:                        ; preds = %ignore
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %ignore.cleanup_crit_edge, %if.then22, %for.cond.preheader.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @dsmark_tcf_block(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsmark_bind_filter(ptr noundef %sch, i32 noundef %parent, i32 noundef %classid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsmark_bind_filter.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsmark_bind_filter, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dsmark_bind_filter.__UNIQUE_ID_ddebug500, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, ptr noundef %sch, ptr noundef %privdata.i, i32 noundef %classid) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and.i = and i32 %classid, 65535
  %add.i = add nuw nsw i32 %and.i, 1
  ret i32 %add.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dsmark_unbind_filter(ptr nocapture noundef %sch, i32 noundef %cl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsmark_dump_class(ptr noundef %sch, i32 noundef %cl, ptr noundef %skb, ptr nocapture noundef writeonly %tcm) #2 align 64 {
entry:
  %tmp.i44 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsmark_dump_class.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsmark_dump_class, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dsmark_dump_class.__UNIQUE_ID_ddebug514, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, ptr noundef %sch, ptr noundef %privdata.i, i32 noundef %cl) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv = trunc i32 %cl to i16
  %indices.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %0 = ptrtoint ptr %indices.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %indices.i, align 4
  %2 = add i16 %conv, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %1)
  %.not = icmp ult i16 %2, %1
  br i1 %.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %3 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %handle, align 32
  %and = and i32 %4, -65536
  %sub = add i32 %cl, -1
  %and9 = and i32 %sub, 65535
  %or = or i32 %and, %and9
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 4
  %5 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %tcm_handle, align 4
  %6 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %privdata.i, align 4
  %handle10 = getelementptr inbounds %struct.Qdisc, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %handle10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %handle10, align 32
  %tcm_info = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 6
  %10 = ptrtoint ptr %tcm_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tcm_info, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp48 = icmp eq ptr %12, null
  %cmp = select i1 %cmp.i, i1 true, i1 %cmp48
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end14

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %mv = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %13 = ptrtoint ptr %mv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mv, align 4
  %arrayidx = getelementptr %struct.mask_value, ptr %14, i32 %sub
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #11
  %17 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %lor.lhs.false, label %if.end14.if.then.i.i_crit_edge

if.end14.if.then.i.i_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %if.end14
  %18 = ptrtoint ptr %mv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mv, align 4
  %value = getelementptr %struct.mask_value, ptr %19, i32 %sub, i32 1
  %20 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %value, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i44) #11
  %22 = ptrtoint ptr %tmp.i44 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %tmp.i44, align 1
  %call.i45 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %tmp.i44) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i44) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool22.not = icmp eq i32 %call.i45, 0
  br i1 %tobool22.not, label %if.end24, label %lor.lhs.false.if.then.i.i_crit_edge

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end24:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %25 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i, ptr %12, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %lor.lhs.false.if.then.i.i_crit_edge, %if.end14.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %29, %12
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !96

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %30 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end24, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %27, %if.end24 ], [ -22, %do.end.cleanup_crit_edge ], [ -90, %if.end7.cleanup_crit_edge ], [ -90, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qdisc_create_dflt(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_classify(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__qdisc_calculate_pkt_len(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_block_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_hash_add(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_block_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !47, !48, !50, !51, !53, !55, !57, !58, !59, !61, !62, !64, !65, !66, !68, !69, !71, !72, !74, !75, !76, !78, !79, !81, !82, !84}
!llvm.named.register.sp = !{!85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__initcall__kmod_sch_dsmark__515_521_dsmark_module_init6, !1, !"__initcall__kmod_sch_dsmark__515_521_dsmark_module_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_dsmark.c", i32 521, i32 1}
!2 = !{ptr @__exitcall_dsmark_module_exit, !3, !"__exitcall_dsmark_module_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_dsmark.c", i32 522, i32 1}
!4 = !{ptr @__UNIQUE_ID_file516, !5, !"__UNIQUE_ID_file516", i1 false, i1 false}
!5 = !{!"../net/sched/sch_dsmark.c", i32 524, i32 1}
!6 = !{ptr @__UNIQUE_ID_license517, !5, !"__UNIQUE_ID_license517", i1 false, i1 false}
!7 = !{ptr @dsmark_qdisc_ops, !8, !"dsmark_qdisc_ops", i1 false, i1 false}
!8 = !{!"../net/sched/sch_dsmark.c", i32 495, i32 25}
!9 = !{ptr @dsmark_class_ops, !10, !"dsmark_class_ops", i1 false, i1 false}
!10 = !{!"../net/sched/sch_dsmark.c", i32 482, i32 37}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/sched/sch_dsmark.c", i32 70, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @dsmark_graft.__UNIQUE_ID_ddebug499, !12, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/sched/sch_dsmark.c", i32 125, i32 2}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @dsmark_change.__UNIQUE_ID_ddebug501, !22, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!25 = !{ptr @dsmark_policy, !26, !"dsmark_policy", i1 false, i1 false}
!26 = !{!"../net/sched/sch_dsmark.c", i32 108, i32 32}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/sched/sch_dsmark.c", i32 172, i32 2}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @dsmark_walk.__UNIQUE_ID_ddebug502, !28, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/sched/sch_dsmark.c", i32 98, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @dsmark_bind_filter.__UNIQUE_ID_ddebug500, !32, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/sched/sch_dsmark.c", i32 434, i32 2}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @dsmark_dump_class.__UNIQUE_ID_ddebug514, !36, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/net/netlink.h", i32 991, i32 3}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/sched/sch_dsmark.c", i32 209, i32 2}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @dsmark_enqueue.__UNIQUE_ID_ddebug503, !42, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../net/sched/sch_dsmark.c", i32 244, i32 26}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/sched/sch_dsmark.c", i32 247, i32 3}
!50 = !{ptr @dsmark_enqueue.__UNIQUE_ID_ddebug506, !49, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../include/net/sch_generic.h", i32 835, i32 34}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/sched/sch_dsmark.c", i32 294, i32 2}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @dsmark_dequeue.__UNIQUE_ID_ddebug507, !56, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/sched/sch_dsmark.c", i32 305, i32 2}
!61 = !{ptr @dsmark_dequeue.__UNIQUE_ID_ddebug508, !60, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/sched/sch_dsmark.c", i32 323, i32 4}
!64 = !{ptr @dsmark_dequeue._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @dsmark_dequeue._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!68 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/sched/sch_dsmark.c", i32 335, i32 2}
!71 = !{ptr @dsmark_peek.__UNIQUE_ID_ddebug509, !70, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/sched/sch_dsmark.c", i32 350, i32 2}
!74 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @dsmark_init.__UNIQUE_ID_ddebug510, !73, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/sched/sch_dsmark.c", i32 398, i32 2}
!78 = !{ptr @dsmark_init.__UNIQUE_ID_ddebug511, !77, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/sched/sch_dsmark.c", i32 409, i32 2}
!81 = !{ptr @dsmark_reset.__UNIQUE_ID_ddebug512, !80, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/sched/sch_dsmark.c", i32 420, i32 2}
!84 = !{ptr @dsmark_destroy.__UNIQUE_ID_ddebug513, !83, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!85 = !{!"sp"}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 2148963678, i64 2148963683, i64 2148963696, i64 2148963740, i64 2148963774, i64 2148963795}
!96 = !{!"branch_weights", i32 1, i32 2000}
!97 = !{!"auto-init"}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{i64 754001, i64 754062}
!100 = !{i64 756733}
!101 = !{i64 757018}
!102 = !{i64 2149874459}
!103 = !{i64 2149879391}
!104 = !{i64 2149901103}
!105 = !{i64 2149905995}
!106 = !{i64 2149982452}
!107 = !{i64 2149982777}
