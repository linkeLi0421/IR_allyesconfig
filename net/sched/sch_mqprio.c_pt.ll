; ModuleID = '/llk/IR_all_yes/net/sched/sch_mqprio.c_pt.bc'
source_filename = "../net/sched/sch_mqprio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Qdisc_class_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.nla_policy = type { i8, i8, i16, %union.anon.22 }
%union.anon.22 = type { i32 }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mqprio_sched = type { ptr, i16, i16, i32, i32, [16 x i64], [16 x i64] }
%struct.nlattr = type { i16, i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
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
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.qdisc_walker = type { i32, i32, i32, ptr }

@mqprio_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr @mqprio_class_ops, [16 x i8] c"mqprio\00\00\00\00\00\00\00\00\00\00", i32 272, i32 0, ptr null, ptr null, ptr null, ptr @mqprio_init, ptr null, ptr @mqprio_destroy, ptr null, ptr @mqprio_attach, ptr null, ptr @mq_change_real_num_tx, ptr @mqprio_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_mqprio__368_622_mqprio_module_init6 = internal global ptr @mqprio_module_init, section ".initcall6.init", align 4
@__exitcall_mqprio_module_exit = internal global ptr @mqprio_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file369 = internal constant [37 x i8] c"sch_mqprio.file=net/sched/sch_mqprio\00", section ".modinfo", align 1
@__UNIQUE_ID_license370 = internal constant [23 x i8] c"sch_mqprio.license=GPL\00", section ".modinfo", align 1
@mqprio_class_ops = internal constant { %struct.Qdisc_class_ops, [40 x i8] } { %struct.Qdisc_class_ops { i32 0, ptr @mqprio_select_queue, ptr @mqprio_graft, ptr @mqprio_leaf, ptr null, ptr @mqprio_find, ptr null, ptr null, ptr @mqprio_walk, ptr null, ptr null, ptr null, ptr @mqprio_dump_class, ptr @mqprio_dump_class_stats }, [40 x i8] zeroinitializer }, align 32
@mqprio_dump_class_stats.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/sched/sch_mqprio.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@mqprio_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 2, %union.anon.22 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 2, %union.anon.22 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.22 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.22 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@default_qdisc_ops = external dso_local local_unnamed_addr global ptr, align 4
@pfifo_fast_ops = external dso_local global %struct.Qdisc_ops, align 4
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@___asan_gen_.3 = private unnamed_addr constant [17 x i8] c"mqprio_class_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 590, i32 37 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 518, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"mqprio_policy\00", align 1
@___asan_gen_.13 = private constant [26 x i8] c"../net/sched/sch_mqprio.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 112, i32 32 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 991, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_file369, ptr @__UNIQUE_ID_license370, ptr @__exitcall_mqprio_module_exit, ptr @__initcall__kmod_sch_mqprio__368_622_mqprio_module_init6, ptr @mqprio_module_exit, ptr @mqprio_class_ops, ptr @.str, ptr @.str.1, ptr @mqprio_policy, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mqprio_class_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mqprio_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mqprio_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @mqprio_qdisc_ops) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mqprio_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @mqprio_qdisc_ops) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mqprio_init(ptr nocapture noundef %sch, ptr noundef %opt, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [5 x ptr], align 4
  %mqprio = alloca %struct.tc_mqprio_qopt_offload, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tb) #8
  %4 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 1
  %5 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 2
  %6 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 3
  %7 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 4
  %parent = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %8 = call ptr @memset(ptr %tb, i32 255, i32 20)
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %parent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.not = icmp eq i32 %10, -1
  br i1 %cmp.not, label %if.end, label %entry.cleanup246_crit_edge

entry.cleanup246_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

if.end:                                           ; preds = %entry
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %11 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp ugt i32 %12, 1
  br i1 %cmp.i, label %if.end7, label %if.end.cleanup246_crit_edge

if.end.cleanup246_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65503, i32 %12)
  %cmp8 = icmp ugt i32 %12, 65503
  br i1 %cmp8, label %if.end7.cleanup246_crit_edge, label %if.end10

if.end7.cleanup246_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

if.end10:                                         ; preds = %if.end7
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %if.end10.cleanup246_crit_edge, label %lor.lhs.false

if.end10.cleanup246_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

lor.lhs.false:                                    ; preds = %if.end10
  %13 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %opt, align 2
  %conv.i = zext i16 %14 to i32
  %sub.i = add nsw i32 %conv.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 82, i32 %sub.i)
  %cmp12 = icmp ult i32 %sub.i, 82
  br i1 %cmp12, label %lor.lhs.false.cleanup246_crit_edge, label %if.end14

lor.lhs.false.cleanup246_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

if.end14:                                         ; preds = %lor.lhs.false
  %add.ptr.i = getelementptr i8, ptr %opt, i32 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %16)
  %cmp.i351 = icmp ugt i8 %16, 16
  br i1 %cmp.i351, label %if.end14.cleanup246_crit_edge, label %for.body.preheader.i

if.end14.cleanup246_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

for.body.preheader.i:                             ; preds = %if.end14
  %arrayidx.i = getelementptr i8, ptr %opt, i32 5
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %16)
  %cmp7.not.i = icmp ult i8 %18, %16
  br i1 %cmp7.not.i, label %for.cond.i, label %for.body.preheader.i.cleanup246_crit_edge

for.body.preheader.i.cleanup246_crit_edge:        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

for.cond.i:                                       ; preds = %for.body.preheader.i
  %arrayidx.1.i = getelementptr i8, ptr %opt, i32 6
  %19 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %16)
  %cmp7.not.1.i = icmp ult i8 %20, %16
  br i1 %cmp7.not.1.i, label %for.cond.1.i, label %for.cond.i.cleanup246_crit_edge

for.cond.i.cleanup246_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr i8, ptr %opt, i32 7
  %21 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %16)
  %cmp7.not.2.i = icmp ult i8 %22, %16
  br i1 %cmp7.not.2.i, label %for.cond.2.i, label %for.cond.1.i.cleanup246_crit_edge

for.cond.1.i.cleanup246_crit_edge:                ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr i8, ptr %opt, i32 8
  %23 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %16)
  %cmp7.not.3.i = icmp ult i8 %24, %16
  br i1 %cmp7.not.3.i, label %for.cond.3.i, label %for.cond.2.i.cleanup246_crit_edge

for.cond.2.i.cleanup246_crit_edge:                ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i = getelementptr i8, ptr %opt, i32 9
  %25 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %16)
  %cmp7.not.4.i = icmp ult i8 %26, %16
  br i1 %cmp7.not.4.i, label %for.cond.4.i, label %for.cond.3.i.cleanup246_crit_edge

for.cond.3.i.cleanup246_crit_edge:                ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx.5.i = getelementptr i8, ptr %opt, i32 10
  %27 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %16)
  %cmp7.not.5.i = icmp ult i8 %28, %16
  br i1 %cmp7.not.5.i, label %for.cond.5.i, label %for.cond.4.i.cleanup246_crit_edge

for.cond.4.i.cleanup246_crit_edge:                ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %arrayidx.6.i = getelementptr i8, ptr %opt, i32 11
  %29 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %16)
  %cmp7.not.6.i = icmp ult i8 %30, %16
  br i1 %cmp7.not.6.i, label %for.cond.6.i, label %for.cond.5.i.cleanup246_crit_edge

for.cond.5.i.cleanup246_crit_edge:                ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %arrayidx.7.i = getelementptr i8, ptr %opt, i32 12
  %31 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.7.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %16)
  %cmp7.not.7.i = icmp ult i8 %32, %16
  br i1 %cmp7.not.7.i, label %for.cond.7.i, label %for.cond.6.i.cleanup246_crit_edge

for.cond.6.i.cleanup246_crit_edge:                ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %arrayidx.8.i = getelementptr i8, ptr %opt, i32 13
  %33 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.8.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %16)
  %cmp7.not.8.i = icmp ult i8 %34, %16
  br i1 %cmp7.not.8.i, label %for.cond.8.i, label %for.cond.7.i.cleanup246_crit_edge

for.cond.7.i.cleanup246_crit_edge:                ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %arrayidx.9.i = getelementptr i8, ptr %opt, i32 14
  %35 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.9.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %16)
  %cmp7.not.9.i = icmp ult i8 %36, %16
  br i1 %cmp7.not.9.i, label %for.cond.9.i, label %for.cond.8.i.cleanup246_crit_edge

for.cond.8.i.cleanup246_crit_edge:                ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

for.cond.9.i:                                     ; preds = %for.cond.8.i
  %arrayidx.10.i = getelementptr i8, ptr %opt, i32 15
  %37 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.10.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %16)
  %cmp7.not.10.i = icmp ult i8 %38, %16
  br i1 %cmp7.not.10.i, label %for.cond.10.i, label %for.cond.9.i.cleanup246_crit_edge

for.cond.9.i.cleanup246_crit_edge:                ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

for.cond.10.i:                                    ; preds = %for.cond.9.i
  %arrayidx.11.i = getelementptr i8, ptr %opt, i32 16
  %39 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.11.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %16)
  %cmp7.not.11.i = icmp ult i8 %40, %16
  br i1 %cmp7.not.11.i, label %for.cond.11.i, label %for.cond.10.i.cleanup246_crit_edge

for.cond.10.i.cleanup246_crit_edge:               ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

for.cond.11.i:                                    ; preds = %for.cond.10.i
  %arrayidx.12.i = getelementptr i8, ptr %opt, i32 17
  %41 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.12.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %16)
  %cmp7.not.12.i = icmp ult i8 %42, %16
  br i1 %cmp7.not.12.i, label %for.cond.12.i, label %for.cond.11.i.cleanup246_crit_edge

for.cond.11.i.cleanup246_crit_edge:               ; preds = %for.cond.11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

for.cond.12.i:                                    ; preds = %for.cond.11.i
  %arrayidx.13.i = getelementptr i8, ptr %opt, i32 18
  %43 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.13.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %16)
  %cmp7.not.13.i = icmp ult i8 %44, %16
  br i1 %cmp7.not.13.i, label %for.cond.13.i, label %for.cond.12.i.cleanup246_crit_edge

for.cond.12.i.cleanup246_crit_edge:               ; preds = %for.cond.12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

for.cond.13.i:                                    ; preds = %for.cond.12.i
  %arrayidx.14.i = getelementptr i8, ptr %opt, i32 19
  %45 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.14.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %16)
  %cmp7.not.14.i = icmp ult i8 %46, %16
  br i1 %cmp7.not.14.i, label %for.cond.14.i, label %for.cond.13.i.cleanup246_crit_edge

for.cond.13.i.cleanup246_crit_edge:               ; preds = %for.cond.13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

for.cond.14.i:                                    ; preds = %for.cond.13.i
  %arrayidx.15.i = getelementptr i8, ptr %opt, i32 20
  %47 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.15.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %16)
  %cmp7.not.15.i = icmp ult i8 %48, %16
  br i1 %cmp7.not.15.i, label %for.cond.15.i, label %for.cond.14.i.cleanup246_crit_edge

