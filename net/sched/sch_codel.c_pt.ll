; ModuleID = '/llk/IR_all_yes/net/sched/sch_codel.c_pt.bc'
source_filename = "../net/sched/sch_codel.c"
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
%struct.vlan_hdr = type { i16, i16 }
%struct.codel_vars = type { i32, i32, i8, i16, i32, i32, i32 }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.tc_codel_xstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@codel_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr null, [16 x i8] c"codel\00\00\00\00\00\00\00\00\00\00\00", i32 68, i32 0, ptr @codel_qdisc_enqueue, ptr @codel_qdisc_dequeue, ptr @qdisc_peek_dequeued, ptr @codel_init, ptr @codel_reset, ptr null, ptr @codel_change, ptr null, ptr null, ptr null, ptr @codel_dump, ptr @codel_dump_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_codel__497_304_codel_module_init6 = internal global ptr @codel_module_init, section ".initcall6.init", align 4
@__exitcall_codel_module_exit = internal global ptr @codel_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description498 = internal constant [56 x i8] c"sch_codel.description=Controlled Delay queue discipline\00", section ".modinfo", align 1
@__UNIQUE_ID_author499 = internal constant [27 x i8] c"sch_codel.author=Dave Taht\00", section ".modinfo", align 1
@__UNIQUE_ID_author500 = internal constant [30 x i8] c"sch_codel.author=Eric Dumazet\00", section ".modinfo", align 1
@__UNIQUE_ID_file501 = internal constant [35 x i8] c"sch_codel.file=net/sched/sch_codel\00", section ".modinfo", align 1
@__UNIQUE_ID_license502 = internal constant [31 x i8] c"sch_codel.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__qdisc_reset_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@codel_policy = internal constant { [6 x %struct.nla_policy], [48 x i8] } { [6 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.11 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 598, i32 8 }
@___asan_gen_.14 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 271, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 1165, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [13 x i8] c"codel_policy\00", align 1
@___asan_gen_.23 = private constant [25 x i8] c"../net/sched/sch_codel.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 125, i32 32 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 991, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author499, ptr @__UNIQUE_ID_author500, ptr @__UNIQUE_ID_description498, ptr @__UNIQUE_ID_file501, ptr @__UNIQUE_ID_license502, ptr @__exitcall_codel_module_exit, ptr @__initcall__kmod_sch_codel__497_304_codel_module_init6, ptr @codel_module_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @codel_policy, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codel_policy to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @codel_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @codel_qdisc_ops) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @codel_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @codel_qdisc_ops) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @codel_qdisc_enqueue(ptr noundef %skb, ptr nocapture noundef %sch, ptr nocapture noundef %to_free) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %0 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i, align 8
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %2 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end, !prof !40

if.then:                                          ; preds = %entry
  %call.i.i.i = tail call i64 @ktime_get() #7
  %shr.i.i = lshr i64 %call.i.i.i, 10
  %conv.i.i = trunc i64 %shr.i.i to i32
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %5 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %skb, align 8
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %skb, ptr %6, align 8
  br label %qdisc_enqueue_tail.exit

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %q.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %9 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %skb, ptr %tail.i.i, align 4
  br label %qdisc_enqueue_tail.exit

qdisc_enqueue_tail.exit:                          ; preds = %if.else.i.i, %if.then.i.i
  %qh.sink.i.i = phi ptr [ %q.i, %if.else.i.i ], [ %tail.i.i, %if.then.i.i ]
  %10 = ptrtoint ptr %qh.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %skb, ptr %qh.sink.i.i, align 4
  %11 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qlen.i, align 4
  %inc.i.i = add i32 %12, 1
  store i32 %inc.i.i, ptr %qlen.i, align 4
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %13 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cb.i.i.i.i, align 4
  %backlog.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %drop_overlimit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %15 = ptrtoint ptr %drop_overlimit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %drop_overlimit, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %drop_overlimit, align 4
  %17 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %to_free, align 4
  %19 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %qdisc_enqueue_tail.exit
  %drops.i.i.i.sink12 = phi ptr [ %drops.i.i.i, %if.end ], [ %backlog.i.i, %qdisc_enqueue_tail.exit ]
  %.sink11 = phi i32 [ 1, %if.end ], [ %14, %qdisc_enqueue_tail.exit ]
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %qdisc_enqueue_tail.exit ]
  %20 = ptrtoint ptr %drops.i.i.i.sink12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %drops.i.i.i.sink12, align 4
  %inc.i.i.i = add i32 %21, %.sink11
  store i32 %inc.i.i.i, ptr %drops.i.i.i.sink12, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @codel_qdisc_dequeue(ptr noundef %sch) #2 align 64 {
entry:
  %vhdr.i.i.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %vars = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %stats = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 10
  %q.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %0 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %1, null
  br i1 %cmp.not.i.i.i, label %if.then.i, label %if.then.i.i.i, !prof !41

if.then.i.i.i:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %q.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %q.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %5 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i.i.i, align 4
  %dec.i.i.i = add i32 %6, -1
  store i32 %dec.i.i.i, ptr %qlen.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %3, null
  br i1 %cmp4.i.i.i, label %if.then5.i.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then5.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %tail.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %7 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tail.i.i.i, align 4
  br label %if.end.i.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dropping.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %8 = ptrtoint ptr %dropping.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %dropping.i, align 4
  br label %codel_dequeue.exit

if.end.i.i:                                       ; preds = %if.then5.i.i.i, %if.then.i.i.i.if.end.i.i_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %1, align 8
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cb.i.i.i.i, align 4
  %12 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %backlog, align 4
  %sub.i.i = sub i32 %13, %11
  store i32 %sub.i.i, ptr %backlog, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %end.i.i) #7, !srcloc !42
  %call.i.i.i = tail call i64 @ktime_get() #7
  %shr.i.i = lshr i64 %call.i.i.i, 10
  %conv.i.i = trunc i64 %shr.i.i to i32
  %14 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cb.i.i.i.i, align 4
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data.i.i.i.i, align 4
  %sub.i3.i = sub i32 %conv.i.i, %17
  %ldelay.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %18 = ptrtoint ptr %ldelay.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.i3.i, ptr %ldelay.i.i, align 4
  %19 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %20)
  %cmp.i.i = icmp ugt i32 %15, %20
  br i1 %cmp.i.i, label %if.then4.i.i, label %if.end.i.i.if.end6.i.i_crit_edge, !prof !41

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %15, ptr %stats, align 4
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then4.i.i, %if.end.i.i.if.end6.i.i_crit_edge
  %22 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %privdata.i, align 4
  %24 = ptrtoint ptr %ldelay.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ldelay.i.i, align 4
  %sub8.i.i = sub i32 %23, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i.i)
  %cmp9.i.i = icmp sgt i32 %sub8.i.i, 0
  br i1 %cmp9.i.i, label %if.end6.i.i.if.then11.i.i_crit_edge, label %lor.lhs.false.i.i

if.end6.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

lor.lhs.false.i.i:                                ; preds = %if.end6.i.i
  %26 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %backlog, align 4
  %mtu.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %28 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mtu.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp10.not.i.i = icmp ugt i32 %27, %29
  br i1 %cmp10.not.i.i, label %if.end13.i.i, label %lor.lhs.false.i.i.if.then11.i.i_crit_edge

lor.lhs.false.i.i.if.then11.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then11.i.i_crit_edge, %if.end6.i.i.if.then11.i.i_crit_edge
  %first_above_time12.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %30 = ptrtoint ptr %first_above_time12.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %first_above_time12.i.i, align 4
  br label %codel_should_drop.exit.i

if.end13.i.i:                                     ; preds = %lor.lhs.false.i.i
  %first_above_time14.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %31 = ptrtoint ptr %first_above_time14.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %first_above_time14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp15.i.i = icmp eq i32 %32, 0
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.else.i.i

if.then16.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %interval.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %33 = ptrtoint ptr %interval.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %interval.i.i, align 4
  %add.i.i = add i32 %34, %conv.i.i
  %35 = ptrtoint ptr %first_above_time14.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add.i.i, ptr %first_above_time14.i.i, align 4
  br label %codel_should_drop.exit.i

if.else.i.i:                                      ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub19.i.i = sub i32 %conv.i.i, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub19.i.i)
  %cmp20.i.i = icmp sgt i32 %sub19.i.i, 0
  br label %codel_should_drop.exit.i

codel_should_drop.exit.i:                         ; preds = %if.else.i.i, %if.then16.i.i, %if.then11.i.i
  %retval.0.i.i = phi i1 [ false, %if.then11.i.i ], [ false, %if.then16.i.i ], [ %cmp20.i.i, %if.else.i.i ]
  %dropping3.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %36 = ptrtoint ptr %dropping3.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dropping3.i, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool4.not.i = icmp eq i8 %37, 0
  br i1 %tobool4.not.i, label %if.else40.i, label %if.then5.i

if.then5.i:                                       ; preds = %codel_should_drop.exit.i
  br i1 %retval.0.i.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %dropping3.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %dropping3.i, align 4
  br label %land.lhs.true90.i

if.else.i:                                        ; preds = %if.then5.i
  %drop_next.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 8
  %39 = ptrtoint ptr %drop_next.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %drop_next.i, align 4
  %sub.i = sub i32 %conv.i.i, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %land.rhs.lr.ph.i, label %if.else.i.land.lhs.true90.i_crit_edge

if.else.i.land.lhs.true90.i_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true90.i

land.rhs.lr.ph.i:                                 ; preds = %if.else.i
  %rec_inv_sqrt.i.i = getelementptr inbounds %struct.codel_vars, ptr %vars, i32 0, i32 3
  %ecn.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %drop_len.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 12
  %drops.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %drop_count.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %tail.i.i15.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %mtu.i37.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %first_above_time14.i42.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %interval32.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end37.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %skb.0141.i = phi ptr [ %1, %land.rhs.lr.ph.i ], [ %66, %if.end37.i.land.rhs.i_crit_edge ]
  %41 = ptrtoint ptr %drop_next.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %drop_next.i, align 4
  %sub13.i = sub i32 %conv.i.i, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub13.i)
  %cmp14.i = icmp sgt i32 %sub13.i, -1
  br i1 %cmp14.i, label %while.body.i, label %land.rhs.i.land.lhs.true90.i_crit_edge

land.rhs.i.land.lhs.true90.i_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true90.i

while.body.i:                                     ; preds = %land.rhs.i
  %43 = ptrtoint ptr %vars to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vars, align 4
  %inc.i = add i32 %44, 1
  store i32 %inc.i, ptr %vars, align 4
  %45 = ptrtoint ptr %rec_inv_sqrt.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %rec_inv_sqrt.i.i, align 2
  %conv.i4.i = zext i16 %46 to i32
  %shl.i.i = shl nuw i32 %conv.i4.i, 16
  %conv1.i.i = zext i32 %shl.i.i to i64
  %mul.i.i = mul nuw i64 %conv1.i.i, %conv1.i.i
  %shr.i5.i = lshr exact i64 %mul.i.i, 32
  %conv4.i.i = zext i32 %inc.i to i64
  %mul6.i.i = mul nuw i64 %shr.i5.i, %conv4.i.i
  %sub.i6.i = sub i64 12884901888, %mul6.i.i
  %shr7.i.i = lshr i64 %sub.i6.i, 2
  %mul9.i.i = mul i64 %shr7.i.i, %conv1.i.i
  %shr10.i.i = lshr i64 %mul9.i.i, 47
  %conv12.i.i = trunc i64 %shr10.i.i to i16
  store i16 %conv12.i.i, ptr %rec_inv_sqrt.i.i, align 2
  %47 = ptrtoint ptr %ecn.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ecn.i, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool15.not.i = icmp eq i8 %48, 0
  br i1 %tobool15.not.i, label %while.body.i.if.end23.i_crit_edge, label %land.lhs.true.i

