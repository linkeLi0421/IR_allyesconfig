; ModuleID = '/llk/IR_all_yes/net/sched/sch_hfsc.c_pt.bc'
source_filename = "../net/sched/sch_hfsc.c"
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
%struct.nla_policy = type { i8, i8, i16, %union.anon.22 }
%union.anon.22 = type { i32 }
%struct.tcf_result = type { %union.anon.117 }
%union.anon.117 = type { %struct.anon.118 }
%struct.anon.118 = type { i32, i32 }
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
%struct.hlist_head = type { ptr }
%struct.Qdisc_class_common = type { i32, %struct.hlist_node }
%struct.hfsc_class = type { %struct.Qdisc_class_common, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.rb_node, %struct.rb_root, %struct.rb_node, %struct.rb_root, %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.internal_sc, %struct.internal_sc, %struct.internal_sc, %struct.runtime_sc, %struct.runtime_sc, %struct.runtime_sc, %struct.runtime_sc, i8, i32, i32, i32, [8 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.internal_sc = type { i64, i64, i64, i64, i64, i64 }
%struct.runtime_sc = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hfsc_sched = type { i16, [14 x i8], %struct.hfsc_class, %struct.Qdisc_class_hash, %struct.rb_root, %struct.qdisc_watchdog, [8 x i8] }
%struct.Qdisc_class_hash = type { ptr, i32, i32, i32 }
%struct.qdisc_watchdog = type { i64, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.tc_hfsc_qopt = type { i16 }
%struct.qdisc_walker = type { i32, i32, i32, ptr }
%struct.tc_service_curve = type { i32, i32, i32 }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.tc_hfsc_stats = type { i64, i64, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@hfsc_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr @hfsc_class_ops, [16 x i8] c"hfsc\00\00\00\00\00\00\00\00\00\00\00\00", i32 800, i32 0, ptr @hfsc_enqueue, ptr @hfsc_dequeue, ptr @qdisc_peek_dequeued, ptr @hfsc_init_qdisc, ptr @hfsc_reset_qdisc, ptr @hfsc_destroy_qdisc, ptr @hfsc_change_qdisc, ptr null, ptr null, ptr null, ptr @hfsc_dump_qdisc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__UNIQUE_ID_file374 = internal constant [33 x i8] c"sch_hfsc.file=net/sched/sch_hfsc\00", section ".modinfo", align 1
@__UNIQUE_ID_license375 = internal constant [21 x i8] c"sch_hfsc.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_sch_hfsc__376_1689_hfsc_init6 = internal global ptr @hfsc_init, section ".initcall6.init", align 4
@__exitcall_hfsc_cleanup = internal global ptr @hfsc_cleanup, section ".exitcall.exit", align 4
@hfsc_class_ops = internal constant { %struct.Qdisc_class_ops, [40 x i8] } { %struct.Qdisc_class_ops { i32 0, ptr null, ptr @hfsc_graft_class, ptr @hfsc_class_leaf, ptr @hfsc_qlen_notify, ptr @hfsc_search_class, ptr @hfsc_change_class, ptr @hfsc_delete_class, ptr @hfsc_walk, ptr @hfsc_tcf_block, ptr @hfsc_bind_tcf, ptr @hfsc_unbind_tcf, ptr @hfsc_dump_class, ptr @hfsc_dump_class_stats }, [40 x i8] zeroinitializer }, align 32
@pfifo_qdisc_ops = external dso_local global %struct.Qdisc_ops, align 4
@noop_qdisc = external dso_local global %struct.Qdisc, align 128
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@hfsc_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 12, %union.anon.22 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 12, %union.anon.22 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 12, %union.anon.22 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qdisc_peek_len\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@hfsc_classify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/sched/sch_hfsc.c\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@hfsc_classify.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@qdisc_calculate_pkt_len.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HFSC\00", [27 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 5, i64 8]
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"hfsc_class_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 1646, i32 37 }
@___asan_gen_.16 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 596, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [12 x i8] c"hfsc_policy\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 906, i32 32 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 839, i32 20 }
@___asan_gen_.25 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 991, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 1130, i32 8 }
@___asan_gen_.34 = private constant [24 x i8] c"../net/sched/sch_hfsc.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 1616, i32 20 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 271, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_file374, ptr @__UNIQUE_ID_license375, ptr @__exitcall_hfsc_cleanup, ptr @__initcall__kmod_sch_hfsc__376_1689_hfsc_init6, ptr @hfsc_cleanup, ptr @hfsc_class_ops, ptr @.str, ptr @.str.1, ptr @hfsc_policy, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsc_class_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsc_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hfsc_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @hfsc_qdisc_ops) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @hfsc_qdisc_ops) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsc_enqueue(ptr noundef %skb, ptr noundef %sch, ptr noundef %to_free) #2 align 64 {
entry:
  %res.i = alloca %struct.tcf_result, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i.i, align 4
  %privdata.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res.i) #14
  %2 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %res.i, align 4, !annotation !44
  %3 = getelementptr inbounds %struct.anon.118, ptr %res.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !44
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %5 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %priority.i, align 4
  %handle.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %7 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %handle.i, align 32
  %xor.i = xor i32 %8, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %xor.i)
  %cmp.i = icmp ugt i32 %xor.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i = icmp eq i32 %6, 0
  %or.cond.i = or i1 %tobool.not.i.i.i, %cmp.i
  br i1 %or.cond.i, label %entry.if.end6.i_crit_edge, label %if.end.i.i.i

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.end.i.i.i:                                     ; preds = %entry
  %clhash.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 2
  %hashmask.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 3, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %hashmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hashmask.i.i.i, align 4
  %shr.i.i.i.i = lshr i32 %6, 8
  %xor.i.i.i.i = xor i32 %shr.i.i.i.i, %6
  %shr1.i.i.i.i = lshr i32 %xor.i.i.i.i, 4
  %xor2.i.i.i.i = xor i32 %shr1.i.i.i.i, %xor.i.i.i.i
  %and.i.i.i.i = and i32 %10, %xor2.i.i.i.i
  %11 = ptrtoint ptr %clhash.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clhash.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.hlist_head, ptr %12, i32 %and.i.i.i.i
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %14, null
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 -4
  %tobool4.not3033.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool4.not30.i.i.i = or i1 %tobool2.not.i.i.i, %tobool4.not3033.i.i.i
  br i1 %tobool4.not30.i.i.i, label %if.end.i.i.i.if.end6.i_crit_edge, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  br label %for.body.i.i.i

if.end.i.i.i.if.end6.i_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.i.for.body.i.i.i_crit_edge
  %cl.031.i.i.i = phi ptr [ %add.ptr13.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %add.ptr.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %15 = ptrtoint ptr %cl.031.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cl.031.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %6)
  %cmp.i.i.i = icmp eq i32 %16, %6
  br i1 %cmp.i.i.i, label %if.then.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %hnode.i.i.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %hnode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hnode.i.i.i, align 4
  %tobool9.not.i.i.i = icmp eq ptr %18, null
  %add.ptr13.i.i.i = getelementptr i8, ptr %18, i32 -4
  %tobool4.not34.i.i.i = icmp eq ptr %add.ptr13.i.i.i, null
  %tobool4.not.i.i.i = or i1 %tobool9.not.i.i.i, %tobool4.not34.i.i.i
  br i1 %tobool4.not.i.i.i, label %for.inc.i.i.i.if.end6.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

for.inc.i.i.i.if.end6.i_crit_edge:                ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.then.i:                                        ; preds = %for.body.i.i.i
  %level.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.031.i.i.i, i32 0, i32 7
  %19 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp4.i = icmp eq i32 %20, 0
  br i1 %cmp4.i, label %if.then.i.hfsc_classify.exit.thread76_crit_edge, label %if.then.i.if.end6.i_crit_edge

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.then.i.hfsc_classify.exit.thread76_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hfsc_classify.exit.thread76

if.end6.i:                                        ; preds = %if.then.i.if.end6.i_crit_edge, %for.inc.i.i.i.if.end6.i_crit_edge, %if.end.i.i.i.if.end6.i_crit_edge, %entry.if.end6.i_crit_edge
  %root.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %filter_list.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 40
  %21 = ptrtoint ptr %filter_list.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %filter_list.i, align 8
  %call9.i = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %land.lhs.true10.i, label %if.end6.i.do.end18.i_crit_edge

if.end6.i.do.end18.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end18.i

land.lhs.true10.i:                                ; preds = %if.end6.i
  %call11.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true10.i.do.end18.i_crit_edge, label %land.lhs.true13.i

land.lhs.true10.i.do.end18.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end18.i

land.lhs.true13.i:                                ; preds = %land.lhs.true10.i
  %.b99.i = load i1, ptr @hfsc_classify.__warned, align 1
  br i1 %.b99.i, label %land.lhs.true13.i.do.end18.i_crit_edge, label %if.then15.i

land.lhs.true13.i.do.end18.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end18.i

if.then15.i:                                      ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @hfsc_classify.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1130, ptr noundef nonnull @.str.5) #14
  br label %do.end18.i

do.end18.i:                                       ; preds = %if.then15.i, %land.lhs.true13.i.do.end18.i_crit_edge, %land.lhs.true10.i.do.end18.i_crit_edge, %if.end6.i.do.end18.i_crit_edge
  %tobool20.not161.i = icmp eq ptr %22, null
  br i1 %tobool20.not161.i, label %do.end18.i.while.end.i_crit_edge, label %land.rhs.lr.ph.i

do.end18.i.while.end.i_crit_edge:                 ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

land.rhs.lr.ph.i:                                 ; preds = %do.end18.i
  %clhash.i101.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 2
  %hashmask.i.i102.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 3, i32 0, i32 0, i32 1
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %do.end56.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %head.0163.i = phi ptr [ %root.i, %land.rhs.lr.ph.i ], [ %cl.0.i, %do.end56.i.land.rhs.i_crit_edge ]
  %tcf.0162.i = phi ptr [ %22, %land.rhs.lr.ph.i ], [ %46, %do.end56.i.land.rhs.i_crit_edge ]
  %call21.i = call i32 @tcf_classify(ptr noundef %skb, ptr noundef null, ptr noundef nonnull %tcf.0162.i, ptr noundef nonnull %res.i, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call21.i)
  %cmp22.i = icmp sgt i32 %call21.i, -1
  br i1 %cmp22.i, label %while.body.i, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  %23 = zext i32 %call21.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call21.i, label %sw.epilog.i [
    i32 5, label %while.body.i.if.then.thread91_crit_edge
    i32 4, label %while.body.i.if.then.thread91_crit_edge122
    i32 8, label %while.body.i.if.then.thread91_crit_edge123
    i32 2, label %while.body.i.if.then.thread86_crit_edge
  ]

while.body.i.if.then.thread86_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.thread86

while.body.i.if.then.thread91_crit_edge123:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.thread91

while.body.i.if.then.thread91_crit_edge122:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.thread91

while.body.i.if.then.thread91_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.thread91

sw.epilog.i:                                      ; preds = %while.body.i
  %24 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %res.i, align 4
  %26 = inttoptr i32 %25 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool24.not.i = icmp eq i32 %25, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %sw.epilog.i.if.end35.i_crit_edge

sw.epilog.i.if.end35.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35.i

if.then25.i:                                      ; preds = %sw.epilog.i
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i100.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i100.i, label %if.then25.i.while.end.i_crit_edge, label %if.end.i.i113.i

if.then25.i.while.end.i_crit_edge:                ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

if.end.i.i113.i:                                  ; preds = %if.then25.i
  %29 = ptrtoint ptr %hashmask.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hashmask.i.i102.i, align 4
  %shr.i.i.i103.i = lshr i32 %28, 8
  %xor.i.i.i104.i = xor i32 %shr.i.i.i103.i, %28
  %shr1.i.i.i105.i = lshr i32 %xor.i.i.i104.i, 4
  %xor2.i.i.i106.i = xor i32 %shr1.i.i.i105.i, %xor.i.i.i104.i
  %and.i.i.i107.i = and i32 %30, %xor2.i.i.i106.i
  %31 = ptrtoint ptr %clhash.i101.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clhash.i101.i, align 4
  %arrayidx.i.i108.i = getelementptr %struct.hlist_head, ptr %32, i32 %and.i.i.i107.i
  %33 = ptrtoint ptr %arrayidx.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i108.i, align 4
  %tobool2.not.i.i109.i = icmp eq ptr %34, null
  %add.ptr.i.i110.i = getelementptr i8, ptr %34, i32 -4
  %tobool4.not3033.i.i111.i = icmp eq ptr %add.ptr.i.i110.i, null
  %tobool4.not30.i.i112.i = or i1 %tobool2.not.i.i109.i, %tobool4.not3033.i.i111.i
  br i1 %tobool4.not30.i.i112.i, label %if.end.i.i113.i.while.end.i_crit_edge, label %if.end.i.i113.i.for.body.i.i116.i_crit_edge

if.end.i.i113.i.for.body.i.i116.i_crit_edge:      ; preds = %if.end.i.i113.i
  br label %for.body.i.i116.i

if.end.i.i113.i.while.end.i_crit_edge:            ; preds = %if.end.i.i113.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

for.body.i.i116.i:                                ; preds = %for.inc.i.i122.i.for.body.i.i116.i_crit_edge, %if.end.i.i113.i.for.body.i.i116.i_crit_edge
  %cl.031.i.i114.i = phi ptr [ %add.ptr13.i.i119.i, %for.inc.i.i122.i.for.body.i.i116.i_crit_edge ], [ %add.ptr.i.i110.i, %if.end.i.i113.i.for.body.i.i116.i_crit_edge ]
  %35 = ptrtoint ptr %cl.031.i.i114.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cl.031.i.i114.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %28)
  %cmp.i.i115.i = icmp eq i32 %36, %28
  br i1 %cmp.i.i115.i, label %if.end29.i, label %for.inc.i.i122.i

for.inc.i.i122.i:                                 ; preds = %for.body.i.i116.i
  %hnode.i.i117.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i114.i, i32 0, i32 1
  %37 = ptrtoint ptr %hnode.i.i117.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hnode.i.i117.i, align 4
  %tobool9.not.i.i118.i = icmp eq ptr %38, null
  %add.ptr13.i.i119.i = getelementptr i8, ptr %38, i32 -4
  %tobool4.not34.i.i120.i = icmp eq ptr %add.ptr13.i.i119.i, null
  %tobool4.not.i.i121.i = or i1 %tobool9.not.i.i118.i, %tobool4.not34.i.i120.i
  br i1 %tobool4.not.i.i121.i, label %for.inc.i.i122.i.while.end.i_crit_edge, label %for.inc.i.i122.i.for.body.i.i116.i_crit_edge

for.inc.i.i122.i.for.body.i.i116.i_crit_edge:     ; preds = %for.inc.i.i122.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i116.i

for.inc.i.i122.i.while.end.i_crit_edge:           ; preds = %for.inc.i.i122.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

if.end29.i:                                       ; preds = %for.body.i.i116.i
  %level30.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.031.i.i114.i, i32 0, i32 7
  %39 = ptrtoint ptr %level30.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %level30.i, align 4
  %level31.i = getelementptr inbounds %struct.hfsc_class, ptr %head.0163.i, i32 0, i32 7
  %41 = ptrtoint ptr %level31.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %level31.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp32.not.i = icmp ult i32 %40, %42
  br i1 %cmp32.not.i, label %if.end29.i.if.end35.i_crit_edge, label %if.end29.i.while.end.i_crit_edge

if.end29.i.while.end.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

if.end29.i.if.end35.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.end29.i.if.end35.i_crit_edge, %sw.epilog.i.if.end35.i_crit_edge
  %cl.0.i = phi ptr [ %26, %sw.epilog.i.if.end35.i_crit_edge ], [ %cl.031.i.i114.i, %if.end29.i.if.end35.i_crit_edge ]
  %level36.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.0.i, i32 0, i32 7
  %43 = ptrtoint ptr %level36.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %level36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp37.i = icmp eq i32 %44, 0
  br i1 %cmp37.i, label %hfsc_classify.exit, label %if.end39.i

if.end39.i:                                       ; preds = %if.end35.i
  %filter_list44.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.0.i, i32 0, i32 4
  %45 = ptrtoint ptr %filter_list44.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %filter_list44.i, align 8
  %call46.i = call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %land.lhs.true48.i, label %if.end39.i.do.end56.i_crit_edge

if.end39.i.do.end56.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end56.i

land.lhs.true48.i:                                ; preds = %if.end39.i
  %call49.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %land.lhs.true48.i.do.end56.i_crit_edge, label %land.lhs.true51.i

land.lhs.true48.i.do.end56.i_crit_edge:           ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end56.i

land.lhs.true51.i:                                ; preds = %land.lhs.true48.i
  %.b9798.i = load i1, ptr @hfsc_classify.__warned.6, align 1
  br i1 %.b9798.i, label %land.lhs.true51.i.do.end56.i_crit_edge, label %if.then53.i

land.lhs.true51.i.do.end56.i_crit_edge:           ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end56.i

if.then53.i:                                      ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @hfsc_classify.__warned.6, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1156, ptr noundef nonnull @.str.5) #14
  br label %do.end56.i

do.end56.i:                                       ; preds = %if.then53.i, %land.lhs.true51.i.do.end56.i_crit_edge, %land.lhs.true48.i.do.end56.i_crit_edge, %if.end39.i.do.end56.i_crit_edge
  %tobool20.not.i = icmp eq ptr %46, null
  br i1 %tobool20.not.i, label %do.end56.i.while.end.i_crit_edge, label %do.end56.i.land.rhs.i_crit_edge

do.end56.i.land.rhs.i_crit_edge:                  ; preds = %do.end56.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

do.end56.i.while.end.i_crit_edge:                 ; preds = %do.end56.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %do.end56.i.while.end.i_crit_edge, %if.end29.i.while.end.i_crit_edge, %for.inc.i.i122.i.while.end.i_crit_edge, %if.end.i.i113.i.while.end.i_crit_edge, %if.then25.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge, %do.end18.i.while.end.i_crit_edge
  %47 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %handle.i, align 32
  %and59.i = and i32 %48, -65536
  %49 = ptrtoint ptr %privdata.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %privdata.i.i, align 16
  %conv.i = zext i16 %50 to i32
  %or.i = or i32 %and59.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i.i125.i = icmp eq i32 %or.i, 0
  br i1 %tobool.not.i.i125.i, label %while.end.i.if.then.thread86_crit_edge, label %if.end.i.i138.i

while.end.i.if.then.thread86_crit_edge:           ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.thread86

if.end.i.i138.i:                                  ; preds = %while.end.i
  %clhash.i126.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 2
  %hashmask.i.i127.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 3, i32 0, i32 0, i32 1
  %51 = ptrtoint ptr %hashmask.i.i127.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hashmask.i.i127.i, align 4
  %shr.i.i.i128.i = lshr i32 %or.i, 8
  %xor.i.i.i129.i = xor i32 %shr.i.i.i128.i, %or.i
  %shr1.i.i.i130.i = lshr i32 %xor.i.i.i129.i, 4
  %xor2.i.i.i131.i = xor i32 %shr1.i.i.i130.i, %xor.i.i.i129.i
  %and.i.i.i132.i = and i32 %52, %xor2.i.i.i131.i
  %53 = ptrtoint ptr %clhash.i126.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clhash.i126.i, align 4
  %arrayidx.i.i133.i = getelementptr %struct.hlist_head, ptr %54, i32 %and.i.i.i132.i
  %55 = ptrtoint ptr %arrayidx.i.i133.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i.i133.i, align 4
  %tobool2.not.i.i134.i = icmp eq ptr %56, null
  %add.ptr.i.i135.i = getelementptr i8, ptr %56, i32 -4
  %tobool4.not3033.i.i136.i = icmp eq ptr %add.ptr.i.i135.i, null
  %tobool4.not30.i.i137.i = or i1 %tobool2.not.i.i134.i, %tobool4.not3033.i.i136.i
  br i1 %tobool4.not30.i.i137.i, label %if.end.i.i138.i.if.then.thread86_crit_edge, label %if.end.i.i138.i.for.body.i.i141.i_crit_edge

if.end.i.i138.i.for.body.i.i141.i_crit_edge:      ; preds = %if.end.i.i138.i
  br label %for.body.i.i141.i

if.end.i.i138.i.if.then.thread86_crit_edge:       ; preds = %if.end.i.i138.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.thread86

for.body.i.i141.i:                                ; preds = %for.inc.i.i147.i.for.body.i.i141.i_crit_edge, %if.end.i.i138.i.for.body.i.i141.i_crit_edge
  %cl.031.i.i139.i = phi ptr [ %add.ptr13.i.i144.i, %for.inc.i.i147.i.for.body.i.i141.i_crit_edge ], [ %add.ptr.i.i135.i, %if.end.i.i138.i.for.body.i.i141.i_crit_edge ]
  %57 = ptrtoint ptr %cl.031.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cl.031.i.i139.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %or.i)
  %cmp.i.i140.i = icmp eq i32 %58, %or.i
  br i1 %cmp.i.i140.i, label %lor.lhs.false.i, label %for.inc.i.i147.i

for.inc.i.i147.i:                                 ; preds = %for.body.i.i141.i
  %hnode.i.i142.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i139.i, i32 0, i32 1
  %59 = ptrtoint ptr %hnode.i.i142.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hnode.i.i142.i, align 4
  %tobool9.not.i.i143.i = icmp eq ptr %60, null
  %add.ptr13.i.i144.i = getelementptr i8, ptr %60, i32 -4
  %tobool4.not34.i.i145.i = icmp eq ptr %add.ptr13.i.i144.i, null
  %tobool4.not.i.i146.i = or i1 %tobool9.not.i.i143.i, %tobool4.not34.i.i145.i
  br i1 %tobool4.not.i.i146.i, label %for.inc.i.i147.i.if.then.thread86_crit_edge, label %for.inc.i.i147.i.for.body.i.i141.i_crit_edge

for.inc.i.i147.i.for.body.i.i141.i_crit_edge:     ; preds = %for.inc.i.i147.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i141.i

for.inc.i.i147.i.if.then.thread86_crit_edge:      ; preds = %for.inc.i.i147.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.thread86

lor.lhs.false.i:                                  ; preds = %for.body.i.i141.i
  %level65.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.031.i.i139.i, i32 0, i32 7
  %61 = ptrtoint ptr %level65.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %level65.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp66.not.i = icmp eq i32 %62, 0
  br i1 %cmp66.not.i, label %lor.lhs.false.i.hfsc_classify.exit.thread76_crit_edge, label %lor.lhs.false.i.if.then.thread86_crit_edge

lor.lhs.false.i.if.then.thread86_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.thread86

lor.lhs.false.i.hfsc_classify.exit.thread76_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hfsc_classify.exit.thread76

hfsc_classify.exit.thread76:                      ; preds = %lor.lhs.false.i.hfsc_classify.exit.thread76_crit_edge, %if.then.i.hfsc_classify.exit.thread76_crit_edge
  %retval.0.i.ph = phi ptr [ %cl.031.i.i.i, %if.then.i.hfsc_classify.exit.thread76_crit_edge ], [ %cl.031.i.i139.i, %lor.lhs.false.i.hfsc_classify.exit.thread76_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #14
  br label %if.end3

hfsc_classify.exit:                               ; preds = %if.end35.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #14
  %cmp = icmp eq ptr %cl.0.i, null
  br i1 %cmp, label %hfsc_classify.exit.if.then2_crit_edge, label %hfsc_classify.exit.if.end3_crit_edge

hfsc_classify.exit.if.end3_crit_edge:             ; preds = %hfsc_classify.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

hfsc_classify.exit.if.then2_crit_edge:            ; preds = %hfsc_classify.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then2

if.then.thread86:                                 ; preds = %lor.lhs.false.i.if.then.thread86_crit_edge, %for.inc.i.i147.i.if.then.thread86_crit_edge, %if.end.i.i138.i.if.then.thread86_crit_edge, %while.end.i.if.then.thread86_crit_edge, %while.body.i.if.then.thread86_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #14
  br label %if.then2

if.then.thread91:                                 ; preds = %while.body.i.if.then.thread91_crit_edge, %while.body.i.if.then.thread91_crit_edge122, %while.body.i.if.then.thread91_crit_edge123
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #14
  br label %if.end

if.then2:                                         ; preds = %if.then.thread86, %hfsc_classify.exit.if.then2_crit_edge
  %drops.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %63 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %drops.i.i, align 4
  %inc.i.i = add i32 %64, 1
  store i32 %inc.i.i, ptr %drops.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.thread91
  %err.07385 = phi i32 [ 131072, %if.then2 ], [ 65536, %if.then.thread91 ]
  %65 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %to_free, align 4
  %67 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  br label %cleanup

if.end3:                                          ; preds = %hfsc_classify.exit.if.end3_crit_edge, %hfsc_classify.exit.thread76
  %retval.0.i80 = phi ptr [ %retval.0.i.ph, %hfsc_classify.exit.thread76 ], [ %cl.0.i, %hfsc_classify.exit.if.end3_crit_edge ]
  %qdisc = getelementptr inbounds %struct.hfsc_class, ptr %retval.0.i80, i32 0, i32 12
  %68 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %qdisc, align 16
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %69, i32 0, i32 17, i32 2
  %70 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %qlen, align 8
  %stab1.i.i = getelementptr inbounds %struct.Qdisc, ptr %69, i32 0, i32 5
  %72 = ptrtoint ptr %stab1.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %stab1.i.i, align 4
  %call.i.i = call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end3.do.end8.i.i_crit_edge

if.end3.do.end8.i.i_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %if.end3
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b14.i.i = load i1, ptr @qdisc_calculate_pkt_len.__warned, align 1
  br i1 %.b14.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @qdisc_calculate_pkt_len.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 835, ptr noundef nonnull @.str.5) #14
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %if.end3.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %73, null
  br i1 %tobool10.not.i.i, label %do.end8.i.i.qdisc_enqueue.exit_crit_edge, label %if.then11.i.i

do.end8.i.i.qdisc_enqueue.exit_crit_edge:         ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qdisc_enqueue.exit

if.then11.i.i:                                    ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__qdisc_calculate_pkt_len(ptr noundef %skb, ptr noundef nonnull %73) #14
  br label %qdisc_enqueue.exit

qdisc_enqueue.exit:                               ; preds = %if.then11.i.i, %do.end8.i.i.qdisc_enqueue.exit_crit_edge
  %74 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %69, align 128
  %call.i = call i32 %75(ptr noundef %skb, ptr noundef %69, ptr noundef %to_free) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7.not = icmp eq i32 %call.i, 0
  br i1 %cmp7.not, label %if.end16, label %if.then11, !prof !45

if.then11:                                        ; preds = %qdisc_enqueue.exit
  %and12 = and i32 %call.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then14, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  %drops = getelementptr inbounds %struct.hfsc_class, ptr %retval.0.i80, i32 0, i32 2, i32 2
  %76 = ptrtoint ptr %drops to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %drops, align 8
  %inc = add i32 %77, 1
  store i32 %inc, ptr %drops, align 8
  %drops.i.i66 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %78 = ptrtoint ptr %drops.i.i66 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %drops.i.i66, align 4
  %inc.i.i67 = add i32 %79, 1
  store i32 %inc.i.i67, ptr %drops.i.i66, align 4
  br label %cleanup

if.end16:                                         ; preds = %qdisc_enqueue.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool4.not = icmp eq i32 %71, 0
  br i1 %tobool4.not, label %if.then18, label %if.end16.if.end38_crit_edge

if.end16.if.end38_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then18:                                        ; preds = %if.end16
  %cl_flags = getelementptr inbounds %struct.hfsc_class, ptr %retval.0.i80, i32 0, i32 36
  %80 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %cl_flags, align 8
  %82 = and i8 %81, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool20.not = icmp eq i8 %82, 0
  br i1 %tobool20.not, label %if.then18.if.end22_crit_edge, label %if.then21

if.then18.if.end22_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @init_ed(ptr noundef nonnull %retval.0.i80, i32 noundef %1)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.then18.if.end22_crit_edge
  %83 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %cl_flags, align 8
  %85 = and i8 %84, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool26.not = icmp eq i8 %85, 0
  br i1 %tobool26.not, label %if.end22.if.end28_crit_edge, label %if.then27

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @init_vf(ptr noundef nonnull %retval.0.i80)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end22.if.end28_crit_edge
  %86 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %cl_flags, align 8
  %88 = and i8 %87, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool32.not = icmp eq i8 %88, 0
  br i1 %tobool32.not, label %if.end28.if.end38_crit_edge, label %if.then33

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %89 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %qdisc, align 16
  %ops = getelementptr inbounds %struct.Qdisc, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ops, align 16
  %peek = getelementptr inbounds %struct.Qdisc_ops, ptr %92, i32 0, i32 7
  %93 = ptrtoint ptr %peek to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %peek, align 4
  %call36 = call ptr %94(ptr noundef %90) #14
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end28.if.end38_crit_edge, %if.end16.if.end38_crit_edge
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %95 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %backlog, align 4
  %add = add i32 %96, %1
  store i32 %add, ptr %backlog, align 4
  %qlen41 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %97 = ptrtoint ptr %qlen41 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %qlen41, align 8
  %inc42 = add i32 %98, 1
  store i32 %inc42, ptr %qlen41, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then14, %if.then11.cleanup_crit_edge, %if.end
  %retval.0 = phi i32 [ %err.07385, %if.end ], [ 0, %if.end38 ], [ %call.i, %if.then11.cleanup_crit_edge ], [ %call.i, %if.then14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hfsc_dequeue(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %0 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call i64 @ktime_get() #14
  %shr.i = lshr i64 %call.i.i, 6
  %eligible.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 3, i32 0, i32 0, i32 3
  %call.i = tail call ptr @rb_first(ptr noundef %eligible.i) #14
  %cmp.not14.i = icmp eq ptr %call.i, null
  br i1 %cmp.not14.i, label %if.end.if.else_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %cl.018.i = phi ptr [ %cl.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.end.for.body.i_crit_edge ]
  %n.015.i = phi ptr [ %call7.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %if.end.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %n.015.i, i32 -132
  %cl_e.i = getelementptr i8, ptr %n.015.i, i32 68
  %2 = ptrtoint ptr %cl_e.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %cl_e.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %shr.i)
  %cmp1.i = icmp ugt i64 %3, %shr.i
  br i1 %cmp1.i, label %for.body.i.eltree_get_mindl.exit_crit_edge, label %if.end.i

for.body.i.eltree_get_mindl.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %eltree_get_mindl.exit

if.end.i:                                         ; preds = %for.body.i
  %cmp2.i = icmp eq ptr %cl.018.i, null
  br i1 %cmp2.i, label %if.end.i.if.then5.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then5.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %cl_d.i = getelementptr i8, ptr %n.015.i, i32 60
  %4 = ptrtoint ptr %cl_d.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %cl_d.i, align 16
  %cl_d3.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.018.i, i32 0, i32 20
  %6 = ptrtoint ptr %cl_d3.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %cl_d3.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp4.i = icmp ult i64 %5, %7
  br i1 %cmp4.i, label %lor.lhs.false.i.if.then5.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

lor.lhs.false.i.if.then5.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5.i

if.then5.i:                                       ; preds = %lor.lhs.false.i.if.then5.i_crit_edge, %if.end.i.if.then5.i_crit_edge
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i, %lor.lhs.false.i.for.inc.i_crit_edge
  %cl.1.i = phi ptr [ %add.ptr.i, %if.then5.i ], [ %cl.018.i, %lor.lhs.false.i.for.inc.i_crit_edge ]
  %call7.i = tail call ptr @rb_next(ptr noundef nonnull %n.015.i) #14
  %cmp.not.i = icmp eq ptr %call7.i, null
  br i1 %cmp.not.i, label %for.inc.i.eltree_get_mindl.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.eltree_get_mindl.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %eltree_get_mindl.exit

eltree_get_mindl.exit:                            ; preds = %for.inc.i.eltree_get_mindl.exit_crit_edge, %for.body.i.eltree_get_mindl.exit_crit_edge
  %cl.0.lcssa.i = phi ptr [ %cl.018.i, %for.body.i.eltree_get_mindl.exit_crit_edge ], [ %cl.1.i, %for.inc.i.eltree_get_mindl.exit_crit_edge ]
  %tobool.not = icmp eq ptr %cl.0.lcssa.i, null
  br i1 %tobool.not, label %eltree_get_mindl.exit.if.else_crit_edge, label %eltree_get_mindl.exit.if.end9_crit_edge

eltree_get_mindl.exit.if.end9_crit_edge:          ; preds = %eltree_get_mindl.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

eltree_get_mindl.exit.if.else_crit_edge:          ; preds = %eltree_get_mindl.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.else:                                          ; preds = %eltree_get_mindl.exit.if.else_crit_edge, %if.end.if.else_crit_edge
  %root = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %cl_cfmin.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 18, i32 1
  %8 = ptrtoint ptr %cl_cfmin.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %cl_cfmin.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %shr.i)
  %cmp.i = icmp ugt i64 %9, %shr.i
  br i1 %cmp.i, label %if.else.if.then7_crit_edge, label %while.cond.preheader.i

if.else.if.then7_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7

while.cond.preheader.i:                           ; preds = %if.else
  %level24.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 52
  %10 = ptrtoint ptr %level24.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %level24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1.not25.i = icmp eq i32 %11, 0
  br i1 %cmp1.not25.i, label %vttree_get_minvt.exit, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end10.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %cl.addr.026.i = phi ptr [ %add.ptr.i.i, %if.end10.i.while.body.i_crit_edge ], [ %root, %while.cond.preheader.i.while.body.i_crit_edge ]
  %vt_tree.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.026.i, i32 0, i32 14
  %call.i.i74 = tail call ptr @rb_first(ptr noundef %vt_tree.i.i) #14
  %cmp.not8.i.i = icmp eq ptr %call.i.i74, null
  br i1 %cmp.not8.i.i, label %while.body.i.if.then7_crit_edge, label %while.body.i.for.body.i.i_crit_edge

while.body.i.for.body.i.i_crit_edge:              ; preds = %while.body.i
  br label %for.body.i.i

while.body.i.if.then7_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %while.body.i.for.body.i.i_crit_edge
  %n.09.i.i = phi ptr [ %call2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call.i.i74, %while.body.i.for.body.i.i_crit_edge ]
  %cl_f.i.i = getelementptr i8, ptr %n.09.i.i, i32 68
  %12 = ptrtoint ptr %cl_f.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %cl_f.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %shr.i)
  %cmp1.not.i.i = icmp ugt i64 %13, %shr.i
  br i1 %cmp1.not.i.i, label %for.inc.i.i, label %vttree_firstfit.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %call2.i.i = tail call ptr @rb_next(ptr noundef nonnull %n.09.i.i) #14
  %cmp.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.then7_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.if.then7_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7

