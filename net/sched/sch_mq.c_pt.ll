; ModuleID = '/llk/IR_all_yes/net/sched/sch_mq.c_pt.bc'
source_filename = "../net/sched/sch_mq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.Qdisc_class_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tc_mq_qopt_offload = type { i32, i32, %union.anon.126 }
%union.anon.126 = type { %struct.tc_qopt_offload_stats }
%struct.tc_qopt_offload_stats = type { ptr, ptr }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.qdisc_walker = type { i32, i32, i32, ptr }

@mq_class_ops = internal constant { %struct.Qdisc_class_ops, [40 x i8] } { %struct.Qdisc_class_ops { i32 0, ptr @mq_select_queue, ptr @mq_graft, ptr @mq_leaf, ptr null, ptr @mq_find, ptr null, ptr null, ptr @mq_walk, ptr null, ptr null, ptr null, ptr @mq_dump_class, ptr @mq_dump_class_stats }, [40 x i8] zeroinitializer }, align 32
@mq_qdisc_ops = dso_local local_unnamed_addr global %struct.Qdisc_ops { ptr null, ptr @mq_class_ops, [16 x i8] c"mq\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 0, ptr null, ptr null, ptr null, ptr @mq_init, ptr null, ptr @mq_destroy, ptr null, ptr @mq_attach, ptr null, ptr @mq_change_real_num_tx, ptr @mq_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@default_qdisc_ops = external dso_local local_unnamed_addr global ptr, align 4
@pfifo_fast_ops = external dso_local global %struct.Qdisc_ops, align 4
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"mq_class_ops\00", align 1
@___asan_gen_.2 = private constant [22 x i8] c"../net/sched/sch_mq.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 258, i32 37 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @mq_class_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mq_class_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mq_init(ptr nocapture noundef %sch, ptr nocapture noundef readnone %opt, ptr noundef %extack) #0 align 64 {
entry:
  %opt.i = alloca %struct.tc_mq_qopt_offload, align 4
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
  %parent = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.not = icmp eq i32 %5, -1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %6 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp ugt i32 %7, 1
  br i1 %cmp.i, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 4) #8
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !13

kcalloc.exit.thread:                              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %privdata.i, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end4
  %11 = extractvalue { i32, i1 } %8, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #11
  %12 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i.i, ptr %privdata.i, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  %13 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1050.not = icmp eq i32 %14, 0
  br i1 %cmp1050.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %real_num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 105
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %for.body.lr.ph
  %ntx.051 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end19.for.body_crit_edge ]
  %15 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_tx.i, align 128
  %arrayidx.i = getelementptr %struct.netdev_queue, ptr %16, i32 %ntx.051
  %17 = ptrtoint ptr %real_num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %real_num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %ntx.051)
  %cmp.i47 = icmp ugt i32 %18, %ntx.051
  br i1 %cmp.i47, label %cond.true.i, label %for.body.get_default_qdisc_ops.exit_crit_edge

for.body.get_default_qdisc_ops.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_default_qdisc_ops.exit

cond.true.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @default_qdisc_ops to i32))
  %19 = load ptr, ptr @default_qdisc_ops, align 4
  br label %get_default_qdisc_ops.exit

get_default_qdisc_ops.exit:                       ; preds = %cond.true.i, %for.body.get_default_qdisc_ops.exit_crit_edge
  %cond.i = phi ptr [ %19, %cond.true.i ], [ @pfifo_fast_ops, %for.body.get_default_qdisc_ops.exit_crit_edge ]
  %20 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %handle, align 32
  %and = and i32 %21, -65536
  %add = add nuw i32 %ntx.051, 1
  %and14 = and i32 %add, 65535
  %or = or i32 %and, %and14
  %call16 = tail call ptr @qdisc_create_dflt(ptr noundef %arrayidx.i, ptr noundef %cond.i, i32 noundef %or, ptr noundef %extack) #8
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %get_default_qdisc_ops.exit.cleanup_crit_edge, label %if.end19

