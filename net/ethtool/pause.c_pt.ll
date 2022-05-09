; ModuleID = '/llk/IR_all_yes/net/ethtool/pause.c_pt.bc'
source_filename = "../net/ethtool/pause.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.ethnl_request_ops = type { i8, i8, i16, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
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
%struct.possible_net_t = type { ptr }
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
%struct.pause_reply_data = type { %struct.ethnl_reply_data, %struct.ethtool_pauseparam, %struct.ethtool_pause_stats }
%struct.ethnl_reply_data = type { ptr }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_pause_stats = type { i64, i64 }
%struct.ethnl_req_info = type { ptr, ptr, i32 }
%struct.sk_buff = type { %union.anon.1, %union.anon.4, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, ptr, %union.anon.3 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ethnl_header_policy_stats = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_pause_get_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }>, [16 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy_stats } } }>, [16 x i8] zeroinitializer }, align 32
@ethnl_pause_request_ops = dso_local constant { %struct.ethnl_request_ops, [60 x i8] } { %struct.ethnl_request_ops { i8 21, i8 22, i16 1, i32 12, i32 40, i8 0, ptr null, ptr @pause_prepare_data, ptr @pause_reply_size, ptr @pause_fill_reply, ptr null }, [60 x i8] zeroinitializer }, align 32
@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_pause_set_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }>, [56 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer } }>, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.1 = private unnamed_addr constant [23 x i8] c"ethnl_pause_get_policy\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 19, i32 25 }
@___asan_gen_.4 = private unnamed_addr constant [24 x i8] c"ethnl_pause_request_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 117, i32 32 }
@___asan_gen_.7 = private unnamed_addr constant [23 x i8] c"ethnl_pause_set_policy\00", align 1
@___asan_gen_.8 = private constant [23 x i8] c"../net/ethtool/pause.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 131, i32 25 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 991, i32 3 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @ethnl_pause_get_policy, ptr @ethnl_pause_request_ops, ptr @ethnl_pause_set_policy, ptr @.str], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_pause_get_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_pause_request_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_pause_set_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pause_prepare_data(ptr nocapture noundef readonly %req_base, ptr noundef %reply_base, ptr nocapture noundef readnone %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reply_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reply_base, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ethtool_ops, align 16
  %get_pauseparam = getelementptr inbounds %struct.ethtool_ops, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %get_pauseparam to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_pauseparam, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pausestat = getelementptr inbounds %struct.pause_reply_data, ptr %reply_base, i32 0, i32 2
  %6 = call ptr @memset(ptr %pausestat, i32 255, i32 16)
  %call = tail call i32 @ethnl_ops_begin(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ethtool_ops, align 16
  %get_pauseparam5 = getelementptr inbounds %struct.ethtool_ops, ptr %8, i32 0, i32 21
  %9 = ptrtoint ptr %get_pauseparam5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_pauseparam5, align 4
  %pauseparam = getelementptr inbounds %struct.pause_reply_data, ptr %reply_base, i32 0, i32 1
  tail call void %10(ptr noundef %1, ptr noundef %pauseparam) #5
  %flags = getelementptr inbounds %struct.ethnl_req_info, ptr %req_base, i32 0, i32 2
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end3.if.end13_crit_edge, label %land.lhs.true

if.end3.if.end13_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end3
  %13 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ethtool_ops, align 16
  %get_pause_stats = getelementptr inbounds %struct.ethtool_ops, ptr %14, i32 0, i32 20
  %15 = ptrtoint ptr %get_pause_stats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_pause_stats, align 4
  %tobool8.not = icmp eq ptr %16, null
  br i1 %tobool8.not, label %land.lhs.true.if.end13_crit_edge, label %if.then9

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %16(ptr noundef %1, ptr noundef %pausestat) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %land.lhs.true.if.end13_crit_edge, %if.end3.if.end13_crit_edge
  tail call void @ethnl_ops_complete(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -95, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pause_reply_size(ptr nocapture noundef readonly %req_base, ptr nocapture noundef readnone %reply_base) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ethnl_req_info, ptr %req_base, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 24, i32 52
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pause_fill_reply(ptr noundef %skb, ptr nocapture noundef readonly %req_base, ptr nocapture noundef readonly %reply_base) #0 align 64 {
entry:
  %tmp.i.i16.i = alloca i64, align 8
  %tmp.i.i.i = alloca i64, align 8
  %tmp.i35 = alloca i8, align 1
  %tmp.i33 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.pause_reply_data, ptr %reply_base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool = icmp ne i32 %1, 0
  %conv = zext i1 %tobool to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #5
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_pause = getelementptr inbounds %struct.pause_reply_data, ptr %reply_base, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4 = icmp ne i32 %4, 0
  %conv9 = zext i1 %tobool4 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i33) #5
  %5 = ptrtoint ptr %tmp.i33 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv9, ptr %tmp.i33, align 1
  %call.i34 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i33) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool11.not = icmp eq i32 %call.i34, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %tx_pause = getelementptr inbounds %struct.pause_reply_data, ptr %reply_base, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool13 = icmp ne i32 %7, 0
  %conv18 = zext i1 %tobool13 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i35) #5
  %8 = ptrtoint ptr %tmp.i35 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv18, ptr %tmp.i35, align 1
  %call.i36 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i35) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool20.not = icmp eq i32 %call.i36, 0
  br i1 %tobool20.not, label %if.end, label %lor.lhs.false12.cleanup_crit_edge

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false12
  %flags = getelementptr inbounds %struct.ethnl_req_info, ptr %req_base, i32 0, i32 2
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i.i.i, align 8
  %call1.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32773, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call1.i.i.i, 0
  %tobool.not30.i = icmp eq ptr %12, null
  %tobool.not.i = select i1 %cmp.i.i.i, i1 true, i1 %tobool.not30.i
  br i1 %tobool.not.i, label %land.lhs.true.cleanup_crit_edge, label %if.end.i

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true
  %pausestat = getelementptr inbounds %struct.pause_reply_data, ptr %reply_base, i32 0, i32 2
  %13 = ptrtoint ptr %pausestat to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %pausestat, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %14)
  %cmp.i.i = icmp eq i64 %14, -1
  br i1 %cmp.i.i, label %if.end.i.lor.lhs.false.i_crit_edge, label %if.end.i.i