vttree_firstfit.exit.i:                           ; preds = %for.body.i.i
  %add.ptr.i.i = getelementptr i8, ptr %n.09.i.i, i32 -148
  %cmp2.i75 = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp2.i75, label %vttree_firstfit.exit.i.if.then7_crit_edge, label %if.end4.i

vttree_firstfit.exit.i.if.then7_crit_edge:        ; preds = %vttree_firstfit.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7

if.end4.i:                                        ; preds = %vttree_firstfit.exit.i
  %cl_parent.i = getelementptr i8, ptr %n.09.i.i, i32 -40
  %14 = ptrtoint ptr %cl_parent.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cl_parent.i, align 4
  %cl_cvtmin.i = getelementptr inbounds %struct.hfsc_class, ptr %15, i32 0, i32 26
  %16 = ptrtoint ptr %cl_cvtmin.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %cl_cvtmin.i, align 16
  %cl_vt.i = getelementptr i8, ptr %n.09.i.i, i32 60
  %18 = ptrtoint ptr %cl_vt.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %cl_vt.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %19)
  %cmp5.i = icmp ult i64 %17, %19
  br i1 %cmp5.i, label %if.then6.i, label %if.end4.i.if.end10.i_crit_edge

if.end4.i.if.end10.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %cl_cvtmin.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %cl_cvtmin.i, align 16
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end4.i.if.end10.i_crit_edge
  %level.i = getelementptr i8, ptr %n.09.i.i, i32 -48
  %21 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %level.i, align 4
  %cmp1.not.i = icmp eq i32 %22, 0
  br i1 %cmp1.not.i, label %if.end10.i.if.end9_crit_edge, label %if.end10.i.while.body.i_crit_edge

if.end10.i.while.body.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end10.i.if.end9_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

vttree_get_minvt.exit:                            ; preds = %while.cond.preheader.i
  %cmp6 = icmp eq ptr %root, null
  br i1 %cmp6, label %vttree_get_minvt.exit.if.then7_crit_edge, label %vttree_get_minvt.exit.if.end9_crit_edge

vttree_get_minvt.exit.if.end9_crit_edge:          ; preds = %vttree_get_minvt.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

vttree_get_minvt.exit.if.then7_crit_edge:         ; preds = %vttree_get_minvt.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7

if.then7:                                         ; preds = %vttree_get_minvt.exit.if.then7_crit_edge, %vttree_firstfit.exit.i.if.then7_crit_edge, %for.inc.i.i.if.then7_crit_edge, %while.body.i.if.then7_crit_edge, %if.else.if.then7_crit_edge
  %overlimits.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 4
  %23 = ptrtoint ptr %overlimits.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %overlimits.i, align 16
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr %overlimits.i, align 16
  %call.i.i76 = tail call ptr @rb_first(ptr noundef %eligible.i) #14
  %cmp.i.i = icmp eq ptr %call.i.i76, null
  %add.ptr.i.i77 = getelementptr i8, ptr %call.i.i76, i32 -132
  %tobool.not26.i = icmp eq ptr %add.ptr.i.i77, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not26.i
  br i1 %tobool.not.i, label %if.end.thread.i, label %if.end.i81

if.end.i81:                                       ; preds = %if.then7
  %cl_e.i78 = getelementptr i8, ptr %call.i.i76, i32 68
  %25 = ptrtoint ptr %cl_e.i78 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %cl_e.i78, align 8
  %27 = ptrtoint ptr %cl_cfmin.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %cl_cfmin.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %cmp.not.i80 = icmp eq i64 %28, 0
  br i1 %cmp.not.i80, label %if.end11.i, label %if.end.i81.if.then2.i_crit_edge

if.end.i81.if.then2.i_crit_edge:                  ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then2.i

if.end.thread.i:                                  ; preds = %if.then7
  %29 = ptrtoint ptr %cl_cfmin.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %cl_cfmin.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %cmp.not29.i = icmp eq i64 %30, 0
  br i1 %cmp.not29.i, label %if.end.thread.i.cleanup_crit_edge, label %if.end.thread.i.if.then2.i_crit_edge

if.end.thread.i.if.then2.i_crit_edge:             ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then2.i

if.end.thread.i.cleanup_crit_edge:                ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.thread.i.if.then2.i_crit_edge, %if.end.i81.if.then2.i_crit_edge
  %31 = phi i64 [ %30, %if.end.thread.i.if.then2.i_crit_edge ], [ %28, %if.end.i81.if.then2.i_crit_edge ]
  %next_time.030.i = phi i64 [ 0, %if.end.thread.i.if.then2.i_crit_edge ], [ %26, %if.end.i81.if.then2.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %next_time.030.i)
  %cmp3.i = icmp eq i64 %next_time.030.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %next_time.030.i, i64 %31)
  %cmp6.i = icmp ugt i64 %next_time.030.i, %31
  %or.cond.i = select i1 %cmp3.i, i1 true, i1 %cmp6.i
  %spec.select.i = select i1 %or.cond.i, i64 %31, i64 %next_time.030.i
  br label %if.then13.i

if.end11.i:                                       ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %tobool12.not.i = icmp eq i64 %26, 0
  br i1 %tobool12.not.i, label %if.end11.i.cleanup_crit_edge, label %if.end11.i.if.then13.i_crit_edge

if.end11.i.if.then13.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13.i

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then13.i:                                      ; preds = %if.end11.i.if.then13.i_crit_edge, %if.then2.i
  %next_time.125.i = phi i64 [ %26, %if.end11.i.if.then13.i_crit_edge ], [ %spec.select.i, %if.then2.i ]
  %watchdog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 3, i32 0, i32 0, i32 4, i32 1
  %shl.i.i = shl i64 %next_time.125.i, 6
  tail call void @qdisc_watchdog_schedule_range_ns(ptr noundef %watchdog.i, i64 noundef %shl.i.i, i64 noundef 0) #14
  br label %cleanup

if.end9:                                          ; preds = %vttree_get_minvt.exit.if.end9_crit_edge, %if.end10.i.if.end9_crit_edge, %eltree_get_mindl.exit.if.end9_crit_edge
  %tobool.not99 = phi i1 [ true, %vttree_get_minvt.exit.if.end9_crit_edge ], [ false, %eltree_get_mindl.exit.if.end9_crit_edge ], [ true, %if.end10.i.if.end9_crit_edge ]
  %cl.0 = phi ptr [ %root, %vttree_get_minvt.exit.if.end9_crit_edge ], [ %cl.0.lcssa.i, %eltree_get_mindl.exit.if.end9_crit_edge ], [ %add.ptr.i.i, %if.end10.i.if.end9_crit_edge ]
  %qdisc = getelementptr inbounds %struct.hfsc_class, ptr %cl.0, i32 0, i32 12
  %32 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %qdisc, align 16
  %gso_skb.i = getelementptr inbounds %struct.Qdisc, ptr %33, i32 0, i32 16
  %34 = ptrtoint ptr %gso_skb.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gso_skb.i, align 4
  %cmp.i.i82 = icmp eq ptr %35, %gso_skb.i
  %tobool.not31.i = icmp eq ptr %35, null
  %tobool.not.i83 = or i1 %cmp.i.i82, %tobool.not31.i
  br i1 %tobool.not.i83, label %qdisc_dequeue_peeked.exit, label %__skb_dequeue.exit.i

__skb_dequeue.exit.i:                             ; preds = %if.end9
  %qlen.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %33, i32 0, i32 16, i32 1
  %36 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.0, ptr %35, i32 0, i32 1
  %40 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %35, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.0, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %41, ptr %prev17.i.i.i, align 4
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %39, ptr %41, align 8
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %33, i32 0, i32 2
  %44 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %45, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %__skb_dequeue.exit.i
  %46 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !46
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 3
  %47 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cb.i.i.i.i, align 4
  %cpu_qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %33, i32 0, i32 12
  %49 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cpu_qstats.i.i, align 4
  %backlog.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %backlog.i.i to i32
  %52 = tail call i32 @llvm.read_register.i32(metadata !34) #14
  %and.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %57, %51
  %58 = inttoptr i32 %add.i.i to ptr
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %add14.i.i = sub i32 %60, %48
  store i32 %add14.i.i, ptr %58, align 4
  %61 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !47
  %and.i.i.i.i = and i32 %61, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i19.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i19.i, label %if.then.i20.i, label %if.then4.i.qdisc_qstats_cpu_backlog_dec.exit.i_crit_edge, !prof !48

if.then4.i.qdisc_qstats_cpu_backlog_dec.exit.i_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qdisc_qstats_cpu_backlog_dec.exit.i

if.then.i20.i:                                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %qdisc_qstats_cpu_backlog_dec.exit.i

qdisc_qstats_cpu_backlog_dec.exit.i:              ; preds = %if.then.i20.i, %if.then4.i.qdisc_qstats_cpu_backlog_dec.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %46) #14, !srcloc !49
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !46
  %63 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cpu_qstats.i.i, align 4
  %65 = ptrtoint ptr %64 to i32
  %66 = tail call i32 @llvm.read_register.i32(metadata !34) #14
  %and.i.i22.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i22.i to ptr
  %cpu.i23.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %cpu.i23.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cpu.i23.i, align 4
  %arrayidx.i24.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %69
  %70 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i24.i, align 4
  %add.i25.i = add i32 %71, %65
  %72 = inttoptr i32 %add.i25.i to ptr
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %add13.i.i = add i32 %74, -1
  store i32 %add13.i.i, ptr %72, align 4
  %75 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !47
  %and.i.i.i26.i = and i32 %75, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i26.i)
  %tobool.not.i27.i = icmp eq i32 %and.i.i.i26.i, 0
  br i1 %tobool.not.i27.i, label %if.then.i28.i, label %qdisc_qstats_cpu_backlog_dec.exit.i.qdisc_qstats_cpu_qlen_dec.exit.i_crit_edge, !prof !48

qdisc_qstats_cpu_backlog_dec.exit.i.qdisc_qstats_cpu_qlen_dec.exit.i_crit_edge: ; preds = %qdisc_qstats_cpu_backlog_dec.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qdisc_qstats_cpu_qlen_dec.exit.i

if.then.i28.i:                                    ; preds = %qdisc_qstats_cpu_backlog_dec.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %qdisc_qstats_cpu_qlen_dec.exit.i

qdisc_qstats_cpu_qlen_dec.exit.i:                 ; preds = %if.then.i28.i, %qdisc_qstats_cpu_backlog_dec.exit.i.qdisc_qstats_cpu_qlen_dec.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %62) #14, !srcloc !49
  br label %if.end14

if.else.i:                                        ; preds = %__skb_dequeue.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %cb.i.i.i29.i = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 3
  %76 = ptrtoint ptr %cb.i.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cb.i.i.i29.i, align 4
  %backlog.i30.i = getelementptr inbounds %struct.Qdisc, ptr %33, i32 0, i32 19, i32 1
  %78 = ptrtoint ptr %backlog.i30.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %backlog.i30.i, align 4
  %sub.i.i = sub i32 %79, %77
  store i32 %sub.i.i, ptr %backlog.i30.i, align 4
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %33, i32 0, i32 17, i32 2
  %80 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %qlen.i, align 8
  %dec.i = add i32 %81, -1
  store i32 %dec.i, ptr %qlen.i, align 8
  br label %if.end14

qdisc_dequeue_peeked.exit:                        ; preds = %if.end9
  %dequeue.i = getelementptr inbounds %struct.Qdisc, ptr %33, i32 0, i32 1
  %82 = ptrtoint ptr %dequeue.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dequeue.i, align 4
  %call6.i = tail call ptr %83(ptr noundef %33) #14
  %cmp11 = icmp eq ptr %call6.i, null
  br i1 %cmp11, label %if.then12, label %qdisc_dequeue_peeked.exit.if.end14_crit_edge

qdisc_dequeue_peeked.exit.if.end14_crit_edge:     ; preds = %qdisc_dequeue_peeked.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then12:                                        ; preds = %qdisc_dequeue_peeked.exit
  call void @__sanitizer_cov_trace_pc() #16
  %84 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %qdisc, align 16
  tail call void @qdisc_warn_nonwc(ptr noundef nonnull @.str.7, ptr noundef %85) #14
  br label %cleanup

if.end14:                                         ; preds = %qdisc_dequeue_peeked.exit.if.end14_crit_edge, %if.else.i, %qdisc_qstats_cpu_qlen_dec.exit.i
  %skb.0.i108 = phi ptr [ %call6.i, %qdisc_dequeue_peeked.exit.if.end14_crit_edge ], [ %35, %qdisc_qstats_cpu_qlen_dec.exit.i ], [ %35, %if.else.i ]
  %bstats = getelementptr inbounds %struct.hfsc_class, ptr %cl.0, i32 0, i32 1
  tail call fastcc void @bstats_update(ptr noundef %bstats, ptr noundef nonnull %skb.0.i108)
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i108, i32 0, i32 3
  %86 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cb.i.i, align 4
  tail call fastcc void @update_vf(ptr noundef nonnull %cl.0, i32 noundef %87)
  br i1 %tobool.not99, label %if.end14.if.end19_crit_edge, label %if.then17

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %88 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cb.i.i, align 4
  %conv = zext i32 %89 to i64
  %cl_cumul = getelementptr inbounds %struct.hfsc_class, ptr %cl.0, i32 0, i32 19
  %90 = ptrtoint ptr %cl_cumul to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %cl_cumul, align 8
  %add = add i64 %91, %conv
  store i64 %add, ptr %cl_cumul, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14.if.end19_crit_edge
  %cl_flags = getelementptr inbounds %struct.hfsc_class, ptr %cl.0, i32 0, i32 36
  %92 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %cl_flags, align 8
  %94 = and i8 %93, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool21.not = icmp eq i8 %94, 0
  br i1 %tobool21.not, label %if.end19.if.end37_crit_edge, label %if.then22

if.end19.if.end37_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.then22:                                        ; preds = %if.end19
  %95 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %qdisc, align 16
  %qlen25 = getelementptr inbounds %struct.Qdisc, ptr %96, i32 0, i32 17, i32 2
  %97 = ptrtoint ptr %qlen25 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %qlen25, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp26.not = icmp eq i32 %98, 0
  br i1 %cmp26.not, label %if.else35, label %if.then28

if.then28:                                        ; preds = %if.then22
  %ops.i = getelementptr inbounds %struct.Qdisc, ptr %96, i32 0, i32 4
  %99 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ops.i, align 16
  %peek.i = getelementptr inbounds %struct.Qdisc_ops, ptr %100, i32 0, i32 7
  %101 = ptrtoint ptr %peek.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %peek.i, align 4
  %call.i85 = tail call ptr %102(ptr noundef %96) #14
  %cmp.i86 = icmp eq ptr %call.i85, null
  br i1 %cmp.i86, label %if.then.i, label %if.end.i87, !prof !48

if.then.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @qdisc_warn_nonwc(ptr noundef nonnull @.str.2, ptr noundef %96) #14
  br label %qdisc_peek_len.exit

if.end.i87:                                       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i85, i32 0, i32 3
  %103 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cb.i.i.i, align 4
  br label %qdisc_peek_len.exit

qdisc_peek_len.exit:                              ; preds = %if.end.i87, %if.then.i
  %retval.0.i88 = phi i32 [ 0, %if.then.i ], [ %104, %if.end.i87 ]
  br i1 %tobool.not99, label %if.else33, label %if.then32

if.then32:                                        ; preds = %qdisc_peek_len.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @update_ed(ptr noundef nonnull %cl.0, i32 noundef %retval.0.i88)
  br label %if.end37

if.else33:                                        ; preds = %qdisc_peek_len.exit
  %cl_deadline.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.0, i32 0, i32 32
  %cl_cumul.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.0, i32 0, i32 19
  %105 = ptrtoint ptr %cl_cumul.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %cl_cumul.i, align 8
  %conv.i = zext i32 %retval.0.i88 to i64
  %add.i = add i64 %106, %conv.i
  %y1.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.0, i32 0, i32 32, i32 1
  %107 = ptrtoint ptr %y1.i.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %y1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %108)
  %cmp.i.i89 = icmp ult i64 %add.i, %108
  br i1 %cmp.i.i89, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #16
  %109 = ptrtoint ptr %cl_deadline.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %cl_deadline.i, align 8
  br label %update_d.exit

if.else.i.i:                                      ; preds = %if.else33
  %dy.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.0, i32 0, i32 32, i32 5
  %111 = ptrtoint ptr %dy.i.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %dy.i.i, align 8
  %add.i.i90 = add i64 %112, %108
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %add.i.i90)
  %cmp4.not.i.i = icmp ugt i64 %add.i, %add.i.i90
  br i1 %cmp4.not.i.i, label %if.else15.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %112)
  %cmp7.i.i = icmp eq i64 %112, 0
  %113 = ptrtoint ptr %cl_deadline.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %cl_deadline.i, align 8
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.else11.i.i

if.then8.i.i:                                     ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %dx.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.0, i32 0, i32 32, i32 4
  %115 = ptrtoint ptr %dx.i.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %dx.i.i, align 8
  %add10.i.i = add i64 %116, %114
  br label %update_d.exit

if.else11.i.i:                                    ; preds = %if.then5.i.i
  %sub.i.i91 = sub i64 %add.i, %108
  %ism1.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.0, i32 0, i32 32, i32 3
  %117 = ptrtoint ptr %ism1.i.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %ism1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %108)
  %cmp.i.i.i = icmp eq i64 %add.i, %108
  br i1 %cmp.i.i.i, label %if.else11.i.i.seg_y2x.exit.i.i_crit_edge, label %if.else.i.i.i

if.else11.i.i.seg_y2x.exit.i.i_crit_edge:         ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seg_y2x.exit.i.i

if.else.i.i.i:                                    ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %118)
  %cmp1.i.i.i = icmp eq i64 %118, -1
  br i1 %cmp1.i.i.i, label %if.else.i.i.i.seg_y2x.exit.i.i_crit_edge, label %if.else3.i.i.i

if.else.i.i.i.seg_y2x.exit.i.i_crit_edge:         ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seg_y2x.exit.i.i

if.else3.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %shr.i.i.i = lshr i64 %sub.i.i91, 14
  %mul.i.i.i = mul i64 %118, %shr.i.i.i
  %and.i.i.i92 = and i64 %sub.i.i91, 16383
  %mul4.i.i.i = mul i64 %118, %and.i.i.i92
  %shr5.i.i.i = lshr i64 %mul4.i.i.i, 14
  %add.i.i.i = add i64 %shr5.i.i.i, %mul.i.i.i
  br label %seg_y2x.exit.i.i

seg_y2x.exit.i.i:                                 ; preds = %if.else3.i.i.i, %if.else.i.i.i.seg_y2x.exit.i.i_crit_edge, %if.else11.i.i.seg_y2x.exit.i.i_crit_edge
  %x.0.i.i.i = phi i64 [ %add.i.i.i, %if.else3.i.i.i ], [ 0, %if.else11.i.i.seg_y2x.exit.i.i_crit_edge ], [ -1, %if.else.i.i.i.seg_y2x.exit.i.i_crit_edge ]
  %add14.i.i93 = add i64 %x.0.i.i.i, %114
  br label %update_d.exit

if.else15.i.i:                                    ; preds = %if.else.i.i
  %119 = ptrtoint ptr %cl_deadline.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %cl_deadline.i, align 8
  %dx17.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.0, i32 0, i32 32, i32 4
  %121 = ptrtoint ptr %dx17.i.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %dx17.i.i, align 8
  %add18.i.i = add i64 %122, %120
  %ism2.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.0, i32 0, i32 32, i32 7
  %123 = ptrtoint ptr %ism2.i.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %ism2.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %124)
  %cmp1.i45.i.i = icmp eq i64 %124, -1
  br i1 %cmp1.i45.i.i, label %if.else15.i.i.seg_y2x.exit55.i.i_crit_edge, label %if.else3.i53.i.i

if.else15.i.i.seg_y2x.exit55.i.i_crit_edge:       ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seg_y2x.exit55.i.i

if.else3.i53.i.i:                                 ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub22.i.i = sub i64 %add.i, %add.i.i90
  %shr.i47.i.i = lshr i64 %sub22.i.i, 14
  %mul.i48.i.i = mul i64 %124, %shr.i47.i.i
  %and.i49.i.i = and i64 %sub22.i.i, 16383
  %mul4.i50.i.i = mul i64 %124, %and.i49.i.i
  %shr5.i51.i.i = lshr i64 %mul4.i50.i.i, 14
  %add.i52.i.i = add i64 %shr5.i51.i.i, %mul.i48.i.i
  br label %seg_y2x.exit55.i.i

seg_y2x.exit55.i.i:                               ; preds = %if.else3.i53.i.i, %if.else15.i.i.seg_y2x.exit55.i.i_crit_edge
  %x.0.i54.i.i = phi i64 [ %add.i52.i.i, %if.else3.i53.i.i ], [ -1, %if.else15.i.i.seg_y2x.exit55.i.i_crit_edge ]
  %add24.i.i = add i64 %add18.i.i, %x.0.i54.i.i
  br label %update_d.exit

update_d.exit:                                    ; preds = %seg_y2x.exit55.i.i, %seg_y2x.exit.i.i, %if.then8.i.i, %if.then.i.i
  %x.0.i.i = phi i64 [ %110, %if.then.i.i ], [ %add10.i.i, %if.then8.i.i ], [ %add14.i.i93, %seg_y2x.exit.i.i ], [ %add24.i.i, %seg_y2x.exit55.i.i ]
  %cl_d.i94 = getelementptr inbounds %struct.hfsc_class, ptr %cl.0, i32 0, i32 20
  %125 = ptrtoint ptr %cl_d.i94 to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %x.0.i.i, ptr %cl_d.i94, align 16
  br label %if.end37

if.else35:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  %el_node.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.0, i32 0, i32 13
  %sched.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.0, i32 0, i32 8
  %126 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %sched.i, align 8
  %eligible.i95 = getelementptr inbounds %struct.hfsc_sched, ptr %127, i32 0, i32 4
  tail call void @rb_erase(ptr noundef %el_node.i, ptr noundef %eligible.i95) #14
  br label %if.end37

if.end37:                                         ; preds = %if.else35, %update_d.exit, %if.then32, %if.end19.if.end37_crit_edge
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  tail call fastcc void @bstats_update(ptr noundef %bstats.i, ptr noundef nonnull %skb.0.i108) #14
  %128 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %cb.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %130 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %backlog.i, align 4
  %sub.i = sub i32 %131, %129
  store i32 %sub.i, ptr %backlog.i, align 4
  %132 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %qlen, align 8
  %dec = add i32 %133, -1
  store i32 %dec, ptr %qlen, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then12, %if.then13.i, %if.end11.i.cleanup_crit_edge, %if.end.thread.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then12 ], [ %skb.0.i108, %if.end37 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.thread.i.cleanup_crit_edge ], [ null, %if.end11.i.cleanup_crit_edge ], [ null, %if.then13.i ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qdisc_peek_dequeued(ptr noundef %sch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %gso_skb = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 16
  %0 = ptrtoint ptr %gso_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gso_skb, align 4
  %cmp.i = icmp eq ptr %1, %gso_skb
  %tobool.not15 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.i, %tobool.not15
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then:                                          ; preds = %entry
  %dequeue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 1
  %2 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dequeue, align 4
  %call1 = tail call ptr %3(ptr noundef %sch) #14
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
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
define internal i32 @hfsc_init_qdisc(ptr noundef %sch, ptr noundef readonly %opt, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 3, i32 0, i32 0, i32 4, i32 1
  tail call void @qdisc_watchdog_init(ptr noundef %watchdog, ptr noundef %sch) #14
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %opt, align 2
  %2 = and i16 %1, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %2)
  %cmp = icmp eq i16 %2, 4
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr.i = getelementptr i8, ptr %opt, i32 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i, align 2
  %5 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %privdata.i, align 16
  %clhash = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 2
  %call4 = tail call i32 @qdisc_class_hash_init(ptr noundef %clhash) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %eligible = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 3, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %eligible to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %eligible, align 16
  %root = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 44
  %filter_list = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 40
  %call9 = tail call i32 @tcf_block_get(ptr noundef %block, ptr noundef %filter_list, ptr noundef %sch, ptr noundef %extack) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %bstats = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  tail call void @gnet_stats_basic_sync_init(ptr noundef %bstats) #14
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %handle, align 32
  %9 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %root, align 16
  %sched = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 56
  %10 = ptrtoint ptr %sched to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %privdata.i, ptr %sched, align 8
  %dev_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %11 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_queue, align 8
  %call17 = tail call ptr @qdisc_create_dflt(ptr noundef %12, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %8, ptr noundef null) #14
  %qdisc = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %qdisc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call17, ptr %qdisc, align 16
  %cmp21 = icmp eq ptr %call17, null
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %qdisc to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @noop_qdisc, ptr %qdisc, align 16
  br label %if.end27

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @qdisc_hash_add(ptr noundef nonnull %call17, i1 noundef zeroext true) #14
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then22
  %children = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 1
  %15 = ptrtoint ptr %children to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %children, ptr %children, align 4
  %prev.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %children, ptr %prev.i, align 4
  %vt_tree = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %vt_tree to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %vt_tree, align 16
  %cf_tree = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 6
  %18 = ptrtoint ptr %cf_tree to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %cf_tree, align 16
  tail call void @qdisc_class_hash_insert(ptr noundef %clhash, ptr noundef %root) #14
  tail call void @qdisc_class_hash_grow(ptr noundef %sch, ptr noundef %clhash) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfsc_reset_qdisc(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hashsize = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 3
  %0 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hashsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp37.not = icmp eq i32 %1, 0
  br i1 %cmp37.not, label %entry.for.end17_crit_edge, label %for.body.lr.ph

entry.for.end17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end17

for.body.lr.ph:                                   ; preds = %entry
  %clhash = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc16.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc16.for.body_crit_edge ]
  %2 = ptrtoint ptr %clhash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clhash, align 16
  %arrayidx = getelementptr %struct.hlist_head, ptr %3, i32 %i.038
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -4
  %tobool4.not3439 = icmp eq ptr %add.ptr, null
  %tobool4.not34 = or i1 %tobool.not, %tobool4.not3439
  br i1 %tobool4.not34, label %for.body.for.inc16_crit_edge, label %for.body.for.body5_crit_edge

for.body.for.body5_crit_edge:                     ; preds = %for.body
  br label %for.body5

for.body.for.inc16_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc16

for.body5:                                        ; preds = %hfsc_reset_class.exit.for.body5_crit_edge, %for.body.for.body5_crit_edge
  %cl.035 = phi ptr [ %add.ptr12, %hfsc_reset_class.exit.for.body5_crit_edge ], [ %add.ptr, %for.body.for.body5_crit_edge ]
  %cl_total.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 18
  %cl_vtperiod.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 37
  %6 = ptrtoint ptr %cl_vtperiod.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cl_vtperiod.i, align 4
  %cl_parentperiod.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 38
  %7 = ptrtoint ptr %cl_parentperiod.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %cl_parentperiod.i, align 16
  %cl_nactive.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 39
  %8 = ptrtoint ptr %cl_nactive.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %cl_nactive.i, align 4
  %vt_tree.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 14
  %9 = ptrtoint ptr %vt_tree.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %vt_tree.i, align 16
  %cf_tree.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 16
  %10 = ptrtoint ptr %cf_tree.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %cf_tree.i, align 16
  %qdisc.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 12
  %11 = call ptr @memset(ptr %cl_total.i, i32 0, i32 88)
  %12 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qdisc.i, align 16
  tail call void @qdisc_reset(ptr noundef %13) #14
  %cl_flags.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 36
  %14 = ptrtoint ptr %cl_flags.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cl_flags.i, align 8
  %16 = and i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %for.body5.if.end.i_crit_edge, label %if.then.i

for.body5.if.end.i_crit_edge:                     ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #16
  %cl_deadline.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 32
  %cl_rsc.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 29
  %17 = call ptr @memset(ptr %cl_deadline.i, i32 0, i32 16)
  %18 = ptrtoint ptr %cl_rsc.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %cl_rsc.i, align 8
  %sm13.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 32, i32 2
  %20 = ptrtoint ptr %sm13.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %sm13.i.i, align 8
  %ism1.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 29, i32 1
  %21 = ptrtoint ptr %ism1.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %ism1.i.i, align 8
  %ism14.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 32, i32 3
  %23 = ptrtoint ptr %ism14.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %ism14.i.i, align 8
  %dx.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 29, i32 2
  %24 = ptrtoint ptr %dx.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %dx.i.i, align 8
  %dx5.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 32, i32 4
  %26 = ptrtoint ptr %dx5.i.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %dx5.i.i, align 8
  %dy.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 29, i32 3
  %27 = ptrtoint ptr %dy.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %dy.i.i, align 8
  %dy6.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 32, i32 5
  %29 = ptrtoint ptr %dy6.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %dy6.i.i, align 8
  %sm2.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 29, i32 4
  %30 = ptrtoint ptr %sm2.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %sm2.i.i, align 8
  %sm27.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 32, i32 6
  %32 = ptrtoint ptr %sm27.i.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %sm27.i.i, align 8
  %ism2.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 29, i32 5
  %33 = ptrtoint ptr %ism2.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %ism2.i.i, align 8
  %ism28.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 32, i32 7
  %35 = ptrtoint ptr %ism28.i.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %ism28.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body5.if.end.i_crit_edge
  %36 = and i8 %15, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool6.not.i = icmp eq i8 %36, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then7.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %cl_virtual.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 34
  %cl_fsc.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 30
  %37 = call ptr @memset(ptr %cl_virtual.i, i32 0, i32 16)
  %38 = ptrtoint ptr %cl_fsc.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %cl_fsc.i, align 8
  %sm13.i41.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 34, i32 2
  %40 = ptrtoint ptr %sm13.i41.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %sm13.i41.i, align 8
  %ism1.i42.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 30, i32 1
  %41 = ptrtoint ptr %ism1.i42.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %ism1.i42.i, align 8
  %ism14.i43.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 34, i32 3
  %43 = ptrtoint ptr %ism14.i43.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %ism14.i43.i, align 8
  %dx.i44.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 30, i32 2
  %44 = ptrtoint ptr %dx.i44.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %dx.i44.i, align 8
  %dx5.i45.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 34, i32 4
  %46 = ptrtoint ptr %dx5.i45.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %dx5.i45.i, align 8
  %dy.i46.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 30, i32 3
  %47 = ptrtoint ptr %dy.i46.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %dy.i46.i, align 8
  %dy6.i47.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 34, i32 5
  %49 = ptrtoint ptr %dy6.i47.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %dy6.i47.i, align 8
  %sm2.i48.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 30, i32 4
  %50 = ptrtoint ptr %sm2.i48.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %sm2.i48.i, align 8
  %sm27.i49.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 34, i32 6
  %52 = ptrtoint ptr %sm27.i49.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %sm27.i49.i, align 8
  %ism2.i50.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 30, i32 5
  %53 = ptrtoint ptr %ism2.i50.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %ism2.i50.i, align 8
  %ism28.i51.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 34, i32 7
  %55 = ptrtoint ptr %ism28.i51.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %ism28.i51.i, align 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end.i.if.end8.i_crit_edge
  %56 = and i8 %15, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool12.not.i = icmp eq i8 %56, 0
  br i1 %tobool12.not.i, label %if.end8.i.hfsc_reset_class.exit_crit_edge, label %if.then13.i

if.end8.i.hfsc_reset_class.exit_crit_edge:        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hfsc_reset_class.exit

if.then13.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %cl_ulimit.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 35
  %cl_usc.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 31
  %57 = call ptr @memset(ptr %cl_ulimit.i, i32 0, i32 16)
  %58 = ptrtoint ptr %cl_usc.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %cl_usc.i, align 8
  %sm13.i53.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 35, i32 2
  %60 = ptrtoint ptr %sm13.i53.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %sm13.i53.i, align 8
  %ism1.i54.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 31, i32 1
  %61 = ptrtoint ptr %ism1.i54.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %ism1.i54.i, align 8
  %ism14.i55.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 35, i32 3
  %63 = ptrtoint ptr %ism14.i55.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %ism14.i55.i, align 8
  %dx.i56.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 31, i32 2
  %64 = ptrtoint ptr %dx.i56.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %dx.i56.i, align 8
  %dx5.i57.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 35, i32 4
  %66 = ptrtoint ptr %dx5.i57.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %dx5.i57.i, align 8
  %dy.i58.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 31, i32 3
  %67 = ptrtoint ptr %dy.i58.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %dy.i58.i, align 8
  %dy6.i59.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 35, i32 5
  %69 = ptrtoint ptr %dy6.i59.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %dy6.i59.i, align 8
  %sm2.i60.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 31, i32 4
  %70 = ptrtoint ptr %sm2.i60.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %sm2.i60.i, align 8
  %sm27.i61.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 35, i32 6
  %72 = ptrtoint ptr %sm27.i61.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %sm27.i61.i, align 8
  %ism2.i62.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 31, i32 5
  %73 = ptrtoint ptr %ism2.i62.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %ism2.i62.i, align 8
  %ism28.i63.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.035, i32 0, i32 35, i32 7
  %75 = ptrtoint ptr %ism28.i63.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %ism28.i63.i, align 8
  br label %hfsc_reset_class.exit

hfsc_reset_class.exit:                            ; preds = %if.then13.i, %if.end8.i.hfsc_reset_class.exit_crit_edge
  %hnode = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.035, i32 0, i32 1
  %76 = ptrtoint ptr %hnode to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hnode, align 4
  %tobool8.not = icmp eq ptr %77, null
  %add.ptr12 = getelementptr i8, ptr %77, i32 -4
  %tobool4.not40 = icmp eq ptr %add.ptr12, null
  %tobool4.not = or i1 %tobool8.not, %tobool4.not40
  br i1 %tobool4.not, label %hfsc_reset_class.exit.for.inc16_crit_edge, label %hfsc_reset_class.exit.for.body5_crit_edge

hfsc_reset_class.exit.for.body5_crit_edge:        ; preds = %hfsc_reset_class.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body5

hfsc_reset_class.exit.for.inc16_crit_edge:        ; preds = %hfsc_reset_class.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc16

for.inc16:                                        ; preds = %hfsc_reset_class.exit.for.inc16_crit_edge, %for.body.for.inc16_crit_edge
  %inc = add nuw i32 %i.038, 1
  %78 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %hashsize, align 4
  %cmp = icmp ult i32 %inc, %79
  br i1 %cmp, label %for.inc16.for.body_crit_edge, label %for.inc16.for.end17_crit_edge

for.inc16.for.end17_crit_edge:                    ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end17

for.inc16.for.body_crit_edge:                     ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end17:                                        ; preds = %for.inc16.for.end17_crit_edge, %entry.for.end17_crit_edge
  %eligible = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 3, i32 0, i32 0, i32 3
  %80 = ptrtoint ptr %eligible to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %eligible, align 16
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 3, i32 0, i32 0, i32 4, i32 1
  tail call void @qdisc_watchdog_cancel(ptr noundef %watchdog) #14
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %81 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %backlog, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %82 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %qlen, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfsc_destroy_qdisc(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %clhash = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 2
  %hashsize = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 3
  %0 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hashsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp97.not = icmp eq i32 %1, 0
  br i1 %cmp97.not, label %entry.for.end61_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end61

for.cond20.preheader:                             ; preds = %for.inc18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp23102.not = icmp eq i32 %12, 0
  br i1 %cmp23102.not, label %for.cond20.preheader.for.end61_crit_edge, label %for.body24.lr.ph

for.cond20.preheader.for.end61_crit_edge:         ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end61

for.body24.lr.ph:                                 ; preds = %for.cond20.preheader
  %root.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  br label %for.body24

for.body:                                         ; preds = %for.inc18.for.body_crit_edge, %entry.for.body_crit_edge
  %i.098 = phi i32 [ %inc, %for.inc18.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %clhash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clhash, align 16
  %arrayidx = getelementptr %struct.hlist_head, ptr %3, i32 %i.098
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -4
  %tobool4.not95104 = icmp eq ptr %add.ptr, null
  %tobool4.not95 = or i1 %tobool.not, %tobool4.not95104
  br i1 %tobool4.not95, label %for.body.for.inc18_crit_edge, label %for.body.for.body5_crit_edge

for.body.for.body5_crit_edge:                     ; preds = %for.body
  br label %for.body5

for.body.for.inc18_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc18

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body.for.body5_crit_edge
  %cl.096 = phi ptr [ %add.ptr14, %for.body5.for.body5_crit_edge ], [ %add.ptr, %for.body.for.body5_crit_edge ]
  %block = getelementptr inbounds %struct.hfsc_class, ptr %cl.096, i32 0, i32 5
  %6 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %block, align 4
  tail call void @tcf_block_put(ptr noundef %7) #14
  %8 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %block, align 4
  %hnode = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.096, i32 0, i32 1
  %9 = ptrtoint ptr %hnode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hnode, align 4
  %tobool10.not = icmp eq ptr %10, null
  %add.ptr14 = getelementptr i8, ptr %10, i32 -4
  %tobool4.not107 = icmp eq ptr %add.ptr14, null
  %tobool4.not = or i1 %tobool10.not, %tobool4.not107
  br i1 %tobool4.not, label %for.body5.for.inc18_crit_edge, label %for.body5.for.body5_crit_edge

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body5

for.body5.for.inc18_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc18

for.inc18:                                        ; preds = %for.body5.for.inc18_crit_edge, %for.body.for.inc18_crit_edge
  %inc = add nuw i32 %i.098, 1
  %11 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hashsize, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %for.inc18.for.body_crit_edge, label %for.cond20.preheader

for.inc18.for.body_crit_edge:                     ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body24:                                       ; preds = %for.inc59.for.body24_crit_edge, %for.body24.lr.ph
  %i.1103 = phi i32 [ 0, %for.body24.lr.ph ], [ %inc60, %for.inc59.for.body24_crit_edge ]
  %13 = ptrtoint ptr %clhash to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clhash, align 16
  %arrayidx28 = getelementptr %struct.hlist_head, ptr %14, i32 %i.1103
  %15 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx28, align 4
  %tobool31.not = icmp eq ptr %16, null
  %add.ptr35 = getelementptr i8, ptr %16, i32 -4
  %tobool40.not100105 = icmp eq ptr %add.ptr35, null
  %tobool40.not100 = or i1 %tobool31.not, %tobool40.not100105
  br i1 %tobool40.not100, label %for.body24.for.inc59_crit_edge, label %for.body24.land.rhs_crit_edge

for.body24.land.rhs_crit_edge:                    ; preds = %for.body24
  br label %land.rhs

for.body24.for.inc59_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc59

land.rhs:                                         ; preds = %hfsc_destroy_class.exit.land.rhs_crit_edge, %for.body24.land.rhs_crit_edge
  %cl.1101 = phi ptr [ %add.ptr54, %hfsc_destroy_class.exit.land.rhs_crit_edge ], [ %add.ptr35, %for.body24.land.rhs_crit_edge ]
  %hnode42 = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.1101, i32 0, i32 1
  %17 = ptrtoint ptr %hnode42 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hnode42, align 4
  %block.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.1101, i32 0, i32 5
  %19 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %block.i, align 4
  tail call void @tcf_block_put(ptr noundef %20) #14
  %qdisc.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.1101, i32 0, i32 12
  %21 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %qdisc.i, align 16
  tail call void @qdisc_put(ptr noundef %22) #14
  %rate_est.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.1101, i32 0, i32 3
  tail call void @gen_kill_estimator(ptr noundef %rate_est.i) #14
  %cmp.not.i = icmp eq ptr %root.i, %cl.1101
  br i1 %cmp.not.i, label %land.rhs.hfsc_destroy_class.exit_crit_edge, label %if.then.i

land.rhs.hfsc_destroy_class.exit_crit_edge:       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %hfsc_destroy_class.exit

if.then.i:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %cl.1101) #14
  br label %hfsc_destroy_class.exit

hfsc_destroy_class.exit:                          ; preds = %if.then.i, %land.rhs.hfsc_destroy_class.exit_crit_edge
  %tobool50.not = icmp eq ptr %18, null
  %add.ptr54 = getelementptr i8, ptr %18, i32 -4
  %tobool40.not108 = icmp eq ptr %add.ptr54, null
  %tobool40.not = or i1 %tobool50.not, %tobool40.not108
  br i1 %tobool40.not, label %hfsc_destroy_class.exit.for.inc59_crit_edge, label %hfsc_destroy_class.exit.land.rhs_crit_edge

hfsc_destroy_class.exit.land.rhs_crit_edge:       ; preds = %hfsc_destroy_class.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

hfsc_destroy_class.exit.for.inc59_crit_edge:      ; preds = %hfsc_destroy_class.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc59

for.inc59:                                        ; preds = %hfsc_destroy_class.exit.for.inc59_crit_edge, %for.body24.for.inc59_crit_edge
  %inc60 = add nuw i32 %i.1103, 1
  %23 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hashsize, align 4
  %cmp23 = icmp ult i32 %inc60, %24
  br i1 %cmp23, label %for.inc59.for.body24_crit_edge, label %for.inc59.for.end61_crit_edge

for.inc59.for.end61_crit_edge:                    ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end61

for.inc59.for.body24_crit_edge:                   ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body24

for.end61:                                        ; preds = %for.inc59.for.end61_crit_edge, %for.cond20.preheader.for.end61_crit_edge, %entry.for.end61_crit_edge
  tail call void @qdisc_class_hash_destroy(ptr noundef %clhash) #14
  %watchdog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 3, i32 0, i32 0, i32 4, i32 1
  tail call void @qdisc_watchdog_cancel(ptr noundef %watchdog) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsc_change_qdisc(ptr noundef %sch, ptr noundef readonly %opt, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %cmp = icmp eq ptr %opt, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %opt, align 2
  %2 = and i16 %1, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %2)
  %cmp2 = icmp eq i16 %2, 4
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr.i = getelementptr i8, ptr %opt, i32 4
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end.sch_tree_lock.exit_crit_edge

if.end.sch_tree_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
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
  %call1.i.i = tail call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i.sch_tree_lock.exit_crit_edge

if.else.i.sch_tree_lock.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !45

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #14
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i.sch_tree_lock.exit_crit_edge, %if.end.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %if.end.sch_tree_lock.exit_crit_edge ], [ %8, %if.else.i.sch_tree_lock.exit_crit_edge ], [ %8, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %8, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #14
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i, align 2
  %11 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %privdata.i, align 16
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 8
  %and.i11 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11)
  %tobool.not.i12 = icmp eq i32 %and.i11, 0
  br i1 %tobool.not.i12, label %if.else.i17, label %sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge

sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge: ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sch_tree_unlock.exit

if.else.i17:                                      ; preds = %sch_tree_lock.exit
  %dev_queue.i.i.i13 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %14 = ptrtoint ptr %dev_queue.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_queue.i.i.i13, align 8
  %qdisc_sleeping.i.i.i14 = getelementptr inbounds %struct.netdev_queue, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %qdisc_sleeping.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qdisc_sleeping.i.i.i14, align 4
  %call1.i.i15 = tail call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i15)
  %tobool.not.i.i16 = icmp eq i32 %call1.i.i15, 0
  br i1 %tobool.not.i.i16, label %land.rhs.i.i19, label %if.else.i17.sch_tree_unlock.exit_crit_edge

if.else.i17.sch_tree_unlock.exit_crit_edge:       ; preds = %if.else.i17
  call void @__sanitizer_cov_trace_pc() #16
  br label %sch_tree_unlock.exit

land.rhs.i.i19:                                   ; preds = %if.else.i17
  %.b41.i.i18 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i18, label %land.rhs.i.i19.sch_tree_unlock.exit_crit_edge, label %if.then.i.i20, !prof !45

land.rhs.i.i19.sch_tree_unlock.exit_crit_edge:    ; preds = %land.rhs.i.i19
  call void @__sanitizer_cov_trace_pc() #16
  br label %sch_tree_unlock.exit

if.then.i.i20:                                    ; preds = %land.rhs.i.i19
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #14
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i20, %land.rhs.i.i19.sch_tree_unlock.exit_crit_edge, %if.else.i17.sch_tree_unlock.exit_crit_edge, %sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge
  %.sink.i21 = phi ptr [ %sch, %sch_tree_lock.exit.sch_tree_unlock.exit_crit_edge ], [ %17, %if.else.i17.sch_tree_unlock.exit_crit_edge ], [ %17, %land.rhs.i.i19.sch_tree_unlock.exit_crit_edge ], [ %17, %if.then.i.i20 ]
  %lock.i.i.i22 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i21, i32 0, i32 17, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i22) #14
  br label %cleanup

