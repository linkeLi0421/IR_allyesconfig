; ModuleID = '/llk/IR_all_yes/net/sched/sch_atm.c_pt.bc'
source_filename = "../net/sched/sch_atm.c"
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
%struct.atm_flow_data = type { %struct.Qdisc_class_common, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, %struct.list_head, ptr, i32, [0 x i8], [12 x i8] }
%struct.Qdisc_class_common = type { i32, %struct.hlist_node }
%struct.list_head = type { ptr, ptr }
%struct.atm_vcc = type { %struct.sock, i32, i16, i32, i32, i32, ptr, %struct.atm_qos, %struct.atm_sap, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.106, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.107, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.108, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.102, [0 x i32], %union.anon.103, i16, i16, %union.anon.104, %struct.refcount_struct, [0 x i32], %union.anon.105 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.102 = type { i32 }
%union.anon.103 = type { %struct.hlist_node }
%union.anon.104 = type { i32 }
%union.anon.105 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.106 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.107 = type { ptr }
%union.anon.108 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.atm_qos = type <{ %struct.atm_trafprm, %struct.atm_trafprm, i8, [3 x i8] }>
%struct.atm_trafprm = type { i8, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.atm_sap = type { %struct.atm_bhli, [3 x %struct.atm_blli] }
%struct.atm_bhli = type { i8, i8, [8 x i8] }
%struct.atm_blli = type { i8, %union.anon.151, i8, %union.anon.153 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { i8, i8 }
%union.anon.153 = type { %struct.anon.156 }
%struct.anon.156 = type { i8, [5 x i8] }
%struct.sockaddr_atmsvc = type { i16, %struct.anon.157 }
%struct.anon.157 = type { [20 x i8], [13 x i8], i8, i32 }
%struct.nlattr = type { i16, i16 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.qdisc_walker = type { i32, i32, i32, ptr }
%struct.sockaddr_atmpvc = type { i16, %struct.anon.160 }
%struct.anon.160 = type { i16, i16, i32 }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.atm_dev = type { ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, %struct.list_head, [6 x i8], %struct.atm_cirange, %struct.k_atm_dev_stats, i8, i32, %struct.refcount_struct, %struct.spinlock, ptr, ptr, %struct.device, %struct.list_head }
%struct.atm_cirange = type { i8, i8 }
%struct.k_atm_dev_stats = type { %struct.k_atm_aal_stats, %struct.k_atm_aal_stats, %struct.k_atm_aal_stats }
%struct.k_atm_aal_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.atm_qdisc_data = type { %struct.atm_flow_data, %struct.list_head, %struct.tasklet_struct }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.158, i32 }
%union.anon.158 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@atm_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr @atm_class_ops, [16 x i8] c"atm\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 176, i32 0, ptr @atm_tc_enqueue, ptr @atm_tc_dequeue, ptr @atm_tc_peek, ptr @atm_tc_init, ptr @atm_tc_reset, ptr @atm_tc_destroy, ptr null, ptr null, ptr null, ptr null, ptr @atm_tc_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_atm__522_706_atm_init6 = internal global ptr @atm_init, section ".initcall6.init", align 4
@__exitcall_atm_exit = internal global ptr @atm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file523 = internal constant [31 x i8] c"sch_atm.file=net/sched/sch_atm\00", section ".modinfo", align 1
@__UNIQUE_ID_license524 = internal constant [20 x i8] c"sch_atm.license=GPL\00", section ".modinfo", align 1
@atm_class_ops = internal constant { %struct.Qdisc_class_ops, [40 x i8] } { %struct.Qdisc_class_ops { i32 0, ptr null, ptr @atm_tc_graft, ptr @atm_tc_leaf, ptr null, ptr @atm_tc_find, ptr @atm_tc_change, ptr @atm_tc_delete, ptr @atm_tc_walk, ptr @atm_tc_tcf_block, ptr @atm_tc_bind_filter, ptr @atm_tc_put, ptr @atm_tc_dump_class, ptr @atm_tc_dump_class_stats }, [40 x i8] zeroinitializer }, align 32
@atm_tc_graft.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sch_atm\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atm_tc_graft\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/sched/sch_atm.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"atm_tc_graft(sch %p,[qdisc %p],flow %p,new %p,old %p)\0A\00", [41 x i8] zeroinitializer }, align 32
@noop_qdisc = external dso_local global %struct.Qdisc, align 128
@atm_tc_leaf.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atm_tc_leaf\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"atm_tc_leaf(sch %p,flow %p)\0A\00", [35 x i8] zeroinitializer }, align 32
@atm_tc_find.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atm_tc_find\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(sch %p,[qdisc %p],classid %x)\0A\00", [62 x i8] zeroinitializer }, align 32
@atm_tc_find.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: flow %p\0A\00", [19 x i8] zeroinitializer }, align 32
@atm_tc_change.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atm_tc_change\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"atm_tc_change(sch %p,[qdisc %p],classid %x,parent %x,flow %p,opt %p)\0A\00", [58 x i8] zeroinitializer }, align 32
@atm_policy = internal constant { [7 x %struct.nla_policy], [40 x i8] } { [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [40 x i8] zeroinitializer }, align 32
@atm_tc_change.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atm_tc_change: fd %d\0A\00", [42 x i8] zeroinitializer }, align 32
@atm_tc_change.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"atm_tc_change: type %d, payload %d, hdr_len %d\0A\00", [48 x i8] zeroinitializer }, align 32
@atm_tc_change.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.13, i8 0, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"atm_tc_change: f_count %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@atm_tc_change.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.14, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"atm_tc_change: classid mismatch\0A\00", [63 x i8] zeroinitializer }, align 32
@atm_tc_change.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.15, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"atm_tc_change: new id %x\0A\00", [38 x i8] zeroinitializer }, align 32
@atm_tc_change.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.16, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atm_tc_change: flow %p\0A\00", [40 x i8] zeroinitializer }, align 32
@pfifo_qdisc_ops = external dso_local global %struct.Qdisc_ops, align 4
@atm_tc_change.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.17, i8 0, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"atm_tc_change: qdisc %p\0A\00", [39 x i8] zeroinitializer }, align 32
@atm_tc_change.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.18, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"atm_tc_change: vcc %p\0A\00", [41 x i8] zeroinitializer }, align 32
@sch_atm_pop.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sch_atm_pop\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sch_atm_pop(vcc %p,skb %p,[qdisc %p])\0A\00", [57 x i8] zeroinitializer }, align 32
@atm_tc_delete.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atm_tc_delete\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"atm_tc_delete(sch %p,[qdisc %p],flow %p)\0A\00", [54 x i8] zeroinitializer }, align 32
@atm_tc_delete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013atm_tc_delete: flow->ref == %d\0A\00", [62 x i8] zeroinitializer }, align 32
@atm_tc_delete._entry_ptr = internal global ptr @atm_tc_delete._entry, section ".printk_index", align 4
@atm_tc_walk.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atm_tc_walk\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"atm_tc_walk(sch %p,[qdisc %p],walker %p)\0A\00", [54 x i8] zeroinitializer }, align 32
@atm_tc_tcf_block.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atm_tc_tcf_block\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"atm_tc_find_tcf(sch %p,[qdisc %p],flow %p)\0A\00", [52 x i8] zeroinitializer }, align 32
@atm_tc_bind_filter.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.7, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atm_tc_bind_filter\00", [45 x i8] zeroinitializer }, align 32
@atm_tc_bind_filter.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.8, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@atm_tc_put.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atm_tc_put\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"atm_tc_put(sch %p,[qdisc %p],flow %p)\0A\00", [57 x i8] zeroinitializer }, align 32
@atm_tc_put.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.31, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atm_tc_put: destroying\0A\00", [40 x i8] zeroinitializer }, align 32
@atm_tc_put.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.32, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atm_tc_put: qdisc %p\0A\00", [42 x i8] zeroinitializer }, align 32
@atm_tc_put.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.33, i8 0, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"atm_tc_put: f_count %ld\0A\00", [39 x i8] zeroinitializer }, align 32
@atm_tc_dump_class.__UNIQUE_ID_ddebug521 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atm_tc_dump_class\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"atm_tc_dump_class(sch %p,[qdisc %p],flow %p,skb %p,tcm %p)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@atm_tc_enqueue.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atm_tc_enqueue\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"atm_tc_enqueue(skb %p,sch %p,[qdisc %p])\0A\00", [54 x i8] zeroinitializer }, align 32
@atm_tc_enqueue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@qdisc_calculate_pkt_len.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@atm_tc_dequeue.__UNIQUE_ID_ddebug515 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atm_tc_dequeue\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"atm_tc_dequeue(sch %p,[qdisc %p])\0A\00", [61 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@atm_tc_peek.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atm_tc_peek\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"atm_tc_peek(sch %p,[qdisc %p])\0A\00", [32 x i8] zeroinitializer }, align 32
@atm_tc_init.__UNIQUE_ID_ddebug517 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 -119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atm_tc_init\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"atm_tc_init(sch %p,[qdisc %p],opt %p)\0A\00", [57 x i8] zeroinitializer }, align 32
@atm_tc_init.__UNIQUE_ID_ddebug518 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.47, i8 0, i8 -117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"atm_tc_init: link (%p) qdisc %p\0A\00", [63 x i8] zeroinitializer }, align 32
@sch_atm_dequeue.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sch_atm_dequeue\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sch_atm_dequeue(sch %p,[qdisc %p])\0A\00", [60 x i8] zeroinitializer }, align 32
@sch_atm_dequeue.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.50, i8 0, i8 123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"atm_tc_dequeue: sending on class %p\0A\00", [59 x i8] zeroinitializer }, align 32
@sch_atm_dequeue.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.51, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sch_atm_dequeue: ip %p, data %p\0A\00", [63 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@atm_tc_reset.__UNIQUE_ID_ddebug519 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 -112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atm_tc_reset\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"atm_tc_reset(sch %p,[qdisc %p])\0A\00", [63 x i8] zeroinitializer }, align 32
@atm_tc_destroy.__UNIQUE_ID_ddebug520 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 0, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atm_tc_destroy\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"atm_tc_destroy(sch %p,[qdisc %p])\0A\00", [61 x i8] zeroinitializer }, align 32
@atm_tc_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013atm_destroy: %p->ref = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@atm_tc_destroy._entry_ptr = internal global ptr @atm_tc_destroy._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 5, i64 8]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 20]
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"atm_class_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 668, i32 37 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 92, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 109, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 118, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 120, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 208, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [11 x i8] c"atm_policy\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 190, i32 32 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 235, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 251, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 256, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 265, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 280, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 282, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 299, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 303, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 176, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 329, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 339, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 353, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 372, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 130, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 148, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 151, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 153, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 157, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 609, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 991, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 387, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 395, i32 9 }
@___asan_gen_.190 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 835, i32 34 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 525, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 537, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 548, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 557, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 477, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 495, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 507, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 271, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 577, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 588, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.244 = private constant [23 x i8] c"../net/sched/sch_atm.c\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 596, i32 4 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_file523, ptr @__UNIQUE_ID_license524, ptr @__exitcall_atm_exit, ptr @__initcall__kmod_sch_atm__522_706_atm_init6, ptr @atm_exit, ptr @atm_tc_delete._entry, ptr @atm_tc_delete._entry_ptr, ptr @atm_tc_destroy._entry, ptr @atm_tc_destroy._entry_ptr, ptr @atm_class_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @atm_policy, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_class_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_tc_delete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_tc_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atm_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @atm_qdisc_ops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atm_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @atm_qdisc_ops) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atm_tc_enqueue(ptr noundef %skb, ptr noundef %sch, ptr noundef %to_free) #2 align 64 {
entry:
  %res = alloca %struct.tcf_result, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res) #11
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %res, align 4, !annotation !164
  %1 = getelementptr inbounds %struct.anon.142, ptr %res, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !164
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_enqueue.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_enqueue, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !165

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_enqueue.__UNIQUE_ID_ddebug509, ptr noundef nonnull @.str.38, ptr noundef %skb, ptr noundef %sch, ptr noundef %privdata.i) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %3 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %priority, align 4
  %and = and i32 %4, -65536
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %5 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %handle, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %6)
  %cmp.not = icmp eq i32 %and, %6
  br i1 %cmp.not, label %lor.lhs.false, label %do.end.if.then7_crit_edge