while.body.i.if.end23.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %call16.i = tail call fastcc i32 @INET_ECN_set_ce(ptr noundef nonnull %skb.0141.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %land.lhs.true.i.if.end23.i_crit_edge, label %if.then18.i

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.then18.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %ecn_mark.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  %49 = ptrtoint ptr %ecn_mark.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ecn_mark.i, align 4
  %inc19.i = add i32 %50, 1
  store i32 %inc19.i, ptr %ecn_mark.i, align 4
  %51 = ptrtoint ptr %drop_next.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %drop_next.i, align 4
  %53 = ptrtoint ptr %interval32.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %interval32.i, align 4
  %55 = ptrtoint ptr %rec_inv_sqrt.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %rec_inv_sqrt.i.i, align 2
  %conv.i = zext i16 %56 to i32
  %shl.i7.i = shl nuw i32 %conv.i, 16
  %conv.i.i.i = zext i32 %54 to i64
  %conv1.i.i.i = zext i32 %shl.i7.i to i64
  %mul.i.i.i = mul nuw i64 %conv1.i.i.i, %conv.i.i.i
  %shr.i.i.i = lshr i64 %mul.i.i.i, 32
  %conv2.i.i.i = trunc i64 %shr.i.i.i to i32
  %add.i8.i = add i32 %52, %conv2.i.i.i
  store i32 %add.i8.i, ptr %drop_next.i, align 4
  br label %land.lhs.true90.i

if.end23.i:                                       ; preds = %land.lhs.true.i.if.end23.i_crit_edge, %while.body.i.if.end23.i_crit_edge
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0141.i, i32 0, i32 3
  %57 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cb.i.i.i, align 4
  %59 = ptrtoint ptr %drop_len.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %drop_len.i, align 4
  %add.i = add i32 %60, %58
  store i32 %add.i, ptr %drop_len.i, align 4
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.0141.i, i32 noundef 0) #7
  %61 = ptrtoint ptr %drops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %drops.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %62, 1
  store i32 %inc.i.i.i.i, ptr %drops.i.i.i.i, align 4
  %63 = ptrtoint ptr %drop_count.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %drop_count.i, align 4
  %inc25.i = add i32 %64, 1
  store i32 %inc25.i, ptr %drop_count.i, align 4
  %65 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %q.i.i, align 4
  %cmp.not.i.i10.i = icmp eq ptr %66, null
  br i1 %cmp.not.i.i10.i, label %if.end23.i.if.end37.thread.sink.split.i_crit_edge, label %if.then.i.i14.i, !prof !41

if.end23.i.if.end37.thread.sink.split.i_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.thread.sink.split.i

if.then.i.i14.i:                                  ; preds = %if.end23.i
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 8
  %69 = ptrtoint ptr %q.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %q.i.i, align 4
  %70 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %qlen.i.i.i, align 4
  %dec.i.i12.i = add i32 %71, -1
  store i32 %dec.i.i12.i, ptr %qlen.i.i.i, align 4
  %cmp4.i.i13.i = icmp eq ptr %68, null
  br i1 %cmp4.i.i13.i, label %if.then5.i.i16.i, label %if.then.i.i14.i.if.end.i32.i_crit_edge

if.then.i.i14.i.if.end.i32.i_crit_edge:           ; preds = %if.then.i.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i32.i

if.then5.i.i16.i:                                 ; preds = %if.then.i.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %tail.i.i15.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %tail.i.i15.i, align 4
  br label %if.end.i32.i

if.end.i32.i:                                     ; preds = %if.then5.i.i16.i, %if.then.i.i14.i.if.end.i32.i_crit_edge
  %73 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %66, align 8
  %cb.i.i.i17.i = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 3
  %74 = ptrtoint ptr %cb.i.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cb.i.i.i17.i, align 4
  %76 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %backlog, align 4
  %sub.i19.i = sub i32 %77, %75
  store i32 %sub.i19.i, ptr %backlog, align 4
  %end.i20.i = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 17
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %end.i20.i) #7, !srcloc !42
  %78 = ptrtoint ptr %cb.i.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cb.i.i.i17.i, align 4
  %data.i.i.i28.i = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 3, i32 8
  %80 = ptrtoint ptr %data.i.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %data.i.i.i28.i, align 4
  %sub.i29.i = sub i32 %conv.i.i, %81
  %82 = ptrtoint ptr %ldelay.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %sub.i29.i, ptr %ldelay.i.i, align 4
  %83 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %stats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %84)
  %cmp.i31.i = icmp ugt i32 %79, %84
  br i1 %cmp.i31.i, label %if.then4.i33.i, label %if.end.i32.i.if.end6.i36.i_crit_edge, !prof !41

if.end.i32.i.if.end6.i36.i_crit_edge:             ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i36.i

if.then4.i33.i:                                   ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %79, ptr %stats, align 4
  br label %if.end6.i36.i

if.end6.i36.i:                                    ; preds = %if.then4.i33.i, %if.end.i32.i.if.end6.i36.i_crit_edge
  %86 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %privdata.i, align 4
  %88 = ptrtoint ptr %ldelay.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ldelay.i.i, align 4
  %sub8.i34.i = sub i32 %87, %89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i34.i)
  %cmp9.i35.i = icmp sgt i32 %sub8.i34.i, 0
  br i1 %cmp9.i35.i, label %if.end6.i36.i.if.end37.thread.sink.split.i_crit_edge, label %lor.lhs.false.i39.i

if.end6.i36.i.if.end37.thread.sink.split.i_crit_edge: ; preds = %if.end6.i36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.thread.sink.split.i

lor.lhs.false.i39.i:                              ; preds = %if.end6.i36.i
  %90 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %backlog, align 4
  %92 = ptrtoint ptr %mtu.i37.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %mtu.i37.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %93)
  %cmp10.not.i38.i = icmp ugt i32 %91, %93
  br i1 %cmp10.not.i38.i, label %if.end13.i44.i, label %lor.lhs.false.i39.i.if.end37.thread.sink.split.i_crit_edge

lor.lhs.false.i39.i.if.end37.thread.sink.split.i_crit_edge: ; preds = %lor.lhs.false.i39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.thread.sink.split.i

if.end13.i44.i:                                   ; preds = %lor.lhs.false.i39.i
  %94 = ptrtoint ptr %first_above_time14.i42.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %first_above_time14.i42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp15.i43.i = icmp eq i32 %95, 0
  br i1 %cmp15.i43.i, label %if.then16.i47.i, label %codel_should_drop.exit52.i

if.then16.i47.i:                                  ; preds = %if.end13.i44.i
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %interval32.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %interval32.i, align 4
  %add.i46.i = add i32 %97, %conv.i.i
  br label %if.end37.thread.sink.split.i

codel_should_drop.exit52.i:                       ; preds = %if.end13.i44.i
  %sub19.i48.i = sub i32 %conv.i.i, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub19.i48.i)
  %cmp20.i49.i = icmp sgt i32 %sub19.i48.i, 0
  br i1 %cmp20.i49.i, label %if.end37.i, label %codel_should_drop.exit52.i.if.end37.thread.i_crit_edge

codel_should_drop.exit52.i.if.end37.thread.i_crit_edge: ; preds = %codel_should_drop.exit52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.thread.i

if.end37.thread.sink.split.i:                     ; preds = %if.then16.i47.i, %lor.lhs.false.i39.i.if.end37.thread.sink.split.i_crit_edge, %if.end6.i36.i.if.end37.thread.sink.split.i_crit_edge, %if.end23.i.if.end37.thread.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %add.i46.i, %if.then16.i47.i ], [ 0, %if.end23.i.if.end37.thread.sink.split.i_crit_edge ], [ 0, %if.end6.i36.i.if.end37.thread.sink.split.i_crit_edge ], [ 0, %lor.lhs.false.i39.i.if.end37.thread.sink.split.i_crit_edge ]
  %98 = ptrtoint ptr %first_above_time14.i42.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %.sink.i, ptr %first_above_time14.i42.i, align 4
  br label %if.end37.thread.i

if.end37.thread.i:                                ; preds = %if.end37.thread.sink.split.i, %codel_should_drop.exit52.i.if.end37.thread.i_crit_edge
  %99 = ptrtoint ptr %dropping3.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %dropping3.i, align 4
  br label %end.i

if.end37.i:                                       ; preds = %codel_should_drop.exit52.i
  %100 = ptrtoint ptr %drop_next.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %drop_next.i, align 4
  %102 = ptrtoint ptr %interval32.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %interval32.i, align 4
  %104 = ptrtoint ptr %rec_inv_sqrt.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %rec_inv_sqrt.i.i, align 2
  %conv34.i = zext i16 %105 to i32
  %shl.i53.i = shl nuw i32 %conv34.i, 16
  %conv.i.i54.i = zext i32 %103 to i64
  %conv1.i.i55.i = zext i32 %shl.i53.i to i64
  %mul.i.i56.i = mul nuw i64 %conv1.i.i55.i, %conv.i.i54.i
  %shr.i.i57.i = lshr i64 %mul.i.i56.i, 32
  %conv2.i.i58.i = trunc i64 %shr.i.i57.i to i32
  %add.i59.i = add i32 %101, %conv2.i.i58.i
  store i32 %add.i59.i, ptr %drop_next.i, align 4
  %106 = ptrtoint ptr %dropping3.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %.pr.i = load i8, ptr %dropping3.i, align 4
  %tobool11.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool11.not.i, label %if.end37.i.land.lhs.true90.i_crit_edge, label %if.end37.i.land.rhs.i_crit_edge

if.end37.i.land.rhs.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

if.end37.i.land.lhs.true90.i_crit_edge:           ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true90.i

if.else40.i:                                      ; preds = %codel_should_drop.exit.i
  br i1 %retval.0.i.i, label %if.then42.i, label %if.else40.i.land.lhs.true90.i_crit_edge

if.else40.i.land.lhs.true90.i_crit_edge:          ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true90.i

if.then42.i:                                      ; preds = %if.else40.i
  %ecn43.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %107 = ptrtoint ptr %ecn43.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %ecn43.i, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool44.not.i = icmp eq i8 %108, 0
  br i1 %tobool44.not.i, label %if.then42.i.if.else52.i_crit_edge, label %land.lhs.true46.i

if.then42.i.if.else52.i_crit_edge:                ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else52.i

