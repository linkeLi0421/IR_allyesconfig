; ModuleID = '/llk/IR_all_yes/net/ethtool/rings.c_pt.bc'
source_filename = "../net/ethtool/rings.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.ethnl_request_ops = type { i8, i8, i16, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { i16, i16 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.0, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.0 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.15 }
%union.anon.15 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.142 = type { ptr }
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
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rings_reply_data = type { %struct.ethnl_reply_data, %struct.ethtool_ringparam, %struct.kernel_ethtool_ringparam }
%struct.ethnl_reply_data = type { ptr }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kernel_ethtool_ringparam = type { i32 }
%struct.ethnl_req_info = type { ptr, ptr, i32 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_rings_get_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }>, [16 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, [16 x i8] zeroinitializer }, align 32
@ethnl_rings_request_ops = dso_local constant { %struct.ethnl_request_ops, [60 x i8] } { %struct.ethnl_request_ops { i8 15, i8 16, i16 1, i32 12, i32 44, i8 0, ptr null, ptr @rings_prepare_data, ptr @rings_reply_size, ptr @rings_fill_reply, ptr null }, [60 x i8] zeroinitializer }, align 32
@ethnl_rings_set_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon } } }>, [40 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, { i8, i8, i16, { %struct.anon } } { i8 3, i8 3, i16 0, { %struct.anon } { %struct.anon { i16 1, i16 0 } } } }>, [40 x i8] zeroinitializer }, align 32
@ethnl_set_rings.__msg = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"requested ring size exceeds maximum\00", [60 x i8] zeroinitializer }, align 32
@ethnl_set_rings.__msg.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"setting rx buf len not supported\00", [63 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.2 = private unnamed_addr constant [23 x i8] c"ethnl_rings_get_policy\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 19, i32 25 }
@___asan_gen_.5 = private unnamed_addr constant [24 x i8] c"ethnl_rings_request_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 95, i32 32 }
@___asan_gen_.8 = private unnamed_addr constant [23 x i8] c"ethnl_rings_set_policy\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 109, i32 25 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 174, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.15 = private constant [23 x i8] c"../net/ethtool/rings.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 182, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @ethnl_rings_get_policy, ptr @ethnl_rings_request_ops, ptr @ethnl_rings_set_policy, ptr @ethnl_set_rings.__msg, ptr @ethnl_set_rings.__msg.1], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_rings_get_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_rings_request_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_rings_set_policy to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_set_rings.__msg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_set_rings.__msg.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rings_prepare_data(ptr nocapture noundef readnone %req_base, ptr noundef %reply_base, ptr noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %extack1 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %0 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %1, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %2 = ptrtoint ptr %reply_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reply_base, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ethtool_ops, align 16
  %get_ringparam = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %get_ringparam to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_ringparam, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %call = tail call i32 @ethnl_ops_begin(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ethtool_ops, align 16
  %get_ringparam7 = getelementptr inbounds %struct.ethtool_ops, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %get_ringparam7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_ringparam7, align 4
  %ringparam = getelementptr inbounds %struct.rings_reply_data, ptr %reply_base, i32 0, i32 1
  %kernel_ringparam = getelementptr inbounds %struct.rings_reply_data, ptr %reply_base, i32 0, i32 2
  tail call void %11(ptr noundef %3, ptr noundef %ringparam, ptr noundef %kernel_ringparam, ptr noundef %cond) #5
  tail call void @ethnl_ops_complete(ptr noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -95, %cond.end.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rings_reply_size(ptr nocapture noundef readnone %req_base, ptr nocapture noundef readnone %reply_base) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 72
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rings_fill_reply(ptr noundef %skb, ptr nocapture noundef readnone %req_base, ptr nocapture noundef readonly %reply_base) #0 align 64 {
entry:
  %tmp.i81 = alloca i32, align 4
  %tmp.i79 = alloca i32, align 4
  %tmp.i77 = alloca i32, align 4
  %tmp.i75 = alloca i32, align 4
  %tmp.i73 = alloca i32, align 4
  %tmp.i71 = alloca i32, align 4
  %tmp.i69 = alloca i32, align 4
  %tmp.i67 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %kernel_ringparam1 = getelementptr inbounds %struct.rings_reply_data, ptr %reply_base, i32 0, i32 2
  %rx_max_pending = getelementptr inbounds %struct.rings_reply_data, ptr %reply_base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_max_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.lor.lhs.false7_crit_edge, label %land.lhs.true

entry.lor.lhs.false7_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false7

land.lhs.true:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %rx_pending = getelementptr inbounds %struct.rings_reply_data, ptr %reply_base, i32 0, i32 1, i32 5
  %3 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_pending, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i67) #5
  %5 = ptrtoint ptr %tmp.i67 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tmp.i67, align 4
  %call.i68 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i67) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i67) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool6.not = icmp eq i32 %call.i68, 0
  br i1 %tobool6.not, label %lor.lhs.false.lor.lhs.false7_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.lor.lhs.false7_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false.lor.lhs.false7_crit_edge, %entry.lor.lhs.false7_crit_edge
  %rx_mini_max_pending = getelementptr inbounds %struct.rings_reply_data, ptr %reply_base, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %rx_mini_max_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_mini_max_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %lor.lhs.false7.lor.lhs.false16_crit_edge, label %land.lhs.true9