do.end.if.then7_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

lor.lhs.false:                                    ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_find.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_enqueue, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !165

if.then.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_find.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, ptr noundef %sch, ptr noundef %privdata.i, i32 noundef %4) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %lor.lhs.false
  %flows.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %do.end.i
  %.pn.in.i.i = phi ptr [ %flows.i.i, %do.end.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %flows.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.lookup_flow.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.lookup_flow.exit.i_crit_edge:        ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lookup_flow.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %flow.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -116
  %8 = ptrtoint ptr %flow.0.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flow.0.i.i, align 16
  %cmp3.i.i = icmp eq i32 %9, %4
  br i1 %cmp3.i.i, label %lookup_flow.exit.i.split.loop.exit162, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

lookup_flow.exit.i.split.loop.exit162:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %flow.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -116
  br label %lookup_flow.exit.i

lookup_flow.exit.i:                               ; preds = %lookup_flow.exit.i.split.loop.exit162, %for.cond.i.i.lookup_flow.exit.i_crit_edge
  %retval.0.i28.i = phi ptr [ %flow.0.i.i.le, %lookup_flow.exit.i.split.loop.exit162 ], [ null, %for.cond.i.i.lookup_flow.exit.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_find.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_enqueue, %if.then17.i)) #11
          to label %atm_tc_find.exit [label %if.then17.i], !srcloc !165

if.then17.i:                                      ; preds = %lookup_flow.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_find.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i28.i) #11
  br label %atm_tc_find.exit

atm_tc_find.exit:                                 ; preds = %if.then17.i, %lookup_flow.exit.i
  %tobool6.not = icmp eq ptr %retval.0.i28.i, null
  br i1 %tobool6.not, label %atm_tc_find.exit.if.then7_crit_edge, label %atm_tc_find.exit.if.else_crit_edge

atm_tc_find.exit.if.else_crit_edge:               ; preds = %atm_tc_find.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

atm_tc_find.exit.if.then7_crit_edge:              ; preds = %atm_tc_find.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

if.then7:                                         ; preds = %atm_tc_find.exit.if.then7_crit_edge, %do.end.if.then7_crit_edge
  %flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn150 = load ptr, ptr %flows, align 4
  %cmp10.not151 = icmp eq ptr %.pn150, %flows
  br i1 %cmp10.not151, label %if.then7.if.end63_crit_edge, label %if.then7.for.body_crit_edge

if.then7.for.body_crit_edge:                      ; preds = %if.then7
  br label %for.body

if.then7.if.end63_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then7.for.body_crit_edge
  %.pn152 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn150, %if.then7.for.body_crit_edge ]
  %filter_list = getelementptr i8, ptr %.pn152, i32 -100
  %11 = ptrtoint ptr %filter_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %filter_list, align 16
  %call18 = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true, label %for.body.do.end27_crit_edge

for.body.do.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

land.lhs.true:                                    ; preds = %for.body
  %call20 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true.do.end27_crit_edge, label %land.lhs.true22

land.lhs.true.do.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

land.lhs.true22:                                  ; preds = %land.lhs.true
  %.b126 = load i1, ptr @atm_tc_enqueue.__warned, align 1
  br i1 %.b126, label %land.lhs.true22.do.end27_crit_edge, label %if.then24

land.lhs.true22.do.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @atm_tc_enqueue.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 395, ptr noundef nonnull @.str.39) #11
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %land.lhs.true22.do.end27_crit_edge, %land.lhs.true.do.end27_crit_edge, %for.body.do.end27_crit_edge
  %tobool29.not = icmp eq ptr %12, null
  br i1 %tobool29.not, label %do.end27.for.inc_crit_edge, label %if.then30

do.end27.for.inc_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then30:                                        ; preds = %do.end27
  %call31 = call i32 @tcf_classify(ptr noundef %skb, ptr noundef null, ptr noundef nonnull %12, ptr noundef nonnull %res, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then30.for.inc_crit_edge, label %if.end34

if.then30.for.inc_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end34:                                         ; preds = %if.then30
  %13 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %res, align 4
  %15 = inttoptr i32 %14 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool35.not = icmp eq i32 %14, 0
  br i1 %tobool35.not, label %if.then36, label %if.end34.if.end45_crit_edge

if.end34.if.end45_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then36:                                        ; preds = %if.end34
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then36
  %.pn.in.i = phi ptr [ %flows, %if.then36 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %18 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %flows
  br i1 %cmp.not.i, label %for.cond.i.if.end63_crit_edge, label %for.body.i

for.cond.i.if.end63_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

for.body.i:                                       ; preds = %for.cond.i
  %flow.0.i = getelementptr i8, ptr %.pn.i, i32 -116
  %19 = ptrtoint ptr %flow.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flow.0.i, align 16
  %cmp3.i = icmp eq i32 %20, %17
  br i1 %cmp3.i, label %if.end45.loopexit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.inc:                                          ; preds = %if.then30.for.inc_crit_edge, %do.end27.for.inc_crit_edge
  %21 = ptrtoint ptr %.pn152 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn152, align 4
  %cmp10.not = icmp eq ptr %.pn, %flows
  br i1 %cmp10.not, label %for.inc.if.end63_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.end63_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.end45.loopexit:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %flow.0.i.le = getelementptr i8, ptr %.pn.i, i32 -116
  br label %if.end45

if.end45:                                         ; preds = %if.end45.loopexit, %if.end34.if.end45_crit_edge
  %flow.2 = phi ptr [ %15, %if.end34.if.end45_crit_edge ], [ %flow.0.i.le, %if.end45.loopexit ]
  %tobool46.not = icmp eq ptr %flow.2, null
  br i1 %tobool46.not, label %if.end45.if.end63_crit_edge, label %if.end45.if.else_crit_edge

if.end45.if.else_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end45.if.end63_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.else:                                          ; preds = %if.end45.if.else_crit_edge, %atm_tc_find.exit.if.else_crit_edge
  %flow.2160 = phi ptr [ %flow.2, %if.end45.if.else_crit_edge ], [ %retval.0.i28.i, %atm_tc_find.exit.if.else_crit_edge ]
  %result.3159 = phi i32 [ %call31, %if.end45.if.else_crit_edge ], [ 0, %atm_tc_find.exit.if.else_crit_edge ]
  %vcc = getelementptr inbounds %struct.atm_flow_data, ptr %flow.2160, i32 0, i32 4
  %22 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vcc, align 8
  %tobool48.not = icmp eq ptr %23, null
  br i1 %tobool48.not, label %if.else.if.end52_crit_edge, label %if.then49

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then49:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %atm_options = getelementptr inbounds %struct.atm_vcc, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %atm_options to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %atm_options, align 8
  %atm_options51 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %26 = ptrtoint ptr %atm_options51 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %atm_options51, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.else.if.end52_crit_edge
  %27 = zext i32 %result.3159 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %result.3159, label %if.end52.if.end63_crit_edge [
    i32 5, label %if.end52.sw.bb_crit_edge
    i32 4, label %if.end52.sw.bb_crit_edge172
    i32 8, label %if.end52.sw.bb_crit_edge173
    i32 2, label %if.then69.thread
    i32 1, label %sw.bb54
  ]

if.end52.sw.bb_crit_edge173:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end52.sw.bb_crit_edge172:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end52.sw.bb_crit_edge:                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end52.if.end63_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

sw.bb:                                            ; preds = %if.end52.sw.bb_crit_edge, %if.end52.sw.bb_crit_edge172, %if.end52.sw.bb_crit_edge173
  %28 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %to_free, align 4
  %30 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  br label %cleanup

if.then69.thread:                                 ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %to_free, align 4
  %33 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i142 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %34 = ptrtoint ptr %drops.i.i142 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %drops.i.i142, align 4
  %inc.i.i143 = add i32 %35, 1
  store i32 %inc.i.i143, ptr %drops.i.i142, align 4
  br label %if.then71

sw.bb54:                                          ; preds = %if.end52
  %excess = getelementptr inbounds %struct.atm_flow_data, ptr %flow.2160, i32 0, i32 12
  %36 = ptrtoint ptr %excess to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %excess, align 4
  %tobool55.not = icmp eq ptr %37, null
  br i1 %tobool55.not, label %if.else58, label %sw.bb54.if.end63_crit_edge

sw.bb54.if.end63_crit_edge:                       ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.else58:                                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #13
  %atm_options61 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %38 = ptrtoint ptr %atm_options61 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %atm_options61, align 4
  %or = or i32 %39, 1
  store i32 %or, ptr %atm_options61, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.else58, %sw.bb54.if.end63_crit_edge, %if.end52.if.end63_crit_edge, %if.end45.if.end63_crit_edge, %for.inc.if.end63_crit_edge, %for.cond.i.if.end63_crit_edge, %if.then7.if.end63_crit_edge
  %flow.3 = phi ptr [ %flow.2160, %if.end52.if.end63_crit_edge ], [ %flow.2160, %if.else58 ], [ %privdata.i, %if.end45.if.end63_crit_edge ], [ %37, %sw.bb54.if.end63_crit_edge ], [ %privdata.i, %if.then7.if.end63_crit_edge ], [ %privdata.i, %for.cond.i.if.end63_crit_edge ], [ %privdata.i, %for.inc.if.end63_crit_edge ]
  %q = getelementptr inbounds %struct.atm_flow_data, ptr %flow.3, i32 0, i32 1
  %40 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %q, align 4
  %stab1.i.i = getelementptr inbounds %struct.Qdisc, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %stab1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %stab1.i.i, align 4
  %call.i.i = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end63.do.end8.i.i_crit_edge

if.end63.do.end8.i.i_crit_edge:                   ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %if.end63
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 835, ptr noundef nonnull @.str.39) #11
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %if.end63.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %43, null
  br i1 %tobool10.not.i.i, label %do.end8.i.i.qdisc_enqueue.exit_crit_edge, label %if.then11.i.i

do.end8.i.i.qdisc_enqueue.exit_crit_edge:         ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_enqueue.exit

if.then11.i.i:                                    ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__qdisc_calculate_pkt_len(ptr noundef %skb, ptr noundef nonnull %43) #11
  br label %qdisc_enqueue.exit

qdisc_enqueue.exit:                               ; preds = %if.then11.i.i, %do.end8.i.i.qdisc_enqueue.exit_crit_edge
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 128
  %call.i = call i32 %45(ptr noundef %skb, ptr noundef %41, ptr noundef %to_free) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp65.not = icmp eq i32 %call.i, 0
  br i1 %cmp65.not, label %if.end74, label %drop

drop:                                             ; preds = %qdisc_enqueue.exit
  %and67 = and i32 %call.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.then69, label %drop.cleanup_crit_edge

drop.cleanup_crit_edge:                           ; preds = %drop
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then69:                                        ; preds = %drop
  %drops.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %46 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %drops.i.i, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %drops.i.i, align 4
  %tobool70.not = icmp eq ptr %flow.3, null
  br i1 %tobool70.not, label %if.then69.cleanup_crit_edge, label %if.then69.if.then71_crit_edge

if.then69.if.then71_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then71

if.then69.cleanup_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then71:                                        ; preds = %if.then69.if.then71_crit_edge, %if.then69.thread
  %ret.0138146 = phi i32 [ 131072, %if.then69.thread ], [ %call.i, %if.then69.if.then71_crit_edge ]
  %flow.4139145 = phi ptr [ %flow.2160, %if.then69.thread ], [ %flow.3, %if.then69.if.then71_crit_edge ]
  %drops = getelementptr inbounds %struct.atm_flow_data, ptr %flow.4139145, i32 0, i32 10, i32 2
  %48 = ptrtoint ptr %drops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %drops, align 8
  %inc = add i32 %49, 1
  store i32 %inc, ptr %drops, align 8
  br label %cleanup

if.end74:                                         ; preds = %qdisc_enqueue.exit
  %cmp76 = icmp eq ptr %flow.3, %privdata.i
  br i1 %cmp76, label %if.then77, label %if.end80

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %50 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %qlen, align 8
  %inc79 = add i32 %51, 1
  store i32 %inc79, ptr %qlen, align 8
  br label %cleanup

if.end80:                                         ; preds = %if.end74
  %state.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4
  %call.i128 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool.not.i = icmp eq i32 %call.i128, 0
  br i1 %tobool.not.i, label %if.then.i129, label %if.end80.cleanup_crit_edge

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i129:                                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  %task = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 3
  call void @__tasklet_schedule(ptr noundef %task) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i129, %if.end80.cleanup_crit_edge, %if.then77, %if.then71, %if.then69.cleanup_crit_edge, %drop.cleanup_crit_edge, %sw.bb
  %retval.0 = phi i32 [ 0, %if.then77 ], [ 65536, %sw.bb ], [ %call.i, %if.then69.cleanup_crit_edge ], [ %ret.0138146, %if.then71 ], [ %call.i, %drop.cleanup_crit_edge ], [ 131072, %if.end80.cleanup_crit_edge ], [ 131072, %if.then.i129 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @atm_tc_dequeue(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_dequeue.__UNIQUE_ID_ddebug515, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_dequeue, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !165

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_dequeue.__UNIQUE_ID_ddebug515, ptr noundef nonnull @.str.42, ptr noundef %sch, ptr noundef %privdata.i) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end.tasklet_schedule.exit_crit_edge

do.end.tasklet_schedule.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %task = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 3
  tail call void @__tasklet_schedule(ptr noundef %task) #11
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %do.end.tasklet_schedule.exit_crit_edge
  %q = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 4
  %call4 = tail call fastcc ptr @qdisc_dequeue_peeked(ptr noundef %1)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %tasklet_schedule.exit.if.end8_crit_edge, label %if.then6

tasklet_schedule.exit.if.end8_crit_edge:          ; preds = %tasklet_schedule.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then6:                                         ; preds = %tasklet_schedule.exit
  call void @__sanitizer_cov_trace_pc() #13
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %2 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen, align 8
  %dec = add i32 %3, -1
  store i32 %dec, ptr %qlen, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %tasklet_schedule.exit.if.end8_crit_edge
  ret ptr %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @atm_tc_peek(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_peek.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_peek, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !165

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_peek.__UNIQUE_ID_ddebug516, ptr noundef nonnull @.str.44, ptr noundef %sch, ptr noundef %privdata.i) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %q = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 4
  %ops = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 16
  %peek = getelementptr inbounds %struct.Qdisc_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %peek to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peek, align 4
  %call6 = tail call ptr %5(ptr noundef %1) #11
  ret ptr %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atm_tc_init(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_init.__UNIQUE_ID_ddebug517, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_init, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !165

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_init.__UNIQUE_ID_ddebug517, ptr noundef nonnull @.str.46, ptr noundef %sch, ptr noundef %privdata.i, ptr noundef %opt) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %flows to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %flows, ptr %flows, align 4
  %prev.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 2
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %flows, ptr %prev.i, align 4
  %list = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 52
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %list, ptr %list, align 4
  %prev.i75 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 56
  %3 = ptrtoint ptr %prev.i75 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i75, align 4
  %bstats = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  tail call void @gnet_stats_basic_sync_init(ptr noundef %bstats) #11
  %4 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flows, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %flows, ptr noundef %5) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_add.exit_crit_edge

do.end.list_add.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %list, align 4
  %8 = ptrtoint ptr %prev.i75 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %flows, ptr %prev.i75, align 4
  %9 = ptrtoint ptr %flows to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %flows, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.end.list_add.exit_crit_edge
  %dev_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %10 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_queue, align 8
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %12 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %handle, align 32
  %call8 = tail call ptr @qdisc_create_dflt(ptr noundef %11, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %13, ptr noundef %extack) #11
  %q = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %tobool12.not = icmp eq ptr %call8, null
  %spec.select = select i1 %tobool12.not, ptr @noop_qdisc, ptr %call8
  %14 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %spec.select, ptr %q, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_init.__UNIQUE_ID_ddebug518, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_init, %if.then29)) #11
          to label %do.end35 [label %if.then29], !srcloc !165

