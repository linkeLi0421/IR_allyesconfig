; ModuleID = '/llk/IR_all_yes/net/ethtool/channels.c_pt.bc'
source_filename = "../net/ethtool/channels.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.ethnl_request_ops = type { i8, i8, i16, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.0, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.174, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
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
%union.anon.174 = type { ptr }
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
%struct.channels_reply_data = type { %struct.ethnl_reply_data, %struct.ethtool_channels }
%struct.ethnl_reply_data = type { ptr }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethnl_req_info = type { ptr, ptr, i32 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_channels_get_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }>, [16 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, [16 x i8] zeroinitializer }, align 32
@ethnl_channels_request_ops = dso_local constant { %struct.ethnl_request_ops, [60 x i8] } { %struct.ethnl_request_ops { i8 17, i8 18, i16 1, i32 12, i32 40, i8 0, ptr null, ptr @channels_prepare_data, ptr @channels_reply_size, ptr @channels_fill_reply, ptr null }, [60 x i8] zeroinitializer }, align 32
@ethnl_channels_set_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }>, [48 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer } }>, [48 x i8] zeroinitializer }, align 32
@ethnl_set_channels.__msg = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"requested channel count exceeds maximum\00", [56 x i8] zeroinitializer }, align 32
@ethnl_set_channels.__msg.1 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"requested channel counts would result in no RX or TX channel being configured\00", [50 x i8] zeroinitializer }, align 32
@ethnl_set_channels.__msg.2 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"requested channel counts are too low for existing indirection table settings\00", [51 x i8] zeroinitializer }, align 32
@ethnl_set_channels.__msg.3 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"requested channel counts are too low for existing zerocopy AF_XDP sockets\00", [54 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.4 = private unnamed_addr constant [26 x i8] c"ethnl_channels_get_policy\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 20, i32 25 }
@___asan_gen_.7 = private unnamed_addr constant [27 x i8] c"ethnl_channels_request_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 89, i32 32 }
@___asan_gen_.10 = private unnamed_addr constant [26 x i8] c"ethnl_channels_set_policy\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 103, i32 25 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 170, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 186, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 198, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.23 = private constant [26 x i8] c"../net/ethtool/channels.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 208, i32 4 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @ethnl_channels_get_policy, ptr @ethnl_channels_request_ops, ptr @ethnl_channels_set_policy, ptr @ethnl_set_channels.__msg, ptr @ethnl_set_channels.__msg.1, ptr @ethnl_set_channels.__msg.2, ptr @ethnl_set_channels.__msg.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_channels_get_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_channels_request_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_channels_set_policy to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_set_channels.__msg to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_set_channels.__msg.1 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_set_channels.__msg.2 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_set_channels.__msg.3 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @channels_prepare_data(ptr nocapture noundef readnone %req_base, ptr noundef %reply_base, ptr nocapture noundef readnone %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reply_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reply_base, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ethtool_ops, align 16
  %get_channels = getelementptr inbounds %struct.ethtool_ops, ptr %3, i32 0, i32 42
  %4 = ptrtoint ptr %get_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_channels, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @ethnl_ops_begin(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ethtool_ops, align 16
  %get_channels5 = getelementptr inbounds %struct.ethtool_ops, ptr %7, i32 0, i32 42
  %8 = ptrtoint ptr %get_channels5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_channels5, align 4
  %channels = getelementptr inbounds %struct.channels_reply_data, ptr %reply_base, i32 0, i32 1
  tail call void %9(ptr noundef %1, ptr noundef %channels) #6
  tail call void @ethnl_ops_complete(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -95, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @channels_reply_size(ptr nocapture noundef readnone %req_base, ptr nocapture noundef readnone %reply_base) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 64
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @channels_fill_reply(ptr noundef %skb, ptr nocapture noundef readnone %req_base, ptr nocapture noundef readonly %reply_base) #0 align 64 {
entry:
  %tmp.i67 = alloca i32, align 4
  %tmp.i65 = alloca i32, align 4
  %tmp.i63 = alloca i32, align 4
  %tmp.i61 = alloca i32, align 4
  %tmp.i59 = alloca i32, align 4
  %tmp.i57 = alloca i32, align 4
  %tmp.i55 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %max_rx = getelementptr inbounds %struct.channels_reply_data, ptr %reply_base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %max_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.lor.lhs.false6_crit_edge, label %land.lhs.true

entry.lor.lhs.false6_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false6

land.lhs.true:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %rx_count = getelementptr inbounds %struct.channels_reply_data, ptr %reply_base, i32 0, i32 1, i32 5
  %3 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_count, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i55) #6
  %5 = ptrtoint ptr %tmp.i55 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tmp.i55, align 4
  %call.i56 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i55) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i55) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool5.not = icmp eq i32 %call.i56, 0
  br i1 %tobool5.not, label %lor.lhs.false.lor.lhs.false6_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.lor.lhs.false6_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false.lor.lhs.false6_crit_edge, %entry.lor.lhs.false6_crit_edge
  %max_tx = getelementptr inbounds %struct.channels_reply_data, ptr %reply_base, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %max_tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %lor.lhs.false6.lor.lhs.false15_crit_edge, label %land.lhs.true8

lor.lhs.false6.lor.lhs.false15_crit_edge:         ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false15

land.lhs.true8:                                   ; preds = %lor.lhs.false6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i57) #6
  %8 = ptrtoint ptr %tmp.i57 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i57, align 4
  %call.i58 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i57) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i57) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool11.not = icmp eq i32 %call.i58, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %land.lhs.true8.cleanup_crit_edge

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false12:                                  ; preds = %land.lhs.true8
  %tx_count = getelementptr inbounds %struct.channels_reply_data, ptr %reply_base, i32 0, i32 1, i32 6
  %9 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_count, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i59) #6
  %11 = ptrtoint ptr %tmp.i59 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tmp.i59, align 4
  %call.i60 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i59) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i59) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool14.not = icmp eq i32 %call.i60, 0
  br i1 %tobool14.not, label %lor.lhs.false12.lor.lhs.false15_crit_edge, label %lor.lhs.false12.cleanup_crit_edge

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false12.lor.lhs.false15_crit_edge:        ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12.lor.lhs.false15_crit_edge, %lor.lhs.false6.lor.lhs.false15_crit_edge
  %max_other = getelementptr inbounds %struct.channels_reply_data, ptr %reply_base, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %max_other to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_other, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool16.not = icmp eq i32 %13, 0
  br i1 %tobool16.not, label %lor.lhs.false15.lor.lhs.false24_crit_edge, label %land.lhs.true17