lor.lhs.false7.lor.lhs.false16_crit_edge:         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false16

land.lhs.true9:                                   ; preds = %lor.lhs.false7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i69) #5
  %8 = ptrtoint ptr %tmp.i69 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i69, align 4
  %call.i70 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i69) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i69) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool12.not = icmp eq i32 %call.i70, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %land.lhs.true9.cleanup_crit_edge

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false13:                                  ; preds = %land.lhs.true9
  %rx_mini_pending = getelementptr inbounds %struct.rings_reply_data, ptr %reply_base, i32 0, i32 1, i32 6
  %9 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_mini_pending, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i71) #5
  %11 = ptrtoint ptr %tmp.i71 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tmp.i71, align 4
  %call.i72 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i71) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i71) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool15.not = icmp eq i32 %call.i72, 0
  br i1 %tobool15.not, label %lor.lhs.false13.lor.lhs.false16_crit_edge, label %lor.lhs.false13.cleanup_crit_edge

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false13.lor.lhs.false16_crit_edge:        ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false13.lor.lhs.false16_crit_edge, %lor.lhs.false7.lor.lhs.false16_crit_edge
  %rx_jumbo_max_pending = getelementptr inbounds %struct.rings_reply_data, ptr %reply_base, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %rx_jumbo_max_pending to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_jumbo_max_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool17.not = icmp eq i32 %13, 0
  br i1 %tobool17.not, label %lor.lhs.false16.lor.lhs.false25_crit_edge, label %land.lhs.true18

lor.lhs.false16.lor.lhs.false25_crit_edge:        ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false25

land.lhs.true18:                                  ; preds = %lor.lhs.false16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i73) #5
  %14 = ptrtoint ptr %tmp.i73 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tmp.i73, align 4
  %call.i74 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i73) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i73) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool21.not = icmp eq i32 %call.i74, 0
  br i1 %tobool21.not, label %lor.lhs.false22, label %land.lhs.true18.cleanup_crit_edge

land.lhs.true18.cleanup_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false22:                                  ; preds = %land.lhs.true18
  %rx_jumbo_pending = getelementptr inbounds %struct.rings_reply_data, ptr %reply_base, i32 0, i32 1, i32 7
  %15 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_jumbo_pending, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i75) #5
  %17 = ptrtoint ptr %tmp.i75 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tmp.i75, align 4
  %call.i76 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i75) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i75) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool24.not = icmp eq i32 %call.i76, 0
  br i1 %tobool24.not, label %lor.lhs.false22.lor.lhs.false25_crit_edge, label %lor.lhs.false22.cleanup_crit_edge