if.then29:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %q, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_init.__UNIQUE_ID_ddebug518, ptr noundef nonnull @.str.47, ptr noundef %privdata.i, ptr noundef %16) #11
  br label %do.end35

do.end35:                                         ; preds = %if.then29, %list_add.exit
  %vcc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %17 = ptrtoint ptr %vcc to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %vcc, align 8
  %sock = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 8
  %18 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %sock, align 4
  %19 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %handle, align 32
  %21 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %privdata.i, align 16
  %ref = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %22 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %ref, align 8
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %filter_list = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %call43 = tail call i32 @tcf_block_get(ptr noundef %block, ptr noundef %filter_list, ptr noundef %sch, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %do.end35.cleanup_crit_edge

do.end35.cleanup_crit_edge:                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end46:                                         ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #13
  %task = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 3
  tail call void @tasklet_setup(ptr noundef %task, ptr noundef nonnull @sch_atm_dequeue) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %do.end35.cleanup_crit_edge
  ret i32 %call43
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atm_tc_reset(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_reset.__UNIQUE_ID_ddebug519, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_reset, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !165

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_reset.__UNIQUE_ID_ddebug519, ptr noundef nonnull @.str.54, ptr noundef %sch, ptr noundef %privdata.i) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn21 = load ptr, ptr %flows, align 4
  %cmp.not22 = icmp eq ptr %.pn21, %flows
  br i1 %cmp.not22, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn23 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn21, %do.end.for.body_crit_edge ]
  %q = getelementptr i8, ptr %.pn23, i32 -104
  %1 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %q, align 4
  tail call void @qdisc_reset(ptr noundef %2) #11
  %3 = ptrtoint ptr %.pn23 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn23, align 4
  %cmp.not = icmp eq ptr %.pn, %flows
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %4 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qlen, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atm_tc_destroy(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_destroy.__UNIQUE_ID_ddebug520, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_destroy, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !165

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_destroy.__UNIQUE_ID_ddebug520, ptr noundef nonnull @.str.56, ptr noundef %sch, ptr noundef %privdata.i) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn68 = load ptr, ptr %flows, align 4
  %cmp.not69 = icmp eq ptr %.pn68, %flows
  br i1 %cmp.not69, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn70 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn68, %do.end.for.body_crit_edge ]
  %block = getelementptr i8, ptr %.pn70, i32 -96
  %1 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %block, align 4
  tail call void @tcf_block_put(ptr noundef %2) #11
  %3 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %block, align 4
  %4 = ptrtoint ptr %.pn70 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn70, align 4
  %cmp.not = icmp eq ptr %.pn, %flows
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %5 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %flows, align 16
  %cmp28.not73 = icmp eq ptr %6, %flows
  br i1 %cmp28.not73, label %for.end.for.end47_crit_edge, label %for.end.for.body31_crit_edge

for.end.for.body31_crit_edge:                     ; preds = %for.end
  br label %for.body31

for.end.for.end47_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end47

for.body31:                                       ; preds = %if.end40.for.body31_crit_edge, %for.end.for.body31_crit_edge
  %.pn65.in74 = phi ptr [ %.pn6577, %if.end40.for.body31_crit_edge ], [ %6, %for.end.for.body31_crit_edge ]
  %flow.175 = getelementptr i8, ptr %.pn65.in74, i32 -116
  %7 = ptrtoint ptr %.pn65.in74 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn6577 = load ptr, ptr %.pn65.in74, align 4
  %ref = getelementptr i8, ptr %.pn65.in74, i32 -76
  %8 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ref, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp32 = icmp sgt i32 %9, 1
  br i1 %cmp32, label %do.end36, label %for.body31.if.end40_crit_edge

for.body31.if.end40_crit_edge:                    ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

do.end36:                                         ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #13
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %flow.175, i32 noundef %9) #14
  br label %if.end40

if.end40:                                         ; preds = %do.end36, %for.body31.if.end40_crit_edge
  %10 = ptrtoint ptr %flow.175 to i32
  tail call void @atm_tc_put(ptr noundef %sch, i32 noundef %10)
  %cmp28.not = icmp eq ptr %.pn6577, %flows
  br i1 %cmp28.not, label %if.end40.for.end47_crit_edge, label %if.end40.for.body31_crit_edge

if.end40.for.body31_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body31

if.end40.for.end47_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end47

for.end47:                                        ; preds = %if.end40.for.end47_crit_edge, %for.end.for.end47_crit_edge
  %task = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 3
  tail call void @tasklet_kill(ptr noundef %task) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atm_tc_dump(ptr nocapture noundef readnone %sch, ptr nocapture noundef readnone %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atm_tc_graft(ptr noundef %sch, i32 noundef %arg, ptr noundef %new, ptr noundef %old, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_graft.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_graft, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !165

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_graft.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.3, ptr noundef %sch, ptr noundef %privdata.i, ptr noundef %0, ptr noundef %new, ptr noundef %old) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %list = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 11
  %1 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %2, %list
  br i1 %cmp.i.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %tobool8.not = icmp eq ptr %new, null
  %spec.store.select = select i1 %tobool8.not, ptr @noop_qdisc, ptr %new
  %q = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 1
  %3 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %q, align 4
  %5 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %old, align 4
  store ptr %spec.store.select, ptr %q, align 4
  %6 = load ptr, ptr %old, align 4
  %tobool12.not = icmp eq ptr %6, null
  br i1 %tobool12.not, label %if.end7.cleanup_crit_edge, label %if.then13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @qdisc_reset(ptr noundef nonnull %6) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @atm_tc_leaf(ptr noundef %sch, i32 noundef %cl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %cl to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_leaf.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_leaf, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !165

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_leaf.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.5, ptr noundef %sch, ptr noundef %0) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cl)
  %tobool3.not = icmp eq i32 %cl, 0
  br i1 %tobool3.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %q = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %q, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi ptr [ %2, %cond.true ], [ null, %do.end.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atm_tc_find(ptr noundef %sch, i32 noundef %classid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_find.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_find, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !165

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_find.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, ptr noundef %sch, ptr noundef %privdata.i, i32 noundef %classid) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flows.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end
  %.pn.in.i = phi ptr [ %flows.i, %do.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %flows.i
  br i1 %cmp.not.i, label %for.cond.i.lookup_flow.exit_crit_edge, label %for.body.i

for.cond.i.lookup_flow.exit_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lookup_flow.exit

for.body.i:                                       ; preds = %for.cond.i
  %flow.0.i = getelementptr i8, ptr %.pn.i, i32 -116
  %1 = ptrtoint ptr %flow.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flow.0.i, align 16
  %cmp3.i = icmp eq i32 %2, %classid
  br i1 %cmp3.i, label %lookup_flow.exit.split.loop.exit34, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

lookup_flow.exit.split.loop.exit34:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %flow.0.i.le = getelementptr i8, ptr %.pn.i, i32 -116
  br label %lookup_flow.exit

lookup_flow.exit:                                 ; preds = %lookup_flow.exit.split.loop.exit34, %for.cond.i.lookup_flow.exit_crit_edge
  %retval.0.i28 = phi ptr [ %flow.0.i.le, %lookup_flow.exit.split.loop.exit34 ], [ null, %for.cond.i.lookup_flow.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_find.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_find, %if.then17)) #11
          to label %do.end20 [label %if.then17], !srcloc !165

if.then17:                                        ; preds = %lookup_flow.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_find.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i28) #11
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %lookup_flow.exit
  %3 = ptrtoint ptr %retval.0.i28 to i32
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atm_tc_change(ptr noundef %sch, i32 noundef %classid, i32 noundef %parent, ptr nocapture noundef readonly %tca, ptr nocapture noundef %arg, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [7 x ptr], align 4
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 4
  %arrayidx = getelementptr ptr, ptr %tca, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tb) #11
  %4 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 1
  %5 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 3
  %6 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 4
  %7 = call ptr @memset(ptr %tb, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #11
  %8 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %error, align 4, !annotation !164
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_change.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_change, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !165

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = inttoptr i32 %1 to ptr
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_change.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.10, ptr noundef %sch, ptr noundef %privdata.i, i32 noundef %classid, i32 noundef %parent, ptr noundef %9, ptr noundef %3) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = zext i32 %parent to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %parent, label %land.lhs.true5 [
    i32 0, label %do.end.if.end8_crit_edge
    i32 -1, label %do.end.if.end8_crit_edge394
  ]