cleanup:                                          ; preds = %sch_tree_unlock.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sch_tree_unlock.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsc_dump_qdisc(ptr nocapture noundef readonly %sch, ptr noundef %skb) #2 align 64 {
entry:
  %qopt = alloca %struct.tc_hfsc_qopt, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %qopt) #14
  %2 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %privdata.i, align 16
  %4 = ptrtoint ptr %qopt to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %qopt, align 2
  %call3 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %qopt) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %nla_put_failure

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  br label %cleanup

nla_put_failure:                                  ; preds = %entry
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %nla_put_failure.cleanup_crit_edge, label %if.then.i

nla_put_failure.cleanup_crit_edge:                ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %8, %1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !48

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %nla_put_failure.cleanup_crit_edge, %if.end
  %retval.0 = phi i32 [ %6, %if.end ], [ -1, %nla_put_failure.cleanup_crit_edge ], [ -1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %qopt) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsc_graft_class(ptr noundef %sch, i32 noundef %arg, ptr noundef %new, ptr nocapture noundef writeonly %old, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %qstats.i.i.i = alloca %struct.gnet_stats_queue, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %level = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq ptr %new, null
  br i1 %cmp1, label %if.then2, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %3 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_queue, align 8
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %0, align 16
  %call = tail call ptr @qdisc_create_dflt(ptr noundef %4, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %6, ptr noundef null) #14
  %cmp3 = icmp eq ptr %call, null
  %spec.store.select = select i1 %cmp3, ptr @noop_qdisc, ptr %call
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %new.addr.0 = phi ptr [ %spec.store.select, %if.then2 ], [ %new, %if.end.if.end6_crit_edge ]
  %qdisc = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 12
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end6.sch_tree_lock.exit.i_crit_edge

if.end6.sch_tree_lock.exit.i_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %sch_tree_lock.exit.i

if.else.i.i:                                      ; preds = %if.end6
  %dev_queue.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %9 = ptrtoint ptr %dev_queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_queue.i.i.i.i, align 8
  %qdisc_sleeping.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %qdisc_sleeping.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qdisc_sleeping.i.i.i.i, align 4
  %call1.i.i.i = tail call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %if.else.i.i.sch_tree_lock.exit.i_crit_edge

if.else.i.i.sch_tree_lock.exit.i_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sch_tree_lock.exit.i

land.rhs.i.i.i:                                   ; preds = %if.else.i.i
  %.b41.i.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i.i, label %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, label %if.then.i.i.i, !prof !45

land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sch_tree_lock.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #14
  br label %sch_tree_lock.exit.i

sch_tree_lock.exit.i:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, %if.else.i.i.sch_tree_lock.exit.i_crit_edge, %if.end6.sch_tree_lock.exit.i_crit_edge
  %.sink.i.i = phi ptr [ %sch, %if.end6.sch_tree_lock.exit.i_crit_edge ], [ %12, %if.else.i.i.sch_tree_lock.exit.i_crit_edge ], [ %12, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge ], [ %12, %if.then.i.i.i ]
  %lock.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i.i) #14
  %13 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %qdisc, align 4
  store ptr %new.addr.0, ptr %qdisc, align 4
  %cmp.not.i = icmp eq ptr %14, null
  br i1 %cmp.not.i, label %sch_tree_lock.exit.i.if.end.i_crit_edge, label %if.then.i

sch_tree_lock.exit.i.if.end.i_crit_edge:          ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i.i) #14
  %15 = call ptr @memset(ptr %qstats.i.i.i, i32 0, i32 20)
  %cpu_qstats.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %14, i32 0, i32 12
  %16 = ptrtoint ptr %cpu_qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cpu_qstats.i.i.i, align 4
  %qstats1.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %14, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i.i, ptr noundef %17, ptr noundef %qstats1.i.i.i) #14
  %18 = ptrtoint ptr %qstats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qstats.i.i.i, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %14, i32 0, i32 17, i32 2
  %20 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen.i.i.i.i, align 8
  %add.i.i.i = add i32 %21, %19
  %backlog3.i.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %backlog3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %backlog3.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i.i) #14
  call void @qdisc_reset(ptr noundef nonnull %14) #14
  call void @qdisc_tree_reduce_backlog(ptr noundef nonnull %14, i32 noundef %add.i.i.i, i32 noundef %23) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sch_tree_lock.exit.i.if.end.i_crit_edge
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i.i, align 8
  %and.i6.i = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.i)
  %tobool.not.i7.i = icmp eq i32 %and.i6.i, 0
  br i1 %tobool.not.i7.i, label %if.else.i12.i, label %if.end.i.qdisc_replace.exit_crit_edge

if.end.i.qdisc_replace.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qdisc_replace.exit

if.else.i12.i:                                    ; preds = %if.end.i
  %dev_queue.i.i.i8.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %26 = ptrtoint ptr %dev_queue.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_queue.i.i.i8.i, align 8
  %qdisc_sleeping.i.i.i9.i = getelementptr inbounds %struct.netdev_queue, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %qdisc_sleeping.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %qdisc_sleeping.i.i.i9.i, align 4
  %call1.i.i10.i = call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i10.i)
  %tobool.not.i.i11.i = icmp eq i32 %call1.i.i10.i, 0
  br i1 %tobool.not.i.i11.i, label %land.rhs.i.i14.i, label %if.else.i12.i.qdisc_replace.exit_crit_edge

if.else.i12.i.qdisc_replace.exit_crit_edge:       ; preds = %if.else.i12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qdisc_replace.exit

land.rhs.i.i14.i:                                 ; preds = %if.else.i12.i
  %.b41.i.i13.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i13.i, label %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, label %if.then.i.i15.i, !prof !45

land.rhs.i.i14.i.qdisc_replace.exit_crit_edge:    ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qdisc_replace.exit

if.then.i.i15.i:                                  ; preds = %land.rhs.i.i14.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #14
  br label %qdisc_replace.exit

qdisc_replace.exit:                               ; preds = %if.then.i.i15.i, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge, %if.else.i12.i.qdisc_replace.exit_crit_edge, %if.end.i.qdisc_replace.exit_crit_edge
  %.sink.i16.i = phi ptr [ %sch, %if.end.i.qdisc_replace.exit_crit_edge ], [ %29, %if.else.i12.i.qdisc_replace.exit_crit_edge ], [ %29, %land.rhs.i.i14.i.qdisc_replace.exit_crit_edge ], [ %29, %if.then.i.i15.i ]
  %lock.i.i.i17.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i16.i, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i17.i) #14
  %30 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %14, ptr %old, align 4
  br label %cleanup

cleanup:                                          ; preds = %qdisc_replace.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %qdisc_replace.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @hfsc_class_leaf(ptr nocapture noundef readnone %sch, i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %level = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %qdisc = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 12
  %3 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %qdisc, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %if.then ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfsc_qlen_notify(ptr nocapture noundef readnone %sch, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  tail call fastcc void @update_vf(ptr noundef %0, i32 noundef 0)
  %cl_flags = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 36
  %1 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cl_flags, align 8
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %el_node.i = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 13
  %sched.i = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 8
  %4 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sched.i, align 8
  %eligible.i = getelementptr inbounds %struct.hfsc_sched, ptr %5, i32 0, i32 4
  tail call void @rb_erase(ptr noundef %el_node.i, ptr noundef %eligible.i) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsc_search_class(ptr nocapture noundef readonly %sch, i32 noundef %classid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %classid)
  %tobool.not.i.i = icmp eq i32 %classid, 0
  br i1 %tobool.not.i.i, label %entry.hfsc_find_class.exit_crit_edge, label %if.end.i.i

entry.hfsc_find_class.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %hfsc_find_class.exit

if.end.i.i:                                       ; preds = %entry
  %clhash.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 2
  %hashmask.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 3, i32 0, i32 0, i32 1
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
  br i1 %tobool4.not30.i.i, label %if.end.i.i.hfsc_find_class.exit_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.hfsc_find_class.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hfsc_find_class.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %cl.031.i.i = phi ptr [ %add.ptr13.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %cl.031.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cl.031.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %classid)
  %cmp.i.i = icmp eq i32 %7, %classid
  br i1 %cmp.i.i, label %for.body.i.i.hfsc_find_class.exit_crit_edge, label %for.inc.i.i

for.body.i.i.hfsc_find_class.exit_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hfsc_find_class.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %hnode.i.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %hnode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hnode.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %9, null
  %add.ptr13.i.i = getelementptr i8, ptr %9, i32 -4
  %tobool4.not34.i.i = icmp eq ptr %add.ptr13.i.i, null
  %tobool4.not.i.i = or i1 %tobool9.not.i.i, %tobool4.not34.i.i
  br i1 %tobool4.not.i.i, label %for.inc.i.i.hfsc_find_class.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.hfsc_find_class.exit_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hfsc_find_class.exit

hfsc_find_class.exit:                             ; preds = %for.inc.i.i.hfsc_find_class.exit_crit_edge, %for.body.i.i.hfsc_find_class.exit_crit_edge, %if.end.i.i.hfsc_find_class.exit_crit_edge, %entry.hfsc_find_class.exit_crit_edge
  %retval.0.i.i = phi ptr [ null, %entry.hfsc_find_class.exit_crit_edge ], [ null, %if.end.i.i.hfsc_find_class.exit_crit_edge ], [ %cl.031.i.i, %for.body.i.i.hfsc_find_class.exit_crit_edge ], [ null, %for.inc.i.i.hfsc_find_class.exit_crit_edge ]
  %10 = ptrtoint ptr %retval.0.i.i to i32
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsc_change_class(ptr noundef %sch, i32 noundef %classid, i32 noundef %parentid, ptr nocapture noundef readonly %tca, ptr nocapture noundef %arg, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 4
  %2 = inttoptr i32 %1 to ptr
  %arrayidx = getelementptr ptr, ptr %tca, i32 2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tb) #14
  %5 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 1
  %6 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 2
  %7 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 3
  %cmp = icmp eq ptr %4, null
  %8 = call ptr @memset(ptr %tb, i32 255, i32 16)
  br i1 %cmp, label %entry.cleanup194_crit_edge, label %if.end

entry.cleanup194_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup194

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %4, align 2
  %conv.i.i = zext i16 %10 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 3, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @hfsc_policy, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp2 = icmp slt i32 %call2.i, 0
  br i1 %cmp2, label %if.end.cleanup194_crit_edge, label %if.end4

if.end.cleanup194_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup194

if.end4:                                          ; preds = %if.end
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.end4.if.end13_crit_edge, label %if.then6

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then6:                                         ; preds = %if.end4
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp9 = icmp eq i32 %14, 0
  br i1 %cmp9, label %land.lhs.true, label %if.then6.if.end13_crit_edge

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

land.lhs.true:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %m2 = getelementptr i8, ptr %12, i32 12
  %15 = ptrtoint ptr %m2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %m2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp10 = icmp eq i32 %16, 0
  %spec.store.select = select i1 %cmp10, ptr null, ptr %add.ptr.i
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %if.then6.if.end13_crit_edge, %if.end4.if.end13_crit_edge
  %rsc.0 = phi ptr [ %spec.store.select, %land.lhs.true ], [ %add.ptr.i, %if.then6.if.end13_crit_edge ], [ null, %if.end4.if.end13_crit_edge ]
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %6, align 4
  %tobool15.not = icmp eq ptr %18, null
  br i1 %tobool15.not, label %if.end13.if.end26_crit_edge, label %if.then16

if.end13.if.end26_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then16:                                        ; preds = %if.end13
  %add.ptr.i317 = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %add.ptr.i317 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i317, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp20 = icmp eq i32 %20, 0
  br i1 %cmp20, label %land.lhs.true21, label %if.then16.if.end26_crit_edge

if.then16.if.end26_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

land.lhs.true21:                                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  %m222 = getelementptr i8, ptr %18, i32 12
  %21 = ptrtoint ptr %m222 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %m222, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp23 = icmp eq i32 %22, 0
  %spec.store.select204 = select i1 %cmp23, ptr null, ptr %add.ptr.i317
  br label %if.end26

if.end26:                                         ; preds = %land.lhs.true21, %if.then16.if.end26_crit_edge, %if.end13.if.end26_crit_edge
  %fsc.0 = phi ptr [ %spec.store.select204, %land.lhs.true21 ], [ %add.ptr.i317, %if.then16.if.end26_crit_edge ], [ null, %if.end13.if.end26_crit_edge ]
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %7, align 4
  %tobool28.not = icmp eq ptr %24, null
  br i1 %tobool28.not, label %if.end26.if.end39_crit_edge, label %if.then29

if.end26.if.end39_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then29:                                        ; preds = %if.end26
  %add.ptr.i318 = getelementptr i8, ptr %24, i32 4
  %25 = ptrtoint ptr %add.ptr.i318 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i318, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp33 = icmp eq i32 %26, 0
  br i1 %cmp33, label %land.lhs.true34, label %if.then29.if.end39_crit_edge

if.then29.if.end39_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

land.lhs.true34:                                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  %m235 = getelementptr i8, ptr %24, i32 12
  %27 = ptrtoint ptr %m235 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %m235, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp36 = icmp eq i32 %28, 0
  %spec.store.select205 = select i1 %cmp36, ptr null, ptr %add.ptr.i318
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true34, %if.then29.if.end39_crit_edge, %if.end26.if.end39_crit_edge
  %usc.0 = phi ptr [ %spec.store.select205, %land.lhs.true34 ], [ %add.ptr.i318, %if.then29.if.end39_crit_edge ], [ null, %if.end26.if.end39_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp40.not = icmp eq i32 %1, 0
  br i1 %cmp40.not, label %if.end107, label %if.then41

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parentid)
  %tobool42.not = icmp eq i32 %parentid, 0
  br i1 %tobool42.not, label %if.then41.if.end57_crit_edge, label %if.then43

if.then41.if.end57_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

if.then43:                                        ; preds = %if.then41
  %cl_parent = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 9
  %29 = ptrtoint ptr %cl_parent to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cl_parent, align 4
  %tobool44.not = icmp eq ptr %30, null
  br i1 %tobool44.not, label %if.end50, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %if.then43
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %parentid)
  %cmp48.not = icmp eq i32 %32, %parentid
  br i1 %cmp48.not, label %land.lhs.true45.if.end57_crit_edge, label %land.lhs.true45.cleanup194_crit_edge

land.lhs.true45.cleanup194_crit_edge:             ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup194

land.lhs.true45.if.end57_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

if.end50:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %parentid)
  %cmp54.not = icmp eq i32 %parentid, -1
  br i1 %cmp54.not, label %if.end50.if.end57_crit_edge, label %if.end50.cleanup194_crit_edge

if.end50.cleanup194_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup194

if.end50.if.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

if.end57:                                         ; preds = %if.end50.if.end57_crit_edge, %land.lhs.true45.if.end57_crit_edge, %if.then41.if.end57_crit_edge
  %call.i.i = call i64 @ktime_get() #14
  %shr.i = lshr i64 %call.i.i, 6
  %arrayidx59 = getelementptr ptr, ptr %tca, i32 5
  %33 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx59, align 4
  %tobool60.not = icmp eq ptr %34, null
  br i1 %tobool60.not, label %if.end57.if.end67_crit_edge, label %if.then61

if.end57.if.end67_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.then61:                                        ; preds = %if.end57
  %bstats = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 1
  %rate_est = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 3
  %call63 = call i32 @gen_replace_estimator(ptr noundef %bstats, ptr noundef null, ptr noundef %rate_est, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull %34) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then61.if.end67_crit_edge, label %if.then61.cleanup194_crit_edge

if.then61.cleanup194_crit_edge:                   ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup194

if.then61.if.end67_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.end67:                                         ; preds = %if.then61.if.end67_crit_edge, %if.end57.if.end67_crit_edge
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end67.sch_tree_lock.exit_crit_edge

if.end67.sch_tree_lock.exit_crit_edge:            ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %sch_tree_lock.exit

if.else.i:                                        ; preds = %if.end67
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %37 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i.sch_tree_lock.exit_crit_edge

if.else.i.sch_tree_lock.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !45

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #14
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i.sch_tree_lock.exit_crit_edge, %if.end67.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %if.end67.sch_tree_lock.exit_crit_edge ], [ %40, %if.else.i.sch_tree_lock.exit_crit_edge ], [ %40, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %40, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #14
  %cl_flags = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 36
  %41 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %cl_flags, align 8
  %conv = zext i8 %42 to i32
  %cmp68.not = icmp eq ptr %rsc.0, null
  br i1 %cmp68.not, label %sch_tree_lock.exit.if.end71_crit_edge, label %if.then70

sch_tree_lock.exit.if.end71_crit_edge:            ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.then70:                                        ; preds = %sch_tree_lock.exit
  %cl_rsc.i = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 29
  call fastcc void @sc2isc(ptr noundef nonnull %rsc.0, ptr noundef %cl_rsc.i) #14
  %cl_deadline.i = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 32
  %cl_cumul.i = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 19
  %43 = ptrtoint ptr %cl_cumul.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %cl_cumul.i, align 8
  %45 = ptrtoint ptr %cl_deadline.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %shr.i, ptr %cl_deadline.i, align 8
  %y2.i.i = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 32, i32 1
  %46 = ptrtoint ptr %y2.i.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %44, ptr %y2.i.i, align 8
  %47 = ptrtoint ptr %cl_rsc.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %cl_rsc.i, align 8
  %sm13.i.i = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 32, i32 2
  %49 = ptrtoint ptr %sm13.i.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %sm13.i.i, align 8
  %ism1.i.i = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 29, i32 1
  %50 = ptrtoint ptr %ism1.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %ism1.i.i, align 8
  %ism14.i.i = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 32, i32 3
  %52 = ptrtoint ptr %ism14.i.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %ism14.i.i, align 8
  %dx.i.i = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 29, i32 2
  %53 = ptrtoint ptr %dx.i.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %dx.i.i, align 8
  %dx5.i.i = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 32, i32 4
  %55 = ptrtoint ptr %dx5.i.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %dx5.i.i, align 8
  %dy.i.i = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 29, i32 3
  %56 = ptrtoint ptr %dy.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %dy.i.i, align 8
  %dy6.i.i = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 32, i32 5
  %58 = ptrtoint ptr %dy6.i.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %dy6.i.i, align 8
  %sm2.i.i = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 29, i32 4
  %59 = ptrtoint ptr %sm2.i.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %sm2.i.i, align 8
  %sm27.i.i = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 32, i32 6
  %61 = ptrtoint ptr %sm27.i.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %sm27.i.i, align 8
  %ism2.i.i = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 29, i32 5
  %62 = ptrtoint ptr %ism2.i.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ism2.i.i, align 8
  %ism28.i.i = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 32, i32 7
  %64 = ptrtoint ptr %ism28.i.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %ism28.i.i, align 8
  %cl_eligible.i = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 33
  %65 = call ptr @memcpy(ptr %cl_eligible.i, ptr %cl_deadline.i, i32 64)
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %60)
  %cmp.not.i = icmp ugt i64 %48, %60
  br i1 %cmp.not.i, label %if.then70.hfsc_change_rsc.exit_crit_edge, label %if.then.i

if.then70.hfsc_change_rsc.exit_crit_edge:         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #16
  br label %hfsc_change_rsc.exit

if.then.i:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #16
  %dx.i = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 33, i32 4
  %66 = call ptr @memset(ptr %dx.i, i32 0, i32 16)
  br label %hfsc_change_rsc.exit

hfsc_change_rsc.exit:                             ; preds = %if.then.i, %if.then70.hfsc_change_rsc.exit_crit_edge
  %67 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %cl_flags, align 8
  %69 = or i8 %68, 1
  store i8 %69, ptr %cl_flags, align 8
  br label %if.end71

if.end71:                                         ; preds = %hfsc_change_rsc.exit, %sch_tree_lock.exit.if.end71_crit_edge
  %cmp72.not = icmp eq ptr %fsc.0, null
  br i1 %cmp72.not, label %if.end71.if.end75_crit_edge, label %if.then74

if.end71.if.end75_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  %cl_fsc.i = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 30
  call fastcc void @sc2isc(ptr noundef nonnull %fsc.0, ptr noundef %cl_fsc.i) #14
  %cl_virtual.i = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 34
  %cl_vt.i = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 22
  %70 = ptrtoint ptr %cl_vt.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %cl_vt.i, align 16
  %cl_total.i = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 18
  %72 = ptrtoint ptr %cl_total.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %cl_total.i, align 16
  %74 = ptrtoint ptr %cl_virtual.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %71, ptr %cl_virtual.i, align 8
  %y2.i.i319 = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 34, i32 1
  %75 = ptrtoint ptr %y2.i.i319 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %73, ptr %y2.i.i319, align 8
  %76 = ptrtoint ptr %cl_fsc.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %cl_fsc.i, align 8
  %sm13.i.i320 = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 34, i32 2
  %78 = ptrtoint ptr %sm13.i.i320 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %sm13.i.i320, align 8
  %ism1.i.i321 = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 30, i32 1
  %79 = ptrtoint ptr %ism1.i.i321 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %ism1.i.i321, align 8
  %ism14.i.i322 = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 34, i32 3
  %81 = ptrtoint ptr %ism14.i.i322 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %ism14.i.i322, align 8
  %dx.i.i323 = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 30, i32 2
  %82 = ptrtoint ptr %dx.i.i323 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %dx.i.i323, align 8
  %dx5.i.i324 = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 34, i32 4
  %84 = ptrtoint ptr %dx5.i.i324 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %83, ptr %dx5.i.i324, align 8
  %dy.i.i325 = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 30, i32 3
  %85 = ptrtoint ptr %dy.i.i325 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %dy.i.i325, align 8
  %dy6.i.i326 = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 34, i32 5
  %87 = ptrtoint ptr %dy6.i.i326 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %86, ptr %dy6.i.i326, align 8
  %sm2.i.i327 = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 30, i32 4
  %88 = ptrtoint ptr %sm2.i.i327 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %sm2.i.i327, align 8
  %sm27.i.i328 = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 34, i32 6
  %90 = ptrtoint ptr %sm27.i.i328 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %89, ptr %sm27.i.i328, align 8
  %ism2.i.i329 = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 30, i32 5
  %91 = ptrtoint ptr %ism2.i.i329 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %ism2.i.i329, align 8
  %ism28.i.i330 = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 34, i32 7
  %93 = ptrtoint ptr %ism28.i.i330 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %92, ptr %ism28.i.i330, align 8
  %94 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %cl_flags, align 8
  %96 = or i8 %95, 2
  store i8 %96, ptr %cl_flags, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end71.if.end75_crit_edge
  %cmp76.not = icmp eq ptr %usc.0, null
  br i1 %cmp76.not, label %if.end75.if.end79_crit_edge, label %if.then78

if.end75.if.end79_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

