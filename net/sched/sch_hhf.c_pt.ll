; ModuleID = '/llk/IR_all_yes/net/sched/sch_hhf.c_pt.bc'
source_filename = "../net/sched/sch_hhf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.48 }
%union.anon.48 = type { i32 }
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
%struct.list_head = type { ptr, ptr }
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
%struct.hh_flow_state = type { i32, i32, %struct.list_head }
%struct.wdrr_bucket = type { ptr, ptr, %struct.list_head, i32 }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.143, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.143 = type { ptr }
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
%struct.tc_hhf_xstats = type { i32, i32, i32, i32 }

@hhf_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr null, [16 x i8] c"hhf\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 152, i32 0, ptr @hhf_enqueue, ptr @hhf_dequeue, ptr @qdisc_peek_dequeued, ptr @hhf_init, ptr @hhf_reset, ptr @hhf_destroy, ptr @hhf_change, ptr null, ptr null, ptr null, ptr @hhf_dump, ptr @hhf_dump_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_hhf__482_719_hhf_module_init6 = internal global ptr @hhf_module_init, section ".initcall6.init", align 4
@__exitcall_hhf_module_exit = internal global ptr @hhf_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author483 = internal constant [25 x i8] c"sch_hhf.author=Terry Lam\00", section ".modinfo", align 1
@__UNIQUE_ID_author484 = internal constant [33 x i8] c"sch_hhf.author=Nandita Dukkipati\00", section ".modinfo", align 1
@__UNIQUE_ID_file485 = internal constant [31 x i8] c"sch_hhf.file=net/sched/sch_hhf\00", section ".modinfo", align 1
@__UNIQUE_ID_license486 = internal constant [20 x i8] c"sch_hhf.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description487 = internal constant [46 x i8] c"sch_hhf.description=Heavy-Hitter Filter (HHF)\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@hhf_policy = internal constant { [8 x %struct.nla_policy], [32 x i8] } { [8 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 271, i32 2 }
@___asan_gen_.6 = private unnamed_addr constant [11 x i8] c"hhf_policy\00", align 1
@___asan_gen_.7 = private constant [23 x i8] c"../net/sched/sch_hhf.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 498, i32 32 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 596, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author483, ptr @__UNIQUE_ID_author484, ptr @__UNIQUE_ID_description487, ptr @__UNIQUE_ID_file485, ptr @__UNIQUE_ID_license486, ptr @__exitcall_hhf_module_exit, ptr @__initcall__kmod_sch_hhf__482_719_hhf_module_init6, ptr @hhf_module_exit, ptr @.str, ptr @hhf_policy, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hhf_policy to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hhf_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @hhf_qdisc_ops) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hhf_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @hhf_qdisc_ops) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hhf_enqueue(ptr noundef %skb, ptr noundef %sch, ptr nocapture noundef %to_free) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %hhf_arrays_reset_timestamp.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 36
  %1 = ptrtoint ptr %hhf_arrays_reset_timestamp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hhf_arrays_reset_timestamp.i, align 4
  %hhf_reset_timeout.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 1
  %3 = ptrtoint ptr %hhf_reset_timeout.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hhf_reset_timeout.i, align 8
  %add.i = sub i32 %2, %0
  %sub.i = add i32 %add.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %for.body.preheader.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 40
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 128)
  %arrayidx.1.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 44
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1.i, align 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 128)
  %arrayidx.2.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 48
  %11 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.2.i, align 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 128)
  %arrayidx.3.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 52
  %14 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.3.i, align 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 128)
  %17 = ptrtoint ptr %hhf_arrays_reset_timestamp.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %0, ptr %hhf_arrays_reset_timestamp.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.preheader.i, %entry.if.end.i_crit_edge
  %perturbation.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %call4.i = tail call i32 @skb_get_hash_perturb(ptr noundef %skb, ptr noundef %perturbation.i) #10
  %and.i = and i32 %call4.i, 1023
  %hh_flows.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %18 = ptrtoint ptr %hh_flows.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hh_flows.i, align 8
  %arrayidx5.i = getelementptr %struct.list_head, ptr %19, i32 %and.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %21 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %arrayidx5.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %22, %arrayidx5.i
  br i1 %cmp.i.not.i.i, label %if.end.i.for.body11.preheader.i_crit_edge, label %for.cond.preheader.i.i

if.end.i.for.body11.preheader.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.preheader.i

for.cond.preheader.i.i:                           ; preds = %if.end.i
  %hhf_evict_timeout.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 1
  %hh_flows_current_cnt.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %.pn.in48.i.i = phi ptr [ %22, %for.cond.preheader.i.i ], [ %.pn51.i.i, %cleanup.i.i.for.body.i.i_crit_edge ]
  %flow.050.i.i = getelementptr i8, ptr %.pn.in48.i.i, i32 -8
  %23 = ptrtoint ptr %.pn.in48.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn51.i.i = load ptr, ptr %.pn.in48.i.i, align 4
  %hit_timestamp.i.i = getelementptr i8, ptr %.pn.in48.i.i, i32 -4
  %24 = ptrtoint ptr %hit_timestamp.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hit_timestamp.i.i, align 4
  %26 = ptrtoint ptr %hhf_evict_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hhf_evict_timeout.i.i, align 8
  %add.i.i = sub i32 %25, %20
  %sub.i.i = add i32 %add.i.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp8.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.else.i.i

if.then9.i.i:                                     ; preds = %for.body.i.i
  %cmp.i41.not.i.i = icmp eq ptr %.pn51.i.i, %arrayidx5.i
  br i1 %cmp.i41.not.i.i, label %if.then9.i.i.for.body11.preheader.i_crit_edge, label %if.end14.i.i

if.then9.i.i.for.body11.preheader.i_crit_edge:    ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.preheader.i

if.end14.i.i:                                     ; preds = %if.then9.i.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in48.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end14.i.i.list_del.exit.i.i_crit_edge

if.end14.i.i.list_del.exit.i.i_crit_edge:         ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in48.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i.i, align 4
  %30 = ptrtoint ptr %.pn.in48.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %.pn.in48.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end14.i.i.list_del.exit.i.i_crit_edge
  %34 = ptrtoint ptr %.pn.in48.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in48.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in48.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef %flow.050.i.i) #10
  %36 = ptrtoint ptr %hh_flows_current_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hh_flows_current_cnt.i.i, align 8
  %dec.i.i = add i32 %37, -1
  store i32 %dec.i.i, ptr %hh_flows_current_cnt.i.i, align 8
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  %38 = ptrtoint ptr %flow.050.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flow.050.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %call4.i)
  %cmp16.i.i = icmp eq i32 %39, %call4.i
  br i1 %cmp16.i.i, label %seek_list.exit.i, label %if.else.i.i.cleanup.i.i_crit_edge

if.else.i.i.cleanup.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.else.i.i.cleanup.i.i_crit_edge, %list_del.exit.i.i
  %cmp.not.i.i = icmp eq ptr %.pn51.i.i, %arrayidx5.i
  br i1 %cmp.not.i.i, label %cleanup.i.i.for.body11.preheader.i_crit_edge, label %cleanup.i.i.for.body.i.i_crit_edge

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

cleanup.i.i.for.body11.preheader.i_crit_edge:     ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.preheader.i

seek_list.exit.i:                                 ; preds = %if.else.i.i
  %tobool.not.i = icmp eq ptr %flow.050.i.i, null
  br i1 %tobool.not.i, label %seek_list.exit.i.for.body11.preheader.i_crit_edge, label %if.then7.i

seek_list.exit.i.for.body11.preheader.i_crit_edge: ; preds = %seek_list.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.preheader.i

for.body11.preheader.i:                           ; preds = %seek_list.exit.i.for.body11.preheader.i_crit_edge, %cleanup.i.i.for.body11.preheader.i_crit_edge, %if.then9.i.i.for.body11.preheader.i_crit_edge, %if.end.i.for.body11.preheader.i_crit_edge
  %shr.i = lshr i32 %call4.i, 10
  %and12.1.i = and i32 %shr.i, 1023
  %xor.1.i = xor i32 %and12.1.i, %and.i
  %shr.1.i = lshr i32 %call4.i, 20
  %and12.2.i = and i32 %shr.1.i, 1023
  %xor.2.i = xor i32 %xor.1.i, %and12.2.i
  %shr.2.i = lshr i32 %call4.i, 30
  %xor18.i = xor i32 %xor.2.i, %shr.2.i
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %40 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cb.i.i.i, align 4
  %arrayidx26.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 40
  %42 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx26.i, align 4
  %div3.i.i = lshr i32 %and.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %43, i32 %div3.i.i
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %call4.i, 31
  %46 = shl nuw i32 1, %and.i.i
  %47 = and i32 %45, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool28.not.i = icmp eq i32 %47, 0
  br i1 %tobool28.not.i, label %if.then29.i, label %for.body11.preheader.i.if.end36.i_crit_edge

for.body11.preheader.i.if.end36.i_crit_edge:      ; preds = %for.body11.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.then7.i:                                       ; preds = %seek_list.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %hit_timestamp.i.i.le = getelementptr i8, ptr %.pn.in48.i.i, i32 -4
  %48 = ptrtoint ptr %hit_timestamp.i.i.le to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %0, ptr %hit_timestamp.i.i.le, align 4
  br label %hhf_classify.exit