land.lhs.true46.i:                                ; preds = %if.then42.i
  %call47.i = tail call fastcc i32 @INET_ECN_set_ce(ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %land.lhs.true46.i.if.else52.i_crit_edge, label %if.then49.i

land.lhs.true46.i.if.else52.i_crit_edge:          ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else52.i

if.then49.i:                                      ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #9
  %ecn_mark50.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  %109 = ptrtoint ptr %ecn_mark50.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %ecn_mark50.i, align 4
  %inc51.i = add i32 %110, 1
  store i32 %inc51.i, ptr %ecn_mark50.i, align 4
  br label %if.end61.i

if.else52.i:                                      ; preds = %land.lhs.true46.i.if.else52.i_crit_edge, %if.then42.i.if.else52.i_crit_edge
  %111 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cb.i.i.i.i, align 4
  %drop_len54.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 12
  %113 = ptrtoint ptr %drop_len54.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %drop_len54.i, align 4
  %add55.i = add i32 %114, %112
  store i32 %add55.i, ptr %drop_len54.i, align 4
  tail call void @kfree_skb_reason(ptr noundef nonnull %1, i32 noundef 0) #7
  %drops.i.i.i61.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %115 = ptrtoint ptr %drops.i.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %drops.i.i.i61.i, align 4
  %inc.i.i.i62.i = add i32 %116, 1
  store i32 %inc.i.i.i62.i, ptr %drops.i.i.i61.i, align 4
  %drop_count56.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %117 = ptrtoint ptr %drop_count56.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %drop_count56.i, align 4
  %inc57.i = add i32 %118, 1
  store i32 %inc57.i, ptr %drop_count56.i, align 4
  %119 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %q.i.i, align 4
  %cmp.not.i.i64.i = icmp eq ptr %120, null
  br i1 %cmp.not.i.i64.i, label %if.then.i80.i, label %if.then.i.i68.i, !prof !41

if.then.i.i68.i:                                  ; preds = %if.else52.i
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 8
  %123 = ptrtoint ptr %q.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %122, ptr %q.i.i, align 4
  %124 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %qlen.i.i.i, align 4
  %dec.i.i66.i = add i32 %125, -1
  store i32 %dec.i.i66.i, ptr %qlen.i.i.i, align 4
  %cmp4.i.i67.i = icmp eq ptr %122, null
  br i1 %cmp4.i.i67.i, label %if.then5.i.i70.i, label %if.then.i.i68.i.if.end.i86.i_crit_edge

if.then.i.i68.i.if.end.i86.i_crit_edge:           ; preds = %if.then.i.i68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i86.i

if.then5.i.i70.i:                                 ; preds = %if.then.i.i68.i
  call void @__sanitizer_cov_trace_pc() #9
  %tail.i.i69.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %126 = ptrtoint ptr %tail.i.i69.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr null, ptr %tail.i.i69.i, align 4
  br label %if.end.i86.i

if.then.i80.i:                                    ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #9
  %first_above_time.i79.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %127 = ptrtoint ptr %first_above_time.i79.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %first_above_time.i79.i, align 4
  br label %if.end61.i

if.end.i86.i:                                     ; preds = %if.then5.i.i70.i, %if.then.i.i68.i.if.end.i86.i_crit_edge
  %128 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %120, align 8
  %cb.i.i.i71.i = getelementptr inbounds %struct.sk_buff, ptr %120, i32 0, i32 3
  %129 = ptrtoint ptr %cb.i.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %cb.i.i.i71.i, align 4
  %131 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %backlog, align 4
  %sub.i73.i = sub i32 %132, %130
  store i32 %sub.i73.i, ptr %backlog, align 4
  %end.i74.i = getelementptr inbounds %struct.sk_buff, ptr %120, i32 0, i32 17
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %end.i74.i) #7, !srcloc !42
  %133 = ptrtoint ptr %cb.i.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %cb.i.i.i71.i, align 4
  %data.i.i.i82.i = getelementptr inbounds %struct.sk_buff, ptr %120, i32 0, i32 3, i32 8
  %135 = ptrtoint ptr %data.i.i.i82.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %data.i.i.i82.i, align 4
  %sub.i83.i = sub i32 %conv.i.i, %136
  %137 = ptrtoint ptr %ldelay.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %sub.i83.i, ptr %ldelay.i.i, align 4
  %138 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %stats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %139)
  %cmp.i85.i = icmp ugt i32 %134, %139
  br i1 %cmp.i85.i, label %if.then4.i87.i, label %if.end.i86.i.if.end6.i90.i_crit_edge, !prof !41

if.end.i86.i.if.end6.i90.i_crit_edge:             ; preds = %if.end.i86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i90.i

if.then4.i87.i:                                   ; preds = %if.end.i86.i
  call void @__sanitizer_cov_trace_pc() #9
  %140 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %134, ptr %stats, align 4
  br label %if.end6.i90.i

if.end6.i90.i:                                    ; preds = %if.then4.i87.i, %if.end.i86.i.if.end6.i90.i_crit_edge
  %141 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %privdata.i, align 4
  %143 = ptrtoint ptr %ldelay.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %ldelay.i.i, align 4
  %sub8.i88.i = sub i32 %142, %144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i88.i)
  %cmp9.i89.i = icmp sgt i32 %sub8.i88.i, 0
  br i1 %cmp9.i89.i, label %if.end6.i90.i.if.then11.i95.i_crit_edge, label %lor.lhs.false.i93.i

if.end6.i90.i.if.then11.i95.i_crit_edge:          ; preds = %if.end6.i90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i95.i

lor.lhs.false.i93.i:                              ; preds = %if.end6.i90.i
  %145 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %backlog, align 4
  %mtu.i91.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %147 = ptrtoint ptr %mtu.i91.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %mtu.i91.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %146, i32 %148)
  %cmp10.not.i92.i = icmp ugt i32 %146, %148
  br i1 %cmp10.not.i92.i, label %if.end13.i98.i, label %lor.lhs.false.i93.i.if.then11.i95.i_crit_edge

lor.lhs.false.i93.i.if.then11.i95.i_crit_edge:    ; preds = %lor.lhs.false.i93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i95.i

if.then11.i95.i:                                  ; preds = %lor.lhs.false.i93.i.if.then11.i95.i_crit_edge, %if.end6.i90.i.if.then11.i95.i_crit_edge
  %first_above_time12.i94.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %149 = ptrtoint ptr %first_above_time12.i94.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %first_above_time12.i94.i, align 4
  br label %if.end61.i

if.end13.i98.i:                                   ; preds = %lor.lhs.false.i93.i
  %first_above_time14.i96.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %150 = ptrtoint ptr %first_above_time14.i96.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %first_above_time14.i96.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %cmp15.i97.i = icmp eq i32 %151, 0
  br i1 %cmp15.i97.i, label %if.then16.i101.i, label %if.end13.i98.i.if.end61.i_crit_edge

if.end13.i98.i.if.end61.i_crit_edge:              ; preds = %if.end13.i98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.i

if.then16.i101.i:                                 ; preds = %if.end13.i98.i
  call void @__sanitizer_cov_trace_pc() #9
  %interval.i99.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %152 = ptrtoint ptr %interval.i99.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %interval.i99.i, align 4
  %add.i100.i = add i32 %153, %conv.i.i
  %154 = ptrtoint ptr %first_above_time14.i96.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %add.i100.i, ptr %first_above_time14.i96.i, align 4
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then16.i101.i, %if.end13.i98.i.if.end61.i_crit_edge, %if.then11.i95.i, %if.then.i80.i, %if.then49.i
  %skb.1.i = phi ptr [ %1, %if.then49.i ], [ null, %if.then.i80.i ], [ %120, %if.then11.i95.i ], [ %120, %if.then16.i101.i ], [ %120, %if.end13.i98.i.if.end61.i_crit_edge ]
  %155 = ptrtoint ptr %dropping3.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 1, ptr %dropping3.i, align 4
  %156 = ptrtoint ptr %vars to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %vars, align 4
  %lastcount.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %158 = ptrtoint ptr %lastcount.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %lastcount.i, align 4
  %sub64.i = sub i32 %157, %159
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub64.i)
  %cmp65.i = icmp ugt i32 %sub64.i, 1
  br i1 %cmp65.i, label %land.lhs.true67.i, label %if.end61.i.if.else76.i_crit_edge

if.end61.i.if.else76.i_crit_edge:                 ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else76.i

land.lhs.true67.i:                                ; preds = %if.end61.i
  %interval68.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %160 = ptrtoint ptr %interval68.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %interval68.i, align 4
  %mul.i = shl i32 %161, 4
  %drop_next69.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 8
  %162 = ptrtoint ptr %drop_next69.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %drop_next69.i, align 4
  %sub70.neg.i = sub i32 %163, %conv.i.i
  %sub71.i = add i32 %sub70.neg.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub71.i)
  %cmp72.i = icmp sgt i32 %sub71.i, 0
  br i1 %cmp72.i, label %if.then74.i, label %land.lhs.true67.i.if.else76.i_crit_edge

land.lhs.true67.i.if.else76.i_crit_edge:          ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else76.i

if.then74.i:                                      ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #9
  %164 = ptrtoint ptr %vars to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %sub64.i, ptr %vars, align 4
  %rec_inv_sqrt.i107.i = getelementptr inbounds %struct.codel_vars, ptr %vars, i32 0, i32 3
  %165 = ptrtoint ptr %rec_inv_sqrt.i107.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %rec_inv_sqrt.i107.i, align 2
  %conv.i108.i = zext i16 %166 to i32
  %shl.i109.i = shl nuw i32 %conv.i108.i, 16
  %conv1.i110.i = zext i32 %shl.i109.i to i64
  %mul.i111.i = mul nuw i64 %conv1.i110.i, %conv1.i110.i
  %shr.i112.i = lshr exact i64 %mul.i111.i, 32
  %conv4.i113.i = zext i32 %sub64.i to i64
  %mul6.i114.i = mul nuw i64 %shr.i112.i, %conv4.i113.i
  %sub.i115.i = sub i64 12884901888, %mul6.i114.i
  %shr7.i116.i = lshr i64 %sub.i115.i, 2
  %mul9.i117.i = mul i64 %shr7.i116.i, %conv1.i110.i
  %shr10.i118.i = lshr i64 %mul9.i117.i, 47
  %conv12.i119.i = trunc i64 %shr10.i118.i to i16
  store i16 %conv12.i119.i, ptr %rec_inv_sqrt.i107.i, align 2
  br label %if.end79.i

if.else76.i:                                      ; preds = %land.lhs.true67.i.if.else76.i_crit_edge, %if.end61.i.if.else76.i_crit_edge
  %167 = ptrtoint ptr %vars to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 1, ptr %vars, align 4
  %rec_inv_sqrt78.i = getelementptr inbounds %struct.codel_vars, ptr %vars, i32 0, i32 3
  %168 = ptrtoint ptr %rec_inv_sqrt78.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 -1, ptr %rec_inv_sqrt78.i, align 2
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.else76.i, %if.then74.i
  %169 = ptrtoint ptr %vars to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %vars, align 4
  %171 = ptrtoint ptr %lastcount.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %lastcount.i, align 4
  %interval82.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %172 = ptrtoint ptr %interval82.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %interval82.i, align 4
  %rec_inv_sqrt83.i = getelementptr inbounds %struct.codel_vars, ptr %vars, i32 0, i32 3
  %174 = ptrtoint ptr %rec_inv_sqrt83.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %rec_inv_sqrt83.i, align 2
  %conv84.i = zext i16 %175 to i32
  %shl.i120.i = shl nuw i32 %conv84.i, 16
  %conv.i.i121.i = zext i32 %173 to i64
  %conv1.i.i122.i = zext i32 %shl.i120.i to i64
  %mul.i.i123.i = mul nuw i64 %conv1.i.i122.i, %conv.i.i121.i
  %shr.i.i124.i = lshr i64 %mul.i.i123.i, 32
  %conv2.i.i125.i = trunc i64 %shr.i.i124.i to i32
  %add.i126.i = add i32 %conv2.i.i125.i, %conv.i.i
  %drop_next86.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 8
  %176 = ptrtoint ptr %drop_next86.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %add.i126.i, ptr %drop_next86.i, align 4
  br label %end.i

end.i:                                            ; preds = %if.end79.i, %if.end37.thread.i
  %skb.2.i = phi ptr [ %skb.1.i, %if.end79.i ], [ %66, %if.end37.thread.i ]
  %tobool89.not.i = icmp eq ptr %skb.2.i, null
  br i1 %tobool89.not.i, label %end.i.codel_dequeue.exit_crit_edge, label %end.i.land.lhs.true90.i_crit_edge

end.i.land.lhs.true90.i_crit_edge:                ; preds = %end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true90.i

end.i.codel_dequeue.exit_crit_edge:               ; preds = %end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %codel_dequeue.exit