if.end.i.lor.lhs.false.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i.i) #5
  %15 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %tmp.i.i.i, align 8
  %call.i.i.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %tmp.i.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.lor.lhs.false.i_crit_edge, label %if.end.i.i.if.then.i.i.i_crit_edge

if.end.i.i.if.then.i.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i

if.end.i.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end.i.i.lor.lhs.false.i_crit_edge, %if.end.i.lor.lhs.false.i_crit_edge
  %rx_pause_frames.i = getelementptr inbounds %struct.pause_reply_data, ptr %reply_base, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %rx_pause_frames.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %rx_pause_frames.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %17)
  %cmp.i17.i = icmp eq i64 %17, -1
  br i1 %cmp.i17.i, label %lor.lhs.false.i.pause_put_stats.exit_crit_edge, label %if.end.i21.i

lor.lhs.false.i.pause_put_stats.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pause_put_stats.exit

if.end.i21.i:                                     ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i16.i) #5
  %18 = ptrtoint ptr %tmp.i.i16.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %tmp.i.i16.i, align 8
  %call.i.i18.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %tmp.i.i16.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i16.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i18.i)
  %tobool.not.i19.i = icmp eq i32 %call.i.i18.i, 0
  br i1 %tobool.not.i19.i, label %if.end.i21.i.pause_put_stats.exit_crit_edge, label %if.end.i21.i.if.then.i.i.i_crit_edge

if.end.i21.i.if.then.i.i.i_crit_edge:             ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i

if.end.i21.i.pause_put_stats.exit_crit_edge:      ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pause_put_stats.exit

if.then.i.i.i:                                    ; preds = %if.end.i21.i.if.then.i.i.i_crit_edge, %if.end.i.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i24.i = icmp ugt ptr %20, %12
  br i1 %cmp.i.i24.i, label %do.end.i.i.i, label %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge, !prof !18