if.then29.i:                                      ; preds = %for.body11.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx30.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 20
  %49 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx30.i, align 4
  %arrayidx32.i = getelementptr i32, ptr %50, i32 %and.i
  %51 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %arrayidx32.i, align 4
  %52 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx26.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %53, i32 %div3.i.i
  %54 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %55, %46
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then29.i, %for.body11.preheader.i.if.end36.i_crit_edge
  %arrayidx38.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 20
  %56 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx38.i, align 4
  %arrayidx40.i = getelementptr i32, ptr %57, i32 %and.i
  %58 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx40.i, align 4
  %add41.i = add i32 %59, %41
  %arrayidx26.1.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 44
  %60 = ptrtoint ptr %arrayidx26.1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx26.1.i, align 4
  %div3.i.1.i = lshr i32 %and12.1.i, 5
  %arrayidx.i.1.i = getelementptr i32, ptr %61, i32 %div3.i.1.i
  %62 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %arrayidx.i.1.i, align 4
  %and.i.1.i = and i32 %shr.i, 31
  %64 = shl nuw i32 1, %and.i.1.i
  %65 = and i32 %63, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool28.not.1.i = icmp eq i32 %65, 0
  br i1 %tobool28.not.1.i, label %if.then29.1.i, label %if.end36.i.if.end36.1.i_crit_edge

if.end36.i.if.end36.1.i_crit_edge:                ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.1.i

if.then29.1.i:                                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx30.1.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %66 = ptrtoint ptr %arrayidx30.1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx30.1.i, align 4
  %arrayidx32.1.i = getelementptr i32, ptr %67, i32 %and12.1.i
  %68 = ptrtoint ptr %arrayidx32.1.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %arrayidx32.1.i, align 4
  %69 = ptrtoint ptr %arrayidx26.1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx26.1.i, align 4
  %add.ptr.i.1.i = getelementptr i32, ptr %70, i32 %div3.i.1.i
  %71 = ptrtoint ptr %add.ptr.i.1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr.i.1.i, align 4
  %or.i.1.i = or i32 %72, %64
  store i32 %or.i.1.i, ptr %add.ptr.i.1.i, align 4
  br label %if.end36.1.i

if.end36.1.i:                                     ; preds = %if.then29.1.i, %if.end36.i.if.end36.1.i_crit_edge
  %arrayidx38.1.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %73 = ptrtoint ptr %arrayidx38.1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx38.1.i, align 4
  %arrayidx40.1.i = getelementptr i32, ptr %74, i32 %and12.1.i
  %75 = ptrtoint ptr %arrayidx40.1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx40.1.i, align 4
  %add41.1.i = add i32 %76, %41
  %77 = tail call i32 @llvm.umin.i32(i32 %add41.i, i32 %add41.1.i) #10
  %arrayidx26.2.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 48
  %78 = ptrtoint ptr %arrayidx26.2.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx26.2.i, align 4
  %div3.i.2.i = lshr i32 %and12.2.i, 5
  %arrayidx.i.2.i = getelementptr i32, ptr %79, i32 %div3.i.2.i
  %80 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %arrayidx.i.2.i, align 4
  %and.i.2.i = and i32 %shr.1.i, 31
  %82 = shl nuw i32 1, %and.i.2.i
  %83 = and i32 %81, %82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool28.not.2.i = icmp eq i32 %83, 0
  br i1 %tobool28.not.2.i, label %if.then29.2.i, label %if.end36.1.i.if.end36.2.i_crit_edge

if.end36.1.i.if.end36.2.i_crit_edge:              ; preds = %if.end36.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.2.i

if.then29.2.i:                                    ; preds = %if.end36.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx30.2.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 28
  %84 = ptrtoint ptr %arrayidx30.2.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx30.2.i, align 4
  %arrayidx32.2.i = getelementptr i32, ptr %85, i32 %and12.2.i
  %86 = ptrtoint ptr %arrayidx32.2.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %arrayidx32.2.i, align 4
  %87 = ptrtoint ptr %arrayidx26.2.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx26.2.i, align 4
  %add.ptr.i.2.i = getelementptr i32, ptr %88, i32 %div3.i.2.i
  %89 = ptrtoint ptr %add.ptr.i.2.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %add.ptr.i.2.i, align 4
  %or.i.2.i = or i32 %90, %82
  store i32 %or.i.2.i, ptr %add.ptr.i.2.i, align 4
  br label %if.end36.2.i

if.end36.2.i:                                     ; preds = %if.then29.2.i, %if.end36.1.i.if.end36.2.i_crit_edge
  %arrayidx38.2.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 28
  %91 = ptrtoint ptr %arrayidx38.2.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx38.2.i, align 4
  %arrayidx40.2.i = getelementptr i32, ptr %92, i32 %and12.2.i
  %93 = ptrtoint ptr %arrayidx40.2.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx40.2.i, align 4
  %add41.2.i = add i32 %94, %41
  %95 = tail call i32 @llvm.umin.i32(i32 %77, i32 %add41.2.i) #10
  %arrayidx26.3.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 52
  %96 = ptrtoint ptr %arrayidx26.3.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx26.3.i, align 4
  %div3.i.3.i = lshr i32 %xor.2.i, 5
  %arrayidx.i.3.i = getelementptr i32, ptr %97, i32 %div3.i.3.i
  %98 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %arrayidx.i.3.i, align 4
  %and.i.3.i = and i32 %xor18.i, 31
  %100 = shl nuw i32 1, %and.i.3.i
  %101 = and i32 %99, %100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool28.not.3.i = icmp eq i32 %101, 0
  br i1 %tobool28.not.3.i, label %if.then29.3.i, label %if.end36.2.i.if.end36.3.i_crit_edge

if.end36.2.i.if.end36.3.i_crit_edge:              ; preds = %if.end36.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.3.i

if.then29.3.i:                                    ; preds = %if.end36.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx30.3.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %102 = ptrtoint ptr %arrayidx30.3.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx30.3.i, align 4
  %arrayidx32.3.i = getelementptr i32, ptr %103, i32 %xor18.i
  %104 = ptrtoint ptr %arrayidx32.3.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %arrayidx32.3.i, align 4
  %105 = ptrtoint ptr %arrayidx26.3.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx26.3.i, align 4
  %add.ptr.i.3.i = getelementptr i32, ptr %106, i32 %div3.i.3.i
  %107 = ptrtoint ptr %add.ptr.i.3.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %add.ptr.i.3.i, align 4
  %or.i.3.i = or i32 %108, %100
  store i32 %or.i.3.i, ptr %add.ptr.i.3.i, align 4
  br label %if.end36.3.i

if.end36.3.i:                                     ; preds = %if.then29.3.i, %if.end36.2.i.if.end36.3.i_crit_edge
  %arrayidx38.3.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %109 = ptrtoint ptr %arrayidx38.3.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx38.3.i, align 4
  %arrayidx40.3.i = getelementptr i32, ptr %110, i32 %xor18.i
  %111 = ptrtoint ptr %arrayidx40.3.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx40.3.i, align 4
  %add41.3.i = add i32 %112, %41
  %113 = tail call i32 @llvm.umin.i32(i32 %95, i32 %add41.3.i) #10
  %hhf_admit_bytes.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2
  %114 = ptrtoint ptr %hhf_admit_bytes.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %hhf_admit_bytes.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %115)
  %cmp48.i = icmp ugt i32 %113, %115
  br i1 %cmp48.i, label %if.then49.i, label %for.body61.preheader.i

for.body61.preheader.i:                           ; preds = %if.end36.3.i
  %116 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx38.i, align 4
  %arrayidx65.i = getelementptr i32, ptr %117, i32 %and.i
  %118 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx65.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %113)
  %cmp66.i = icmp ult i32 %119, %113
  br i1 %cmp66.i, label %if.then67.i, label %for.body61.preheader.i.for.inc73.i_crit_edge

for.body61.preheader.i.for.inc73.i_crit_edge:     ; preds = %for.body61.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc73.i

if.then49.i:                                      ; preds = %if.end36.3.i
  %120 = ptrtoint ptr %hh_flows.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hh_flows.i, align 8
  %arrayidx51.i = getelementptr %struct.list_head, ptr %121, i32 %and.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %122 = load volatile i32, ptr @jiffies, align 128
  %123 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile ptr, ptr %arrayidx51.i, align 4
  %cmp.i.not.i144.i = icmp eq ptr %124, %arrayidx51.i
  br i1 %cmp.i.not.i144.i, label %if.then49.i.if.end9.i.i_crit_edge, label %for.cond.preheader.i146.i

if.then49.i.if.end9.i.i_crit_edge:                ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i.i

for.cond.preheader.i146.i:                        ; preds = %if.then49.i
  %hhf_evict_timeout.i145.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i151.i.for.cond.i.i_crit_edge, %for.cond.preheader.i146.i
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body.i151.i.for.cond.i.i_crit_edge ], [ %arrayidx51.i, %for.cond.preheader.i146.i ]
  %125 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i147.i = icmp eq ptr %.pn.i.i, %arrayidx51.i
  br i1 %cmp.not.i147.i, label %for.cond.i.i.if.end9.i.i_crit_edge, label %for.body.i151.i

for.cond.i.i.if.end9.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i.i

for.body.i151.i:                                  ; preds = %for.cond.i.i
  %hit_timestamp.i148.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %126 = ptrtoint ptr %hit_timestamp.i148.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %hit_timestamp.i148.i, align 4
  %128 = ptrtoint ptr %hhf_evict_timeout.i145.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %hhf_evict_timeout.i145.i, align 8
  %add.i149.i = sub i32 %127, %122
  %sub.i150.i = add i32 %add.i149.i, %129
  %cmp2.i.i = icmp slt i32 %sub.i150.i, 0
  br i1 %cmp2.i.i, label %alloc_new_hh.exit.i, label %for.body.i151.i.for.cond.i.i_crit_edge

