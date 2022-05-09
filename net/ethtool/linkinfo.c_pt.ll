; ModuleID = '/llk/IR_all_yes/net/ethtool/linkinfo.c_pt.bc'
source_filename = "../net/ethtool/linkinfo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.ethnl_request_ops = type { i8, i8, i16, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.linkinfo_reply_data = type { %struct.ethnl_reply_data, %struct.ethtool_link_ksettings, ptr }
%struct.ethnl_reply_data = type { ptr }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.141, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.141 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.ethnl_req_info = type { ptr, ptr, i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_linkinfo_get_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }>, [16 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, [16 x i8] zeroinitializer }, align 32
@ethnl_linkinfo_request_ops = dso_local constant { %struct.ethnl_request_ops, [60 x i8] } { %struct.ethnl_request_ops { i8 2, i8 2, i16 1, i32 12, i32 96, i8 0, ptr null, ptr @linkinfo_prepare_data, ptr @linkinfo_reply_size, ptr @linkinfo_fill_reply, ptr null }, [60 x i8] zeroinitializer }, align 32
@ethnl_linkinfo_set_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }>, [48 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer } }>, [48 x i8] zeroinitializer }, align 32
@ethnl_set_linkinfo.__msg = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to retrieve link settings\00", [63 x i8] zeroinitializer }, align 32
@ethnl_set_linkinfo.__msg.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"link settings update failed\00", [36 x i8] zeroinitializer }, align 32
@linkinfo_prepare_data.__msg = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to retrieve link settings\00", [63 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.2 = private unnamed_addr constant [26 x i8] c"ethnl_linkinfo_get_policy\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 19, i32 25 }
@___asan_gen_.5 = private unnamed_addr constant [27 x i8] c"ethnl_linkinfo_request_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 76, i32 32 }
@___asan_gen_.8 = private unnamed_addr constant [26 x i8] c"ethnl_linkinfo_set_policy\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 90, i32 25 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 127, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 143, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.18 = private constant [26 x i8] c"../net/ethtool/linkinfo.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 39, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @ethnl_linkinfo_get_policy, ptr @ethnl_linkinfo_request_ops, ptr @ethnl_linkinfo_set_policy, ptr @ethnl_set_linkinfo.__msg, ptr @ethnl_set_linkinfo.__msg.1, ptr @linkinfo_prepare_data.__msg], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_linkinfo_get_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_linkinfo_request_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_linkinfo_set_policy to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_set_linkinfo.__msg to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_set_linkinfo.__msg.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linkinfo_prepare_data.__msg to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @linkinfo_prepare_data(ptr nocapture noundef readnone %req_base, ptr noundef %reply_base, ptr noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reply_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reply_base, align 4
  %ksettings = getelementptr inbounds %struct.linkinfo_reply_data, ptr %reply_base, i32 0, i32 1
  %lsettings = getelementptr inbounds %struct.linkinfo_reply_data, ptr %reply_base, i32 0, i32 2
  %2 = ptrtoint ptr %lsettings to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ksettings, ptr %lsettings, align 4
  %call = tail call i32 @ethnl_ops_begin(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @__ethtool_get_link_ksettings(ptr noundef %1, ptr noundef %ksettings) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp4 = icmp sgt i32 %call3, -1
  %tobool.not = icmp eq ptr %info, null
  %or.cond = or i1 %tobool.not, %cmp4
  br i1 %or.cond, label %if.end.if.end9_crit_edge, label %do.body

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

do.body:                                          ; preds = %if.end
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @linkinfo_prepare_data.__msg) #5
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %do.body.if.end9_crit_edge, label %if.then7

do.body.if.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @linkinfo_prepare_data.__msg, ptr %4, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.body.if.end9_crit_edge, %if.end.if.end9_crit_edge
  tail call void @ethnl_ops_complete(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end9 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @linkinfo_reply_size(ptr nocapture noundef readnone %req_base, ptr nocapture noundef readnone %reply_base) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 40
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @linkinfo_fill_reply(ptr noundef %skb, ptr nocapture noundef readnone %req_base, ptr nocapture noundef readonly %reply_base) #0 align 64 {
entry:
  %tmp.i30 = alloca i8, align 1
  %tmp.i28 = alloca i8, align 1
  %tmp.i26 = alloca i8, align 1
  %tmp.i24 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lsettings = getelementptr inbounds %struct.linkinfo_reply_data, ptr %reply_base, i32 0, i32 2
  %0 = ptrtoint ptr %lsettings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lsettings, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #5
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %lsettings to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lsettings, align 4
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %phy_address to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %phy_address, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i24) #5
  %9 = ptrtoint ptr %tmp.i24 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %tmp.i24, align 1
  %call.i25 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i24) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool3.not = icmp eq i32 %call.i25, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %lsettings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lsettings, align 4
  %eth_tp_mdix = getelementptr inbounds %struct.ethtool_link_settings, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %eth_tp_mdix to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %eth_tp_mdix, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i26) #5
  %14 = ptrtoint ptr %tmp.i26 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %tmp.i26, align 1
  %call.i27 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i26) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool7.not = icmp eq i32 %call.i27, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %15 = ptrtoint ptr %lsettings to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lsettings, align 4
  %eth_tp_mdix_ctrl = getelementptr inbounds %struct.ethtool_link_settings, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %eth_tp_mdix_ctrl to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %eth_tp_mdix_ctrl, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i28) #5
  %19 = ptrtoint ptr %tmp.i28 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %tmp.i28, align 1
  %call.i29 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %tmp.i28) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool11.not = icmp eq i32 %call.i29, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %lsettings to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lsettings, align 4
  %transceiver = getelementptr inbounds %struct.ethtool_link_settings, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %transceiver to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %transceiver, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i30) #5
  %24 = ptrtoint ptr %tmp.i30 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %tmp.i30, align 1
  %call.i31 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %tmp.i30) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool15.not = icmp eq i32 %call.i31, 0
  %spec.select = select i1 %tobool15.not, i32 0, i32 -90
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false12, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %lor.lhs.false8.cleanup_crit_edge ], [ -90, %lor.lhs.false4.cleanup_crit_edge ], [ -90, %lor.lhs.false.cleanup_crit_edge ], [ -90, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_set_linkinfo(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %ksettings = alloca %struct.ethtool_link_ksettings, align 4
  %req_info = alloca %struct.ethnl_req_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %ksettings) #5
  %0 = call ptr @memset(ptr %ksettings, i32 0, i32 88)
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
  %get_link_ksettings = getelementptr inbounds %struct.ethtool_ops, ptr %13, i32 0, i32 56
  %14 = ptrtoint ptr %get_link_ksettings to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_link_ksettings, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end.out_dev_crit_edge, label %lor.lhs.false

if.end.out_dev_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_dev

lor.lhs.false:                                    ; preds = %if.end
  %set_link_ksettings = getelementptr inbounds %struct.ethtool_ops, ptr %13, i32 0, i32 57
  %16 = ptrtoint ptr %set_link_ksettings to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_link_ksettings, align 4
  %tobool4.not = icmp eq ptr %17, null
  br i1 %tobool4.not, label %lor.lhs.false.out_dev_crit_edge, label %if.end6

lor.lhs.false.out_dev_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_dev

if.end6:                                          ; preds = %lor.lhs.false
  call void @rtnl_lock() #5
  %call7 = call i32 @ethnl_ops_begin(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.out_rtnl_crit_edge, label %if.end10

if.end6.out_rtnl_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_rtnl

if.end10:                                         ; preds = %if.end6
  %call11 = call i32 @__ethtool_get_link_ksettings(ptr noundef %11, ptr noundef nonnull %ksettings) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.body, label %if.end18

do.body:                                          ; preds = %if.end10
  %18 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_linkinfo.__msg) #5
  %tobool15.not = icmp eq ptr %19, null
  br i1 %tobool15.not, label %do.body.out_ops_crit_edge, label %if.then16

do.body.out_ops_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_ops

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ethnl_set_linkinfo.__msg, ptr %19, align 4
  br label %out_ops

if.end18:                                         ; preds = %if.end10
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %ksettings, i32 0, i32 3
  %arrayidx19 = getelementptr ptr, ptr %3, i32 2
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx19, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end18.ethnl_update_u8.exit_crit_edge, label %if.end.i

if.end18.ethnl_update_u8.exit_crit_edge:          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u8.exit

if.end.i:                                         ; preds = %if.end18
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr.i.i.i, align 1
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %port, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %24)
  %cmp.i = icmp eq i8 %26, %24
  br i1 %cmp.i, label %if.end.i.ethnl_update_u8.exit_crit_edge, label %if.end4.i