get_default_qdisc_ops.exit.cleanup_crit_edge:     ; preds = %get_default_qdisc_ops.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %get_default_qdisc_ops.exit
  %22 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %privdata.i, align 4
  %arrayidx = getelementptr ptr, ptr %23, i32 %ntx.051
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call16, ptr %arrayidx, align 4
  %flags = getelementptr inbounds %struct.Qdisc, ptr %call16, i32 0, i32 2
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 8
  %or21 = or i32 %26, 80
  store i32 %or21, ptr %flags, align 8
  %27 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_tx_queues.i, align 4
  %cmp10 = icmp ult i32 %add, %28
  br i1 %cmp10, label %if.end19.for.body_crit_edge, label %if.end19.for.end_crit_edge

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end19.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %flags22 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %29 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags22, align 8
  %or23 = or i32 %30, 8
  store i32 %or23, ptr %flags22, align 8
  %31 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_queue.i, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 128
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %opt.i) #8
  %35 = getelementptr inbounds %struct.tc_mq_qopt_offload, ptr %opt.i, i32 0, i32 1
  %36 = getelementptr inbounds %struct.tc_mq_qopt_offload, ptr %opt.i, i32 0, i32 2
  %37 = ptrtoint ptr %opt.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %opt.i, align 4
  %handle1.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %38 = ptrtoint ptr %handle1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %handle1.i, align 32
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %35, align 4
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 0, ptr %36, align 4
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 23
  %42 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %43, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.end.mq_offload.exit_crit_edge, label %lor.lhs.false.i

for.end.mq_offload.exit_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mq_offload.exit

lor.lhs.false.i:                                  ; preds = %for.end
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 16
  %44 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_setup_tc.i = getelementptr inbounds %struct.net_device_ops, ptr %45, i32 0, i32 42
  %46 = ptrtoint ptr %ndo_setup_tc.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ndo_setup_tc.i, align 4
  %tobool.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.mq_offload.exit_crit_edge, label %if.end.i

lor.lhs.false.i.mq_offload.exit_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mq_offload.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = call i32 %47(ptr noundef %34, i32 noundef 9, ptr noundef nonnull %opt.i) #8
  br label %mq_offload.exit

mq_offload.exit:                                  ; preds = %if.end.i, %lor.lhs.false.i.mq_offload.exit_crit_edge, %for.end.mq_offload.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %opt.i) #8
  br label %cleanup

cleanup:                                          ; preds = %mq_offload.exit, %get_default_qdisc_ops.exit.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mq_offload.exit ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ], [ -12, %get_default_qdisc_ops.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mq_destroy(ptr nocapture noundef readonly %sch) #0 align 64 {
entry:
  %opt.i = alloca %struct.tc_mq_qopt_offload, align 4
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %opt.i) #8
  %4 = getelementptr inbounds %struct.tc_mq_qopt_offload, ptr %opt.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.tc_mq_qopt_offload, ptr %opt.i, i32 0, i32 2
  %6 = ptrtoint ptr %opt.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %opt.i, align 4
  %handle1.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %7 = ptrtoint ptr %handle1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %handle1.i, align 32
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %4, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 0, ptr %5, align 4
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %11 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %12, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.mq_offload.exit_crit_edge, label %lor.lhs.false.i

entry.mq_offload.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mq_offload.exit

lor.lhs.false.i:                                  ; preds = %entry
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %13 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_setup_tc.i = getelementptr inbounds %struct.net_device_ops, ptr %14, i32 0, i32 42
  %15 = ptrtoint ptr %ndo_setup_tc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndo_setup_tc.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.mq_offload.exit_crit_edge, label %if.end.i

lor.lhs.false.i.mq_offload.exit_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mq_offload.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = call i32 %16(ptr noundef %3, i32 noundef 9, ptr noundef nonnull %opt.i) #8
  br label %mq_offload.exit

mq_offload.exit:                                  ; preds = %if.end.i, %lor.lhs.false.i.mq_offload.exit_crit_edge, %entry.mq_offload.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %opt.i) #8
  %17 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %privdata.i, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %mq_offload.exit.cleanup_crit_edge, label %for.cond.preheader

mq_offload.exit.cleanup_crit_edge:                ; preds = %mq_offload.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %mq_offload.exit
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %19 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp18.not = icmp eq i32 %20, 0
  br i1 %cmp18.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.land.rhs_crit_edge