lor.lhs.false15.lor.lhs.false24_crit_edge:        ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false24

land.lhs.true17:                                  ; preds = %lor.lhs.false15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i61) #6
  %14 = ptrtoint ptr %tmp.i61 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tmp.i61, align 4
  %call.i62 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i61) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i61) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool20.not = icmp eq i32 %call.i62, 0
  br i1 %tobool20.not, label %lor.lhs.false21, label %land.lhs.true17.cleanup_crit_edge

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false21:                                  ; preds = %land.lhs.true17
  %other_count = getelementptr inbounds %struct.channels_reply_data, ptr %reply_base, i32 0, i32 1, i32 7
  %15 = ptrtoint ptr %other_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %other_count, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i63) #6
  %17 = ptrtoint ptr %tmp.i63 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tmp.i63, align 4
  %call.i64 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i63) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i63) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool23.not = icmp eq i32 %call.i64, 0
  br i1 %tobool23.not, label %lor.lhs.false21.lor.lhs.false24_crit_edge, label %lor.lhs.false21.cleanup_crit_edge

lor.lhs.false21.cleanup_crit_edge:                ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false21.lor.lhs.false24_crit_edge:        ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false21.lor.lhs.false24_crit_edge, %lor.lhs.false15.lor.lhs.false24_crit_edge
  %max_combined = getelementptr inbounds %struct.channels_reply_data, ptr %reply_base, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %max_combined to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_combined, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool25.not = icmp eq i32 %19, 0
  br i1 %tobool25.not, label %lor.lhs.false24.if.end_crit_edge, label %land.lhs.true26

