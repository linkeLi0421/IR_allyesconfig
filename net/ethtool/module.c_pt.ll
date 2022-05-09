; ModuleID = '/llk/IR_all_yes/net/ethtool/module.c_pt.bc'
source_filename = "../net/ethtool/module.c"
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
%struct.module_reply_data = type { %struct.ethnl_reply_data, %struct.ethtool_module_power_mode_params }
%struct.ethnl_reply_data = type { ptr }
%struct.ethtool_module_power_mode_params = type { i32, i32 }
%struct.ethnl_req_info = type { ptr, ptr, i32 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_module_get_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }>, [16 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, [16 x i8] zeroinitializer }, align 32
@ethnl_module_request_ops = dso_local constant { %struct.ethnl_request_ops, [60 x i8] } { %struct.ethnl_request_ops { i8 34, i8 35, i16 1, i32 12, i32 12, i8 0, ptr null, ptr @module_prepare_data, ptr @module_reply_size, ptr @module_fill_reply, ptr null }, [60 x i8] zeroinitializer }, align 32
@ethnl_module_set_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, { i8, i8, i16, { %struct.anon } } }>, [40 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, { i8, i8, i16, { %struct.anon } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, { i8, i8, i16, { %struct.anon } } { i8 1, i8 1, i16 0, { %struct.anon } { %struct.anon { i16 1, i16 2 } } } }>, [40 x i8] zeroinitializer }, align 32
@module_set_power_mode.__msg = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Setting power mode policy is not supported by this device\00", [38 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.1 = private unnamed_addr constant [24 x i8] c"ethnl_module_get_policy\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 23, i32 25 }
@___asan_gen_.4 = private unnamed_addr constant [25 x i8] c"ethnl_module_request_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 94, i32 32 }
@___asan_gen_.7 = private unnamed_addr constant [24 x i8] c"ethnl_module_set_policy\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 108, i32 25 }
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.11 = private constant [24 x i8] c"../net/ethtool/module.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 127, i32 3 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @ethnl_module_get_policy, ptr @ethnl_module_request_ops, ptr @ethnl_module_set_policy, ptr @module_set_power_mode.__msg], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_module_get_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_module_request_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_module_set_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @module_set_power_mode.__msg to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @module_prepare_data(ptr nocapture noundef readnone %req_base, ptr noundef %reply_base, ptr noundef readonly %info) #0 align 64 {
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
  %call = tail call i32 @ethnl_ops_begin(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %ethtool_ops.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ethtool_ops.i, align 16
  %get_module_power_mode.i = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 69
  %6 = ptrtoint ptr %get_module_power_mode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_module_power_mode.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.module_get_power_mode.exit_crit_edge, label %if.end.i

if.end.module_get_power_mode.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %module_get_power_mode.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %power.i = getelementptr inbounds %struct.module_reply_data, ptr %reply_base, i32 0, i32 1
  %call.i = tail call i32 %7(ptr noundef %3, ptr noundef %power.i, ptr noundef %cond) #5
  br label %module_get_power_mode.exit

module_get_power_mode.exit:                       ; preds = %if.end.i, %if.end.module_get_power_mode.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ 0, %if.end.module_get_power_mode.exit_crit_edge ]
  tail call void @ethnl_ops_complete(ptr noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %module_get_power_mode.exit, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %module_get_power_mode.exit ], [ %call, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @module_reply_size(ptr nocapture noundef readnone %req_base, ptr nocapture noundef readonly %reply_base) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %power = getelementptr inbounds %struct.module_reply_data, ptr %reply_base, i32 0, i32 1
  %0 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 8
  %mode = getelementptr inbounds %struct.module_reply_data, ptr %reply_base, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  %add5 = add nuw nsw i32 %spec.select, 8
  %len.1 = select i1 %tobool2.not, i32 %spec.select, i32 %add5
  ret i32 %len.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @module_fill_reply(ptr noundef %skb, ptr nocapture noundef readnone %req_base, ptr nocapture noundef readonly %reply_base) #0 align 64 {
entry:
  %tmp.i19 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %power = getelementptr inbounds %struct.module_reply_data, ptr %reply_base, i32 0, i32 1
  %0 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %conv = trunc i32 %1 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #5
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mode = getelementptr inbounds %struct.module_reply_data, ptr %reply_base, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  br i1 %tobool5.not, label %if.end.if.end13_crit_edge, label %land.lhs.true6

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true6:                                   ; preds = %if.end
  %conv9 = trunc i32 %4 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i19) #5
  %5 = ptrtoint ptr %tmp.i19 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv9, ptr %tmp.i19, align 1
  %call.i20 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i19) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool11.not = icmp eq i32 %call.i20, 0
  br i1 %tobool11.not, label %land.lhs.true6.if.end13_crit_edge, label %land.lhs.true6.cleanup_crit_edge

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true6.if.end13_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true6.if.end13_crit_edge, %if.end.if.end13_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %land.lhs.true6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -90, %land.lhs.true.cleanup_crit_edge ], [ -90, %land.lhs.true6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_set_module(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %power.i = alloca %struct.ethtool_module_power_mode_params, align 8
  %power_new.i = alloca %struct.ethtool_module_power_mode_params, align 4
  %req_info = alloca %struct.ethnl_req_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_info) #5
  %0 = call ptr @memset(ptr %req_info, i32 0, i32 12)
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %1 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %5 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_net.i, align 4
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %extack, align 4
  %call1 = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %req_info, ptr noundef %4, ptr noundef %6, ptr noundef %8, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req_info, align 4
  call void @rtnl_lock() #5
  %call3 = call i32 @ethnl_ops_begin(ptr noundef %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.out_rtnl_crit_edge, label %if.end6

if.end.out_rtnl_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_rtnl

if.end6:                                          ; preds = %if.end
  %11 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %extack, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %power.i) #5
  %13 = ptrtoint ptr %power.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %power.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %power_new.i) #5
  %14 = getelementptr inbounds %struct.ethtool_module_power_mode_params, ptr %power_new.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4, !annotation !18
  %ethtool_ops.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 44
  %16 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ethtool_ops.i, align 16
  %arrayidx.i = getelementptr ptr, ptr %2, i32 2
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end6.if.end11.thread_crit_edge, label %if.end.i