for.cond.preheader.land.rhs_crit_edge:            ; preds = %for.cond.preheader
  br label %land.rhs

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %for.cond.preheader.land.rhs_crit_edge
  %ntx.019 = phi i32 [ %inc, %for.body.land.rhs_crit_edge ], [ 0, %for.cond.preheader.land.rhs_crit_edge ]
  %21 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %privdata.i, align 4
  %arrayidx = getelementptr ptr, ptr %22, i32 %ntx.019
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %24, null
  br i1 %tobool4.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %land.rhs
  call void @qdisc_put(ptr noundef nonnull %24) #8
  %inc = add nuw i32 %ntx.019, 1
  %25 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %for.body.land.rhs_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %27 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %privdata.i, align 4
  call void @kfree(ptr noundef %28) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %mq_offload.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mq_attach(ptr nocapture noundef %sch) #0 align 64 {
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
  %7 = load ptr, ptr %privdata.i, align 4
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
  %17 = load ptr, ptr %privdata.i, align 4
  tail call void @kfree(ptr noundef %17) #8
  %18 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %privdata.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mq_change_real_num_tx(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mq_dump(ptr noundef %sch, ptr nocapture noundef readnone %skb) #0 align 64 {
entry:
  %opt.i = alloca %struct.tc_mq_qopt_offload, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %4 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qlen, align 8
  %bstats = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  tail call void @gnet_stats_basic_sync_init(ptr noundef %bstats) #8
  %qstats = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19
  %5 = call ptr @memset(ptr %qstats, i32 0, i32 20)
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %6 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp29.not = icmp eq i32 %7, 0
  br i1 %cmp29.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ntx.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i, align 128
  %qdisc_sleeping = getelementptr %struct.netdev_queue, ptr %9, i32 %ntx.030, i32 3
  %10 = ptrtoint ptr %qdisc_sleeping to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qdisc_sleeping, align 4
  %lock.i = getelementptr inbounds %struct.Qdisc, ptr %11, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #8
  %cpu_bstats = getelementptr inbounds %struct.Qdisc, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %cpu_bstats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpu_bstats, align 16
  %bstats4 = getelementptr inbounds %struct.Qdisc, ptr %11, i32 0, i32 18
  tail call void @gnet_stats_add_basic(ptr noundef %bstats, ptr noundef %13, ptr noundef %bstats4, i1 noundef zeroext false) #8
  %cpu_qstats = getelementptr inbounds %struct.Qdisc, ptr %11, i32 0, i32 12
  %14 = ptrtoint ptr %cpu_qstats to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cpu_qstats, align 4
  %qstats6 = getelementptr inbounds %struct.Qdisc, ptr %11, i32 0, i32 19
  tail call void @gnet_stats_add_queue(ptr noundef %qstats, ptr noundef %15, ptr noundef %qstats6) #8
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %11, i32 0, i32 17, i32 2
  %16 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qlen.i, align 8
  %18 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qlen, align 8
  %add = add i32 %19, %17
  store i32 %add, ptr %qlen, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  %inc = add nuw i32 %ntx.030, 1
  %20 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %opt.i) #8
  %22 = getelementptr inbounds %struct.tc_mq_qopt_offload, ptr %opt.i, i32 0, i32 1
  %23 = getelementptr inbounds %struct.tc_mq_qopt_offload, ptr %opt.i, i32 0, i32 2
  %24 = getelementptr inbounds %struct.tc_mq_qopt_offload, ptr %opt.i, i32 0, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %opt.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %opt.i, align 4
  %handle1.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %26 = ptrtoint ptr %handle1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %handle1.i, align 32
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %22, align 4
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %bstats, ptr %23, align 4
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %qstats, ptr %24, align 4
  %call.i = call i32 @qdisc_offload_dump_helper(ptr noundef %sch, i32 noundef 9, ptr noundef nonnull %opt.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %opt.i) #8
  ret i32 %call.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @mq_select_queue(ptr nocapture noundef readonly %sch, ptr nocapture noundef readonly %tcm) #2 align 64 {
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.mq_queue_get.exit_crit_edge

entry.mq_queue_get.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mq_queue_get.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %sub.i
  br label %mq_queue_get.exit

mq_queue_get.exit:                                ; preds = %if.end.i, %entry.mq_queue_get.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i.i, %if.end.i ], [ null, %entry.mq_queue_get.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mq_graft(ptr noundef %sch, i32 noundef %cl, ptr noundef %new, ptr nocapture noundef %old, ptr noundef %extack) #0 align 64 {
entry:
  %graft_offload = alloca %struct.tc_mq_qopt_offload, align 4
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.mq_queue_get.exit_crit_edge

entry.mq_queue_get.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mq_queue_get.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %sub.i
  br label %mq_queue_get.exit

mq_queue_get.exit:                                ; preds = %if.end.i, %entry.mq_queue_get.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i.i, %if.end.i ], [ null, %entry.mq_queue_get.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %graft_offload) #8
  %8 = getelementptr inbounds %struct.tc_mq_qopt_offload, ptr %graft_offload, i32 0, i32 1
  %9 = getelementptr inbounds %struct.tc_mq_qopt_offload, ptr %graft_offload, i32 0, i32 2
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 128
  %flags = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %mq_queue_get.exit.if.end_crit_edge, label %if.then