for.body.i151.i.for.cond.i.i_crit_edge:           ; preds = %for.body.i151.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

if.end9.i.i:                                      ; preds = %for.cond.i.i.if.end9.i.i_crit_edge, %if.then49.i.if.end9.i.i_crit_edge
  %hh_flows_current_cnt.i152.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %130 = ptrtoint ptr %hh_flows_current_cnt.i152.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %hh_flows_current_cnt.i152.i, align 8
  %hh_flows_limit.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 4
  %132 = ptrtoint ptr %hh_flows_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %hh_flows_limit.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %133)
  %cmp10.not.i.i = icmp ult i32 %131, %133
  br i1 %cmp10.not.i.i, label %if.end12.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %hh_flows_overlimit.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %134 = ptrtoint ptr %hh_flows_overlimit.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %hh_flows_overlimit.i.i, align 8
  %inc.i.i = add i32 %135, 1
  store i32 %inc.i.i, ptr %hh_flows_overlimit.i.i, align 8
  br label %hhf_classify.exit

if.end12.i.i:                                     ; preds = %if.end9.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %136 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %136, i32 noundef 2848, i32 noundef 16) #13
  %tobool14.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool14.not.i.i, label %if.end12.i.i.hhf_classify.exit_crit_edge, label %if.end16.i.i

if.end12.i.i.hhf_classify.exit_crit_edge:         ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hhf_classify.exit

if.end16.i.i:                                     ; preds = %if.end12.i.i
  %137 = ptrtoint ptr %hh_flows_current_cnt.i152.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %hh_flows_current_cnt.i152.i, align 8
  %inc18.i.i = add i32 %138, 1
  store i32 %inc18.i.i, ptr %hh_flows_current_cnt.i152.i, align 8
  %flowchain19.i.i = getelementptr inbounds %struct.hh_flow_state, ptr %call7.i.i.i.i, i32 0, i32 2
  %139 = ptrtoint ptr %flowchain19.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %flowchain19.i.i, ptr %flowchain19.i.i, align 8
  %prev.i.i153.i = getelementptr inbounds %struct.hh_flow_state, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %140 = ptrtoint ptr %prev.i.i153.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %flowchain19.i.i, ptr %prev.i.i153.i, align 4
  %prev.i37.i.i = getelementptr %struct.list_head, ptr %121, i32 %and.i, i32 1
  %141 = ptrtoint ptr %prev.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %prev.i37.i.i, align 4
  %call.i.i.i154.i = tail call zeroext i1 @__list_add_valid(ptr noundef %flowchain19.i.i, ptr noundef %142, ptr noundef %arrayidx51.i) #10
  br i1 %call.i.i.i154.i, label %if.end.i.i.i155.i, label %if.end16.i.i.if.end55.i_crit_edge

if.end16.i.i.if.end55.i_crit_edge:                ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i

if.end.i.i.i155.i:                                ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %143 = ptrtoint ptr %prev.i37.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %flowchain19.i.i, ptr %prev.i37.i.i, align 4
  %144 = ptrtoint ptr %flowchain19.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %arrayidx51.i, ptr %flowchain19.i.i, align 8
  %145 = ptrtoint ptr %prev.i.i153.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %142, ptr %prev.i.i153.i, align 4
  %146 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %flowchain19.i.i, ptr %142, align 4
  br label %if.end55.i

alloc_new_hh.exit.i:                              ; preds = %for.body.i151.i
  %flow.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -8
  %tobool53.not.i = icmp eq ptr %flow.0.le.i.i, null
  br i1 %tobool53.not.i, label %alloc_new_hh.exit.i.hhf_classify.exit_crit_edge, label %alloc_new_hh.exit.i.if.end55.i_crit_edge

alloc_new_hh.exit.i.if.end55.i_crit_edge:         ; preds = %alloc_new_hh.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i

alloc_new_hh.exit.i.hhf_classify.exit_crit_edge:  ; preds = %alloc_new_hh.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hhf_classify.exit

if.end55.i:                                       ; preds = %alloc_new_hh.exit.i.if.end55.i_crit_edge, %if.end.i.i.i155.i, %if.end16.i.i.if.end55.i_crit_edge
  %retval.2.i156163.i = phi ptr [ %flow.0.le.i.i, %alloc_new_hh.exit.i.if.end55.i_crit_edge ], [ %call7.i.i.i.i, %if.end16.i.i.if.end55.i_crit_edge ], [ %call7.i.i.i.i, %if.end.i.i.i155.i ]
  %147 = ptrtoint ptr %retval.2.i156163.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %call4.i, ptr %retval.2.i156163.i, align 4
  %hit_timestamp56.i = getelementptr inbounds %struct.hh_flow_state, ptr %retval.2.i156163.i, i32 0, i32 1
  %148 = ptrtoint ptr %hit_timestamp56.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %0, ptr %hit_timestamp56.i, align 4
  %hh_flows_total_cnt.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 12
  %149 = ptrtoint ptr %hh_flows_total_cnt.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %hh_flows_total_cnt.i, align 4
  %inc57.i = add i32 %150, 1
  store i32 %inc57.i, ptr %hh_flows_total_cnt.i, align 4
  br label %hhf_classify.exit

if.then67.i:                                      ; preds = %for.body61.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  %151 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %113, ptr %arrayidx65.i, align 4
  br label %for.inc73.i

for.inc73.i:                                      ; preds = %if.then67.i, %for.body61.preheader.i.for.inc73.i_crit_edge
  %152 = ptrtoint ptr %arrayidx38.1.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx38.1.i, align 4
  %arrayidx65.1.i = getelementptr i32, ptr %153, i32 %and12.1.i
  %154 = ptrtoint ptr %arrayidx65.1.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx65.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %155, i32 %113)
  %cmp66.1.i = icmp ult i32 %155, %113
  br i1 %cmp66.1.i, label %if.then67.1.i, label %for.inc73.i.for.inc73.1.i_crit_edge

for.inc73.i.for.inc73.1.i_crit_edge:              ; preds = %for.inc73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc73.1.i

if.then67.1.i:                                    ; preds = %for.inc73.i
  call void @__sanitizer_cov_trace_pc() #12
  %156 = ptrtoint ptr %arrayidx65.1.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %113, ptr %arrayidx65.1.i, align 4
  br label %for.inc73.1.i

for.inc73.1.i:                                    ; preds = %if.then67.1.i, %for.inc73.i.for.inc73.1.i_crit_edge
  %157 = ptrtoint ptr %arrayidx38.2.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx38.2.i, align 4
  %arrayidx65.2.i = getelementptr i32, ptr %158, i32 %and12.2.i
  %159 = ptrtoint ptr %arrayidx65.2.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx65.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %113)
  %cmp66.2.i = icmp ult i32 %160, %113
  br i1 %cmp66.2.i, label %if.then67.2.i, label %for.inc73.1.i.for.inc73.2.i_crit_edge

for.inc73.1.i.for.inc73.2.i_crit_edge:            ; preds = %for.inc73.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc73.2.i

if.then67.2.i:                                    ; preds = %for.inc73.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %161 = ptrtoint ptr %arrayidx65.2.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %113, ptr %arrayidx65.2.i, align 4
  br label %for.inc73.2.i

for.inc73.2.i:                                    ; preds = %if.then67.2.i, %for.inc73.1.i.for.inc73.2.i_crit_edge
  %162 = ptrtoint ptr %arrayidx38.3.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx38.3.i, align 4
  %arrayidx65.3.i = getelementptr i32, ptr %163, i32 %xor18.i
  %164 = ptrtoint ptr %arrayidx65.3.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx65.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %165, i32 %113)
  %cmp66.3.i = icmp ult i32 %165, %113
  br i1 %cmp66.3.i, label %if.then67.3.i, label %for.inc73.2.i.hhf_classify.exit_crit_edge

for.inc73.2.i.hhf_classify.exit_crit_edge:        ; preds = %for.inc73.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hhf_classify.exit

if.then67.3.i:                                    ; preds = %for.inc73.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %166 = ptrtoint ptr %arrayidx65.3.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %113, ptr %arrayidx65.3.i, align 4
  br label %hhf_classify.exit

hhf_classify.exit:                                ; preds = %if.then67.3.i, %for.inc73.2.i.hhf_classify.exit_crit_edge, %if.end55.i, %alloc_new_hh.exit.i.hhf_classify.exit_crit_edge, %if.end12.i.i.hhf_classify.exit_crit_edge, %if.then11.i.i, %if.then7.i
  %cmp = phi i1 [ true, %if.then7.i ], [ false, %if.then11.i.i ], [ false, %if.end12.i.i.hhf_classify.exit_crit_edge ], [ false, %alloc_new_hh.exit.i.hhf_classify.exit_crit_edge ], [ true, %if.end55.i ], [ false, %for.inc73.2.i.hhf_classify.exit_crit_edge ], [ false, %if.then67.3.i ]
  %retval.0.i = phi i32 [ 0, %if.then7.i ], [ 1, %if.then11.i.i ], [ 1, %if.end12.i.i.hhf_classify.exit_crit_edge ], [ 1, %alloc_new_hh.exit.i.hhf_classify.exit_crit_edge ], [ 0, %if.end55.i ], [ 1, %for.inc73.2.i.hhf_classify.exit_crit_edge ], [ 1, %if.then67.3.i ]
  %arrayidx = getelementptr [2 x %struct.wdrr_bucket], ptr %privdata.i, i32 0, i32 %retval.0.i
  %167 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx, align 4
  %cmp.i42 = icmp eq ptr %168, null
  br i1 %cmp.i42, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %hhf_classify.exit
  call void @__sanitizer_cov_trace_pc() #12
  %169 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %skb, ptr %arrayidx, align 4
  br label %bucket_add.exit