do.end.if.end8_crit_edge394:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true5:                                   ; preds = %do.end
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %11 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %handle, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %parent)
  %cmp6.not = icmp eq i32 %12, %parent
  br i1 %cmp6.not, label %land.lhs.true5.if.end8_crit_edge, label %land.lhs.true5.cleanup_crit_edge

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true5.if.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true5.if.end8_crit_edge, %do.end.if.end8_crit_edge, %do.end.if.end8_crit_edge394
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool9.not = icmp eq i32 %1, 0
  br i1 %tobool9.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %cmp12 = icmp eq ptr %3, null
  br i1 %cmp12, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %3, align 2
  %conv.i.i = zext i16 %14 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 6, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @atm_policy, i32 noundef 0, ptr noundef null) #11
  %15 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call2.i, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp16 = icmp slt i32 %call2.i, 0
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %4, align 4
  %tobool20.not = icmp eq ptr %17, null
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %add.ptr.i.i345 = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i345 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i345, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_change.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_change, %if.then37)) #11
          to label %do.end40 [label %if.then37], !srcloc !165

if.then37:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_change.__UNIQUE_ID_ddebug496, ptr noundef nonnull @.str.11, i32 noundef %19) #11
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %if.end22
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %tobool42.not = icmp eq ptr %21, null
  br i1 %tobool42.not, label %do.end40.if.end48_crit_edge, label %if.then43

do.end40.if.end48_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then43:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %21, align 2
  %conv.i = zext i16 %23 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %add.ptr.i = getelementptr i8, ptr %21, i32 4
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %do.end40.if.end48_crit_edge
  %hdr.0 = phi ptr [ %add.ptr.i, %if.then43 ], [ null, %do.end40.if.end48_crit_edge ]
  %hdr_len.0 = phi i32 [ %sub.i, %if.then43 ], [ 8, %do.end40.if.end48_crit_edge ]
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %6, align 4
  %tobool50.not = icmp eq ptr %25, null
  br i1 %tobool50.not, label %if.end48.do.body60_crit_edge, label %if.else52

if.end48.do.body60_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body60

if.else52:                                        ; preds = %if.end48
  %add.ptr.i.i346 = getelementptr i8, ptr %25, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i346 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i346, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_find.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_change, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !165

if.then.i:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_find.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, ptr noundef %sch, ptr noundef %privdata.i, i32 noundef %27) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.else52
  %flows.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %do.end.i
  %.pn.in.i.i = phi ptr [ %flows.i.i, %do.end.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %28 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %flows.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.lookup_flow.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.lookup_flow.exit.i_crit_edge:        ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lookup_flow.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %flow.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -116
  %29 = ptrtoint ptr %flow.0.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flow.0.i.i, align 16
  %cmp3.i.i = icmp eq i32 %30, %27
  br i1 %cmp3.i.i, label %lookup_flow.exit.i.split.loop.exit384, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

lookup_flow.exit.i.split.loop.exit384:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %flow.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -116
  br label %lookup_flow.exit.i

lookup_flow.exit.i:                               ; preds = %lookup_flow.exit.i.split.loop.exit384, %for.cond.i.i.lookup_flow.exit.i_crit_edge
  %retval.0.i28.i = phi ptr [ %flow.0.i.i.le, %lookup_flow.exit.i.split.loop.exit384 ], [ null, %for.cond.i.i.lookup_flow.exit.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_find.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_change, %if.then17.i)) #11
          to label %atm_tc_find.exit [label %if.then17.i], !srcloc !165

if.then17.i:                                      ; preds = %lookup_flow.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_find.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i28.i) #11
  br label %atm_tc_find.exit

atm_tc_find.exit:                                 ; preds = %if.then17.i, %lookup_flow.exit.i
  %tobool56.not = icmp eq ptr %retval.0.i28.i, null
  br i1 %tobool56.not, label %atm_tc_find.exit.cleanup_crit_edge, label %atm_tc_find.exit.do.body60_crit_edge

atm_tc_find.exit.do.body60_crit_edge:             ; preds = %atm_tc_find.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body60

atm_tc_find.exit.cleanup_crit_edge:               ; preds = %atm_tc_find.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body60:                                        ; preds = %atm_tc_find.exit.do.body60_crit_edge, %if.end48.do.body60_crit_edge
  %excess.0 = phi ptr [ %retval.0.i28.i, %atm_tc_find.exit.do.body60_crit_edge ], [ null, %if.end48.do.body60_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_change.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_change, %if.then72)) #11
          to label %do.end76 [label %if.then72], !srcloc !165

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #13
  %nla_type = getelementptr inbounds %struct.nlattr, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %nla_type to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %nla_type, align 2
  %conv = zext i16 %32 to i32
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %3, align 2
  %conv.i347 = zext i16 %34 to i32
  %sub.i348 = add nsw i32 %conv.i347, -4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_change.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.12, i32 noundef %conv, i32 noundef %sub.i348, i32 noundef %hdr_len.0) #11
  br label %do.end76

do.end76:                                         ; preds = %if.then72, %do.body60
  %call77 = call ptr @sockfd_lookup(i32 noundef %19, ptr noundef nonnull %error) #11
  %tobool78.not = icmp eq ptr %call77, null
  br i1 %tobool78.not, label %if.then79, label %do.body81

if.then79:                                        ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %error, align 4
  br label %cleanup

do.body81:                                        ; preds = %do.end76
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_change.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_change, %if.then93)) #11
          to label %do.end97 [label %if.then93], !srcloc !165

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #13
  %file = getelementptr inbounds %struct.socket, ptr %call77, i32 0, i32 3
  %37 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %file, align 4
  %f_count = getelementptr inbounds %struct.file, ptr %38, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %f_count, i32 noundef 4) #11
  %39 = ptrtoint ptr %f_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %f_count, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_change.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.13, i32 noundef %40) #11
  br label %do.end97

do.end97:                                         ; preds = %if.then93, %do.body81
  %ops = getelementptr inbounds %struct.socket, ptr %call77, i32 0, i32 5
  %41 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %44, label %if.then105 [
    i32 20, label %do.end97.if.end106_crit_edge
    i32 8, label %do.end97.if.end106_crit_edge395
  ]

do.end97.if.end106_crit_edge395:                  ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

do.end97.if.end106_crit_edge:                     ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

if.then105:                                       ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -91, ptr %error, align 4
  br label %err_out

if.end106:                                        ; preds = %do.end97.if.end106_crit_edge, %do.end97.if.end106_crit_edge395
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %classid)
  %tobool107.not = icmp eq i32 %classid, 0
  %handle132 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  br i1 %tobool107.not, label %for.cond.preheader, label %if.then108

for.cond.preheader:                               ; preds = %if.end106
  %flows.i.i351 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 1
  br label %for.body

if.then108:                                       ; preds = %if.end106
  %47 = ptrtoint ptr %handle132 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %handle132, align 32
  %xor = xor i32 %48, %classid
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %xor)
  %tobool110.not = icmp ult i32 %xor, 65536
  br i1 %tobool110.not, label %if.then108.do.body141_crit_edge, label %do.body112

if.then108.do.body141_crit_edge:                  ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body141

do.body112:                                       ; preds = %if.then108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_change.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_change, %if.then124)) #11
          to label %do.end127 [label %if.then124], !srcloc !165

if.then124:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_change.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.14) #11
  br label %do.end127

do.end127:                                        ; preds = %if.then124, %do.body112
  %49 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -22, ptr %error, align 4
  br label %err_out

for.body:                                         ; preds = %atm_tc_find.exit365.for.body_crit_edge, %for.cond.preheader
  %i.0381 = phi i32 [ 1, %for.cond.preheader ], [ %inc, %atm_tc_find.exit365.for.body_crit_edge ]
  %50 = ptrtoint ptr %handle132 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %handle132, align 32
  %and133 = and i32 %51, -65536
  %and134 = or i32 %i.0381, %and133
  %or135 = or i32 %and134, 32768
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_find.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_change, %if.then.i350)) #11
          to label %for.cond.i.i356 [label %if.then.i350], !srcloc !165

if.then.i350:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_find.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, ptr noundef %sch, ptr noundef %privdata.i, i32 noundef %or135) #11
  br label %for.cond.i.i356

for.cond.i.i356:                                  ; preds = %for.body.i.i359.for.cond.i.i356_crit_edge, %if.then.i350, %for.body
  %.pn.in.i.i353 = phi ptr [ %.pn.i.i354, %for.body.i.i359.for.cond.i.i356_crit_edge ], [ %flows.i.i351, %if.then.i350 ], [ %flows.i.i351, %for.body ]
  %52 = ptrtoint ptr %.pn.in.i.i353 to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn.i.i354 = load ptr, ptr %.pn.in.i.i353, align 4
  %cmp.not.i.i355 = icmp eq ptr %.pn.i.i354, %flows.i.i351
  br i1 %cmp.not.i.i355, label %for.cond.i.i356.lookup_flow.exit.i363_crit_edge, label %for.body.i.i359

for.cond.i.i356.lookup_flow.exit.i363_crit_edge:  ; preds = %for.cond.i.i356
  call void @__sanitizer_cov_trace_pc() #13
  br label %lookup_flow.exit.i363

for.body.i.i359:                                  ; preds = %for.cond.i.i356
  %flow.0.i.i357 = getelementptr i8, ptr %.pn.i.i354, i32 -116
  %53 = ptrtoint ptr %flow.0.i.i357 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flow.0.i.i357, align 16
  %cmp3.i.i358 = icmp eq i32 %54, %or135
  br i1 %cmp3.i.i358, label %lookup_flow.exit.i363.split.loop.exit386, label %for.body.i.i359.for.cond.i.i356_crit_edge

for.body.i.i359.for.cond.i.i356_crit_edge:        ; preds = %for.body.i.i359
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i356

lookup_flow.exit.i363.split.loop.exit386:         ; preds = %for.body.i.i359
  call void @__sanitizer_cov_trace_pc() #13
  %flow.0.i.i357.le = getelementptr i8, ptr %.pn.i.i354, i32 -116
  br label %lookup_flow.exit.i363

lookup_flow.exit.i363:                            ; preds = %lookup_flow.exit.i363.split.loop.exit386, %for.cond.i.i356.lookup_flow.exit.i363_crit_edge
  %retval.0.i28.i362 = phi ptr [ %flow.0.i.i357.le, %lookup_flow.exit.i363.split.loop.exit386 ], [ null, %for.cond.i.i356.lookup_flow.exit.i363_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_find.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_change, %if.then17.i364)) #11
          to label %atm_tc_find.exit365 [label %if.then17.i364], !srcloc !165

if.then17.i364:                                   ; preds = %lookup_flow.exit.i363
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_find.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i28.i362) #11
  br label %atm_tc_find.exit365

atm_tc_find.exit365:                              ; preds = %if.then17.i364, %lookup_flow.exit.i363
  %tobool137.not = icmp eq ptr %retval.0.i28.i362, null
  %inc = add nuw nsw i32 %i.0381, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 32768
  %or.cond = select i1 %tobool137.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %atm_tc_find.exit365.do.body141_crit_edge, label %atm_tc_find.exit365.for.body_crit_edge

atm_tc_find.exit365.for.body_crit_edge:           ; preds = %atm_tc_find.exit365
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

atm_tc_find.exit365.do.body141_crit_edge:         ; preds = %atm_tc_find.exit365
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body141

do.body141:                                       ; preds = %atm_tc_find.exit365.do.body141_crit_edge, %if.then108.do.body141_crit_edge
  %classid.addr.2 = phi i32 [ %classid, %if.then108.do.body141_crit_edge ], [ %or135, %atm_tc_find.exit365.do.body141_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_change.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_change, %if.then153)) #11
          to label %if.end8.i.i [label %if.then153], !srcloc !165

if.then153:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_change.__UNIQUE_ID_ddebug500, ptr noundef nonnull @.str.15, i32 noundef %classid.addr.2) #11
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then153, %do.body141
  %add = add nsw i32 %hdr_len.0, 144
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_change.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_change, %if.then170)) #11
          to label %do.end173 [label %if.then170], !srcloc !165

if.then170:                                       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_change.__UNIQUE_ID_ddebug501, ptr noundef nonnull @.str.16, ptr noundef %call9.i.i) #11
  br label %do.end173

do.end173:                                        ; preds = %if.then170, %if.end8.i.i
  %tobool174.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool174.not, label %if.then175, label %if.end176

if.then175:                                       ; preds = %do.end173
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -105, ptr %error, align 4
  br label %err_out