if.then78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  %cl_usc.i = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 31
  call fastcc void @sc2isc(ptr noundef nonnull %usc.0, ptr noundef %cl_usc.i) #14
  %cl_ulimit.i = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 35
  %cl_total.i332 = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 18
  %97 = ptrtoint ptr %cl_total.i332 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %cl_total.i332, align 16
  %99 = ptrtoint ptr %cl_ulimit.i to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %shr.i, ptr %cl_ulimit.i, align 8
  %y2.i.i333 = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 35, i32 1
  %100 = ptrtoint ptr %y2.i.i333 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %98, ptr %y2.i.i333, align 8
  %101 = ptrtoint ptr %cl_usc.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %cl_usc.i, align 8
  %sm13.i.i334 = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 35, i32 2
  %103 = ptrtoint ptr %sm13.i.i334 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %102, ptr %sm13.i.i334, align 8
  %ism1.i.i335 = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 31, i32 1
  %104 = ptrtoint ptr %ism1.i.i335 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %ism1.i.i335, align 8
  %ism14.i.i336 = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 35, i32 3
  %106 = ptrtoint ptr %ism14.i.i336 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %105, ptr %ism14.i.i336, align 8
  %dx.i.i337 = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 31, i32 2
  %107 = ptrtoint ptr %dx.i.i337 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %dx.i.i337, align 8
  %dx5.i.i338 = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 35, i32 4
  %109 = ptrtoint ptr %dx5.i.i338 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %108, ptr %dx5.i.i338, align 8
  %dy.i.i339 = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 31, i32 3
  %110 = ptrtoint ptr %dy.i.i339 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %dy.i.i339, align 8
  %dy6.i.i340 = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 35, i32 5
  %112 = ptrtoint ptr %dy6.i.i340 to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %111, ptr %dy6.i.i340, align 8
  %sm2.i.i341 = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 31, i32 4
  %113 = ptrtoint ptr %sm2.i.i341 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %sm2.i.i341, align 8
  %sm27.i.i342 = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 35, i32 6
  %115 = ptrtoint ptr %sm27.i.i342 to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %114, ptr %sm27.i.i342, align 8
  %ism2.i.i343 = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 31, i32 5
  %116 = ptrtoint ptr %ism2.i.i343 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %ism2.i.i343, align 8
  %ism28.i.i344 = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 35, i32 7
  %118 = ptrtoint ptr %ism28.i.i344 to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %117, ptr %ism28.i.i344, align 8
  %119 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %cl_flags, align 8
  %121 = or i8 %120, 4
  store i8 %121, ptr %cl_flags, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end75.if.end79_crit_edge
  %qdisc = getelementptr inbounds %struct.hfsc_class, ptr %2, i32 0, i32 12
  %122 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %qdisc, align 16
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %123, i32 0, i32 17, i32 2
  %124 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp81.not = icmp eq i32 %125, 0
  br i1 %cmp81.not, label %if.end79.if.end106_crit_edge, label %if.then83

if.end79.if.end106_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end106

if.then83:                                        ; preds = %if.end79
  %ops.i = getelementptr inbounds %struct.Qdisc, ptr %123, i32 0, i32 4
  %126 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ops.i, align 16
  %peek.i = getelementptr inbounds %struct.Qdisc_ops, ptr %127, i32 0, i32 7
  %128 = ptrtoint ptr %peek.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %peek.i, align 4
  %call.i = call ptr %129(ptr noundef %123) #14
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then.i346, label %if.end.i, !prof !48

if.then.i346:                                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  call void @qdisc_warn_nonwc(ptr noundef nonnull @.str.2, ptr noundef %123) #14
  br label %qdisc_peek_len.exit

if.end.i:                                         ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %130 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %cb.i.i.i, align 4
  br label %qdisc_peek_len.exit

qdisc_peek_len.exit:                              ; preds = %if.end.i, %if.then.i346
  %retval.0.i = phi i32 [ 0, %if.then.i346 ], [ %131, %if.end.i ]
  %132 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %cl_flags, align 8
  %134 = and i8 %133, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool88.not = icmp eq i8 %134, 0
  br i1 %tobool88.not, label %qdisc_peek_len.exit.if.end94_crit_edge, label %if.then89

qdisc_peek_len.exit.if.end94_crit_edge:           ; preds = %qdisc_peek_len.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end94

if.then89:                                        ; preds = %qdisc_peek_len.exit
  %and90 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.else, label %if.then92

if.then92:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @update_ed(ptr noundef nonnull %2, i32 noundef %retval.0.i)
  br label %if.end94

if.else:                                          ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @init_ed(ptr noundef nonnull %2, i32 noundef %retval.0.i)
  br label %if.end94

if.end94:                                         ; preds = %if.else, %if.then92, %qdisc_peek_len.exit.if.end94_crit_edge
  %135 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %cl_flags, align 8
  %137 = and i8 %136, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool98.not = icmp eq i8 %137, 0
  br i1 %tobool98.not, label %if.end94.if.end106_crit_edge, label %if.then99

if.end94.if.end106_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end106

if.then99:                                        ; preds = %if.end94
  %and100 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.else103, label %if.then102

if.then102:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @update_vf(ptr noundef nonnull %2, i32 noundef 0)
  br label %if.end106

if.else103:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @init_vf(ptr noundef nonnull %2)
  br label %if.end106

if.end106:                                        ; preds = %if.else103, %if.then102, %if.end94.if.end106_crit_edge, %if.end79.if.end106_crit_edge
  %138 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %flags.i, align 8
  %and.i348 = and i32 %139, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i348)
  %tobool.not.i349 = icmp eq i32 %and.i348, 0
  br i1 %tobool.not.i349, label %if.else.i354, label %if.end106.sch_tree_unlock.exit_crit_edge

if.end106.sch_tree_unlock.exit_crit_edge:         ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #16
  br label %sch_tree_unlock.exit

if.else.i354:                                     ; preds = %if.end106
  %dev_queue.i.i.i350 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %140 = ptrtoint ptr %dev_queue.i.i.i350 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev_queue.i.i.i350, align 8
  %qdisc_sleeping.i.i.i351 = getelementptr inbounds %struct.netdev_queue, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %qdisc_sleeping.i.i.i351 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %qdisc_sleeping.i.i.i351, align 4
  %call1.i.i352 = call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i352)
  %tobool.not.i.i353 = icmp eq i32 %call1.i.i352, 0
  br i1 %tobool.not.i.i353, label %land.rhs.i.i356, label %if.else.i354.sch_tree_unlock.exit_crit_edge

if.else.i354.sch_tree_unlock.exit_crit_edge:      ; preds = %if.else.i354
  call void @__sanitizer_cov_trace_pc() #16
  br label %sch_tree_unlock.exit

land.rhs.i.i356:                                  ; preds = %if.else.i354
  %.b41.i.i355 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i355, label %land.rhs.i.i356.sch_tree_unlock.exit_crit_edge, label %if.then.i.i357, !prof !45

land.rhs.i.i356.sch_tree_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i356
  call void @__sanitizer_cov_trace_pc() #16
  br label %sch_tree_unlock.exit

if.then.i.i357:                                   ; preds = %land.rhs.i.i356
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #14
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i357, %land.rhs.i.i356.sch_tree_unlock.exit_crit_edge, %if.else.i354.sch_tree_unlock.exit_crit_edge, %if.end106.sch_tree_unlock.exit_crit_edge
  %.sink.i358 = phi ptr [ %sch, %if.end106.sch_tree_unlock.exit_crit_edge ], [ %143, %if.else.i354.sch_tree_unlock.exit_crit_edge ], [ %143, %land.rhs.i.i356.sch_tree_unlock.exit_crit_edge ], [ %143, %if.then.i.i357 ]
  %lock.i.i.i359 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i358, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i359) #14
  br label %cleanup194

if.end107:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %parentid)
  %cmp108 = icmp eq i32 %parentid, -1
  br i1 %cmp108, label %if.end107.cleanup194_crit_edge, label %if.end111

if.end107.cleanup194_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup194

if.end111:                                        ; preds = %if.end107
  %root = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parentid)
  %tobool112.not = icmp eq i32 %parentid, 0
  br i1 %tobool112.not, label %if.end111.if.end119_crit_edge, label %if.end.i.i

if.end111.if.end119_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119

if.end.i.i:                                       ; preds = %if.end111
  %clhash.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 2
  %hashmask.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 3, i32 0, i32 0, i32 1
  %144 = ptrtoint ptr %hashmask.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %hashmask.i.i, align 4
  %shr.i.i.i = lshr i32 %parentid, 8
  %xor.i.i.i = xor i32 %shr.i.i.i, %parentid
  %shr1.i.i.i = lshr i32 %xor.i.i.i, 4
  %xor2.i.i.i = xor i32 %shr1.i.i.i, %xor.i.i.i
  %and.i.i.i = and i32 %145, %xor2.i.i.i
  %146 = ptrtoint ptr %clhash.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %clhash.i, align 4
  %arrayidx.i.i = getelementptr %struct.hlist_head, ptr %147, i32 %and.i.i.i
  %148 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %149, null
  %add.ptr.i.i362 = getelementptr i8, ptr %149, i32 -4
  %tobool4.not3033.i.i = icmp eq ptr %add.ptr.i.i362, null
  %tobool4.not30.i.i = or i1 %tobool2.not.i.i, %tobool4.not3033.i.i
  br i1 %tobool4.not30.i.i, label %if.end.i.i.cleanup194_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.cleanup194_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup194

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %cl.031.i.i = phi ptr [ %add.ptr13.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i362, %if.end.i.i.for.body.i.i_crit_edge ]
  %150 = ptrtoint ptr %cl.031.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %cl.031.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %parentid)
  %cmp.i.i = icmp eq i32 %151, %parentid
  br i1 %cmp.i.i, label %for.body.i.i.if.end119_crit_edge, label %for.inc.i.i

for.body.i.i.if.end119_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119

for.inc.i.i:                                      ; preds = %for.body.i.i
  %hnode.i.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i, i32 0, i32 1
  %152 = ptrtoint ptr %hnode.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hnode.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %153, null
  %add.ptr13.i.i = getelementptr i8, ptr %153, i32 -4
  %tobool4.not34.i.i = icmp eq ptr %add.ptr13.i.i, null
  %tobool4.not.i.i = or i1 %tobool9.not.i.i, %tobool4.not34.i.i
  br i1 %tobool4.not.i.i, label %for.inc.i.i.cleanup194_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.cleanup194_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup194

if.end119:                                        ; preds = %for.body.i.i.if.end119_crit_edge, %if.end111.if.end119_crit_edge
  %parent.0 = phi ptr [ %root, %if.end111.if.end119_crit_edge ], [ %cl.031.i.i, %for.body.i.i.if.end119_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %classid)
  %cmp120 = icmp eq i32 %classid, 0
  br i1 %cmp120, label %if.end119.cleanup194_crit_edge, label %lor.lhs.false

if.end119.cleanup194_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup194

lor.lhs.false:                                    ; preds = %if.end119
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %154 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %handle, align 32
  %xor = xor i32 %155, %classid
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %xor)
  %cmp123.not = icmp ult i32 %xor, 65536
  br i1 %cmp123.not, label %if.end.i.i376, label %lor.lhs.false.cleanup194_crit_edge

lor.lhs.false.cleanup194_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup194

if.end.i.i376:                                    ; preds = %lor.lhs.false
  %clhash.i364 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 2
  %hashmask.i.i365 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 3, i32 0, i32 0, i32 1
  %156 = ptrtoint ptr %hashmask.i.i365 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %hashmask.i.i365, align 4
  %shr.i.i.i366 = lshr i32 %classid, 8
  %xor.i.i.i367 = xor i32 %shr.i.i.i366, %classid
  %shr1.i.i.i368 = lshr i32 %xor.i.i.i367, 4
  %xor2.i.i.i369 = xor i32 %shr1.i.i.i368, %xor.i.i.i367
  %and.i.i.i370 = and i32 %157, %xor2.i.i.i369
  %158 = ptrtoint ptr %clhash.i364 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %clhash.i364, align 4
  %arrayidx.i.i371 = getelementptr %struct.hlist_head, ptr %159, i32 %and.i.i.i370
  %160 = ptrtoint ptr %arrayidx.i.i371 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx.i.i371, align 4
  %tobool2.not.i.i372 = icmp eq ptr %161, null
  %add.ptr.i.i373 = getelementptr i8, ptr %161, i32 -4
  %tobool4.not3033.i.i374 = icmp eq ptr %add.ptr.i.i373, null
  %tobool4.not30.i.i375 = or i1 %tobool2.not.i.i372, %tobool4.not3033.i.i374
  br i1 %tobool4.not30.i.i375, label %if.end.i.i376.if.end130_crit_edge, label %if.end.i.i376.for.body.i.i379_crit_edge

if.end.i.i376.for.body.i.i379_crit_edge:          ; preds = %if.end.i.i376
  br label %for.body.i.i379

if.end.i.i376.if.end130_crit_edge:                ; preds = %if.end.i.i376
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end130

for.body.i.i379:                                  ; preds = %for.inc.i.i385.for.body.i.i379_crit_edge, %if.end.i.i376.for.body.i.i379_crit_edge
  %cl.031.i.i377 = phi ptr [ %add.ptr13.i.i382, %for.inc.i.i385.for.body.i.i379_crit_edge ], [ %add.ptr.i.i373, %if.end.i.i376.for.body.i.i379_crit_edge ]
  %162 = ptrtoint ptr %cl.031.i.i377 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %cl.031.i.i377, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %classid)
  %cmp.i.i378 = icmp eq i32 %163, %classid
  br i1 %cmp.i.i378, label %for.body.i.i379.cleanup194_crit_edge, label %for.inc.i.i385

for.body.i.i379.cleanup194_crit_edge:             ; preds = %for.body.i.i379
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup194

for.inc.i.i385:                                   ; preds = %for.body.i.i379
  %hnode.i.i380 = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i377, i32 0, i32 1
  %164 = ptrtoint ptr %hnode.i.i380 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %hnode.i.i380, align 4
  %tobool9.not.i.i381 = icmp eq ptr %165, null
  %add.ptr13.i.i382 = getelementptr i8, ptr %165, i32 -4
  %tobool4.not34.i.i383 = icmp eq ptr %add.ptr13.i.i382, null
  %tobool4.not.i.i384 = or i1 %tobool9.not.i.i381, %tobool4.not34.i.i383
  br i1 %tobool4.not.i.i384, label %for.inc.i.i385.if.end130_crit_edge, label %for.inc.i.i385.for.body.i.i379_crit_edge

for.inc.i.i385.for.body.i.i379_crit_edge:         ; preds = %for.inc.i.i385
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i379

for.inc.i.i385.if.end130_crit_edge:               ; preds = %for.inc.i.i385
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end130

if.end130:                                        ; preds = %for.inc.i.i385.if.end130_crit_edge, %if.end.i.i376.if.end130_crit_edge
  %cmp131 = icmp eq ptr %rsc.0, null
  %cmp134 = icmp eq ptr %fsc.0, null
  %or.cond316 = select i1 %cmp131, i1 %cmp134, i1 false
  br i1 %or.cond316, label %if.end130.cleanup194_crit_edge, label %if.end137

if.end130.cleanup194_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup194

if.end137:                                        ; preds = %if.end130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %166 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %166, i32 noundef 3520, i32 noundef 688) #17
  %cmp139 = icmp eq ptr %call7.i.i, null
  br i1 %cmp139, label %if.end137.cleanup194_crit_edge, label %if.end142

if.end137.cleanup194_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup194

if.end142:                                        ; preds = %if.end137
  %block = getelementptr inbounds %struct.hfsc_class, ptr %call7.i.i, i32 0, i32 5
  %filter_list = getelementptr inbounds %struct.hfsc_class, ptr %call7.i.i, i32 0, i32 4
  %call143 = call i32 @tcf_block_get(ptr noundef %block, ptr noundef %filter_list, ptr noundef %sch, ptr noundef %extack) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end146, label %if.then145

if.then145:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup194

if.end146:                                        ; preds = %if.end142
  %arrayidx147 = getelementptr ptr, ptr %tca, i32 5
  %167 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx147, align 4
  %tobool148.not = icmp eq ptr %168, null
  br i1 %tobool148.not, label %if.end146.if.end158_crit_edge, label %if.then149

if.end146.if.end158_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end158

if.then149:                                       ; preds = %if.end146
  %bstats150 = getelementptr inbounds %struct.hfsc_class, ptr %call7.i.i, i32 0, i32 1
  %rate_est151 = getelementptr inbounds %struct.hfsc_class, ptr %call7.i.i, i32 0, i32 3
  %call153 = call i32 @gen_new_estimator(ptr noundef %bstats150, ptr noundef null, ptr noundef %rate_est151, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull %168) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.then149.if.end158_crit_edge, label %if.then155

if.then149.if.end158_crit_edge:                   ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end158

if.then155:                                       ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #16
  %169 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %block, align 4
  call void @tcf_block_put(ptr noundef %170) #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup194

if.end158:                                        ; preds = %if.then149.if.end158_crit_edge, %if.end146.if.end158_crit_edge
  br i1 %cmp131, label %if.end158.if.end162_crit_edge, label %if.then161

if.end158.if.end162_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end162

if.then161:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @hfsc_change_rsc(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %rsc.0, i64 noundef 0)
  br label %if.end162

if.end162:                                        ; preds = %if.then161, %if.end158.if.end162_crit_edge
  br i1 %cmp134, label %if.end162.if.end166_crit_edge, label %if.then165

if.end162.if.end166_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end166

if.then165:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @hfsc_change_fsc(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %fsc.0)
  br label %if.end166

if.end166:                                        ; preds = %if.then165, %if.end162.if.end166_crit_edge
  %cmp167.not = icmp eq ptr %usc.0, null
  br i1 %cmp167.not, label %if.end166.if.end170_crit_edge, label %if.then169

if.end166.if.end170_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end170

if.then169:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @hfsc_change_usc(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %usc.0, i64 noundef 0)
  br label %if.end170

if.end170:                                        ; preds = %if.then169, %if.end166.if.end170_crit_edge
  %171 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %classid, ptr %call7.i.i, align 16
  %sched = getelementptr inbounds %struct.hfsc_class, ptr %call7.i.i, i32 0, i32 8
  %172 = ptrtoint ptr %sched to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %privdata.i, ptr %sched, align 8
  %cl_parent173 = getelementptr inbounds %struct.hfsc_class, ptr %call7.i.i, i32 0, i32 9
  %173 = ptrtoint ptr %cl_parent173 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %parent.0, ptr %cl_parent173, align 4
  %dev_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %174 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dev_queue, align 8
  %call174 = call ptr @qdisc_create_dflt(ptr noundef %175, ptr noundef nonnull @pfifo_qdisc_ops, i32 noundef %classid, ptr noundef null) #14
  %qdisc175 = getelementptr inbounds %struct.hfsc_class, ptr %call7.i.i, i32 0, i32 12
  %176 = ptrtoint ptr %qdisc175 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %call174, ptr %qdisc175, align 16
  %cmp177 = icmp eq ptr %call174, null
  br i1 %cmp177, label %if.then179, label %if.else181

if.then179:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #16
  %177 = ptrtoint ptr %qdisc175 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @noop_qdisc, ptr %qdisc175, align 16
  br label %if.end183

if.else181:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #16
  call void @qdisc_hash_add(ptr noundef nonnull %call174, i1 noundef zeroext true) #14
  br label %if.end183

if.end183:                                        ; preds = %if.else181, %if.then179
  %children = getelementptr inbounds %struct.hfsc_class, ptr %call7.i.i, i32 0, i32 11
  %178 = ptrtoint ptr %children to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile ptr %children, ptr %children, align 8
  %prev.i = getelementptr inbounds %struct.hfsc_class, ptr %call7.i.i, i32 0, i32 11, i32 1
  %179 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %children, ptr %prev.i, align 4
  %vt_tree = getelementptr inbounds %struct.hfsc_class, ptr %call7.i.i, i32 0, i32 14
  %180 = ptrtoint ptr %vt_tree to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr null, ptr %vt_tree, align 16
  %cf_tree = getelementptr inbounds %struct.hfsc_class, ptr %call7.i.i, i32 0, i32 16
  %181 = ptrtoint ptr %cf_tree to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr null, ptr %cf_tree, align 16
  call fastcc void @sch_tree_lock(ptr noundef %sch)
  call void @qdisc_class_hash_insert(ptr noundef %clhash.i364, ptr noundef nonnull %call7.i.i) #14
  %siblings = getelementptr inbounds %struct.hfsc_class, ptr %call7.i.i, i32 0, i32 10
  %children187 = getelementptr inbounds %struct.hfsc_class, ptr %parent.0, i32 0, i32 11
  %prev.i388 = getelementptr inbounds %struct.hfsc_class, ptr %parent.0, i32 0, i32 11, i32 1
  %182 = ptrtoint ptr %prev.i388 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %prev.i388, align 4
  %call.i.i389 = call zeroext i1 @__list_add_valid(ptr noundef %siblings, ptr noundef %183, ptr noundef %children187) #14
  br i1 %call.i.i389, label %if.end.i.i390, label %if.end183.list_add_tail.exit_crit_edge

if.end183.list_add_tail.exit_crit_edge:           ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i390:                                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #16
  %184 = ptrtoint ptr %prev.i388 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %siblings, ptr %prev.i388, align 4
  %185 = ptrtoint ptr %siblings to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %children187, ptr %siblings, align 8
  %prev3.i.i = getelementptr inbounds %struct.hfsc_class, ptr %call7.i.i, i32 0, i32 10, i32 1
  %186 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %183, ptr %prev3.i.i, align 4
  %187 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %187)
  store volatile ptr %siblings, ptr %183, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i390, %if.end183.list_add_tail.exit_crit_edge
  %level = getelementptr inbounds %struct.hfsc_class, ptr %parent.0, i32 0, i32 7
  %188 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %cmp188 = icmp eq i32 %189, 0
  br i1 %cmp188, label %if.then190, label %list_add_tail.exit.do.body.i.preheader_crit_edge

list_add_tail.exit.do.body.i.preheader_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.preheader

if.then190:                                       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  %qdisc191 = getelementptr inbounds %struct.hfsc_class, ptr %parent.0, i32 0, i32 12
  %190 = ptrtoint ptr %qdisc191 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %qdisc191, align 16
  call fastcc void @qdisc_purge_queue(ptr noundef %191)
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.then190, %list_add_tail.exit.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %for.end.i.do.body.i_crit_edge, %do.body.i.preheader
  %cl.addr.0.i = phi ptr [ %198, %for.end.i.do.body.i_crit_edge ], [ %parent.0, %do.body.i.preheader ]
  %children.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.0.i, i32 0, i32 11
  %192 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %.pn20.i = load ptr, ptr %children.i, align 8
  %cmp.not21.i = icmp eq ptr %.pn20.i, %children.i
  br i1 %cmp.not21.i, label %do.body.i.for.end.i_crit_edge, label %do.body.i.for.body.i_crit_edge

do.body.i.for.body.i_crit_edge:                   ; preds = %do.body.i
  br label %for.body.i

do.body.i.for.end.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body.i.for.body.i_crit_edge
  %.pn23.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn20.i, %do.body.i.for.body.i_crit_edge ]
  %level.022.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.body.i.for.body.i_crit_edge ]
  %level2.i = getelementptr i8, ptr %.pn23.i, i32 -12
  %193 = ptrtoint ptr %level2.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %level2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %194, i32 %level.022.i)
  %cmp3.not.i = icmp ult i32 %194, %level.022.i
  %add.i = add i32 %194, 1
  %spec.select.i = select i1 %cmp3.not.i, i32 %level.022.i, i32 %add.i
  %195 = ptrtoint ptr %.pn23.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %.pn.i = load ptr, ptr %.pn23.i, align 8
  %cmp.not.i391 = icmp eq ptr %.pn.i, %children.i
  br i1 %cmp.not.i391, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.body.i.for.end.i_crit_edge
  %level.0.lcssa.i = phi i32 [ 0, %do.body.i.for.end.i_crit_edge ], [ %spec.select.i, %for.body.i.for.end.i_crit_edge ]
  %level10.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.0.i, i32 0, i32 7
  %196 = ptrtoint ptr %level10.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %level.0.lcssa.i, ptr %level10.i, align 4
  %cl_parent.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.0.i, i32 0, i32 9
  %197 = ptrtoint ptr %cl_parent.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %cl_parent.i, align 4
  %cmp11.not.i = icmp eq ptr %198, null
  br i1 %cmp11.not.i, label %hfsc_adjust_levels.exit, label %for.end.i.do.body.i_crit_edge

for.end.i.do.body.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

hfsc_adjust_levels.exit:                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @sch_tree_unlock(ptr noundef %sch)
  call void @qdisc_class_hash_grow(ptr noundef %sch, ptr noundef %clhash.i364) #14
  %199 = ptrtoint ptr %call7.i.i to i32
  %200 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %arg, align 4
  br label %cleanup194

cleanup194:                                       ; preds = %hfsc_adjust_levels.exit, %if.then155, %if.then145, %if.end137.cleanup194_crit_edge, %if.end130.cleanup194_crit_edge, %for.body.i.i379.cleanup194_crit_edge, %lor.lhs.false.cleanup194_crit_edge, %if.end119.cleanup194_crit_edge, %for.inc.i.i.cleanup194_crit_edge, %if.end.i.i.cleanup194_crit_edge, %if.end107.cleanup194_crit_edge, %sch_tree_unlock.exit, %if.then61.cleanup194_crit_edge, %if.end50.cleanup194_crit_edge, %land.lhs.true45.cleanup194_crit_edge, %if.end.cleanup194_crit_edge, %entry.cleanup194_crit_edge
  %retval.1 = phi i32 [ %call143, %if.then145 ], [ %call153, %if.then155 ], [ 0, %hfsc_adjust_levels.exit ], [ -22, %entry.cleanup194_crit_edge ], [ %call2.i, %if.end.cleanup194_crit_edge ], [ 0, %sch_tree_unlock.exit ], [ -22, %land.lhs.true45.cleanup194_crit_edge ], [ -22, %if.end50.cleanup194_crit_edge ], [ %call63, %if.then61.cleanup194_crit_edge ], [ -17, %if.end107.cleanup194_crit_edge ], [ -22, %lor.lhs.false.cleanup194_crit_edge ], [ -22, %if.end119.cleanup194_crit_edge ], [ -22, %if.end130.cleanup194_crit_edge ], [ -105, %if.end137.cleanup194_crit_edge ], [ -2, %if.end.i.i.cleanup194_crit_edge ], [ -17, %for.body.i.i379.cleanup194_crit_edge ], [ -2, %for.inc.i.i.cleanup194_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb) #14
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsc_delete_class(ptr noundef %sch, i32 noundef %arg, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %qstats.i.i = alloca %struct.gnet_stats_queue, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %level = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %filter_cnt = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 6
  %3 = ptrtoint ptr %filter_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %filter_cnt, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.not = icmp ne i32 %4, 0
  %root = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %cmp3 = icmp eq ptr %root, %0
  %or.cond = select i1 %cmp1.not, i1 true, i1 %cmp3
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end.sch_tree_lock.exit_crit_edge

if.end.sch_tree_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sch_tree_lock.exit

if.else.i:                                        ; preds = %if.end
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %7 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = tail call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i.sch_tree_lock.exit_crit_edge

if.else.i.sch_tree_lock.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !45

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #14
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i.sch_tree_lock.exit_crit_edge, %if.end.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %if.end.sch_tree_lock.exit_crit_edge ], [ %10, %if.else.i.sch_tree_lock.exit_crit_edge ], [ %10, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %10, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #14
  %siblings = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %siblings) #14
  br i1 %call.i.i, label %if.end.i.i, label %sch_tree_lock.exit.list_del.exit_crit_edge

sch_tree_lock.exit.list_del.exit_crit_edge:       ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %siblings to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %siblings, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %sch_tree_lock.exit.list_del.exit_crit_edge
  %17 = ptrtoint ptr %siblings to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %siblings, align 4
  %prev.i = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cl_parent = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 9
  %19 = ptrtoint ptr %cl_parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cl_parent, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %for.end.i.do.body.i_crit_edge, %list_del.exit
  %cl.addr.0.i = phi ptr [ %20, %list_del.exit ], [ %27, %for.end.i.do.body.i_crit_edge ]
  %children.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.0.i, i32 0, i32 11
  %21 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn20.i = load ptr, ptr %children.i, align 8
  %cmp.not21.i = icmp eq ptr %.pn20.i, %children.i
  br i1 %cmp.not21.i, label %do.body.i.for.end.i_crit_edge, label %do.body.i.for.body.i_crit_edge

do.body.i.for.body.i_crit_edge:                   ; preds = %do.body.i
  br label %for.body.i

do.body.i.for.end.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body.i.for.body.i_crit_edge
  %.pn23.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn20.i, %do.body.i.for.body.i_crit_edge ]
  %level.022.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.body.i.for.body.i_crit_edge ]
  %level2.i = getelementptr i8, ptr %.pn23.i, i32 -12
  %22 = ptrtoint ptr %level2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %level2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %level.022.i)
  %cmp3.not.i = icmp ult i32 %23, %level.022.i
  %add.i = add i32 %23, 1
  %spec.select.i = select i1 %cmp3.not.i, i32 %level.022.i, i32 %add.i
  %24 = ptrtoint ptr %.pn23.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn.i = load ptr, ptr %.pn23.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.i, %children.i
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.body.i.for.end.i_crit_edge
  %level.0.lcssa.i = phi i32 [ 0, %do.body.i.for.end.i_crit_edge ], [ %spec.select.i, %for.body.i.for.end.i_crit_edge ]
  %level10.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.0.i, i32 0, i32 7
  %25 = ptrtoint ptr %level10.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %level.0.lcssa.i, ptr %level10.i, align 4
  %cl_parent.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.0.i, i32 0, i32 9
  %26 = ptrtoint ptr %cl_parent.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cl_parent.i, align 4
  %cmp11.not.i = icmp eq ptr %27, null
  br i1 %cmp11.not.i, label %hfsc_adjust_levels.exit, label %for.end.i.do.body.i_crit_edge

for.end.i.do.body.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

hfsc_adjust_levels.exit:                          ; preds = %for.end.i
  %qdisc = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 12
  %28 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %qdisc, align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i.i) #14
  %30 = call ptr @memset(ptr %qstats.i.i, i32 0, i32 20)
  %cpu_qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %29, i32 0, i32 12
  %31 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cpu_qstats.i.i, align 4
  %qstats1.i.i = getelementptr inbounds %struct.Qdisc, ptr %29, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i.i, ptr noundef %32, ptr noundef %qstats1.i.i) #14
  %33 = ptrtoint ptr %qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qstats.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %29, i32 0, i32 17, i32 2
  %35 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %qlen.i.i.i, align 8
  %add.i.i = add i32 %36, %34
  %backlog3.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %backlog3.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %backlog3.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i.i) #14
  call void @qdisc_reset(ptr noundef %29) #14
  call void @qdisc_tree_reduce_backlog(ptr noundef %29, i32 noundef %add.i.i, i32 noundef %38) #14
  %clhash = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 2
  call void @qdisc_class_hash_remove(ptr noundef %clhash, ptr noundef %0) #14
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i, align 8
  %and.i17 = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not.i18 = icmp eq i32 %and.i17, 0
  br i1 %tobool.not.i18, label %if.else.i23, label %hfsc_adjust_levels.exit.if.then.i_crit_edge

hfsc_adjust_levels.exit.if.then.i_crit_edge:      ; preds = %hfsc_adjust_levels.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.else.i23:                                      ; preds = %hfsc_adjust_levels.exit
  %dev_queue.i.i.i19 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %41 = ptrtoint ptr %dev_queue.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_queue.i.i.i19, align 8
  %qdisc_sleeping.i.i.i20 = getelementptr inbounds %struct.netdev_queue, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %qdisc_sleeping.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %qdisc_sleeping.i.i.i20, align 4
  %call1.i.i21 = call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i21)
  %tobool.not.i.i22 = icmp eq i32 %call1.i.i21, 0
  br i1 %tobool.not.i.i22, label %land.rhs.i.i25, label %if.else.i23.if.then.i_crit_edge

if.else.i23.if.then.i_crit_edge:                  ; preds = %if.else.i23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

land.rhs.i.i25:                                   ; preds = %if.else.i23
  %.b41.i.i24 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i24, label %land.rhs.i.i25.if.then.i_crit_edge, label %if.then.i.i26, !prof !45