lor.lhs.false22.cleanup_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false22.lor.lhs.false25_crit_edge:        ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22.lor.lhs.false25_crit_edge, %lor.lhs.false16.lor.lhs.false25_crit_edge
  %tx_max_pending = getelementptr inbounds %struct.rings_reply_data, ptr %reply_base, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_max_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool26.not = icmp eq i32 %19, 0
  br i1 %tobool26.not, label %lor.lhs.false25.lor.lhs.false34_crit_edge, label %land.lhs.true27

lor.lhs.false25.lor.lhs.false34_crit_edge:        ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false34

land.lhs.true27:                                  ; preds = %lor.lhs.false25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i77) #5
  %20 = ptrtoint ptr %tmp.i77 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tmp.i77, align 4
  %call.i78 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i77) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i77) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool30.not = icmp eq i32 %call.i78, 0
  br i1 %tobool30.not, label %lor.lhs.false31, label %land.lhs.true27.cleanup_crit_edge

land.lhs.true27.cleanup_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false31:                                  ; preds = %land.lhs.true27
  %tx_pending = getelementptr inbounds %struct.rings_reply_data, ptr %reply_base, i32 0, i32 1, i32 8
  %21 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_pending, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i79) #5
  %23 = ptrtoint ptr %tmp.i79 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %tmp.i79, align 4
  %call.i80 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i79) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i79) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool33.not = icmp eq i32 %call.i80, 0
  br i1 %tobool33.not, label %lor.lhs.false31.lor.lhs.false34_crit_edge, label %lor.lhs.false31.cleanup_crit_edge

lor.lhs.false31.cleanup_crit_edge:                ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false31.lor.lhs.false34_crit_edge:        ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false31.lor.lhs.false34_crit_edge, %lor.lhs.false25.lor.lhs.false34_crit_edge
  %24 = ptrtoint ptr %kernel_ringparam1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %kernel_ringparam1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool35.not = icmp eq i32 %25, 0
  br i1 %tobool35.not, label %lor.lhs.false34.if.end_crit_edge, label %land.lhs.true36

lor.lhs.false34.if.end_crit_edge:                 ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true36:                                  ; preds = %lor.lhs.false34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i81) #5
  %26 = ptrtoint ptr %tmp.i81 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %tmp.i81, align 4
  %call.i82 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i81) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i81) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %tobool39.not = icmp eq i32 %call.i82, 0
  br i1 %tobool39.not, label %land.lhs.true36.if.end_crit_edge, label %land.lhs.true36.cleanup_crit_edge

land.lhs.true36.cleanup_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true36.if.end_crit_edge:                 ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true36.if.end_crit_edge, %lor.lhs.false34.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true36.cleanup_crit_edge, %lor.lhs.false31.cleanup_crit_edge, %land.lhs.true27.cleanup_crit_edge, %lor.lhs.false22.cleanup_crit_edge, %land.lhs.true18.cleanup_crit_edge, %lor.lhs.false13.cleanup_crit_edge, %land.lhs.true9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -90, %land.lhs.true36.cleanup_crit_edge ], [ -90, %lor.lhs.false31.cleanup_crit_edge ], [ -90, %land.lhs.true27.cleanup_crit_edge ], [ -90, %lor.lhs.false22.cleanup_crit_edge ], [ -90, %land.lhs.true18.cleanup_crit_edge ], [ -90, %lor.lhs.false13.cleanup_crit_edge ], [ -90, %land.lhs.true9.cleanup_crit_edge ], [ -90, %lor.lhs.false.cleanup_crit_edge ], [ -90, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_set_rings(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %kernel_ringparam = alloca %struct.kernel_ethtool_ringparam, align 4
  %ringparam = alloca %struct.ethtool_ringparam, align 4
  %req_info = alloca %struct.ethnl_req_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kernel_ringparam) #5
  %0 = ptrtoint ptr %kernel_ringparam to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %kernel_ringparam, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ringparam) #5
  %1 = call ptr @memset(ptr %ringparam, i32 0, i32 36)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_info) #5
  %2 = call ptr @memset(ptr %req_info, i32 0, i32 12)
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %3 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %4, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %7 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_net.i, align 4
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %extack, align 4
  %call1 = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %req_info, ptr noundef %6, ptr noundef %8, ptr noundef %10, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req_info, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 44
  %13 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ethtool_ops, align 16
  %get_ringparam = getelementptr inbounds %struct.ethtool_ops, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %get_ringparam to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_ringparam, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.end.out_dev_crit_edge, label %lor.lhs.false