for.cond.14.i.cleanup246_crit_edge:               ; preds = %for.cond.14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

for.cond.15.i:                                    ; preds = %for.cond.14.i
  %hw.i = getelementptr i8, ptr %opt, i32 21
  %49 = ptrtoint ptr %hw.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %hw.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp12.i = icmp ugt i8 %50, 1
  br i1 %cmp12.i, label %if.end16.thread.i, label %if.end16.i

if.end16.thread.i:                                ; preds = %for.cond.15.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %hw.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %hw.i, align 1
  br label %if.then18.i

if.end16.i:                                       ; preds = %for.cond.15.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i, label %for.cond21.preheader.i, label %if.end16.i.if.then18.i_crit_edge

if.end16.i.if.then18.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18.i

for.cond21.preheader.i:                           ; preds = %if.end16.i
  %conv23.i = zext i8 %16 to i32
  %real_num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 105
  %52 = ptrtoint ptr %real_num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %real_num_tx_queues.i, align 8
  br label %for.body26.i

if.then18.i:                                      ; preds = %if.end16.i.if.then18.i_crit_edge, %if.end16.thread.i
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %54 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_setup_tc.i = getelementptr inbounds %struct.net_device_ops, ptr %55, i32 0, i32 42
  %56 = ptrtoint ptr %ndo_setup_tc.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ndo_setup_tc.i, align 4
  %tobool19.not.i = icmp eq ptr %57, null
  br i1 %tobool19.not.i, label %if.then18.i.cleanup246_crit_edge, label %if.then18.i.if.end19_crit_edge

if.then18.i.if.end19_crit_edge:                   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then18.i.cleanup246_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

for.body26.i:                                     ; preds = %for.inc62.i.for.body26.i_crit_edge, %for.cond21.preheader.i
  %i.1100.i = phi i32 [ 0, %for.cond21.preheader.i ], [ %inc63.i, %for.inc62.i.for.body26.i_crit_edge ]
  %arrayidx27.i = getelementptr %struct.tc_mqprio_qopt, ptr %add.ptr.i, i32 0, i32 4, i32 %i.1100.i
  %58 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx27.i, align 2
  %conv28.i = zext i16 %59 to i32
  %arrayidx29.i = getelementptr %struct.tc_mqprio_qopt, ptr %add.ptr.i, i32 0, i32 3, i32 %i.1100.i
  %60 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx29.i, align 2
  %conv30.i = zext i16 %61 to i32
  %add.i = add nuw nsw i32 %conv30.i, %conv28.i
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %conv28.i)
  %cmp34.not.i = icmp ule i32 %53, %conv28.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool38.not.i = icmp eq i16 %61, 0
  %or.cond.i = select i1 %cmp34.not.i, i1 true, i1 %tobool38.not.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %53)
  %cmp41.i = icmp ugt i32 %add.i, %53
  %or.cond94.i = select i1 %or.cond.i, i1 true, i1 %cmp41.i
  br i1 %or.cond94.i, label %for.body26.i.cleanup246_crit_edge, label %for.body26.i.for.cond46.i_crit_edge

for.body26.i.for.cond46.i_crit_edge:              ; preds = %for.body26.i
  br label %for.cond46.i

for.body26.i.cleanup246_crit_edge:                ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

for.cond46.i:                                     ; preds = %for.body51.i.for.cond46.i_crit_edge, %for.body26.i.for.cond46.i_crit_edge
  %j.0.in.i = phi i32 [ %j.0.i, %for.body51.i.for.cond46.i_crit_edge ], [ %i.1100.i, %for.body26.i.for.cond46.i_crit_edge ]
  %j.0.i = add nuw nsw i32 %j.0.in.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.i, i32 %conv23.i)
  %cmp49.i = icmp ult i32 %j.0.i, %conv23.i
  br i1 %cmp49.i, label %for.body51.i, label %for.inc62.i

for.body51.i:                                     ; preds = %for.cond46.i
  %arrayidx53.i = getelementptr %struct.tc_mqprio_qopt, ptr %add.ptr.i, i32 0, i32 4, i32 %j.0.i
  %62 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx53.i, align 2
  %conv54.i = zext i16 %63 to i32
  %cmp55.i = icmp ugt i32 %add.i, %conv54.i
  br i1 %cmp55.i, label %for.body51.i.cleanup246_crit_edge, label %for.body51.i.for.cond46.i_crit_edge

for.body51.i.for.cond46.i_crit_edge:              ; preds = %for.body51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond46.i

for.body51.i.cleanup246_crit_edge:                ; preds = %for.body51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

for.inc62.i:                                      ; preds = %for.cond46.i
  %inc63.i = add nuw nsw i32 %i.1100.i, 1
  %exitcond.not.i = icmp eq i32 %inc63.i, %conv23.i
  br i1 %exitcond.not.i, label %for.inc62.i.if.end19_crit_edge, label %for.inc62.i.for.body26.i_crit_edge

for.inc62.i.for.body26.i_crit_edge:               ; preds = %for.inc62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body26.i

for.inc62.i.if.end19_crit_edge:                   ; preds = %for.inc62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end19:                                         ; preds = %for.inc62.i.if.end19_crit_edge, %if.then18.i.if.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 88, i16 %14)
  %cmp21 = icmp ugt i16 %14, 88
  br i1 %cmp21, label %if.then22, label %if.end19.if.end110_crit_edge

if.end19.if.end110_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.then22:                                        ; preds = %if.end19
  %call23 = call fastcc i32 @parse_attr(ptr noundef nonnull %tb, ptr noundef nonnull %opt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then22.cleanup246_crit_edge, label %if.end26

if.then22.cleanup246_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

if.end26:                                         ; preds = %if.then22
  %64 = ptrtoint ptr %hw.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %hw.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool27.not = icmp eq i8 %65, 0
  br i1 %tobool27.not, label %if.end26.cleanup246_crit_edge, label %if.end29

if.end26.cleanup246_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

if.end29:                                         ; preds = %if.end26
  %66 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %4, align 4
  %tobool30.not = icmp eq ptr %67, null
  br i1 %tobool30.not, label %if.end29.if.end34_crit_edge, label %if.then31

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags, align 4
  %or = or i32 %69, 1
  store i32 %or, ptr %flags, align 4
  %add.ptr.i354 = getelementptr i8, ptr %67, i32 4
  %70 = ptrtoint ptr %add.ptr.i354 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %add.ptr.i354, align 2
  %mode = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %72 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %mode, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end29.if.end34_crit_edge
  %73 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %5, align 4
  %tobool36.not = icmp eq ptr %74, null
  br i1 %tobool36.not, label %if.end34.if.end42_crit_edge, label %if.then37

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %flags38 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %75 = ptrtoint ptr %flags38 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags38, align 4
  %or39 = or i32 %76, 2
  store i32 %or39, ptr %flags38, align 4
  %add.ptr.i355 = getelementptr i8, ptr %74, i32 4
  %77 = ptrtoint ptr %add.ptr.i355 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %add.ptr.i355, align 2
  %shaper = getelementptr inbounds %struct.mqprio_sched, ptr %privdata.i, i32 0, i32 2
  %79 = ptrtoint ptr %shaper to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %shaper, align 2
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %if.end34.if.end42_crit_edge
  %80 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %6, align 4
  %tobool44.not = icmp eq ptr %81, null
  br i1 %tobool44.not, label %if.end42.if.end72_crit_edge, label %if.then45

if.end42.if.end72_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then45:                                        ; preds = %if.end42
  %shaper46 = getelementptr inbounds %struct.mqprio_sched, ptr %privdata.i, i32 0, i32 2
  %82 = ptrtoint ptr %shaper46 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %shaper46, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %83)
  %cmp47.not = icmp eq i16 %83, 1
  br i1 %cmp47.not, label %if.end50, label %if.then45.cleanup246_crit_edge

if.then45.cleanup246_crit_edge:                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

if.end50:                                         ; preds = %if.then45
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %81, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %85)
  %cmp.i359408 = icmp ugt i16 %85, 7
  br i1 %cmp.i359408, label %land.lhs.true.i.preheader, label %if.end50.for.end_crit_edge

if.end50.for.end_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true.i.preheader:                        ; preds = %if.end50
  %conv.i357 = zext i16 %85 to i32
  %sub.i358 = add nsw i32 %conv.i357, -4
  %add.ptr.i356 = getelementptr i8, ptr %81, i32 4
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end66.land.lhs.true.i_crit_edge, %land.lhs.true.i.preheader
  %attr.0411 = phi ptr [ %add.ptr.i365, %if.end66.land.lhs.true.i_crit_edge ], [ %add.ptr.i356, %land.lhs.true.i.preheader ]
  %i.0410 = phi i32 [ %inc, %if.end66.land.lhs.true.i_crit_edge ], [ 0, %land.lhs.true.i.preheader ]
  %rem.0409 = phi i32 [ %sub1.i, %if.end66.land.lhs.true.i_crit_edge ], [ %sub.i358, %land.lhs.true.i.preheader ]
  %86 = ptrtoint ptr %attr.0411 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %attr.0411, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %87)
  %cmp1.i = icmp ult i16 %87, 4
  %conv.i360 = zext i16 %87 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0409, i32 %conv.i360)
  %cmp5.i.not = icmp ult i32 %rem.0409, %conv.i360
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond, label %land.lhs.true.i.for.end_crit_edge, label %for.body

land.lhs.true.i.for.end_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %land.lhs.true.i
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %attr.0411, i32 0, i32 1
  %88 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %nla_type.i, align 2
  %90 = and i16 %89, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %90)
  %cmp58.not = icmp eq i16 %90, 3
  br i1 %cmp58.not, label %if.end61, label %for.body.cleanup246_crit_edge

for.body.cleanup246_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

if.end61:                                         ; preds = %for.body
  %91 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %add.ptr.i, align 2
  %conv62 = zext i8 %92 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0410, i32 %conv62)
  %cmp63.not = icmp ult i32 %i.0410, %conv62
  br i1 %cmp63.not, label %if.end66, label %if.end61.for.end_crit_edge

if.end61.for.end_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end66:                                         ; preds = %if.end61
  %add.ptr.i361 = getelementptr i8, ptr %attr.0411, i32 4
  %93 = ptrtoint ptr %add.ptr.i361 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %add.ptr.i361, align 8
  %arrayidx68 = getelementptr %struct.mqprio_sched, ptr %privdata.i, i32 0, i32 5, i32 %i.0410
  %95 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %94, ptr %arrayidx68, align 8
  %inc = add nuw nsw i32 %i.0410, 1
  %96 = ptrtoint ptr %attr.0411 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %attr.0411, align 2
  %conv.i362 = zext i16 %97 to i32
  %sub.i363 = add nuw nsw i32 %conv.i362, 3
  %and.i364 = and i32 %sub.i363, 131068
  %sub1.i = sub nsw i32 %rem.0409, %and.i364
  %add.ptr.i365 = getelementptr i8, ptr %attr.0411, i32 %and.i364
  %cmp.i359 = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i359, label %if.end66.land.lhs.true.i_crit_edge, label %if.end66.for.end_crit_edge