if.else.i:                                        ; preds = %hhf_classify.exit
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i = getelementptr [2 x %struct.wdrr_bucket], ptr %privdata.i, i32 0, i32 %retval.0.i, i32 1
  %170 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %tail.i, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %skb, ptr %171, align 8
  br label %bucket_add.exit

bucket_add.exit:                                  ; preds = %if.else.i, %if.then.i
  %tail2.i = getelementptr [2 x %struct.wdrr_bucket], ptr %privdata.i, i32 0, i32 %retval.0.i, i32 1
  %173 = ptrtoint ptr %tail2.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %skb, ptr %tail2.i, align 4
  %174 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr null, ptr %skb, align 8
  %cb.i.i.i44 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %175 = ptrtoint ptr %cb.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %cb.i.i.i44, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %177 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %backlog.i, align 4
  %add.i45 = add i32 %178, %176
  store i32 %add.i45, ptr %backlog.i, align 4
  %bucketchain = getelementptr [2 x %struct.wdrr_bucket], ptr %privdata.i, i32 0, i32 %retval.0.i, i32 2
  %179 = ptrtoint ptr %bucketchain to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile ptr, ptr %bucketchain, align 4
  %cmp.i46.not = icmp eq ptr %180, %bucketchain
  br i1 %cmp.i46.not, label %if.then, label %bucket_add.exit.if.end6_crit_edge

bucket_add.exit.if.end6_crit_edge:                ; preds = %bucket_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %bucket_add.exit
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %old_buckets = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16
  %prev.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 0, i32 0, i32 1
  %181 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %bucketchain, ptr noundef %182, ptr noundef %old_buckets) #10
  br i1 %call.i.i, label %if.then3.if.end.sink.split_crit_edge, label %if.then3.if.end_crit_edge

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then3.if.end.sink.split_crit_edge:             ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.else:                                          ; preds = %if.then
  %hhf_non_hh_weight = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 2
  %183 = ptrtoint ptr %hhf_non_hh_weight to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %hhf_non_hh_weight, align 4
  %new_buckets = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 56
  %prev.i47 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 60
  %185 = ptrtoint ptr %prev.i47 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %prev.i47, align 4
  %call.i.i48 = tail call zeroext i1 @__list_add_valid(ptr noundef %bucketchain, ptr noundef %186, ptr noundef %new_buckets) #10
  br i1 %call.i.i48, label %if.else.if.end.sink.split_crit_edge, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else.if.end.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.else.if.end.sink.split_crit_edge, %if.then3.if.end.sink.split_crit_edge
  %prev.i47.sink = phi ptr [ %prev.i, %if.then3.if.end.sink.split_crit_edge ], [ %prev.i47, %if.else.if.end.sink.split_crit_edge ]
  %new_buckets.sink = phi ptr [ %old_buckets, %if.then3.if.end.sink.split_crit_edge ], [ %new_buckets, %if.else.if.end.sink.split_crit_edge ]
  %.sink65 = phi ptr [ %182, %if.then3.if.end.sink.split_crit_edge ], [ %186, %if.else.if.end.sink.split_crit_edge ]
  %weight.0.ph = phi i32 [ 1, %if.then3.if.end.sink.split_crit_edge ], [ %184, %if.else.if.end.sink.split_crit_edge ]
  %187 = ptrtoint ptr %prev.i47.sink to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %bucketchain, ptr %prev.i47.sink, align 4
  %188 = ptrtoint ptr %bucketchain to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %new_buckets.sink, ptr %bucketchain, align 4
  %prev3.i.i49 = getelementptr [2 x %struct.wdrr_bucket], ptr %privdata.i, i32 0, i32 %retval.0.i, i32 2, i32 1
  %189 = ptrtoint ptr %prev3.i.i49 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %.sink65, ptr %prev3.i.i49, align 4
  %190 = ptrtoint ptr %.sink65 to i32
  call void @__asan_store4_noabort(i32 %190)
  store volatile ptr %bucketchain, ptr %.sink65, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then3.if.end_crit_edge
  %weight.0 = phi i32 [ 1, %if.then3.if.end_crit_edge ], [ %184, %if.else.if.end_crit_edge ], [ %weight.0.ph, %if.end.sink.split ]
  %quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  %191 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %quantum, align 8
  %mul = mul i32 %192, %weight.0
  %deficit = getelementptr [2 x %struct.wdrr_bucket], ptr %privdata.i, i32 0, i32 %retval.0.i, i32 3
  %193 = ptrtoint ptr %deficit to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %mul, ptr %deficit, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %bucket_add.exit.if.end6_crit_edge
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %194 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %qlen, align 8
  %inc = add i32 %195, 1
  store i32 %inc, ptr %qlen, align 8
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %196 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %197)
  %cmp8.not = icmp ugt i32 %inc, %197
  br i1 %cmp8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %198 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %backlog.i, align 4
  %drop_overlimit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 14
  %200 = ptrtoint ptr %drop_overlimit to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %drop_overlimit, align 4
  %inc11 = add i32 %201, 1
  store i32 %inc11, ptr %drop_overlimit, align 4
  %202 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %privdata.i, align 4
  %tobool.not.i52 = icmp eq ptr %203, null
  %arrayidx2.i = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 5
  %spec.select.i = select i1 %tobool.not.i52, ptr %arrayidx2.i, ptr %privdata.i
  %204 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %spec.select.i, align 4
  %tobool4.not.i = icmp eq ptr %205, null
  br i1 %tobool4.not.i, label %if.end10.hhf_drop.exit_crit_edge, label %if.then5.i

if.end10.hhf_drop.exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %hhf_drop.exit

if.then5.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %205, align 8
  %208 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %207, ptr %spec.select.i, align 4
  store ptr null, ptr %205, align 8
  %209 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %qlen, align 8
  %dec.i = add i32 %210, -1
  store i32 %dec.i, ptr %qlen, align 8
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %205, i32 0, i32 3
  %211 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %cb.i.i.i.i, align 4
  %213 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %backlog.i, align 4
  %sub.i.i53 = sub i32 %214, %212
  store i32 %sub.i.i53, ptr %backlog.i, align 4
  %215 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %to_free, align 4
  store ptr %216, ptr %205, align 8
  store ptr %205, ptr %to_free, align 4
  %drops.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %217 = ptrtoint ptr %drops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %drops.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %218, 1
  store i32 %inc.i.i.i.i, ptr %drops.i.i.i.i, align 4
  br label %hhf_drop.exit

hhf_drop.exit:                                    ; preds = %if.then5.i, %if.end10.hhf_drop.exit_crit_edge
  %sub.ptr.lhs.cast.i = ptrtoint ptr %spec.select.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %privdata.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %retval.0.i)
  %cmp13 = icmp eq i32 %sub.ptr.div.i, %retval.0.i
  br i1 %cmp13, label %hhf_drop.exit.cleanup_crit_edge, label %if.end15