land.lhs.true90.i:                                ; preds = %end.i.land.lhs.true90.i_crit_edge, %if.else40.i.land.lhs.true90.i_crit_edge, %if.end37.i.land.lhs.true90.i_crit_edge, %if.then18.i, %land.rhs.i.land.lhs.true90.i_crit_edge, %if.else.i.land.lhs.true90.i_crit_edge, %if.then7.i
  %skb.2135.i = phi ptr [ %skb.2.i, %end.i.land.lhs.true90.i_crit_edge ], [ %1, %if.else.i.land.lhs.true90.i_crit_edge ], [ %1, %if.then7.i ], [ %1, %if.else40.i.land.lhs.true90.i_crit_edge ], [ %skb.0141.i, %if.then18.i ], [ %skb.0141.i, %land.rhs.i.land.lhs.true90.i_crit_edge ], [ %66, %if.end37.i.land.lhs.true90.i_crit_edge ]
  %177 = ptrtoint ptr %ldelay.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %ldelay.i.i, align 4
  %ce_threshold.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %179 = ptrtoint ptr %ce_threshold.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %ce_threshold.i, align 4
  %sub91.i = sub i32 %178, %180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub91.i)
  %cmp92.i = icmp sgt i32 %sub91.i, 0
  br i1 %cmp92.i, label %if.then94.i, label %land.lhs.true90.i.codel_dequeue.exit_crit_edge

land.lhs.true90.i.codel_dequeue.exit_crit_edge:   ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %codel_dequeue.exit

if.then94.i:                                      ; preds = %land.lhs.true90.i
  %ce_threshold_mask.i = getelementptr inbounds %struct.codel_params, ptr %privdata.i, i32 0, i32 6
  %181 = ptrtoint ptr %ce_threshold_mask.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %ce_threshold_mask.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool95.not.i = icmp eq i8 %182, 0
  br i1 %tobool95.not.i, label %if.then94.i.land.lhs.true113.i_crit_edge, label %if.then96.i

if.then94.i.land.lhs.true113.i_crit_edge:         ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true113.i

if.then96.i:                                      ; preds = %if.then94.i
  %protocol.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2135.i, i32 0, i32 15, i32 0, i32 18
  %183 = ptrtoint ptr %protocol.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %protocol.i.i.i.i, align 8
  %mac_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2135.i, i32 0, i32 8
  %185 = ptrtoint ptr %mac_len.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %mac_len.i.i.i.i.i, align 4
  %conv.i.i.i.i.i = zext i16 %186 to i32
  %187 = zext i16 %184 to i64
  call void @__sanitizer_cov_trace_switch(i64 %187, ptr @__sancov_gen_cov_switch_values)
  switch i16 %184, label %if.then96.i.skb_protocol.exit.i.i_crit_edge [
    i16 -30552, label %if.then96.i.if.then.i.i.i.i.i_crit_edge
    i16 -32512, label %if.then96.i.if.then.i.i.i.i.i_crit_edge79
  ]

if.then96.i.if.then.i.i.i.i.i_crit_edge79:        ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i.i.i

if.then96.i.if.then.i.i.i.i.i_crit_edge:          ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i.i.i

if.then96.i.skb_protocol.exit.i.i_crit_edge:      ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_protocol.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then96.i.if.then.i.i.i.i.i_crit_edge, %if.then96.i.if.then.i.i.i.i.i_crit_edge79
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %186)
  %tobool.not.i.i.i.i.i = icmp eq i16 %186, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.i.if.end26.i.i.i.i.i_crit_edge, label %if.then1.i.i.i.i.i

if.then.i.i.i.i.i.if.end26.i.i.i.i.i_crit_edge:   ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i.i.i.i.i

if.then1.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %186)
  %cmp.i.i.i.i.i = icmp ult i16 %186, 4
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i.i.i.i, label %if.end25.i.i.i.i.i, !prof !41

do.end.i.i.i.i.i:                                 ; preds = %if.then1.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 598, i32 noundef 9, ptr noundef null) #7
  br label %codel_dequeue.exit

if.end25.i.i.i.i.i:                               ; preds = %if.then1.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i.i.i = add nsw i32 %conv.i.i.i.i.i, -4
  br label %if.end26.i.i.i.i.i

if.end26.i.i.i.i.i:                               ; preds = %if.end25.i.i.i.i.i, %if.then.i.i.i.i.i.if.end26.i.i.i.i.i_crit_edge
  %vlan_depth.0.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i, %if.end25.i.i.i.i.i ], [ 14, %if.then.i.i.i.i.i.if.end26.i.i.i.i.i_crit_edge ]
  %188 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2135.i, i32 0, i32 6
  %data_len.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2135.i, i32 0, i32 7
  %data.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2135.i, i32 0, i32 19
  br label %do.body27.i.i.i.i.i

do.body27.i.i.i.i.i:                              ; preds = %do.body27.backedge.i.i.i.i.i, %if.end26.i.i.i.i.i
  %vlan_depth.1.i.i.i.i.i = phi i32 [ %vlan_depth.0.i.i.i.i.i, %if.end26.i.i.i.i.i ], [ %add.i.i.i.i.i, %do.body27.backedge.i.i.i.i.i ]
  %parse_depth.0.i.i.i.i.i = phi i32 [ 8, %if.end26.i.i.i.i.i ], [ %dec.i.i.i.i.i, %do.body27.backedge.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i.i) #7
  %189 = ptrtoint ptr %vhdr.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 -1, ptr %vhdr.i.i.i.i.i, align 2, !annotation !44
  %190 = ptrtoint ptr %188 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 -1, ptr %188, align 2, !annotation !44
  %191 = ptrtoint ptr %len.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %len.i.i.i.i.i.i.i, align 4
  %193 = ptrtoint ptr %data_len.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %data_len.i.i.i.i.i.i.i, align 8
  %195 = add i32 %vlan_depth.1.i.i.i.i.i, %194
  %sub.i1.i.i.i.i.i.i = sub i32 %192, %195
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i.i, label %lor.lhs.false.i.i.i.i.i.i.i, !prof !40

if.then.i.i.i.i.i.i.i:                            ; preds = %do.body27.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %196 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i.i = getelementptr i8, ptr %197, i32 %vlan_depth.1.i.i.i.i.i
  br label %skb_header_pointer.exit.i.i.i.i.i

lor.lhs.false.i.i.i.i.i.i.i:                      ; preds = %do.body27.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb.2135.i, i32 noundef %vlan_depth.1.i.i.i.i.i, ptr noundef nonnull %vhdr.i.i.i.i.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i.i)
  %cmp3.i.i.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i.i.i, !prof !41
  br label %skb_header_pointer.exit.i.i.i.i.i

skb_header_pointer.exit.i.i.i.i.i:                ; preds = %lor.lhs.false.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i.i.i ]
  %tobool29.not.i.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i.i.i, null
  %dec.i.i.i.i.i = add nsw i32 %parse_depth.0.i.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i.i)
  %tobool30.not.i.i.i.i.i = icmp eq i32 %dec.i.i.i.i.i, 0
  %198 = select i1 %tobool29.not.i.i.i.i.i, i1 true, i1 %tobool30.not.i.i.i.i.i, !prof !41
  br i1 %198, label %cleanup.thread.i.i.i.i.i, label %do.cond42.i.i.i.i.i, !prof !41

cleanup.thread.i.i.i.i.i:                         ; preds = %skb_header_pointer.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i.i) #7
  br label %codel_dequeue.exit

do.cond42.i.i.i.i.i:                              ; preds = %skb_header_pointer.exit.i.i.i.i.i
  %h_vlan_encapsulated_proto.i.i.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i.i, i32 0, i32 1
  %199 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i.i) #7
  %201 = zext i16 %200 to i64
  call void @__sanitizer_cov_trace_switch(i64 %201, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %200, label %do.cond42.i.i.i.i.i.skb_protocol.exit.i.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i.i.do.body27.backedge.i.i.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i.i.do.body27.backedge.i.i.i.i.i_crit_edge80
  ]

do.cond42.i.i.i.i.i.do.body27.backedge.i.i.i.i.i_crit_edge80: ; preds = %do.cond42.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body27.backedge.i.i.i.i.i

do.cond42.i.i.i.i.i.do.body27.backedge.i.i.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body27.backedge.i.i.i.i.i

do.cond42.i.i.i.i.i.skb_protocol.exit.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_protocol.exit.i.i

do.body27.backedge.i.i.i.i.i:                     ; preds = %do.cond42.i.i.i.i.i.do.body27.backedge.i.i.i.i.i_crit_edge, %do.cond42.i.i.i.i.i.do.body27.backedge.i.i.i.i.i_crit_edge80
  %add.i.i.i.i.i = add nsw i32 %vlan_depth.1.i.i.i.i.i, 4
  br label %do.body27.i.i.i.i.i

skb_protocol.exit.i.i:                            ; preds = %do.cond42.i.i.i.i.i.skb_protocol.exit.i.i_crit_edge, %if.then96.i.skb_protocol.exit.i.i_crit_edge
  %retval.2.i.i.i.i.i = phi i16 [ %184, %if.then96.i.skb_protocol.exit.i.i_crit_edge ], [ %200, %do.cond42.i.i.i.i.i.skb_protocol.exit.i.i_crit_edge ]
  %202 = zext i16 %retval.2.i.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %202, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %retval.2.i.i.i.i.i, label %skb_protocol.exit.i.i.codel_dequeue.exit_crit_edge [
    i16 2048, label %sw.bb.i.i
    i16 -31011, label %sw.bb5.i.i
  ]

skb_protocol.exit.i.i.codel_dequeue.exit_crit_edge: ; preds = %skb_protocol.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %codel_dequeue.exit

sw.bb.i.i:                                        ; preds = %skb_protocol.exit.i.i
  %head.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2135.i, i32 0, i32 18
  %203 = ptrtoint ptr %head.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %head.i.i.i.i.i, align 8
  %network_header.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2135.i, i32 0, i32 15, i32 0, i32 20
  %205 = ptrtoint ptr %network_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %network_header.i.i.i.i.i, align 4
  %conv.i.i.i17.i.i = zext i16 %206 to i32
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %204, i32 %conv.i.i.i17.i.i
  %data.i.i.i127.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2135.i, i32 0, i32 19
  %207 = ptrtoint ptr %data.i.i.i127.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %data.i.i.i127.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %208 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %add.i.i.i = add i32 %sub.ptr.sub.i.i.i.i, 20
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2135.i, i32 0, i32 6
  %209 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %len.i.i.i.i.i, align 4
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2135.i, i32 0, i32 7
  %211 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %sub.i.i.i18.i.i = sub i32 %210, %212
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %sub.i.i.i18.i.i)
  %cmp.not.i.i.i.i = icmp ugt i32 %add.i.i.i, %sub.i.i.i18.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %sw.bb.i.i.if.end.i129.i_crit_edge, !prof !41

sw.bb.i.i.if.end.i129.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i129.i

if.end.i.i.i.i:                                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %210, i32 %add.i.i.i)
  %cmp3.i.i.i.i = icmp ult i32 %210, %add.i.i.i
  br i1 %cmp3.i.i.i.i, label %if.end.i.i.i.i.codel_dequeue.exit_crit_edge, label %pskb_network_may_pull.exit.i.i, !prof !41

if.end.i.i.i.i.codel_dequeue.exit_crit_edge:      ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %codel_dequeue.exit

pskb_network_may_pull.exit.i.i:                   ; preds = %if.end.i.i.i.i
  %sub.i.i.i.i = sub i32 %add.i.i.i, %sub.i.i.i18.i.i
  %call13.i.i.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb.2135.i, i32 noundef %sub.i.i.i.i) #7
  %cmp14.i.i.not.i.i = icmp eq ptr %call13.i.i.i.i, null
  br i1 %cmp14.i.i.not.i.i, label %pskb_network_may_pull.exit.i.i.codel_dequeue.exit_crit_edge, label %pskb_network_may_pull.exit.i.i.if.end.i129.i_crit_edge