if.end66.for.end_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end66.land.lhs.true.i_crit_edge:               ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

for.end:                                          ; preds = %if.end66.for.end_crit_edge, %if.end61.for.end_crit_edge, %land.lhs.true.i.for.end_crit_edge, %if.end50.for.end_crit_edge
  %flags70 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %98 = ptrtoint ptr %flags70 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags70, align 4
  %or71 = or i32 %99, 4
  store i32 %or71, ptr %flags70, align 4
  br label %if.end72

if.end72:                                         ; preds = %for.end, %if.end42.if.end72_crit_edge
  %100 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %7, align 4
  %tobool74.not = icmp eq ptr %101, null
  br i1 %tobool74.not, label %if.end72.if.end110_crit_edge, label %if.then75

if.end72.if.end110_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.then75:                                        ; preds = %if.end72
  %shaper76 = getelementptr inbounds %struct.mqprio_sched, ptr %privdata.i, i32 0, i32 2
  %102 = ptrtoint ptr %shaper76 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %shaper76, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %103)
  %cmp78.not = icmp eq i16 %103, 1
  br i1 %cmp78.not, label %if.end81, label %if.then75.cleanup246_crit_edge

if.then75.cleanup246_crit_edge:                   ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

if.end81:                                         ; preds = %if.then75
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %101, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %105)
  %cmp.i369412 = icmp ugt i16 %105, 7
  br i1 %cmp.i369412, label %land.lhs.true.i371.preheader, label %if.end81.for.end106_crit_edge

if.end81.for.end106_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end106

land.lhs.true.i371.preheader:                     ; preds = %if.end81
  %conv.i367 = zext i16 %105 to i32
  %sub.i368 = add nsw i32 %conv.i367, -4
  %add.ptr.i366 = getelementptr i8, ptr %101, i32 4
  br label %land.lhs.true.i371

land.lhs.true.i371:                               ; preds = %if.end100.land.lhs.true.i371_crit_edge, %land.lhs.true.i371.preheader
  %attr.1415 = phi ptr [ %add.ptr.i384, %if.end100.land.lhs.true.i371_crit_edge ], [ %add.ptr.i366, %land.lhs.true.i371.preheader ]
  %i.1414 = phi i32 [ %inc103, %if.end100.land.lhs.true.i371_crit_edge ], [ 0, %land.lhs.true.i371.preheader ]
  %rem.1413 = phi i32 [ %sub1.i383, %if.end100.land.lhs.true.i371_crit_edge ], [ %sub.i368, %land.lhs.true.i371.preheader ]
  %106 = ptrtoint ptr %attr.1415 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %attr.1415, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %107)
  %cmp1.i370 = icmp ult i16 %107, 4
  %conv.i372 = zext i16 %107 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.1413, i32 %conv.i372)
  %cmp5.i373.not = icmp ult i32 %rem.1413, %conv.i372
  %or.cond403 = select i1 %cmp1.i370, i1 true, i1 %cmp5.i373.not
  br i1 %or.cond403, label %land.lhs.true.i371.for.end106_crit_edge, label %for.body89

land.lhs.true.i371.for.end106_crit_edge:          ; preds = %land.lhs.true.i371
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end106

for.body89:                                       ; preds = %land.lhs.true.i371
  %nla_type.i377 = getelementptr inbounds %struct.nlattr, ptr %attr.1415, i32 0, i32 1
  %108 = ptrtoint ptr %nla_type.i377 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %nla_type.i377, align 2
  %110 = and i16 %109, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %110)
  %cmp91.not = icmp eq i16 %110, 4
  br i1 %cmp91.not, label %if.end94, label %for.body89.cleanup246_crit_edge

for.body89.cleanup246_crit_edge:                  ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

if.end94:                                         ; preds = %for.body89
  %111 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %add.ptr.i, align 2
  %conv96 = zext i8 %112 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1414, i32 %conv96)
  %cmp97.not = icmp ult i32 %i.1414, %conv96
  br i1 %cmp97.not, label %if.end100, label %if.end94.for.end106_crit_edge

if.end94.for.end106_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end106

if.end100:                                        ; preds = %if.end94
  %add.ptr.i379 = getelementptr i8, ptr %attr.1415, i32 4
  %113 = ptrtoint ptr %add.ptr.i379 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %add.ptr.i379, align 8
  %arrayidx102 = getelementptr %struct.mqprio_sched, ptr %privdata.i, i32 0, i32 6, i32 %i.1414
  %115 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %114, ptr %arrayidx102, align 8
  %inc103 = add nuw nsw i32 %i.1414, 1
  %116 = ptrtoint ptr %attr.1415 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %attr.1415, align 2
  %conv.i380 = zext i16 %117 to i32
  %sub.i381 = add nuw nsw i32 %conv.i380, 3
  %and.i382 = and i32 %sub.i381, 131068
  %sub1.i383 = sub nsw i32 %rem.1413, %and.i382
  %add.ptr.i384 = getelementptr i8, ptr %attr.1415, i32 %and.i382
  %cmp.i369 = icmp sgt i32 %sub1.i383, 3
  br i1 %cmp.i369, label %if.end100.land.lhs.true.i371_crit_edge, label %if.end100.for.end106_crit_edge

if.end100.for.end106_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end106

if.end100.land.lhs.true.i371_crit_edge:           ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i371

for.end106:                                       ; preds = %if.end100.for.end106_crit_edge, %if.end94.for.end106_crit_edge, %land.lhs.true.i371.for.end106_crit_edge, %if.end81.for.end106_crit_edge
  %flags107 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %118 = ptrtoint ptr %flags107 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %flags107, align 4
  %or108 = or i32 %119, 8
  store i32 %or108, ptr %flags107, align 4
  br label %if.end110

if.end110:                                        ; preds = %for.end106, %if.end72.if.end110_crit_edge, %if.end19.if.end110_crit_edge
  %120 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %num_tx_queues.i, align 4
  %122 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %121, i32 4) #8
  %123 = extractvalue { i32, i1 } %122, 1
  br i1 %123, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !28

kcalloc.exit.thread:                              ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  %124 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %privdata.i, align 8
  br label %cleanup246

if.end7.i.i:                                      ; preds = %if.end110
  %125 = extractvalue { i32, i1 } %122, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %125, i32 noundef 3520) #11
  %126 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call8.i.i, ptr %privdata.i, align 8
  %tobool114.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool114.not, label %if.end7.i.i.cleanup246_crit_edge, label %for.cond117.preheader

if.end7.i.i.cleanup246_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

for.cond117.preheader:                            ; preds = %if.end7.i.i
  %127 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp119416.not = icmp eq i32 %128, 0
  br i1 %cmp119416.not, label %for.cond117.preheader.for.end138_crit_edge, label %for.body121.lr.ph

for.cond117.preheader.for.end138_crit_edge:       ; preds = %for.cond117.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end138

for.body121.lr.ph:                                ; preds = %for.cond117.preheader
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %real_num_tx_queues.i386 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 105
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  br label %for.body121

for.body121:                                      ; preds = %if.end131.for.body121_crit_edge, %for.body121.lr.ph
  %i.2417 = phi i32 [ 0, %for.body121.lr.ph ], [ %add, %if.end131.for.body121_crit_edge ]
  %129 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %_tx.i, align 128
  %arrayidx.i385 = getelementptr %struct.netdev_queue, ptr %130, i32 %i.2417
  %131 = ptrtoint ptr %real_num_tx_queues.i386 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %real_num_tx_queues.i386, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %i.2417)
  %cmp.i387 = icmp ugt i32 %132, %i.2417
  br i1 %cmp.i387, label %cond.true.i, label %for.body121.get_default_qdisc_ops.exit_crit_edge

for.body121.get_default_qdisc_ops.exit_crit_edge: ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_default_qdisc_ops.exit

cond.true.i:                                      ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @default_qdisc_ops to i32))
  %133 = load ptr, ptr @default_qdisc_ops, align 4
  br label %get_default_qdisc_ops.exit

get_default_qdisc_ops.exit:                       ; preds = %cond.true.i, %for.body121.get_default_qdisc_ops.exit_crit_edge
  %cond.i388 = phi ptr [ %133, %cond.true.i ], [ @pfifo_fast_ops, %for.body121.get_default_qdisc_ops.exit_crit_edge ]
  %134 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %handle, align 32
  %and = and i32 %135, -65536
  %add = add nuw i32 %i.2417, 1
  %and125 = and i32 %add, 65535
  %or127 = or i32 %and, %and125
  %call128 = call ptr @qdisc_create_dflt(ptr noundef %arrayidx.i385, ptr noundef %cond.i388, i32 noundef %or127, ptr noundef %extack) #8
  %tobool129.not = icmp eq ptr %call128, null
  br i1 %tobool129.not, label %get_default_qdisc_ops.exit.cleanup246_crit_edge, label %if.end131

get_default_qdisc_ops.exit.cleanup246_crit_edge:  ; preds = %get_default_qdisc_ops.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

if.end131:                                        ; preds = %get_default_qdisc_ops.exit
  %136 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %privdata.i, align 8
  %arrayidx133 = getelementptr ptr, ptr %137, i32 %i.2417
  %138 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call128, ptr %arrayidx133, align 4
  %flags134 = getelementptr inbounds %struct.Qdisc, ptr %call128, i32 0, i32 2
  %139 = ptrtoint ptr %flags134 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %flags134, align 8
  %or135 = or i32 %140, 80
  store i32 %or135, ptr %flags134, align 8
  %141 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %num_tx_queues.i, align 4
  %cmp119 = icmp ult i32 %add, %142
  br i1 %cmp119, label %if.end131.for.body121_crit_edge, label %if.end131.for.end138_crit_edge

if.end131.for.end138_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end138

if.end131.for.body121_crit_edge:                  ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body121

for.end138:                                       ; preds = %if.end131.for.end138_crit_edge, %for.cond117.preheader.for.end138_crit_edge
  %143 = ptrtoint ptr %hw.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %hw.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool140.not = icmp eq i8 %144, 0
  br i1 %tobool140.not, label %if.else, label %if.then141

if.then141:                                       ; preds = %for.end138
  call void @llvm.lifetime.start.p0(i64 352, ptr nonnull %mqprio) #8
  %145 = getelementptr inbounds i8, ptr %mqprio, i32 82
  %146 = call ptr @memset(ptr %145, i32 0, i32 270)
  %147 = call ptr @memcpy(ptr %mqprio, ptr %add.ptr.i, i32 82)
  %mode148 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %148 = ptrtoint ptr %mode148 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %mode148, align 4
  %150 = zext i16 %149 to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values)
  switch i16 %149, label %if.then141.cleanup.thread_crit_edge [
    i16 0, label %sw.bb
    i16 1, label %sw.bb156
  ]