mq_queue_get.exit.if.end_crit_edge:               ; preds = %mq_queue_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %mq_queue_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dev_deactivate(ptr noundef %11) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %mq_queue_get.exit.if.end_crit_edge
  %call2 = tail call ptr @dev_graft_qdisc(ptr noundef %retval.0.i, ptr noundef %new) #8
  %14 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call2, ptr %old, align 4
  %tobool3.not = icmp eq ptr %new, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %flags5 = getelementptr inbounds %struct.Qdisc, ptr %new, i32 0, i32 2
  %15 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags5, align 8
  %or = or i32 %16, 80
  store i32 %or, ptr %flags5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 8
  %and8 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end6.if.end11_crit_edge, label %if.then10

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dev_activate(ptr noundef %11) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end6.if.end11_crit_edge
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %19 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %handle, align 32
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %8, align 4
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub.i, ptr %9, align 4
  br i1 %tobool3.not, label %if.end11.cond.end_crit_edge, label %cond.true

if.end11.cond.end_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %handle14 = getelementptr inbounds %struct.Qdisc, ptr %new, i32 0, i32 7
  %23 = ptrtoint ptr %handle14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %handle14, align 32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end11.cond.end_crit_edge
  %cond = phi i32 [ %24, %cond.true ], [ 0, %if.end11.cond.end_crit_edge ]
  %25 = getelementptr inbounds %struct.tc_mq_qopt_offload, ptr %graft_offload, i32 0, i32 2, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond, ptr %25, align 4
  %27 = ptrtoint ptr %graft_offload to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %graft_offload, align 4
  %28 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_queue.i.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 128
  %32 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %old, align 4
  call void @qdisc_offload_graft_helper(ptr noundef %31, ptr noundef %sch, ptr noundef %new, ptr noundef %33, i32 noundef 9, ptr noundef nonnull %graft_offload, ptr noundef %extack) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %graft_offload) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @mq_leaf(ptr nocapture noundef readonly %sch, i32 noundef %cl) #2 align 64 {
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.mq_queue_get.exit_crit_edge

entry.mq_queue_get.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mq_queue_get.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %sub.i
  br label %mq_queue_get.exit