land.rhs.i.i25.if.then.i_crit_edge:               ; preds = %land.rhs.i.i25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then.i.i26:                                    ; preds = %land.rhs.i.i25
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #14
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.i26, %land.rhs.i.i25.if.then.i_crit_edge, %if.else.i23.if.then.i_crit_edge, %hfsc_adjust_levels.exit.if.then.i_crit_edge
  %.sink.i27 = phi ptr [ %sch, %hfsc_adjust_levels.exit.if.then.i_crit_edge ], [ %44, %if.else.i23.if.then.i_crit_edge ], [ %44, %land.rhs.i.i25.if.then.i_crit_edge ], [ %44, %if.then.i.i26 ]
  %lock.i.i.i28 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i27, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i28) #14
  %block.i = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 5
  %45 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %block.i, align 4
  call void @tcf_block_put(ptr noundef %46) #14
  %47 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %qdisc, align 16
  call void @qdisc_put(ptr noundef %48) #14
  %rate_est.i = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 3
  call void @gen_kill_estimator(ptr noundef %rate_est.i) #14
  call void @kfree(ptr noundef %0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %entry.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfsc_walk(ptr noundef %sch, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %hashsize = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 3
  %2 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hashsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp55.not = icmp eq i32 %3, 0
  br i1 %cmp55.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %clhash = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 2
  %count = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 2
  %skip = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 1
  %fn = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc28.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc29, %for.inc28.for.body_crit_edge ]
  %4 = ptrtoint ptr %clhash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clhash, align 16
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
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end10:                                         ; preds = %for.body6
  %12 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fn, align 4
  %14 = ptrtoint ptr %cl.054 to i32
  %call11 = tail call i32 %13(ptr noundef %sch, i32 noundef %14, ptr noundef %arg) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %arg, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body6

for.inc.for.inc28_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc28

for.inc28:                                        ; preds = %for.inc.for.inc28_crit_edge, %for.body.for.inc28_crit_edge
  %inc29 = add nuw i32 %i.056, 1
  %21 = ptrtoint ptr %hashsize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hashsize, align 4
  %cmp = icmp ult i32 %inc29, %22
  br i1 %cmp, label %for.inc28.for.body_crit_edge, label %for.inc28.cleanup_crit_edge

for.inc28.cleanup_crit_edge:                      ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc28.for.body_crit_edge:                     ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup:                                          ; preds = %for.inc28.cleanup_crit_edge, %if.then13, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @hfsc_tcf_block(ptr nocapture noundef readonly %sch, i32 noundef %arg, ptr nocapture noundef readnone %extack) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %cmp = icmp eq i32 %arg, 0
  %root = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %spec.select = select i1 %cmp, ptr %root, ptr %0
  %block = getelementptr inbounds %struct.hfsc_class, ptr %spec.select, i32 0, i32 5
  %1 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %block, align 4
  ret ptr %2
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsc_bind_tcf(ptr nocapture noundef readonly %sch, i32 noundef %parent, i32 noundef %classid) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %parent to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %classid)
  %tobool.not.i.i = icmp eq i32 %classid, 0
  br i1 %tobool.not.i.i, label %entry.if.end5_crit_edge, label %if.end.i.i

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.end.i.i:                                       ; preds = %entry
  %clhash.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 2
  %hashmask.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 2, i32 17, i32 3, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %hashmask.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hashmask.i.i, align 4
  %shr.i.i.i = lshr i32 %classid, 8
  %xor.i.i.i = xor i32 %shr.i.i.i, %classid
  %shr1.i.i.i = lshr i32 %xor.i.i.i, 4
  %xor2.i.i.i = xor i32 %shr1.i.i.i, %xor.i.i.i
  %and.i.i.i = and i32 %2, %xor2.i.i.i
  %3 = ptrtoint ptr %clhash.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clhash.i, align 4
  %arrayidx.i.i = getelementptr %struct.hlist_head, ptr %4, i32 %and.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %6, null
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 -4
  %tobool4.not3033.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool4.not30.i.i = or i1 %tobool2.not.i.i, %tobool4.not3033.i.i
  br i1 %tobool4.not30.i.i, label %if.end.i.i.if.end5_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.if.end5_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %cl.031.i.i = phi ptr [ %add.ptr13.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %7 = ptrtoint ptr %cl.031.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cl.031.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %classid)
  %cmp.i.i = icmp eq i32 %8, %classid
  br i1 %cmp.i.i, label %if.then, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %hnode.i.i = getelementptr inbounds %struct.Qdisc_class_common, ptr %cl.031.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %hnode.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hnode.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %10, null
  %add.ptr13.i.i = getelementptr i8, ptr %10, i32 -4
  %tobool4.not34.i.i = icmp eq ptr %add.ptr13.i.i, null
  %tobool4.not.i.i = or i1 %tobool9.not.i.i, %tobool4.not34.i.i
  br i1 %tobool4.not.i.i, label %for.inc.i.i.if.end5_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.if.end5_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then:                                          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent)
  %cmp1.not = icmp eq i32 %parent, 0
  br i1 %cmp1.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %level = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 7
  %11 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %level, align 4
  %level2 = getelementptr inbounds %struct.hfsc_class, ptr %cl.031.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %level2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %level2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp3.not = icmp ugt i32 %12, %14
  br i1 %cmp3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %filter_cnt = getelementptr inbounds %struct.hfsc_class, ptr %cl.031.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %filter_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %filter_cnt, align 16
  %inc = add i32 %16, 1
  store i32 %inc, ptr %filter_cnt, align 16
  br label %if.end5

if.end5:                                          ; preds = %if.end, %for.inc.i.i.if.end5_crit_edge, %if.end.i.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  %retval.0.i.i14 = phi ptr [ %cl.031.i.i, %if.end ], [ null, %entry.if.end5_crit_edge ], [ null, %if.end.i.i.if.end5_crit_edge ], [ null, %for.inc.i.i.if.end5_crit_edge ]
  %17 = ptrtoint ptr %retval.0.i.i14 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.end5 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @hfsc_unbind_tcf(ptr nocapture noundef readnone %sch, i32 noundef %arg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %filter_cnt = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 6
  %1 = ptrtoint ptr %filter_cnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %filter_cnt, align 16
  %dec = add i32 %2, -1
  store i32 %dec, ptr %filter_cnt, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsc_dump_class(ptr nocapture noundef readnone %sch, i32 noundef %arg, ptr noundef %skb, ptr nocapture noundef writeonly %tcm) #2 align 64 {
entry:
  %tsc.i51.i = alloca %struct.tc_service_curve, align 4
  %tsc.i30.i = alloca %struct.tc_service_curve, align 4
  %tsc.i.i = alloca %struct.tc_service_curve, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %cl_parent = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %cl_parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cl_parent, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 16
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %4, %cond.true ], [ -1, %entry.cond.end_crit_edge ]
  %tcm_parent = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 5
  %5 = ptrtoint ptr %tcm_parent to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %tcm_parent, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %0, align 16
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 4
  %8 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tcm_handle, align 4
  %level = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 7
  %9 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %qdisc = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 12
  %11 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qdisc, align 16
  %handle = getelementptr inbounds %struct.Qdisc, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %handle, align 32
  %tcm_info = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 6
  %15 = ptrtoint ptr %tcm_info to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tcm_info, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp431 = icmp eq ptr %17, null
  %cmp4 = select i1 %cmp.i, i1 true, i1 %cmp431
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %cl_flags.i = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 36
  %18 = ptrtoint ptr %cl_flags.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cl_flags.i, align 8
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.end6.if.end.i_crit_edge, label %land.lhs.true.i

if.end6.if.end.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end6
  %cl_rsc.i = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tsc.i.i) #14
  %21 = getelementptr inbounds %struct.tc_service_curve, ptr %tsc.i.i, i32 0, i32 1
  %22 = getelementptr inbounds %struct.tc_service_curve, ptr %tsc.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %cl_rsc.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %cl_rsc.i, align 8
  %mul.i.i.i = mul i64 %24, 15625000
  %shr.i.i.i = lshr i64 %mul.i.i.i, 24
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %25 = ptrtoint ptr %tsc.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv.i.i.i, ptr %tsc.i.i, align 4
  %dx.i.i = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 29, i32 2
  %26 = ptrtoint ptr %dx.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %dx.i.i, align 8
  %mul.i7.i.i = mul i64 %27, 1000000
  %28 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i7.i.i, i32 0) #18, !srcloc !50
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %28, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %28, 1
  %29 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i7.i.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #18, !srcloc !51
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %29, 0
  %extract262.i.i.i = lshr i64 %asmresult10.i.i.i.i, 23
  %extract.t263.i.i.i = trunc i64 %extract262.i.i.i to i32
  %30 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %extract.t263.i.i.i, ptr %21, align 4
  %sm2.i.i = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 29, i32 4
  %31 = ptrtoint ptr %sm2.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %sm2.i.i, align 8
  %mul.i8.i.i = mul i64 %32, 15625000
  %shr.i9.i.i = lshr i64 %mul.i8.i.i, 24
  %conv.i10.i.i = trunc i64 %shr.i9.i.i to i32
  %33 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv.i10.i.i, ptr %22, align 4
  %call3.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 12, ptr noundef nonnull %tsc.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i.i, label %hfsc_dump_sc.exit.i, label %hfsc_dump_sc.exit.thread.i

hfsc_dump_sc.exit.thread.i:                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tsc.i.i) #14
  br label %if.then.i.i

hfsc_dump_sc.exit.i:                              ; preds = %land.lhs.true.i
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %34 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tsc.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i25 = icmp slt i32 %35, 0
  br i1 %cmp.i25, label %hfsc_dump_sc.exit.i.if.then.i.i_crit_edge, label %hfsc_dump_sc.exit.i.if.end.i_crit_edge

hfsc_dump_sc.exit.i.if.end.i_crit_edge:           ; preds = %hfsc_dump_sc.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

hfsc_dump_sc.exit.i.if.then.i.i_crit_edge:        ; preds = %hfsc_dump_sc.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

if.end.i:                                         ; preds = %hfsc_dump_sc.exit.i.if.end.i_crit_edge, %if.end6.if.end.i_crit_edge
  %36 = ptrtoint ptr %cl_flags.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %cl_flags.i, align 8
  %38 = and i8 %37, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool5.not.i = icmp eq i8 %38, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end11.i_crit_edge, label %land.lhs.true6.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

land.lhs.true6.i:                                 ; preds = %if.end.i
  %cl_fsc.i = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tsc.i30.i) #14
  %39 = getelementptr inbounds %struct.tc_service_curve, ptr %tsc.i30.i, i32 0, i32 1
  %40 = getelementptr inbounds %struct.tc_service_curve, ptr %tsc.i30.i, i32 0, i32 2
  %41 = ptrtoint ptr %cl_fsc.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %cl_fsc.i, align 8
  %mul.i.i31.i = mul i64 %42, 15625000
  %shr.i.i32.i = lshr i64 %mul.i.i31.i, 24
  %conv.i.i33.i = trunc i64 %shr.i.i32.i to i32
  %43 = ptrtoint ptr %tsc.i30.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv.i.i33.i, ptr %tsc.i30.i, align 4
  %dx.i34.i = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 30, i32 2
  %44 = ptrtoint ptr %dx.i34.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %dx.i34.i, align 8
  %mul.i7.i35.i = mul i64 %45, 1000000
  %46 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i7.i35.i, i32 0) #18, !srcloc !50
  %asmresult.i.i.i36.i = extractvalue { i64, i32 } %46, 0
  %asmresult4.i.i.i37.i = extractvalue { i64, i32 } %46, 1
  %47 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i7.i35.i, i64 %asmresult.i.i.i36.i, i32 %asmresult4.i.i.i37.i) #18, !srcloc !51
  %asmresult10.i.i.i38.i = extractvalue { i64, i32 } %47, 0
  %extract262.i.i39.i = lshr i64 %asmresult10.i.i.i38.i, 23
  %extract.t263.i.i40.i = trunc i64 %extract262.i.i39.i to i32
  %48 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %extract.t263.i.i40.i, ptr %39, align 4
  %sm2.i41.i = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 30, i32 4
  %49 = ptrtoint ptr %sm2.i41.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %sm2.i41.i, align 8
  %mul.i8.i42.i = mul i64 %50, 15625000
  %shr.i9.i43.i = lshr i64 %mul.i8.i42.i, 24
  %conv.i10.i44.i = trunc i64 %shr.i9.i43.i to i32
  %51 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv.i10.i44.i, ptr %40, align 4
  %call3.i45.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 12, ptr noundef nonnull %tsc.i30.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i45.i)
  %tobool.not.i46.i = icmp eq i32 %call3.i45.i, 0
  br i1 %tobool.not.i46.i, label %hfsc_dump_sc.exit50.i, label %hfsc_dump_sc.exit50.thread.i

hfsc_dump_sc.exit50.thread.i:                     ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tsc.i30.i) #14
  br label %if.then.i.i

hfsc_dump_sc.exit50.i:                            ; preds = %land.lhs.true6.i
  %len.i47.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %52 = ptrtoint ptr %len.i47.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len.i47.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tsc.i30.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp8.i = icmp slt i32 %53, 0
  br i1 %cmp8.i, label %hfsc_dump_sc.exit50.i.if.then.i.i_crit_edge, label %hfsc_dump_sc.exit50.i.if.end11.i_crit_edge

hfsc_dump_sc.exit50.i.if.end11.i_crit_edge:       ; preds = %hfsc_dump_sc.exit50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

hfsc_dump_sc.exit50.i.if.then.i.i_crit_edge:      ; preds = %hfsc_dump_sc.exit50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

if.end11.i:                                       ; preds = %hfsc_dump_sc.exit50.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %54 = ptrtoint ptr %cl_flags.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %cl_flags.i, align 8
  %56 = and i8 %55, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool15.not.i = icmp eq i8 %56, 0
  br i1 %tobool15.not.i, label %if.end11.i.hfsc_dump_curves.exit_crit_edge, label %land.lhs.true16.i

if.end11.i.hfsc_dump_curves.exit_crit_edge:       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hfsc_dump_curves.exit

land.lhs.true16.i:                                ; preds = %if.end11.i
  %cl_usc.i = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 31
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tsc.i51.i) #14
  %57 = getelementptr inbounds %struct.tc_service_curve, ptr %tsc.i51.i, i32 0, i32 1
  %58 = getelementptr inbounds %struct.tc_service_curve, ptr %tsc.i51.i, i32 0, i32 2
  %59 = ptrtoint ptr %cl_usc.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %cl_usc.i, align 8
  %mul.i.i52.i = mul i64 %60, 15625000
  %shr.i.i53.i = lshr i64 %mul.i.i52.i, 24
  %conv.i.i54.i = trunc i64 %shr.i.i53.i to i32
  %61 = ptrtoint ptr %tsc.i51.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv.i.i54.i, ptr %tsc.i51.i, align 4
  %dx.i55.i = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 31, i32 2
  %62 = ptrtoint ptr %dx.i55.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %dx.i55.i, align 8
  %mul.i7.i56.i = mul i64 %63, 1000000
  %64 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i7.i56.i, i32 0) #18, !srcloc !50
  %asmresult.i.i.i57.i = extractvalue { i64, i32 } %64, 0
  %asmresult4.i.i.i58.i = extractvalue { i64, i32 } %64, 1
  %65 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i7.i56.i, i64 %asmresult.i.i.i57.i, i32 %asmresult4.i.i.i58.i) #18, !srcloc !51
  %asmresult10.i.i.i59.i = extractvalue { i64, i32 } %65, 0
  %extract262.i.i60.i = lshr i64 %asmresult10.i.i.i59.i, 23
  %extract.t263.i.i61.i = trunc i64 %extract262.i.i60.i to i32
  %66 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %extract.t263.i.i61.i, ptr %57, align 4
  %sm2.i62.i = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 31, i32 4
  %67 = ptrtoint ptr %sm2.i62.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %sm2.i62.i, align 8
  %mul.i8.i63.i = mul i64 %68, 15625000
  %shr.i9.i64.i = lshr i64 %mul.i8.i63.i, 24
  %conv.i10.i65.i = trunc i64 %shr.i9.i64.i to i32
  %69 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv.i10.i65.i, ptr %58, align 4
  %call3.i66.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 12, ptr noundef nonnull %tsc.i51.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i66.i)
  %tobool.not.i67.i = icmp eq i32 %call3.i66.i, 0
  br i1 %tobool.not.i67.i, label %hfsc_dump_sc.exit71.i, label %hfsc_dump_sc.exit71.thread.i

hfsc_dump_sc.exit71.thread.i:                     ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tsc.i51.i) #14
  br label %if.then.i.i

hfsc_dump_sc.exit71.i:                            ; preds = %land.lhs.true16.i
  %len.i68.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %70 = ptrtoint ptr %len.i68.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len.i68.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tsc.i51.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp18.i = icmp slt i32 %71, 0
  br i1 %cmp18.i, label %hfsc_dump_sc.exit71.i.if.then.i.i_crit_edge, label %hfsc_dump_sc.exit71.i.hfsc_dump_curves.exit_crit_edge

hfsc_dump_sc.exit71.i.hfsc_dump_curves.exit_crit_edge: ; preds = %hfsc_dump_sc.exit71.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hfsc_dump_curves.exit

hfsc_dump_sc.exit71.i.if.then.i.i_crit_edge:      ; preds = %hfsc_dump_sc.exit71.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

hfsc_dump_curves.exit:                            ; preds = %hfsc_dump_sc.exit71.i.hfsc_dump_curves.exit_crit_edge, %if.end11.i.hfsc_dump_curves.exit_crit_edge
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %72 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp8 = icmp slt i32 %73, 0
  br i1 %cmp8, label %hfsc_dump_curves.exit.if.then.i.i_crit_edge, label %if.end10

hfsc_dump_curves.exit.if.then.i.i_crit_edge:      ; preds = %hfsc_dump_curves.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

if.end10:                                         ; preds = %hfsc_dump_curves.exit
  call void @__sanitizer_cov_trace_pc() #16
  %74 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %75 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %76 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv.i, ptr %17, align 2
  %77 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %hfsc_dump_curves.exit.if.then.i.i_crit_edge, %hfsc_dump_sc.exit71.i.if.then.i.i_crit_edge, %hfsc_dump_sc.exit71.thread.i, %hfsc_dump_sc.exit50.i.if.then.i.i_crit_edge, %hfsc_dump_sc.exit50.thread.i, %hfsc_dump_sc.exit.i.if.then.i.i_crit_edge, %hfsc_dump_sc.exit.thread.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %79 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %80, %17
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !48

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %81 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %82 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end10, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %78, %if.end10 ], [ -90, %if.end.cleanup_crit_edge ], [ -90, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfsc_dump_class_stats(ptr nocapture noundef readnone %sch, i32 noundef %arg, ptr noundef %d) #2 align 64 {
entry:
  %qstats.i = alloca %struct.gnet_stats_queue, align 4
  %xstats = alloca %struct.tc_hfsc_stats, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xstats) #14
  %1 = getelementptr inbounds %struct.tc_hfsc_stats, ptr %xstats, i32 0, i32 1
  %2 = getelementptr inbounds %struct.tc_hfsc_stats, ptr %xstats, i32 0, i32 2
  %3 = getelementptr inbounds %struct.tc_hfsc_stats, ptr %xstats, i32 0, i32 3
  %qdisc = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 12
  %4 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qdisc, align 16
  %qstats = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 2
  %backlog = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i) #14
  %6 = call ptr @memset(ptr %qstats.i, i32 0, i32 20)
  %cpu_qstats.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 12
  %7 = ptrtoint ptr %cpu_qstats.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpu_qstats.i, align 4
  %qstats1.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i, ptr noundef %8, ptr noundef %qstats1.i) #14
  %9 = ptrtoint ptr %qstats.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qstats.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 17, i32 2
  %11 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qlen.i.i, align 8
  %add.i = add i32 %12, %10
  %backlog3.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i, i32 0, i32 1
  %13 = ptrtoint ptr %backlog3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %backlog3.i, align 4
  %15 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %backlog, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i) #14
  %level = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 7
  %16 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %level, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %3, align 4
  %cl_vtperiod = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 37
  %19 = ptrtoint ptr %cl_vtperiod to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cl_vtperiod, align 4
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %2, align 8
  %cl_total = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 18
  %22 = ptrtoint ptr %cl_total to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %cl_total, align 16
  %24 = ptrtoint ptr %xstats to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %xstats, align 8
  %cl_cumul = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 19
  %25 = ptrtoint ptr %cl_cumul to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %cl_cumul, align 8
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %1, align 8
  %bstats = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 1
  %call = call i32 @gnet_stats_copy_basic(ptr noundef %d, ptr noundef null, ptr noundef %bstats, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rate_est = getelementptr inbounds %struct.hfsc_class, ptr %0, i32 0, i32 3
  %call2 = call i32 @gnet_stats_copy_rate_est(ptr noundef %d, ptr noundef %rate_est) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call6 = call i32 @gnet_stats_copy_queue(ptr noundef %d, ptr noundef null, ptr noundef %qstats, i32 noundef %add.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #16
  %call8 = call i32 @gnet_stats_copy_app(ptr noundef %d, ptr noundef nonnull %xstats, i32 noundef 24) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ -1, %lor.lhs.false4.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xstats) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qdisc_create_dflt(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sch_tree_lock(ptr noundef %q) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.Qdisc, ptr %q, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.else:                                          ; preds = %entry
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %q, i32 0, i32 9
  %2 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_queue.i.i, align 8
  %qdisc_sleeping.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %qdisc_sleeping.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qdisc_sleeping.i.i, align 4
  %call1.i = tail call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs.i:                                       ; preds = %if.else
  %.b41.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i, label %land.rhs.i.if.end_crit_edge, label %if.then.i, !prof !45

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #14
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.rhs.i.if.end_crit_edge, %if.else.if.end_crit_edge, %entry.if.end_crit_edge
  %.sink = phi ptr [ %q, %entry.if.end_crit_edge ], [ %5, %if.else.if.end_crit_edge ], [ %5, %land.rhs.i.if.end_crit_edge ], [ %5, %if.then.i ]
  %lock.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qdisc_purge_queue(ptr noundef %sch) unnamed_addr #3 align 64 {
entry:
  %qstats.i = alloca %struct.gnet_stats_queue, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats.i) #14
  %0 = call ptr @memset(ptr %qstats.i, i32 0, i32 20)
  %cpu_qstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 12
  %1 = ptrtoint ptr %cpu_qstats.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cpu_qstats.i, align 4
  %qstats1.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats.i, ptr noundef %2, ptr noundef %qstats1.i) #14
  %3 = ptrtoint ptr %qstats.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qstats.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i.i, align 8
  %add.i = add i32 %6, %4
  %backlog3.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats.i, i32 0, i32 1
  %7 = ptrtoint ptr %backlog3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %backlog3.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats.i) #14
  call void @qdisc_reset(ptr noundef %sch) #14
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef %add.i, i32 noundef %8) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sch_tree_unlock(ptr noundef %q) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.Qdisc, ptr %q, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.else:                                          ; preds = %entry
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %q, i32 0, i32 9
  %2 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_queue.i.i, align 8
  %qdisc_sleeping.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %qdisc_sleeping.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qdisc_sleeping.i.i, align 4
  %call1.i = tail call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs.i:                                       ; preds = %if.else
  %.b41.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i, label %land.rhs.i.if.end_crit_edge, label %if.then.i, !prof !45

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 596) #14
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.rhs.i.if.end_crit_edge, %if.else.if.end_crit_edge, %entry.if.end_crit_edge
  %.sink = phi ptr [ %q, %entry.if.end_crit_edge ], [ %5, %if.else.if.end_crit_edge ], [ %5, %land.rhs.i.if.end_crit_edge ], [ %5, %if.then.i ]
  %lock.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink, i32 0, i32 17, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #14
  ret void
}

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
define internal fastcc void @update_vf(ptr noundef %cl, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 12
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 16
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 17, i32 2
  %2 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %cl_flags = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 36
  %4 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cl_flags, align 8
  %6 = lshr i8 %5, 1
  %.lobit = and i8 %6, 1
  %7 = zext i8 %.lobit to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %go_passive.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %7, %land.lhs.true ]
  %cl_parent73 = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 9
  %8 = ptrtoint ptr %cl_parent73 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cl_parent73, align 4
  %cmp1.not74 = icmp eq ptr %9, null
  br i1 %cmp1.not74, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %conv3 = zext i32 %len to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cl_parent80 = phi ptr [ %cl_parent73, %for.body.lr.ph ], [ %cl_parent, %for.inc.for.body_crit_edge ]
  %cl.addr.076 = phi ptr [ %cl, %for.body.lr.ph ], [ %139, %for.inc.for.body_crit_edge ]
  %go_passive.175 = phi i32 [ %go_passive.0, %for.body.lr.ph ], [ %go_passive.3, %for.inc.for.body_crit_edge ]
  %cl_total = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 18
  %10 = ptrtoint ptr %cl_total to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %cl_total, align 16
  %add = add i64 %11, %conv3
  store i64 %add, ptr %cl_total, align 16
  %cl_flags4 = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 36
  %12 = ptrtoint ptr %cl_flags4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cl_flags4, align 8
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.not = icmp eq i8 %14, 0
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %cl_nactive = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 39
  %15 = ptrtoint ptr %cl_nactive to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cl_nactive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp8 = icmp eq i32 %16, 0
  br i1 %cmp8, label %lor.lhs.false.for.inc_crit_edge, label %if.end11

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end11:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %go_passive.175)
  %tobool12.not = icmp eq i32 %go_passive.175, 0
  br i1 %tobool12.not, label %if.end11.if.else_crit_edge, label %land.lhs.true13

if.end11.if.else_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true13:                                  ; preds = %if.end11
  %dec = add i32 %16, -1
  %17 = ptrtoint ptr %cl_nactive to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %dec, ptr %cl_nactive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp15 = icmp eq i32 %dec, 0
  br i1 %cmp15, label %land.lhs.true13.if.end18_crit_edge, label %land.lhs.true13.if.else_crit_edge

land.lhs.true13.if.else_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true13.if.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.else:                                          ; preds = %land.lhs.true13.if.else_crit_edge, %if.end11.if.else_crit_edge
  br label %if.end18

if.end18:                                         ; preds = %if.else, %land.lhs.true13.if.end18_crit_edge
  %tobool35.not = phi i1 [ true, %if.else ], [ false, %land.lhs.true13.if.end18_crit_edge ]
  %cl_virtual = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 34
  %18 = ptrtoint ptr %cl_total to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %cl_total, align 16
  %y1.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 34, i32 1
  %20 = ptrtoint ptr %y1.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %y1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %21)
  %cmp.i = icmp ult i64 %19, %21
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %cl_virtual to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %cl_virtual, align 8
  br label %rtsc_y2x.exit

if.else.i:                                        ; preds = %if.end18
  %dy.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 34, i32 5
  %24 = ptrtoint ptr %dy.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %dy.i, align 8
  %add.i = add i64 %25, %21
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %add.i)
  %cmp4.not.i = icmp ugt i64 %19, %add.i
  br i1 %cmp4.not.i, label %if.else15.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %cmp7.i = icmp eq i64 %25, 0
  %26 = ptrtoint ptr %cl_virtual to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %cl_virtual, align 8
  br i1 %cmp7.i, label %if.then8.i, label %if.else11.i

if.then8.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  %dx.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 34, i32 4
  %28 = ptrtoint ptr %dx.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %dx.i, align 8
  %add10.i = add i64 %29, %27
  br label %rtsc_y2x.exit

if.else11.i:                                      ; preds = %if.then5.i
  %sub.i = sub i64 %19, %21
  %ism1.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 34, i32 3
  %30 = ptrtoint ptr %ism1.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ism1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %21)
  %cmp.i.i = icmp eq i64 %19, %21
  br i1 %cmp.i.i, label %if.else11.i.seg_y2x.exit.i_crit_edge, label %if.else.i.i

if.else11.i.seg_y2x.exit.i_crit_edge:             ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seg_y2x.exit.i

if.else.i.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %31)
  %cmp1.i.i = icmp eq i64 %31, -1
  br i1 %cmp1.i.i, label %if.else.i.i.seg_y2x.exit.i_crit_edge, label %if.else3.i.i

if.else.i.i.seg_y2x.exit.i_crit_edge:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seg_y2x.exit.i

if.else3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %shr.i.i = lshr i64 %sub.i, 14
  %mul.i.i = mul i64 %31, %shr.i.i
  %and.i.i = and i64 %sub.i, 16383
  %mul4.i.i = mul i64 %31, %and.i.i
  %shr5.i.i = lshr i64 %mul4.i.i, 14
  %add.i.i = add i64 %shr5.i.i, %mul.i.i
  br label %seg_y2x.exit.i

seg_y2x.exit.i:                                   ; preds = %if.else3.i.i, %if.else.i.i.seg_y2x.exit.i_crit_edge, %if.else11.i.seg_y2x.exit.i_crit_edge
  %x.0.i.i = phi i64 [ %add.i.i, %if.else3.i.i ], [ 0, %if.else11.i.seg_y2x.exit.i_crit_edge ], [ -1, %if.else.i.i.seg_y2x.exit.i_crit_edge ]
  %add14.i = add i64 %x.0.i.i, %27
  br label %rtsc_y2x.exit

if.else15.i:                                      ; preds = %if.else.i
  %32 = ptrtoint ptr %cl_virtual to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %cl_virtual, align 8
  %dx17.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 34, i32 4
  %34 = ptrtoint ptr %dx17.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %dx17.i, align 8
  %add18.i = add i64 %35, %33
  %ism2.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 34, i32 7
  %36 = ptrtoint ptr %ism2.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ism2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %37)
  %cmp1.i45.i = icmp eq i64 %37, -1
  br i1 %cmp1.i45.i, label %if.else15.i.seg_y2x.exit55.i_crit_edge, label %if.else3.i53.i

if.else15.i.seg_y2x.exit55.i_crit_edge:           ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seg_y2x.exit55.i

if.else3.i53.i:                                   ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub22.i = sub i64 %19, %add.i
  %shr.i47.i = lshr i64 %sub22.i, 14
  %mul.i48.i = mul i64 %37, %shr.i47.i
  %and.i49.i = and i64 %sub22.i, 16383
  %mul4.i50.i = mul i64 %37, %and.i49.i
  %shr5.i51.i = lshr i64 %mul4.i50.i, 14
  %add.i52.i = add i64 %shr5.i51.i, %mul.i48.i
  br label %seg_y2x.exit55.i

seg_y2x.exit55.i:                                 ; preds = %if.else3.i53.i, %if.else15.i.seg_y2x.exit55.i_crit_edge
  %x.0.i54.i = phi i64 [ %add.i52.i, %if.else3.i53.i ], [ -1, %if.else15.i.seg_y2x.exit55.i_crit_edge ]
  %add24.i = add i64 %add18.i, %x.0.i54.i
  br label %rtsc_y2x.exit

rtsc_y2x.exit:                                    ; preds = %seg_y2x.exit55.i, %seg_y2x.exit.i, %if.then8.i, %if.then.i
  %x.0.i = phi i64 [ %23, %if.then.i ], [ %add10.i, %if.then8.i ], [ %add14.i, %seg_y2x.exit.i ], [ %add24.i, %seg_y2x.exit55.i ]
  %cl_vtadj = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 27
  %38 = ptrtoint ptr %cl_vtadj to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %cl_vtadj, align 8
  %add20 = add i64 %39, %x.0.i
  %cl_vt = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 22
  %40 = ptrtoint ptr %cl_vt to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %add20, ptr %cl_vt, align 16
  %41 = ptrtoint ptr %cl_parent80 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cl_parent80, align 4
  %cl_cvtmin = getelementptr inbounds %struct.hfsc_class, ptr %42, i32 0, i32 26
  %43 = ptrtoint ptr %cl_cvtmin to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %cl_cvtmin, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %add20)
  %cmp23 = icmp ugt i64 %44, %add20
  br i1 %cmp23, label %if.then25, label %rtsc_y2x.exit.if.end34_crit_edge

rtsc_y2x.exit.if.end34_crit_edge:                 ; preds = %rtsc_y2x.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then25:                                        ; preds = %rtsc_y2x.exit
  call void @__sanitizer_cov_trace_pc() #16
  %add30 = sub i64 %44, %x.0.i
  %45 = ptrtoint ptr %cl_vtadj to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %add30, ptr %cl_vtadj, align 8
  %46 = ptrtoint ptr %cl_cvtmin to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %cl_cvtmin, align 16
  %48 = ptrtoint ptr %cl_vt to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %cl_vt, align 16
  br label %if.end34

if.end34:                                         ; preds = %if.then25, %rtsc_y2x.exit.if.end34_crit_edge
  br i1 %tobool35.not, label %if.end47, label %if.then36

if.then36:                                        ; preds = %if.end34
  %49 = ptrtoint ptr %cl_vt to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %cl_vt, align 16
  %51 = ptrtoint ptr %cl_parent80 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cl_parent80, align 4
  %cl_cvtoff = getelementptr inbounds %struct.hfsc_class, ptr %52, i32 0, i32 28
  %53 = ptrtoint ptr %cl_cvtoff to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %cl_cvtoff, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %54)
  %cmp39 = icmp ugt i64 %50, %54
  br i1 %cmp39, label %if.then41, label %if.then36.if.end45_crit_edge

if.then36.if.end45_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then41:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %cl_cvtoff to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %50, ptr %cl_cvtoff, align 16
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.then36.if.end45_crit_edge
  %vt_node.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 15
  %56 = ptrtoint ptr %cl_parent80 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cl_parent80, align 4
  %vt_tree.i = getelementptr inbounds %struct.hfsc_class, ptr %57, i32 0, i32 14
  tail call void @rb_erase(ptr noundef %vt_node.i, ptr noundef %vt_tree.i) #14
  %cf_node.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 17
  %58 = ptrtoint ptr %cl_parent80 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cl_parent80, align 4
  %cf_tree.i = getelementptr inbounds %struct.hfsc_class, ptr %59, i32 0, i32 16
  tail call void @rb_erase(ptr noundef %cf_node.i, ptr noundef %cf_tree.i) #14
  %60 = ptrtoint ptr %cl_parent80 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cl_parent80, align 4
  %cf_tree.i2 = getelementptr inbounds %struct.hfsc_class, ptr %61, i32 0, i32 16
  %call.i = tail call ptr @rb_first(ptr noundef %cf_tree.i2) #14
  %cmp.i3 = icmp eq ptr %call.i, null
  br i1 %cmp.i3, label %if.end45.for.inc.sink.split_crit_edge, label %if.end45.for.inc.sink.split.sink.split_crit_edge

if.end45.for.inc.sink.split.sink.split_crit_edge: ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.sink.split.sink.split

if.end45.for.inc.sink.split_crit_edge:            ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.sink.split

if.end47:                                         ; preds = %if.end34
  %vt_node.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 15
  %62 = ptrtoint ptr %cl_parent80 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cl_parent80, align 4
  %vt_tree.i.i = getelementptr inbounds %struct.hfsc_class, ptr %63, i32 0, i32 14
  tail call void @rb_erase(ptr noundef %vt_node.i.i, ptr noundef %vt_tree.i.i) #14
  %64 = ptrtoint ptr %cl_parent80 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cl_parent80, align 4
  %vt_tree.i3.i = getelementptr inbounds %struct.hfsc_class, ptr %65, i32 0, i32 14
  %66 = ptrtoint ptr %vt_tree.i3.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vt_tree.i3.i, align 4
  %cmp.not15.i.i = icmp eq ptr %67, null
  br i1 %cmp.not15.i.i, label %if.end47.vttree_update.exit_crit_edge, label %while.body.lr.ph.i.i

if.end47.vttree_update.exit_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %vttree_update.exit

while.body.lr.ph.i.i:                             ; preds = %if.end47
  %68 = ptrtoint ptr %cl_vt to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %cl_vt, align 16
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %70 = phi ptr [ %67, %while.body.lr.ph.i.i ], [ %74, %while.body.i.i.while.body.i.i_crit_edge ]
  %cl_vt1.i.i = getelementptr i8, ptr %70, i32 60
  %71 = ptrtoint ptr %cl_vt1.i.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %cl_vt1.i.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %69, i64 %72)
  %cmp2.not.i.i = icmp ult i64 %69, %72
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %70, i32 0, i32 1
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %70, i32 0, i32 2
  %p.1.i.i = select i1 %cmp2.not.i.i, ptr %rb_left.i.i, ptr %rb_right.i.i
  %73 = ptrtoint ptr %p.1.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %p.1.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %74, null
  br i1 %cmp.not.i.i, label %while.cond.while.end_crit_edge.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %phi.cast.le.i.i = ptrtoint ptr %70 to i32
  br label %vttree_update.exit