hhf_drop.exit.cleanup_crit_edge:                  ; preds = %hhf_drop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %hhf_drop.exit
  call void @__sanitizer_cov_trace_pc() #12
  %219 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %backlog.i, align 4
  %sub = sub i32 %199, %220
  tail call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef 1, i32 noundef %sub) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %hhf_drop.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ 0, %if.end6.cleanup_crit_edge ], [ 2, %hhf_drop.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hhf_dequeue(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %new_buckets = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 56
  %old_buckets = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16
  %prev.i2.i69 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 0, i32 0, i32 1
  %hhf_non_hh_weight = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 2
  %quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  br label %begin

begin:                                            ; preds = %begin.backedge, %entry
  %0 = ptrtoint ptr %new_buckets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %new_buckets, align 4
  %cmp.i.not = icmp eq ptr %1, %new_buckets
  br i1 %cmp.i.not, label %if.then, label %begin.if.end5_crit_edge

begin.if.end5_crit_edge:                          ; preds = %begin
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %begin
  %2 = ptrtoint ptr %old_buckets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %old_buckets, align 4
  %cmp.i61.not = icmp eq ptr %3, %old_buckets
  br i1 %cmp.i61.not, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %begin.if.end5_crit_edge
  %head.0 = phi ptr [ %old_buckets, %if.then.if.end5_crit_edge ], [ %new_buckets, %begin.if.end5_crit_edge ]
  %4 = ptrtoint ptr %head.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.0, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -8
  %deficit = getelementptr i8, ptr %5, i32 8
  %6 = ptrtoint ptr %deficit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %deficit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp slt i32 %7, 1
  br i1 %cmp, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end5
  %8 = icmp eq ptr %add.ptr, %privdata.i
  br i1 %8, label %if.then6.cond.end_crit_edge, label %cond.false

if.then6.cond.end_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %hhf_non_hh_weight to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hhf_non_hh_weight, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then6.cond.end_crit_edge
  %cond = phi i32 [ %10, %cond.false ], [ 1, %if.then6.cond.end_crit_edge ]
  %11 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %quantum, align 8
  %mul = mul i32 %12, %cond
  %add = add i32 %mul, %7
  %13 = ptrtoint ptr %deficit to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %deficit, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #10
  br i1 %call.i.i, label %if.end.i.i, label %cond.end.__list_del_entry.exit.i_crit_edge

cond.end.__list_del_entry.exit.i_crit_edge:       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %cond.end.__list_del_entry.exit.i_crit_edge
  %20 = ptrtoint ptr %prev.i2.i69 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i2.i69, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %5, ptr noundef %21, ptr noundef %old_buckets) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.begin.backedge_crit_edge

__list_del_entry.exit.i.begin.backedge_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %begin.backedge

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %prev.i2.i69 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %5, ptr %prev.i2.i69, align 4
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %old_buckets, ptr %5, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %5, ptr %21, align 4
  br label %begin.backedge

if.end10:                                         ; preds = %if.end5
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %tobool12.not = icmp eq ptr %27, null
  br i1 %tobool12.not, label %if.then18, label %if.end29

if.then18:                                        ; preds = %if.end10
  %cmp20 = icmp eq ptr %head.0, %new_buckets
  br i1 %cmp20, label %land.lhs.true, label %if.then18.if.else_crit_edge

if.then18.if.else_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.then18
  %28 = ptrtoint ptr %old_buckets to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %old_buckets, align 4
  %cmp.i63.not = icmp eq ptr %29, %old_buckets
  br i1 %cmp.i63.not, label %land.lhs.true.if.else_crit_edge, label %if.then24

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then24:                                        ; preds = %land.lhs.true
  %call.i.i65 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #10
  br i1 %call.i.i65, label %if.end.i.i68, label %if.then24.__list_del_entry.exit.i71_crit_edge

if.then24.__list_del_entry.exit.i71_crit_edge:    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i71

if.end.i.i68:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i66 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i66 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i66, align 4
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %prev1.i.i.i67 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i67, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %__list_del_entry.exit.i71

__list_del_entry.exit.i71:                        ; preds = %if.end.i.i68, %if.then24.__list_del_entry.exit.i71_crit_edge
  %36 = ptrtoint ptr %prev.i2.i69 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i2.i69, align 4
  %call.i.i.i70 = tail call zeroext i1 @__list_add_valid(ptr noundef %5, ptr noundef %37, ptr noundef %old_buckets) #10
  br i1 %call.i.i.i70, label %if.end.i.i.i73, label %__list_del_entry.exit.i71.begin.backedge_crit_edge

__list_del_entry.exit.i71.begin.backedge_crit_edge: ; preds = %__list_del_entry.exit.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %begin.backedge

if.end.i.i.i73:                                   ; preds = %__list_del_entry.exit.i71
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %prev.i2.i69 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %5, ptr %prev.i2.i69, align 4
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %old_buckets, ptr %5, align 4
  %prev3.i.i.i72 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i72 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i.i72, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %5, ptr %37, align 4
  br label %begin.backedge

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then18.if.else_crit_edge
  %call.i.i75 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #10
  br i1 %call.i.i75, label %if.end.i.i78, label %if.else.list_del_init.exit_crit_edge

if.else.list_del_init.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i78:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i76 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i76 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i76, align 4
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %5, align 4
  %prev1.i.i.i77 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i77 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i77, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i78, %if.else.list_del_init.exit_crit_edge
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %5, ptr %5, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %5, ptr %prev.i3.i, align 4
  br label %begin.backedge

begin.backedge:                                   ; preds = %list_del_init.exit, %if.end.i.i.i73, %__list_del_entry.exit.i71.begin.backedge_crit_edge, %if.end.i.i.i, %__list_del_entry.exit.i.begin.backedge_crit_edge
  br label %begin

if.end29:                                         ; preds = %if.end10
  %50 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %27, align 8
  %52 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %add.ptr, align 4
  store ptr null, ptr %27, align 8
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %53 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %qlen, align 8
  %dec = add i32 %54, -1
  store i32 %dec, ptr %qlen, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 3
  %55 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cb.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %57 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %backlog.i, align 4
  %sub.i = sub i32 %58, %56
  store i32 %sub.i, ptr %backlog.i, align 4
  %59 = load i32, ptr %cb.i.i.i, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 17
  %60 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool.i.not.i.i = icmp eq i16 %63, 0
  br i1 %tobool.i.not.i.i, label %if.end29.cond.end.i.i_crit_edge, label %cond.true.i.i

if.end29.cond.end.i.i_crit_edge:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %61, i32 0, i32 5
  %64 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %gso_segs.i.i, align 2
  %conv4.i.i = zext i16 %65 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end29.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ 1, %if.end29.cond.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %66 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i.i.i.i.i = icmp eq i32 %66, 0
  br i1 %tobool.not.i.i.i.i.i, label %cond.end.i.i.qdisc_bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i.i

cond.end.i.i.qdisc_bstats_update.exit_crit_edge:  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qdisc_bstats_update.exit

land.lhs.true.i.i.i.i.i:                          ; preds = %cond.end.i.i
  %67 = tail call i32 @llvm.read_register.i32(metadata !24) #10
  %and.i.i.i.i.i.i.i.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %70, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  %71 = tail call i32 @llvm.read_register.i32(metadata !24) #10
  %and.i.i.i.i.i.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %74
  %75 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %76, ptrtoint (ptr @lockdep_recursion to i32)
  %77 = inttoptr i32 %add.i.i.i.i.i to ptr
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %77, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !35
  %80 = tail call i32 @llvm.read_register.i32(metadata !24) #10
  %and.i.i.i7.i.i.i.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i7.i.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %83, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool20.not.i.i.i.i.i = icmp eq i32 %79, 0
  br i1 %tobool20.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qdisc_bstats_update.exit

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %84 = tail call i32 @llvm.read_register.i32(metadata !24) #10
  %and.i.i.i.i.i.i.i = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp.i.i.i.i.i = icmp eq i32 %87, 0
  br i1 %cmp.i.i.i.i.i, label %land.rhs22.i.i.i.i.i, label %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qdisc_bstats_update.exit

land.rhs22.i.i.i.i.i:                             ; preds = %land.rhs.i.i.i.i.i
  %88 = tail call i32 @llvm.read_register.i32(metadata !24) #10
  %and.i.i.i9.i.i.i.i.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i9.i.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  %add.i11.i.i.i.i.i = add i32 %91, 1
  store volatile i32 %add.i11.i.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !36
  %92 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx46.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %93
  %94 = ptrtoint ptr %arrayidx46.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx46.i.i.i.i.i, align 4
  %add47.i.i.i.i.i = add i32 %95, ptrtoint (ptr @hardirqs_enabled to i32)
  %96 = inttoptr i32 %add47.i.i.i.i.i to ptr
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %96, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  %99 = tail call i32 @llvm.read_register.i32(metadata !24) #10
  %and.i.i.i12.i.i.i.i.i = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i.i12.i.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  %sub.i14.i.i.i.i.i = add i32 %102, -1
  store volatile i32 %sub.i14.i.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool54.not.i.i.i.i.i = icmp eq i32 %98, 0
  br i1 %tobool54.not.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i.i

land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qdisc_bstats_update.exit

land.rhs58.i.i.i.i.i:                             ; preds = %land.rhs22.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %if.then.i.i.i.i.i, !prof !38

land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qdisc_bstats_update.exit

if.then.i.i.i.i.i:                                ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %qdisc_bstats_update.exit

qdisc_bstats_update.exit:                         ; preds = %if.then.i.i.i.i.i, %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %cond.end.i.i.qdisc_bstats_update.exit_crit_edge
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i = zext i32 %59 to i64
  %syncp.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2
  %103 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %104, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !39
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2, i32 0, i32 1
  %105 = tail call ptr @llvm.returnaddress(i32 0) #10
  %106 = ptrtoint ptr %105 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %106) #10
  %107 = ptrtoint ptr %bstats.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %bstats.i, align 8
  %add.i.i.i.i = add i64 %108, %conv.i.i
  store i64 %add.i.i.i.i, ptr %bstats.i, align 8
  %packets2.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 1
  %conv.i7.i.i.i = zext i32 %cond.i.i to i64
  %109 = ptrtoint ptr %packets2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %packets2.i.i.i, align 8
  %add.i8.i.i.i = add i64 %110, %conv.i7.i.i.i
  store i64 %add.i8.i.i.i, ptr %packets2.i.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef %106) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !40
  %111 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %112, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  %113 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cb.i.i.i, align 4
  %115 = ptrtoint ptr %deficit to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %deficit, align 4
  %sub = sub i32 %116, %114
  store i32 %sub, ptr %deficit, align 4
  br label %cleanup