pskb_network_may_pull.exit.i.i.if.end.i129.i_crit_edge: ; preds = %pskb_network_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i129.i

pskb_network_may_pull.exit.i.i.codel_dequeue.exit_crit_edge: ; preds = %pskb_network_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %codel_dequeue.exit

if.end.i129.i:                                    ; preds = %pskb_network_may_pull.exit.i.i.if.end.i129.i_crit_edge, %sw.bb.i.i.if.end.i129.i_crit_edge
  %213 = ptrtoint ptr %head.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %head.i.i.i.i.i, align 8
  %215 = ptrtoint ptr %network_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %network_header.i.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %216 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %214, i32 %conv.i.i.i.i
  %tos.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %217 = ptrtoint ptr %tos.i.i.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %tos.i.i.i, align 1
  %conv4.i128.i = zext i8 %218 to i32
  br label %land.rhs100.i

sw.bb5.i.i:                                       ; preds = %skb_protocol.exit.i.i
  %head.i.i.i19.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2135.i, i32 0, i32 18
  %219 = ptrtoint ptr %head.i.i.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %head.i.i.i19.i.i, align 8
  %network_header.i.i.i20.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2135.i, i32 0, i32 15, i32 0, i32 20
  %221 = ptrtoint ptr %network_header.i.i.i20.i.i to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %network_header.i.i.i20.i.i, align 4
  %conv.i.i.i21.i.i = zext i16 %222 to i32
  %add.ptr.i.i.i22.i.i = getelementptr i8, ptr %220, i32 %conv.i.i.i21.i.i
  %data.i.i23.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2135.i, i32 0, i32 19
  %223 = ptrtoint ptr %data.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %data.i.i23.i.i, align 4
  %sub.ptr.lhs.cast.i.i24.i.i = ptrtoint ptr %add.ptr.i.i.i22.i.i to i32
  %sub.ptr.rhs.cast.i.i25.i.i = ptrtoint ptr %224 to i32
  %sub.ptr.sub.i.i26.i.i = sub i32 %sub.ptr.lhs.cast.i.i24.i.i, %sub.ptr.rhs.cast.i.i25.i.i
  %add.i27.i.i = add i32 %sub.ptr.sub.i.i26.i.i, 40
  %len.i.i.i28.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2135.i, i32 0, i32 6
  %225 = ptrtoint ptr %len.i.i.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %len.i.i.i28.i.i, align 4
  %data_len.i.i.i29.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2135.i, i32 0, i32 7
  %227 = ptrtoint ptr %data_len.i.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %data_len.i.i.i29.i.i, align 8
  %sub.i.i.i30.i.i = sub i32 %226, %228
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i27.i.i, i32 %sub.i.i.i30.i.i)
  %cmp.not.i.i31.i.i = icmp ugt i32 %add.i27.i.i, %sub.i.i.i30.i.i
  br i1 %cmp.not.i.i31.i.i, label %if.end.i.i33.i.i, label %sw.bb5.i.i.if.end9.i.i_crit_edge, !prof !41

sw.bb5.i.i.if.end9.i.i_crit_edge:                 ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

if.end.i.i33.i.i:                                 ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %226, i32 %add.i27.i.i)
  %cmp3.i.i32.i.i = icmp ult i32 %226, %add.i27.i.i
  br i1 %cmp3.i.i32.i.i, label %if.end.i.i33.i.i.codel_dequeue.exit_crit_edge, label %pskb_network_may_pull.exit40.i.i, !prof !41

if.end.i.i33.i.i.codel_dequeue.exit_crit_edge:    ; preds = %if.end.i.i33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %codel_dequeue.exit

pskb_network_may_pull.exit40.i.i:                 ; preds = %if.end.i.i33.i.i
  %sub.i.i34.i.i = sub i32 %add.i27.i.i, %sub.i.i.i30.i.i
  %call13.i.i35.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb.2135.i, i32 noundef %sub.i.i34.i.i) #7
  %cmp14.i.i36.not.i.i = icmp eq ptr %call13.i.i35.i.i, null
  br i1 %cmp14.i.i36.not.i.i, label %pskb_network_may_pull.exit40.i.i.codel_dequeue.exit_crit_edge, label %pskb_network_may_pull.exit40.i.i.if.end9.i.i_crit_edge

pskb_network_may_pull.exit40.i.i.if.end9.i.i_crit_edge: ; preds = %pskb_network_may_pull.exit40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

pskb_network_may_pull.exit40.i.i.codel_dequeue.exit_crit_edge: ; preds = %pskb_network_may_pull.exit40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %codel_dequeue.exit

if.end9.i.i:                                      ; preds = %pskb_network_may_pull.exit40.i.i.if.end9.i.i_crit_edge, %sw.bb5.i.i.if.end9.i.i_crit_edge
  %229 = ptrtoint ptr %head.i.i.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %head.i.i.i19.i.i, align 8
  %231 = ptrtoint ptr %network_header.i.i.i20.i.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %network_header.i.i.i20.i.i, align 4
  %conv.i.i43.i.i = zext i16 %232 to i32
  %add.ptr.i.i44.i.i = getelementptr i8, ptr %230, i32 %conv.i.i43.i.i
  %233 = ptrtoint ptr %add.ptr.i.i44.i.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %add.ptr.i.i44.i.i, align 2
  %235 = lshr i16 %234, 4
  %236 = and i16 %235, 255
  %conv12.i130.i = zext i16 %236 to i32
  br label %land.rhs100.i

land.rhs100.i:                                    ; preds = %if.end9.i.i, %if.end.i129.i
  %retval.0.i131.i = phi i32 [ %conv12.i130.i, %if.end9.i.i ], [ %conv4.i128.i, %if.end.i129.i ]
  %237 = ptrtoint ptr %ce_threshold_mask.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %ce_threshold_mask.i, align 2
  %conv104.i = zext i8 %238 to i32
  %and.i = and i32 %retval.0.i131.i, %conv104.i
  %ce_threshold_selector.i = getelementptr inbounds %struct.codel_params, ptr %privdata.i, i32 0, i32 5
  %239 = ptrtoint ptr %ce_threshold_selector.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %ce_threshold_selector.i, align 1
  %conv105.i = zext i8 %240 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv105.i)
  %cmp106.i = icmp eq i32 %and.i, %conv105.i
  br i1 %cmp106.i, label %land.rhs100.i.land.lhs.true113.i_crit_edge, label %land.rhs100.i.codel_dequeue.exit_crit_edge

land.rhs100.i.codel_dequeue.exit_crit_edge:       ; preds = %land.rhs100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %codel_dequeue.exit

land.rhs100.i.land.lhs.true113.i_crit_edge:       ; preds = %land.rhs100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true113.i

land.lhs.true113.i:                               ; preds = %land.rhs100.i.land.lhs.true113.i_crit_edge, %if.then94.i.land.lhs.true113.i_crit_edge
  %call114.i = call fastcc i32 @INET_ECN_set_ce(ptr noundef nonnull %skb.2135.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i)
  %tobool115.not.i = icmp eq i32 %call114.i, 0
  br i1 %tobool115.not.i, label %land.lhs.true113.i.codel_dequeue.exit_crit_edge, label %if.then116.i

land.lhs.true113.i.codel_dequeue.exit_crit_edge:  ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %codel_dequeue.exit

if.then116.i:                                     ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #9
  %ce_mark.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 14
  %241 = ptrtoint ptr %ce_mark.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %ce_mark.i, align 4
  %inc117.i = add i32 %242, 1
  store i32 %inc117.i, ptr %ce_mark.i, align 4
  br label %codel_dequeue.exit

codel_dequeue.exit:                               ; preds = %if.then116.i, %land.lhs.true113.i.codel_dequeue.exit_crit_edge, %land.rhs100.i.codel_dequeue.exit_crit_edge, %pskb_network_may_pull.exit40.i.i.codel_dequeue.exit_crit_edge, %if.end.i.i33.i.i.codel_dequeue.exit_crit_edge, %pskb_network_may_pull.exit.i.i.codel_dequeue.exit_crit_edge, %if.end.i.i.i.i.codel_dequeue.exit_crit_edge, %skb_protocol.exit.i.i.codel_dequeue.exit_crit_edge, %cleanup.thread.i.i.i.i.i, %do.end.i.i.i.i.i, %land.lhs.true90.i.codel_dequeue.exit_crit_edge, %end.i.codel_dequeue.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ null, %if.then.i ], [ %skb.2135.i, %land.rhs100.i.codel_dequeue.exit_crit_edge ], [ %skb.2135.i, %land.lhs.true113.i.codel_dequeue.exit_crit_edge ], [ %skb.2135.i, %if.then116.i ], [ %skb.2135.i, %land.lhs.true90.i.codel_dequeue.exit_crit_edge ], [ null, %end.i.codel_dequeue.exit_crit_edge ], [ %skb.2135.i, %pskb_network_may_pull.exit40.i.i.codel_dequeue.exit_crit_edge ], [ %skb.2135.i, %pskb_network_may_pull.exit.i.i.codel_dequeue.exit_crit_edge ], [ %skb.2135.i, %skb_protocol.exit.i.i.codel_dequeue.exit_crit_edge ], [ %skb.2135.i, %do.end.i.i.i.i.i ], [ %skb.2135.i, %cleanup.thread.i.i.i.i.i ], [ %skb.2135.i, %if.end.i.i.i.i.codel_dequeue.exit_crit_edge ], [ %skb.2135.i, %if.end.i.i33.i.i.codel_dequeue.exit_crit_edge ]
  %drop_count = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %243 = ptrtoint ptr %drop_count to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %drop_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %tobool.not = icmp eq i32 %244, 0
  br i1 %tobool.not, label %codel_dequeue.exit.if.end_crit_edge, label %land.lhs.true

codel_dequeue.exit.if.end_crit_edge:              ; preds = %codel_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %codel_dequeue.exit
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %245 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246)
  %tobool4.not = icmp eq i32 %246, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %drop_len = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 12
  %247 = ptrtoint ptr %drop_len to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %drop_len, align 4
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef %244, i32 noundef %248) #7
  %249 = ptrtoint ptr %drop_count to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 0, ptr %drop_count, align 4
  %250 = ptrtoint ptr %drop_len to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 0, ptr %drop_len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %codel_dequeue.exit.if.end_crit_edge
  %tobool12.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool12.not, label %if.end.if.end14_crit_edge, label %if.then13

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then13:                                        ; preds = %if.end
  %cb.i.i.i.i29 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i, i32 0, i32 3
  %251 = ptrtoint ptr %cb.i.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %cb.i.i.i.i29, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i, i32 0, i32 17
  %253 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %254, i32 0, i32 4
  %255 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %256)
  %tobool.i.not.i.i = icmp eq i16 %256, 0
  br i1 %tobool.i.not.i.i, label %if.then13.cond.end.i.i_crit_edge, label %cond.true.i.i