if.end6.if.end11.thread_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.thread

if.end.i:                                         ; preds = %if.end6
  %get_module_power_mode.i = getelementptr inbounds %struct.ethtool_ops, ptr %17, i32 0, i32 69
  %20 = ptrtoint ptr %get_module_power_mode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_module_power_mode.i, align 4
  %tobool1.not.i = icmp eq ptr %21, null
  br i1 %tobool1.not.i, label %if.end.i.do.body.i_crit_edge, label %lor.lhs.false.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %set_module_power_mode.i = getelementptr inbounds %struct.ethtool_ops, ptr %17, i32 0, i32 70
  %22 = ptrtoint ptr %set_module_power_mode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_module_power_mode.i, align 4
  %tobool2.not.i = icmp eq ptr %23, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.do.body.i_crit_edge, label %if.end8.i

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @module_set_power_mode.__msg) #5
  %tobool4.not.i = icmp eq ptr %12, null
  br i1 %tobool4.not.i, label %do.body.i.module_set_power_mode.exit.thread_crit_edge, label %if.then5.i

do.body.i.module_set_power_mode.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %module_set_power_mode.exit.thread

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @module_set_power_mode.__msg, ptr %12, align 4
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %12, i32 0, i32 1
  %27 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %bad_attr.i, align 4
  %policy.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %12, i32 0, i32 2
  %28 = ptrtoint ptr %policy.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %policy.i, align 4
  br label %module_set_power_mode.exit.thread

if.end8.i:                                        ; preds = %lor.lhs.false.i
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr.i.i.i, align 1
  %conv.i = zext i8 %30 to i32
  %31 = ptrtoint ptr %power_new.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv.i, ptr %power_new.i, align 4
  %call12.i = call i32 %21(ptr noundef %10, ptr noundef nonnull %power.i, ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp.i = icmp slt i32 %call12.i, 0
  br i1 %cmp.i, label %if.end8.i.module_set_power_mode.exit.thread_crit_edge, label %if.end15.i

if.end8.i.module_set_power_mode.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %module_set_power_mode.exit.thread

if.end15.i:                                       ; preds = %if.end8.i
  %32 = ptrtoint ptr %power_new.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %power_new.i, align 4
  %34 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %power.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp18.i = icmp eq i32 %33, %35
  br i1 %cmp18.i, label %if.end15.i.if.end11.thread_crit_edge, label %module_set_power_mode.exit

if.end15.i.if.end11.thread_crit_edge:             ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.thread

module_set_power_mode.exit.thread:                ; preds = %if.end8.i.module_set_power_mode.exit.thread_crit_edge, %if.then5.i, %do.body.i.module_set_power_mode.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call12.i, %if.end8.i.module_set_power_mode.exit.thread_crit_edge ], [ -95, %do.body.i.module_set_power_mode.exit.thread_crit_edge ], [ -95, %if.then5.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %power_new.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %power.i) #5
  br label %out_ops