lor.lhs.false24.if.end_crit_edge:                 ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true26:                                  ; preds = %lor.lhs.false24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i65) #6
  %20 = ptrtoint ptr %tmp.i65 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tmp.i65, align 4
  %call.i66 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i65) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i65) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool29.not = icmp eq i32 %call.i66, 0
  br i1 %tobool29.not, label %lor.lhs.false30, label %land.lhs.true26.cleanup_crit_edge

land.lhs.true26.cleanup_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false30:                                  ; preds = %land.lhs.true26
  %combined_count = getelementptr inbounds %struct.channels_reply_data, ptr %reply_base, i32 0, i32 1, i32 8
  %21 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %combined_count, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i67) #6
  %23 = ptrtoint ptr %tmp.i67 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %tmp.i67, align 4
  %call.i68 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i67) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i67) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool32.not = icmp eq i32 %call.i68, 0
  br i1 %tobool32.not, label %lor.lhs.false30.if.end_crit_edge, label %lor.lhs.false30.cleanup_crit_edge

lor.lhs.false30.cleanup_crit_edge:                ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false30.if.end_crit_edge:                 ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false30.if.end_crit_edge, %lor.lhs.false24.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false30.cleanup_crit_edge, %land.lhs.true26.cleanup_crit_edge, %lor.lhs.false21.cleanup_crit_edge, %land.lhs.true17.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -90, %lor.lhs.false30.cleanup_crit_edge ], [ -90, %land.lhs.true26.cleanup_crit_edge ], [ -90, %lor.lhs.false21.cleanup_crit_edge ], [ -90, %land.lhs.true17.cleanup_crit_edge ], [ -90, %lor.lhs.false12.cleanup_crit_edge ], [ -90, %land.lhs.true8.cleanup_crit_edge ], [ -90, %lor.lhs.false.cleanup_crit_edge ], [ -90, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_set_channels(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %channels = alloca %struct.ethtool_channels, align 4
  %req_info = alloca %struct.ethnl_req_info, align 4
  %max_rx_in_use = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %channels) #6
  %0 = call ptr @memset(ptr %channels, i32 0, i32 36)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_info) #6
  %1 = call ptr @memset(ptr %req_info, i32 0, i32 12)
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_rx_in_use) #6
  %4 = ptrtoint ptr %max_rx_in_use to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %max_rx_in_use, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 1
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
  %call1 = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %req_info, ptr noundef %6, ptr noundef %8, ptr noundef %10, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req_info, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 44
  %13 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ethtool_ops, align 16
  %get_channels = getelementptr inbounds %struct.ethtool_ops, ptr %14, i32 0, i32 42
  %15 = ptrtoint ptr %get_channels to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_channels, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.end.out_dev_crit_edge, label %lor.lhs.false

if.end.out_dev_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_dev

lor.lhs.false:                                    ; preds = %if.end
  %set_channels = getelementptr inbounds %struct.ethtool_ops, ptr %14, i32 0, i32 43
  %17 = ptrtoint ptr %set_channels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_channels, align 4
  %tobool3.not = icmp eq ptr %18, null
  br i1 %tobool3.not, label %lor.lhs.false.out_dev_crit_edge, label %if.end5

lor.lhs.false.out_dev_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_dev

if.end5:                                          ; preds = %lor.lhs.false
  call void @rtnl_lock() #6
  %call6 = call i32 @ethnl_ops_begin(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.out_rtnl_crit_edge, label %if.end9

if.end5.out_rtnl_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_rtnl

if.end9:                                          ; preds = %if.end5
  %19 = ptrtoint ptr %get_channels to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_channels, align 4
  call void %20(ptr noundef %12, ptr noundef nonnull %channels) #6
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 8
  %21 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %combined_count, align 4
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 5
  %23 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_count, align 4
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 6
  %25 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_count, align 4
  %27 = call i32 @llvm.umax.i32(i32 %24, i32 %26)
  %add = add i32 %27, %22
  %arrayidx13 = getelementptr ptr, ptr %3, i32 6
  %28 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx13, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end9.ethnl_update_u32.exit_crit_edge, label %if.end.i

if.end9.ethnl_update_u32.exit_crit_edge:          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %ethnl_update_u32.exit

if.end.i:                                         ; preds = %if.end9
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %31)
  %cmp.i = icmp eq i32 %24, %31
  br i1 %cmp.i, label %if.end.i.ethnl_update_u32.exit_crit_edge, label %if.end2.i