if.then141.cleanup.thread_crit_edge:              ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

sw.bb:                                            ; preds = %if.then141
  %shaper150 = getelementptr inbounds %struct.mqprio_sched, ptr %privdata.i, i32 0, i32 2
  %151 = ptrtoint ptr %shaper150 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %shaper150, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %152)
  %cmp152.not = icmp eq i16 %152, 0
  br i1 %cmp152.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup.thread_crit_edge

sw.bb.cleanup.thread_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb156:                                         ; preds = %if.then141
  %flags157 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %153 = ptrtoint ptr %flags157 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %flags157, align 4
  %flags158 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, ptr %mqprio, i32 0, i32 3
  %155 = ptrtoint ptr %flags158 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %flags158, align 8
  %and160 = and i32 %154, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %sw.bb156.if.end165_crit_edge, label %if.then162

sw.bb156.if.end165_crit_edge:                     ; preds = %sw.bb156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end165

if.then162:                                       ; preds = %sw.bb156
  call void @__sanitizer_cov_trace_pc() #10
  %mode164 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, ptr %mqprio, i32 0, i32 1
  %156 = ptrtoint ptr %mode164 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 1, ptr %mode164, align 2
  br label %if.end165

if.end165:                                        ; preds = %if.then162, %sw.bb156.if.end165_crit_edge
  %and167 = and i32 %154, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %if.end165.if.end172_crit_edge, label %if.then169

if.end165.if.end172_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end172

if.then169:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #10
  %shaper170 = getelementptr inbounds %struct.mqprio_sched, ptr %privdata.i, i32 0, i32 2
  %157 = ptrtoint ptr %shaper170 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %shaper170, align 2
  %shaper171 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, ptr %mqprio, i32 0, i32 2
  %159 = ptrtoint ptr %shaper171 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %158, ptr %shaper171, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.then169, %if.end165.if.end172_crit_edge
  %and174 = and i32 %154, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %if.end172.if.end191_crit_edge, label %for.cond177.preheader

if.end172.if.end191_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

for.cond177.preheader:                            ; preds = %if.end172
  %160 = ptrtoint ptr %mqprio to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %mqprio, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %cmp181419.not = icmp eq i8 %161, 0
  br i1 %cmp181419.not, label %for.cond177.preheader.if.end191_crit_edge, label %for.cond177.preheader.for.body183_crit_edge

for.cond177.preheader.for.body183_crit_edge:      ; preds = %for.cond177.preheader
  br label %for.body183

for.cond177.preheader.if.end191_crit_edge:        ; preds = %for.cond177.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

for.body183:                                      ; preds = %for.body183.for.body183_crit_edge, %for.cond177.preheader.for.body183_crit_edge
  %i.3420 = phi i32 [ %inc189, %for.body183.for.body183_crit_edge ], [ 0, %for.cond177.preheader.for.body183_crit_edge ]
  %arrayidx185 = getelementptr %struct.mqprio_sched, ptr %privdata.i, i32 0, i32 5, i32 %i.3420
  %162 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %arrayidx185, align 8
  %arrayidx187 = getelementptr %struct.tc_mqprio_qopt_offload, ptr %mqprio, i32 0, i32 4, i32 %i.3420
  %164 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 %163, ptr %arrayidx187, align 8
  %inc189 = add nuw nsw i32 %i.3420, 1
  %165 = ptrtoint ptr %mqprio to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %mqprio, align 8
  %conv180 = zext i8 %166 to i32
  %cmp181 = icmp ult i32 %inc189, %conv180
  br i1 %cmp181, label %for.body183.for.body183_crit_edge, label %for.body183.if.end191_crit_edge

for.body183.if.end191_crit_edge:                  ; preds = %for.body183
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

for.body183.for.body183_crit_edge:                ; preds = %for.body183
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body183

if.end191:                                        ; preds = %for.body183.if.end191_crit_edge, %for.cond177.preheader.if.end191_crit_edge, %if.end172.if.end191_crit_edge
  %and193 = and i32 %154, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool194.not = icmp eq i32 %and193, 0
  br i1 %tobool194.not, label %if.end191.sw.epilog_crit_edge, label %for.cond196.preheader

if.end191.sw.epilog_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.cond196.preheader:                            ; preds = %if.end191
  %167 = ptrtoint ptr %mqprio to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %mqprio, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %cmp200422.not = icmp eq i8 %168, 0
  br i1 %cmp200422.not, label %for.cond196.preheader.sw.epilog_crit_edge, label %for.cond196.preheader.for.body202_crit_edge

for.cond196.preheader.for.body202_crit_edge:      ; preds = %for.cond196.preheader
  br label %for.body202

for.cond196.preheader.sw.epilog_crit_edge:        ; preds = %for.cond196.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body202:                                      ; preds = %for.body202.for.body202_crit_edge, %for.cond196.preheader.for.body202_crit_edge
  %i.4423 = phi i32 [ %inc208, %for.body202.for.body202_crit_edge ], [ 0, %for.cond196.preheader.for.body202_crit_edge ]
  %arrayidx204 = getelementptr %struct.mqprio_sched, ptr %privdata.i, i32 0, i32 6, i32 %i.4423
  %169 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %arrayidx204, align 8
  %arrayidx206 = getelementptr %struct.tc_mqprio_qopt_offload, ptr %mqprio, i32 0, i32 5, i32 %i.4423
  %171 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_store8_noabort(i32 %171)
  store i64 %170, ptr %arrayidx206, align 8
  %inc208 = add nuw nsw i32 %i.4423, 1
  %172 = ptrtoint ptr %mqprio to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %mqprio, align 8
  %conv199 = zext i8 %173 to i32
  %cmp200 = icmp ult i32 %inc208, %conv199
  br i1 %cmp200, label %for.body202.for.body202_crit_edge, label %for.body202.sw.epilog_crit_edge

for.body202.sw.epilog_crit_edge:                  ; preds = %for.body202
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body202.for.body202_crit_edge:                ; preds = %for.body202
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body202

sw.epilog:                                        ; preds = %for.body202.sw.epilog_crit_edge, %for.cond196.preheader.sw.epilog_crit_edge, %if.end191.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %174 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %netdev_ops, align 8
  %ndo_setup_tc = getelementptr inbounds %struct.net_device_ops, ptr %175, i32 0, i32 42
  %176 = ptrtoint ptr %ndo_setup_tc to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ndo_setup_tc, align 4
  %call211 = call i32 %177(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %mqprio) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %cleanup, label %sw.epilog.cleanup.thread_crit_edge

sw.epilog.cleanup.thread_crit_edge:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %sw.epilog.cleanup.thread_crit_edge, %sw.bb.cleanup.thread_crit_edge, %if.then141.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ %call211, %sw.epilog.cleanup.thread_crit_edge ], [ -22, %if.then141.cleanup.thread_crit_edge ], [ -22, %sw.bb.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 352, ptr nonnull %mqprio) #8
  br label %cleanup246

cleanup:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %hw216 = getelementptr inbounds %struct.tc_mqprio_qopt, ptr %mqprio, i32 0, i32 2
  %178 = ptrtoint ptr %hw216 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %hw216, align 1
  %conv217 = zext i8 %179 to i32
  %hw_offload = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %180 = ptrtoint ptr %hw_offload to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %conv217, ptr %hw_offload, align 8
  call void @llvm.lifetime.end.p0(i64 352, ptr nonnull %mqprio) #8
  br label %if.end233

if.else:                                          ; preds = %for.end138
  %181 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %add.ptr.i, align 2
  %call219 = call i32 @netdev_set_num_tc(ptr noundef %3, i8 noundef zeroext %182) #8
  %183 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %add.ptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %cmp223425.not = icmp eq i8 %184, 0
  br i1 %cmp223425.not, label %if.else.if.end233_crit_edge, label %if.else.for.body225_crit_edge

if.else.for.body225_crit_edge:                    ; preds = %if.else
  br label %for.body225

if.else.if.end233_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end233

for.body225:                                      ; preds = %for.body225.for.body225_crit_edge, %if.else.for.body225_crit_edge
  %i.5426 = phi i32 [ %inc231, %for.body225.for.body225_crit_edge ], [ 0, %if.else.for.body225_crit_edge ]
  %conv226 = trunc i32 %i.5426 to i8
  %arrayidx227 = getelementptr %struct.tc_mqprio_qopt, ptr %add.ptr.i, i32 0, i32 3, i32 %i.5426
  %185 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %arrayidx227, align 2
  %arrayidx228 = getelementptr %struct.tc_mqprio_qopt, ptr %add.ptr.i, i32 0, i32 4, i32 %i.5426
  %187 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %arrayidx228, align 2
  %call229 = call i32 @netdev_set_tc_queue(ptr noundef %3, i8 noundef zeroext %conv226, i16 noundef zeroext %186, i16 noundef zeroext %188) #8
  %inc231 = add nuw nsw i32 %i.5426, 1
  %189 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %add.ptr.i, align 2
  %conv222 = zext i8 %190 to i32
  %cmp223 = icmp ult i32 %inc231, %conv222
  br i1 %cmp223, label %for.body225.for.body225_crit_edge, label %for.body225.if.end233_crit_edge

for.body225.if.end233_crit_edge:                  ; preds = %for.body225
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end233

for.body225.for.body225_crit_edge:                ; preds = %for.body225
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body225

if.end233:                                        ; preds = %for.body225.if.end233_crit_edge, %if.else.if.end233_crit_edge, %cleanup
  %num_tc.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 140
  br label %for.body237

for.body237:                                      ; preds = %netdev_set_prio_tc_map.exit.for.body237_crit_edge, %if.end233
  %i.6427 = phi i32 [ 0, %if.end233 ], [ %inc242, %netdev_set_prio_tc_map.exit.for.body237_crit_edge ]
  %arrayidx239 = getelementptr %struct.tc_mqprio_qopt, ptr %add.ptr.i, i32 0, i32 1, i32 %i.6427
  %191 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx239, align 1
  %conv.i389 = zext i8 %192 to i32
  %193 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %num_tc.i, align 4
  %conv1.i = sext i16 %194 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i389, i32 %conv1.i)
  %cmp.not.i = icmp slt i32 %conv.i389, %conv1.i
  br i1 %cmp.not.i, label %if.end.i, label %for.body237.netdev_set_prio_tc_map.exit_crit_edge

for.body237.netdev_set_prio_tc_map.exit_crit_edge: ; preds = %for.body237
  call void @__sanitizer_cov_trace_pc() #10
  br label %netdev_set_prio_tc_map.exit