if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nla_nest_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #5
  br label %nla_nest_cancel.exit.i

nla_nest_cancel.exit.i:                           ; preds = %do.end.i.i.i, %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge
  %21 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #5
  br label %cleanup

pause_put_stats.exit:                             ; preds = %if.end.i21.i.pause_put_stats.exit_crit_edge, %lor.lhs.false.i.pause_put_stats.exit_crit_edge
  %23 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %25 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i.i, ptr %12, align 2
  br label %cleanup

cleanup:                                          ; preds = %pause_put_stats.exit, %nla_nest_cancel.exit.i, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %lor.lhs.false12.cleanup_crit_edge ], [ -90, %lor.lhs.false.cleanup_crit_edge ], [ -90, %entry.cleanup_crit_edge ], [ 0, %pause_put_stats.exit ], [ 0, %if.end.cleanup_crit_edge ], [ -90, %nla_nest_cancel.exit.i ], [ -90, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_set_pause(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.ethtool_pauseparam, align 4
  %req_info = alloca %struct.ethnl_req_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %params) #5
  %0 = call ptr @memset(ptr %params, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_info) #5
  %1 = call ptr @memset(ptr %req_info, i32 0, i32 12)
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %6 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_net.i, align 4
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %extack, align 4
  %call1 = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %req_info, ptr noundef %5, ptr noundef %7, ptr noundef %9, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %req_info, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ethtool_ops, align 16
  %get_pauseparam = getelementptr inbounds %struct.ethtool_ops, ptr %13, i32 0, i32 21
  %14 = ptrtoint ptr %get_pauseparam to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_pauseparam, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end.out_dev_crit_edge, label %lor.lhs.false

if.end.out_dev_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_dev

lor.lhs.false:                                    ; preds = %if.end
  %set_pauseparam = getelementptr inbounds %struct.ethtool_ops, ptr %13, i32 0, i32 22
  %16 = ptrtoint ptr %set_pauseparam to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_pauseparam, align 4
  %tobool3.not = icmp eq ptr %17, null
  br i1 %tobool3.not, label %lor.lhs.false.out_dev_crit_edge, label %if.end5

lor.lhs.false.out_dev_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_dev

if.end5:                                          ; preds = %lor.lhs.false
  call void @rtnl_lock() #5
  %call6 = call i32 @ethnl_ops_begin(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.out_rtnl_crit_edge, label %if.end9

if.end5.out_rtnl_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_rtnl

if.end9:                                          ; preds = %if.end5
  %18 = ptrtoint ptr %get_pauseparam to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_pauseparam, align 4
  call void %19(ptr noundef %11, ptr noundef nonnull %params) #5
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %params, i32 0, i32 1
  %arrayidx11 = getelementptr ptr, ptr %3, i32 2
  %20 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx11, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end9.ethnl_update_bool32.exit_crit_edge, label %if.end.i

if.end9.ethnl_update_bool32.exit_crit_edge:       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_bool32.exit

if.end.i:                                         ; preds = %if.end9
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool1.i = icmp ne i8 %23, 0
  %24 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool3.i = icmp eq i32 %25, 0
  %cmp.i = xor i1 %tobool1.i, %tobool3.i
  br i1 %cmp.i, label %if.end.i.ethnl_update_bool32.exit_crit_edge, label %if.end11.i

if.end.i.ethnl_update_bool32.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_bool32.exit

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv8.i = zext i1 %tobool1.i to i32
  %26 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv8.i, ptr %autoneg, align 4
  br label %ethnl_update_bool32.exit

ethnl_update_bool32.exit:                         ; preds = %if.end11.i, %if.end.i.ethnl_update_bool32.exit_crit_edge, %if.end9.ethnl_update_bool32.exit_crit_edge
  %mod.0 = phi i8 [ 0, %if.end9.ethnl_update_bool32.exit_crit_edge ], [ 0, %if.end.i.ethnl_update_bool32.exit_crit_edge ], [ 1, %if.end11.i ]
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %params, i32 0, i32 2
  %arrayidx12 = getelementptr ptr, ptr %3, i32 3
  %27 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx12, align 4
  %tobool.not.i46 = icmp eq ptr %28, null
  br i1 %tobool.not.i46, label %ethnl_update_bool32.exit.ethnl_update_bool32.exit54_crit_edge, label %if.end.i51

ethnl_update_bool32.exit.ethnl_update_bool32.exit54_crit_edge: ; preds = %ethnl_update_bool32.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_bool32.exit54

if.end.i51:                                       ; preds = %ethnl_update_bool32.exit
  %add.ptr.i.i.i47 = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i.i47 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr.i.i.i47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool1.i48 = icmp ne i8 %30, 0
  %31 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool3.i49 = icmp eq i32 %32, 0
  %cmp.i50 = xor i1 %tobool1.i48, %tobool3.i49
  br i1 %cmp.i50, label %if.end.i51.ethnl_update_bool32.exit54_crit_edge, label %if.end11.i53

if.end.i51.ethnl_update_bool32.exit54_crit_edge:  ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_bool32.exit54

if.end11.i53:                                     ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #7
  %conv8.i52 = zext i1 %tobool1.i48 to i32
  %33 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv8.i52, ptr %rx_pause, align 4
  br label %ethnl_update_bool32.exit54

ethnl_update_bool32.exit54:                       ; preds = %if.end11.i53, %if.end.i51.ethnl_update_bool32.exit54_crit_edge, %ethnl_update_bool32.exit.ethnl_update_bool32.exit54_crit_edge
  %mod.1 = phi i8 [ %mod.0, %ethnl_update_bool32.exit.ethnl_update_bool32.exit54_crit_edge ], [ %mod.0, %if.end.i51.ethnl_update_bool32.exit54_crit_edge ], [ 1, %if.end11.i53 ]
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %params, i32 0, i32 3
  %arrayidx13 = getelementptr ptr, ptr %3, i32 4
  %34 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx13, align 4
  %tobool.not.i55 = icmp eq ptr %35, null
  br i1 %tobool.not.i55, label %ethnl_update_bool32.exit54.ethnl_update_bool32.exit63_crit_edge, label %if.end.i60

ethnl_update_bool32.exit54.ethnl_update_bool32.exit63_crit_edge: ; preds = %ethnl_update_bool32.exit54
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_bool32.exit63

if.end.i60:                                       ; preds = %ethnl_update_bool32.exit54
  %add.ptr.i.i.i56 = getelementptr i8, ptr %35, i32 4
  %36 = ptrtoint ptr %add.ptr.i.i.i56 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %add.ptr.i.i.i56, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool1.i57 = icmp ne i8 %37, 0
  %38 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool3.i58 = icmp eq i32 %39, 0
  %cmp.i59 = xor i1 %tobool1.i57, %tobool3.i58
  br i1 %cmp.i59, label %if.end.i60.ethnl_update_bool32.exit63_crit_edge, label %ethnl_update_bool32.exit63.thread

if.end.i60.ethnl_update_bool32.exit63_crit_edge:  ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_bool32.exit63

ethnl_update_bool32.exit63.thread:                ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #7
  %conv8.i61 = zext i1 %tobool1.i57 to i32
  %40 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv8.i61, ptr %tx_pause, align 4
  br label %if.end16

ethnl_update_bool32.exit63:                       ; preds = %if.end.i60.ethnl_update_bool32.exit63_crit_edge, %ethnl_update_bool32.exit54.ethnl_update_bool32.exit63_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mod.1)
  %tobool14.not = icmp eq i8 %mod.1, 0
  br i1 %tobool14.not, label %ethnl_update_bool32.exit63.out_ops_crit_edge, label %ethnl_update_bool32.exit63.if.end16_crit_edge

ethnl_update_bool32.exit63.if.end16_crit_edge:    ; preds = %ethnl_update_bool32.exit63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

ethnl_update_bool32.exit63.out_ops_crit_edge:     ; preds = %ethnl_update_bool32.exit63
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_ops

if.end16:                                         ; preds = %ethnl_update_bool32.exit63.if.end16_crit_edge, %ethnl_update_bool32.exit63.thread
  %41 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ethtool_ops, align 16
  %set_pauseparam18 = getelementptr inbounds %struct.ethtool_ops, ptr %42, i32 0, i32 22
  %43 = ptrtoint ptr %set_pauseparam18 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_pauseparam18, align 4
  %call19 = call i32 %44(ptr noundef %11, ptr noundef nonnull %params) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end16.out_ops_crit_edge, label %if.end22

if.end16.out_ops_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_ops

if.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  call void @ethtool_notify(ptr noundef %11, i32 noundef 23, ptr noundef null) #5
  br label %out_ops

out_ops:                                          ; preds = %if.end22, %if.end16.out_ops_crit_edge, %ethnl_update_bool32.exit63.out_ops_crit_edge
  %ret.0 = phi i32 [ %call19, %if.end16.out_ops_crit_edge ], [ %call19, %if.end22 ], [ 0, %ethnl_update_bool32.exit63.out_ops_crit_edge ]
  call void @ethnl_ops_complete(ptr noundef %11) #5
  br label %out_rtnl

out_rtnl:                                         ; preds = %out_ops, %if.end5.out_rtnl_crit_edge
  %ret.1 = phi i32 [ %call6, %if.end5.out_rtnl_crit_edge ], [ %ret.0, %out_ops ]
  call void @rtnl_unlock() #5
  br label %out_dev

out_dev:                                          ; preds = %out_rtnl, %lor.lhs.false.out_dev_crit_edge, %if.end.out_dev_crit_edge
  %ret.2 = phi i32 [ %ret.1, %out_rtnl ], [ -95, %lor.lhs.false.out_dev_crit_edge ], [ -95, %if.end.out_dev_crit_edge ]
  %45 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %req_info, align 4
  %tobool.not.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i, label %out_dev.cleanup_crit_edge, label %do.body1.i.i.i

out_dev.cleanup_crit_edge:                        ; preds = %out_dev
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body1.i.i.i:                                   ; preds = %out_dev
  %dev_tracker.i = getelementptr inbounds %struct.ethnl_req_info, ptr %req_info, i32 0, i32 1
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 119
  %call.i.i.i = call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %dev_tracker.i) #5
  %47 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !19
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 118
  %48 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %56, %50
  %57 = inttoptr i32 %add.i.i.i to ptr
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %add13.i.i.i = add i32 %59, -1
  store i32 %add13.i.i.i, ptr %57, align 4
  %60 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !20
  %and.i.i.i.i.i = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_put.exit.i.i_crit_edge, !prof !18