cleanup:                                          ; preds = %qdisc_bstats_update.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %27, %qdisc_bstats_update.exit ], [ null, %if.then.cleanup_crit_edge ]
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
define internal i32 @hhf_init(ptr noundef %sch, ptr noundef %opt, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %0 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1000, ptr %limit, align 4
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %1 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_queue.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 128
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mtu.i, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 19
  %7 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hard_header_len.i, align 2
  %conv.i = zext i16 %8 to i32
  %add.i = add i32 %6, %conv.i
  %quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  %9 = ptrtoint ptr %quantum to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add.i, ptr %quantum, align 8
  %perturbation = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  tail call void @get_random_bytes(ptr noundef %perturbation, i32 noundef 16) #10
  %new_buckets = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 56
  %10 = ptrtoint ptr %new_buckets to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %new_buckets, ptr %new_buckets, align 4
  %prev.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 60
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %new_buckets, ptr %prev.i, align 4
  %old_buckets = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16
  %12 = ptrtoint ptr %old_buckets to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %old_buckets, ptr %old_buckets, align 4
  %prev.i91 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i91 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %old_buckets, ptr %prev.i91, align 4
  %hhf_reset_timeout = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 1
  %14 = ptrtoint ptr %hhf_reset_timeout to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %hhf_reset_timeout, align 8
  %hhf_admit_bytes = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2
  %15 = ptrtoint ptr %hhf_admit_bytes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 131072, ptr %hhf_admit_bytes, align 4
  %hhf_evict_timeout = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %hhf_evict_timeout to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 100, ptr %hhf_evict_timeout, align 8
  %hhf_non_hh_weight = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 2
  %17 = ptrtoint ptr %hhf_non_hh_weight to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %hhf_non_hh_weight, align 4
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @hhf_change(ptr noundef %sch, ptr noundef nonnull %opt, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup50_crit_edge

if.then.cleanup50_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup50

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %hh_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %18 = ptrtoint ptr %hh_flows to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hh_flows, align 8
  %tobool7.not = icmp eq ptr %19, null
  br i1 %tobool7.not, label %if.then8, label %if.end6.cleanup50_crit_edge

if.end6.cleanup50_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup50

if.then8:                                         ; preds = %if.end6
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 8192, i32 noundef 3520, i32 noundef -1) #14
  %20 = ptrtoint ptr %hh_flows to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i.i, ptr %hh_flows, align 8
  %tobool12.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool12.not, label %if.then8.cleanup50_crit_edge, label %if.then8.for.body_crit_edge

if.then8.for.body_crit_edge:                      ; preds = %if.then8
  br label %for.body

if.then8.cleanup50_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup50

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then8.for.body_crit_edge
  %i.097 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then8.for.body_crit_edge ]
  %21 = ptrtoint ptr %hh_flows to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hh_flows, align 8
  %arrayidx = getelementptr %struct.list_head, ptr %22, i32 %i.097
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i92 = getelementptr %struct.list_head, ptr %22, i32 %i.097, i32 1
  %24 = ptrtoint ptr %prev.i92 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx, ptr %prev.i92, align 4
  %inc = add nuw nsw i32 %i.097, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %hh_flows_limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 4
  %25 = ptrtoint ptr %hh_flows_limit to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2048, ptr %hh_flows_limit, align 4
  %hh_flows_overlimit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %26 = ptrtoint ptr %hh_flows_overlimit to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %hh_flows_overlimit, align 8
  %hh_flows_total_cnt = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 12
  %27 = ptrtoint ptr %hh_flows_total_cnt to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %hh_flows_total_cnt, align 4
  %hh_flows_current_cnt = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %28 = ptrtoint ptr %hh_flows_current_cnt to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %hh_flows_current_cnt, align 8
  %call.i.i.i93 = tail call noalias ptr @kvmalloc_node(i32 noundef 4096, i32 noundef 3520, i32 noundef -1) #14
  %arrayidx20 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 20
  %29 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i.i.i93, ptr %arrayidx20, align 4
  %tobool23.not = icmp eq ptr %call.i.i.i93, null
  br i1 %tobool23.not, label %for.end.cleanup50_crit_edge, label %for.cond16

for.end.cleanup50_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup50

for.cond16:                                       ; preds = %for.end
  %call.i.i.i93.1 = tail call noalias ptr @kvmalloc_node(i32 noundef 4096, i32 noundef 3520, i32 noundef -1) #14
  %arrayidx20.1 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %30 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.i.i93.1, ptr %arrayidx20.1, align 4
  %tobool23.not.1 = icmp eq ptr %call.i.i.i93.1, null
  br i1 %tobool23.not.1, label %for.cond16.cleanup50_crit_edge, label %for.cond16.1

for.cond16.cleanup50_crit_edge:                   ; preds = %for.cond16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup50

for.cond16.1:                                     ; preds = %for.cond16
  %call.i.i.i93.2 = tail call noalias ptr @kvmalloc_node(i32 noundef 4096, i32 noundef 3520, i32 noundef -1) #14
  %arrayidx20.2 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 28
  %31 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i.i93.2, ptr %arrayidx20.2, align 4
  %tobool23.not.2 = icmp eq ptr %call.i.i.i93.2, null
  br i1 %tobool23.not.2, label %for.cond16.1.cleanup50_crit_edge, label %for.cond16.2

for.cond16.1.cleanup50_crit_edge:                 ; preds = %for.cond16.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup50

for.cond16.2:                                     ; preds = %for.cond16.1
  %call.i.i.i93.3 = tail call noalias ptr @kvmalloc_node(i32 noundef 4096, i32 noundef 3520, i32 noundef -1) #14
  %arrayidx20.3 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %32 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.i.i93.3, ptr %arrayidx20.3, align 4
  %tobool23.not.3 = icmp eq ptr %call.i.i.i93.3, null
  br i1 %tobool23.not.3, label %for.cond16.2.cleanup50_crit_edge, label %for.cond16.3

for.cond16.2.cleanup50_crit_edge:                 ; preds = %for.cond16.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup50

for.cond16.3:                                     ; preds = %for.cond16.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %hhf_arrays_reset_timestamp = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 36
  %34 = ptrtoint ptr %hhf_arrays_reset_timestamp to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %hhf_arrays_reset_timestamp, align 4
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 128, i32 noundef 3520, i32 noundef -1) #14
  %arrayidx34 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 40
  %35 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i.i, ptr %arrayidx34, align 4
  %tobool37.not = icmp eq ptr %call.i.i, null
  br i1 %tobool37.not, label %for.cond16.3.cleanup50_crit_edge, label %for.cond30

for.cond16.3.cleanup50_crit_edge:                 ; preds = %for.cond16.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup50

for.cond30:                                       ; preds = %for.cond16.3
  %call.i.i.1 = tail call noalias ptr @kvmalloc_node(i32 noundef 128, i32 noundef 3520, i32 noundef -1) #14
  %arrayidx34.1 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 44
  %36 = ptrtoint ptr %arrayidx34.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i.i.1, ptr %arrayidx34.1, align 4
  %tobool37.not.1 = icmp eq ptr %call.i.i.1, null
  br i1 %tobool37.not.1, label %for.cond30.cleanup50_crit_edge, label %for.cond30.1

for.cond30.cleanup50_crit_edge:                   ; preds = %for.cond30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup50

for.cond30.1:                                     ; preds = %for.cond30
  %call.i.i.2 = tail call noalias ptr @kvmalloc_node(i32 noundef 128, i32 noundef 3520, i32 noundef -1) #14
  %arrayidx34.2 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 48
  %37 = ptrtoint ptr %arrayidx34.2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i.i.2, ptr %arrayidx34.2, align 4
  %tobool37.not.2 = icmp eq ptr %call.i.i.2, null
  br i1 %tobool37.not.2, label %for.cond30.1.cleanup50_crit_edge, label %for.cond30.2

for.cond30.1.cleanup50_crit_edge:                 ; preds = %for.cond30.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup50

for.cond30.2:                                     ; preds = %for.cond30.1
  %call.i.i.3 = tail call noalias ptr @kvmalloc_node(i32 noundef 128, i32 noundef 3520, i32 noundef -1) #14
  %arrayidx34.3 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 52
  %38 = ptrtoint ptr %arrayidx34.3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i.i.3, ptr %arrayidx34.3, align 4
  %tobool37.not.3 = icmp eq ptr %call.i.i.3, null
  br i1 %tobool37.not.3, label %for.cond30.2.cleanup50_crit_edge, label %for.cond30.3

for.cond30.2.cleanup50_crit_edge:                 ; preds = %for.cond30.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup50

for.cond30.3:                                     ; preds = %for.cond30.2
  call void @__sanitizer_cov_trace_pc() #12
  %bucketchain = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 2
  %39 = ptrtoint ptr %bucketchain to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %bucketchain, ptr %bucketchain, align 4
  %prev.i94 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 3
  %40 = ptrtoint ptr %prev.i94 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %bucketchain, ptr %prev.i94, align 4
  %bucketchain.1 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %41 = ptrtoint ptr %bucketchain.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %bucketchain.1, ptr %bucketchain.1, align 4
  %prev.i94.1 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 7
  %42 = ptrtoint ptr %prev.i94.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %bucketchain.1, ptr %prev.i94.1, align 4
  br label %cleanup50