if.end11.thread:                                  ; preds = %if.end15.i.if.end11.thread_crit_edge, %if.end6.if.end11.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %power_new.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %power.i) #5
  br label %out_ops

module_set_power_mode.exit:                       ; preds = %if.end15.i
  %36 = ptrtoint ptr %set_module_power_mode.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_module_power_mode.i, align 4
  %call23.i = call i32 %37(ptr noundef %10, ptr noundef nonnull %power_new.i, ptr noundef %12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %power_new.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %power.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp9 = icmp slt i32 %call23.i, 0
  br i1 %cmp9, label %module_set_power_mode.exit.out_ops_crit_edge, label %if.end13

module_set_power_mode.exit.out_ops_crit_edge:     ; preds = %module_set_power_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_ops

if.end13:                                         ; preds = %module_set_power_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @ethtool_notify(ptr noundef %10, i32 noundef 36, ptr noundef null) #5
  br label %out_ops

out_ops:                                          ; preds = %if.end13, %module_set_power_mode.exit.out_ops_crit_edge, %if.end11.thread, %module_set_power_mode.exit.thread
  %retval.0.i32 = phi i32 [ %retval.0.i.ph, %module_set_power_mode.exit.thread ], [ %call23.i, %module_set_power_mode.exit.out_ops_crit_edge ], [ %call23.i, %if.end13 ], [ 0, %if.end11.thread ]
  call void @ethnl_ops_complete(ptr noundef %10) #5
  br label %out_rtnl

out_rtnl:                                         ; preds = %out_ops, %if.end.out_rtnl_crit_edge
  %ret.0 = phi i32 [ %call3, %if.end.out_rtnl_crit_edge ], [ %retval.0.i32, %out_ops ]
  call void @rtnl_unlock() #5
  %38 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %req_info, align 4
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %out_rtnl.cleanup_crit_edge, label %do.body1.i.i.i

out_rtnl.cleanup_crit_edge:                       ; preds = %out_rtnl
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body1.i.i.i:                                   ; preds = %out_rtnl
  %dev_tracker.i = getelementptr inbounds %struct.ethnl_req_info, ptr %req_info, i32 0, i32 1
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 119
  %call.i.i.i = call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %dev_tracker.i) #5
  %40 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !19
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 118
  %41 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %49, %43
  %50 = inttoptr i32 %add.i.i.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add13.i.i.i = add i32 %52, -1
  store i32 %add13.i.i.i, ptr %50, align 4
  %53 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !20
  %and.i.i.i.i.i = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_put.exit.i.i_crit_edge, !prof !21

do.body1.i.i.i.dev_put.exit.i.i_crit_edge:        ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_put.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @warn_bogus_irq_restore() #5
  br label %dev_put.exit.i.i

dev_put.exit.i.i:                                 ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_put.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %40) #5, !srcloc !22
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit.i.i, %out_rtnl.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %ret.0, %out_rtnl.cleanup_crit_edge ], [ %ret.0, %dev_put.exit.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_info) #5
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
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

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

!0 = !{ptr @ethnl_module_get_policy, !1, !"ethnl_module_get_policy", i1 false, i1 false}
!1 = !{!"../net/ethtool/module.c", i32 23, i32 25}
!2 = !{ptr @ethnl_module_request_ops, !3, !"ethnl_module_request_ops", i1 false, i1 false}
!3 = !{!"../net/ethtool/module.c", i32 94, i32 32}
!4 = !{ptr @ethnl_module_set_policy, !5, !"ethnl_module_set_policy", i1 false, i1 false}
!5 = !{!"../net/ethtool/module.c", i32 108, i32 25}
!6 = !{ptr @module_set_power_mode.__msg, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../net/ethtool/module.c", i32 127, i32 3}
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
!18 = !{!"auto-init"}
!19 = !{i64 613355, i64 613416}
!20 = !{i64 616087}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 616372}