if.end.i:                                         ; preds = %for.body237
  call void @__sanitizer_cov_trace_pc() #10
  %and.i390 = and i8 %192, 15
  %arrayidx.i391 = getelementptr %struct.net_device, ptr %3, i32 0, i32 142, i32 %i.6427
  %195 = ptrtoint ptr %arrayidx.i391 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %and.i390, ptr %arrayidx.i391, align 1
  br label %netdev_set_prio_tc_map.exit

netdev_set_prio_tc_map.exit:                      ; preds = %if.end.i, %for.body237.netdev_set_prio_tc_map.exit_crit_edge
  %inc242 = add nuw nsw i32 %i.6427, 1
  %exitcond.not = icmp eq i32 %inc242, 16
  br i1 %exitcond.not, label %for.end243, label %netdev_set_prio_tc_map.exit.for.body237_crit_edge

netdev_set_prio_tc_map.exit.for.body237_crit_edge: ; preds = %netdev_set_prio_tc_map.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body237

for.end243:                                       ; preds = %netdev_set_prio_tc_map.exit
  call void @__sanitizer_cov_trace_pc() #10
  %flags244 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %196 = ptrtoint ptr %flags244 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %flags244, align 8
  %or245 = or i32 %197, 8
  store i32 %or245, ptr %flags244, align 8
  br label %cleanup246

cleanup246:                                       ; preds = %for.end243, %cleanup.thread, %get_default_qdisc_ops.exit.cleanup246_crit_edge, %if.end7.i.i.cleanup246_crit_edge, %kcalloc.exit.thread, %for.body89.cleanup246_crit_edge, %if.then75.cleanup246_crit_edge, %for.body.cleanup246_crit_edge, %if.then45.cleanup246_crit_edge, %if.end26.cleanup246_crit_edge, %if.then22.cleanup246_crit_edge, %for.body51.i.cleanup246_crit_edge, %for.body26.i.cleanup246_crit_edge, %if.then18.i.cleanup246_crit_edge, %for.cond.14.i.cleanup246_crit_edge, %for.cond.13.i.cleanup246_crit_edge, %for.cond.12.i.cleanup246_crit_edge, %for.cond.11.i.cleanup246_crit_edge, %for.cond.10.i.cleanup246_crit_edge, %for.cond.9.i.cleanup246_crit_edge, %for.cond.8.i.cleanup246_crit_edge, %for.cond.7.i.cleanup246_crit_edge, %for.cond.6.i.cleanup246_crit_edge, %for.cond.5.i.cleanup246_crit_edge, %for.cond.4.i.cleanup246_crit_edge, %for.cond.3.i.cleanup246_crit_edge, %for.cond.2.i.cleanup246_crit_edge, %for.cond.1.i.cleanup246_crit_edge, %for.cond.i.cleanup246_crit_edge, %for.body.preheader.i.cleanup246_crit_edge, %if.end14.cleanup246_crit_edge, %lor.lhs.false.cleanup246_crit_edge, %if.end10.cleanup246_crit_edge, %if.end7.cleanup246_crit_edge, %if.end.cleanup246_crit_edge, %entry.cleanup246_crit_edge
  %retval.1 = phi i32 [ 0, %for.end243 ], [ -95, %entry.cleanup246_crit_edge ], [ -95, %if.end.cleanup246_crit_edge ], [ -12, %if.end7.cleanup246_crit_edge ], [ -22, %lor.lhs.false.cleanup246_crit_edge ], [ -22, %if.end10.cleanup246_crit_edge ], [ %call23, %if.then22.cleanup246_crit_edge ], [ -22, %if.end26.cleanup246_crit_edge ], [ -22, %if.then45.cleanup246_crit_edge ], [ -22, %if.then75.cleanup246_crit_edge ], [ -12, %if.end7.i.i.cleanup246_crit_edge ], [ -12, %kcalloc.exit.thread ], [ %retval.0.ph, %cleanup.thread ], [ -22, %if.end14.cleanup246_crit_edge ], [ -22, %for.cond.14.i.cleanup246_crit_edge ], [ -22, %for.cond.13.i.cleanup246_crit_edge ], [ -22, %for.cond.12.i.cleanup246_crit_edge ], [ -22, %for.cond.11.i.cleanup246_crit_edge ], [ -22, %for.cond.10.i.cleanup246_crit_edge ], [ -22, %for.cond.9.i.cleanup246_crit_edge ], [ -22, %for.cond.8.i.cleanup246_crit_edge ], [ -22, %for.cond.7.i.cleanup246_crit_edge ], [ -22, %for.cond.6.i.cleanup246_crit_edge ], [ -22, %for.cond.5.i.cleanup246_crit_edge ], [ -22, %for.cond.4.i.cleanup246_crit_edge ], [ -22, %for.cond.3.i.cleanup246_crit_edge ], [ -22, %for.cond.2.i.cleanup246_crit_edge ], [ -22, %for.cond.1.i.cleanup246_crit_edge ], [ -22, %for.cond.i.cleanup246_crit_edge ], [ -22, %for.body.preheader.i.cleanup246_crit_edge ], [ -22, %if.then18.i.cleanup246_crit_edge ], [ -12, %get_default_qdisc_ops.exit.cleanup246_crit_edge ], [ -22, %for.body89.cleanup246_crit_edge ], [ -22, %for.body.cleanup246_crit_edge ], [ -22, %for.body51.i.cleanup246_crit_edge ], [ -22, %for.body26.i.cleanup246_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb) #8
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mqprio_destroy(ptr nocapture noundef readonly %sch) #2 align 64 {
entry:
  %mqprio = alloca %struct.tc_mqprio_qopt_offload, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %4 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %privdata.i, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %6 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp33.not = icmp eq i32 %7, 0
  br i1 %cmp33.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.land.rhs_crit_edge

for.cond.preheader.land.rhs_crit_edge:            ; preds = %for.cond.preheader
  br label %land.rhs

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %for.cond.preheader.land.rhs_crit_edge
  %ntx.034 = phi i32 [ %inc, %for.body.land.rhs_crit_edge ], [ 0, %for.cond.preheader.land.rhs_crit_edge ]
  %8 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %privdata.i, align 8
  %arrayidx = getelementptr ptr, ptr %9, i32 %ntx.034
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %land.rhs
  tail call void @qdisc_put(ptr noundef nonnull %11) #8
  %inc = add nuw i32 %ntx.034, 1
  %12 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.body.land.rhs_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %14 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %privdata.i, align 8
  tail call void @kfree(ptr noundef %15) #8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  %hw_offload = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %16 = ptrtoint ptr %hw_offload to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw_offload, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not = icmp eq i32 %17, 0
  br i1 %tobool7.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %18 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev_ops, align 8
  %ndo_setup_tc = getelementptr inbounds %struct.net_device_ops, ptr %19, i32 0, i32 42
  %20 = ptrtoint ptr %ndo_setup_tc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndo_setup_tc, align 4
  %tobool8.not = icmp eq ptr %21, null
  br i1 %tobool8.not, label %land.lhs.true.if.else_crit_edge, label %if.then9

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then9:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 352, ptr nonnull %mqprio) #8
  %22 = call ptr @memset(ptr %mqprio, i32 0, i32 352)
  %mode = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %23 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %24)
  %switch = icmp ult i16 %24, 2
  br i1 %switch, label %sw.bb, label %cleanup

sw.bb:                                            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev_ops, align 8
  %ndo_setup_tc11 = getelementptr inbounds %struct.net_device_ops, ptr %26, i32 0, i32 42
  %27 = ptrtoint ptr %ndo_setup_tc11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ndo_setup_tc11, align 4
  %call12 = call i32 %28(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %mqprio) #8
  call void @llvm.lifetime.end.p0(i64 352, ptr nonnull %mqprio) #8
  br label %cleanup15

cleanup:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 352, ptr nonnull %mqprio) #8
  br label %cleanup15

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %call13 = tail call i32 @netdev_set_num_tc(ptr noundef %3, i8 noundef zeroext 0) #8
  br label %cleanup15