vttree_update.exit:                               ; preds = %while.cond.while.end_crit_edge.i.i, %if.end47.vttree_update.exit_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %if.end47.vttree_update.exit_crit_edge ]
  %p.0.lcssa.i.i = phi ptr [ %p.1.i.i, %while.cond.while.end_crit_edge.i.i ], [ %vt_tree.i3.i, %if.end47.vttree_update.exit_crit_edge ]
  %75 = ptrtoint ptr %vt_node.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %parent.0.lcssa.i.i, ptr %vt_node.i.i, align 4
  %rb_right.i.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 15, i32 1
  %76 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 15, i32 2
  %77 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %78 = ptrtoint ptr %p.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %vt_node.i.i, ptr %p.0.lcssa.i.i, align 4
  %79 = ptrtoint ptr %cl_parent80 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cl_parent80, align 4
  %vt_tree5.i.i = getelementptr inbounds %struct.hfsc_class, ptr %80, i32 0, i32 14
  tail call void @rb_insert_color(ptr noundef %vt_node.i.i, ptr noundef %vt_tree5.i.i) #14
  %81 = ptrtoint ptr %cl_flags4 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %cl_flags4, align 8
  %83 = and i8 %82, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool51.not = icmp eq i8 %83, 0
  br i1 %tobool51.not, label %vttree_update.exit.if.end55_crit_edge, label %if.then52

vttree_update.exit.if.end55_crit_edge:            ; preds = %vttree_update.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.then52:                                        ; preds = %vttree_update.exit
  %cl_ulimit = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 35
  %84 = ptrtoint ptr %cl_total to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %cl_total, align 16
  %y1.i4 = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 35, i32 1
  %86 = ptrtoint ptr %y1.i4 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %y1.i4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %85, i64 %87)
  %cmp.i5 = icmp ult i64 %85, %87
  br i1 %cmp.i5, label %if.then.i6, label %if.else.i10

if.then.i6:                                       ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  %88 = ptrtoint ptr %cl_ulimit to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %cl_ulimit, align 8
  br label %rtsc_y2x.exit49

if.else.i10:                                      ; preds = %if.then52
  %dy.i7 = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 35, i32 5
  %90 = ptrtoint ptr %dy.i7 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %dy.i7, align 8
  %add.i8 = add i64 %91, %87
  call void @__sanitizer_cov_trace_cmp8(i64 %85, i64 %add.i8)
  %cmp4.not.i9 = icmp ugt i64 %85, %add.i8
  br i1 %cmp4.not.i9, label %if.else15.i36, label %if.then5.i12

if.then5.i12:                                     ; preds = %if.else.i10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %91)
  %cmp7.i11 = icmp eq i64 %91, 0
  %92 = ptrtoint ptr %cl_ulimit to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %cl_ulimit, align 8
  br i1 %cmp7.i11, label %if.then8.i15, label %if.else11.i19

if.then8.i15:                                     ; preds = %if.then5.i12
  call void @__sanitizer_cov_trace_pc() #16
  %dx.i13 = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 35, i32 4
  %94 = ptrtoint ptr %dx.i13 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %dx.i13, align 8
  %add10.i14 = add i64 %95, %93
  br label %rtsc_y2x.exit49

if.else11.i19:                                    ; preds = %if.then5.i12
  %sub.i16 = sub i64 %85, %87
  %ism1.i17 = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 35, i32 3
  %96 = ptrtoint ptr %ism1.i17 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %ism1.i17, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %85, i64 %87)
  %cmp.i.i18 = icmp eq i64 %85, %87
  br i1 %cmp.i.i18, label %if.else11.i19.seg_y2x.exit.i31_crit_edge, label %if.else.i.i21

if.else11.i19.seg_y2x.exit.i31_crit_edge:         ; preds = %if.else11.i19
  call void @__sanitizer_cov_trace_pc() #16
  br label %seg_y2x.exit.i31

if.else.i.i21:                                    ; preds = %if.else11.i19
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %97)
  %cmp1.i.i20 = icmp eq i64 %97, -1
  br i1 %cmp1.i.i20, label %if.else.i.i21.seg_y2x.exit.i31_crit_edge, label %if.else3.i.i28

if.else.i.i21.seg_y2x.exit.i31_crit_edge:         ; preds = %if.else.i.i21
  call void @__sanitizer_cov_trace_pc() #16
  br label %seg_y2x.exit.i31

if.else3.i.i28:                                   ; preds = %if.else.i.i21
  call void @__sanitizer_cov_trace_pc() #16
  %shr.i.i22 = lshr i64 %sub.i16, 14
  %mul.i.i23 = mul i64 %97, %shr.i.i22
  %and.i.i24 = and i64 %sub.i16, 16383
  %mul4.i.i25 = mul i64 %97, %and.i.i24
  %shr5.i.i26 = lshr i64 %mul4.i.i25, 14
  %add.i.i27 = add i64 %shr5.i.i26, %mul.i.i23
  br label %seg_y2x.exit.i31

seg_y2x.exit.i31:                                 ; preds = %if.else3.i.i28, %if.else.i.i21.seg_y2x.exit.i31_crit_edge, %if.else11.i19.seg_y2x.exit.i31_crit_edge
  %x.0.i.i29 = phi i64 [ %add.i.i27, %if.else3.i.i28 ], [ 0, %if.else11.i19.seg_y2x.exit.i31_crit_edge ], [ -1, %if.else.i.i21.seg_y2x.exit.i31_crit_edge ]
  %add14.i30 = add i64 %x.0.i.i29, %93
  br label %rtsc_y2x.exit49

if.else15.i36:                                    ; preds = %if.else.i10
  %98 = ptrtoint ptr %cl_ulimit to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %cl_ulimit, align 8
  %dx17.i32 = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 35, i32 4
  %100 = ptrtoint ptr %dx17.i32 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %dx17.i32, align 8
  %add18.i33 = add i64 %101, %99
  %ism2.i34 = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 35, i32 7
  %102 = ptrtoint ptr %ism2.i34 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %ism2.i34, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %103)
  %cmp1.i45.i35 = icmp eq i64 %103, -1
  br i1 %cmp1.i45.i35, label %if.else15.i36.seg_y2x.exit55.i47_crit_edge, label %if.else3.i53.i44

if.else15.i36.seg_y2x.exit55.i47_crit_edge:       ; preds = %if.else15.i36
  call void @__sanitizer_cov_trace_pc() #16
  br label %seg_y2x.exit55.i47

if.else3.i53.i44:                                 ; preds = %if.else15.i36
  call void @__sanitizer_cov_trace_pc() #16
  %sub22.i37 = sub i64 %85, %add.i8
  %shr.i47.i38 = lshr i64 %sub22.i37, 14
  %mul.i48.i39 = mul i64 %103, %shr.i47.i38
  %and.i49.i40 = and i64 %sub22.i37, 16383
  %mul4.i50.i41 = mul i64 %103, %and.i49.i40
  %shr5.i51.i42 = lshr i64 %mul4.i50.i41, 14
  %add.i52.i43 = add i64 %shr5.i51.i42, %mul.i48.i39
  br label %seg_y2x.exit55.i47

seg_y2x.exit55.i47:                               ; preds = %if.else3.i53.i44, %if.else15.i36.seg_y2x.exit55.i47_crit_edge
  %x.0.i54.i45 = phi i64 [ %add.i52.i43, %if.else3.i53.i44 ], [ -1, %if.else15.i36.seg_y2x.exit55.i47_crit_edge ]
  %add24.i46 = add i64 %add18.i33, %x.0.i54.i45
  br label %rtsc_y2x.exit49

rtsc_y2x.exit49:                                  ; preds = %seg_y2x.exit55.i47, %seg_y2x.exit.i31, %if.then8.i15, %if.then.i6
  %x.0.i48 = phi i64 [ %89, %if.then.i6 ], [ %add10.i14, %if.then8.i15 ], [ %add14.i30, %seg_y2x.exit.i31 ], [ %add24.i46, %seg_y2x.exit55.i47 ]
  %cl_myf = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 24
  %104 = ptrtoint ptr %cl_myf to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %x.0.i48, ptr %cl_myf, align 16
  br label %if.end55

if.end55:                                         ; preds = %rtsc_y2x.exit49, %vttree_update.exit.if.end55_crit_edge
  %cl_myf56 = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 24
  %105 = ptrtoint ptr %cl_myf56 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %cl_myf56, align 16
  %cl_cfmin = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 25
  %107 = ptrtoint ptr %cl_cfmin to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %cl_cfmin, align 8
  %109 = tail call i64 @llvm.umax.i64(i64 %106, i64 %108)
  %cl_f = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 23
  %110 = ptrtoint ptr %cl_f to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %cl_f, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %109, i64 %111)
  %cmp59.not = icmp eq i64 %109, %111
  br i1 %cmp59.not, label %if.end55.for.inc_crit_edge, label %if.then61

if.end55.for.inc_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then61:                                        ; preds = %if.end55
  %112 = ptrtoint ptr %cl_f to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %109, ptr %cl_f, align 8
  %cf_node.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 17
  %113 = ptrtoint ptr %cl_parent80 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cl_parent80, align 4
  %cf_tree.i.i = getelementptr inbounds %struct.hfsc_class, ptr %114, i32 0, i32 16
  tail call void @rb_erase(ptr noundef %cf_node.i.i, ptr noundef %cf_tree.i.i) #14
  %115 = ptrtoint ptr %cl_parent80 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cl_parent80, align 4
  %cf_tree.i3.i = getelementptr inbounds %struct.hfsc_class, ptr %116, i32 0, i32 16
  %117 = ptrtoint ptr %cf_tree.i3.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cf_tree.i3.i, align 4
  %cmp.not15.i.i51 = icmp eq ptr %118, null
  br i1 %cmp.not15.i.i51, label %if.then61.cftree_update.exit_crit_edge, label %while.body.lr.ph.i.i52

if.then61.cftree_update.exit_crit_edge:           ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #16
  br label %cftree_update.exit

while.body.lr.ph.i.i52:                           ; preds = %if.then61
  %119 = ptrtoint ptr %cl_f to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %cl_f, align 8
  br label %while.body.i.i58

while.body.i.i58:                                 ; preds = %while.body.i.i58.while.body.i.i58_crit_edge, %while.body.lr.ph.i.i52
  %121 = phi ptr [ %118, %while.body.lr.ph.i.i52 ], [ %125, %while.body.i.i58.while.body.i.i58_crit_edge ]
  %cl_f1.i.i = getelementptr i8, ptr %121, i32 52
  %122 = ptrtoint ptr %cl_f1.i.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %cl_f1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %120, i64 %123)
  %cmp2.not.i.i53 = icmp ult i64 %120, %123
  %rb_right.i.i54 = getelementptr inbounds %struct.rb_node, ptr %121, i32 0, i32 1
  %rb_left.i.i55 = getelementptr inbounds %struct.rb_node, ptr %121, i32 0, i32 2
  %p.1.i.i56 = select i1 %cmp2.not.i.i53, ptr %rb_left.i.i55, ptr %rb_right.i.i54
  %124 = ptrtoint ptr %p.1.i.i56 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %p.1.i.i56, align 4
  %cmp.not.i.i57 = icmp eq ptr %125, null
  br i1 %cmp.not.i.i57, label %while.cond.while.end_crit_edge.i.i60, label %while.body.i.i58.while.body.i.i58_crit_edge

while.body.i.i58.while.body.i.i58_crit_edge:      ; preds = %while.body.i.i58
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i58

while.cond.while.end_crit_edge.i.i60:             ; preds = %while.body.i.i58
  call void @__sanitizer_cov_trace_pc() #16
  %phi.cast.le.i.i59 = ptrtoint ptr %121 to i32
  br label %cftree_update.exit

cftree_update.exit:                               ; preds = %while.cond.while.end_crit_edge.i.i60, %if.then61.cftree_update.exit_crit_edge
  %parent.0.lcssa.i.i61 = phi i32 [ %phi.cast.le.i.i59, %while.cond.while.end_crit_edge.i.i60 ], [ 0, %if.then61.cftree_update.exit_crit_edge ]
  %p.0.lcssa.i.i62 = phi ptr [ %p.1.i.i56, %while.cond.while.end_crit_edge.i.i60 ], [ %cf_tree.i3.i, %if.then61.cftree_update.exit_crit_edge ]
  %126 = ptrtoint ptr %cf_node.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %parent.0.lcssa.i.i61, ptr %cf_node.i.i, align 4
  %rb_right.i.i.i63 = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 17, i32 1
  %127 = ptrtoint ptr %rb_right.i.i.i63 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %rb_right.i.i.i63, align 4
  %rb_left.i.i.i64 = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.076, i32 0, i32 17, i32 2
  %128 = ptrtoint ptr %rb_left.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %rb_left.i.i.i64, align 4
  %129 = ptrtoint ptr %p.0.lcssa.i.i62 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %cf_node.i.i, ptr %p.0.lcssa.i.i62, align 4
  %130 = ptrtoint ptr %cl_parent80 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %cl_parent80, align 4
  %cf_tree5.i.i = getelementptr inbounds %struct.hfsc_class, ptr %131, i32 0, i32 16
  tail call void @rb_insert_color(ptr noundef %cf_node.i.i, ptr noundef %cf_tree5.i.i) #14
  %132 = ptrtoint ptr %cl_parent80 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cl_parent80, align 4
  %cf_tree.i65 = getelementptr inbounds %struct.hfsc_class, ptr %133, i32 0, i32 16
  %call.i66 = tail call ptr @rb_first(ptr noundef %cf_tree.i65) #14
  %cmp.i67 = icmp eq ptr %call.i66, null
  br i1 %cmp.i67, label %cftree_update.exit.for.inc.sink.split_crit_edge, label %cftree_update.exit.for.inc.sink.split.sink.split_crit_edge

cftree_update.exit.for.inc.sink.split.sink.split_crit_edge: ; preds = %cftree_update.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.sink.split.sink.split

cftree_update.exit.for.inc.sink.split_crit_edge:  ; preds = %cftree_update.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.sink.split

for.inc.sink.split.sink.split:                    ; preds = %cftree_update.exit.for.inc.sink.split.sink.split_crit_edge, %if.end45.for.inc.sink.split.sink.split_crit_edge
  %call.i66.sink = phi ptr [ %call.i, %if.end45.for.inc.sink.split.sink.split_crit_edge ], [ %call.i66, %cftree_update.exit.for.inc.sink.split.sink.split_crit_edge ]
  %.sink84.ph = phi ptr [ %61, %if.end45.for.inc.sink.split.sink.split_crit_edge ], [ %133, %cftree_update.exit.for.inc.sink.split.sink.split_crit_edge ]
  %go_passive.3.ph.ph = phi i32 [ 1, %if.end45.for.inc.sink.split.sink.split_crit_edge ], [ 0, %cftree_update.exit.for.inc.sink.split.sink.split_crit_edge ]
  %cl_f.i68 = getelementptr i8, ptr %call.i66.sink, i32 52
  %134 = ptrtoint ptr %cl_f.i68 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %cl_f.i68, align 8
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %for.inc.sink.split.sink.split, %cftree_update.exit.for.inc.sink.split_crit_edge, %if.end45.for.inc.sink.split_crit_edge
  %.sink84 = phi ptr [ %61, %if.end45.for.inc.sink.split_crit_edge ], [ %133, %cftree_update.exit.for.inc.sink.split_crit_edge ], [ %.sink84.ph, %for.inc.sink.split.sink.split ]
  %.sink.i70.sink = phi i64 [ 0, %if.end45.for.inc.sink.split_crit_edge ], [ 0, %cftree_update.exit.for.inc.sink.split_crit_edge ], [ %135, %for.inc.sink.split.sink.split ]
  %go_passive.3.ph = phi i32 [ 1, %if.end45.for.inc.sink.split_crit_edge ], [ 0, %cftree_update.exit.for.inc.sink.split_crit_edge ], [ %go_passive.3.ph.ph, %for.inc.sink.split.sink.split ]
  %136 = getelementptr inbounds %struct.hfsc_class, ptr %.sink84, i32 0, i32 25
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %.sink.i70.sink, ptr %136, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end55.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %go_passive.3 = phi i32 [ %go_passive.175, %lor.lhs.false.for.inc_crit_edge ], [ 0, %if.end55.for.inc_crit_edge ], [ %go_passive.175, %for.body.for.inc_crit_edge ], [ %go_passive.3.ph, %for.inc.sink.split ]
  %138 = ptrtoint ptr %cl_parent80 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %cl_parent80, align 4
  %cl_parent = getelementptr inbounds %struct.hfsc_class, ptr %139, i32 0, i32 9
  %140 = ptrtoint ptr %cl_parent to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %cl_parent, align 4
  %cmp1.not = icmp eq ptr %141, null
  br i1 %cmp1.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_replace_estimator(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hfsc_change_rsc(ptr nocapture noundef %cl, ptr nocapture noundef readonly %rsc, i64 noundef %cur_time) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_rsc = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 29
  tail call fastcc void @sc2isc(ptr noundef %rsc, ptr noundef %cl_rsc)
  %cl_deadline = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 32
  %cl_cumul = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 19
  %0 = ptrtoint ptr %cl_cumul to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %cl_cumul, align 8
  %2 = ptrtoint ptr %cl_deadline to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %cur_time, ptr %cl_deadline, align 8
  %y2.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 32, i32 1
  %3 = ptrtoint ptr %y2.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %1, ptr %y2.i, align 8
  %4 = ptrtoint ptr %cl_rsc to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %cl_rsc, align 8
  %sm13.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 32, i32 2
  %6 = ptrtoint ptr %sm13.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %sm13.i, align 8
  %ism1.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 29, i32 1
  %7 = ptrtoint ptr %ism1.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ism1.i, align 8
  %ism14.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 32, i32 3
  %9 = ptrtoint ptr %ism14.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %ism14.i, align 8
  %dx.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 29, i32 2
  %10 = ptrtoint ptr %dx.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %dx.i, align 8
  %dx5.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 32, i32 4
  %12 = ptrtoint ptr %dx5.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %dx5.i, align 8
  %dy.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 29, i32 3
  %13 = ptrtoint ptr %dy.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %dy.i, align 8
  %dy6.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 32, i32 5
  %15 = ptrtoint ptr %dy6.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %dy6.i, align 8
  %sm2.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 29, i32 4
  %16 = ptrtoint ptr %sm2.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %sm2.i, align 8
  %sm27.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 32, i32 6
  %18 = ptrtoint ptr %sm27.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %sm27.i, align 8
  %ism2.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 29, i32 5
  %19 = ptrtoint ptr %ism2.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ism2.i, align 8
  %ism28.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 32, i32 7
  %21 = ptrtoint ptr %ism28.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %ism28.i, align 8
  %cl_eligible = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 33
  %22 = call ptr @memcpy(ptr %cl_eligible, ptr %cl_deadline, i32 64)
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %17)
  %cmp.not = icmp ugt i64 %5, %17
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dx = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 33, i32 4
  %23 = call ptr @memset(ptr %dx, i32 0, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cl_flags = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 36
  %24 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cl_flags, align 8
  %26 = or i8 %25, 1
  store i8 %26, ptr %cl_flags, align 8
  ret void
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hfsc_change_fsc(ptr nocapture noundef %cl, ptr nocapture noundef readonly %fsc) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_fsc = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 30
  tail call fastcc void @sc2isc(ptr noundef %fsc, ptr noundef %cl_fsc)
  %cl_virtual = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 34
  %cl_vt = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 22
  %0 = ptrtoint ptr %cl_vt to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %cl_vt, align 16
  %cl_total = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 18
  %2 = ptrtoint ptr %cl_total to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %cl_total, align 16
  %4 = ptrtoint ptr %cl_virtual to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %1, ptr %cl_virtual, align 8
  %y2.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 34, i32 1
  %5 = ptrtoint ptr %y2.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %3, ptr %y2.i, align 8
  %6 = ptrtoint ptr %cl_fsc to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %cl_fsc, align 8
  %sm13.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 34, i32 2
  %8 = ptrtoint ptr %sm13.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %sm13.i, align 8
  %ism1.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 30, i32 1
  %9 = ptrtoint ptr %ism1.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ism1.i, align 8
  %ism14.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 34, i32 3
  %11 = ptrtoint ptr %ism14.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %ism14.i, align 8
  %dx.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 30, i32 2
  %12 = ptrtoint ptr %dx.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %dx.i, align 8
  %dx5.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 34, i32 4
  %14 = ptrtoint ptr %dx5.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %dx5.i, align 8
  %dy.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 30, i32 3
  %15 = ptrtoint ptr %dy.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %dy.i, align 8
  %dy6.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 34, i32 5
  %17 = ptrtoint ptr %dy6.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %dy6.i, align 8
  %sm2.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 30, i32 4
  %18 = ptrtoint ptr %sm2.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %sm2.i, align 8
  %sm27.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 34, i32 6
  %20 = ptrtoint ptr %sm27.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %sm27.i, align 8
  %ism2.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 30, i32 5
  %21 = ptrtoint ptr %ism2.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %ism2.i, align 8
  %ism28.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 34, i32 7
  %23 = ptrtoint ptr %ism28.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %ism28.i, align 8
  %cl_flags = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 36
  %24 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cl_flags, align 8
  %26 = or i8 %25, 2
  store i8 %26, ptr %cl_flags, align 8
  ret void
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hfsc_change_usc(ptr nocapture noundef %cl, ptr nocapture noundef readonly %usc, i64 noundef %cur_time) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_usc = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 31
  tail call fastcc void @sc2isc(ptr noundef %usc, ptr noundef %cl_usc)
  %cl_ulimit = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 35
  %cl_total = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 18
  %0 = ptrtoint ptr %cl_total to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %cl_total, align 16
  %2 = ptrtoint ptr %cl_ulimit to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %cur_time, ptr %cl_ulimit, align 8
  %y2.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 35, i32 1
  %3 = ptrtoint ptr %y2.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %1, ptr %y2.i, align 8
  %4 = ptrtoint ptr %cl_usc to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %cl_usc, align 8
  %sm13.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 35, i32 2
  %6 = ptrtoint ptr %sm13.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %sm13.i, align 8
  %ism1.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 31, i32 1
  %7 = ptrtoint ptr %ism1.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ism1.i, align 8
  %ism14.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 35, i32 3
  %9 = ptrtoint ptr %ism14.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %ism14.i, align 8
  %dx.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 31, i32 2
  %10 = ptrtoint ptr %dx.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %dx.i, align 8
  %dx5.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 35, i32 4
  %12 = ptrtoint ptr %dx5.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %dx5.i, align 8
  %dy.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 31, i32 3
  %13 = ptrtoint ptr %dy.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %dy.i, align 8
  %dy6.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 35, i32 5
  %15 = ptrtoint ptr %dy6.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %dy6.i, align 8
  %sm2.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 31, i32 4
  %16 = ptrtoint ptr %sm2.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %sm2.i, align 8
  %sm27.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 35, i32 6
  %18 = ptrtoint ptr %sm27.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %sm27.i, align 8
  %ism2.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 31, i32 5
  %19 = ptrtoint ptr %ism2.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ism2.i, align 8
  %ism28.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 35, i32 7
  %21 = ptrtoint ptr %ism28.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %ism28.i, align 8
  %cl_flags = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 36
  %22 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cl_flags, align 8
  %24 = or i8 %23, 4
  store i8 %24, ptr %cl_flags, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_ed(ptr noundef %cl, i32 noundef %next_len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_eligible = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 33
  %cl_cumul = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 19
  %0 = ptrtoint ptr %cl_cumul to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %cl_cumul, align 8
  %y1.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 33, i32 1
  %2 = ptrtoint ptr %y1.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %y1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp.i = icmp ult i64 %1, %3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %cl_eligible to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %cl_eligible, align 8
  br label %rtsc_y2x.exit

if.else.i:                                        ; preds = %entry
  %dy.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 33, i32 5
  %6 = ptrtoint ptr %dy.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dy.i, align 8
  %add.i = add i64 %7, %3
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %add.i)
  %cmp4.not.i = icmp ugt i64 %1, %add.i
  br i1 %cmp4.not.i, label %if.else15.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp7.i = icmp eq i64 %7, 0
  %8 = ptrtoint ptr %cl_eligible to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %cl_eligible, align 8
  br i1 %cmp7.i, label %if.then8.i, label %if.else11.i

if.then8.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  %dx.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 33, i32 4
  %10 = ptrtoint ptr %dx.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %dx.i, align 8
  %add10.i = add i64 %11, %9
  br label %rtsc_y2x.exit

if.else11.i:                                      ; preds = %if.then5.i
  %sub.i = sub i64 %1, %3
  %ism1.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 33, i32 3
  %12 = ptrtoint ptr %ism1.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ism1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp.i.i = icmp eq i64 %1, %3
  br i1 %cmp.i.i, label %if.else11.i.seg_y2x.exit.i_crit_edge, label %if.else.i.i

if.else11.i.seg_y2x.exit.i_crit_edge:             ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seg_y2x.exit.i

if.else.i.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %13)
  %cmp1.i.i = icmp eq i64 %13, -1
  br i1 %cmp1.i.i, label %if.else.i.i.seg_y2x.exit.i_crit_edge, label %if.else3.i.i

if.else.i.i.seg_y2x.exit.i_crit_edge:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seg_y2x.exit.i

if.else3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %shr.i.i = lshr i64 %sub.i, 14
  %mul.i.i = mul i64 %13, %shr.i.i
  %and.i.i = and i64 %sub.i, 16383
  %mul4.i.i = mul i64 %13, %and.i.i
  %shr5.i.i = lshr i64 %mul4.i.i, 14
  %add.i.i = add i64 %shr5.i.i, %mul.i.i
  br label %seg_y2x.exit.i

seg_y2x.exit.i:                                   ; preds = %if.else3.i.i, %if.else.i.i.seg_y2x.exit.i_crit_edge, %if.else11.i.seg_y2x.exit.i_crit_edge
  %x.0.i.i = phi i64 [ %add.i.i, %if.else3.i.i ], [ 0, %if.else11.i.seg_y2x.exit.i_crit_edge ], [ -1, %if.else.i.i.seg_y2x.exit.i_crit_edge ]
  %add14.i = add i64 %x.0.i.i, %9
  br label %rtsc_y2x.exit

if.else15.i:                                      ; preds = %if.else.i
  %14 = ptrtoint ptr %cl_eligible to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %cl_eligible, align 8
  %dx17.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 33, i32 4
  %16 = ptrtoint ptr %dx17.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %dx17.i, align 8
  %add18.i = add i64 %17, %15
  %ism2.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 33, i32 7
  %18 = ptrtoint ptr %ism2.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ism2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %19)
  %cmp1.i45.i = icmp eq i64 %19, -1
  br i1 %cmp1.i45.i, label %if.else15.i.seg_y2x.exit55.i_crit_edge, label %if.else3.i53.i

if.else15.i.seg_y2x.exit55.i_crit_edge:           ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seg_y2x.exit55.i

if.else3.i53.i:                                   ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub22.i = sub i64 %1, %add.i
  %shr.i47.i = lshr i64 %sub22.i, 14
  %mul.i48.i = mul i64 %19, %shr.i47.i
  %and.i49.i = and i64 %sub22.i, 16383
  %mul4.i50.i = mul i64 %19, %and.i49.i
  %shr5.i51.i = lshr i64 %mul4.i50.i, 14
  %add.i52.i = add i64 %shr5.i51.i, %mul.i48.i
  br label %seg_y2x.exit55.i

seg_y2x.exit55.i:                                 ; preds = %if.else3.i53.i, %if.else15.i.seg_y2x.exit55.i_crit_edge
  %x.0.i54.i = phi i64 [ %add.i52.i, %if.else3.i53.i ], [ -1, %if.else15.i.seg_y2x.exit55.i_crit_edge ]
  %add24.i = add i64 %add18.i, %x.0.i54.i
  br label %rtsc_y2x.exit

rtsc_y2x.exit:                                    ; preds = %seg_y2x.exit55.i, %seg_y2x.exit.i, %if.then8.i, %if.then.i
  %x.0.i = phi i64 [ %5, %if.then.i ], [ %add10.i, %if.then8.i ], [ %add14.i, %seg_y2x.exit.i ], [ %add24.i, %seg_y2x.exit55.i ]
  %cl_e = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 21
  %20 = ptrtoint ptr %cl_e to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %x.0.i, ptr %cl_e, align 8
  %cl_deadline = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 32
  %conv = zext i32 %next_len to i64
  %add = add i64 %1, %conv
  %y1.i9 = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 32, i32 1
  %21 = ptrtoint ptr %y1.i9 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %y1.i9, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %22)
  %cmp.i10 = icmp ult i64 %add, %22
  br i1 %cmp.i10, label %if.then.i11, label %if.else.i15

if.then.i11:                                      ; preds = %rtsc_y2x.exit
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %cl_deadline to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %cl_deadline, align 8
  br label %rtsc_y2x.exit54

if.else.i15:                                      ; preds = %rtsc_y2x.exit
  %dy.i12 = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 32, i32 5
  %25 = ptrtoint ptr %dy.i12 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %dy.i12, align 8
  %add.i13 = add i64 %26, %22
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add.i13)
  %cmp4.not.i14 = icmp ugt i64 %add, %add.i13
  br i1 %cmp4.not.i14, label %if.else15.i41, label %if.then5.i17

if.then5.i17:                                     ; preds = %if.else.i15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %cmp7.i16 = icmp eq i64 %26, 0
  %27 = ptrtoint ptr %cl_deadline to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %cl_deadline, align 8
  br i1 %cmp7.i16, label %if.then8.i20, label %if.else11.i24

if.then8.i20:                                     ; preds = %if.then5.i17
  call void @__sanitizer_cov_trace_pc() #16
  %dx.i18 = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 32, i32 4
  %29 = ptrtoint ptr %dx.i18 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %dx.i18, align 8
  %add10.i19 = add i64 %30, %28
  br label %rtsc_y2x.exit54

if.else11.i24:                                    ; preds = %if.then5.i17
  %sub.i21 = sub i64 %add, %22
  %ism1.i22 = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 32, i32 3
  %31 = ptrtoint ptr %ism1.i22 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ism1.i22, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %22)
  %cmp.i.i23 = icmp eq i64 %add, %22
  br i1 %cmp.i.i23, label %if.else11.i24.seg_y2x.exit.i36_crit_edge, label %if.else.i.i26

if.else11.i24.seg_y2x.exit.i36_crit_edge:         ; preds = %if.else11.i24
  call void @__sanitizer_cov_trace_pc() #16
  br label %seg_y2x.exit.i36

if.else.i.i26:                                    ; preds = %if.else11.i24
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %32)
  %cmp1.i.i25 = icmp eq i64 %32, -1
  br i1 %cmp1.i.i25, label %if.else.i.i26.seg_y2x.exit.i36_crit_edge, label %if.else3.i.i33

if.else.i.i26.seg_y2x.exit.i36_crit_edge:         ; preds = %if.else.i.i26
  call void @__sanitizer_cov_trace_pc() #16
  br label %seg_y2x.exit.i36

if.else3.i.i33:                                   ; preds = %if.else.i.i26
  call void @__sanitizer_cov_trace_pc() #16
  %shr.i.i27 = lshr i64 %sub.i21, 14
  %mul.i.i28 = mul i64 %32, %shr.i.i27
  %and.i.i29 = and i64 %sub.i21, 16383
  %mul4.i.i30 = mul i64 %32, %and.i.i29
  %shr5.i.i31 = lshr i64 %mul4.i.i30, 14
  %add.i.i32 = add i64 %shr5.i.i31, %mul.i.i28
  br label %seg_y2x.exit.i36

seg_y2x.exit.i36:                                 ; preds = %if.else3.i.i33, %if.else.i.i26.seg_y2x.exit.i36_crit_edge, %if.else11.i24.seg_y2x.exit.i36_crit_edge
  %x.0.i.i34 = phi i64 [ %add.i.i32, %if.else3.i.i33 ], [ 0, %if.else11.i24.seg_y2x.exit.i36_crit_edge ], [ -1, %if.else.i.i26.seg_y2x.exit.i36_crit_edge ]
  %add14.i35 = add i64 %x.0.i.i34, %28
  br label %rtsc_y2x.exit54

if.else15.i41:                                    ; preds = %if.else.i15
  %33 = ptrtoint ptr %cl_deadline to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %cl_deadline, align 8
  %dx17.i37 = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 32, i32 4
  %35 = ptrtoint ptr %dx17.i37 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %dx17.i37, align 8
  %add18.i38 = add i64 %36, %34
  %ism2.i39 = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 32, i32 7
  %37 = ptrtoint ptr %ism2.i39 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %ism2.i39, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %38)
  %cmp1.i45.i40 = icmp eq i64 %38, -1
  br i1 %cmp1.i45.i40, label %if.else15.i41.seg_y2x.exit55.i52_crit_edge, label %if.else3.i53.i49

if.else15.i41.seg_y2x.exit55.i52_crit_edge:       ; preds = %if.else15.i41
  call void @__sanitizer_cov_trace_pc() #16
  br label %seg_y2x.exit55.i52

if.else3.i53.i49:                                 ; preds = %if.else15.i41
  call void @__sanitizer_cov_trace_pc() #16
  %sub22.i42 = sub i64 %add, %add.i13
  %shr.i47.i43 = lshr i64 %sub22.i42, 14
  %mul.i48.i44 = mul i64 %38, %shr.i47.i43
  %and.i49.i45 = and i64 %sub22.i42, 16383
  %mul4.i50.i46 = mul i64 %38, %and.i49.i45
  %shr5.i51.i47 = lshr i64 %mul4.i50.i46, 14
  %add.i52.i48 = add i64 %shr5.i51.i47, %mul.i48.i44
  br label %seg_y2x.exit55.i52

seg_y2x.exit55.i52:                               ; preds = %if.else3.i53.i49, %if.else15.i41.seg_y2x.exit55.i52_crit_edge
  %x.0.i54.i50 = phi i64 [ %add.i52.i48, %if.else3.i53.i49 ], [ -1, %if.else15.i41.seg_y2x.exit55.i52_crit_edge ]
  %add24.i51 = add i64 %add18.i38, %x.0.i54.i50
  br label %rtsc_y2x.exit54