if.end.i.ethnl_update_u32.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ethnl_update_u32.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %rx_count, align 4
  br label %ethnl_update_u32.exit

ethnl_update_u32.exit:                            ; preds = %if.end2.i, %if.end.i.ethnl_update_u32.exit_crit_edge, %if.end9.ethnl_update_u32.exit_crit_edge
  %mod.0 = phi i8 [ 0, %if.end9.ethnl_update_u32.exit_crit_edge ], [ 0, %if.end.i.ethnl_update_u32.exit_crit_edge ], [ 1, %if.end2.i ]
  %arrayidx15 = getelementptr ptr, ptr %3, i32 7
  %33 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx15, align 4
  %tobool.not.i213 = icmp eq ptr %34, null
  br i1 %tobool.not.i213, label %ethnl_update_u32.exit.ethnl_update_u32.exit218_crit_edge, label %if.end.i216

ethnl_update_u32.exit.ethnl_update_u32.exit218_crit_edge: ; preds = %ethnl_update_u32.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ethnl_update_u32.exit218

if.end.i216:                                      ; preds = %ethnl_update_u32.exit
  %add.ptr.i.i.i214 = getelementptr i8, ptr %34, i32 4
  %35 = ptrtoint ptr %add.ptr.i.i.i214 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i.i.i214, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %36)
  %cmp.i215 = icmp eq i32 %26, %36
  br i1 %cmp.i215, label %if.end.i216.ethnl_update_u32.exit218_crit_edge, label %if.end2.i217

if.end.i216.ethnl_update_u32.exit218_crit_edge:   ; preds = %if.end.i216
  call void @__sanitizer_cov_trace_pc() #8
  br label %ethnl_update_u32.exit218

if.end2.i217:                                     ; preds = %if.end.i216
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %tx_count to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %tx_count, align 4
  br label %ethnl_update_u32.exit218

ethnl_update_u32.exit218:                         ; preds = %if.end2.i217, %if.end.i216.ethnl_update_u32.exit218_crit_edge, %ethnl_update_u32.exit.ethnl_update_u32.exit218_crit_edge
  %mod.1 = phi i8 [ %mod.0, %ethnl_update_u32.exit.ethnl_update_u32.exit218_crit_edge ], [ %mod.0, %if.end.i216.ethnl_update_u32.exit218_crit_edge ], [ 1, %if.end2.i217 ]
  %other_count = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 7
  %arrayidx16 = getelementptr ptr, ptr %3, i32 8
  %38 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx16, align 4
  %tobool.not.i219 = icmp eq ptr %39, null
  br i1 %tobool.not.i219, label %ethnl_update_u32.exit218.ethnl_update_u32.exit224_crit_edge, label %if.end.i222

ethnl_update_u32.exit218.ethnl_update_u32.exit224_crit_edge: ; preds = %ethnl_update_u32.exit218
  call void @__sanitizer_cov_trace_pc() #8
  br label %ethnl_update_u32.exit224

if.end.i222:                                      ; preds = %ethnl_update_u32.exit218
  %add.ptr.i.i.i220 = getelementptr i8, ptr %39, i32 4
  %40 = ptrtoint ptr %add.ptr.i.i.i220 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i.i.i220, align 4
  %42 = ptrtoint ptr %other_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %other_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %41)
  %cmp.i221 = icmp eq i32 %43, %41
  br i1 %cmp.i221, label %if.end.i222.ethnl_update_u32.exit224_crit_edge, label %if.end2.i223

if.end.i222.ethnl_update_u32.exit224_crit_edge:   ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #8
  br label %ethnl_update_u32.exit224

if.end2.i223:                                     ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %other_count to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %41, ptr %other_count, align 4
  br label %ethnl_update_u32.exit224