cleanup50:                                        ; preds = %for.cond30.3, %for.cond30.2.cleanup50_crit_edge, %for.cond30.1.cleanup50_crit_edge, %for.cond30.cleanup50_crit_edge, %for.cond16.3.cleanup50_crit_edge, %for.cond16.2.cleanup50_crit_edge, %for.cond16.1.cleanup50_crit_edge, %for.cond16.cleanup50_crit_edge, %for.end.cleanup50_crit_edge, %if.then8.cleanup50_crit_edge, %if.end6.cleanup50_crit_edge, %if.then.cleanup50_crit_edge
  %retval.1 = phi i32 [ %call3, %if.then.cleanup50_crit_edge ], [ -12, %if.then8.cleanup50_crit_edge ], [ 0, %if.end6.cleanup50_crit_edge ], [ 0, %for.cond30.3 ], [ -12, %for.cond30.2.cleanup50_crit_edge ], [ -12, %for.cond30.1.cleanup50_crit_edge ], [ -12, %for.cond30.cleanup50_crit_edge ], [ -12, %for.cond16.3.cleanup50_crit_edge ], [ -12, %for.cond16.2.cleanup50_crit_edge ], [ -12, %for.cond16.1.cleanup50_crit_edge ], [ -12, %for.cond16.cleanup50_crit_edge ], [ -12, %for.end.cleanup50_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hhf_reset(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call ptr @hhf_dequeue(ptr noundef %sch)
  %cmp.not3 = icmp eq ptr %call2, null
  br i1 %cmp.not3, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call4 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call2, %entry.while.body_crit_edge ]
  tail call void @rtnl_kfree_skbs(ptr noundef nonnull %call4, ptr noundef nonnull %call4) #10
  %call = tail call ptr @hhf_dequeue(ptr noundef %sch)
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hhf_destroy(ptr nocapture noundef readonly %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 20
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @kvfree(ptr noundef %1) #10
  %arrayidx1 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 40
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  tail call void @kvfree(ptr noundef %3) #10
  %arrayidx.1 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  tail call void @kvfree(ptr noundef %5) #10
  %arrayidx1.1 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 44
  %6 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1.1, align 4
  tail call void @kvfree(ptr noundef %7) #10
  %arrayidx.2 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 28
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  tail call void @kvfree(ptr noundef %9) #10
  %arrayidx1.2 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 48
  %10 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx1.2, align 4
  tail call void @kvfree(ptr noundef %11) #10
  %arrayidx.3 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.3, align 4
  tail call void @kvfree(ptr noundef %13) #10
  %arrayidx1.3 = getelementptr %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 52
  %14 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx1.3, align 4
  tail call void @kvfree(ptr noundef %15) #10
  %hh_flows = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %16 = ptrtoint ptr %hh_flows to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hh_flows, align 8
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %entry.cleanup34_crit_edge, label %entry.for.body4_crit_edge

entry.for.body4_crit_edge:                        ; preds = %entry
  br label %for.body4

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

for.body4:                                        ; preds = %cleanup.for.body4_crit_edge, %entry.for.body4_crit_edge
  %i.159 = phi i32 [ %inc31, %cleanup.for.body4_crit_edge ], [ 0, %entry.for.body4_crit_edge ]
  %18 = ptrtoint ptr %hh_flows to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hh_flows, align 8
  %arrayidx6 = getelementptr %struct.list_head, ptr %19, i32 %i.159
  %20 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %arrayidx6, align 4
  %cmp.i.not = icmp eq ptr %21, %arrayidx6
  br i1 %cmp.i.not, label %for.body4.cleanup_crit_edge, label %for.body4.for.body19_crit_edge

for.body4.for.body19_crit_edge:                   ; preds = %for.body4
  br label %for.body19

for.body4.cleanup_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body19:                                       ; preds = %list_del.exit.for.body19_crit_edge, %for.body4.for.body19_crit_edge
  %.pn.in57 = phi ptr [ %.pn, %list_del.exit.for.body19_crit_edge ], [ %21, %for.body4.for.body19_crit_edge ]
  %flow.0 = getelementptr i8, ptr %.pn.in57, i32 -8
  %22 = ptrtoint ptr %.pn.in57 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn.in57, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in57) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body19.list_del.exit_crit_edge

for.body19.list_del.exit_crit_edge:               ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in57, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %.pn.in57 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %.pn.in57, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body19.list_del.exit_crit_edge
  %29 = ptrtoint ptr %.pn.in57 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in57, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in57, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %flow.0) #10
  %cmp18.not = icmp eq ptr %.pn, %arrayidx6
  br i1 %cmp18.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.for.body19_crit_edge

list_del.exit.for.body19_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body19

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.cleanup_crit_edge, %for.body4.cleanup_crit_edge
  %inc31 = add nuw nsw i32 %i.159, 1
  %exitcond.not = icmp eq i32 %inc31, 1024
  br i1 %exitcond.not, label %for.end32, label %cleanup.for.body4_crit_edge

cleanup.for.body4_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4

for.end32:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %hh_flows to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hh_flows, align 8
  tail call void @kvfree(ptr noundef %32) #10
  br label %cleanup34

cleanup34:                                        ; preds = %for.end32, %entry.cleanup34_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hhf_change(ptr noundef %sch, ptr noundef %opt, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %tb = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tb) #10
  %0 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 1
  %1 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 2
  %2 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 3
  %3 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 4
  %4 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 5
  %5 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 6
  %6 = getelementptr inbounds [8 x ptr], ptr %tb, i32 0, i32 7
  %quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  %7 = call ptr @memset(ptr %tb, i32 255, i32 32)
  %8 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quantum, align 8
  %hhf_non_hh_weight = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %hhf_non_hh_weight to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hhf_non_hh_weight, align 4
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %opt, i32 4
  %12 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %opt, align 2
  %conv.i.i = zext i16 %13 to i32
  %sub.i.i118 = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 7, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i118, ptr noundef nonnull @hhf_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %tobool4.not = icmp eq ptr %15, null
  br i1 %tobool4.not, label %if.end3.if.end8_crit_edge, label %if.then5

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i119 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i119 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i119, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end3.if.end8_crit_edge
  %new_quantum.0 = phi i32 [ %17, %if.then5 ], [ %9, %if.end3.if.end8_crit_edge ]
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %6, align 4
  %tobool10.not = icmp eq ptr %19, null
  br i1 %tobool10.not, label %if.end8.if.end14_crit_edge, label %if.then11

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i120 = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i120 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i120, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8.if.end14_crit_edge
  %new_hhf_non_hh_weight.0 = phi i32 [ %21, %if.then11 ], [ %11, %if.end8.if.end14_crit_edge ]
  %conv = zext i32 %new_quantum.0 to i64
  %conv15 = zext i32 %new_hhf_non_hh_weight.0 to i64
  %mul = mul nuw i64 %conv15, %conv
  %22 = add i64 %mul, -2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2147483647, i64 %22)
  %23 = icmp ult i64 %22, -2147483647
  br i1 %23, label %if.end14.cleanup_crit_edge, label %if.end21

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i121, label %if.end21.sch_tree_lock.exit_crit_edge

if.end21.sch_tree_lock.exit_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_lock.exit

if.else.i121:                                     ; preds = %if.end21
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %26 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i121.sch_tree_lock.exit_crit_edge

if.else.i121.sch_tree_lock.exit_crit_edge:        ; preds = %if.else.i121
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i121
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !38

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 596) #10
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i121.sch_tree_lock.exit_crit_edge, %if.end21.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %if.end21.sch_tree_lock.exit_crit_edge ], [ %29, %if.else.i121.sch_tree_lock.exit_crit_edge ], [ %29, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %29, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #10
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %0, align 4
  %tobool23.not = icmp eq ptr %31, null
  br i1 %tobool23.not, label %sch_tree_lock.exit.if.end27_crit_edge, label %if.then24

sch_tree_lock.exit.if.end27_crit_edge:            ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then24:                                        ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i123 = getelementptr i8, ptr %31, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i123 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i123, align 4
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %34 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %limit, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %sch_tree_lock.exit.if.end27_crit_edge
  %35 = ptrtoint ptr %quantum to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %new_quantum.0, ptr %quantum, align 8
  %36 = ptrtoint ptr %hhf_non_hh_weight to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %new_hhf_non_hh_weight.0, ptr %hhf_non_hh_weight, align 4
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %2, align 4
  %tobool31.not = icmp eq ptr %38, null
  br i1 %tobool31.not, label %if.end27.if.end35_crit_edge, label %if.then32

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i124 = getelementptr i8, ptr %38, i32 4
  %39 = ptrtoint ptr %add.ptr.i.i124 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i.i124, align 4
  %hh_flows_limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 4
  %41 = ptrtoint ptr %hh_flows_limit to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %hh_flows_limit, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end27.if.end35_crit_edge
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 4
  %tobool37.not = icmp eq ptr %43, null
  br i1 %tobool37.not, label %if.end35.if.end42_crit_edge, label %if.else.i

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.else.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i125 = getelementptr i8, ptr %43, i32 4
  %44 = ptrtoint ptr %add.ptr.i.i125 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i.i125, align 4
  %call3.i = call i32 @__usecs_to_jiffies(i32 noundef %45) #10
  %hhf_reset_timeout = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 1
  %46 = ptrtoint ptr %hhf_reset_timeout to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call3.i, ptr %hhf_reset_timeout, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.else.i, %if.end35.if.end42_crit_edge
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %4, align 4
  %tobool44.not = icmp eq ptr %48, null
  br i1 %tobool44.not, label %if.end42.if.end48_crit_edge, label %if.then45

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i126 = getelementptr i8, ptr %48, i32 4
  %49 = ptrtoint ptr %add.ptr.i.i126 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i.i126, align 4
  %hhf_admit_bytes = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2
  %51 = ptrtoint ptr %hhf_admit_bytes to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %hhf_admit_bytes, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end42.if.end48_crit_edge
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %5, align 4
  %tobool50.not = icmp eq ptr %53, null
  br i1 %tobool50.not, label %if.end48.if.end56_crit_edge, label %if.else.i115

if.end48.if.end56_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.else.i115:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i127 = getelementptr i8, ptr %53, i32 4
  %54 = ptrtoint ptr %add.ptr.i.i127 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i.i127, align 4
  %call3.i114 = call i32 @__usecs_to_jiffies(i32 noundef %55) #10
  %hhf_evict_timeout = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 1
  %56 = ptrtoint ptr %hhf_evict_timeout to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call3.i114, ptr %hhf_evict_timeout, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.else.i115, %if.end48.if.end56_crit_edge
  %qlen58 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %57 = ptrtoint ptr %qlen58 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %qlen58, align 8
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %59 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %backlog, align 4
  %limit61 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %61 = ptrtoint ptr %limit61 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %limit61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %62)
  %cmp62142 = icmp ugt i32 %58, %62
  br i1 %cmp62142, label %if.end56.while.body_crit_edge, label %if.end56.while.end_crit_edge