if.then13.cond.end.i.i_crit_edge:                 ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %254, i32 0, i32 5
  %257 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %gso_segs.i.i, align 2
  %conv4.i.i30 = zext i16 %258 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.then13.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv4.i.i30, %cond.true.i.i ], [ 1, %if.then13.cond.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %259 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %tobool.not.i.i.i.i.i31 = icmp eq i32 %259, 0
  br i1 %tobool.not.i.i.i.i.i31, label %cond.end.i.i.qdisc_bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i.i

cond.end.i.i.qdisc_bstats_update.exit_crit_edge:  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qdisc_bstats_update.exit

land.lhs.true.i.i.i.i.i:                          ; preds = %cond.end.i.i
  %260 = call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i.i.i.i.i.i = and i32 %260, -16384
  %261 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %261, i32 0, i32 1
  %262 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %263, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !45
  %264 = call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i.i.i.i = and i32 %264, -16384
  %265 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %265, i32 0, i32 3
  %266 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %267
  %268 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i32 = add i32 %269, ptrtoint (ptr @lockdep_recursion to i32)
  %270 = inttoptr i32 %add.i.i.i.i.i32 to ptr
  %271 = ptrtoint ptr %270 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load volatile i32, ptr %270, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !46
  %273 = call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i7.i.i.i.i.i = and i32 %273, -16384
  %274 = inttoptr i32 %and.i.i.i7.i.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %274, i32 0, i32 1
  %275 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %276, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %272)
  %tobool20.not.i.i.i.i.i = icmp eq i32 %272, 0
  br i1 %tobool20.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qdisc_bstats_update.exit

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %277 = call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i.i.i.i.i = and i32 %277, -16384
  %278 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %278, i32 0, i32 1
  %279 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %cmp.i.i.i.i.i33 = icmp eq i32 %280, 0
  br i1 %cmp.i.i.i.i.i33, label %land.rhs22.i.i.i.i.i, label %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qdisc_bstats_update.exit

land.rhs22.i.i.i.i.i:                             ; preds = %land.rhs.i.i.i.i.i
  %281 = call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i9.i.i.i.i.i = and i32 %281, -16384
  %282 = inttoptr i32 %and.i.i.i9.i.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %282, i32 0, i32 1
  %283 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  %add.i11.i.i.i.i.i = add i32 %284, 1
  store volatile i32 %add.i11.i.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !47
  %285 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx46.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %286
  %287 = ptrtoint ptr %arrayidx46.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %arrayidx46.i.i.i.i.i, align 4
  %add47.i.i.i.i.i = add i32 %288, ptrtoint (ptr @hardirqs_enabled to i32)
  %289 = inttoptr i32 %add47.i.i.i.i.i to ptr
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load volatile i32, ptr %289, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !48
  %292 = call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i12.i.i.i.i.i = and i32 %292, -16384
  %293 = inttoptr i32 %and.i.i.i12.i.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %293, i32 0, i32 1
  %294 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  %sub.i14.i.i.i.i.i = add i32 %295, -1
  store volatile i32 %sub.i14.i.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %tobool54.not.i.i.i.i.i = icmp eq i32 %291, 0
  br i1 %tobool54.not.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i.i

land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qdisc_bstats_update.exit

land.rhs58.i.i.i.i.i:                             ; preds = %land.rhs22.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %if.then.i.i.i.i.i34, !prof !40

land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qdisc_bstats_update.exit

if.then.i.i.i.i.i34:                              ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 271, i32 noundef 9, ptr noundef null) #7
  br label %qdisc_bstats_update.exit

qdisc_bstats_update.exit:                         ; preds = %if.then.i.i.i.i.i34, %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %cond.end.i.i.qdisc_bstats_update.exit_crit_edge
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i35 = zext i32 %252 to i64
  %syncp.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2
  %296 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %297, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !49
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2, i32 0, i32 1
  %298 = call ptr @llvm.returnaddress(i32 0) #7
  %299 = ptrtoint ptr %298 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %299) #7
  %300 = ptrtoint ptr %bstats.i to i32
  call void @__asan_load8_noabort(i32 %300)
  %301 = load i64, ptr %bstats.i, align 8
  %add.i.i.i.i = add i64 %301, %conv.i.i35
  store i64 %add.i.i.i.i, ptr %bstats.i, align 8
  %packets2.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 1
  %conv.i7.i.i.i = zext i32 %cond.i.i to i64
  %302 = ptrtoint ptr %packets2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %302)
  %303 = load i64, ptr %packets2.i.i.i, align 8
  %add.i8.i.i.i = add i64 %303, %conv.i7.i.i.i
  store i64 %add.i8.i.i.i, ptr %packets2.i.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef %299) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !50
  %304 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %305, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  br label %if.end14

if.end14:                                         ; preds = %qdisc_bstats_update.exit, %if.end.if.end14_crit_edge
  ret ptr %retval.0.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qdisc_peek_dequeued(ptr noundef %sch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %gso_skb = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 16
  %0 = ptrtoint ptr %gso_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gso_skb, align 4
  %cmp.i = icmp eq ptr %1, %gso_skb
  %tobool.not15 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.i, %tobool.not15
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %dequeue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 1
  %2 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dequeue, align 4
  %call1 = tail call ptr %3(ptr noundef %sch) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
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
define internal i32 @codel_init(ptr noundef %sch, ptr noundef %opt, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %0 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1000, ptr %limit, align 4
  %interval.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %1 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 97656, ptr %interval.i, align 4
  %2 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4882, ptr %privdata.i, align 4
  %ce_threshold.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %3 = ptrtoint ptr %ce_threshold.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2147483647, ptr %ce_threshold.i, align 4
  %ce_threshold_mask.i = getelementptr inbounds %struct.codel_params, ptr %privdata.i, i32 0, i32 6
  %4 = ptrtoint ptr %ce_threshold_mask.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ce_threshold_mask.i, align 2
  %ce_threshold_selector.i = getelementptr inbounds %struct.codel_params, ptr %privdata.i, i32 0, i32 5
  %5 = ptrtoint ptr %ce_threshold_selector.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %ce_threshold_selector.i, align 1
  %ecn.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %6 = ptrtoint ptr %ecn.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %ecn.i, align 4
  %vars = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %7 = call ptr @memset(ptr %vars, i32 0, i32 28)
  %8 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_queue.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 128
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mtu.i, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 19
  %14 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hard_header_len.i, align 2
  %conv.i = zext i16 %15 to i32
  %add.i = add i32 %13, %conv.i
  %mtu = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %16 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %mtu, align 4
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @codel_change(ptr noundef %sch, ptr noundef nonnull %opt, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup12_crit_edge

if.then.cleanup12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup12

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %17 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not = icmp eq i32 %18, 0
  %flags10 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %19 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags10, align 8
  %and = and i32 %20, -5
  %masksel = select i1 %cmp.not, i32 0, i32 4
  %or.sink = or i32 %and, %masksel
  store i32 %or.sink, ptr %flags10, align 8
  br label %cleanup12

cleanup12:                                        ; preds = %if.end7, %if.then.cleanup12_crit_edge
  %retval.1 = phi i32 [ %call4, %if.then.cleanup12_crit_edge ], [ 0, %if.end7 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @codel_reset(ptr nocapture noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %q.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %call.i.i = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %entry.if.end29.i.i_crit_edge

entry.if.end29.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %entry
  %.b50.i.i = load i1, ptr @__qdisc_reset_queue.__already_done, align 1
  br i1 %.b50.i.i, label %land.rhs.i.i.if.end29.i.i_crit_edge, label %if.then.i.i, !prof !40

land.rhs.i.i.if.end29.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__qdisc_reset_queue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1165, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 1165) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %qdisc_reset_queue.exit

if.then38.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q.i, align 4
  %tail.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 4
  tail call void @rtnl_kfree_skbs(ptr noundef %3, ptr noundef %5) #7
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
  %vars = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %10 = call ptr @memset(ptr %vars, i32 0, i32 24)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @codel_change(ptr noundef %sch, ptr noundef %opt, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %tb = alloca [6 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tb) #7
  %0 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 1
  %1 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 2
  %2 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 3
  %3 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 4
  %4 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 5
  %tobool.not = icmp eq ptr %opt, null
  %5 = call ptr @memset(ptr %tb, i32 255, i32 24)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %opt, i32 4
  %6 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %opt, align 2
  %conv.i.i = zext i16 %7 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 5, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @codel_policy, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end3.sch_tree_lock.exit_crit_edge

if.end3.sch_tree_lock.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch_tree_lock.exit

if.else.i:                                        ; preds = %if.end3
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %10 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i.sch_tree_lock.exit_crit_edge

if.else.i.sch_tree_lock.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !40

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 596) #7
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i.sch_tree_lock.exit_crit_edge, %if.end3.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %if.end3.sch_tree_lock.exit_crit_edge ], [ %13, %if.else.i.sch_tree_lock.exit_crit_edge ], [ %13, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %13, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #7
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %0, align 4
  %tobool4.not = icmp eq ptr %15, null
  br i1 %tobool4.not, label %sch_tree_lock.exit.if.end10_crit_edge, label %if.then5

sch_tree_lock.exit.if.end10_crit_edge:            ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then5:                                         ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i89 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i89 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i89, align 4
  %conv = zext i32 %17 to i64
  %mul = mul nuw nsw i64 %conv, 1000
  %shr = lshr i64 %mul, 10
  %conv8 = trunc i64 %shr to i32
  %18 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv8, ptr %privdata.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %sch_tree_lock.exit.if.end10_crit_edge
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %4, align 4
  %tobool12.not = icmp eq ptr %20, null
  br i1 %tobool12.not, label %if.end10.if.end21_crit_edge, label %if.then13

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i90 = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i90 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i90, align 4
  %conv16 = zext i32 %22 to i64
  %mul17 = mul nuw nsw i64 %conv16, 1000
  %shr18 = lshr i64 %mul17, 10
  %conv19 = trunc i64 %shr18 to i32
  %ce_threshold = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %23 = ptrtoint ptr %ce_threshold to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv19, ptr %ce_threshold, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then13, %if.end10.if.end21_crit_edge
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %2, align 4
  %tobool23.not = icmp eq ptr %25, null
  br i1 %tobool23.not, label %if.end21.if.end33_crit_edge, label %if.then24

if.end21.if.end33_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i91 = getelementptr i8, ptr %25, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i91 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i91, align 4
  %conv27 = zext i32 %27 to i64
  %mul28 = mul nuw nsw i64 %conv27, 1000
  %shr29 = lshr i64 %mul28, 10
  %conv30 = trunc i64 %shr29 to i32
  %interval32 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %28 = ptrtoint ptr %interval32 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv30, ptr %interval32, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then24, %if.end21.if.end33_crit_edge
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %tobool35.not = icmp eq ptr %30, null
  br i1 %tobool35.not, label %if.end33.if.end39_crit_edge, label %if.then36

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i92 = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i92 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i92, align 4
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %33 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %limit, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end33.if.end39_crit_edge
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  %tobool41.not = icmp eq ptr %35, null
  br i1 %tobool41.not, label %if.end39.if.end48_crit_edge, label %if.then42

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i93 = getelementptr i8, ptr %35, i32 4
  %36 = ptrtoint ptr %add.ptr.i.i93 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool45 = icmp ne i32 %37, 0
  %ecn = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %frombool = zext i1 %tobool45 to i8
  %38 = ptrtoint ptr %ecn to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool, ptr %ecn, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then42, %if.end39.if.end48_crit_edge
  %q49 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %qlen50 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %39 = ptrtoint ptr %qlen50 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qlen50, align 8
  %limit53 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %41 = ptrtoint ptr %limit53 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %limit53, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp54108 = icmp ugt i32 %40, %42
  br i1 %cmp54108, label %while.body.lr.ph, label %if.end48.while.end_crit_edge

if.end48.while.end_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end48
  %tail.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  br label %while.body

while.body:                                       ; preds = %__qdisc_dequeue_head.exit.while.body_crit_edge, %while.body.lr.ph
  %dropped.0109 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %__qdisc_dequeue_head.exit.while.body_crit_edge ]
  %43 = ptrtoint ptr %q49 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %q49, align 4
  %cmp.not.i = icmp eq ptr %44, null
  br i1 %cmp.not.i, label %while.body.__qdisc_dequeue_head.exit_crit_edge, label %if.then.i, !prof !41

while.body.__qdisc_dequeue_head.exit_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %__qdisc_dequeue_head.exit

if.then.i:                                        ; preds = %while.body
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %47 = ptrtoint ptr %q49 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %q49, align 4
  %48 = ptrtoint ptr %qlen50 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %qlen50, align 4
  %dec.i = add i32 %49, -1
  store i32 %dec.i, ptr %qlen50, align 4
  %cmp4.i = icmp eq ptr %46, null
  br i1 %cmp4.i, label %if.then5.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %tail.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %if.then.i.if.end.i_crit_edge
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %44, align 8
  br label %__qdisc_dequeue_head.exit

__qdisc_dequeue_head.exit:                        ; preds = %if.end.i, %while.body.__qdisc_dequeue_head.exit_crit_edge
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 3
  %52 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cb.i.i, align 4
  %add = add i32 %53, %dropped.0109
  %54 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %backlog.i, align 4
  %sub.i = sub i32 %55, %53
  store i32 %sub.i, ptr %backlog.i, align 4
  call void @rtnl_kfree_skbs(ptr noundef %44, ptr noundef %44) #7
  %56 = ptrtoint ptr %drops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %drops.i.i.i, align 4
  %inc.i.i.i = add i32 %57, 1
  store i32 %inc.i.i.i, ptr %drops.i.i.i, align 4
  %58 = ptrtoint ptr %qlen50 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %qlen50, align 8
  %60 = ptrtoint ptr %limit53 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %limit53, align 4
  %cmp54 = icmp ugt i32 %59, %61
  br i1 %cmp54, label %__qdisc_dequeue_head.exit.while.body_crit_edge, label %__qdisc_dequeue_head.exit.while.end_crit_edge

__qdisc_dequeue_head.exit.while.end_crit_edge:    ; preds = %__qdisc_dequeue_head.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

__qdisc_dequeue_head.exit.while.body_crit_edge:   ; preds = %__qdisc_dequeue_head.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %__qdisc_dequeue_head.exit.while.end_crit_edge, %if.end48.while.end_crit_edge
  %dropped.0.lcssa = phi i32 [ 0, %if.end48.while.end_crit_edge ], [ %add, %__qdisc_dequeue_head.exit.while.end_crit_edge ]
  %.lcssa = phi i32 [ %40, %if.end48.while.end_crit_edge ], [ %59, %__qdisc_dequeue_head.exit.while.end_crit_edge ]
  %sub = sub i32 %40, %.lcssa
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef %sub, i32 noundef %dropped.0.lcssa) #7
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i, align 8
  %and.i95 = and i32 %63, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95)
  %tobool.not.i96 = icmp eq i32 %and.i95, 0
  br i1 %tobool.not.i96, label %if.else.i101, label %while.end.sch_tree_unlock.exit_crit_edge

while.end.sch_tree_unlock.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch_tree_unlock.exit

if.else.i101:                                     ; preds = %while.end
  %dev_queue.i.i.i97 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %64 = ptrtoint ptr %dev_queue.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev_queue.i.i.i97, align 8
  %qdisc_sleeping.i.i.i98 = getelementptr inbounds %struct.netdev_queue, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %qdisc_sleeping.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %qdisc_sleeping.i.i.i98, align 4
  %call1.i.i99 = call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i99)
  %tobool.not.i.i100 = icmp eq i32 %call1.i.i99, 0
  br i1 %tobool.not.i.i100, label %land.rhs.i.i103, label %if.else.i101.sch_tree_unlock.exit_crit_edge