if.end.out_dev_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_dev

lor.lhs.false:                                    ; preds = %if.end
  %set_ringparam = getelementptr inbounds %struct.ethtool_ops, ptr %14, i32 0, i32 19
  %17 = ptrtoint ptr %set_ringparam to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_ringparam, align 4
  %tobool3.not = icmp eq ptr %18, null
  br i1 %tobool3.not, label %lor.lhs.false.out_dev_crit_edge, label %if.end5

lor.lhs.false.out_dev_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_dev

if.end5:                                          ; preds = %lor.lhs.false
  call void @rtnl_lock() #5
  %call6 = call i32 @ethnl_ops_begin(ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.out_rtnl_crit_edge, label %if.end9

if.end5.out_rtnl_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_rtnl

if.end9:                                          ; preds = %if.end5
  %19 = ptrtoint ptr %get_ringparam to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_ringparam, align 4
  %21 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %extack, align 4
  call void %20(ptr noundef %12, ptr noundef nonnull %ringparam, ptr noundef nonnull %kernel_ringparam, ptr noundef %22) #5
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ringparam, i32 0, i32 5
  %arrayidx12 = getelementptr ptr, ptr %4, i32 6
  %23 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx12, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end9.ethnl_update_u32.exit_crit_edge, label %if.end.i

if.end9.ethnl_update_u32.exit_crit_edge:          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit

if.end.i:                                         ; preds = %if.end9
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i.i.i, align 4
  %27 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_pending, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %26)
  %cmp.i = icmp eq i32 %28, %26
  br i1 %cmp.i, label %if.end.i.ethnl_update_u32.exit_crit_edge, label %if.end2.i

if.end.i.ethnl_update_u32.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %26, ptr %rx_pending, align 4
  br label %ethnl_update_u32.exit

ethnl_update_u32.exit:                            ; preds = %if.end2.i, %if.end.i.ethnl_update_u32.exit_crit_edge, %if.end9.ethnl_update_u32.exit_crit_edge
  %mod.0 = phi i8 [ 0, %if.end9.ethnl_update_u32.exit_crit_edge ], [ 0, %if.end.i.ethnl_update_u32.exit_crit_edge ], [ 1, %if.end2.i ]
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ringparam, i32 0, i32 6
  %arrayidx13 = getelementptr ptr, ptr %4, i32 7
  %30 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx13, align 4
  %tobool.not.i119 = icmp eq ptr %31, null
  br i1 %tobool.not.i119, label %ethnl_update_u32.exit.ethnl_update_u32.exit124_crit_edge, label %if.end.i122

ethnl_update_u32.exit.ethnl_update_u32.exit124_crit_edge: ; preds = %ethnl_update_u32.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit124

if.end.i122:                                      ; preds = %ethnl_update_u32.exit
  %add.ptr.i.i.i120 = getelementptr i8, ptr %31, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i.i120, align 4
  %34 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %33)
  %cmp.i121 = icmp eq i32 %35, %33
  br i1 %cmp.i121, label %if.end.i122.ethnl_update_u32.exit124_crit_edge, label %if.end2.i123

if.end.i122.ethnl_update_u32.exit124_crit_edge:   ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit124