if.end.i.ethnl_update_u8.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u8.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %24, ptr %port, align 1
  br label %ethnl_update_u8.exit

ethnl_update_u8.exit:                             ; preds = %if.end4.i, %if.end.i.ethnl_update_u8.exit_crit_edge, %if.end18.ethnl_update_u8.exit_crit_edge
  %mod.0 = phi i8 [ 0, %if.end18.ethnl_update_u8.exit_crit_edge ], [ 0, %if.end.i.ethnl_update_u8.exit_crit_edge ], [ 1, %if.end4.i ]
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %ksettings, i32 0, i32 4
  %arrayidx20 = getelementptr ptr, ptr %3, i32 3
  %28 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx20, align 4
  %tobool.not.i70 = icmp eq ptr %29, null
  br i1 %tobool.not.i70, label %ethnl_update_u8.exit.ethnl_update_u8.exit75_crit_edge, label %if.end.i73

ethnl_update_u8.exit.ethnl_update_u8.exit75_crit_edge: ; preds = %ethnl_update_u8.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u8.exit75

if.end.i73:                                       ; preds = %ethnl_update_u8.exit
  %add.ptr.i.i.i71 = getelementptr i8, ptr %29, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i.i71 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr.i.i.i71, align 1
  %32 = ptrtoint ptr %phy_address to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %phy_address, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %31)
  %cmp.i72 = icmp eq i8 %33, %31
  br i1 %cmp.i72, label %if.end.i73.ethnl_update_u8.exit75_crit_edge, label %if.end4.i74