if.end176:                                        ; preds = %do.end173
  %block = getelementptr inbounds %struct.atm_flow_data, ptr %call9.i.i, i32 0, i32 3
  %filter_list = getelementptr inbounds %struct.atm_flow_data, ptr %call9.i.i, i32 0, i32 2
  %call177 = call i32 @tcf_block_get(ptr noundef %block, ptr noundef %filter_list, ptr noundef %sch, ptr noundef %extack) #11
  %56 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call177, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end180, label %if.then179

if.then179:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %err_out

if.end180:                                        ; preds = %if.end176
  %dev_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %57 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev_queue, align 8
  %call181 = call ptr @qdisc_create_dflt(ptr noundef %58, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %classid.addr.2, ptr noundef %extack) #11
  %q = getelementptr inbounds %struct.atm_flow_data, ptr %call9.i.i, i32 0, i32 1
  %tobool183.not = icmp eq ptr %call181, null
  %spec.select = select i1 %tobool183.not, ptr @noop_qdisc, ptr %call181
  %59 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %spec.select, ptr %q, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_change.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_change, %if.then199)) #11
          to label %do.end203 [label %if.then199], !srcloc !165

if.then199:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %q, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_change.__UNIQUE_ID_ddebug502, ptr noundef nonnull @.str.17, ptr noundef %61) #11
  br label %do.end203

do.end203:                                        ; preds = %if.then199, %if.end180
  %sock204 = getelementptr inbounds %struct.atm_flow_data, ptr %call9.i.i, i32 0, i32 7
  %62 = ptrtoint ptr %sock204 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call77, ptr %sock204, align 4
  %sk.i = getelementptr inbounds %struct.socket, ptr %call77, i32 0, i32 4
  %63 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sk.i, align 16
  %vcc = getelementptr inbounds %struct.atm_flow_data, ptr %call9.i.i, i32 0, i32 4
  %65 = ptrtoint ptr %vcc to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %vcc, align 8
  %user_back = getelementptr inbounds %struct.atm_vcc, ptr %64, i32 0, i32 22
  %66 = ptrtoint ptr %user_back to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call9.i.i, ptr %user_back, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_change.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_change, %if.then219)) #11
          to label %do.end223 [label %if.then219], !srcloc !165

if.then219:                                       ; preds = %do.end203
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vcc, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_change.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.18, ptr noundef %68) #11
  br label %do.end223

do.end223:                                        ; preds = %if.then219, %do.end203
  %69 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %vcc, align 8
  %pop = getelementptr inbounds %struct.atm_vcc, ptr %70, i32 0, i32 11
  %71 = ptrtoint ptr %pop to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pop, align 4
  %old_pop = getelementptr inbounds %struct.atm_flow_data, ptr %call9.i.i, i32 0, i32 5
  %73 = ptrtoint ptr %old_pop to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %old_pop, align 4
  %parent225 = getelementptr inbounds %struct.atm_flow_data, ptr %call9.i.i, i32 0, i32 6
  %74 = ptrtoint ptr %parent225 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %privdata.i, ptr %parent225, align 32
  store ptr @sch_atm_pop, ptr %pop, align 4
  %75 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %classid.addr.2, ptr %call9.i.i, align 128
  %ref = getelementptr inbounds %struct.atm_flow_data, ptr %call9.i.i, i32 0, i32 8
  %76 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %ref, align 8
  %excess229 = getelementptr inbounds %struct.atm_flow_data, ptr %call9.i.i, i32 0, i32 12
  %77 = ptrtoint ptr %excess229 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %excess.0, ptr %excess229, align 4
  %list = getelementptr inbounds %struct.atm_flow_data, ptr %call9.i.i, i32 0, i32 11
  %list230 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 52
  %78 = ptrtoint ptr %list230 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %list230, align 4
  %call.i.i366 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %list230, ptr noundef %79) #11
  br i1 %call.i.i366, label %if.end.i.i367, label %do.end223.list_add.exit_crit_edge

do.end223.list_add.exit_crit_edge:                ; preds = %do.end223
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i367:                                    ; preds = %do.end223
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %list, ptr %prev1.i.i, align 4
  %81 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %79, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.atm_flow_data, ptr %call9.i.i, i32 0, i32 11, i32 1
  %82 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %list230, ptr %prev3.i.i, align 8
  %83 = ptrtoint ptr %list230 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %list, ptr %list230, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i367, %do.end223.list_add.exit_crit_edge
  %hdr_len231 = getelementptr inbounds %struct.atm_flow_data, ptr %call9.i.i, i32 0, i32 13
  %84 = ptrtoint ptr %hdr_len231 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %hdr_len.0, ptr %hdr_len231, align 128
  %tobool232.not = icmp eq ptr %hdr.0, null
  %hdr237 = getelementptr inbounds %struct.atm_flow_data, ptr %call9.i.i, i32 0, i32 14
  br i1 %tobool232.not, label %if.else236, label %if.then233

if.then233:                                       ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  %85 = call ptr @memcpy(ptr %hdr237, ptr %hdr.0, i32 %hdr_len.0)
  br label %if.end239

if.else236:                                       ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %hdr237 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 8)
  store i64 -6149099042686105600, ptr %hdr237, align 4
  br label %if.end239

if.end239:                                        ; preds = %if.else236, %if.then233
  %87 = ptrtoint ptr %call9.i.i to i32
  %88 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %arg, align 4
  br label %cleanup

err_out:                                          ; preds = %if.then179, %if.then175, %do.end127, %if.then105
  %file240 = getelementptr inbounds %struct.socket, ptr %call77, i32 0, i32 3
  %89 = ptrtoint ptr %file240 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %file240, align 4
  call void @fput(ptr noundef %90) #11
  %91 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end239, %if.then79, %atm_tc_find.exit.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge
  %retval.0 = phi i32 [ %92, %err_out ], [ 0, %if.end239 ], [ %36, %if.then79 ], [ -22, %land.lhs.true5.cleanup_crit_edge ], [ -16, %if.end8.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ %call2.i, %if.end14.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ], [ -2, %atm_tc_find.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tb) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atm_tc_delete(ptr noundef %sch, i32 noundef %arg, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = inttoptr i32 %arg to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_delete.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_delete, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !165

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_delete.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.22, ptr noundef %sch, ptr noundef %privdata.i, ptr noundef %0) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %list = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 11
  %1 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %2, %list
  br i1 %cmp.i.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %filter_list = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 2
  %3 = ptrtoint ptr %filter_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %filter_list, align 16
  %tobool13.not = icmp ne ptr %4, null
  %cmp = icmp eq ptr %privdata.i, %0
  %or.cond = select i1 %tobool13.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.end7.cleanup_crit_edge, label %if.end15

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %ref = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 8
  %5 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ref, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp16 = icmp slt i32 %6, 2
  br i1 %cmp16, label %do.end20, label %if.end24

do.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %6) #14
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp26.not = icmp eq i32 %6, 2
  br i1 %cmp26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @atm_tc_put(ptr noundef %sch, i32 noundef %arg)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end24.cleanup_crit_edge, %do.end20, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end20 ], [ 0, %if.end28 ], [ -22, %do.end.cleanup_crit_edge ], [ -16, %if.end7.cleanup_crit_edge ], [ -16, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atm_tc_walk(ptr noundef %sch, ptr noundef %walker) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_walk.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_walk, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !165

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_walk.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.25, ptr noundef %sch, ptr noundef %privdata.i, ptr noundef %walker) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %walker to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %walker, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool4.not = icmp eq i32 %1, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn38 = load ptr, ptr %flows, align 4
  %cmp.not40 = icmp eq ptr %.pn38, %flows
  br i1 %cmp.not40, label %if.end6.cleanup_crit_edge, label %for.body.lr.ph

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end6
  %count = getelementptr inbounds %struct.qdisc_walker, ptr %walker, i32 0, i32 2
  %skip = getelementptr inbounds %struct.qdisc_walker, ptr %walker, i32 0, i32 1
  %fn = getelementptr inbounds %struct.qdisc_walker, ptr %walker, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %for.body.lr.ph
  %.pn41 = phi ptr [ %.pn38, %for.body.lr.ph ], [ %.pn, %if.end16.for.body_crit_edge ]
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count, align 4
  %5 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp11.not = icmp slt i32 %4, %6
  br i1 %cmp11.not, label %for.body.if.end16_crit_edge, label %land.lhs.true

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true:                                    ; preds = %for.body
  %flow.042 = getelementptr i8, ptr %.pn41, i32 -116
  %7 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fn, align 4
  %9 = ptrtoint ptr %flow.042 to i32
  %call12 = tail call i32 %8(ptr noundef %sch, i32 noundef %9, ptr noundef %walker) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %walker to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %walker, align 4
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %for.body.if.end16_crit_edge
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %count, align 4
  %13 = ptrtoint ptr %.pn41 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn41, align 4
  %cmp.not = icmp eq ptr %.pn, %flows
  br i1 %cmp.not, label %if.end16.cleanup_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end16.cleanup_crit_edge, %if.then14, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @atm_tc_tcf_block(ptr noundef %sch, i32 noundef %cl, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = inttoptr i32 %cl to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_tcf_block.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_tcf_block, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !165

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_tcf_block.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.27, ptr noundef %sch, ptr noundef %privdata.i, ptr noundef %0) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cl)
  %tobool4.not = icmp eq i32 %cl, 0
  %call. = select i1 %tobool4.not, ptr %privdata.i, ptr %0
  %cond.in = getelementptr inbounds %struct.atm_flow_data, ptr %call., i32 0, i32 3
  %1 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %cond = load ptr, ptr %cond.in, align 4
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atm_tc_bind_filter(ptr noundef %sch, i32 noundef %parent, i32 noundef %classid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_bind_filter.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_bind_filter, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !165

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_bind_filter.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.28, ptr noundef %sch, ptr noundef %privdata.i, i32 noundef %classid) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flows.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end
  %.pn.in.i = phi ptr [ %flows.i, %do.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %flows.i
  br i1 %cmp.not.i, label %for.cond.i.do.body8_crit_edge, label %for.body.i

for.cond.i.do.body8_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

for.body.i:                                       ; preds = %for.cond.i
  %flow.0.i = getelementptr i8, ptr %.pn.i, i32 -116
  %1 = ptrtoint ptr %flow.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flow.0.i, align 16
  %cmp3.i = icmp eq i32 %2, %classid
  br i1 %cmp3.i, label %lookup_flow.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

lookup_flow.exit:                                 ; preds = %for.body.i
  %flow.0.i.le = getelementptr i8, ptr %.pn.i, i32 -116
  %tobool5.not = icmp eq ptr %flow.0.i.le, null
  br i1 %tobool5.not, label %lookup_flow.exit.do.body8_crit_edge, label %if.then6

lookup_flow.exit.do.body8_crit_edge:              ; preds = %lookup_flow.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

if.then6:                                         ; preds = %lookup_flow.exit
  call void @__sanitizer_cov_trace_pc() #13
  %ref = getelementptr i8, ptr %.pn.i, i32 -76
  %3 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ref, align 8
  %inc = add i32 %4, 1
  store i32 %inc, ptr %ref, align 8
  br label %do.body8

do.body8:                                         ; preds = %if.then6, %lookup_flow.exit.do.body8_crit_edge, %for.cond.i.do.body8_crit_edge
  %retval.0.i3337 = phi ptr [ null, %lookup_flow.exit.do.body8_crit_edge ], [ %flow.0.i.le, %if.then6 ], [ null, %for.cond.i.do.body8_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_bind_filter.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_bind_filter, %if.then20)) #11
          to label %do.end23 [label %if.then20], !srcloc !165

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_bind_filter.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.28, ptr noundef %retval.0.i3337) #11
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %do.body8
  %5 = ptrtoint ptr %retval.0.i3337 to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atm_tc_put(ptr noundef %sch, i32 noundef %cl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = inttoptr i32 %cl to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_put.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_put, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !165

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_put.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.30, ptr noundef %sch, ptr noundef %privdata.i, ptr noundef %0) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ref = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ref, align 8
  %dec = add i32 %2, -1
  store i32 %dec, ptr %ref, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool4.not = icmp eq i32 %dec, 0
  br i1 %tobool4.not, label %do.body7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body7:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_put.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_put, %if.then19)) #11
          to label %do.end22 [label %if.then19], !srcloc !165

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_put.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.31) #11
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body7
  %list = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 11
  %call.i.i97 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i97, label %if.end.i.i, label %do.end22.list_del_init.exit_crit_edge