cleanup15:                                        ; preds = %if.else, %cleanup, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mqprio_attach(ptr nocapture noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %4 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp18.not = icmp eq i32 %5, 0
  br i1 %cmp18.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %real_num_tx_queues = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 105
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ntx.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %privdata.i, align 8
  %arrayidx = getelementptr ptr, ptr %7, i32 %ntx.019
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %dev_queue = getelementptr inbounds %struct.Qdisc, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_queue, align 8
  %call2 = tail call ptr @dev_graft_qdisc(ptr noundef %11, ptr noundef %9) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @qdisc_put(ptr noundef nonnull %call2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %12 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %real_num_tx_queues, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %ntx.019, i32 %13)
  %cmp3 = icmp ult i32 %ntx.019, %13
  br i1 %cmp3, label %if.then4, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @qdisc_hash_add(ptr noundef %9, i1 noundef zeroext false) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %ntx.019, 1
  %14 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %16 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %privdata.i, align 8
  tail call void @kfree(ptr noundef %17) #8
  %18 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %privdata.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mq_change_real_num_tx(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mqprio_dump(ptr noundef %sch, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i107 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  %opt = alloca %struct.tc_mqprio_qopt, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i, align 8
  call void @llvm.lifetime.start.p0(i64 82, ptr nonnull %opt) #8
  %6 = getelementptr inbounds i8, ptr %opt, i32 18
  %7 = call ptr @memset(ptr %6, i32 0, i32 64)
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %8 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %qlen, align 8
  %bstats = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  tail call void @gnet_stats_basic_sync_init(ptr noundef %bstats) #8
  %qstats = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19
  %9 = call ptr @memset(ptr %qstats, i32 0, i32 20)
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %10 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp121.not = icmp eq i32 %11, 0
  br i1 %cmp121.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ntx.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %12 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i, align 128
  %qdisc_sleeping = getelementptr %struct.netdev_queue, ptr %13, i32 %ntx.0122, i32 3
  %14 = ptrtoint ptr %qdisc_sleeping to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qdisc_sleeping, align 4
  %lock.i = getelementptr inbounds %struct.Qdisc, ptr %15, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #8
  %cpu_bstats = getelementptr inbounds %struct.Qdisc, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %cpu_bstats to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cpu_bstats, align 16
  %bstats6 = getelementptr inbounds %struct.Qdisc, ptr %15, i32 0, i32 18
  tail call void @gnet_stats_add_basic(ptr noundef %bstats, ptr noundef %17, ptr noundef %bstats6, i1 noundef zeroext false) #8
  %cpu_qstats = getelementptr inbounds %struct.Qdisc, ptr %15, i32 0, i32 12
  %18 = ptrtoint ptr %cpu_qstats to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cpu_qstats, align 4
  %qstats8 = getelementptr inbounds %struct.Qdisc, ptr %15, i32 0, i32 19
  tail call void @gnet_stats_add_queue(ptr noundef %qstats, ptr noundef %19, ptr noundef %qstats8) #8
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %15, i32 0, i32 17, i32 2
  %20 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen.i, align 8
  %22 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlen, align 8
  %add = add i32 %23, %21
  store i32 %add, ptr %qlen, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  %inc = add nuw i32 %ntx.0122, 1
  %24 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %num_tc.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 140
  %26 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_tc.i, align 4
  %conv = trunc i16 %27 to i8
  %28 = ptrtoint ptr %opt to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv, ptr %opt, align 2
  %prio_tc_map = getelementptr inbounds %struct.tc_mqprio_qopt, ptr %opt, i32 0, i32 1
  %prio_tc_map14 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 142
  %29 = call ptr @memcpy(ptr %prio_tc_map, ptr %prio_tc_map14, i32 16)
  %hw_offload = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %30 = ptrtoint ptr %hw_offload to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hw_offload, align 8
  %conv16 = trunc i32 %31 to i8
  %hw = getelementptr inbounds %struct.tc_mqprio_qopt, ptr %opt, i32 0, i32 2
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv16, ptr %hw, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp19124.not = icmp eq i16 %27, 0
  br i1 %cmp19124.not, label %for.end.for.end30_crit_edge, label %for.end.for.body21_crit_edge

for.end.for.body21_crit_edge:                     ; preds = %for.end
  br label %for.body21

for.end.for.end30_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end30

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %for.end.for.body21_crit_edge
  %tc.0125 = phi i32 [ %inc29, %for.body21.for.body21_crit_edge ], [ 0, %for.end.for.body21_crit_edge ]
  %arrayidx = getelementptr %struct.net_device, ptr %3, i32 0, i32 141, i32 %tc.0125
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx, align 2
  %arrayidx23 = getelementptr %struct.tc_mqprio_qopt, ptr %opt, i32 0, i32 3, i32 %tc.0125
  %35 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %arrayidx23, align 2
  %offset = getelementptr %struct.net_device, ptr %3, i32 0, i32 141, i32 %tc.0125, i32 1
  %36 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %offset, align 2
  %arrayidx27 = getelementptr %struct.tc_mqprio_qopt, ptr %opt, i32 0, i32 4, i32 %tc.0125
  %38 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %arrayidx27, align 2
  %inc29 = add nuw i32 %tc.0125, 1
  %39 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %num_tc.i, align 4
  %conv.i106 = sext i16 %40 to i32
  %cmp19 = icmp ult i32 %inc29, %conv.i106
  br i1 %cmp19, label %for.body21.for.body21_crit_edge, label %for.body21.for.end30_crit_edge

for.body21.for.end30_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end30

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21

for.end30:                                        ; preds = %for.body21.for.end30_crit_edge, %for.end.for.end30_crit_edge
  %call31 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 82, ptr noundef nonnull %opt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool.not = icmp eq i32 %call31, 0
  br i1 %tobool.not, label %if.end, label %for.end30.nla_put_failure_crit_edge

for.end30.nla_put_failure_crit_edge:              ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

if.end:                                           ; preds = %for.end30
  %flags = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  %and = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %if.end.if.end36_crit_edge, label %land.lhs.true

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end
  %mode = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %43 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %mode, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #8
  %45 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool34.not = icmp eq i32 %call.i, 0
  br i1 %tobool34.not, label %land.lhs.true.if.end36_crit_edge, label %land.lhs.true.nla_put_failure_crit_edge

land.lhs.true.nla_put_failure_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.end36:                                         ; preds = %land.lhs.true.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 4
  %and38 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end36.if.end44_crit_edge, label %land.lhs.true40

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

land.lhs.true40:                                  ; preds = %if.end36
  %shaper = getelementptr inbounds %struct.mqprio_sched, ptr %privdata.i, i32 0, i32 2
  %48 = ptrtoint ptr %shaper to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %shaper, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i107) #8
  %50 = ptrtoint ptr %tmp.i107 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %tmp.i107, align 2
  %call.i108 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i107) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i107) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool42.not = icmp eq i32 %call.i108, 0
  br i1 %tobool42.not, label %land.lhs.true40.if.end44_crit_edge, label %land.lhs.true40.nla_put_failure_crit_edge

land.lhs.true40.nla_put_failure_crit_edge:        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

land.lhs.true40.if.end44_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.end44:                                         ; preds = %land.lhs.true40.if.end44_crit_edge, %if.end36.if.end44_crit_edge
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 4
  %53 = and i32 %52, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %if.end44.if.end56_crit_edge, label %land.lhs.true51

if.end44.if.end56_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

land.lhs.true51:                                  ; preds = %if.end44
  %and46 = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %land.lhs.true51.if.end9.i_crit_edge, label %if.then.i

land.lhs.true51.if.end9.i_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then.i:                                        ; preds = %land.lhs.true51
  %55 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tail.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %.call.i.i = select i1 %cmp.i.i, ptr null, ptr %56
  %tobool1.not.i = icmp eq ptr %.call.i.i, null
  br i1 %tobool1.not.i, label %if.then.i.nla_put_failure_crit_edge, label %for.cond.preheader.i

if.then.i.nla_put_failure_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

for.cond.preheader.i:                             ; preds = %if.then.i
  %57 = ptrtoint ptr %opt to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %opt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp69.not.i = icmp eq i8 %58, 0
  br i1 %cmp69.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.070.i, 1
  %59 = ptrtoint ptr %opt to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %opt, align 2
  %conv.i109 = zext i8 %60 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i109
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.070.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i110 = getelementptr %struct.mqprio_sched, ptr %privdata.i, i32 0, i32 5, i32 %i.070.i
  %call4.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 8, ptr noundef %arrayidx.i110) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %for.cond.i, label %for.body.i.if.then.i.i.i_crit_edge

for.body.i.if.then.i.i.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %61 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %62 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %.call.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %63 = ptrtoint ptr %.call.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv.i.i, ptr %.call.i.i, align 2
  br label %if.end9.i

if.end9.i:                                        ; preds = %for.end.i, %land.lhs.true51.if.end9.i_crit_edge
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags, align 4
  %and11.i = and i32 %65, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end9.i.if.end56_crit_edge, label %if.then13.i

if.end9.i.if.end56_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then13.i:                                      ; preds = %if.end9.i
  %66 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tail.i, align 8
  %call1.i56.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56.i)
  %cmp.i57.i = icmp slt i32 %call1.i56.i, 0
  %.call.i58.i = select i1 %cmp.i57.i, ptr null, ptr %67
  %tobool15.not.i = icmp eq ptr %.call.i58.i, null
  br i1 %tobool15.not.i, label %if.then13.i.nla_put_failure_crit_edge, label %for.cond18.preheader.i

if.then13.i.nla_put_failure_crit_edge:            ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

for.cond18.preheader.i:                           ; preds = %if.then13.i
  %68 = ptrtoint ptr %opt to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %opt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp2172.not.i = icmp eq i8 %69, 0
  br i1 %cmp2172.not.i, label %for.cond18.preheader.i.for.end31.i_crit_edge, label %for.cond18.preheader.i.for.body23.i_crit_edge

for.cond18.preheader.i.for.body23.i_crit_edge:    ; preds = %for.cond18.preheader.i
  br label %for.body23.i

for.cond18.preheader.i.for.end31.i_crit_edge:     ; preds = %for.cond18.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end31.i

for.cond18.i:                                     ; preds = %for.body23.i
  %inc30.i = add nuw nsw i32 %i.173.i, 1
  %70 = ptrtoint ptr %opt to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %opt, align 2
  %conv20.i = zext i8 %71 to i32
  %cmp21.i = icmp ult i32 %inc30.i, %conv20.i
  br i1 %cmp21.i, label %for.cond18.i.for.body23.i_crit_edge, label %for.cond18.i.for.end31.i_crit_edge

for.cond18.i.for.end31.i_crit_edge:               ; preds = %for.cond18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end31.i

for.cond18.i.for.body23.i_crit_edge:              ; preds = %for.cond18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body23.i

for.body23.i:                                     ; preds = %for.cond18.i.for.body23.i_crit_edge, %for.cond18.preheader.i.for.body23.i_crit_edge
  %i.173.i = phi i32 [ %inc30.i, %for.cond18.i.for.body23.i_crit_edge ], [ 0, %for.cond18.preheader.i.for.body23.i_crit_edge ]
  %arrayidx24.i = getelementptr %struct.mqprio_sched, ptr %privdata.i, i32 0, i32 6, i32 %i.173.i
  %call25.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 8, ptr noundef %arrayidx24.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %for.cond18.i, label %for.body23.i.if.then.i.i.i_crit_edge

for.body23.i.if.then.i.i.i_crit_edge:             ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

for.end31.i:                                      ; preds = %for.cond18.i.for.end31.i_crit_edge, %for.cond18.preheader.i.for.end31.i_crit_edge
  %72 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i60.i = ptrtoint ptr %73 to i32
  %sub.ptr.rhs.cast.i61.i = ptrtoint ptr %.call.i58.i to i32
  %sub.ptr.sub.i62.i = sub i32 %sub.ptr.lhs.cast.i60.i, %sub.ptr.rhs.cast.i61.i
  %conv.i63.i = trunc i32 %sub.ptr.sub.i62.i to i16
  %74 = ptrtoint ptr %.call.i58.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv.i63.i, ptr %.call.i58.i, align 2
  br label %if.end56

