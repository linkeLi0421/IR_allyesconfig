; ModuleID = '/llk/IR_all_yes/net/ethtool/debug.c_pt.bc'
source_filename = "../net/ethtool/debug.c"
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
%struct.debug_reply_data = type { %struct.ethnl_reply_data, i32 }
%struct.ethnl_reply_data = type { ptr }
%struct.ethnl_req_info = type { ptr, ptr, i32 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_debug_get_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }>, [16 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, [16 x i8] zeroinitializer }, align 32
@ethnl_debug_request_ops = dso_local constant { %struct.ethnl_request_ops, [60 x i8] } { %struct.ethnl_request_ops { i8 7, i8 7, i16 1, i32 12, i32 8, i8 0, ptr null, ptr @debug_prepare_data, ptr @debug_reply_size, ptr @debug_fill_reply, ptr null }, [60 x i8] zeroinitializer }, align 32
@ethnl_debug_set_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy }>, [40 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer } }>, [40 x i8] zeroinitializer }, align 32
@netif_msg_class_names = external dso_local constant [0 x [32 x i8]], align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.1 = private unnamed_addr constant [23 x i8] c"ethnl_debug_get_policy\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 19, i32 25 }
@___asan_gen_.4 = private unnamed_addr constant [24 x i8] c"ethnl_debug_request_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 66, i32 32 }
@___asan_gen_.7 = private unnamed_addr constant [23 x i8] c"ethnl_debug_set_policy\00", align 1
@___asan_gen_.8 = private constant [23 x i8] c"../net/ethtool/debug.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 80, i32 25 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @ethnl_debug_get_policy, ptr @ethnl_debug_request_ops, ptr @ethnl_debug_set_policy], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_debug_get_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_debug_request_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_debug_set_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debug_prepare_data(ptr nocapture noundef readnone %req_base, ptr nocapture noundef %reply_base, ptr nocapture noundef readnone %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reply_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reply_base, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ethtool_ops, align 16
  %get_msglevel = getelementptr inbounds %struct.ethtool_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %get_msglevel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_msglevel, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @ethnl_ops_begin(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ethtool_ops, align 16
  %get_msglevel5 = getelementptr inbounds %struct.ethtool_ops, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %get_msglevel5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_msglevel5, align 4
  %call6 = tail call i32 %9(ptr noundef %1) #4
  %msg_mask = getelementptr inbounds %struct.debug_reply_data, ptr %reply_base, i32 0, i32 1
  %10 = ptrtoint ptr %msg_mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call6, ptr %msg_mask, align 4
  tail call void @ethnl_ops_complete(ptr noundef %1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -95, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debug_reply_size(ptr nocapture noundef readonly %req_base, ptr noundef %reply_base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ethnl_req_info, ptr %req_base, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %msg_mask = getelementptr inbounds %struct.debug_reply_data, ptr %reply_base, i32 0, i32 1
  %call = tail call i32 @ethnl_bitset32_size(ptr noundef %msg_mask, ptr noundef null, i32 noundef 15, ptr noundef nonnull @netif_msg_class_names, i1 noundef zeroext %tobool) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debug_fill_reply(ptr noundef %skb, ptr nocapture noundef readonly %req_base, ptr noundef %reply_base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ethnl_req_info, ptr %req_base, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %msg_mask = getelementptr inbounds %struct.debug_reply_data, ptr %reply_base, i32 0, i32 1
  %call = tail call i32 @ethnl_put_bitset32(ptr noundef %skb, i32 noundef 2, ptr noundef %msg_mask, ptr noundef null, i32 noundef 15, ptr noundef nonnull @netif_msg_class_names, i1 noundef zeroext %tobool) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_set_debug(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %req_info = alloca %struct.ethnl_req_info, align 4
  %mod = alloca i8, align 1
  %msg_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_info) #4
  %0 = call ptr @memset(ptr %req_info, i32 0, i32 12)
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %1 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attrs, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mod) #4
  %3 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %mod, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg_mask) #4
  %4 = ptrtoint ptr %msg_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %msg_mask, align 4, !annotation !16
  %arrayidx = getelementptr ptr, ptr %2, i32 1
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
  %call1 = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %req_info, ptr noundef %6, ptr noundef %8, ptr noundef %10, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req_info, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 44
  %13 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ethtool_ops, align 16
  %get_msglevel = getelementptr inbounds %struct.ethtool_ops, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %get_msglevel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_msglevel, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.end.out_dev_crit_edge, label %lor.lhs.false

if.end.out_dev_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_dev

lor.lhs.false:                                    ; preds = %if.end
  %set_msglevel = getelementptr inbounds %struct.ethtool_ops, ptr %14, i32 0, i32 9
  %17 = ptrtoint ptr %set_msglevel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_msglevel, align 4
  %tobool4.not = icmp eq ptr %18, null
  br i1 %tobool4.not, label %lor.lhs.false.out_dev_crit_edge, label %if.end6

lor.lhs.false.out_dev_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_dev

if.end6:                                          ; preds = %lor.lhs.false
  call void @rtnl_lock() #4
  %call7 = call i32 @ethnl_ops_begin(ptr noundef %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.out_rtnl_crit_edge, label %if.end10

if.end6.out_rtnl_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_rtnl

if.end10:                                         ; preds = %if.end6
  %19 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ethtool_ops, align 16
  %get_msglevel12 = getelementptr inbounds %struct.ethtool_ops, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %get_msglevel12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_msglevel12, align 4
  %call13 = call i32 %22(ptr noundef %12) #4
  %23 = ptrtoint ptr %msg_mask to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call13, ptr %msg_mask, align 4
  %arrayidx14 = getelementptr ptr, ptr %2, i32 2
  %24 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx14, align 4
  %26 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %extack, align 4
  %call16 = call i32 @ethnl_update_bitset32(ptr noundef nonnull %msg_mask, i32 noundef 15, ptr noundef %25, ptr noundef nonnull @netif_msg_class_names, ptr noundef %27, ptr noundef nonnull %mod) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end10.out_ops_crit_edge, label %lor.lhs.false18

if.end10.out_ops_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_ops

lor.lhs.false18:                                  ; preds = %if.end10
  %28 = ptrtoint ptr %mod to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mod, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool19.not = icmp eq i8 %29, 0
  br i1 %tobool19.not, label %lor.lhs.false18.out_ops_crit_edge, label %if.end21

lor.lhs.false18.out_ops_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_ops

if.end21:                                         ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ethtool_ops, align 16
  %set_msglevel23 = getelementptr inbounds %struct.ethtool_ops, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %set_msglevel23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_msglevel23, align 4
  %34 = ptrtoint ptr %msg_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_mask, align 4
  call void %33(ptr noundef %12, i32 noundef %35) #4
  call void @ethtool_notify(ptr noundef %12, i32 noundef 8, ptr noundef null) #4
  br label %out_ops

out_ops:                                          ; preds = %if.end21, %lor.lhs.false18.out_ops_crit_edge, %if.end10.out_ops_crit_edge
  call void @ethnl_ops_complete(ptr noundef %12) #4
  br label %out_rtnl

out_rtnl:                                         ; preds = %out_ops, %if.end6.out_rtnl_crit_edge
  %ret.0 = phi i32 [ %call7, %if.end6.out_rtnl_crit_edge ], [ %call16, %out_ops ]
  call void @rtnl_unlock() #4
  br label %out_dev

out_dev:                                          ; preds = %out_rtnl, %lor.lhs.false.out_dev_crit_edge, %if.end.out_dev_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_rtnl ], [ -95, %lor.lhs.false.out_dev_crit_edge ], [ -95, %if.end.out_dev_crit_edge ]
  %36 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %req_info, align 4
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %out_dev.cleanup_crit_edge, label %do.body1.i.i.i

out_dev.cleanup_crit_edge:                        ; preds = %out_dev
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body1.i.i.i:                                   ; preds = %out_dev
  %dev_tracker.i = getelementptr inbounds %struct.ethnl_req_info, ptr %req_info, i32 0, i32 1
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 119
  %call.i.i.i = call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %dev_tracker.i) #4
  %38 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !18
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 118
  %39 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  %42 = call i32 @llvm.read_register.i32(metadata !6) #4
  %and.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %47, %41
  %48 = inttoptr i32 %add.i.i.i to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %add13.i.i.i = add i32 %50, -1
  store i32 %add13.i.i.i, ptr %48, align 4
  %51 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !19
  %and.i.i.i.i.i = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_put.exit.i.i_crit_edge, !prof !20

do.body1.i.i.i.dev_put.exit.i.i_crit_edge:        ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_put.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @warn_bogus_irq_restore() #4
  br label %dev_put.exit.i.i

dev_put.exit.i.i:                                 ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_put.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %38) #4, !srcloc !21
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit.i.i, %out_dev.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %ret.1, %out_dev.cleanup_crit_edge ], [ %ret.1, %dev_put.exit.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_mask) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mod) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_info) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_parse_header_dev_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_ops_begin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_update_bitset32(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_ops_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_bitset32_size(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_put_bitset32(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.named.register.sp = !{!6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @ethnl_debug_get_policy, !1, !"ethnl_debug_get_policy", i1 false, i1 false}
!1 = !{!"../net/ethtool/debug.c", i32 19, i32 25}
!2 = !{ptr @ethnl_debug_request_ops, !3, !"ethnl_debug_request_ops", i1 false, i1 false}
!3 = !{!"../net/ethtool/debug.c", i32 66, i32 32}
!4 = !{ptr @ethnl_debug_set_policy, !5, !"ethnl_debug_set_policy", i1 false, i1 false}
!5 = !{!"../net/ethtool/debug.c", i32 80, i32 25}
!6 = !{!"sp"}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"auto-init"}
!17 = !{i8 0, i8 2}
!18 = !{i64 655054, i64 655115}
!19 = !{i64 657786}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 658071}