ethnl_update_u32.exit224:                         ; preds = %if.end2.i223, %if.end.i222.ethnl_update_u32.exit224_crit_edge, %ethnl_update_u32.exit218.ethnl_update_u32.exit224_crit_edge
  %mod.2 = phi i8 [ %mod.1, %ethnl_update_u32.exit218.ethnl_update_u32.exit224_crit_edge ], [ %mod.1, %if.end.i222.ethnl_update_u32.exit224_crit_edge ], [ 1, %if.end2.i223 ]
  %arrayidx18 = getelementptr ptr, ptr %3, i32 9
  %45 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx18, align 4
  %tobool.not.i225 = icmp eq ptr %46, null
  br i1 %tobool.not.i225, label %ethnl_update_u32.exit224.ethnl_update_u32.exit230_crit_edge, label %if.end.i228

ethnl_update_u32.exit224.ethnl_update_u32.exit230_crit_edge: ; preds = %ethnl_update_u32.exit224
  call void @__sanitizer_cov_trace_pc() #8
  br label %ethnl_update_u32.exit230

if.end.i228:                                      ; preds = %ethnl_update_u32.exit224
  %add.ptr.i.i.i226 = getelementptr i8, ptr %46, i32 4
  %47 = ptrtoint ptr %add.ptr.i.i.i226 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i.i.i226, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %48)
  %cmp.i227 = icmp eq i32 %22, %48
  br i1 %cmp.i227, label %if.end.i228.ethnl_update_u32.exit230_crit_edge, label %if.end2.i229

if.end.i228.ethnl_update_u32.exit230_crit_edge:   ; preds = %if.end.i228
  call void @__sanitizer_cov_trace_pc() #8
  br label %ethnl_update_u32.exit230

if.end2.i229:                                     ; preds = %if.end.i228
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %combined_count to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %combined_count, align 4
  br label %ethnl_update_u32.exit230

ethnl_update_u32.exit230:                         ; preds = %if.end2.i229, %if.end.i228.ethnl_update_u32.exit230_crit_edge, %ethnl_update_u32.exit224.ethnl_update_u32.exit230_crit_edge
  %tobool74.not = phi i1 [ true, %ethnl_update_u32.exit224.ethnl_update_u32.exit230_crit_edge ], [ true, %if.end.i228.ethnl_update_u32.exit230_crit_edge ], [ false, %if.end2.i229 ]
  %mod_combined.0 = phi i8 [ 0, %ethnl_update_u32.exit224.ethnl_update_u32.exit230_crit_edge ], [ 0, %if.end.i228.ethnl_update_u32.exit230_crit_edge ], [ 1, %if.end2.i229 ]
  %or209 = or i8 %mod_combined.0, %mod.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or209)
  %tobool22.not = icmp eq i8 %or209, 0
  br i1 %tobool22.not, label %ethnl_update_u32.exit230.out_ops_crit_edge, label %if.end25

ethnl_update_u32.exit230.out_ops_crit_edge:       ; preds = %ethnl_update_u32.exit230
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_ops

if.end25:                                         ; preds = %ethnl_update_u32.exit230
  %50 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_count, align 4
  %max_rx = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 1
  %52 = ptrtoint ptr %max_rx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max_rx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp27 = icmp ugt i32 %51, %53
  br i1 %cmp27, label %if.end25.if.then50_crit_edge, label %if.else

if.end25.if.then50_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50

if.else:                                          ; preds = %if.end25
  %54 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_count, align 4
  %max_tx = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 2
  %56 = ptrtoint ptr %max_tx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %max_tx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp31 = icmp ugt i32 %55, %57
  br i1 %cmp31, label %if.else.if.then50_crit_edge, label %if.else34

if.else.if.then50_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50

if.else34:                                        ; preds = %if.else
  %58 = ptrtoint ptr %other_count to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %other_count, align 4
  %max_other = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 3
  %60 = ptrtoint ptr %max_other to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_other, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp36 = icmp ugt i32 %59, %61
  br i1 %cmp36, label %if.else34.if.then50_crit_edge, label %if.end48