if.then.i.i.i:                                    ; preds = %for.body23.i.if.then.i.i.i_crit_edge, %for.body.i.if.then.i.i.i_crit_edge
  %nest.0.i = phi ptr [ %.call.i58.i, %for.body23.i.if.then.i.i.i_crit_edge ], [ %.call.i.i, %for.body.i.if.then.i.i.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %75 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %76, %nest.0.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !28

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %77 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %nest.0.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %78 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #8
  br label %nla_put_failure

if.end56:                                         ; preds = %for.end31.i, %if.end9.i.if.end56_crit_edge, %if.end44.if.end56_crit_edge
  %79 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %80 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i111 = trunc i32 %sub.ptr.sub.i to i16
  %81 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv.i111, ptr %5, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %82 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len.i, align 4
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end.i.i.i, %if.then13.i.nla_put_failure_crit_edge, %if.then.i.nla_put_failure_crit_edge, %land.lhs.true40.nla_put_failure_crit_edge, %land.lhs.true.nla_put_failure_crit_edge, %for.end30.nla_put_failure_crit_edge
  %tobool.not.i112 = icmp eq ptr %5, null
  br i1 %tobool.not.i112, label %nla_put_failure.cleanup_crit_edge, label %if.then.i114

nla_put_failure.cleanup_crit_edge:                ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i114:                                     ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %84 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data.i, align 4
  %cmp.i113 = icmp ugt ptr %85, %5
  br i1 %cmp.i113, label %do.end.i, label %if.then.i114.if.end.i_crit_edge, !prof !28

if.then.i114.if.end.i_crit_edge:                  ; preds = %if.then.i114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i114
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i114.if.end.i_crit_edge
  %86 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i115 = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i116 = ptrtoint ptr %87 to i32
  %sub.ptr.sub.i117 = sub i32 %sub.ptr.lhs.cast.i115, %sub.ptr.rhs.cast.i116
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i117) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %nla_put_failure.cleanup_crit_edge, %if.end56
  %retval.0 = phi i32 [ %83, %if.end56 ], [ -1, %nla_put_failure.cleanup_crit_edge ], [ -1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 82, ptr nonnull %opt) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @mqprio_select_queue(ptr nocapture noundef readonly %sch, ptr nocapture noundef readonly %tcm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.mqprio_queue_get.exit_crit_edge

entry.mqprio_queue_get.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mqprio_queue_get.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %sub.i
  br label %mqprio_queue_get.exit

mqprio_queue_get.exit:                            ; preds = %if.end.i, %entry.mqprio_queue_get.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i.i, %if.end.i ], [ null, %entry.mqprio_queue_get.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mqprio_graft(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr noundef %new, ptr nocapture noundef writeonly %old, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
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
  br i1 %cmp.not.i, label %mqprio_queue_get.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mqprio_queue_get.exit:                            ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %sub.i
  %tobool.not = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not, label %mqprio_queue_get.exit.cleanup_crit_edge, label %if.end

mqprio_queue_get.exit.cleanup_crit_edge:          ; preds = %mqprio_queue_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %mqprio_queue_get.exit
  %flags = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dev_deactivate(ptr noundef %3) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %call5 = tail call ptr @dev_graft_qdisc(ptr noundef nonnull %arrayidx.i.i, ptr noundef %new) #8
  %10 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5, ptr %old, align 4
  %tobool6.not = icmp eq ptr %new, null
  br i1 %tobool6.not, label %if.end4.if.end9_crit_edge, label %if.then7

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %flags8 = getelementptr inbounds %struct.Qdisc, ptr %new, i32 0, i32 2
  %11 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags8, align 8
  %or = or i32 %12, 80
  store i32 %or, ptr %flags8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end4.if.end9_crit_edge
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 8
  %and11 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.then13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dev_activate(ptr noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end9.cleanup_crit_edge, %mqprio_queue_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %mqprio_queue_get.exit.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %if.end9.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @mqprio_leaf(ptr nocapture noundef readonly %sch, i32 noundef %cl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %cmp.not.i, label %mqprio_queue_get.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mqprio_queue_get.exit:                            ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %sub.i
  %tobool.not = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not, label %mqprio_queue_get.exit.cleanup_crit_edge, label %if.end

mqprio_queue_get.exit.cleanup_crit_edge:          ; preds = %mqprio_queue_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %mqprio_queue_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  %qdisc_sleeping = getelementptr %struct.netdev_queue, ptr %7, i32 %sub.i, i32 3
  %8 = ptrtoint ptr %qdisc_sleeping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qdisc_sleeping, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mqprio_queue_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %9, %if.end ], [ null, %mqprio_queue_get.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mqprio_find(ptr nocapture noundef readonly %sch, i32 noundef %classid) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %and = and i32 %classid, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65504, i32 %and)
  %cmp = icmp ult i32 %and, 65504
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %4 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %5)
  %cmp1.not = icmp ugt i32 %and, %5
  %spec.select = select i1 %cmp1.not, i32 0, i32 %and
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add nsw i32 %and, -65504
  %num_tc.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 140
  %6 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_tc.i, align 4
  %conv.i = sext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv.i)
  %cmp3 = icmp ult i32 %sub, %conv.i
  %spec.select14 = select i1 %cmp3, i32 %and, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ %spec.select14, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mqprio_walk(ptr noundef %sch, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %skip = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 1
  %6 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %skip, align 4
  %count = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 2
  %8 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %count, align 4
  %num_tc.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 140
  %9 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_tc.i, align 4
  %conv.i53 = sext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i53)
  %cmp54 = icmp ult i32 %7, %conv.i53
  br i1 %cmp54, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %fn = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %for.body.lr.ph
  %ntx.055 = phi i32 [ %7, %for.body.lr.ph ], [ %inc9, %if.end7.for.body_crit_edge ]
  %11 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fn, align 4
  %add = add i32 %ntx.055, 65504
  %call3 = tail call i32 %12(ptr noundef %sch, i32 noundef %add, ptr noundef %arg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %for.body.cleanup.sink.split_crit_edge, label %if.end7

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end7:                                          ; preds = %for.body
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %count, align 4
  %inc9 = add nuw i32 %ntx.055, 1
  %15 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_tc.i, align 4
  %conv.i = sext i16 %16 to i32
  %cmp = icmp ult i32 %inc9, %conv.i
  br i1 %cmp, label %if.end7.for.body_crit_edge, label %if.end7.for.end_crit_edge

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end7.for.end_crit_edge, %if.end.for.end_crit_edge
  %ntx.0.lcssa = phi i32 [ %7, %if.end.for.end_crit_edge ], [ %inc9, %if.end7.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %ntx.0.lcssa)
  %cmp10 = icmp ult i32 %ntx.0.lcssa, 16
  br i1 %cmp10, label %if.then11, label %for.end.if.end13_crit_edge

for.end.if.end13_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %count, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %for.end.if.end13_crit_edge
  %ntx.1 = phi i32 [ 16, %if.then11 ], [ %ntx.0.lcssa, %for.end.if.end13_crit_edge ]
  %sub = add i32 %ntx.1, -16
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %18 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %19)
  %cmp1556 = icmp ult i32 %sub, %19
  br i1 %cmp1556, label %for.body16.lr.ph, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body16.lr.ph:                                 ; preds = %if.end13
  %fn17 = getelementptr inbounds %struct.qdisc_walker, ptr %arg, i32 0, i32 3
  br label %for.body16

for.body16:                                       ; preds = %if.end23.for.body16_crit_edge, %for.body16.lr.ph
  %ntx.257 = phi i32 [ %sub, %for.body16.lr.ph ], [ %add18, %if.end23.for.body16_crit_edge ]
  %20 = ptrtoint ptr %fn17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fn17, align 4
  %add18 = add nuw i32 %ntx.257, 1
  %call19 = tail call i32 %21(ptr noundef %sch, i32 noundef %add18, ptr noundef %arg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %for.body16.cleanup.sink.split_crit_edge, label %if.end23

for.body16.cleanup.sink.split_crit_edge:          ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end23:                                         ; preds = %for.body16
  %22 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count, align 4
  %inc25 = add i32 %23, 1
  store i32 %inc25, ptr %count, align 4
  %24 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_tx_queues, align 4
  %cmp15 = icmp ult i32 %add18, %25
  br i1 %cmp15, label %if.end23.for.body16_crit_edge, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23.for.body16_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body16

cleanup.sink.split:                               ; preds = %for.body16.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge
  %26 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %arg, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end23.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mqprio_dump_class(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr nocapture noundef readnone %skb, ptr nocapture noundef %tcm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 65504, i32 %cl)
  %cmp = icmp ult i32 %cl, 65504
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %sub.i = add nsw i32 %cl, -1
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %4 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %5)
  %cmp.not.i = icmp ult i32 %sub.i, %5
  br i1 %cmp.not.i, label %if.end.i, label %if.then.mqprio_queue_get.exit_crit_edge

if.then.mqprio_queue_get.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %mqprio_queue_get.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %sub.i
  br label %mqprio_queue_get.exit

mqprio_queue_get.exit:                            ; preds = %if.end.i, %if.then.mqprio_queue_get.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i.i, %if.end.i ], [ null, %if.then.mqprio_queue_get.exit_crit_edge ]
  %call2 = tail call i32 @netdev_txq_to_tc(ptr noundef %3, i32 noundef %sub.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %mqprio_queue_get.exit.cond.end_crit_edge, label %cond.false

mqprio_queue_get.exit.cond.end_crit_edge:         ; preds = %mqprio_queue_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %mqprio_queue_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %8 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %handle, align 32
  %and = and i32 %9, -65536
  %add = add nuw i32 %call2, 65504
  %and5 = and i32 %add, 65535
  %or = or i32 %and, %and5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %mqprio_queue_get.exit.cond.end_crit_edge
  %cond = phi i32 [ %or, %cond.false ], [ 0, %mqprio_queue_get.exit.cond.end_crit_edge ]
  %tcm_parent = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 5
  %10 = ptrtoint ptr %tcm_parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %tcm_parent, align 4
  %qdisc_sleeping = getelementptr inbounds %struct.netdev_queue, ptr %retval.0.i, i32 0, i32 3
  %11 = ptrtoint ptr %qdisc_sleeping to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qdisc_sleeping, align 4
  %handle7 = getelementptr inbounds %struct.Qdisc, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %handle7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %handle7, align 32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tcm_parent8 = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 5
  %15 = ptrtoint ptr %tcm_parent8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %tcm_parent8, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %.sink = phi i32 [ 0, %if.else ], [ %14, %cond.end ]
  %tcm_info9 = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 6
  %16 = ptrtoint ptr %tcm_info9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %tcm_info9, align 4
  %and10 = and i32 %cl, 65535
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %tcm, i32 0, i32 4
  %17 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tcm_handle, align 4
  %or11 = or i32 %18, %and10
  store i32 %or11, ptr %tcm_handle, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mqprio_dump_class_stats(ptr nocapture noundef %sch, i32 noundef %cl, ptr noundef %d) #2 align 64 {
entry:
  %qstats = alloca %struct.gnet_stats_queue, align 4
  %bstats = alloca %struct.gnet_stats_basic_sync, align 16
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 65503, i32 %cl)
  %cmp = icmp ugt i32 %cl, 65503
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qstats) #8
  %0 = call ptr @memset(ptr %qstats, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %bstats) #8
  %1 = call ptr @memset(ptr %bstats, i32 255, i32 48)
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %2 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_queue.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %and = and i32 %cl, 15
  %arrayidx = getelementptr %struct.net_device, ptr %5, i32 0, i32 141, i32 %and
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %tc.sroa.0.0.copyload = load i16, ptr %arrayidx, align 2
  %tc.sroa.5.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 2
  %7 = ptrtoint ptr %tc.sroa.5.0.arrayidx.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %7)
  %tc.sroa.5.0.copyload = load i16, ptr %tc.sroa.5.0.arrayidx.sroa_idx, align 2
  call void @gnet_stats_basic_sync_init(ptr noundef nonnull %bstats) #8
  %8 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then1

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_bh(ptr noundef nonnull %9) #8
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %conv = zext i16 %tc.sroa.5.0.copyload to i32
  %conv5 = zext i16 %tc.sroa.0.0.copyload to i32
  %add = add nuw nsw i32 %conv, %conv5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tc.sroa.0.0.copyload)
  %cmp699.not = icmp eq i16 %tc.sroa.0.0.copyload, 0
  br i1 %cmp699.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %qlen22 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  br label %for.body