do.body1.i.i.i.dev_put.exit.i.i_crit_edge:        ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_put.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @warn_bogus_irq_restore() #5
  br label %dev_put.exit.i.i

dev_put.exit.i.i:                                 ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_put.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %47) #5, !srcloc !21
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit.i.i, %out_dev.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %ret.2, %out_dev.cleanup_crit_edge ], [ %ret.2, %dev_put.exit.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_info) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %params) #5
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
declare dso_local void @ethtool_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_ops_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.named.register.sp = !{!8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @ethnl_pause_get_policy, !1, !"ethnl_pause_get_policy", i1 false, i1 false}
!1 = !{!"../net/ethtool/pause.c", i32 19, i32 25}
!2 = !{ptr @ethnl_pause_request_ops, !3, !"ethnl_pause_request_ops", i1 false, i1 false}
!3 = !{!"../net/ethtool/pause.c", i32 117, i32 32}
!4 = !{ptr @ethnl_pause_set_policy, !5, !"ethnl_pause_set_policy", i1 false, i1 false}
!5 = !{!"../net/ethtool/pause.c", i32 131, i32 25}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/net/netlink.h", i32 991, i32 3}
!8 = !{!"sp"}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 656658, i64 656719}
!20 = !{i64 659390}
!21 = !{i64 659675}