if.end2.i123:                                     ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %rx_mini_pending, align 4
  br label %ethnl_update_u32.exit124

ethnl_update_u32.exit124:                         ; preds = %if.end2.i123, %if.end.i122.ethnl_update_u32.exit124_crit_edge, %ethnl_update_u32.exit.ethnl_update_u32.exit124_crit_edge
  %mod.1 = phi i8 [ %mod.0, %ethnl_update_u32.exit.ethnl_update_u32.exit124_crit_edge ], [ %mod.0, %if.end.i122.ethnl_update_u32.exit124_crit_edge ], [ 1, %if.end2.i123 ]
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ringparam, i32 0, i32 7
  %arrayidx14 = getelementptr ptr, ptr %4, i32 8
  %37 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx14, align 4
  %tobool.not.i125 = icmp eq ptr %38, null
  br i1 %tobool.not.i125, label %ethnl_update_u32.exit124.ethnl_update_u32.exit130_crit_edge, label %if.end.i128

ethnl_update_u32.exit124.ethnl_update_u32.exit130_crit_edge: ; preds = %ethnl_update_u32.exit124
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit130

if.end.i128:                                      ; preds = %ethnl_update_u32.exit124
  %add.ptr.i.i.i126 = getelementptr i8, ptr %38, i32 4
  %39 = ptrtoint ptr %add.ptr.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i.i.i126, align 4
  %41 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %40)
  %cmp.i127 = icmp eq i32 %42, %40
  br i1 %cmp.i127, label %if.end.i128.ethnl_update_u32.exit130_crit_edge, label %if.end2.i129

if.end.i128.ethnl_update_u32.exit130_crit_edge:   ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit130

if.end2.i129:                                     ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %40, ptr %rx_jumbo_pending, align 4
  br label %ethnl_update_u32.exit130

ethnl_update_u32.exit130:                         ; preds = %if.end2.i129, %if.end.i128.ethnl_update_u32.exit130_crit_edge, %ethnl_update_u32.exit124.ethnl_update_u32.exit130_crit_edge
  %mod.2 = phi i8 [ %mod.1, %ethnl_update_u32.exit124.ethnl_update_u32.exit130_crit_edge ], [ %mod.1, %if.end.i128.ethnl_update_u32.exit130_crit_edge ], [ 1, %if.end2.i129 ]
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ringparam, i32 0, i32 8
  %arrayidx15 = getelementptr ptr, ptr %4, i32 9
  %44 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx15, align 4
  %tobool.not.i131 = icmp eq ptr %45, null
  br i1 %tobool.not.i131, label %ethnl_update_u32.exit130.ethnl_update_u32.exit136_crit_edge, label %if.end.i134

ethnl_update_u32.exit130.ethnl_update_u32.exit136_crit_edge: ; preds = %ethnl_update_u32.exit130
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit136

if.end.i134:                                      ; preds = %ethnl_update_u32.exit130
  %add.ptr.i.i.i132 = getelementptr i8, ptr %45, i32 4
  %46 = ptrtoint ptr %add.ptr.i.i.i132 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i.i.i132, align 4
  %48 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_pending, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %47)
  %cmp.i133 = icmp eq i32 %49, %47
  br i1 %cmp.i133, label %if.end.i134.ethnl_update_u32.exit136_crit_edge, label %if.end2.i135

if.end.i134.ethnl_update_u32.exit136_crit_edge:   ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit136

if.end2.i135:                                     ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %47, ptr %tx_pending, align 4
  br label %ethnl_update_u32.exit136