mq_queue_get.exit:                                ; preds = %if.end.i, %entry.mq_queue_get.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i.i, %if.end.i ], [ null, %entry.mq_queue_get.exit_crit_edge ]
  %qdisc_sleeping = getelementptr inbounds %struct.netdev_queue, ptr %retval.0.i, i32 0, i32 3
  %8 = ptrtoint ptr %qdisc_sleeping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qdisc_sleeping, align 4
  ret ptr %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mq_find(ptr nocapture noundef readonly %sch, i32 noundef %classid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.mq_queue_get.exit_crit_edge

entry.mq_queue_get.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mq_queue_get.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %sub.i
  %phi.cmp = icmp eq ptr %arrayidx.i.i, null
  %phi.sel = select i1 %phi.cmp, i32 0, i32 %and
  br label %mq_queue_get.exit

mq_queue_get.exit:                                ; preds = %if.end.i, %entry.mq_queue_get.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.sel, %if.end.i ], [ 0, %entry.mq_queue_get.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mq_walk(ptr noundef %sch, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  %call2 = tail call i32 %12(ptr noundef %sch, i32 noundef %add, ptr noundef %arg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %if.end6.cleanup_crit_edge, %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mq_dump_class(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr nocapture noundef readnone %skb, ptr nocapture noundef %tcm) #3 align 64 {
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.mq_queue_get.exit_crit_edge

entry.mq_queue_get.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mq_queue_get.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %sub.i
  br label %mq_queue_get.exit

mq_queue_get.exit:                                ; preds = %if.end.i, %entry.mq_queue_get.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i.i, %if.end.i ], [ null, %entry.mq_queue_get.exit_crit_edge ]
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
define internal i32 @mq_dump_class_stats(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr noundef %d) #0 align 64 {
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.mq_queue_get.exit_crit_edge

entry.mq_queue_get.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mq_queue_get.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %sub.i
  br label %mq_queue_get.exit

mq_queue_get.exit:                                ; preds = %if.end.i, %entry.mq_queue_get.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i.i, %if.end.i ], [ null, %entry.mq_queue_get.exit_crit_edge ]
  %qdisc_sleeping = getelementptr inbounds %struct.netdev_queue, ptr %retval.0.i, i32 0, i32 3
  %8 = ptrtoint ptr %qdisc_sleeping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qdisc_sleeping, align 4
  %cpu_bstats = getelementptr inbounds %struct.Qdisc, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %cpu_bstats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cpu_bstats, align 16
  %bstats = getelementptr inbounds %struct.Qdisc, ptr %9, i32 0, i32 18
  %call1 = tail call i32 @gnet_stats_copy_basic(ptr noundef %d, ptr noundef %11, ptr noundef %bstats, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %mq_queue_get.exit.cleanup_crit_edge, label %lor.lhs.false

mq_queue_get.exit.cleanup_crit_edge:              ; preds = %mq_queue_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %mq_queue_get.exit
  %qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %9, i32 0, i32 19
  %12 = ptrtoint ptr %qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qstats.i.i, align 32
  %flags.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i.i.i, align 8
  %and.i.i.i = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %call216.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call216.i.i, i32 %16)
  %cmp17.i.i = icmp ult i32 %call216.i.i, %16
  br i1 %cmp17.i.i, label %do.body.lr.ph.i.i, label %for.cond.preheader.i.i.qdisc_qstats_copy.exit_crit_edge

for.cond.preheader.i.i.qdisc_qstats_copy.exit_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qdisc_qstats_copy.exit

do.body.lr.ph.i.i:                                ; preds = %for.cond.preheader.i.i
  %cpu_qstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %9, i32 0, i32 12
  %17 = ptrtoint ptr %cpu_qstats.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cpu_qstats.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.lr.ph.i.i
  %call219.i.i = phi i32 [ %call216.i.i, %do.body.lr.ph.i.i ], [ %call2.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %qlen.018.i.i = phi i32 [ %13, %do.body.lr.ph.i.i ], [ %add5.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %arrayidx.i.i8 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call219.i.i
  %20 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i8, align 4
  %add.i.i = add i32 %21, %19
  %22 = inttoptr i32 %add.i.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %add5.i.i = add i32 %24, %qlen.018.i.i
  %call2.i.i = tail call i32 @cpumask_next(i32 noundef %call219.i.i, ptr noundef nonnull @__cpu_possible_mask) #12
  %cmp.i.i = icmp ult i32 %call2.i.i, %16
  br i1 %cmp.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.body.i.i.qdisc_qstats_copy.exit_crit_edge

do.body.i.i.qdisc_qstats_copy.exit_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qdisc_qstats_copy.exit

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

if.else.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %qlen7.i.i = getelementptr inbounds %struct.Qdisc, ptr %9, i32 0, i32 17, i32 2
  %25 = ptrtoint ptr %qlen7.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qlen7.i.i, align 8
  %add8.i.i = add i32 %26, %13
  br label %qdisc_qstats_copy.exit

qdisc_qstats_copy.exit:                           ; preds = %if.else.i.i, %do.body.i.i.qdisc_qstats_copy.exit_crit_edge, %for.cond.preheader.i.i.qdisc_qstats_copy.exit_crit_edge
  %qlen.1.i.i = phi i32 [ %add8.i.i, %if.else.i.i ], [ %13, %for.cond.preheader.i.i.qdisc_qstats_copy.exit_crit_edge ], [ %add5.i.i, %do.body.i.i.qdisc_qstats_copy.exit_crit_edge ]
  %cpu_qstats.i = getelementptr inbounds %struct.Qdisc, ptr %9, i32 0, i32 12
  %27 = ptrtoint ptr %cpu_qstats.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cpu_qstats.i, align 4
  %call1.i = tail call i32 @gnet_stats_copy_queue(ptr noundef %d, ptr noundef %28, ptr noundef %qstats.i.i, i32 noundef %qlen.1.i.i) #8
  %call1.i.lobit = ashr i32 %call1.i, 31
  br label %cleanup

cleanup:                                          ; preds = %qdisc_qstats_copy.exit, %mq_queue_get.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %mq_queue_get.exit.cleanup_crit_edge ], [ %call1.i.lobit, %qdisc_qstats_copy.exit ]
  ret i32 %retval.0
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
declare dso_local void @qdisc_offload_graft_helper(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_basic(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_queue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qdisc_create_dflt(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local void @gnet_stats_basic_sync_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_add_basic(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_add_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qdisc_offload_dump_helper(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @mq_qdisc_ops, !1, !"mq_qdisc_ops", i1 false, i1 false}
!1 = !{!"../net/sched/sch_mq.c", i32 268, i32 18}
!2 = !{ptr @mq_class_ops, !3, !"mq_class_ops", i1 false, i1 false}
!3 = !{!"../net/sched/sch_mq.c", i32 258, i32 37}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 1, i32 2000}
