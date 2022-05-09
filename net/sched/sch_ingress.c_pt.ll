; ModuleID = '/llk/IR_all_yes/net/sched/sch_ingress.c_pt.bc'
source_filename = "../net/sched/sch_ingress.c"
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

@ingress_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr @ingress_class_ops, [16 x i8] c"ingress\00\00\00\00\00\00\00\00\00", i32 64, i32 32, ptr null, ptr null, ptr null, ptr @ingress_init, ptr null, ptr @ingress_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ingress_dump, ptr null, ptr @ingress_ingress_block_set, ptr null, ptr @ingress_ingress_block_get, ptr null, ptr null }, section ".data..read_mostly", align 4
@clsact_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr @clsact_class_ops, [16 x i8] c"clsact\00\00\00\00\00\00\00\00\00\00", i32 128, i32 32, ptr null, ptr null, ptr null, ptr @clsact_init, ptr null, ptr @clsact_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ingress_dump, ptr null, ptr @clsact_ingress_block_set, ptr @clsact_egress_block_set, ptr @clsact_ingress_block_get, ptr @clsact_egress_block_get, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_ingress__366_303_ingress_module_init6 = internal global ptr @ingress_module_init, section ".initcall6.init", align 4
@__exitcall_ingress_module_exit = internal global ptr @ingress_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias367 = internal constant [29 x i8] c"sch_ingress.alias=sch_clsact\00", section ".modinfo", align 1
@__UNIQUE_ID_file368 = internal constant [39 x i8] c"sch_ingress.file=net/sched/sch_ingress\00", section ".modinfo", align 1
@__UNIQUE_ID_license369 = internal constant [24 x i8] c"sch_ingress.license=GPL\00", section ".modinfo", align 1
@ingress_class_ops = internal constant { %struct.Qdisc_class_ops, [40 x i8] } { %struct.Qdisc_class_ops { i32 1, ptr null, ptr null, ptr @ingress_leaf, ptr null, ptr @ingress_find, ptr null, ptr null, ptr @ingress_walk, ptr @ingress_tcf_block, ptr @ingress_bind_filter, ptr @ingress_unbind_filter, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@clsact_class_ops = internal constant { %struct.Qdisc_class_ops, [40 x i8] } { %struct.Qdisc_class_ops { i32 1, ptr null, ptr null, ptr @ingress_leaf, ptr null, ptr @clsact_find, ptr null, ptr null, ptr @ingress_walk, ptr @clsact_tcf_block, ptr @clsact_bind_filter, ptr @ingress_unbind_filter, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 65522, i64 65523]
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"ingress_class_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 123, i32 37 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"clsact_class_ops\00", align 1
@___asan_gen_.5 = private constant [27 x i8] c"../net/sched/sch_ingress.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 258, i32 37 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias367, ptr @__UNIQUE_ID_file368, ptr @__UNIQUE_ID_license369, ptr @__exitcall_ingress_module_exit, ptr @__initcall__kmod_sch_ingress__366_303_ingress_module_init6, ptr @ingress_module_exit, ptr @ingress_class_ops, ptr @clsact_class_ops], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingress_class_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clsact_class_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ingress_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @ingress_qdisc_ops) #6
  %call1 = tail call i32 @unregister_qdisc(ptr noundef nonnull @clsact_qdisc_ops) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ingress_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @ingress_qdisc_ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @register_qdisc(ptr noundef nonnull @clsact_qdisc_ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @unregister_qdisc(ptr noundef nonnull @ingress_qdisc_ops) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end5_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.then.if.end5_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingress_init(ptr noundef %sch, ptr nocapture noundef readnone %opt, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  tail call void @net_inc_ingress_queue() #6
  %miniqp = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %miniq_ingress = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 96
  tail call void @mini_qdisc_pair_init(ptr noundef %miniqp, ptr noundef %sch, ptr noundef %miniq_ingress) #6
  %block_info = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %4 = ptrtoint ptr %block_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %block_info, align 4
  %chain_head_change = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %5 = ptrtoint ptr %chain_head_change to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @clsact_chain_head_change, ptr %chain_head_change, align 4
  %chain_head_change_priv = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %6 = ptrtoint ptr %chain_head_change_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %miniqp, ptr %chain_head_change_priv, align 4
  %call6 = tail call i32 @tcf_block_get_ext(ptr noundef %privdata.i, ptr noundef %sch, ptr noundef %block_info, ptr noundef %extack) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %privdata.i, align 4
  tail call void @mini_qdisc_pair_block_init(ptr noundef %miniqp, ptr noundef %8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingress_destroy(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %privdata.i, align 4
  %block_info = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  tail call void @tcf_block_put_ext(ptr noundef %1, ptr noundef %sch, ptr noundef %block_info) #6
  tail call void @net_dec_ingress_queue() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingress_dump(ptr nocapture noundef readnone %sch, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp7 = icmp eq ptr %1, null
  %cmp = select i1 %cmp.i, i1 true, i1 %cmp7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i, ptr %1, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ingress_ingress_block_set(ptr nocapture noundef writeonly %sch, i32 noundef %block_index) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %block_index1 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %0 = ptrtoint ptr %block_index1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %block_index, ptr %block_index1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ingress_ingress_block_get(ptr nocapture noundef readonly %sch) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %block_index = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %0 = ptrtoint ptr %block_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %block_index, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal noalias ptr @ingress_leaf(ptr nocapture noundef readnone %sch, i32 noundef %arg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ingress_find(ptr nocapture noundef readnone %sch, i32 noundef %classid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %classid, 65535
  %add = add nuw nsw i32 %and, 1
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ingress_walk(ptr nocapture noundef %sch, ptr nocapture noundef %walker) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ingress_tcf_block(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr nocapture noundef readnone %extack) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %0 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %privdata.i, align 4
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ingress_bind_filter(ptr nocapture noundef readnone %sch, i32 noundef %parent, i32 noundef %classid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %classid, 65535
  %add.i = add nuw nsw i32 %and.i, 1
  ret i32 %add.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ingress_unbind_filter(ptr nocapture noundef %sch, i32 noundef %cl) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_inc_ingress_queue() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mini_qdisc_pair_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clsact_chain_head_change(ptr noundef %tp_head, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mini_qdisc_pair_swap(ptr noundef %priv, ptr noundef %tp_head) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_block_get_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mini_qdisc_pair_block_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mini_qdisc_pair_swap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_block_put_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_dec_ingress_queue() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clsact_init(ptr noundef %sch, ptr nocapture noundef readnone %opt, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  tail call void @net_inc_ingress_queue() #6
  tail call void @net_inc_egress_queue() #6
  %miniqp_ingress = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %miniq_ingress = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 96
  tail call void @mini_qdisc_pair_init(ptr noundef %miniqp_ingress, ptr noundef %sch, ptr noundef %miniq_ingress) #6
  %ingress_block_info = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %4 = ptrtoint ptr %ingress_block_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %ingress_block_info, align 4
  %chain_head_change = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %5 = ptrtoint ptr %chain_head_change to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @clsact_chain_head_change, ptr %chain_head_change, align 4
  %chain_head_change_priv = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %6 = ptrtoint ptr %chain_head_change_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %miniqp_ingress, ptr %chain_head_change_priv, align 4
  %call6 = tail call i32 @tcf_block_get_ext(ptr noundef %privdata.i, ptr noundef %sch, ptr noundef %ingress_block_info, ptr noundef %extack) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %privdata.i, align 4
  tail call void @mini_qdisc_pair_block_init(ptr noundef %miniqp_ingress, ptr noundef %8) #6
  %miniqp_egress = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 20
  %miniq_egress = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 111
  tail call void @mini_qdisc_pair_init(ptr noundef %miniqp_egress, ptr noundef %sch, ptr noundef %miniq_egress) #6
  %egress_block_info = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %9 = ptrtoint ptr %egress_block_info to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %egress_block_info, align 4
  %chain_head_change11 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %10 = ptrtoint ptr %chain_head_change11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @clsact_chain_head_change, ptr %chain_head_change11, align 4
  %chain_head_change_priv14 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %11 = ptrtoint ptr %chain_head_change_priv14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %miniqp_egress, ptr %chain_head_change_priv14, align 4
  %egress_block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %call16 = tail call i32 @tcf_block_get_ext(ptr noundef %egress_block, ptr noundef %sch, ptr noundef %egress_block_info, ptr noundef %extack) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end ], [ %call6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clsact_destroy(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %egress_block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %0 = ptrtoint ptr %egress_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %egress_block, align 4
  %egress_block_info = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  tail call void @tcf_block_put_ext(ptr noundef %1, ptr noundef %sch, ptr noundef %egress_block_info) #6
  %2 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %privdata.i, align 4
  %ingress_block_info = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  tail call void @tcf_block_put_ext(ptr noundef %3, ptr noundef %sch, ptr noundef %ingress_block_info) #6
  tail call void @net_dec_ingress_queue() #6
  tail call void @net_dec_egress_queue() #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @clsact_ingress_block_set(ptr nocapture noundef writeonly %sch, i32 noundef %block_index) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %block_index1 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %0 = ptrtoint ptr %block_index1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %block_index, ptr %block_index1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @clsact_egress_block_set(ptr nocapture noundef writeonly %sch, i32 noundef %block_index) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %block_index1 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 8
  %0 = ptrtoint ptr %block_index1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %block_index, ptr %block_index1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clsact_ingress_block_get(ptr nocapture noundef readonly %sch) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %block_index = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %0 = ptrtoint ptr %block_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %block_index, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clsact_egress_block_get(ptr nocapture noundef readonly %sch) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %block_index = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 8
  %0 = ptrtoint ptr %block_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %block_index, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clsact_find(ptr nocapture noundef readnone %sch, i32 noundef %classid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %classid, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 65522, i32 %0)
  %switch = icmp eq i32 %0, 65522
  %and = and i32 %classid, 65535
  %retval.0 = select i1 %switch, i32 %and, i32 0
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @clsact_tcf_block(ptr nocapture noundef readonly %sch, i32 noundef %cl, ptr nocapture noundef readnone %extack) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cl to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cl, label %entry.cleanup_crit_edge [
    i32 65522, label %sw.bb
    i32 65523, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  br label %cleanup.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %egress_block = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb1, %sw.bb
  %egress_block.sink = phi ptr [ %egress_block, %sw.bb1 ], [ %privdata.i, %sw.bb ]
  %1 = ptrtoint ptr %egress_block.sink to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %egress_block.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %2, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clsact_bind_filter(ptr nocapture noundef readnone %sch, i32 noundef %parent, i32 noundef %classid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %classid, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 65522, i32 %0)
  %switch.i = icmp eq i32 %0, 65522
  %and.i = and i32 %classid, 65535
  %retval.0.i = select i1 %switch.i, i32 %and.i, i32 0
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_inc_egress_queue() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_dec_egress_queue() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__initcall__kmod_sch_ingress__366_303_ingress_module_init6, !1, !"__initcall__kmod_sch_ingress__366_303_ingress_module_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_ingress.c", i32 303, i32 1}
!2 = !{ptr @__exitcall_ingress_module_exit, !3, !"__exitcall_ingress_module_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_ingress.c", i32 304, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias367, !5, !"__UNIQUE_ID_alias367", i1 false, i1 false}
!5 = !{!"../net/sched/sch_ingress.c", i32 306, i32 1}
!6 = !{ptr @__UNIQUE_ID_file368, !7, !"__UNIQUE_ID_file368", i1 false, i1 false}
!7 = !{!"../net/sched/sch_ingress.c", i32 307, i32 1}
!8 = !{ptr @__UNIQUE_ID_license369, !7, !"__UNIQUE_ID_license369", i1 false, i1 false}
!9 = !{ptr @ingress_qdisc_ops, !10, !"ingress_qdisc_ops", i1 false, i1 false}
!10 = !{!"../net/sched/sch_ingress.c", i32 133, i32 25}
!11 = !{ptr @ingress_class_ops, !12, !"ingress_class_ops", i1 false, i1 false}
!12 = !{!"../net/sched/sch_ingress.c", i32 123, i32 37}
!13 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/net/netlink.h", i32 991, i32 3}
!15 = !{ptr @clsact_qdisc_ops, !16, !"clsact_qdisc_ops", i1 false, i1 false}
!16 = !{!"../net/sched/sch_ingress.c", i32 268, i32 25}
!17 = !{ptr @clsact_class_ops, !18, !"clsact_class_ops", i1 false, i1 false}
!18 = !{!"../net/sched/sch_ingress.c", i32 258, i32 37}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