ethnl_update_u32.exit136:                         ; preds = %if.end2.i135, %if.end.i134.ethnl_update_u32.exit136_crit_edge, %ethnl_update_u32.exit130.ethnl_update_u32.exit136_crit_edge
  %mod.3 = phi i8 [ %mod.2, %ethnl_update_u32.exit130.ethnl_update_u32.exit136_crit_edge ], [ %mod.2, %if.end.i134.ethnl_update_u32.exit136_crit_edge ], [ 1, %if.end2.i135 ]
  %arrayidx16 = getelementptr ptr, ptr %4, i32 10
  %51 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx16, align 4
  %tobool.not.i137 = icmp eq ptr %52, null
  br i1 %tobool.not.i137, label %ethnl_update_u32.exit136.ethnl_update_u32.exit142_crit_edge, label %if.end.i140

ethnl_update_u32.exit136.ethnl_update_u32.exit142_crit_edge: ; preds = %ethnl_update_u32.exit136
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit142

if.end.i140:                                      ; preds = %ethnl_update_u32.exit136
  %add.ptr.i.i.i138 = getelementptr i8, ptr %52, i32 4
  %53 = ptrtoint ptr %add.ptr.i.i.i138 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i.i.i138, align 4
  %55 = ptrtoint ptr %kernel_ringparam to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %kernel_ringparam, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %54)
  %cmp.i139 = icmp eq i32 %56, %54
  br i1 %cmp.i139, label %if.end.i140.ethnl_update_u32.exit142_crit_edge, label %ethnl_update_u32.exit142.thread

if.end.i140.ethnl_update_u32.exit142_crit_edge:   ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit142

ethnl_update_u32.exit142.thread:                  ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %kernel_ringparam to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %54, ptr %kernel_ringparam, align 4
  br label %if.end19

ethnl_update_u32.exit142:                         ; preds = %if.end.i140.ethnl_update_u32.exit142_crit_edge, %ethnl_update_u32.exit136.ethnl_update_u32.exit142_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mod.3)
  %tobool17.not = icmp eq i8 %mod.3, 0
  br i1 %tobool17.not, label %ethnl_update_u32.exit142.out_ops_crit_edge, label %ethnl_update_u32.exit142.if.end19_crit_edge

ethnl_update_u32.exit142.if.end19_crit_edge:      ; preds = %ethnl_update_u32.exit142
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

ethnl_update_u32.exit142.out_ops_crit_edge:       ; preds = %ethnl_update_u32.exit142
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_ops

if.end19:                                         ; preds = %ethnl_update_u32.exit142.if.end19_crit_edge, %ethnl_update_u32.exit142.thread
  %58 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_pending, align 4
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ringparam, i32 0, i32 1
  %60 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_max_pending, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp21 = icmp ugt i32 %59, %61
  br i1 %cmp21, label %if.end19.if.end42_crit_edge, label %if.else

if.end19.if.end42_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.else:                                          ; preds = %if.end19
  %62 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rx_mini_pending, align 4
  %rx_mini_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ringparam, i32 0, i32 2
  %64 = ptrtoint ptr %rx_mini_max_pending to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_mini_max_pending, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp25 = icmp ugt i32 %63, %65
  br i1 %cmp25, label %if.else.if.end42_crit_edge, label %if.else28

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.else28:                                        ; preds = %if.else
  %66 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_jumbo_pending, align 4
  %rx_jumbo_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ringparam, i32 0, i32 3
  %68 = ptrtoint ptr %rx_jumbo_max_pending to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rx_jumbo_max_pending, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp30 = icmp ugt i32 %67, %69
  br i1 %cmp30, label %if.else28.if.end42_crit_edge, label %if.else33

if.else28.if.end42_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.else33:                                        ; preds = %if.else28
  %70 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ringparam, i32 0, i32 4
  %72 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tx_max_pending, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp35 = icmp ugt i32 %71, %73
  br i1 %cmp35, label %if.else33.if.end42_crit_edge, label %if.else33.if.end49_crit_edge