if.else34.if.then50_crit_edge:                    ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50

if.end48:                                         ; preds = %if.else34
  %62 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %combined_count, align 4
  %max_combined = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 4
  %64 = ptrtoint ptr %max_combined to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max_combined, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp41 = icmp ugt i32 %63, %65
  br i1 %cmp41, label %if.end48.if.then50_crit_edge, label %if.end56

if.end48.if.then50_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50

if.then50:                                        ; preds = %if.end48.if.then50_crit_edge, %if.else34.if.then50_crit_edge, %if.else.if.then50_crit_edge, %if.end25.if.then50_crit_edge
  %err_attr.0234 = phi i32 [ 9, %if.end48.if.then50_crit_edge ], [ 8, %if.else34.if.then50_crit_edge ], [ 7, %if.else.if.then50_crit_edge ], [ 6, %if.end25.if.then50_crit_edge ]
  %66 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_channels.__msg) #6
  %tobool52.not = icmp eq ptr %67, null
  br i1 %tobool52.not, label %if.then50.out_ops_crit_edge, label %if.then53

if.then50.out_ops_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_ops

if.then53:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @ethnl_set_channels.__msg, ptr %67, align 4
  %arrayidx54 = getelementptr ptr, ptr %3, i32 %err_attr.0234
  %69 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx54, align 4
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %67, i32 0, i32 1
  %71 = ptrtoint ptr %bad_attr to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %bad_attr, align 4
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %67, i32 0, i32 2
  %72 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %policy, align 4
  br label %out_ops

if.end56:                                         ; preds = %if.end48
  %73 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %combined_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool58.not = icmp eq i32 %74, 0
  br i1 %tobool58.not, label %land.lhs.true, label %if.end56.if.end89_crit_edge

if.end56.if.end89_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

land.lhs.true:                                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool60.not = icmp eq i32 %51, 0
  br i1 %tobool60.not, label %land.lhs.true.if.then73_crit_edge, label %land.lhs.true65

land.lhs.true.if.then73_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then73

land.lhs.true65:                                  ; preds = %land.lhs.true
  %75 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool67.not = icmp eq i32 %76, 0
  br i1 %tobool67.not, label %land.lhs.true65.if.then73_crit_edge, label %land.lhs.true65.if.end89_crit_edge

land.lhs.true65.if.end89_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

land.lhs.true65.if.then73_crit_edge:              ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then73

if.then73:                                        ; preds = %land.lhs.true65.if.then73_crit_edge, %land.lhs.true.if.then73_crit_edge
  %err_attr.1.ph = phi i32 [ 7, %land.lhs.true65.if.then73_crit_edge ], [ 6, %land.lhs.true.if.then73_crit_edge ]
  %77 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_channels.__msg.1) #6
  %tobool80.not = icmp eq ptr %78, null
  br i1 %tobool80.not, label %if.then73.out_ops_crit_edge, label %if.then81

if.then73.out_ops_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_ops

if.then81:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select = select i1 %tobool74.not, i32 %err_attr.1.ph, i32 9
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @ethnl_set_channels.__msg.1, ptr %78, align 4
  %arrayidx83 = getelementptr ptr, ptr %3, i32 %spec.select
  %80 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx83, align 4
  %bad_attr84 = getelementptr inbounds %struct.netlink_ext_ack, ptr %78, i32 0, i32 1
  %82 = ptrtoint ptr %bad_attr84 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %bad_attr84, align 4
  %policy85 = getelementptr inbounds %struct.netlink_ext_ack, ptr %78, i32 0, i32 2
  %83 = ptrtoint ptr %policy85 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %policy85, align 4
  br label %out_ops

if.end89:                                         ; preds = %land.lhs.true65.if.end89_crit_edge, %if.end56.if.end89_crit_edge
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 15
  %84 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %85, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end89.if.end111_crit_edge, label %land.lhs.true92

if.end89.if.end111_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

land.lhs.true92:                                  ; preds = %if.end89
  %call93 = call i32 @ethtool_get_max_rxfh_channel(ptr noundef %12, ptr noundef nonnull %max_rx_in_use) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %land.lhs.true95, label %land.lhs.true92.if.end111_crit_edge