do.end22.list_del_init.exit_crit_edge:            ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 11, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end22.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %prev.i3.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_put.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_put, %if.then35)) #11
          to label %do.end38 [label %if.then35], !srcloc !165

if.then35:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %q = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 1
  %11 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %q, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_put.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.32, ptr noundef %12) #11
  br label %do.end38

do.end38:                                         ; preds = %if.then35, %list_del_init.exit
  %q39 = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 1
  %13 = ptrtoint ptr %q39 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %q39, align 4
  tail call void @qdisc_put(ptr noundef %14) #11
  %block = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 3
  %15 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %block, align 4
  tail call void @tcf_block_put(ptr noundef %16) #11
  %sock = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 7
  %17 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sock, align 4
  %tobool40.not = icmp eq ptr %18, null
  br i1 %tobool40.not, label %do.end38.if.end62_crit_edge, label %do.body42

do.end38.if.end62_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

do.body42:                                        ; preds = %do.end38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_put.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_put, %if.then54)) #11
          to label %do.end59 [label %if.then54], !srcloc !165

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sock, align 4
  %file = getelementptr inbounds %struct.socket, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %file, align 4
  %f_count = getelementptr inbounds %struct.file, ptr %22, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %f_count, i32 noundef 4) #11
  %23 = ptrtoint ptr %f_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %f_count, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_put.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.33, i32 noundef %24) #11
  br label %do.end59

do.end59:                                         ; preds = %if.then54, %do.body42
  %old_pop = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 5
  %25 = ptrtoint ptr %old_pop to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %old_pop, align 4
  %vcc = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 4
  %27 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vcc, align 8
  %pop = getelementptr inbounds %struct.atm_vcc, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %pop to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %pop, align 4
  %30 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sock, align 4
  %file61 = getelementptr inbounds %struct.socket, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %file61 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %file61, align 4
  tail call void @fput(ptr noundef %33) #11
  br label %if.end62

if.end62:                                         ; preds = %do.end59, %do.end38.if.end62_crit_edge
  %excess = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 12
  %34 = ptrtoint ptr %excess to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %excess, align 4
  %tobool63.not = icmp eq ptr %35, null
  br i1 %tobool63.not, label %if.end62.if.end66_crit_edge, label %if.then64

if.end62.if.end66_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then64:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %35 to i32
  tail call void @atm_tc_put(ptr noundef %sch, i32 noundef %36)
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end62.if.end66_crit_edge
  %cmp.not = icmp eq ptr %privdata.i, %0
  br i1 %cmp.not, label %if.end66.cleanup_crit_edge, label %if.then67

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then67:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef %0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %if.end66.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atm_tc_dump_class(ptr noundef %sch, i32 noundef %cl, ptr noundef %skb, ptr noundef %tcm) #2 align 64 {
entry:
  %tmp.i132 = alloca i32, align 4
  %tmp.i130 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %pvc = alloca %struct.sockaddr_atmpvc, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %cl to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_tc_dump_class.__UNIQUE_ID_ddebug521, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_tc_dump_class, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !165

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_tc_dump_class.__UNIQUE_ID_ddebug521, ptr noundef nonnull @.str.35, ptr noundef %sch, ptr noundef %privdata.i, ptr noundef %0, ptr noundef %skb, ptr noundef %tcm) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %list = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 11
  %1 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %2, %list
  br i1 %cmp.i.not, label %do.end.cleanup87_crit_edge, label %if.end7

do.end.cleanup87_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup87

if.end7:                                          ; preds = %do.end
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 16
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 4
  %5 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tcm_handle, align 4
  %q = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 1
  %6 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %q, align 4
  %handle = getelementptr inbounds %struct.Qdisc, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %handle, align 32
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
  %cmp.i129 = icmp slt i32 %call1.i, 0
  %cmp139 = icmp eq ptr %12, null
  %cmp = select i1 %cmp.i129, i1 true, i1 %cmp139
  br i1 %cmp, label %if.end7.cleanup87_crit_edge, label %if.end10

if.end7.cleanup87_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup87

if.end10:                                         ; preds = %if.end7
  %hdr_len = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 13
  %13 = ptrtoint ptr %hdr_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hdr_len, align 16
  %hdr = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 14
  %call11 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef %14, ptr noundef %hdr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.if.then.i.i_crit_edge

if.end10.if.then.i.i_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end14:                                         ; preds = %if.end10
  %vcc = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 4
  %15 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vcc, align 8
  %tobool15.not = icmp eq ptr %16, null
  br i1 %tobool15.not, label %if.end14.if.end72_crit_edge, label %if.then16

if.end14.if.end72_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then16:                                        ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pvc) #11
  %17 = ptrtoint ptr %pvc to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %pvc, align 4
  store i16 8, ptr %pvc, align 4
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %16, i32 0, i32 6
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %tobool18.not = icmp eq ptr %19, null
  br i1 %tobool18.not, label %if.then16.cond.end_crit_edge, label %cond.true

if.then16.cond.end_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %number = getelementptr inbounds %struct.atm_dev, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %number, align 4
  %phi.cast = trunc i32 %21 to i16
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then16.cond.end_crit_edge
  %cond = phi i16 [ %phi.cast, %cond.true ], [ -1, %if.then16.cond.end_crit_edge ]
  %sap_addr = getelementptr inbounds %struct.sockaddr_atmpvc, ptr %pvc, i32 0, i32 1
  %22 = ptrtoint ptr %sap_addr to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %cond, ptr %sap_addr, align 4
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %16, i32 0, i32 2
  %23 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vpi, align 4
  %vpi23 = getelementptr inbounds %struct.sockaddr_atmpvc, ptr %pvc, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %vpi23 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %vpi23, align 2
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %16, i32 0, i32 3
  %26 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vci, align 8
  %vci26 = getelementptr inbounds %struct.sockaddr_atmpvc, ptr %pvc, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %vci26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %vci26, align 4
  %call27 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 12, ptr noundef nonnull %pvc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %cond.end.cleanup.thread_crit_edge

cond.end.cleanup.thread_crit_edge:                ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end30:                                         ; preds = %cond.end
  %29 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vcc, align 8
  %flags = getelementptr inbounds %struct.atm_vcc, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags, align 4
  %33 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool33.not = icmp eq i32 %33, 0
  br i1 %tobool33.not, label %cond.false35, label %if.end30.cond.end65_crit_edge

if.end30.cond.end65_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end65

cond.false35:                                     ; preds = %if.end30
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags, align 4
  %36 = and i32 %35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool39.not = icmp eq i32 %36, 0
  br i1 %tobool39.not, label %cond.false41, label %cond.false35.cond.end65_crit_edge

cond.false35.cond.end65_crit_edge:                ; preds = %cond.false35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end65

cond.false41:                                     ; preds = %cond.false35
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %flags, align 4
  %39 = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool45.not = icmp eq i32 %39, 0
  br i1 %tobool45.not, label %cond.false47, label %cond.false41.cond.end65_crit_edge

cond.false41.cond.end65_crit_edge:                ; preds = %cond.false41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end65

cond.false47:                                     ; preds = %cond.false41
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %flags, align 4
  %42 = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool51.not = icmp eq i32 %42, 0
  br i1 %tobool51.not, label %cond.false53, label %cond.false47.cond.end65_crit_edge

cond.false47.cond.end65_crit_edge:                ; preds = %cond.false47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end65

cond.false53:                                     ; preds = %cond.false47
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %flags, align 4
  %45 = and i32 %44, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool57.not = icmp eq i32 %45, 0
  %cond58 = select i1 %tobool57.not, i32 0, i32 5
  br label %cond.end65

cond.end65:                                       ; preds = %cond.false53, %cond.false47.cond.end65_crit_edge, %cond.false41.cond.end65_crit_edge, %cond.false35.cond.end65_crit_edge, %if.end30.cond.end65_crit_edge
  %cond66 = phi i32 [ 1, %if.end30.cond.end65_crit_edge ], [ 2, %cond.false35.cond.end65_crit_edge ], [ 3, %cond.false41.cond.end65_crit_edge ], [ %cond58, %cond.false53 ], [ 4, %cond.false47.cond.end65_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #11
  %46 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %cond66, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool68.not = icmp eq i32 %call.i, 0
  br i1 %tobool68.not, label %cleanup, label %cond.end65.cleanup.thread_crit_edge

cond.end65.cleanup.thread_crit_edge:              ; preds = %cond.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cond.end65.cleanup.thread_crit_edge, %cond.end.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pvc) #11
  br label %if.then.i.i

cleanup:                                          ; preds = %cond.end65
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pvc) #11
  br label %if.end72

if.end72:                                         ; preds = %cleanup, %if.end14.if.end72_crit_edge
  %excess = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 12
  %47 = ptrtoint ptr %excess to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %excess, align 4
  %tobool73.not = icmp eq ptr %48, null
  br i1 %tobool73.not, label %if.else, label %if.then74

if.then74:                                        ; preds = %if.end72
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %0, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i130) #11
  %51 = ptrtoint ptr %tmp.i130 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %tmp.i130, align 4
  %call.i131 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i130) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i130) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool78.not = icmp eq i32 %call.i131, 0
  br i1 %tobool78.not, label %if.then74.if.end85_crit_edge, label %if.then74.if.then.i.i_crit_edge

if.then74.if.then.i.i_crit_edge:                  ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then74.if.end85_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

if.else:                                          ; preds = %if.end72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i132) #11
  %52 = ptrtoint ptr %tmp.i132 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %tmp.i132, align 4
  %call.i133 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i132) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i132) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %tobool82.not = icmp eq i32 %call.i133, 0
  br i1 %tobool82.not, label %if.else.if.end85_crit_edge, label %if.else.if.then.i.i_crit_edge

if.else.if.then.i.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.else.if.end85_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

if.end85:                                         ; preds = %if.else.if.end85_crit_edge, %if.then74.if.end85_crit_edge
  %53 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %54 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i135 = trunc i32 %sub.ptr.sub.i to i16
  %55 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i135, ptr %12, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %56 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len.i, align 4
  br label %cleanup87

if.then.i.i:                                      ; preds = %if.else.if.then.i.i_crit_edge, %if.then74.if.then.i.i_crit_edge, %cleanup.thread, %if.end10.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %58 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %59, %12
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !166

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %60 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %61 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #11
  br label %cleanup87