if.else33.if.end49_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.else33.if.end42_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.end42:                                         ; preds = %if.else33.if.end42_crit_edge, %if.else28.if.end42_crit_edge, %if.else.if.end42_crit_edge, %if.end19.if.end42_crit_edge
  %err_attr.0.in = phi ptr [ %arrayidx12, %if.end19.if.end42_crit_edge ], [ %arrayidx13, %if.else.if.end42_crit_edge ], [ %arrayidx14, %if.else28.if.end42_crit_edge ], [ %arrayidx15, %if.else33.if.end42_crit_edge ]
  %74 = ptrtoint ptr %err_attr.0.in to i32
  call void @__asan_load4_noabort(i32 %74)
  %err_attr.0 = load ptr, ptr %err_attr.0.in, align 4
  %tobool43.not = icmp eq ptr %err_attr.0, null
  br i1 %tobool43.not, label %if.end42.if.end49_crit_edge, label %if.then44

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then44:                                        ; preds = %if.end42
  %75 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_rings.__msg) #5
  %tobool46.not = icmp eq ptr %76, null
  br i1 %tobool46.not, label %if.then44.out_ops_crit_edge, label %if.then47

if.then44.out_ops_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_ops

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @ethnl_set_rings.__msg, ptr %76, align 4
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %76, i32 0, i32 1
  %78 = ptrtoint ptr %bad_attr to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %err_attr.0, ptr %bad_attr, align 4
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %76, i32 0, i32 2
  %79 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %policy, align 4
  br label %out_ops

if.end49:                                         ; preds = %if.end42.if.end49_crit_edge, %if.else33.if.end49_crit_edge
  %80 = ptrtoint ptr %kernel_ringparam to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %kernel_ringparam, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp51.not = icmp eq i32 %81, 0
  br i1 %cmp51.not, label %if.end49.if.end66_crit_edge, label %land.lhs.true

if.end49.if.end66_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

land.lhs.true:                                    ; preds = %if.end49
  %supported_ring_params = getelementptr inbounds %struct.ethtool_ops, ptr %14, i32 0, i32 2
  %82 = ptrtoint ptr %supported_ring_params to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %supported_ring_params, align 4
  %and = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool52.not = icmp eq i32 %and, 0
  br i1 %tobool52.not, label %if.then53, label %land.lhs.true.if.end66_crit_edge

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then53:                                        ; preds = %land.lhs.true
  %84 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_rings.__msg.1) #5
  %tobool57.not = icmp eq ptr %85, null
  br i1 %tobool57.not, label %if.then53.out_ops_crit_edge, label %if.then58

if.then53.out_ops_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_ops

if.then58:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @ethnl_set_rings.__msg.1, ptr %85, align 4
  %87 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx16, align 4
  %bad_attr61 = getelementptr inbounds %struct.netlink_ext_ack, ptr %85, i32 0, i32 1
  %89 = ptrtoint ptr %bad_attr61 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %bad_attr61, align 4
  %policy62 = getelementptr inbounds %struct.netlink_ext_ack, ptr %85, i32 0, i32 2
  %90 = ptrtoint ptr %policy62 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %policy62, align 4
  br label %out_ops

if.end66:                                         ; preds = %land.lhs.true.if.end66_crit_edge, %if.end49.if.end66_crit_edge
  %91 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ethtool_ops, align 16
  %set_ringparam68 = getelementptr inbounds %struct.ethtool_ops, ptr %92, i32 0, i32 19
  %93 = ptrtoint ptr %set_ringparam68 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %set_ringparam68, align 4
  %95 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %extack, align 4
  %call70 = call i32 %94(ptr noundef %12, ptr noundef nonnull %ringparam, ptr noundef nonnull %kernel_ringparam, ptr noundef %96) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.end66.out_ops_crit_edge, label %if.end73

if.end66.out_ops_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_ops

if.end73:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  call void @ethtool_notify(ptr noundef %12, i32 noundef 17, ptr noundef null) #5
  br label %out_ops