rtsc_y2x.exit54:                                  ; preds = %seg_y2x.exit55.i52, %seg_y2x.exit.i36, %if.then8.i20, %if.then.i11
  %x.0.i53 = phi i64 [ %24, %if.then.i11 ], [ %add10.i19, %if.then8.i20 ], [ %add14.i35, %seg_y2x.exit.i36 ], [ %add24.i51, %seg_y2x.exit55.i52 ]
  %cl_d = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 20
  %39 = ptrtoint ptr %cl_d to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %x.0.i53, ptr %cl_d, align 16
  %el_node.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 13
  %sched.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 8
  %40 = ptrtoint ptr %sched.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sched.i.i, align 8
  %eligible.i.i = getelementptr inbounds %struct.hfsc_sched, ptr %41, i32 0, i32 4
  tail call void @rb_erase(ptr noundef %el_node.i.i, ptr noundef %eligible.i.i) #14
  %42 = ptrtoint ptr %sched.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sched.i.i, align 8
  %eligible.i3.i = getelementptr inbounds %struct.hfsc_sched, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %eligible.i3.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %eligible.i3.i, align 4
  %cmp.not15.i.i = icmp eq ptr %45, null
  br i1 %cmp.not15.i.i, label %rtsc_y2x.exit54.eltree_update.exit_crit_edge, label %while.body.lr.ph.i.i

rtsc_y2x.exit54.eltree_update.exit_crit_edge:     ; preds = %rtsc_y2x.exit54
  call void @__sanitizer_cov_trace_pc() #16
  br label %eltree_update.exit

while.body.lr.ph.i.i:                             ; preds = %rtsc_y2x.exit54
  %46 = ptrtoint ptr %cl_e to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %cl_e, align 8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %48 = phi ptr [ %45, %while.body.lr.ph.i.i ], [ %52, %while.body.i.i.while.body.i.i_crit_edge ]
  %cl_e1.i.i = getelementptr i8, ptr %48, i32 68
  %49 = ptrtoint ptr %cl_e1.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %cl_e1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %50)
  %cmp2.not.i.i = icmp ult i64 %47, %50
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %48, i32 0, i32 1
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %48, i32 0, i32 2
  %p.1.i.i = select i1 %cmp2.not.i.i, ptr %rb_left.i.i, ptr %rb_right.i.i
  %51 = ptrtoint ptr %p.1.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %p.1.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %52, null
  br i1 %cmp.not.i.i, label %while.cond.while.end_crit_edge.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %phi.cast.le.i.i = ptrtoint ptr %48 to i32
  br label %eltree_update.exit

eltree_update.exit:                               ; preds = %while.cond.while.end_crit_edge.i.i, %rtsc_y2x.exit54.eltree_update.exit_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %rtsc_y2x.exit54.eltree_update.exit_crit_edge ]
  %p.0.lcssa.i.i = phi ptr [ %p.1.i.i, %while.cond.while.end_crit_edge.i.i ], [ %eligible.i3.i, %rtsc_y2x.exit54.eltree_update.exit_crit_edge ]
  %53 = ptrtoint ptr %el_node.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %parent.0.lcssa.i.i, ptr %el_node.i.i, align 4
  %rb_right.i.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 13, i32 1
  %54 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 13, i32 2
  %55 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %56 = ptrtoint ptr %p.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %el_node.i.i, ptr %p.0.lcssa.i.i, align 4
  %57 = ptrtoint ptr %sched.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sched.i.i, align 8
  %eligible5.i.i = getelementptr inbounds %struct.hfsc_sched, ptr %58, i32 0, i32 4
  tail call void @rb_insert_color(ptr noundef %el_node.i.i, ptr noundef %eligible5.i.i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_ed(ptr noundef %cl, i32 noundef %next_len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i64 @ktime_get() #14
  %shr.i = lshr i64 %call.i.i, 6
  %cl_deadline = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 32
  %cl_rsc = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 29
  %cl_cumul = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 19
  %0 = ptrtoint ptr %cl_cumul to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %cl_cumul, align 8
  tail call fastcc void @rtsc_min(ptr noundef %cl_deadline, ptr noundef %cl_rsc, i64 noundef %shr.i, i64 noundef %1)
  %cl_eligible = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 33
  %2 = call ptr @memcpy(ptr %cl_eligible, ptr %cl_deadline, i32 64)
  %3 = ptrtoint ptr %cl_rsc to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %cl_rsc, align 8
  %sm2 = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 29, i32 4
  %5 = ptrtoint ptr %sm2 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %sm2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %6)
  %cmp.not = icmp ugt i64 %4, %6
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dx = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 33, i32 4
  %7 = call ptr @memset(ptr %dx, i32 0, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %cl_cumul to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %cl_cumul, align 8
  %y1.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 33, i32 1
  %10 = ptrtoint ptr %y1.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %y1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp.i = icmp ult i64 %9, %11
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %cl_eligible to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %cl_eligible, align 8
  br label %rtsc_y2x.exit

if.else.i:                                        ; preds = %if.end
  %dy.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 33, i32 5
  %14 = ptrtoint ptr %dy.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dy.i, align 8
  %add.i = add i64 %15, %11
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %add.i)
  %cmp4.not.i = icmp ugt i64 %9, %add.i
  br i1 %cmp4.not.i, label %if.else15.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %cmp7.i = icmp eq i64 %15, 0
  %16 = ptrtoint ptr %cl_eligible to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %cl_eligible, align 8
  br i1 %cmp7.i, label %if.then8.i, label %if.else11.i

if.then8.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  %dx.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 33, i32 4
  %18 = ptrtoint ptr %dx.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %dx.i, align 8
  %add10.i = add i64 %19, %17
  br label %rtsc_y2x.exit

if.else11.i:                                      ; preds = %if.then5.i
  %sub.i = sub i64 %9, %11
  %ism1.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 33, i32 3
  %20 = ptrtoint ptr %ism1.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ism1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp.i.i = icmp eq i64 %9, %11
  br i1 %cmp.i.i, label %if.else11.i.seg_y2x.exit.i_crit_edge, label %if.else.i.i

if.else11.i.seg_y2x.exit.i_crit_edge:             ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seg_y2x.exit.i

if.else.i.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %21)
  %cmp1.i.i = icmp eq i64 %21, -1
  br i1 %cmp1.i.i, label %if.else.i.i.seg_y2x.exit.i_crit_edge, label %if.else3.i.i

if.else.i.i.seg_y2x.exit.i_crit_edge:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seg_y2x.exit.i

if.else3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %shr.i.i = lshr i64 %sub.i, 14
  %mul.i.i = mul i64 %21, %shr.i.i
  %and.i.i = and i64 %sub.i, 16383
  %mul4.i.i = mul i64 %21, %and.i.i
  %shr5.i.i = lshr i64 %mul4.i.i, 14
  %add.i.i = add i64 %shr5.i.i, %mul.i.i
  br label %seg_y2x.exit.i

seg_y2x.exit.i:                                   ; preds = %if.else3.i.i, %if.else.i.i.seg_y2x.exit.i_crit_edge, %if.else11.i.seg_y2x.exit.i_crit_edge
  %x.0.i.i = phi i64 [ %add.i.i, %if.else3.i.i ], [ 0, %if.else11.i.seg_y2x.exit.i_crit_edge ], [ -1, %if.else.i.i.seg_y2x.exit.i_crit_edge ]
  %add14.i = add i64 %x.0.i.i, %17
  br label %rtsc_y2x.exit

if.else15.i:                                      ; preds = %if.else.i
  %22 = ptrtoint ptr %cl_eligible to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %cl_eligible, align 8
  %dx17.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 33, i32 4
  %24 = ptrtoint ptr %dx17.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %dx17.i, align 8
  %add18.i = add i64 %25, %23
  %ism2.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 33, i32 7
  %26 = ptrtoint ptr %ism2.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ism2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %27)
  %cmp1.i45.i = icmp eq i64 %27, -1
  br i1 %cmp1.i45.i, label %if.else15.i.seg_y2x.exit55.i_crit_edge, label %if.else3.i53.i

if.else15.i.seg_y2x.exit55.i_crit_edge:           ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seg_y2x.exit55.i

if.else3.i53.i:                                   ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub22.i = sub i64 %9, %add.i
  %shr.i47.i = lshr i64 %sub22.i, 14
  %mul.i48.i = mul i64 %27, %shr.i47.i
  %and.i49.i = and i64 %sub22.i, 16383
  %mul4.i50.i = mul i64 %27, %and.i49.i
  %shr5.i51.i = lshr i64 %mul4.i50.i, 14
  %add.i52.i = add i64 %shr5.i51.i, %mul.i48.i
  br label %seg_y2x.exit55.i

seg_y2x.exit55.i:                                 ; preds = %if.else3.i53.i, %if.else15.i.seg_y2x.exit55.i_crit_edge
  %x.0.i54.i = phi i64 [ %add.i52.i, %if.else3.i53.i ], [ -1, %if.else15.i.seg_y2x.exit55.i_crit_edge ]
  %add24.i = add i64 %add18.i, %x.0.i54.i
  br label %rtsc_y2x.exit

rtsc_y2x.exit:                                    ; preds = %seg_y2x.exit55.i, %seg_y2x.exit.i, %if.then8.i, %if.then.i
  %x.0.i = phi i64 [ %13, %if.then.i ], [ %add10.i, %if.then8.i ], [ %add14.i, %seg_y2x.exit.i ], [ %add24.i, %seg_y2x.exit55.i ]
  %cl_e = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 21
  %28 = ptrtoint ptr %cl_e to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %x.0.i, ptr %cl_e, align 8
  %conv = zext i32 %next_len to i64
  %add = add i64 %9, %conv
  %y1.i27 = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 32, i32 1
  %29 = ptrtoint ptr %y1.i27 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %y1.i27, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %30)
  %cmp.i28 = icmp ult i64 %add, %30
  br i1 %cmp.i28, label %if.then.i29, label %if.else.i33

if.then.i29:                                      ; preds = %rtsc_y2x.exit
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %cl_deadline to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %cl_deadline, align 8
  br label %rtsc_y2x.exit72

if.else.i33:                                      ; preds = %rtsc_y2x.exit
  %dy.i30 = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 32, i32 5
  %33 = ptrtoint ptr %dy.i30 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %dy.i30, align 8
  %add.i31 = add i64 %34, %30
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add.i31)
  %cmp4.not.i32 = icmp ugt i64 %add, %add.i31
  br i1 %cmp4.not.i32, label %if.else15.i59, label %if.then5.i35

if.then5.i35:                                     ; preds = %if.else.i33
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %cmp7.i34 = icmp eq i64 %34, 0
  %35 = ptrtoint ptr %cl_deadline to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %cl_deadline, align 8
  br i1 %cmp7.i34, label %if.then8.i38, label %if.else11.i42

if.then8.i38:                                     ; preds = %if.then5.i35
  call void @__sanitizer_cov_trace_pc() #16
  %dx.i36 = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 32, i32 4
  %37 = ptrtoint ptr %dx.i36 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %dx.i36, align 8
  %add10.i37 = add i64 %38, %36
  br label %rtsc_y2x.exit72

if.else11.i42:                                    ; preds = %if.then5.i35
  %sub.i39 = sub i64 %add, %30
  %ism1.i40 = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 32, i32 3
  %39 = ptrtoint ptr %ism1.i40 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %ism1.i40, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %30)
  %cmp.i.i41 = icmp eq i64 %add, %30
  br i1 %cmp.i.i41, label %if.else11.i42.seg_y2x.exit.i54_crit_edge, label %if.else.i.i44

if.else11.i42.seg_y2x.exit.i54_crit_edge:         ; preds = %if.else11.i42
  call void @__sanitizer_cov_trace_pc() #16
  br label %seg_y2x.exit.i54

if.else.i.i44:                                    ; preds = %if.else11.i42
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %40)
  %cmp1.i.i43 = icmp eq i64 %40, -1
  br i1 %cmp1.i.i43, label %if.else.i.i44.seg_y2x.exit.i54_crit_edge, label %if.else3.i.i51

if.else.i.i44.seg_y2x.exit.i54_crit_edge:         ; preds = %if.else.i.i44
  call void @__sanitizer_cov_trace_pc() #16
  br label %seg_y2x.exit.i54

if.else3.i.i51:                                   ; preds = %if.else.i.i44
  call void @__sanitizer_cov_trace_pc() #16
  %shr.i.i45 = lshr i64 %sub.i39, 14
  %mul.i.i46 = mul i64 %40, %shr.i.i45
  %and.i.i47 = and i64 %sub.i39, 16383
  %mul4.i.i48 = mul i64 %40, %and.i.i47
  %shr5.i.i49 = lshr i64 %mul4.i.i48, 14
  %add.i.i50 = add i64 %shr5.i.i49, %mul.i.i46
  br label %seg_y2x.exit.i54

seg_y2x.exit.i54:                                 ; preds = %if.else3.i.i51, %if.else.i.i44.seg_y2x.exit.i54_crit_edge, %if.else11.i42.seg_y2x.exit.i54_crit_edge
  %x.0.i.i52 = phi i64 [ %add.i.i50, %if.else3.i.i51 ], [ 0, %if.else11.i42.seg_y2x.exit.i54_crit_edge ], [ -1, %if.else.i.i44.seg_y2x.exit.i54_crit_edge ]
  %add14.i53 = add i64 %x.0.i.i52, %36
  br label %rtsc_y2x.exit72

if.else15.i59:                                    ; preds = %if.else.i33
  %41 = ptrtoint ptr %cl_deadline to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %cl_deadline, align 8
  %dx17.i55 = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 32, i32 4
  %43 = ptrtoint ptr %dx17.i55 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %dx17.i55, align 8
  %add18.i56 = add i64 %44, %42
  %ism2.i57 = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 32, i32 7
  %45 = ptrtoint ptr %ism2.i57 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %ism2.i57, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %46)
  %cmp1.i45.i58 = icmp eq i64 %46, -1
  br i1 %cmp1.i45.i58, label %if.else15.i59.seg_y2x.exit55.i70_crit_edge, label %if.else3.i53.i67

if.else15.i59.seg_y2x.exit55.i70_crit_edge:       ; preds = %if.else15.i59
  call void @__sanitizer_cov_trace_pc() #16
  br label %seg_y2x.exit55.i70

if.else3.i53.i67:                                 ; preds = %if.else15.i59
  call void @__sanitizer_cov_trace_pc() #16
  %sub22.i60 = sub i64 %add, %add.i31
  %shr.i47.i61 = lshr i64 %sub22.i60, 14
  %mul.i48.i62 = mul i64 %46, %shr.i47.i61
  %and.i49.i63 = and i64 %sub22.i60, 16383
  %mul4.i50.i64 = mul i64 %46, %and.i49.i63
  %shr5.i51.i65 = lshr i64 %mul4.i50.i64, 14
  %add.i52.i66 = add i64 %shr5.i51.i65, %mul.i48.i62
  br label %seg_y2x.exit55.i70

seg_y2x.exit55.i70:                               ; preds = %if.else3.i53.i67, %if.else15.i59.seg_y2x.exit55.i70_crit_edge
  %x.0.i54.i68 = phi i64 [ %add.i52.i66, %if.else3.i53.i67 ], [ -1, %if.else15.i59.seg_y2x.exit55.i70_crit_edge ]
  %add24.i69 = add i64 %add18.i56, %x.0.i54.i68
  br label %rtsc_y2x.exit72

rtsc_y2x.exit72:                                  ; preds = %seg_y2x.exit55.i70, %seg_y2x.exit.i54, %if.then8.i38, %if.then.i29
  %x.0.i71 = phi i64 [ %32, %if.then.i29 ], [ %add10.i37, %if.then8.i38 ], [ %add14.i53, %seg_y2x.exit.i54 ], [ %add24.i69, %seg_y2x.exit55.i70 ]
  %cl_d = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 20
  %47 = ptrtoint ptr %cl_d to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %x.0.i71, ptr %cl_d, align 16
  %sched.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 8
  %48 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sched.i, align 8
  %eligible.i = getelementptr inbounds %struct.hfsc_sched, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %eligible.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %eligible.i, align 4
  %cmp.not15.i = icmp eq ptr %51, null
  br i1 %cmp.not15.i, label %rtsc_y2x.exit72.eltree_insert.exit_crit_edge, label %rtsc_y2x.exit72.while.body.i_crit_edge

rtsc_y2x.exit72.while.body.i_crit_edge:           ; preds = %rtsc_y2x.exit72
  br label %while.body.i

rtsc_y2x.exit72.eltree_insert.exit_crit_edge:     ; preds = %rtsc_y2x.exit72
  call void @__sanitizer_cov_trace_pc() #16
  br label %eltree_insert.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %rtsc_y2x.exit72.while.body.i_crit_edge
  %52 = phi ptr [ %56, %while.body.i.while.body.i_crit_edge ], [ %51, %rtsc_y2x.exit72.while.body.i_crit_edge ]
  %cl_e1.i = getelementptr i8, ptr %52, i32 68
  %53 = ptrtoint ptr %cl_e1.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %cl_e1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %x.0.i, i64 %54)
  %cmp2.not.i = icmp ult i64 %x.0.i, %54
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %52, i32 0, i32 1
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %52, i32 0, i32 2
  %p.1.i = select i1 %cmp2.not.i, ptr %rb_left.i, ptr %rb_right.i
  %55 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %p.1.i, align 4
  %cmp.not.i = icmp eq ptr %56, null
  br i1 %cmp.not.i, label %while.cond.while.end_crit_edge.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %phi.cast.le.i = ptrtoint ptr %52 to i32
  br label %eltree_insert.exit

eltree_insert.exit:                               ; preds = %while.cond.while.end_crit_edge.i, %rtsc_y2x.exit72.eltree_insert.exit_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %rtsc_y2x.exit72.eltree_insert.exit_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %eligible.i, %rtsc_y2x.exit72.eltree_insert.exit_crit_edge ]
  %el_node.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 13
  %57 = ptrtoint ptr %el_node.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %parent.0.lcssa.i, ptr %el_node.i, align 4
  %rb_right.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 13, i32 1
  %58 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 13, i32 2
  %59 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %rb_left.i.i, align 4
  %60 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %el_node.i, ptr %p.0.lcssa.i, align 4
  %61 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sched.i, align 8
  %eligible5.i = getelementptr inbounds %struct.hfsc_sched, ptr %62, i32 0, i32 4
  tail call void @rb_insert_color(ptr noundef %el_node.i, ptr noundef %eligible5.i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_vf(ptr noundef %cl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_parent27 = getelementptr inbounds %struct.hfsc_class, ptr %cl, i32 0, i32 9
  %0 = ptrtoint ptr %cl_parent27 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl_parent27, align 4
  %cmp.not28 = icmp eq ptr %1, null
  br i1 %cmp.not28, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %update_cfmin.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %cl_parent34 = phi ptr [ %cl_parent, %update_cfmin.exit.for.body_crit_edge ], [ %cl_parent27, %entry.for.body_crit_edge ]
  %cl.addr.031 = phi ptr [ %135, %update_cfmin.exit.for.body_crit_edge ], [ %cl, %entry.for.body_crit_edge ]
  %go_active.030 = phi i32 [ %go_active.124, %update_cfmin.exit.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %cur_time.029 = phi i64 [ %cur_time.2, %update_cfmin.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %go_active.030)
  %tobool.not = icmp eq i32 %go_active.030, 0
  br i1 %tobool.not, label %for.body.if.end51_crit_edge, label %land.lhs.true

for.body.if.end51_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

land.lhs.true:                                    ; preds = %for.body
  %cl_nactive = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 39
  %2 = ptrtoint ptr %cl_nactive to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cl_nactive, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %cl_nactive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then3, label %land.lhs.true.if.end51_crit_edge

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then3:                                         ; preds = %land.lhs.true
  %4 = ptrtoint ptr %cl_parent34 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cl_parent34, align 4
  %vt_tree = getelementptr inbounds %struct.hfsc_class, ptr %5, i32 0, i32 14
  %call = tail call ptr @rb_last(ptr noundef %vt_tree) #14
  %cmp5.not = icmp eq ptr %call, null
  br i1 %cmp5.not, label %if.else20, label %if.then6

if.then6:                                         ; preds = %if.then3
  %cl_vt = getelementptr i8, ptr %call, i32 60
  %6 = ptrtoint ptr %cl_vt to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %cl_vt, align 16
  %8 = ptrtoint ptr %cl_parent34 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cl_parent34, align 4
  %cl_cvtmin = getelementptr inbounds %struct.hfsc_class, ptr %9, i32 0, i32 26
  %10 = ptrtoint ptr %cl_cvtmin to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %cl_cvtmin, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp8.not = icmp eq i64 %11, 0
  %add = add i64 %11, %7
  %div1 = lshr i64 %add, 1
  %vt.0 = select i1 %cmp8.not, i64 %7, i64 %div1
  %cl_vtperiod = getelementptr inbounds %struct.hfsc_class, ptr %9, i32 0, i32 37
  %12 = ptrtoint ptr %cl_vtperiod to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cl_vtperiod, align 4
  %cl_parentperiod = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 38
  %14 = ptrtoint ptr %cl_parentperiod to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cl_parentperiod, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp14.not = icmp eq i32 %13, %15
  br i1 %cmp14.not, label %lor.lhs.false, label %if.then6.if.then17_crit_edge

if.then6.if.then17_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.then6
  %cl_vt15 = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 22
  %16 = ptrtoint ptr %cl_vt15 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %cl_vt15, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %vt.0, i64 %17)
  %cmp16 = icmp ugt i64 %vt.0, %17
  br i1 %cmp16, label %lor.lhs.false.if.then17_crit_edge, label %lor.lhs.false.if.end25_crit_edge

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.then6.if.then17_crit_edge
  %cl_vt18 = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 22
  %18 = ptrtoint ptr %cl_vt18 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %vt.0, ptr %cl_vt18, align 16
  br label %if.end25

if.else20:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %cl_parent34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cl_parent34, align 4
  %cl_cvtoff = getelementptr inbounds %struct.hfsc_class, ptr %20, i32 0, i32 28
  %21 = ptrtoint ptr %cl_cvtoff to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %cl_cvtoff, align 16
  %cl_vt22 = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 22
  %23 = ptrtoint ptr %cl_vt22 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %cl_vt22, align 16
  %cl_cvtmin24 = getelementptr inbounds %struct.hfsc_class, ptr %20, i32 0, i32 26
  %24 = ptrtoint ptr %cl_cvtmin24 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %cl_cvtmin24, align 16
  br label %if.end25

if.end25:                                         ; preds = %if.else20, %if.then17, %lor.lhs.false.if.end25_crit_edge
  %cl_virtual = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 34
  %cl_fsc = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 30
  %cl_vt26 = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 22
  %25 = ptrtoint ptr %cl_vt26 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %cl_vt26, align 16
  %cl_total = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 18
  %27 = ptrtoint ptr %cl_total to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %cl_total, align 16
  tail call fastcc void @rtsc_min(ptr noundef %cl_virtual, ptr noundef %cl_fsc, i64 noundef %26, i64 noundef %28)
  %cl_vtadj = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 27
  %29 = ptrtoint ptr %cl_vtadj to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %cl_vtadj, align 8
  %cl_vtperiod27 = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 37
  %30 = ptrtoint ptr %cl_vtperiod27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cl_vtperiod27, align 4
  %inc28 = add i32 %31, 1
  store i32 %inc28, ptr %cl_vtperiod27, align 4
  %32 = ptrtoint ptr %cl_parent34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cl_parent34, align 4
  %cl_vtperiod30 = getelementptr inbounds %struct.hfsc_class, ptr %33, i32 0, i32 37
  %34 = ptrtoint ptr %cl_vtperiod30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cl_vtperiod30, align 4
  %cl_parentperiod31 = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 38
  %36 = ptrtoint ptr %cl_parentperiod31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %cl_parentperiod31, align 16
  %cl_nactive33 = getelementptr inbounds %struct.hfsc_class, ptr %33, i32 0, i32 39
  %37 = ptrtoint ptr %cl_nactive33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cl_nactive33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp34 = icmp eq i32 %38, 0
  br i1 %cmp34, label %if.then35, label %if.end25.if.end38_crit_edge

if.end25.if.end38_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then35:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %inc37 = add i32 %35, 1
  %39 = ptrtoint ptr %cl_parentperiod31 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %inc37, ptr %cl_parentperiod31, align 16
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end25.if.end38_crit_edge
  %cl_f = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 23
  %40 = ptrtoint ptr %cl_f to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 0, ptr %cl_f, align 8
  %41 = ptrtoint ptr %cl_parent34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cl_parent34, align 4
  %vt_tree.i = getelementptr inbounds %struct.hfsc_class, ptr %42, i32 0, i32 14
  %43 = ptrtoint ptr %vt_tree.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vt_tree.i, align 4
  %cmp.not15.i = icmp eq ptr %44, null
  br i1 %cmp.not15.i, label %if.end38.vttree_insert.exit_crit_edge, label %while.body.lr.ph.i

if.end38.vttree_insert.exit_crit_edge:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %vttree_insert.exit

while.body.lr.ph.i:                               ; preds = %if.end38
  %45 = ptrtoint ptr %cl_vt26 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %cl_vt26, align 16
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %47 = phi ptr [ %44, %while.body.lr.ph.i ], [ %51, %while.body.i.while.body.i_crit_edge ]
  %cl_vt1.i = getelementptr i8, ptr %47, i32 60
  %48 = ptrtoint ptr %cl_vt1.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %cl_vt1.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %49)
  %cmp2.not.i = icmp ult i64 %46, %49
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %47, i32 0, i32 1
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %47, i32 0, i32 2
  %p.1.i = select i1 %cmp2.not.i, ptr %rb_left.i, ptr %rb_right.i
  %50 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %p.1.i, align 4
  %cmp.not.i = icmp eq ptr %51, null
  br i1 %cmp.not.i, label %while.cond.while.end_crit_edge.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %phi.cast.le.i = ptrtoint ptr %47 to i32
  br label %vttree_insert.exit

vttree_insert.exit:                               ; preds = %while.cond.while.end_crit_edge.i, %if.end38.vttree_insert.exit_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end38.vttree_insert.exit_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %vt_tree.i, %if.end38.vttree_insert.exit_crit_edge ]
  %vt_node.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 15
  %52 = ptrtoint ptr %vt_node.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %parent.0.lcssa.i, ptr %vt_node.i, align 4
  %rb_right.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 15, i32 1
  %53 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 15, i32 2
  %54 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %rb_left.i.i, align 4
  %55 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %vt_node.i, ptr %p.0.lcssa.i, align 4
  %56 = ptrtoint ptr %cl_parent34 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cl_parent34, align 4
  %vt_tree5.i = getelementptr inbounds %struct.hfsc_class, ptr %57, i32 0, i32 14
  tail call void @rb_insert_color(ptr noundef %vt_node.i, ptr noundef %vt_tree5.i) #14
  %58 = ptrtoint ptr %cl_parent34 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cl_parent34, align 4
  %cf_tree.i = getelementptr inbounds %struct.hfsc_class, ptr %59, i32 0, i32 16
  %60 = ptrtoint ptr %cf_tree.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cf_tree.i, align 4
  %cmp.not15.i3 = icmp eq ptr %61, null
  br i1 %cmp.not15.i3, label %vttree_insert.exit.cftree_insert.exit_crit_edge, label %while.body.lr.ph.i4

vttree_insert.exit.cftree_insert.exit_crit_edge:  ; preds = %vttree_insert.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cftree_insert.exit

while.body.lr.ph.i4:                              ; preds = %vttree_insert.exit
  %62 = ptrtoint ptr %cl_f to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %cl_f, align 8
  br label %while.body.i10

while.body.i10:                                   ; preds = %while.body.i10.while.body.i10_crit_edge, %while.body.lr.ph.i4
  %64 = phi ptr [ %61, %while.body.lr.ph.i4 ], [ %68, %while.body.i10.while.body.i10_crit_edge ]
  %cl_f1.i = getelementptr i8, ptr %64, i32 52
  %65 = ptrtoint ptr %cl_f1.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %cl_f1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %63, i64 %66)
  %cmp2.not.i5 = icmp ult i64 %63, %66
  %rb_right.i6 = getelementptr inbounds %struct.rb_node, ptr %64, i32 0, i32 1
  %rb_left.i7 = getelementptr inbounds %struct.rb_node, ptr %64, i32 0, i32 2
  %p.1.i8 = select i1 %cmp2.not.i5, ptr %rb_left.i7, ptr %rb_right.i6
  %67 = ptrtoint ptr %p.1.i8 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %p.1.i8, align 4
  %cmp.not.i9 = icmp eq ptr %68, null
  br i1 %cmp.not.i9, label %while.cond.while.end_crit_edge.i12, label %while.body.i10.while.body.i10_crit_edge

while.body.i10.while.body.i10_crit_edge:          ; preds = %while.body.i10
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i10

while.cond.while.end_crit_edge.i12:               ; preds = %while.body.i10
  call void @__sanitizer_cov_trace_pc() #16
  %phi.cast.le.i11 = ptrtoint ptr %64 to i32
  br label %cftree_insert.exit

cftree_insert.exit:                               ; preds = %while.cond.while.end_crit_edge.i12, %vttree_insert.exit.cftree_insert.exit_crit_edge
  %parent.0.lcssa.i13 = phi i32 [ %phi.cast.le.i11, %while.cond.while.end_crit_edge.i12 ], [ 0, %vttree_insert.exit.cftree_insert.exit_crit_edge ]
  %p.0.lcssa.i14 = phi ptr [ %p.1.i8, %while.cond.while.end_crit_edge.i12 ], [ %cf_tree.i, %vttree_insert.exit.cftree_insert.exit_crit_edge ]
  %cf_node.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 17
  %69 = ptrtoint ptr %cf_node.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %parent.0.lcssa.i13, ptr %cf_node.i, align 4
  %rb_right.i.i15 = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 17, i32 1
  %70 = ptrtoint ptr %rb_right.i.i15 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %rb_right.i.i15, align 4
  %rb_left.i.i16 = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 17, i32 2
  %71 = ptrtoint ptr %rb_left.i.i16 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %rb_left.i.i16, align 4
  %72 = ptrtoint ptr %p.0.lcssa.i14 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %cf_node.i, ptr %p.0.lcssa.i14, align 4
  %73 = ptrtoint ptr %cl_parent34 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cl_parent34, align 4
  %cf_tree5.i = getelementptr inbounds %struct.hfsc_class, ptr %74, i32 0, i32 16
  tail call void @rb_insert_color(ptr noundef %cf_node.i, ptr noundef %cf_tree5.i) #14
  %cl_flags = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 36
  %75 = ptrtoint ptr %cl_flags to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %cl_flags, align 8
  %77 = and i8 %76, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool39.not = icmp eq i8 %77, 0
  br i1 %tobool39.not, label %cftree_insert.exit.if.end51_crit_edge, label %if.then40

cftree_insert.exit.if.end51_crit_edge:            ; preds = %cftree_insert.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then40:                                        ; preds = %cftree_insert.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cur_time.029)
  %cmp41 = icmp eq i64 %cur_time.029, 0
  br i1 %cmp41, label %if.then43, label %if.then40.if.end45_crit_edge

if.then40.if.end45_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then43:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i = tail call i64 @ktime_get() #14
  %shr.i = lshr i64 %call.i.i, 6
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.then40.if.end45_crit_edge
  %cur_time.1 = phi i64 [ %shr.i, %if.then43 ], [ %cur_time.029, %if.then40.if.end45_crit_edge ]
  %cl_ulimit = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 35
  %cl_usc = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 31
  %78 = ptrtoint ptr %cl_total to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %cl_total, align 16
  tail call fastcc void @rtsc_min(ptr noundef %cl_ulimit, ptr noundef %cl_usc, i64 noundef %cur_time.1, i64 noundef %79)
  %80 = ptrtoint ptr %cl_total to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %cl_total, align 16
  %y1.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 35, i32 1
  %82 = ptrtoint ptr %y1.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %y1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %81, i64 %83)
  %cmp.i = icmp ult i64 %81, %83
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %84 = ptrtoint ptr %cl_ulimit to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %cl_ulimit, align 8
  br label %rtsc_y2x.exit

if.else.i:                                        ; preds = %if.end45
  %dy.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 35, i32 5
  %86 = ptrtoint ptr %dy.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %dy.i, align 8
  %add.i = add i64 %87, %83
  call void @__sanitizer_cov_trace_cmp8(i64 %81, i64 %add.i)
  %cmp4.not.i = icmp ugt i64 %81, %add.i
  br i1 %cmp4.not.i, label %if.else15.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %87)
  %cmp7.i = icmp eq i64 %87, 0
  %88 = ptrtoint ptr %cl_ulimit to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %cl_ulimit, align 8
  br i1 %cmp7.i, label %if.then8.i, label %if.else11.i

if.then8.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  %dx.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 35, i32 4
  %90 = ptrtoint ptr %dx.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %dx.i, align 8
  %add10.i = add i64 %91, %89
  br label %rtsc_y2x.exit

if.else11.i:                                      ; preds = %if.then5.i
  %sub.i = sub i64 %81, %83
  %ism1.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 35, i32 3
  %92 = ptrtoint ptr %ism1.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %ism1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %81, i64 %83)
  %cmp.i.i = icmp eq i64 %81, %83
  br i1 %cmp.i.i, label %if.else11.i.seg_y2x.exit.i_crit_edge, label %if.else.i.i

if.else11.i.seg_y2x.exit.i_crit_edge:             ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seg_y2x.exit.i

if.else.i.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %93)
  %cmp1.i.i = icmp eq i64 %93, -1
  br i1 %cmp1.i.i, label %if.else.i.i.seg_y2x.exit.i_crit_edge, label %if.else3.i.i

if.else.i.i.seg_y2x.exit.i_crit_edge:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seg_y2x.exit.i