land.lhs.true92.if.end111_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

land.lhs.true95:                                  ; preds = %land.lhs.true92
  %86 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %combined_count, align 4
  %88 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rx_count, align 4
  %add98 = add i32 %89, %87
  %90 = ptrtoint ptr %max_rx_in_use to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %max_rx_in_use, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add98, i32 %91)
  %cmp99.not = icmp ugt i32 %add98, %91
  br i1 %cmp99.not, label %land.lhs.true95.if.end111_crit_edge, label %if.then101

land.lhs.true95.if.end111_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

if.then101:                                       ; preds = %land.lhs.true95
  %92 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_channels.__msg.2) #6
  %tobool105.not = icmp eq ptr %93, null
  br i1 %tobool105.not, label %if.then101.out_ops_crit_edge, label %if.then106

if.then101.out_ops_crit_edge:                     ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_ops

if.then106:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @ethnl_set_channels.__msg.2, ptr %93, align 4
  br label %out_ops

if.end111:                                        ; preds = %land.lhs.true95.if.end111_crit_edge, %land.lhs.true92.if.end111_crit_edge, %if.end89.if.end111_crit_edge
  %95 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %combined_count, align 4
  %97 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rx_count, align 4
  %99 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %tx_count, align 4
  %101 = call i32 @llvm.umin.i32(i32 %98, i32 %100)
  %add122 = add i32 %101, %96
  call void @__sanitizer_cov_trace_cmp4(i32 %add122, i32 %add)
  %cmp123238 = icmp ult i32 %add122, %add
  br i1 %cmp123238, label %if.end111.for.body_crit_edge, label %if.end111.for.end_crit_edge

if.end111.for.end_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end111.for.body_crit_edge:                     ; preds = %if.end111
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0239, 1
  %cmp123 = icmp ult i32 %inc, %add
  br i1 %cmp123, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end111.for.body_crit_edge
  %i.0239 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ %add122, %if.end111.for.body_crit_edge ]
  %conv125 = trunc i32 %i.0239 to i16
  %call126 = call ptr @xsk_get_pool_from_qid(ptr noundef %12, i16 noundef zeroext %conv125) #6
  %tobool127.not = icmp eq ptr %call126, null
  br i1 %tobool127.not, label %for.cond, label %if.then128

if.then128:                                       ; preds = %for.body
  %102 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_channels.__msg.3) #6
  %tobool132.not = icmp eq ptr %103, null
  br i1 %tobool132.not, label %if.then128.out_ops_crit_edge, label %if.then133

if.then128.out_ops_crit_edge:                     ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_ops

if.then133:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @ethnl_set_channels.__msg.3, ptr %103, align 4
  br label %out_ops

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end111.for.end_crit_edge
  %105 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ethtool_ops, align 16
  %set_channels140 = getelementptr inbounds %struct.ethtool_ops, ptr %106, i32 0, i32 43
  %107 = ptrtoint ptr %set_channels140 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %set_channels140, align 4
  %call141 = call i32 %108(ptr noundef %12, ptr noundef nonnull %channels) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %cmp142 = icmp slt i32 %call141, 0
  br i1 %cmp142, label %for.end.out_ops_crit_edge, label %if.end145

for.end.out_ops_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_ops

if.end145:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @ethtool_notify(ptr noundef %12, i32 noundef 19, ptr noundef null) #6
  br label %out_ops

out_ops:                                          ; preds = %if.end145, %for.end.out_ops_crit_edge, %if.then133, %if.then128.out_ops_crit_edge, %if.then106, %if.then101.out_ops_crit_edge, %if.then81, %if.then73.out_ops_crit_edge, %if.then53, %if.then50.out_ops_crit_edge, %ethnl_update_u32.exit230.out_ops_crit_edge
  %ret.0 = phi i32 [ %call141, %for.end.out_ops_crit_edge ], [ %call141, %if.end145 ], [ 0, %ethnl_update_u32.exit230.out_ops_crit_edge ], [ -22, %if.then53 ], [ -22, %if.then50.out_ops_crit_edge ], [ -22, %if.then81 ], [ -22, %if.then73.out_ops_crit_edge ], [ -22, %if.then106 ], [ -22, %if.then101.out_ops_crit_edge ], [ -22, %if.then133 ], [ -22, %if.then128.out_ops_crit_edge ]
  call void @ethnl_ops_complete(ptr noundef %12) #6
  br label %out_rtnl