for.body:                                         ; preds = %do.end.for.body_crit_edge, %for.body.lr.ph
  %i.0100 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc, %do.end.for.body_crit_edge ]
  %10 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i, align 128
  %call9 = call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call9, label %for.body.do.end_crit_edge, label %land.lhs.true

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %for.body
  %call10 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true12

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b89 = load i1, ptr @mqprio_dump_class_stats.__warned, align 1
  br i1 %.b89, label %land.lhs.true12.do.end_crit_edge, label %if.then14

land.lhs.true12.do.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @mqprio_dump_class_stats.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 518, ptr noundef nonnull @.str.1) #8
  br label %do.end

do.end:                                           ; preds = %if.then14, %land.lhs.true12.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.body.do.end_crit_edge
  %qdisc16 = getelementptr %struct.netdev_queue, ptr %11, i32 %i.0100, i32 2
  %12 = ptrtoint ptr %qdisc16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qdisc16, align 8
  %lock.i = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 17, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #8
  %cpu_bstats = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %cpu_bstats to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cpu_bstats, align 16
  %bstats18 = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 18
  call void @gnet_stats_add_basic(ptr noundef nonnull %bstats, ptr noundef %15, ptr noundef %bstats18, i1 noundef zeroext false) #8
  %cpu_qstats = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 12
  %16 = ptrtoint ptr %cpu_qstats to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cpu_qstats, align 4
  %qstats19 = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 19
  call void @gnet_stats_add_queue(ptr noundef nonnull %qstats, ptr noundef %17, ptr noundef %qstats19) #8
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 17, i32 2
  %18 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qlen.i, align 8
  %20 = ptrtoint ptr %qlen22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen22, align 8
  %add23 = add i32 %21, %19
  store i32 %add23, ptr %qlen22, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  %inc = add nuw nsw i32 %i.0100, 1
  %cmp6 = icmp ult i32 %inc, %add
  br i1 %cmp6, label %do.end.for.body_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %do.end.for.end_crit_edge, %if.end.for.end_crit_edge
  %qlen.i93 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %22 = ptrtoint ptr %qlen.i93 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlen.i93, align 8
  %24 = ptrtoint ptr %qstats to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qstats, align 4
  %add27 = add i32 %25, %23
  %26 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d, align 8
  %tobool29.not = icmp eq ptr %27, null
  br i1 %tobool29.not, label %for.end.if.end32_crit_edge, label %if.then30

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_lock_bh(ptr noundef nonnull %27) #8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %for.end.if.end32_crit_edge
  %call33 = call i32 @gnet_stats_copy_basic(ptr noundef %d, ptr noundef null, ptr noundef nonnull %bstats, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %bstats) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats) #8
  br label %return

cleanup:                                          ; preds = %if.end32
  %call36 = call i32 @gnet_stats_copy_queue(ptr noundef %d, ptr noundef null, ptr noundef nonnull %qstats, i32 noundef %add27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call36)
  %cmp37 = icmp sgt i32 %call36, -1
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %bstats) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qstats) #8
  br i1 %cmp37, label %cleanup.if.end61_crit_edge, label %cleanup.return_crit_edge

cleanup.return_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

cleanup.if.end61_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.else:                                          ; preds = %entry
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %28 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_queue.i.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 128
  %sub.i = add nsw i32 %cl, -1
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 104
  %32 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %33)
  %cmp.not.i = icmp ult i32 %sub.i, %33
  br i1 %cmp.not.i, label %if.end.i, label %if.else.mqprio_queue_get.exit_crit_edge

if.else.mqprio_queue_get.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %mqprio_queue_get.exit

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 103
  %34 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %35, i32 %sub.i
  br label %mqprio_queue_get.exit

mqprio_queue_get.exit:                            ; preds = %if.end.i, %if.else.mqprio_queue_get.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i.i, %if.end.i ], [ null, %if.else.mqprio_queue_get.exit_crit_edge ]
  %qdisc_sleeping = getelementptr inbounds %struct.netdev_queue, ptr %retval.0.i, i32 0, i32 3
  %36 = ptrtoint ptr %qdisc_sleeping to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %qdisc_sleeping, align 4
  %cpu_bstats47 = getelementptr inbounds %struct.Qdisc, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %cpu_bstats47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cpu_bstats47, align 16
  %bstats48 = getelementptr inbounds %struct.Qdisc, ptr %37, i32 0, i32 18
  %call49 = tail call i32 @gnet_stats_copy_basic(ptr noundef %d, ptr noundef %39, ptr noundef %bstats48, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %mqprio_queue_get.exit.return_crit_edge, label %lor.lhs.false52

mqprio_queue_get.exit.return_crit_edge:           ; preds = %mqprio_queue_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false52:                                  ; preds = %mqprio_queue_get.exit
  %qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %37, i32 0, i32 19
  %40 = ptrtoint ptr %qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %qstats.i.i, align 32
  %flags.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %37, i32 0, i32 2
  %42 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i.i.i, align 8
  %and.i.i.i = and i32 %43, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %lor.lhs.false52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %44 = load i32, ptr @nr_cpu_ids, align 4
  %call216.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call216.i.i, i32 %44)
  %cmp17.i.i = icmp ult i32 %call216.i.i, %44
  br i1 %cmp17.i.i, label %do.body.lr.ph.i.i, label %for.cond.preheader.i.i.cleanup58_crit_edge

for.cond.preheader.i.i.cleanup58_crit_edge:       ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup58

do.body.lr.ph.i.i:                                ; preds = %for.cond.preheader.i.i
  %cpu_qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %37, i32 0, i32 12
  %45 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cpu_qstats.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.lr.ph.i.i
  %call219.i.i = phi i32 [ %call216.i.i, %do.body.lr.ph.i.i ], [ %call2.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %qlen.018.i.i = phi i32 [ %41, %do.body.lr.ph.i.i ], [ %add5.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %arrayidx.i.i94 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call219.i.i
  %48 = ptrtoint ptr %arrayidx.i.i94 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i94, align 4
  %add.i.i = add i32 %49, %47
  %50 = inttoptr i32 %add.i.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add5.i.i = add i32 %52, %qlen.018.i.i
  %call2.i.i = tail call i32 @cpumask_next(i32 noundef %call219.i.i, ptr noundef nonnull @__cpu_possible_mask) #12
  %cmp.i.i = icmp ult i32 %call2.i.i, %44
  br i1 %cmp.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.body.i.i.cleanup58_crit_edge

do.body.i.i.cleanup58_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup58

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

if.else.i.i:                                      ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #10
  %qlen7.i.i = getelementptr inbounds %struct.Qdisc, ptr %37, i32 0, i32 17, i32 2
  %53 = ptrtoint ptr %qlen7.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %qlen7.i.i, align 8
  %add8.i.i = add i32 %54, %41
  br label %cleanup58

cleanup58:                                        ; preds = %if.else.i.i, %do.body.i.i.cleanup58_crit_edge, %for.cond.preheader.i.i.cleanup58_crit_edge
  %qlen.1.i.i = phi i32 [ %add8.i.i, %if.else.i.i ], [ %41, %for.cond.preheader.i.i.cleanup58_crit_edge ], [ %add5.i.i, %do.body.i.i.cleanup58_crit_edge ]
  %cpu_qstats.i = getelementptr inbounds %struct.Qdisc, ptr %37, i32 0, i32 12
  %55 = ptrtoint ptr %cpu_qstats.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cpu_qstats.i, align 4
  %call1.i = tail call i32 @gnet_stats_copy_queue(ptr noundef %d, ptr noundef %56, ptr noundef %qstats.i.i, i32 noundef %qlen.1.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp54 = icmp sgt i32 %call1.i, -1
  br i1 %cmp54, label %cleanup58.if.end61_crit_edge, label %cleanup58.return_crit_edge

cleanup58.return_crit_edge:                       ; preds = %cleanup58
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

cleanup58.if.end61_crit_edge:                     ; preds = %cleanup58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.end61:                                         ; preds = %cleanup58.if.end61_crit_edge, %cleanup.if.end61_crit_edge
  br label %return

return:                                           ; preds = %if.end61, %cleanup58.return_crit_edge, %mqprio_queue_get.exit.return_crit_edge, %cleanup.return_crit_edge, %cleanup.thread
  %retval.2 = phi i32 [ -1, %cleanup.return_crit_edge ], [ 0, %if.end61 ], [ -1, %cleanup58.return_crit_edge ], [ -1, %cleanup.thread ], [ -1, %mqprio_queue_get.exit.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_deactivate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_graft_qdisc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_activate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_txq_to_tc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_basic_sync_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_add_basic(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_add_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_basic(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_queue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_attr(ptr noundef %tb, ptr noundef %nla) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nla, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 91, i16 %1)
  %cmp = icmp ugt i16 %1, 91
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i16 %1 to i32
  %sub1 = add nsw i32 %conv.i, -88
  %add.ptr = getelementptr i8, ptr %nla, i32 88
  %call.i = tail call i32 @__nla_parse(ptr noundef %tb, i32 noundef 4, ptr noundef %add.ptr, i32 noundef %sub1, ptr noundef nonnull @mqprio_policy, i32 noundef 0, ptr noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = call ptr @memset(ptr %tb, i32 0, i32 20)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qdisc_create_dflt(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_num_tc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_tc_queue(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_hash_add(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__initcall__kmod_sch_mqprio__368_622_mqprio_module_init6, !1, !"__initcall__kmod_sch_mqprio__368_622_mqprio_module_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_mqprio.c", i32 622, i32 1}
!2 = !{ptr @__exitcall_mqprio_module_exit, !3, !"__exitcall_mqprio_module_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_mqprio.c", i32 623, i32 1}
!4 = !{ptr @__UNIQUE_ID_file369, !5, !"__UNIQUE_ID_file369", i1 false, i1 false}
!5 = !{!"../net/sched/sch_mqprio.c", i32 625, i32 1}
!6 = !{ptr @__UNIQUE_ID_license370, !5, !"__UNIQUE_ID_license370", i1 false, i1 false}
!7 = !{ptr @mqprio_qdisc_ops, !8, !"mqprio_qdisc_ops", i1 false, i1 false}
!8 = !{!"../net/sched/sch_mqprio.c", i32 600, i32 25}
!9 = !{ptr @mqprio_class_ops, !10, !"mqprio_class_ops", i1 false, i1 false}
!10 = !{!"../net/sched/sch_mqprio.c", i32 590, i32 37}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../net/sched/sch_mqprio.c", i32 518, i32 26}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mqprio_policy, !16, !"mqprio_policy", i1 false, i1 false}
!16 = !{!"../net/sched/sch_mqprio.c", i32 112, i32 32}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/net/netlink.h", i32 991, i32 3}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"branch_weights", i32 1, i32 2000}