cleanup87:                                        ; preds = %if.end.i.i, %if.end85, %if.end7.cleanup87_crit_edge, %do.end.cleanup87_crit_edge
  %retval.0 = phi i32 [ %57, %if.end85 ], [ -22, %do.end.cleanup87_crit_edge ], [ -1, %if.end7.cleanup87_crit_edge ], [ -1, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atm_tc_dump_class_stats(ptr nocapture noundef readnone %sch, i32 noundef %arg, ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %bstats = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 9
  %call = tail call i32 @gnet_stats_copy_basic(ptr noundef %d, ptr noundef null, ptr noundef %bstats, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %qstats = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 10
  %q = getelementptr inbounds %struct.atm_flow_data, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %q, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %2, i32 0, i32 17, i32 2
  %3 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen, align 8
  %call2 = tail call i32 @gnet_stats_copy_queue(ptr noundef %d, ptr noundef null, ptr noundef %qstats, i32 noundef %4) #11
  %call2.lobit = ashr i32 %call2, 31
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %call2.lobit, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sockfd_lookup(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_block_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qdisc_create_dflt(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sch_atm_pop(ptr noundef %vcc, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %user_back = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 22
  %0 = ptrtoint ptr %user_back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_back, align 8
  %parent = getelementptr inbounds %struct.atm_flow_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sch_atm_pop.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sch_atm_pop, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !165

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sch_atm_pop.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.20, ptr noundef %vcc, ptr noundef %skb, ptr noundef %3) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %user_back to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_back, align 8
  %old_pop = getelementptr inbounds %struct.atm_flow_data, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %old_pop to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %old_pop, align 4
  tail call void %7(ptr noundef %vcc, ptr noundef %skb) #11
  %state.i = getelementptr inbounds %struct.atm_qdisc_data, ptr %3, i32 0, i32 2, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end.tasklet_schedule.exit_crit_edge

do.end.tasklet_schedule.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %task = getelementptr inbounds %struct.atm_qdisc_data, ptr %3, i32 0, i32 2
  tail call void @__tasklet_schedule(ptr noundef %task) #11
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %do.end.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_block_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_basic(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_queue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qdisc_dequeue_peeked(ptr noundef %sch) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %gso_skb = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 16
  %0 = ptrtoint ptr %gso_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gso_skb, align 4
  %cmp.i = icmp eq ptr %1, %gso_skb
  %tobool.not31 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.i, %tobool.not31
  br i1 %tobool.not, label %if.else5, label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %entry
  %qlen.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 16, i32 1
  %2 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %1, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.0, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %prev17.i.i, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %5, ptr %7, align 8
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %__skb_dequeue.exit
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !167
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cb.i.i.i, align 4
  %cpu_qstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 12
  %15 = ptrtoint ptr %cpu_qstats.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cpu_qstats.i, align 4
  %backlog.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %backlog.i to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !154) #11
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %23, %17
  %24 = inttoptr i32 %add.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add14.i = sub i32 %26, %14
  store i32 %add14.i, ptr %24, align 4
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !168
  %and.i.i.i = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i19 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i19, label %if.then.i20, label %if.then4.qdisc_qstats_cpu_backlog_dec.exit_crit_edge, !prof !166

if.then4.qdisc_qstats_cpu_backlog_dec.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_qstats_cpu_backlog_dec.exit

if.then.i20:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %qdisc_qstats_cpu_backlog_dec.exit

qdisc_qstats_cpu_backlog_dec.exit:                ; preds = %if.then.i20, %if.then4.qdisc_qstats_cpu_backlog_dec.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #11, !srcloc !169
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !167
  %29 = ptrtoint ptr %cpu_qstats.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cpu_qstats.i, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = tail call i32 @llvm.read_register.i32(metadata !154) #11
  %and.i.i22 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i22 to ptr
  %cpu.i23 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpu.i23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i23, align 4
  %arrayidx.i24 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i24, align 4
  %add.i25 = add i32 %37, %31
  %38 = inttoptr i32 %add.i25 to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %add13.i = add i32 %40, -1
  store i32 %add13.i, ptr %38, align 4
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !168
  %and.i.i.i26 = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i26)
  %tobool.not.i27 = icmp eq i32 %and.i.i.i26, 0
  br i1 %tobool.not.i27, label %if.then.i28, label %qdisc_qstats_cpu_backlog_dec.exit.qdisc_qstats_cpu_qlen_dec.exit_crit_edge, !prof !166

qdisc_qstats_cpu_backlog_dec.exit.qdisc_qstats_cpu_qlen_dec.exit_crit_edge: ; preds = %qdisc_qstats_cpu_backlog_dec.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_qstats_cpu_qlen_dec.exit

if.then.i28:                                      ; preds = %qdisc_qstats_cpu_backlog_dec.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %qdisc_qstats_cpu_qlen_dec.exit

qdisc_qstats_cpu_qlen_dec.exit:                   ; preds = %if.then.i28, %qdisc_qstats_cpu_backlog_dec.exit.qdisc_qstats_cpu_qlen_dec.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #11, !srcloc !169
  br label %if.end7

if.else:                                          ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #13
  %cb.i.i.i29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %cb.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cb.i.i.i29, align 4
  %backlog.i30 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %44 = ptrtoint ptr %backlog.i30 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %backlog.i30, align 4
  %sub.i = sub i32 %45, %43
  store i32 %sub.i, ptr %backlog.i30, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %46 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %qlen, align 8
  %dec = add i32 %47, -1
  store i32 %dec, ptr %qlen, align 8
  br label %if.end7

if.else5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dequeue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 1
  %48 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dequeue, align 4
  %call6 = tail call ptr %49(ptr noundef %sch) #11
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.else, %qdisc_qstats_cpu_qlen_dec.exit
  %skb.0 = phi ptr [ %1, %qdisc_qstats_cpu_qlen_dec.exit ], [ %1, %if.else ], [ %call6, %if.else5 ]
  ret ptr %skb.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_basic_sync_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sch_atm_dequeue(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -152
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sch_atm_dequeue.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sch_atm_dequeue, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !165

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %t, i32 -664
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sch_atm_dequeue.__UNIQUE_ID_ddebug512, ptr noundef nonnull @.str.49, ptr noundef %add.ptr.i, ptr noundef %add.ptr) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flows = getelementptr i8, ptr %t, i32 -8
  %0 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn154 = load ptr, ptr %flows, align 4
  %cmp.not156 = icmp eq ptr %.pn154, %flows
  br i1 %cmp.not156, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %bstats.i = getelementptr i8, ptr %t, i32 -424
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn157 = phi ptr [ %.pn154, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %flow.0158 = getelementptr i8, ptr %.pn157, i32 -116
  %cmp11 = icmp eq ptr %flow.0158, %add.ptr
  br i1 %cmp11, label %for.body.for.inc_crit_edge, label %while.cond.preheader

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

while.cond.preheader:                             ; preds = %for.body
  %vcc = getelementptr i8, ptr %.pn157, i32 -92
  %q = getelementptr i8, ptr %.pn157, i32 -104
  %1 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %q, align 4
  %ops149 = getelementptr inbounds %struct.Qdisc, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %ops149 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops149, align 16
  %peek150 = getelementptr inbounds %struct.Qdisc_ops, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %peek150 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %peek150, align 4
  %call15151 = tail call ptr %6(ptr noundef %2) #11
  %tobool16.not152 = icmp eq ptr %call15151, null
  br i1 %tobool16.not152, label %while.cond.preheader.for.inc_crit_edge, label %while.body.lr.ph

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %bstats = getelementptr i8, ptr %.pn157, i32 -68
  %hdr_len = getelementptr i8, ptr %.pn157, i32 12
  %hdr = getelementptr i8, ptr %.pn157, i32 16
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call15153 = phi ptr [ %call15151, %while.body.lr.ph ], [ %call15, %while.cond.backedge.while.body_crit_edge ]
  %7 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vcc, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %call15153, i32 0, i32 20
  %9 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %truesize, align 8
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #11
  %11 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %add.i = add i32 %12, %10
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 21
  %13 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sk_sndbuf.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %14)
  %cmp.i.not = icmp ult i32 %add.i, %14
  br i1 %cmp.i.not, label %if.end20, label %while.body.for.inc_crit_edge

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end20:                                         ; preds = %while.body
  %15 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %q, align 4
  %call22 = tail call fastcc ptr @qdisc_dequeue_peeked(ptr noundef %16)
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end20.for.inc_crit_edge, label %if.end33, !prof !166

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end33:                                         ; preds = %if.end20
  tail call fastcc void @bstats_update(ptr noundef %bstats.i, ptr noundef nonnull %call22) #11
  tail call fastcc void @bstats_update(ptr noundef %bstats, ptr noundef nonnull %call22)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sch_atm_dequeue.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sch_atm_dequeue, %if.then46)) #11
          to label %do.end49 [label %if.then46], !srcloc !165

if.then46:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sch_atm_dequeue.__UNIQUE_ID_ddebug513, ptr noundef nonnull @.str.50, ptr noundef %flow.0158) #11
  br label %do.end49

do.end49:                                         ; preds = %if.then46, %if.end33
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call22, i32 0, i32 18
  %17 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call22, i32 0, i32 15, i32 0, i32 20
  %19 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %20 to i32
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call22, i32 0, i32 19
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call51 = tail call ptr @skb_pull(ptr noundef nonnull %call22, i32 noundef %sub.ptr.sub.i) #11
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %25 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i139 = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i140 = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i141 = sub i32 %sub.ptr.lhs.cast.i139, %sub.ptr.rhs.cast.i140
  %27 = ptrtoint ptr %hdr_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hdr_len, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i141, i32 %28)
  %cmp53 = icmp ult i32 %sub.ptr.sub.i141, %28
  br i1 %cmp53, label %if.then54, label %do.end49.do.body61_crit_edge

do.end49.do.body61_crit_edge:                     ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body61

if.then54:                                        ; preds = %do.end49
  %call56 = tail call ptr @skb_realloc_headroom(ptr noundef nonnull %call22, i32 noundef %28) #11
  tail call void @consume_skb(ptr noundef nonnull %call22) #11
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %if.then54.while.cond.backedge_crit_edge, label %if.then54.do.body61_crit_edge

if.then54.do.body61_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body61

if.then54.while.cond.backedge_crit_edge:          ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

do.body61:                                        ; preds = %if.then54.do.body61_crit_edge, %do.end49.do.body61_crit_edge
  %skb.1 = phi ptr [ %call56, %if.then54.do.body61_crit_edge ], [ %call22, %do.end49.do.body61_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sch_atm_dequeue.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sch_atm_dequeue, %if.then73)) #11
          to label %do.end77 [label %if.then73], !srcloc !165

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #13
  %head.i142 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 18
  %29 = ptrtoint ptr %head.i142 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i142, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 15, i32 0, i32 20
  %31 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %network_header.i, align 4
  %conv.i143 = zext i16 %32 to i32
  %add.ptr.i144 = getelementptr i8, ptr %30, i32 %conv.i143
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 19
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sch_atm_dequeue.__UNIQUE_ID_ddebug514, ptr noundef nonnull @.str.51, ptr noundef %add.ptr.i144, ptr noundef %34) #11
  br label %do.end77

do.end77:                                         ; preds = %if.then73, %do.body61
  %35 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vcc, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 3
  %37 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %cb, align 8
  %38 = ptrtoint ptr %hdr_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hdr_len, align 16
  %call81 = tail call ptr @skb_push(ptr noundef nonnull %skb.1, i32 noundef %39) #11
  %40 = ptrtoint ptr %hdr_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hdr_len, align 16
  %42 = call ptr @memcpy(ptr %call81, ptr %hdr, i32 %41)
  %truesize84 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 20
  %43 = ptrtoint ptr %truesize84 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %truesize84, align 8
  %45 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vcc, align 8
  %sk_wmem_alloc = getelementptr inbounds %struct.sock, ptr %46, i32 0, i32 23
  %call.i.i.i.i145 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_wmem_alloc, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %sk_wmem_alloc, i32 1, i32 3, i32 1) #11
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_wmem_alloc, ptr %sk_wmem_alloc, i32 %44, ptr elementtype(i32) %sk_wmem_alloc) #11, !srcloc !170
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %do.end77.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !166

do.end77.if.end15.sink.split.i.i_crit_edge:       ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %do.end77
  %add.i.i = add i32 %asmresult.i.i.i.i, %44
  %48 = or i32 %add.i.i, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %.not.i.i = icmp sgt i32 %48, -1
  br i1 %.not.i.i, label %if.else.i.i.refcount_add.exit_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !171

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i

if.else.i.i.refcount_add.exit_crit_edge:          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_add.exit

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %do.end77.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %do.end77.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sk_wmem_alloc, i32 noundef %.sink.i.i) #11
  br label %refcount_add.exit

refcount_add.exit:                                ; preds = %if.end15.sink.split.i.i, %if.else.i.i.refcount_add.exit_crit_edge
  %49 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vcc, align 8
  %send = getelementptr inbounds %struct.atm_vcc, ptr %50, i32 0, i32 13
  %51 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %send, align 4
  %call89 = tail call i32 %52(ptr noundef %50, ptr noundef nonnull %skb.1) #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %refcount_add.exit, %if.then54.while.cond.backedge_crit_edge
  %53 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %q, align 4
  %ops = getelementptr inbounds %struct.Qdisc, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops, align 16
  %peek = getelementptr inbounds %struct.Qdisc_ops, ptr %56, i32 0, i32 7
  %57 = ptrtoint ptr %peek to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %peek, align 4
  %call15 = tail call ptr %58(ptr noundef %54) #11
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %while.cond.backedge.for.inc_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.cond.backedge.for.inc_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %while.cond.backedge.for.inc_crit_edge, %if.end20.for.inc_crit_edge, %while.body.for.inc_crit_edge, %while.cond.preheader.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %59 = ptrtoint ptr %.pn157 to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn = load ptr, ptr %.pn157, align 4
  %cmp.not = icmp eq ptr %.pn, %flows
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bstats_update(ptr noundef %bstats, ptr nocapture noundef readonly %skb) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i.i, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.i.not = icmp eq i16 %5, 0
  br i1 %tobool.i.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %gso_segs, align 2
  %conv4 = zext i16 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv4, %cond.true ], [ 1, %entry.cond.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %cond.end._bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i

cond.end._bstats_update.exit_crit_edge:           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %_bstats_update.exit

land.lhs.true.i.i.i:                              ; preds = %cond.end
  %9 = tail call i32 @llvm.read_register.i32(metadata !154) #11
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !172
  %13 = tail call i32 @llvm.read_register.i32(metadata !154) #11
  %and.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %18, ptrtoint (ptr @lockdep_recursion to i32)
  %19 = inttoptr i32 %add.i.i.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !173
  %22 = tail call i32 @llvm.read_register.i32(metadata !154) #11
  %and.i.i.i7.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool20.not.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i._bstats_update.exit_crit_edge

land.lhs.true.i.i.i._bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_bstats_update.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !154) #11
  %and.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i.i = icmp eq i32 %29, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i._bstats_update.exit_crit_edge