if.else.i101.sch_tree_unlock.exit_crit_edge:      ; preds = %if.else.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch_tree_unlock.exit

land.rhs.i.i103:                                  ; preds = %if.else.i101
  %.b41.i.i102 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i102, label %land.rhs.i.i103.sch_tree_unlock.exit_crit_edge, label %if.then.i.i104, !prof !40

land.rhs.i.i103.sch_tree_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch_tree_unlock.exit

if.then.i.i104:                                   ; preds = %land.rhs.i.i103
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 596) #7
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i104, %land.rhs.i.i103.sch_tree_unlock.exit_crit_edge, %if.else.i101.sch_tree_unlock.exit_crit_edge, %while.end.sch_tree_unlock.exit_crit_edge
  %.sink.i105 = phi ptr [ %sch, %while.end.sch_tree_unlock.exit_crit_edge ], [ %67, %if.else.i101.sch_tree_unlock.exit_crit_edge ], [ %67, %land.rhs.i.i103.sch_tree_unlock.exit_crit_edge ], [ %67, %if.then.i.i104 ]
  %lock.i.i.i106 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i105, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i106) #7
  br label %cleanup

cleanup:                                          ; preds = %sch_tree_unlock.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sch_tree_unlock.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tb) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @codel_dump(ptr nocapture noundef readonly %sch, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i64 = alloca i32, align 4
  %tmp.i55 = alloca i32, align 4
  %tmp.i53 = alloca i32, align 4
  %tmp.i44 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp68 = icmp eq ptr %1, null
  %cmp = select i1 %cmp.i, i1 true, i1 %cmp68
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %2 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %privdata.i, align 4
  %conv.i = zext i32 %3 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 10
  %4 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i, i32 0) #10, !srcloc !51
  %asmresult.i.i = extractvalue { i64, i32 } %4, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %4, 1
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #10, !srcloc !52
  %asmresult10.i.i = extractvalue { i64, i32 } %5, 0
  %div161263.i = lshr i64 %asmresult10.i.i, 9
  %conv183.i = trunc i64 %div161263.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv183.i, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then.i.i_crit_edge

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %if.end
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %7 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %limit, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i44) #7
  %9 = ptrtoint ptr %tmp.i44 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i44, align 4
  %call.i45 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i44) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool5.not = icmp eq i32 %call.i45, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.if.then.i.i_crit_edge

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %interval = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %10 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interval, align 4
  %conv.i46 = zext i32 %11 to i64
  %shl.i47 = shl nuw nsw i64 %conv.i46, 10
  %12 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i47, i32 0) #10, !srcloc !51
  %asmresult.i.i48 = extractvalue { i64, i32 } %12, 0
  %asmresult4.i.i49 = extractvalue { i64, i32 } %12, 1
  %13 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i47, i64 %asmresult.i.i48, i32 %asmresult4.i.i49) #10, !srcloc !52
  %asmresult10.i.i50 = extractvalue { i64, i32 } %13, 0
  %div161263.i51 = lshr i64 %asmresult10.i.i50, 9
  %conv183.i52 = trunc i64 %div161263.i51 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i53) #7
  %14 = ptrtoint ptr %tmp.i53 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv183.i52, ptr %tmp.i53, align 4
  %call.i54 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i53) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i53) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool10.not = icmp eq i32 %call.i54, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %lor.lhs.false6.if.then.i.i_crit_edge

lor.lhs.false6.if.then.i.i_crit_edge:             ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

lor.lhs.false11:                                  ; preds = %lor.lhs.false6
  %ecn = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %15 = ptrtoint ptr %ecn to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ecn, align 4, !range !43
  %17 = zext i8 %16 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i55) #7
  %18 = ptrtoint ptr %tmp.i55 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tmp.i55, align 4
  %call.i56 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i55) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i55) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool15.not = icmp eq i32 %call.i56, 0
  br i1 %tobool15.not, label %if.end17, label %lor.lhs.false11.if.then.i.i_crit_edge