if.end.i73.ethnl_update_u8.exit75_crit_edge:      ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u8.exit75

if.end4.i74:                                      ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %31, ptr %phy_address, align 2
  br label %ethnl_update_u8.exit75

ethnl_update_u8.exit75:                           ; preds = %if.end4.i74, %if.end.i73.ethnl_update_u8.exit75_crit_edge, %ethnl_update_u8.exit.ethnl_update_u8.exit75_crit_edge
  %mod.1 = phi i8 [ %mod.0, %ethnl_update_u8.exit.ethnl_update_u8.exit75_crit_edge ], [ %mod.0, %if.end.i73.ethnl_update_u8.exit75_crit_edge ], [ 1, %if.end4.i74 ]
  %eth_tp_mdix_ctrl = getelementptr inbounds %struct.ethtool_link_settings, ptr %ksettings, i32 0, i32 8
  %arrayidx21 = getelementptr ptr, ptr %3, i32 5
  %35 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx21, align 4
  %tobool.not.i76 = icmp eq ptr %36, null
  br i1 %tobool.not.i76, label %ethnl_update_u8.exit75.ethnl_update_u8.exit81_crit_edge, label %if.end.i79

ethnl_update_u8.exit75.ethnl_update_u8.exit81_crit_edge: ; preds = %ethnl_update_u8.exit75
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u8.exit81

if.end.i79:                                       ; preds = %ethnl_update_u8.exit75
  %add.ptr.i.i.i77 = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i.i77 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %add.ptr.i.i.i77, align 1
  %39 = ptrtoint ptr %eth_tp_mdix_ctrl to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %eth_tp_mdix_ctrl, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %38)
  %cmp.i78 = icmp eq i8 %40, %38
  br i1 %cmp.i78, label %if.end.i79.ethnl_update_u8.exit81_crit_edge, label %ethnl_update_u8.exit81.thread

if.end.i79.ethnl_update_u8.exit81_crit_edge:      ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u8.exit81

ethnl_update_u8.exit81.thread:                    ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %eth_tp_mdix_ctrl to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %38, ptr %eth_tp_mdix_ctrl, align 2
  br label %if.end24

ethnl_update_u8.exit81:                           ; preds = %if.end.i79.ethnl_update_u8.exit81_crit_edge, %ethnl_update_u8.exit75.ethnl_update_u8.exit81_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mod.1)
  %tobool22.not = icmp eq i8 %mod.1, 0
  br i1 %tobool22.not, label %ethnl_update_u8.exit81.out_ops_crit_edge, label %ethnl_update_u8.exit81.if.end24_crit_edge

ethnl_update_u8.exit81.if.end24_crit_edge:        ; preds = %ethnl_update_u8.exit81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

ethnl_update_u8.exit81.out_ops_crit_edge:         ; preds = %ethnl_update_u8.exit81
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_ops

if.end24:                                         ; preds = %ethnl_update_u8.exit81.if.end24_crit_edge, %ethnl_update_u8.exit81.thread
  %42 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ethtool_ops, align 16
  %set_link_ksettings26 = getelementptr inbounds %struct.ethtool_ops, ptr %43, i32 0, i32 57
  %44 = ptrtoint ptr %set_link_ksettings26 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %set_link_ksettings26, align 4
  %call27 = call i32 %45(ptr noundef %11, ptr noundef nonnull %ksettings) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.body30, label %if.else