out_ops:                                          ; preds = %if.end73, %if.end66.out_ops_crit_edge, %if.then58, %if.then53.out_ops_crit_edge, %if.then47, %if.then44.out_ops_crit_edge, %ethnl_update_u32.exit142.out_ops_crit_edge
  %ret.0 = phi i32 [ %call70, %if.end66.out_ops_crit_edge ], [ %call70, %if.end73 ], [ 0, %ethnl_update_u32.exit142.out_ops_crit_edge ], [ -22, %if.then47 ], [ -22, %if.then44.out_ops_crit_edge ], [ -95, %if.then58 ], [ -95, %if.then53.out_ops_crit_edge ]
  call void @ethnl_ops_complete(ptr noundef %12) #5
  br label %out_rtnl

out_rtnl:                                         ; preds = %out_ops, %if.end5.out_rtnl_crit_edge
  %ret.1 = phi i32 [ %call6, %if.end5.out_rtnl_crit_edge ], [ %ret.0, %out_ops ]
  call void @rtnl_unlock() #5
  br label %out_dev

out_dev:                                          ; preds = %out_rtnl, %lor.lhs.false.out_dev_crit_edge, %if.end.out_dev_crit_edge
  %ret.2 = phi i32 [ %ret.1, %out_rtnl ], [ -95, %lor.lhs.false.out_dev_crit_edge ], [ -95, %if.end.out_dev_crit_edge ]
  %97 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %req_info, align 4
  %tobool.not.i.i = icmp eq ptr %98, null
  br i1 %tobool.not.i.i, label %out_dev.cleanup_crit_edge, label %do.body1.i.i.i

out_dev.cleanup_crit_edge:                        ; preds = %out_dev
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body1.i.i.i:                                   ; preds = %out_dev
  %dev_tracker.i = getelementptr inbounds %struct.ethnl_req_info, ptr %req_info, i32 0, i32 1
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %98, i32 0, i32 119
  %call.i.i.i = call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %dev_tracker.i) #5
  %99 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !20
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %98, i32 0, i32 118
  %100 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %102 = ptrtoint ptr %101 to i32
  %103 = call i32 @llvm.read_register.i32(metadata !10) #5
  %and.i.i.i.i = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %106
  %107 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %108, %102
  %109 = inttoptr i32 %add.i.i.i to ptr
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %109, align 4
  %add13.i.i.i = add i32 %111, -1
  store i32 %add13.i.i.i, ptr %109, align 4
  %112 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !21
  %and.i.i.i.i.i = and i32 %112, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_put.exit.i.i_crit_edge, !prof !22

do.body1.i.i.i.dev_put.exit.i.i_crit_edge:        ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_put.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @warn_bogus_irq_restore() #5
  br label %dev_put.exit.i.i

dev_put.exit.i.i:                                 ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_put.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %99) #5, !srcloc !23
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit.i.i, %out_dev.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %ret.2, %out_dev.cleanup_crit_edge ], [ %ret.2, %dev_put.exit.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_info) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ringparam) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kernel_ringparam) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_parse_header_dev_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_ops_begin(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_ops_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.named.register.sp = !{!10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @ethnl_rings_get_policy, !1, !"ethnl_rings_get_policy", i1 false, i1 false}
!1 = !{!"../net/ethtool/rings.c", i32 19, i32 25}
!2 = !{ptr @ethnl_rings_request_ops, !3, !"ethnl_rings_request_ops", i1 false, i1 false}
!3 = !{!"../net/ethtool/rings.c", i32 95, i32 32}
!4 = !{ptr @ethnl_rings_set_policy, !5, !"ethnl_rings_set_policy", i1 false, i1 false}
!5 = !{!"../net/ethtool/rings.c", i32 109, i32 25}
!6 = !{ptr @ethnl_set_rings.__msg, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../net/ethtool/rings.c", i32 174, i32 3}
!8 = !{ptr @ethnl_set_rings.__msg.1, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../net/ethtool/rings.c", i32 182, i32 3}
!10 = !{!"sp"}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i64 658061, i64 658122}
!21 = !{i64 660793}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i64 661078}