if.end56.while.end_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end56.while.body_crit_edge:                    ; preds = %if.end56
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end56.while.body_crit_edge
  %call64 = call ptr @hhf_dequeue(ptr noundef %sch)
  call void @rtnl_kfree_skbs(ptr noundef %call64, ptr noundef %call64) #10
  %63 = ptrtoint ptr %qlen58 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %qlen58, align 8
  %65 = ptrtoint ptr %limit61 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %limit61, align 4
  %cmp62 = icmp ugt i32 %64, %66
  br i1 %cmp62, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end56.while.end_crit_edge
  %.lcssa = phi i32 [ %58, %if.end56.while.end_crit_edge ], [ %64, %while.body.while.end_crit_edge ]
  %sub = sub i32 %58, %.lcssa
  %67 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %backlog, align 4
  %sub69 = sub i32 %60, %68
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef %sub, i32 noundef %sub69) #10
  %69 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags.i, align 8
  %and.i129 = and i32 %70, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i129)
  %tobool.not.i130 = icmp eq i32 %and.i129, 0
  br i1 %tobool.not.i130, label %if.else.i135, label %while.end.sch_tree_unlock.exit_crit_edge

while.end.sch_tree_unlock.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_unlock.exit

if.else.i135:                                     ; preds = %while.end
  %dev_queue.i.i.i131 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %71 = ptrtoint ptr %dev_queue.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev_queue.i.i.i131, align 8
  %qdisc_sleeping.i.i.i132 = getelementptr inbounds %struct.netdev_queue, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %qdisc_sleeping.i.i.i132 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %qdisc_sleeping.i.i.i132, align 4
  %call1.i.i133 = call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i133)
  %tobool.not.i.i134 = icmp eq i32 %call1.i.i133, 0
  br i1 %tobool.not.i.i134, label %land.rhs.i.i137, label %if.else.i135.sch_tree_unlock.exit_crit_edge

if.else.i135.sch_tree_unlock.exit_crit_edge:      ; preds = %if.else.i135
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_unlock.exit

land.rhs.i.i137:                                  ; preds = %if.else.i135
  %.b41.i.i136 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i136, label %land.rhs.i.i137.sch_tree_unlock.exit_crit_edge, label %if.then.i.i138, !prof !38

land.rhs.i.i137.sch_tree_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i137
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_unlock.exit

if.then.i.i138:                                   ; preds = %land.rhs.i.i137
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 596) #10
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i138, %land.rhs.i.i137.sch_tree_unlock.exit_crit_edge, %if.else.i135.sch_tree_unlock.exit_crit_edge, %while.end.sch_tree_unlock.exit_crit_edge
  %.sink.i139 = phi ptr [ %sch, %while.end.sch_tree_unlock.exit_crit_edge ], [ %74, %if.else.i135.sch_tree_unlock.exit_crit_edge ], [ %74, %land.rhs.i.i137.sch_tree_unlock.exit_crit_edge ], [ %74, %if.then.i.i138 ]
  %lock.i.i.i140 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i139, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i140) #10
  br label %cleanup

cleanup:                                          ; preds = %sch_tree_unlock.exit, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sch_tree_unlock.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tb) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hhf_dump(ptr nocapture noundef readonly %sch, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i51 = alloca i32, align 4
  %tmp.i49 = alloca i32, align 4
  %tmp.i47 = alloca i32, align 4
  %tmp.i45 = alloca i32, align 4
  %tmp.i43 = alloca i32, align 4
  %tmp.i41 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp54 = icmp eq ptr %1, null
  %cmp = select i1 %cmp.i, i1 true, i1 %cmp54
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %2 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %limit, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %quantum = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  %5 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %quantum, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i41) #10
  %7 = ptrtoint ptr %tmp.i41 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp.i41, align 4
  %call.i42 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i41) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i41) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool4.not = icmp eq i32 %call.i42, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %hh_flows_limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 4
  %8 = ptrtoint ptr %hh_flows_limit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hh_flows_limit, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i43) #10
  %10 = ptrtoint ptr %tmp.i43 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tmp.i43, align 4
  %call.i44 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i43) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool7.not = icmp eq i32 %call.i44, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %hhf_reset_timeout = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 1
  %11 = ptrtoint ptr %hhf_reset_timeout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hhf_reset_timeout, align 8
  %call9 = call i32 @jiffies_to_usecs(i32 noundef %12) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i45) #10
  %13 = ptrtoint ptr %tmp.i45 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call9, ptr %tmp.i45, align 4
  %call.i46 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i45) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i45) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool11.not = icmp eq i32 %call.i46, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %hhf_admit_bytes = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2
  %14 = ptrtoint ptr %hhf_admit_bytes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hhf_admit_bytes, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i47) #10
  %16 = ptrtoint ptr %tmp.i47 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tmp.i47, align 4
  %call.i48 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i47) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i47) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool14.not = icmp eq i32 %call.i48, 0
  br i1 %tobool14.not, label %lor.lhs.false15, label %lor.lhs.false12.cleanup_crit_edge

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %hhf_evict_timeout = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %hhf_evict_timeout to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hhf_evict_timeout, align 8
  %call16 = call i32 @jiffies_to_usecs(i32 noundef %18) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i49) #10
  %19 = ptrtoint ptr %tmp.i49 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call16, ptr %tmp.i49, align 4
  %call.i50 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i49) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i49) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool18.not = icmp eq i32 %call.i50, 0
  br i1 %tobool18.not, label %lor.lhs.false19, label %lor.lhs.false15.cleanup_crit_edge

lor.lhs.false15.cleanup_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false19:                                  ; preds = %lor.lhs.false15
  %hhf_non_hh_weight = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %hhf_non_hh_weight to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hhf_non_hh_weight, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i51) #10
  %22 = ptrtoint ptr %tmp.i51 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tmp.i51, align 4
  %call.i52 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i51) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool21.not = icmp eq i32 %call.i52, 0
  br i1 %tobool21.not, label %if.end23, label %lor.lhs.false19.cleanup_crit_edge

lor.lhs.false19.cleanup_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i, ptr %1, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %lor.lhs.false19.cleanup_crit_edge, %lor.lhs.false15.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %27, %if.end23 ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %lor.lhs.false5.cleanup_crit_edge ], [ -1, %lor.lhs.false8.cleanup_crit_edge ], [ -1, %lor.lhs.false12.cleanup_crit_edge ], [ -1, %lor.lhs.false15.cleanup_crit_edge ], [ -1, %lor.lhs.false19.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hhf_dump_stats(ptr nocapture noundef readonly %sch, ptr noundef %d) #2 align 64 {
entry:
  %st = alloca %struct.tc_hhf_xstats, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %st) #10
  %0 = getelementptr inbounds %struct.tc_hhf_xstats, ptr %st, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tc_hhf_xstats, ptr %st, i32 0, i32 2
  %2 = getelementptr inbounds %struct.tc_hhf_xstats, ptr %st, i32 0, i32 3
  %drop_overlimit1 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 14
  %3 = ptrtoint ptr %drop_overlimit1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %drop_overlimit1, align 4
  %5 = ptrtoint ptr %st to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %st, align 4
  %hh_flows_overlimit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %6 = ptrtoint ptr %hh_flows_overlimit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hh_flows_overlimit, align 8
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %0, align 4
  %hh_flows_total_cnt = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 12
  %9 = ptrtoint ptr %hh_flows_total_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hh_flows_total_cnt, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %1, align 4
  %hh_flows_current_cnt = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %12 = ptrtoint ptr %hh_flows_current_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hh_flows_current_cnt, align 8
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %2, align 4
  %call2 = call i32 @gnet_stats_copy_app(ptr noundef %d, ptr noundef nonnull %st, i32 noundef 16) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %st) #10
  ret i32 %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_tree_reduce_backlog(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_get_hash_perturb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_kfree_skbs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_app(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !20, !22, !23}
!llvm.named.register.sp = !{!24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__initcall__kmod_sch_hhf__482_719_hhf_module_init6, !1, !"__initcall__kmod_sch_hhf__482_719_hhf_module_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_hhf.c", i32 719, i32 1}
!2 = !{ptr @__exitcall_hhf_module_exit, !3, !"__exitcall_hhf_module_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_hhf.c", i32 720, i32 1}
!4 = !{ptr @__UNIQUE_ID_author483, !5, !"__UNIQUE_ID_author483", i1 false, i1 false}
!5 = !{!"../net/sched/sch_hhf.c", i32 721, i32 1}
!6 = !{ptr @__UNIQUE_ID_author484, !7, !"__UNIQUE_ID_author484", i1 false, i1 false}
!7 = !{!"../net/sched/sch_hhf.c", i32 722, i32 1}
!8 = !{ptr @__UNIQUE_ID_file485, !9, !"__UNIQUE_ID_file485", i1 false, i1 false}
!9 = !{!"../net/sched/sch_hhf.c", i32 723, i32 1}
!10 = !{ptr @__UNIQUE_ID_license486, !9, !"__UNIQUE_ID_license486", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description487, !12, !"__UNIQUE_ID_description487", i1 false, i1 false}
!12 = !{!"../net/sched/sch_hhf.c", i32 724, i32 1}
!13 = !{ptr @hhf_qdisc_ops, !14, !"hhf_qdisc_ops", i1 false, i1 false}
!14 = !{!"../net/sched/sch_hhf.c", i32 693, i32 25}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @hhf_policy, !19, !"hhf_policy", i1 false, i1 false}
!19 = !{!"../net/sched/sch_hhf.c", i32 498, i32 32}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{!"sp"}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i64 2149884304}
!35 = !{i64 2149889236}
!36 = !{i64 2149910948}
!37 = !{i64 2149915840}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2149992297}
!40 = !{i64 2149992622}