do.body30:                                        ; preds = %if.end24
  %46 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_linkinfo.__msg.1) #5
  %tobool33.not = icmp eq ptr %47, null
  br i1 %tobool33.not, label %do.body30.out_ops_crit_edge, label %if.then34

do.body30.out_ops_crit_edge:                      ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_ops

if.then34:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @ethnl_set_linkinfo.__msg.1, ptr %47, align 4
  br label %out_ops

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  call void @ethtool_notify(ptr noundef %11, i32 noundef 3, ptr noundef null) #5
  br label %out_ops

out_ops:                                          ; preds = %if.else, %if.then34, %do.body30.out_ops_crit_edge, %ethnl_update_u8.exit81.out_ops_crit_edge, %if.then16, %do.body.out_ops_crit_edge
  %ret.0 = phi i32 [ %call27, %if.else ], [ 0, %ethnl_update_u8.exit81.out_ops_crit_edge ], [ %call11, %if.then16 ], [ %call11, %do.body.out_ops_crit_edge ], [ %call27, %if.then34 ], [ %call27, %do.body30.out_ops_crit_edge ]
  call void @ethnl_ops_complete(ptr noundef %11) #5
  br label %out_rtnl

out_rtnl:                                         ; preds = %out_ops, %if.end6.out_rtnl_crit_edge
  %ret.1 = phi i32 [ %call7, %if.end6.out_rtnl_crit_edge ], [ %ret.0, %out_ops ]
  call void @rtnl_unlock() #5
  br label %out_dev

out_dev:                                          ; preds = %out_rtnl, %lor.lhs.false.out_dev_crit_edge, %if.end.out_dev_crit_edge
  %ret.2 = phi i32 [ %ret.1, %out_rtnl ], [ -95, %lor.lhs.false.out_dev_crit_edge ], [ -95, %if.end.out_dev_crit_edge ]
  %49 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %req_info, align 4
  %tobool.not.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i, label %out_dev.cleanup_crit_edge, label %do.body1.i.i.i

out_dev.cleanup_crit_edge:                        ; preds = %out_dev
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body1.i.i.i:                                   ; preds = %out_dev
  %dev_tracker.i = getelementptr inbounds %struct.ethnl_req_info, ptr %req_info, i32 0, i32 1
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 119
  %call.i.i.i = call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %dev_tracker.i) #5
  %51 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !22
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 118
  %52 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  %55 = call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %60, %54
  %61 = inttoptr i32 %add.i.i.i to ptr
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %add13.i.i.i = add i32 %63, -1
  store i32 %add13.i.i.i, ptr %61, align 4
  %64 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !23
  %and.i.i.i.i.i = and i32 %64, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_put.exit.i.i_crit_edge, !prof !24

do.body1.i.i.i.dev_put.exit.i.i_crit_edge:        ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_put.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @warn_bogus_irq_restore() #5
  br label %dev_put.exit.i.i

dev_put.exit.i.i:                                 ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_put.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %51) #5, !srcloc !25
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit.i.i, %out_dev.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %ret.2, %out_dev.cleanup_crit_edge ], [ %ret.2, %dev_put.exit.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_info) #5
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ksettings) #5
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
declare dso_local i32 @__ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #3

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

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.named.register.sp = !{!12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @ethnl_linkinfo_get_policy, !1, !"ethnl_linkinfo_get_policy", i1 false, i1 false}
!1 = !{!"../net/ethtool/linkinfo.c", i32 19, i32 25}
!2 = !{ptr @ethnl_linkinfo_request_ops, !3, !"ethnl_linkinfo_request_ops", i1 false, i1 false}
!3 = !{!"../net/ethtool/linkinfo.c", i32 76, i32 32}
!4 = !{ptr @ethnl_linkinfo_set_policy, !5, !"ethnl_linkinfo_set_policy", i1 false, i1 false}
!5 = !{!"../net/ethtool/linkinfo.c", i32 90, i32 25}
!6 = !{ptr @ethnl_set_linkinfo.__msg, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../net/ethtool/linkinfo.c", i32 127, i32 3}
!8 = !{ptr @ethnl_set_linkinfo.__msg.1, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../net/ethtool/linkinfo.c", i32 143, i32 3}
!10 = !{ptr @linkinfo_prepare_data.__msg, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../net/ethtool/linkinfo.c", i32 39, i32 3}
!12 = !{!"sp"}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 656092, i64 656153}
!23 = !{i64 658824}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i64 659109}