out_rtnl:                                         ; preds = %out_ops, %if.end5.out_rtnl_crit_edge
  %ret.1 = phi i32 [ %call6, %if.end5.out_rtnl_crit_edge ], [ %ret.0, %out_ops ]
  call void @rtnl_unlock() #6
  br label %out_dev

out_dev:                                          ; preds = %out_rtnl, %lor.lhs.false.out_dev_crit_edge, %if.end.out_dev_crit_edge
  %ret.2 = phi i32 [ %ret.1, %out_rtnl ], [ -95, %lor.lhs.false.out_dev_crit_edge ], [ -95, %if.end.out_dev_crit_edge ]
  %109 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %req_info, align 4
  %tobool.not.i.i = icmp eq ptr %110, null
  br i1 %tobool.not.i.i, label %out_dev.cleanup_crit_edge, label %do.body1.i.i.i

out_dev.cleanup_crit_edge:                        ; preds = %out_dev
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body1.i.i.i:                                   ; preds = %out_dev
  %dev_tracker.i = getelementptr inbounds %struct.ethnl_req_info, ptr %req_info, i32 0, i32 1
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %110, i32 0, i32 119
  %call.i.i.i = call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %dev_tracker.i) #6
  %111 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !24
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %110, i32 0, i32 118
  %112 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %114 = ptrtoint ptr %113 to i32
  %115 = call i32 @llvm.read_register.i32(metadata !14) #6
  %and.i.i.i.i = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %118
  %119 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %120, %114
  %121 = inttoptr i32 %add.i.i.i to ptr
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %121, align 4
  %add13.i.i.i = add i32 %123, -1
  store i32 %add13.i.i.i, ptr %121, align 4
  %124 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !25
  %and.i.i.i.i.i = and i32 %124, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_put.exit.i.i_crit_edge, !prof !26

do.body1.i.i.i.dev_put.exit.i.i_crit_edge:        ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_put.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @warn_bogus_irq_restore() #6
  br label %dev_put.exit.i.i

dev_put.exit.i.i:                                 ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_put.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %111) #6, !srcloc !27
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit.i.i, %out_dev.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %ret.2, %out_dev.cleanup_crit_edge ], [ %ret.2, %dev_put.exit.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_rx_in_use) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_info) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %channels) #6
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_get_max_rxfh_channel(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xsk_get_pool_from_qid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.named.register.sp = !{!14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @ethnl_channels_get_policy, !1, !"ethnl_channels_get_policy", i1 false, i1 false}
!1 = !{!"../net/ethtool/channels.c", i32 20, i32 25}
!2 = !{ptr @ethnl_channels_request_ops, !3, !"ethnl_channels_request_ops", i1 false, i1 false}
!3 = !{!"../net/ethtool/channels.c", i32 89, i32 32}
!4 = !{ptr @ethnl_channels_set_policy, !5, !"ethnl_channels_set_policy", i1 false, i1 false}
!5 = !{!"../net/ethtool/channels.c", i32 103, i32 25}
!6 = !{ptr @ethnl_set_channels.__msg, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../net/ethtool/channels.c", i32 170, i32 3}
!8 = !{ptr @ethnl_set_channels.__msg.1, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../net/ethtool/channels.c", i32 186, i32 3}
!10 = !{ptr @ethnl_set_channels.__msg.2, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../net/ethtool/channels.c", i32 198, i32 3}
!12 = !{ptr @ethnl_set_channels.__msg.3, !13, !"__msg", i1 false, i1 false}
!13 = !{!"../net/ethtool/channels.c", i32 208, i32 4}
!14 = !{!"sp"}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 1101354, i64 1101415}
!25 = !{i64 1104086}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i64 1104371}