if.else3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %shr.i.i = lshr i64 %sub.i, 14
  %mul.i.i = mul i64 %93, %shr.i.i
  %and.i.i = and i64 %sub.i, 16383
  %mul4.i.i = mul i64 %93, %and.i.i
  %shr5.i.i = lshr i64 %mul4.i.i, 14
  %add.i.i = add i64 %shr5.i.i, %mul.i.i
  br label %seg_y2x.exit.i

seg_y2x.exit.i:                                   ; preds = %if.else3.i.i, %if.else.i.i.seg_y2x.exit.i_crit_edge, %if.else11.i.seg_y2x.exit.i_crit_edge
  %x.0.i.i = phi i64 [ %add.i.i, %if.else3.i.i ], [ 0, %if.else11.i.seg_y2x.exit.i_crit_edge ], [ -1, %if.else.i.i.seg_y2x.exit.i_crit_edge ]
  %add14.i = add i64 %x.0.i.i, %89
  br label %rtsc_y2x.exit

if.else15.i:                                      ; preds = %if.else.i
  %94 = ptrtoint ptr %cl_ulimit to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %cl_ulimit, align 8
  %dx17.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 35, i32 4
  %96 = ptrtoint ptr %dx17.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %dx17.i, align 8
  %add18.i = add i64 %97, %95
  %ism2.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 35, i32 7
  %98 = ptrtoint ptr %ism2.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %ism2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %99)
  %cmp1.i45.i = icmp eq i64 %99, -1
  br i1 %cmp1.i45.i, label %if.else15.i.seg_y2x.exit55.i_crit_edge, label %if.else3.i53.i

if.else15.i.seg_y2x.exit55.i_crit_edge:           ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seg_y2x.exit55.i

if.else3.i53.i:                                   ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub22.i = sub i64 %81, %add.i
  %shr.i47.i = lshr i64 %sub22.i, 14
  %mul.i48.i = mul i64 %99, %shr.i47.i
  %and.i49.i = and i64 %sub22.i, 16383
  %mul4.i50.i = mul i64 %99, %and.i49.i
  %shr5.i51.i = lshr i64 %mul4.i50.i, 14
  %add.i52.i = add i64 %shr5.i51.i, %mul.i48.i
  br label %seg_y2x.exit55.i

seg_y2x.exit55.i:                                 ; preds = %if.else3.i53.i, %if.else15.i.seg_y2x.exit55.i_crit_edge
  %x.0.i54.i = phi i64 [ %add.i52.i, %if.else3.i53.i ], [ -1, %if.else15.i.seg_y2x.exit55.i_crit_edge ]
  %add24.i = add i64 %add18.i, %x.0.i54.i
  br label %rtsc_y2x.exit

rtsc_y2x.exit:                                    ; preds = %seg_y2x.exit55.i, %seg_y2x.exit.i, %if.then8.i, %if.then.i
  %x.0.i = phi i64 [ %85, %if.then.i ], [ %add10.i, %if.then8.i ], [ %add14.i, %seg_y2x.exit.i ], [ %add24.i, %seg_y2x.exit55.i ]
  %cl_myf = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 24
  %100 = ptrtoint ptr %cl_myf to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %x.0.i, ptr %cl_myf, align 16
  br label %if.end51

if.end51:                                         ; preds = %rtsc_y2x.exit, %cftree_insert.exit.if.end51_crit_edge, %land.lhs.true.if.end51_crit_edge, %for.body.if.end51_crit_edge
  %go_active.124 = phi i32 [ 1, %rtsc_y2x.exit ], [ 1, %cftree_insert.exit.if.end51_crit_edge ], [ 0, %for.body.if.end51_crit_edge ], [ 0, %land.lhs.true.if.end51_crit_edge ]
  %cur_time.2 = phi i64 [ %cur_time.1, %rtsc_y2x.exit ], [ %cur_time.029, %cftree_insert.exit.if.end51_crit_edge ], [ %cur_time.029, %for.body.if.end51_crit_edge ], [ %cur_time.029, %land.lhs.true.if.end51_crit_edge ]
  %cl_myf52 = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 24
  %101 = ptrtoint ptr %cl_myf52 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %cl_myf52, align 16
  %cl_cfmin = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 25
  %103 = ptrtoint ptr %cl_cfmin to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %cl_cfmin, align 8
  %105 = tail call i64 @llvm.umax.i64(i64 %102, i64 %104)
  %cl_f56 = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 23
  %106 = ptrtoint ptr %cl_f56 to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %cl_f56, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %105, i64 %107)
  %cmp57.not = icmp eq i64 %105, %107
  br i1 %cmp57.not, label %if.end51.if.end61_crit_edge, label %if.then59

if.end51.if.end61_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

if.then59:                                        ; preds = %if.end51
  %108 = ptrtoint ptr %cl_f56 to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %105, ptr %cl_f56, align 8
  %cf_node.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 17
  %109 = ptrtoint ptr %cl_parent34 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cl_parent34, align 4
  %cf_tree.i.i = getelementptr inbounds %struct.hfsc_class, ptr %110, i32 0, i32 16
  tail call void @rb_erase(ptr noundef %cf_node.i.i, ptr noundef %cf_tree.i.i) #14
  %111 = ptrtoint ptr %cl_parent34 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cl_parent34, align 4
  %cf_tree.i3.i = getelementptr inbounds %struct.hfsc_class, ptr %112, i32 0, i32 16
  %113 = ptrtoint ptr %cf_tree.i3.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cf_tree.i3.i, align 4
  %cmp.not15.i.i = icmp eq ptr %114, null
  br i1 %cmp.not15.i.i, label %if.then59.cftree_update.exit_crit_edge, label %while.body.lr.ph.i.i

if.then59.cftree_update.exit_crit_edge:           ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #16
  br label %cftree_update.exit

while.body.lr.ph.i.i:                             ; preds = %if.then59
  %115 = ptrtoint ptr %cl_f56 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %cl_f56, align 8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %117 = phi ptr [ %114, %while.body.lr.ph.i.i ], [ %121, %while.body.i.i.while.body.i.i_crit_edge ]
  %cl_f1.i.i = getelementptr i8, ptr %117, i32 52
  %118 = ptrtoint ptr %cl_f1.i.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %cl_f1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %116, i64 %119)
  %cmp2.not.i.i = icmp ult i64 %116, %119
  %rb_right.i.i17 = getelementptr inbounds %struct.rb_node, ptr %117, i32 0, i32 1
  %rb_left.i.i18 = getelementptr inbounds %struct.rb_node, ptr %117, i32 0, i32 2
  %p.1.i.i = select i1 %cmp2.not.i.i, ptr %rb_left.i.i18, ptr %rb_right.i.i17
  %120 = ptrtoint ptr %p.1.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %p.1.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %121, null
  br i1 %cmp.not.i.i, label %while.cond.while.end_crit_edge.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %phi.cast.le.i.i = ptrtoint ptr %117 to i32
  br label %cftree_update.exit

cftree_update.exit:                               ; preds = %while.cond.while.end_crit_edge.i.i, %if.then59.cftree_update.exit_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %if.then59.cftree_update.exit_crit_edge ]
  %p.0.lcssa.i.i = phi ptr [ %p.1.i.i, %while.cond.while.end_crit_edge.i.i ], [ %cf_tree.i3.i, %if.then59.cftree_update.exit_crit_edge ]
  %122 = ptrtoint ptr %cf_node.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %parent.0.lcssa.i.i, ptr %cf_node.i.i, align 4
  %rb_right.i.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 17, i32 1
  %123 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.hfsc_class, ptr %cl.addr.031, i32 0, i32 17, i32 2
  %124 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %125 = ptrtoint ptr %p.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %cf_node.i.i, ptr %p.0.lcssa.i.i, align 4
  %126 = ptrtoint ptr %cl_parent34 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cl_parent34, align 4
  %cf_tree5.i.i = getelementptr inbounds %struct.hfsc_class, ptr %127, i32 0, i32 16
  tail call void @rb_insert_color(ptr noundef %cf_node.i.i, ptr noundef %cf_tree5.i.i) #14
  br label %if.end61

if.end61:                                         ; preds = %cftree_update.exit, %if.end51.if.end61_crit_edge
  %128 = ptrtoint ptr %cl_parent34 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cl_parent34, align 4
  %cf_tree.i19 = getelementptr inbounds %struct.hfsc_class, ptr %129, i32 0, i32 16
  %call.i = tail call ptr @rb_first(ptr noundef %cf_tree.i19) #14
  %cmp.i20 = icmp eq ptr %call.i, null
  br i1 %cmp.i20, label %if.end61.update_cfmin.exit_crit_edge, label %if.end.i

if.end61.update_cfmin.exit_crit_edge:             ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %update_cfmin.exit

if.end.i:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  %cl_f.i21 = getelementptr i8, ptr %call.i, i32 52
  %130 = ptrtoint ptr %cl_f.i21 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %cl_f.i21, align 8
  br label %update_cfmin.exit

update_cfmin.exit:                                ; preds = %if.end.i, %if.end61.update_cfmin.exit_crit_edge
  %.sink.i = phi i64 [ %131, %if.end.i ], [ 0, %if.end61.update_cfmin.exit_crit_edge ]
  %132 = getelementptr inbounds %struct.hfsc_class, ptr %129, i32 0, i32 25
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %.sink.i, ptr %132, align 8
  %134 = ptrtoint ptr %cl_parent34 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %cl_parent34, align 4
  %cl_parent = getelementptr inbounds %struct.hfsc_class, ptr %135, i32 0, i32 9
  %136 = ptrtoint ptr %cl_parent to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cl_parent, align 4
  %cmp.not = icmp eq ptr %137, null
  br i1 %cmp.not, label %update_cfmin.exit.for.end_crit_edge, label %update_cfmin.exit.for.body_crit_edge

update_cfmin.exit.for.body_crit_edge:             ; preds = %update_cfmin.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

update_cfmin.exit.for.end_crit_edge:              ; preds = %update_cfmin.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %update_cfmin.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_block_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_new_estimator(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_block_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_hash_add(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_class_hash_insert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_class_hash_grow(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sc2isc(ptr nocapture noundef readonly %sc, ptr nocapture noundef %isc) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sc, align 4
  %conv.i = zext i32 %1 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 24
  %add.i = or i64 %shl.i, 15624999
  %2 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %add.i, i32 0) #18, !srcloc !50
  %asmresult.i.i = extractvalue { i64, i32 } %2, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %2, 1
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %add.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #18, !srcloc !51
  %asmresult10.i.i = extractvalue { i64, i32 } %3, 0
  %sm.0.i = lshr i64 %asmresult10.i.i, 23
  %4 = ptrtoint ptr %isc to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %sm.0.i, ptr %isc, align 8
  %5 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %entry.m2ism.exit_crit_edge, label %if.else181.i

entry.m2ism.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %m2ism.exit

if.else181.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = add i32 %6, -1
  %conv.i21 = zext i32 %sub.i to i64
  %add.i22 = add nuw nsw i64 %conv.i21, 256000000000
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %6, i64 %add.i22) #18, !srcloc !52
  %asmresult1.i.i = extractvalue { i64, i64 } %7, 1
  br label %m2ism.exit

m2ism.exit:                                       ; preds = %if.else181.i, %entry.m2ism.exit_crit_edge
  %ism.0.i = phi i64 [ %asmresult1.i.i, %if.else181.i ], [ -1, %entry.m2ism.exit_crit_edge ]
  %ism1 = getelementptr inbounds %struct.internal_sc, ptr %isc, i32 0, i32 1
  %8 = ptrtoint ptr %ism1 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %ism.0.i, ptr %ism1, align 8
  %d = getelementptr inbounds %struct.tc_service_curve, ptr %sc, i32 0, i32 1
  %9 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %d, align 4
  %conv.i27 = zext i32 %10 to i64
  %mul.i28 = mul nuw nsw i64 %conv.i27, 15625000
  %add.i29 = add nuw nsw i64 %mul.i28, 999999
  %11 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %add.i29) #18, !srcloc !53
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %add.i29, i64 %11, i32 0) #18, !srcloc !51
  %asmresult10.i.i30 = extractvalue { i64, i32 } %12, 0
  %div162263.i = lshr i64 %asmresult10.i.i30, 18
  %dx = getelementptr inbounds %struct.internal_sc, ptr %isc, i32 0, i32 2
  %13 = ptrtoint ptr %dx to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %div162263.i, ptr %dx, align 8
  %shr.i31 = lshr i64 %asmresult10.i.i30, 42
  %mul.i32 = mul nuw nsw i64 %shr.i31, %sm.0.i
  %and.i = and i64 %div162263.i, 16777215
  %mul1.i = mul i64 %and.i, %sm.0.i
  %shr2.i = lshr i64 %mul1.i, 24
  %add.i33 = add nuw nsw i64 %shr2.i, %mul.i32
  %dy = getelementptr inbounds %struct.internal_sc, ptr %isc, i32 0, i32 3
  %14 = ptrtoint ptr %dy to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %add.i33, ptr %dy, align 8
  %m2 = getelementptr inbounds %struct.tc_service_curve, ptr %sc, i32 0, i32 2
  %15 = ptrtoint ptr %m2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %m2, align 4
  %conv.i34 = zext i32 %16 to i64
  %shl.i35 = shl nuw nsw i64 %conv.i34, 24
  %add.i36 = or i64 %shl.i35, 15624999
  %17 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %add.i36, i32 0) #18, !srcloc !50
  %asmresult.i.i37 = extractvalue { i64, i32 } %17, 0
  %asmresult4.i.i38 = extractvalue { i64, i32 } %17, 1
  %18 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %add.i36, i64 %asmresult.i.i37, i32 %asmresult4.i.i38) #18, !srcloc !51
  %asmresult10.i.i39 = extractvalue { i64, i32 } %18, 0
  %sm.0.i40 = lshr i64 %asmresult10.i.i39, 23
  %sm2 = getelementptr inbounds %struct.internal_sc, ptr %isc, i32 0, i32 4
  %19 = ptrtoint ptr %sm2 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %sm.0.i40, ptr %sm2, align 8
  %20 = ptrtoint ptr %m2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %m2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i41 = icmp eq i32 %21, 0
  br i1 %cmp.i41, label %m2ism.exit.m2ism.exit152_crit_edge, label %if.else181.i150

m2ism.exit.m2ism.exit152_crit_edge:               ; preds = %m2ism.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %m2ism.exit152

if.else181.i150:                                  ; preds = %m2ism.exit
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i42 = add i32 %21, -1
  %conv.i43 = zext i32 %sub.i42 to i64
  %add.i44 = add nuw nsw i64 %conv.i43, 256000000000
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %21, i64 %add.i44) #18, !srcloc !52
  %asmresult1.i.i149 = extractvalue { i64, i64 } %22, 1
  br label %m2ism.exit152

m2ism.exit152:                                    ; preds = %if.else181.i150, %m2ism.exit.m2ism.exit152_crit_edge
  %ism.0.i151 = phi i64 [ %asmresult1.i.i149, %if.else181.i150 ], [ -1, %m2ism.exit.m2ism.exit152_crit_edge ]
  %ism2 = getelementptr inbounds %struct.internal_sc, ptr %isc, i32 0, i32 5
  %23 = ptrtoint ptr %ism2 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %ism.0.i151, ptr %ism2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_warn_nonwc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtsc_min(ptr noundef %rtsc, ptr nocapture noundef readonly %isc, i64 noundef %x, i64 noundef %y) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %isc to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %isc, align 8
  %sm2 = getelementptr inbounds %struct.internal_sc, ptr %isc, i32 0, i32 4
  %2 = ptrtoint ptr %sm2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sm2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp.not = icmp ugt i64 %1, %3
  %4 = ptrtoint ptr %rtsc to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %rtsc, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %x)
  %cmp.not.i355 = icmp ult i64 %5, %x
  br i1 %cmp.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp.not.i355, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %y2.i = getelementptr inbounds %struct.runtime_sc, ptr %rtsc, i32 0, i32 1
  %6 = ptrtoint ptr %y2.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %y2.i, align 8
  br label %rtsc_x2y.exit

if.else.i:                                        ; preds = %if.then
  %dx.i = getelementptr inbounds %struct.runtime_sc, ptr %rtsc, i32 0, i32 4
  %8 = ptrtoint ptr %dx.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dx.i, align 8
  %add.i = add i64 %9, %5
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %x)
  %cmp4.not.i = icmp ult i64 %add.i, %x
  %y10.i = getelementptr inbounds %struct.runtime_sc, ptr %rtsc, i32 0, i32 1
  %10 = ptrtoint ptr %y10.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %y10.i, align 8
  br i1 %cmp4.not.i, label %if.else9.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = sub i64 %x, %5
  %sm1.i = getelementptr inbounds %struct.runtime_sc, ptr %rtsc, i32 0, i32 2
  %12 = ptrtoint ptr %sm1.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sm1.i, align 8
  %shr.i.i = lshr i64 %sub.i, 24
  %mul.i.i = mul i64 %13, %shr.i.i
  %and.i.i = and i64 %sub.i, 16777215
  %mul1.i.i = mul i64 %13, %and.i.i
  %shr2.i.i = lshr i64 %mul1.i.i, 24
  %add.i.i = add i64 %mul.i.i, %11
  %add8.i = add i64 %add.i.i, %shr2.i.i
  br label %rtsc_x2y.exit

if.else9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %dy.i = getelementptr inbounds %struct.runtime_sc, ptr %rtsc, i32 0, i32 5
  %14 = ptrtoint ptr %dy.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dy.i, align 8
  %sub15.i = sub i64 %x, %add.i
  %sm2.i = getelementptr inbounds %struct.runtime_sc, ptr %rtsc, i32 0, i32 6
  %16 = ptrtoint ptr %sm2.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %sm2.i, align 8
  %shr.i33.i = lshr i64 %sub15.i, 24
  %mul.i34.i = mul i64 %17, %shr.i33.i
  %and.i35.i = and i64 %sub15.i, 16777215
  %mul1.i36.i = mul i64 %17, %and.i35.i
  %shr2.i37.i = lshr i64 %mul1.i36.i, 24
  %add.i38.i = add i64 %15, %11
  %add11.i = add i64 %add.i38.i, %mul.i34.i
  %add17.i = add i64 %add11.i, %shr2.i37.i
  br label %rtsc_x2y.exit

rtsc_x2y.exit:                                    ; preds = %if.else9.i, %if.then5.i, %if.then.i
  %y.0.i = phi i64 [ %7, %if.then.i ], [ %add8.i, %if.then5.i ], [ %add17.i, %if.else9.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %y.0.i, i64 %y)
  %cmp1 = icmp ult i64 %y.0.i, %y
  br i1 %cmp1, label %rtsc_x2y.exit.cleanup_crit_edge, label %if.end

rtsc_x2y.exit.cleanup_crit_edge:                  ; preds = %rtsc_x2y.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %rtsc_x2y.exit
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %rtsc to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %x, ptr %rtsc, align 8
  %y4 = getelementptr inbounds %struct.runtime_sc, ptr %rtsc, i32 0, i32 1
  %19 = ptrtoint ptr %y4 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %y, ptr %y4, align 8
  br label %cleanup

if.end5:                                          ; preds = %entry
  br i1 %cmp.not.i355, label %if.else.i362, label %if.then.i357

if.then.i357:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %y2.i356 = getelementptr inbounds %struct.runtime_sc, ptr %rtsc, i32 0, i32 1
  %20 = ptrtoint ptr %y2.i356 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %y2.i356, align 8
  br label %rtsc_x2y.exit386

if.else.i362:                                     ; preds = %if.end5
  %dx.i358 = getelementptr inbounds %struct.runtime_sc, ptr %rtsc, i32 0, i32 4
  %22 = ptrtoint ptr %dx.i358 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %dx.i358, align 8
  %add.i359 = add i64 %23, %5
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i359, i64 %x)
  %cmp4.not.i360 = icmp ult i64 %add.i359, %x
  %y10.i361 = getelementptr inbounds %struct.runtime_sc, ptr %rtsc, i32 0, i32 1
  %24 = ptrtoint ptr %y10.i361 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %y10.i361, align 8
  br i1 %cmp4.not.i360, label %if.else9.i384, label %if.then5.i372

if.then5.i372:                                    ; preds = %if.else.i362
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i363 = sub i64 %x, %5
  %sm1.i364 = getelementptr inbounds %struct.runtime_sc, ptr %rtsc, i32 0, i32 2
  %26 = ptrtoint ptr %sm1.i364 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %sm1.i364, align 8
  %shr.i.i365 = lshr i64 %sub.i363, 24
  %mul.i.i366 = mul i64 %27, %shr.i.i365
  %and.i.i367 = and i64 %sub.i363, 16777215
  %mul1.i.i368 = mul i64 %27, %and.i.i367
  %shr2.i.i369 = lshr i64 %mul1.i.i368, 24
  %add.i.i370 = add i64 %mul.i.i366, %25
  %add8.i371 = add i64 %add.i.i370, %shr2.i.i369
  br label %rtsc_x2y.exit386

if.else9.i384:                                    ; preds = %if.else.i362
  call void @__sanitizer_cov_trace_pc() #16
  %dy.i373 = getelementptr inbounds %struct.runtime_sc, ptr %rtsc, i32 0, i32 5
  %28 = ptrtoint ptr %dy.i373 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %dy.i373, align 8
  %sub15.i374 = sub i64 %x, %add.i359
  %sm2.i375 = getelementptr inbounds %struct.runtime_sc, ptr %rtsc, i32 0, i32 6
  %30 = ptrtoint ptr %sm2.i375 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %sm2.i375, align 8
  %shr.i33.i376 = lshr i64 %sub15.i374, 24
  %mul.i34.i377 = mul i64 %31, %shr.i33.i376
  %and.i35.i378 = and i64 %sub15.i374, 16777215
  %mul1.i36.i379 = mul i64 %31, %and.i35.i378
  %shr2.i37.i380 = lshr i64 %mul1.i36.i379, 24
  %add.i38.i381 = add i64 %29, %25
  %add11.i382 = add i64 %add.i38.i381, %mul.i34.i377
  %add17.i383 = add i64 %add11.i382, %shr2.i37.i380
  br label %rtsc_x2y.exit386

rtsc_x2y.exit386:                                 ; preds = %if.else9.i384, %if.then5.i372, %if.then.i357
  %y.0.i385 = phi i64 [ %21, %if.then.i357 ], [ %add8.i371, %if.then5.i372 ], [ %add17.i383, %if.else9.i384 ]
  call void @__sanitizer_cov_trace_cmp8(i64 %y.0.i385, i64 %y)
  %cmp7.not = icmp ugt i64 %y.0.i385, %y
  br i1 %cmp7.not, label %if.end9, label %rtsc_x2y.exit386.cleanup_crit_edge

rtsc_x2y.exit386.cleanup_crit_edge:               ; preds = %rtsc_x2y.exit386
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %rtsc_x2y.exit386
  %dx10 = getelementptr inbounds %struct.internal_sc, ptr %isc, i32 0, i32 2
  %32 = ptrtoint ptr %dx10 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %dx10, align 8
  %add = add i64 %33, %x
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %5)
  %cmp.not.i387 = icmp ugt i64 %add, %5
  br i1 %cmp.not.i387, label %if.else.i394, label %if.then.i389

if.then.i389:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %y2.i388 = getelementptr inbounds %struct.runtime_sc, ptr %rtsc, i32 0, i32 1
  %34 = ptrtoint ptr %y2.i388 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %y2.i388, align 8
  br label %rtsc_x2y.exit418

if.else.i394:                                     ; preds = %if.end9
  %dx.i390 = getelementptr inbounds %struct.runtime_sc, ptr %rtsc, i32 0, i32 4
  %36 = ptrtoint ptr %dx.i390 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %dx.i390, align 8
  %add.i391 = add i64 %37, %5
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add.i391)
  %cmp4.not.i392 = icmp ugt i64 %add, %add.i391
  %y10.i393 = getelementptr inbounds %struct.runtime_sc, ptr %rtsc, i32 0, i32 1
  %38 = ptrtoint ptr %y10.i393 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %y10.i393, align 8
  br i1 %cmp4.not.i392, label %if.else9.i416, label %if.then5.i404

if.then5.i404:                                    ; preds = %if.else.i394
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i395 = sub i64 %add, %5
  %sm1.i396 = getelementptr inbounds %struct.runtime_sc, ptr %rtsc, i32 0, i32 2
  %40 = ptrtoint ptr %sm1.i396 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %sm1.i396, align 8
  %shr.i.i397 = lshr i64 %sub.i395, 24
  %mul.i.i398 = mul i64 %41, %shr.i.i397
  %and.i.i399 = and i64 %sub.i395, 16777215
  %mul1.i.i400 = mul i64 %41, %and.i.i399
  %shr2.i.i401 = lshr i64 %mul1.i.i400, 24
  %add.i.i402 = add i64 %mul.i.i398, %39
  %add8.i403 = add i64 %add.i.i402, %shr2.i.i401
  br label %rtsc_x2y.exit418

if.else9.i416:                                    ; preds = %if.else.i394
  call void @__sanitizer_cov_trace_pc() #16
  %dy.i405 = getelementptr inbounds %struct.runtime_sc, ptr %rtsc, i32 0, i32 5
  %42 = ptrtoint ptr %dy.i405 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %dy.i405, align 8
  %sub15.i406 = sub i64 %add, %add.i391
  %sm2.i407 = getelementptr inbounds %struct.runtime_sc, ptr %rtsc, i32 0, i32 6
  %44 = ptrtoint ptr %sm2.i407 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %sm2.i407, align 8
  %shr.i33.i408 = lshr i64 %sub15.i406, 24
  %mul.i34.i409 = mul i64 %45, %shr.i33.i408
  %and.i35.i410 = and i64 %sub15.i406, 16777215
  %mul1.i36.i411 = mul i64 %45, %and.i35.i410
  %shr2.i37.i412 = lshr i64 %mul1.i36.i411, 24
  %add.i38.i413 = add i64 %43, %39
  %add11.i414 = add i64 %add.i38.i413, %mul.i34.i409
  %add17.i415 = add i64 %add11.i414, %shr2.i37.i412
  br label %rtsc_x2y.exit418

rtsc_x2y.exit418:                                 ; preds = %if.else9.i416, %if.then5.i404, %if.then.i389
  %y.0.i417 = phi i64 [ %35, %if.then.i389 ], [ %add8.i403, %if.then5.i404 ], [ %add17.i415, %if.else9.i416 ]
  %dy12 = getelementptr inbounds %struct.internal_sc, ptr %isc, i32 0, i32 3
  %46 = ptrtoint ptr %dy12 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %dy12, align 8
  %add13 = add i64 %47, %y
  call void @__sanitizer_cov_trace_cmp8(i64 %y.0.i417, i64 %add13)
  %cmp14.not = icmp ult i64 %y.0.i417, %add13
  br i1 %cmp14.not, label %if.end22, label %if.then15

if.then15:                                        ; preds = %rtsc_x2y.exit418
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %rtsc to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %x, ptr %rtsc, align 8
  %y17 = getelementptr inbounds %struct.runtime_sc, ptr %rtsc, i32 0, i32 1
  %49 = ptrtoint ptr %y17 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %y, ptr %y17, align 8
  %50 = ptrtoint ptr %dx10 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %dx10, align 8
  %dx19 = getelementptr inbounds %struct.runtime_sc, ptr %rtsc, i32 0, i32 4
  %52 = ptrtoint ptr %dx19 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %dx19, align 8
  %53 = ptrtoint ptr %dy12 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %dy12, align 8
  %dy21 = getelementptr inbounds %struct.runtime_sc, ptr %rtsc, i32 0, i32 5
  %55 = ptrtoint ptr %dy21 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %dy21, align 8
  br label %cleanup

if.end22:                                         ; preds = %rtsc_x2y.exit418
  %sub = sub i64 %y.0.i385, %y
  %shl = shl i64 %sub, 24
  %sub25 = sub i64 %1, %3
  %conv = trunc i64 %sub25 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl)
  %cmp198 = icmp ult i64 %shl, 4294967296
  br i1 %cmp198, label %if.then202, label %if.else208, !prof !45

if.then202:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %conv203 = trunc i64 %shl to i32
  %div206 = udiv i32 %conv203, %conv
  %conv207 = zext i32 %div206 to i64
  br label %if.end212

if.else208:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %56 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv, i64 %shl) #18, !srcloc !52
  %asmresult1.i = extractvalue { i64, i64 } %56, 1
  br label %if.end212

if.end212:                                        ; preds = %if.else208, %if.then202
  %dx.0 = phi i64 [ %conv207, %if.then202 ], [ %asmresult1.i, %if.else208 ]
  %dx215 = getelementptr inbounds %struct.runtime_sc, ptr %rtsc, i32 0, i32 4
  %57 = ptrtoint ptr %dx215 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %dx215, align 8
  %add216 = add i64 %58, %5
  %59 = tail call i64 @llvm.usub.sat.i64(i64 %add216, i64 %x)
  %dx.1 = add i64 %59, %dx.0
  %shr.i = lshr i64 %dx.1, 24
  %mul.i = mul i64 %shr.i, %1
  %and.i = and i64 %dx.1, 16777215
  %mul1.i = mul i64 %and.i, %1
  %shr2.i = lshr i64 %mul1.i, 24
  %add.i422 = add i64 %shr2.i, %mul.i
  %60 = ptrtoint ptr %rtsc to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %x, ptr %rtsc, align 8
  %y229 = getelementptr inbounds %struct.runtime_sc, ptr %rtsc, i32 0, i32 1
  %61 = ptrtoint ptr %y229 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %y, ptr %y229, align 8
  %62 = ptrtoint ptr %dx215 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %dx.1, ptr %dx215, align 8
  %dy231 = getelementptr inbounds %struct.runtime_sc, ptr %rtsc, i32 0, i32 5
  %63 = ptrtoint ptr %dy231 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %add.i422, ptr %dy231, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end212, %if.then15, %rtsc_x2y.exit386.cleanup_crit_edge, %if.end, %rtsc_x2y.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_last(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_class_hash_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_kill_estimator(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_basic(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_rate_est(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_queue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_app(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
define internal fastcc void @bstats_update(ptr noundef %bstats, ptr nocapture noundef readonly %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %_bstats_update.exit

land.lhs.true.i.i.i:                              ; preds = %cond.end
  %9 = tail call i32 @llvm.read_register.i32(metadata !34) #14
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !54
  %13 = tail call i32 @llvm.read_register.i32(metadata !34) #14
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
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !55
  %22 = tail call i32 @llvm.read_register.i32(metadata !34) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %_bstats_update.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !34) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %_bstats_update.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %30 = tail call i32 @llvm.read_register.i32(metadata !34) #14
  %and.i.i.i9.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %33, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !56
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
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !57
  %41 = tail call i32 @llvm.read_register.i32(metadata !34) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %_bstats_update.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i._bstats_update.exit_crit_edge, label %if.then.i.i.i, !prof !45

land.rhs58.i.i.i._bstats_update.exit_crit_edge:   ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_bstats_update.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %_bstats_update.exit

_bstats_update.exit:                              ; preds = %if.then.i.i.i, %land.rhs58.i.i.i._bstats_update.exit_crit_edge, %land.rhs22.i.i.i._bstats_update.exit_crit_edge, %land.rhs.i.i.i._bstats_update.exit_crit_edge, %land.lhs.true.i.i.i._bstats_update.exit_crit_edge, %cond.end._bstats_update.exit_crit_edge
  %conv = zext i32 %1 to i64
  %syncp.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2
  %45 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i.i = add i32 %46, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !58
  %dep_map.i.i.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2, i32 0, i32 1
  %47 = tail call ptr @llvm.returnaddress(i32 0) #14
  %48 = ptrtoint ptr %47 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %48) #14
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
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %48) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !59
  %53 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %54, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_schedule_range_ns(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qdisc_class_hash_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_basic_sync_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_watchdog_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_class_hash_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !17, !19, !21, !23, !24, !25, !27, !29, !31, !33}
!llvm.named.register.sp = !{!34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__UNIQUE_ID_file374, !1, !"__UNIQUE_ID_file374", i1 false, i1 false}
!1 = !{!"../net/sched/sch_hfsc.c", i32 1688, i32 1}
!2 = !{ptr @__UNIQUE_ID_license375, !1, !"__UNIQUE_ID_license375", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_sch_hfsc__376_1689_hfsc_init6, !4, !"__initcall__kmod_sch_hfsc__376_1689_hfsc_init6", i1 false, i1 false}
!4 = !{!"../net/sched/sch_hfsc.c", i32 1689, i32 1}
!5 = !{ptr @__exitcall_hfsc_cleanup, !6, !"__exitcall_hfsc_cleanup", i1 false, i1 false}
!6 = !{!"../net/sched/sch_hfsc.c", i32 1690, i32 1}
!7 = !{ptr @hfsc_qdisc_ops, !8, !"hfsc_qdisc_ops", i1 false, i1 false}
!8 = !{!"../net/sched/sch_hfsc.c", i32 1661, i32 25}
!9 = !{ptr @hfsc_class_ops, !10, !"hfsc_class_ops", i1 false, i1 false}
!10 = !{!"../net/sched/sch_hfsc.c", i32 1646, i32 37}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @hfsc_policy, !16, !"hfsc_policy", i1 false, i1 false}
!16 = !{!"../net/sched/sch_hfsc.c", i32 906, i32 32}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/sched/sch_hfsc.c", i32 839, i32 20}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/net/netlink.h", i32 991, i32 3}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/sched/sch_hfsc.c", i32 1130, i32 8}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../net/sched/sch_hfsc.c", i32 1156, i32 9}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/net/sch_generic.h", i32 835, i32 34}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/sched/sch_hfsc.c", i32 1616, i32 20}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = !{!"sp"}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"auto-init"}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i64 640683, i64 640744}
!47 = !{i64 643415}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{i64 643700}
!50 = !{i64 1153192, i64 1153219, i64 1153241, i64 1153269}
!51 = !{i64 1153600, i64 1153627, i64 1153660, i64 1153681, i64 1153708, i64 1153734}
!52 = !{i64 2148638736, i64 2148639016, i64 2148639350, i64 2148639684}
!53 = !{i64 1152905, i64 1152932}
!54 = !{i64 2149902670}
!55 = !{i64 2149907602}
!56 = !{i64 2149929314}
!57 = !{i64 2149934206}
!58 = !{i64 2150010663}
!59 = !{i64 2150010988}