lor.lhs.false11.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.end17:                                         ; preds = %lor.lhs.false11
  %ce_threshold = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %19 = ptrtoint ptr %ce_threshold to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ce_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %20)
  %cmp19.not = icmp eq i32 %20, 2147483647
  br i1 %cmp19.not, label %if.end17.if.end27_crit_edge, label %land.lhs.true

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end17
  %conv.i57 = zext i32 %20 to i64
  %shl.i58 = shl nuw nsw i64 %conv.i57, 10
  %21 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i58, i32 0) #10, !srcloc !51
  %asmresult.i.i59 = extractvalue { i64, i32 } %21, 0
  %asmresult4.i.i60 = extractvalue { i64, i32 } %21, 1
  %22 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i58, i64 %asmresult.i.i59, i32 %asmresult4.i.i60) #10, !srcloc !52
  %asmresult10.i.i61 = extractvalue { i64, i32 } %22, 0
  %div161263.i62 = lshr i64 %asmresult10.i.i61, 9
  %conv183.i63 = trunc i64 %div161263.i62 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i64) #7
  %23 = ptrtoint ptr %tmp.i64 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv183.i63, ptr %tmp.i64, align 4
  %call.i65 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i64) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool25.not = icmp eq i32 %call.i65, 0
  br i1 %tobool25.not, label %land.lhs.true.if.end27_crit_edge, label %land.lhs.true.if.then.i.i_crit_edge

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end27:                                         ; preds = %land.lhs.true.if.end27_crit_edge, %if.end17.if.end27_crit_edge
  %24 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i67 = trunc i32 %sub.ptr.sub.i to i16
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i67, ptr %1, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %27 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %land.lhs.true.if.then.i.i_crit_edge, %lor.lhs.false11.if.then.i.i_crit_edge, %lor.lhs.false6.if.then.i.i_crit_edge, %lor.lhs.false.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %30, %1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !41

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %28, %if.end27 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @codel_dump_stats(ptr nocapture noundef readonly %sch, ptr noundef %d) #2 align 64 {
entry:
  %st = alloca %struct.tc_codel_xstats, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %st) #7
  %stats = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 10
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stats, align 4
  %2 = ptrtoint ptr %st to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %st, align 4
  %count = getelementptr inbounds %struct.tc_codel_xstats, ptr %st, i32 0, i32 1
  %vars = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %3 = ptrtoint ptr %vars to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vars, align 4
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %count, align 4
  %lastcount = getelementptr inbounds %struct.tc_codel_xstats, ptr %st, i32 0, i32 2
  %lastcount4 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %6 = ptrtoint ptr %lastcount4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lastcount4, align 4
  %8 = ptrtoint ptr %lastcount to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %lastcount, align 4
  %ldelay = getelementptr inbounds %struct.tc_codel_xstats, ptr %st, i32 0, i32 3
  %ldelay6 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %9 = ptrtoint ptr %ldelay6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ldelay6, align 4
  %conv.i = zext i32 %10 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 10
  %11 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i, i32 0) #10, !srcloc !51
  %asmresult.i.i = extractvalue { i64, i32 } %11, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %11, 1
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #10, !srcloc !52
  %asmresult10.i.i = extractvalue { i64, i32 } %12, 0
  %div161263.i = lshr i64 %asmresult10.i.i, 9
  %conv183.i = trunc i64 %div161263.i to i32
  %13 = ptrtoint ptr %ldelay to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv183.i, ptr %ldelay, align 4
  %drop_next = getelementptr inbounds %struct.tc_codel_xstats, ptr %st, i32 0, i32 4
  %14 = ptrtoint ptr %drop_next to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %drop_next, align 4
  %drop_overlimit = getelementptr inbounds %struct.tc_codel_xstats, ptr %st, i32 0, i32 5
  %drop_overlimit8 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %15 = ptrtoint ptr %drop_overlimit8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %drop_overlimit8, align 4
  %17 = ptrtoint ptr %drop_overlimit to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %drop_overlimit, align 4
  %ecn_mark = getelementptr inbounds %struct.tc_codel_xstats, ptr %st, i32 0, i32 6
  %ecn_mark10 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  %18 = ptrtoint ptr %ecn_mark10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ecn_mark10, align 4
  %20 = ptrtoint ptr %ecn_mark to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ecn_mark, align 4
  %dropping = getelementptr inbounds %struct.tc_codel_xstats, ptr %st, i32 0, i32 7
  %dropping12 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %21 = ptrtoint ptr %dropping12 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dropping12, align 4, !range !43
  %23 = zext i8 %22 to i32
  %24 = ptrtoint ptr %dropping to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %dropping, align 4
  %ce_mark = getelementptr inbounds %struct.tc_codel_xstats, ptr %st, i32 0, i32 8
  %ce_mark14 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 14
  %25 = ptrtoint ptr %ce_mark14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ce_mark14, align 4
  %27 = ptrtoint ptr %ce_mark to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %ce_mark, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool17.not = icmp eq i8 %22, 0
  br i1 %tobool17.not, label %entry.if.end29_crit_edge, label %if.then

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then:                                          ; preds = %entry
  %drop_next19 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 8
  %28 = ptrtoint ptr %drop_next19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %drop_next19, align 4
  %call.i.i = tail call i64 @ktime_get() #7
  %shr.i = lshr i64 %call.i.i, 10
  %conv.i42 = trunc i64 %shr.i to i32
  %sub = sub i32 %29, %conv.i42
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i43 = zext i32 %sub to i64
  %shl.i44 = shl nuw nsw i64 %conv.i43, 10
  %30 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i44, i32 0) #10, !srcloc !51
  %asmresult.i.i45 = extractvalue { i64, i32 } %30, 0
  %asmresult4.i.i46 = extractvalue { i64, i32 } %30, 1
  %31 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i44, i64 %asmresult.i.i45, i32 %asmresult4.i.i46) #10, !srcloc !52
  %asmresult10.i.i47 = extractvalue { i64, i32 } %31, 0
  %div161263.i48 = lshr i64 %asmresult10.i.i47, 9
  %conv183.i49 = trunc i64 %div161263.i48 to i32
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %sub25 = sub i32 0, %sub
  %conv.i50 = zext i32 %sub25 to i64
  %shl.i51 = shl nuw nsw i64 %conv.i50, 10
  %32 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i51, i32 0) #10, !srcloc !51
  %asmresult.i.i52 = extractvalue { i64, i32 } %32, 0
  %asmresult4.i.i53 = extractvalue { i64, i32 } %32, 1
  %33 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i51, i64 %asmresult.i.i52, i32 %asmresult4.i.i53) #10, !srcloc !52
  %asmresult10.i.i54 = extractvalue { i64, i32 } %33, 0
  %div161263.i55 = lshr i64 %asmresult10.i.i54, 9
  %conv183.i56 = trunc i64 %div161263.i55 to i32
  %sub27 = sub i32 0, %conv183.i56
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then22
  %storemerge = phi i32 [ %sub27, %if.else ], [ %conv183.i49, %if.then22 ]
  %34 = ptrtoint ptr %drop_next to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %storemerge, ptr %drop_next, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end, %entry.if.end29_crit_edge
  %call30 = call i32 @gnet_stats_copy_app(ptr noundef %d, ptr noundef nonnull %st, i32 noundef 36) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %st) #7
  ret i32 %call30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_tree_reduce_backlog(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @INET_ECN_set_ce(ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #9
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol.i.i, align 8
  %mac_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %2 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i.i = zext i16 %3 to i32
  %4 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %1, label %entry.skb_protocol.exit_crit_edge [
    i16 -30552, label %entry.if.then.i.i.i_crit_edge
    i16 -32512, label %entry.if.then.i.i.i_crit_edge42
  ]

entry.if.then.i.i.i_crit_edge42:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

entry.skb_protocol.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_protocol.exit

if.then.i.i.i:                                    ; preds = %entry.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge42
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i.i.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %3)
  %cmp.i.i.i = icmp ult i16 %3, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !41

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 598, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %5 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #7
  %6 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !44
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %5, align 2, !annotation !44
  %8 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i.i.i.i, align 4
  %10 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %12 = add i32 %vlan_depth.1.i.i.i, %11
  %sub.i1.i.i.i.i = sub i32 %9, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !40

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %14, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !41
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %15 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !41
  br i1 %15, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !41

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #7
  br label %return

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #7
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %17, label %do.cond42.i.i.i.skb_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge43
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge43: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.skb_protocol.exit_crit_edge:      ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_protocol.exit

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge43
  %add.i.i.i = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

skb_protocol.exit:                                ; preds = %do.cond42.i.i.i.skb_protocol.exit_crit_edge, %entry.skb_protocol.exit_crit_edge
  %retval.2.i.i.i = phi i16 [ %1, %entry.skb_protocol.exit_crit_edge ], [ %17, %do.cond42.i.i.i.skb_protocol.exit_crit_edge ]
  %19 = zext i16 %retval.2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %retval.2.i.i.i, label %skb_protocol.exit.return_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb6
  ]

skb_protocol.exit.return_crit_edge:               ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %skb_protocol.exit
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %20 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %22 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %23 to i32
  %add.ptr.i = getelementptr i8, ptr %21, i32 %conv.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 20
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i, align 8
  %cmp.not = icmp ugt ptr %add.ptr, %25
  br i1 %cmp.not, label %sw.bb.return_crit_edge, label %if.then

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %sw.bb
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 1
  %26 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tos.i, align 1
  %28 = add i8 %27, 1
  %29 = and i8 %28, 3
  %30 = and i8 %28, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool2.not.i = icmp eq i8 %29, 0
  %lnot.ext.i = zext i1 %tobool2.not.i to i32
  br label %return

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %conv4.i = zext i8 %29 to i16
  %add5.i = add nuw nsw i16 %conv4.i, -5
  %check.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 7
  %31 = ptrtoint ptr %check.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %check.i, align 2
  %add.i.i = add i16 %32, %add5.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i, i16 %add5.i)
  %cmp.i.i = icmp ult i16 %add.i.i, %add5.i
  %conv6.i.i = zext i1 %cmp.i.i to i16
  %add7.i.i = add i16 %add.i.i, %conv6.i.i
  %33 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %add7.i.i, ptr %check.i, align 2
  %34 = or i8 %27, 3
  %35 = ptrtoint ptr %tos.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %tos.i, align 1
  br label %return

sw.bb6:                                           ; preds = %skb_protocol.exit
  %head.i23 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %36 = ptrtoint ptr %head.i23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i23, align 8
  %network_header.i24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %38 = ptrtoint ptr %network_header.i24 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %network_header.i24, align 4
  %conv.i25 = zext i16 %39 to i32
  %add.ptr.i26 = getelementptr i8, ptr %37, i32 %conv.i25
  %add.ptr8 = getelementptr i8, ptr %add.ptr.i26, i32 40
  %tail.i27 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %40 = ptrtoint ptr %tail.i27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i27, align 8
  %cmp10.not = icmp ugt ptr %add.ptr8, %41
  br i1 %cmp10.not, label %sw.bb6.return_crit_edge, label %if.then12

sw.bb6.return_crit_edge:                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then12:                                        ; preds = %sw.bb6
  %42 = ptrtoint ptr %add.ptr.i26 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr.i26, align 2
  %44 = and i16 %43, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp.i14.not.i = icmp eq i16 %44, 0
  br i1 %cmp.i14.not.i, label %if.then12.return_crit_edge, label %if.end.i32

if.then12.return_crit_edge:                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i32:                                       ; preds = %if.then12
  %45 = ptrtoint ptr %add.ptr.i26 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i26, align 4
  %or.i = or i32 %46, 3145728
  store i32 %or.i, ptr %add.ptr.i26, align 4
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %47 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %48 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %48)
  %cmp.i = icmp eq i16 %48, 1024
  br i1 %cmp.i, label %if.then3.i, label %if.end.i32.return_crit_edge

if.end.i32.return_crit_edge:                      ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then3.i:                                       ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #9
  %49 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  %neg.i.i = xor i32 %46, -1
  %add.i.i.i33 = add i32 %51, %neg.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i33, i32 %neg.i.i)
  %cmp.i.i.i34 = icmp ult i32 %add.i.i.i33, %neg.i.i
  %conv.i.i.i35 = zext i1 %cmp.i.i.i34 to i32
  %add1.i.i.i = add i32 %add.i.i.i33, %or.i
  %add.i.i36 = add i32 %add1.i.i.i, %conv.i.i.i35
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i36, i32 %or.i)
  %cmp.i.i37 = icmp ult i32 %add.i.i36, %or.i
  %conv.i.i38 = zext i1 %cmp.i.i37 to i32
  %add1.i.i = add i32 %add.i.i36, %conv.i.i38
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add1.i.i, ptr %49, align 8
  br label %return

return:                                           ; preds = %if.then3.i, %if.end.i32.return_crit_edge, %if.then12.return_crit_edge, %sw.bb6.return_crit_edge, %if.end.i, %if.then.i, %sw.bb.return_crit_edge, %skb_protocol.exit.return_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i
  %retval.0 = phi i32 [ 0, %sw.bb6.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ 0, %skb_protocol.exit.return_crit_edge ], [ 1, %if.end.i ], [ %lnot.ext.i, %if.then.i ], [ 0, %if.then12.return_crit_edge ], [ 1, %if.then3.i ], [ 1, %if.end.i32.return_crit_edge ], [ 0, %do.end.i.i.i ], [ 0, %cleanup.thread.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_kfree_skbs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_app(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !22, !23, !24, !26, !28}
!llvm.named.register.sp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_sch_codel__497_304_codel_module_init6, !1, !"__initcall__kmod_sch_codel__497_304_codel_module_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_codel.c", i32 304, i32 1}
!2 = !{ptr @__exitcall_codel_module_exit, !3, !"__exitcall_codel_module_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_codel.c", i32 305, i32 1}
!4 = !{ptr @__UNIQUE_ID_description498, !5, !"__UNIQUE_ID_description498", i1 false, i1 false}
!5 = !{!"../net/sched/sch_codel.c", i32 307, i32 1}
!6 = !{ptr @__UNIQUE_ID_author499, !7, !"__UNIQUE_ID_author499", i1 false, i1 false}
!7 = !{!"../net/sched/sch_codel.c", i32 308, i32 1}
!8 = !{ptr @__UNIQUE_ID_author500, !9, !"__UNIQUE_ID_author500", i1 false, i1 false}
!9 = !{!"../net/sched/sch_codel.c", i32 309, i32 1}
!10 = !{ptr @__UNIQUE_ID_file501, !11, !"__UNIQUE_ID_file501", i1 false, i1 false}
!11 = !{!"../net/sched/sch_codel.c", i32 310, i32 1}
!12 = !{ptr @__UNIQUE_ID_license502, !11, !"__UNIQUE_ID_license502", i1 false, i1 false}
!13 = !{ptr @codel_qdisc_ops, !14, !"codel_qdisc_ops", i1 false, i1 false}
!14 = !{!"../net/sched/sch_codel.c", i32 279, i32 25}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/net/sch_generic.h", i32 1165, i32 2}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @codel_policy, !25, !"codel_policy", i1 false, i1 false}
!25 = !{!"../net/sched/sch_codel.c", i32 125, i32 32}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/net/netlink.h", i32 991, i32 3}
!30 = !{!"sp"}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 845062}
!43 = !{i8 0, i8 2}
!44 = !{!"auto-init"}
!45 = !{i64 2149870932}
!46 = !{i64 2149875864}
!47 = !{i64 2149897576}
!48 = !{i64 2149902468}
!49 = !{i64 2149978925}
!50 = !{i64 2149979250}
!51 = !{i64 707654, i64 707681, i64 707703, i64 707731}
!52 = !{i64 708062, i64 708089, i64 708122, i64 708143, i64 708170, i64 708196}