land.rhs.i.i.i._bstats_update.exit_crit_edge:     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_bstats_update.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %30 = tail call i32 @llvm.read_register.i32(metadata !154) #11
  %and.i.i.i9.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %33, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !174
  %34 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %37, ptrtoint (ptr @hardirqs_enabled to i32)
  %38 = inttoptr i32 %add47.i.i.i to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !175
  %41 = tail call i32 @llvm.read_register.i32(metadata !154) #11
  %and.i.i.i12.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool54.not.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i._bstats_update.exit_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i._bstats_update.exit_crit_edge:   ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_bstats_update.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i._bstats_update.exit_crit_edge, label %if.then.i.i.i, !prof !171

land.rhs58.i.i.i._bstats_update.exit_crit_edge:   ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_bstats_update.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %_bstats_update.exit

_bstats_update.exit:                              ; preds = %if.then.i.i.i, %land.rhs58.i.i.i._bstats_update.exit_crit_edge, %land.rhs22.i.i.i._bstats_update.exit_crit_edge, %land.rhs.i.i.i._bstats_update.exit_crit_edge, %land.lhs.true.i.i.i._bstats_update.exit_crit_edge, %cond.end._bstats_update.exit_crit_edge
  %conv = zext i32 %1 to i64
  %syncp.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2
  %45 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i.i = add i32 %46, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  %dep_map.i.i.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2, i32 0, i32 1
  %47 = tail call ptr @llvm.returnaddress(i32 0) #11
  %48 = ptrtoint ptr %47 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %48) #11
  %49 = ptrtoint ptr %bstats to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %bstats, align 8
  %add.i.i = add i64 %50, %conv
  store i64 %add.i.i, ptr %bstats, align 8
  %packets2.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 1
  %conv.i7.i = zext i32 %cond to i64
  %51 = ptrtoint ptr %packets2.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %packets2.i, align 8
  %add.i8.i = add i64 %52, %conv.i7.i
  store i64 %add.i8.i, ptr %packets2.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %48) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !177
  %53 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %54, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !60, !61, !62, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !85, !87, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !102, !104, !106, !107, !108, !110, !111, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !131, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153}
!llvm.named.register.sp = !{!154}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @__initcall__kmod_sch_atm__522_706_atm_init6, !1, !"__initcall__kmod_sch_atm__522_706_atm_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_atm.c", i32 706, i32 1}
!2 = !{ptr @__exitcall_atm_exit, !3, !"__exitcall_atm_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_atm.c", i32 707, i32 1}
!4 = !{ptr @__UNIQUE_ID_file523, !5, !"__UNIQUE_ID_file523", i1 false, i1 false}
!5 = !{!"../net/sched/sch_atm.c", i32 708, i32 1}
!6 = !{ptr @__UNIQUE_ID_license524, !5, !"__UNIQUE_ID_license524", i1 false, i1 false}
!7 = !{ptr @atm_qdisc_ops, !8, !"atm_qdisc_ops", i1 false, i1 false}
!8 = !{!"../net/sched/sch_atm.c", i32 682, i32 25}
!9 = !{ptr @atm_class_ops, !10, !"atm_class_ops", i1 false, i1 false}
!10 = !{!"../net/sched/sch_atm.c", i32 668, i32 37}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/sched/sch_atm.c", i32 92, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @atm_tc_graft.__UNIQUE_ID_ddebug484, !12, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/sched/sch_atm.c", i32 109, i32 2}
!19 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @atm_tc_leaf.__UNIQUE_ID_ddebug485, !18, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/sched/sch_atm.c", i32 118, i32 2}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @atm_tc_find.__UNIQUE_ID_ddebug486, !22, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/sched/sch_atm.c", i32 120, i32 2}
!27 = !{ptr @atm_tc_find.__UNIQUE_ID_ddebug487, !26, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/sched/sch_atm.c", i32 208, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @atm_tc_change.__UNIQUE_ID_ddebug495, !29, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/sched/sch_atm.c", i32 235, i32 2}
!34 = !{ptr @atm_tc_change.__UNIQUE_ID_ddebug496, !33, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/sched/sch_atm.c", i32 251, i32 2}
!37 = !{ptr @atm_tc_change.__UNIQUE_ID_ddebug497, !36, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/sched/sch_atm.c", i32 256, i32 2}
!40 = !{ptr @atm_tc_change.__UNIQUE_ID_ddebug498, !39, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/sched/sch_atm.c", i32 265, i32 4}
!43 = !{ptr @atm_tc_change.__UNIQUE_ID_ddebug499, !42, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/sched/sch_atm.c", i32 280, i32 2}
!46 = !{ptr @atm_tc_change.__UNIQUE_ID_ddebug500, !45, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/sched/sch_atm.c", i32 282, i32 2}
!49 = !{ptr @atm_tc_change.__UNIQUE_ID_ddebug501, !48, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/sched/sch_atm.c", i32 299, i32 2}
!52 = !{ptr @atm_tc_change.__UNIQUE_ID_ddebug502, !51, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/sched/sch_atm.c", i32 303, i32 2}
!55 = !{ptr @atm_tc_change.__UNIQUE_ID_ddebug503, !54, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!56 = !{ptr @atm_policy, !57, !"atm_policy", i1 false, i1 false}
!57 = !{!"../net/sched/sch_atm.c", i32 190, i32 32}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/sched/sch_atm.c", i32 176, i32 2}
!60 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @sch_atm_pop.__UNIQUE_ID_ddebug494, !59, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!62 = distinct !{null, !63, !"llc_oui_ip", i1 false, i1 false}
!63 = !{!"../net/sched/sch_atm.c", i32 181, i32 17}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/sched/sch_atm.c", i32 329, i32 2}
!66 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @atm_tc_delete.__UNIQUE_ID_ddebug504, !65, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/sched/sch_atm.c", i32 339, i32 3}
!70 = !{ptr @atm_tc_delete._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @atm_tc_delete._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/sched/sch_atm.c", i32 353, i32 2}
!74 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @atm_tc_walk.__UNIQUE_ID_ddebug507, !73, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/sched/sch_atm.c", i32 372, i32 2}
!78 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @atm_tc_tcf_block.__UNIQUE_ID_ddebug508, !77, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/sched/sch_atm.c", i32 130, i32 2}
!82 = !{ptr @atm_tc_bind_filter.__UNIQUE_ID_ddebug488, !81, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!83 = !{ptr @atm_tc_bind_filter.__UNIQUE_ID_ddebug489, !84, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!84 = !{!"../net/sched/sch_atm.c", i32 134, i32 2}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/sched/sch_atm.c", i32 148, i32 2}
!87 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @atm_tc_put.__UNIQUE_ID_ddebug490, !86, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/sched/sch_atm.c", i32 151, i32 2}
!91 = !{ptr @atm_tc_put.__UNIQUE_ID_ddebug491, !90, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/sched/sch_atm.c", i32 153, i32 2}
!94 = !{ptr @atm_tc_put.__UNIQUE_ID_ddebug492, !93, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/sched/sch_atm.c", i32 157, i32 3}
!97 = !{ptr @atm_tc_put.__UNIQUE_ID_ddebug493, !96, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!98 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/sched/sch_atm.c", i32 609, i32 2}
!100 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @atm_tc_dump_class.__UNIQUE_ID_ddebug521, !99, !"__UNIQUE_ID_ddebug521", i1 false, i1 false}
!102 = !{ptr @.str.36, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../include/net/netlink.h", i32 991, i32 3}
!104 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/sched/sch_atm.c", i32 387, i32 2}
!106 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @atm_tc_enqueue.__UNIQUE_ID_ddebug509, !105, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!108 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!109 = !{!"../net/sched/sch_atm.c", i32 395, i32 9}
!110 = !{ptr @.str.39, !109, !"<string literal>", i1 false, i1 false}
!111 = distinct !{null, !112, !"__warned", i1 false, i1 false}
!112 = !{!"../include/net/sch_generic.h", i32 835, i32 34}
!113 = !{ptr @.str.40, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../net/sched/sch_atm.c", i32 525, i32 2}
!116 = !{ptr @.str.42, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @atm_tc_dequeue.__UNIQUE_ID_ddebug515, !115, !"__UNIQUE_ID_ddebug515", i1 false, i1 false}
!118 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../net/sched/sch_atm.c", i32 537, i32 2}
!120 = !{ptr @.str.44, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @atm_tc_peek.__UNIQUE_ID_ddebug516, !119, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!122 = !{ptr @.str.45, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../net/sched/sch_atm.c", i32 548, i32 2}
!124 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @atm_tc_init.__UNIQUE_ID_ddebug517, !123, !"__UNIQUE_ID_ddebug517", i1 false, i1 false}
!126 = !{ptr @.str.47, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../net/sched/sch_atm.c", i32 557, i32 2}
!128 = !{ptr @atm_tc_init.__UNIQUE_ID_ddebug518, !127, !"__UNIQUE_ID_ddebug518", i1 false, i1 false}
!129 = !{ptr @.str.48, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/sched/sch_atm.c", i32 477, i32 2}
!131 = !{ptr @.str.49, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @sch_atm_dequeue.__UNIQUE_ID_ddebug512, !130, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!133 = !{ptr @.str.50, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../net/sched/sch_atm.c", i32 495, i32 4}
!135 = !{ptr @sch_atm_dequeue.__UNIQUE_ID_ddebug513, !134, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!136 = !{ptr @.str.51, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../net/sched/sch_atm.c", i32 507, i32 4}
!138 = !{ptr @sch_atm_dequeue.__UNIQUE_ID_ddebug514, !137, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!139 = distinct !{null, !140, !"__already_done", i1 false, i1 false}
!140 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!141 = !{ptr @.str.52, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.53, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../net/sched/sch_atm.c", i32 577, i32 2}
!144 = !{ptr @.str.54, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @atm_tc_reset.__UNIQUE_ID_ddebug519, !143, !"__UNIQUE_ID_ddebug519", i1 false, i1 false}
!146 = !{ptr @.str.55, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../net/sched/sch_atm.c", i32 588, i32 2}
!148 = !{ptr @.str.56, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @atm_tc_destroy.__UNIQUE_ID_ddebug520, !147, !"__UNIQUE_ID_ddebug520", i1 false, i1 false}
!150 = !{ptr @.str.57, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../net/sched/sch_atm.c", i32 596, i32 4}
!152 = !{ptr @atm_tc_destroy._entry, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @atm_tc_destroy._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{!"sp"}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{!"auto-init"}
!165 = !{i64 2148971446, i64 2148971451, i64 2148971464, i64 2148971508, i64 2148971542, i64 2148971563}
!166 = !{!"branch_weights", i32 1, i32 2000}
!167 = !{i64 761769, i64 761830}
!168 = !{i64 764501}
!169 = !{i64 764786}
!170 = !{i64 2148359599, i64 2148359631, i64 2148359660, i64 2148359694, i64 2148359725, i64 2148359748}
!171 = !{!"branch_weights", i32 2000, i32 1}
!172 = !{i64 2149882227}
!173 = !{i64 2149887159}
!174 = !{i64 2149908871}
!175 = !{i64 2149913763}
!176 = !{i64 2149990220}
!177 = !{i64 2149990545}
