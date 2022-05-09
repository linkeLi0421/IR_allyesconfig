; ModuleID = '/llk/IR_all_yes/net/ethtool/linkstate.c_pt.bc'
source_filename = "../net/ethtool/linkstate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.ethnl_request_ops = type { i8, i8, i16, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.linkstate_reply_data = type { %struct.ethnl_reply_data, i32, i32, i32, i8, %struct.ethtool_link_ext_state_info }
%struct.ethnl_reply_data = type { ptr }
%struct.ethtool_link_ext_state_info = type { i32, %union.anon.139 }
%union.anon.139 = type { i32 }
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
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_linkstate_get_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }>, [16 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, [16 x i8] zeroinitializer }, align 32
@ethnl_linkstate_request_ops = dso_local constant { %struct.ethnl_request_ops, [60 x i8] } { %struct.ethnl_request_ops { i8 6, i8 6, i16 1, i32 12, i32 28, i8 0, ptr null, ptr @linkstate_prepare_data, ptr @linkstate_reply_size, ptr @linkstate_fill_reply, ptr null }, [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967201, i64 4294967235]
@___asan_gen_.1 = private unnamed_addr constant [27 x i8] c"ethnl_linkstate_get_policy\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 23, i32 25 }
@___asan_gen_.4 = private unnamed_addr constant [28 x i8] c"ethnl_linkstate_request_ops\00", align 1
@___asan_gen_.5 = private constant [27 x i8] c"../net/ethtool/linkstate.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 172, i32 32 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @ethnl_linkstate_get_policy, ptr @ethnl_linkstate_request_ops], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_linkstate_get_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_linkstate_request_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @linkstate_prepare_data(ptr nocapture noundef readnone %req_base, ptr noundef %reply_base, ptr nocapture noundef readnone %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reply_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reply_base, align 4
  %call = tail call i32 @ethnl_ops_begin(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @__ethtool_get_link(ptr noundef %1) #4
  %link = getelementptr inbounds %struct.linkstate_reply_data, ptr %reply_base, i32 0, i32 1
  %2 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2, ptr %link, align 4
  %phydev1.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %3 = ptrtoint ptr %phydev1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phydev1.i, align 16
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.if.end7_crit_edge, label %if.end.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end.i:                                         ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %drv.i = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drv.i, align 8
  %tobool2.not.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i, label %if.end.i.linkstate_get_sqi.exit_crit_edge, label %lor.lhs.false.i

if.end.i.linkstate_get_sqi.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %linkstate_get_sqi.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %get_sqi.i = getelementptr inbounds %struct.phy_driver, ptr %6, i32 0, i32 38
  %7 = ptrtoint ptr %get_sqi.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_sqi.i, align 4
  %tobool4.not.i = icmp eq ptr %8, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.linkstate_get_sqi.exit_crit_edge, label %if.else.i

lor.lhs.false.i.linkstate_get_sqi.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %linkstate_get_sqi.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 %8(ptr noundef nonnull %4) #4
  br label %linkstate_get_sqi.exit

linkstate_get_sqi.exit:                           ; preds = %if.else.i, %lor.lhs.false.i.linkstate_get_sqi.exit_crit_edge, %if.end.i.linkstate_get_sqi.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.else.i ], [ -95, %lor.lhs.false.i.linkstate_get_sqi.exit_crit_edge ], [ -95, %if.end.i.linkstate_get_sqi.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0.i)
  %cmp4 = icmp sgt i32 %ret.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %ret.0.i)
  %cmp5.not = icmp eq i32 %ret.0.i, -95
  %or.cond = or i1 %cmp4, %cmp5.not
  br i1 %or.cond, label %linkstate_get_sqi.exit.if.end7_crit_edge, label %linkstate_get_sqi.exit.out_crit_edge

linkstate_get_sqi.exit.out_crit_edge:             ; preds = %linkstate_get_sqi.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

linkstate_get_sqi.exit.if.end7_crit_edge:         ; preds = %linkstate_get_sqi.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end7:                                          ; preds = %linkstate_get_sqi.exit.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %retval.0.i71 = phi i32 [ %ret.0.i, %linkstate_get_sqi.exit.if.end7_crit_edge ], [ -95, %if.end.if.end7_crit_edge ]
  %sqi = getelementptr inbounds %struct.linkstate_reply_data, ptr %reply_base, i32 0, i32 2
  %9 = ptrtoint ptr %sqi to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i71, ptr %sqi, align 4
  %10 = ptrtoint ptr %phydev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phydev1.i, align 16
  %tobool.not.i51 = icmp eq ptr %11, null
  br i1 %tobool.not.i51, label %if.end7.if.end13_crit_edge, label %if.end.i55

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.end.i55:                                       ; preds = %if.end7
  %lock.i52 = getelementptr inbounds %struct.phy_device, ptr %11, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %lock.i52, i32 noundef 0) #4
  %drv.i53 = getelementptr inbounds %struct.phy_device, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %drv.i53 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drv.i53, align 8
  %tobool2.not.i54 = icmp eq ptr %13, null
  br i1 %tobool2.not.i54, label %if.end.i55.linkstate_get_sqi_max.exit_crit_edge, label %lor.lhs.false.i57

if.end.i55.linkstate_get_sqi_max.exit_crit_edge:  ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #6
  br label %linkstate_get_sqi_max.exit

lor.lhs.false.i57:                                ; preds = %if.end.i55
  %get_sqi_max.i = getelementptr inbounds %struct.phy_driver, ptr %13, i32 0, i32 39
  %14 = ptrtoint ptr %get_sqi_max.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_sqi_max.i, align 4
  %tobool4.not.i56 = icmp eq ptr %15, null
  br i1 %tobool4.not.i56, label %lor.lhs.false.i57.linkstate_get_sqi_max.exit_crit_edge, label %if.else.i59

lor.lhs.false.i57.linkstate_get_sqi_max.exit_crit_edge: ; preds = %lor.lhs.false.i57
  call void @__sanitizer_cov_trace_pc() #6
  br label %linkstate_get_sqi_max.exit

if.else.i59:                                      ; preds = %lor.lhs.false.i57
  call void @__sanitizer_cov_trace_pc() #6
  %call.i58 = tail call i32 %15(ptr noundef nonnull %11) #4
  br label %linkstate_get_sqi_max.exit

linkstate_get_sqi_max.exit:                       ; preds = %if.else.i59, %lor.lhs.false.i57.linkstate_get_sqi_max.exit_crit_edge, %if.end.i55.linkstate_get_sqi_max.exit_crit_edge
  %ret.0.i60 = phi i32 [ %call.i58, %if.else.i59 ], [ -95, %lor.lhs.false.i57.linkstate_get_sqi_max.exit_crit_edge ], [ -95, %if.end.i55.linkstate_get_sqi_max.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i52) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0.i60)
  %cmp9 = icmp sgt i32 %ret.0.i60, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %ret.0.i60)
  %cmp11.not = icmp eq i32 %ret.0.i60, -95
  %or.cond47 = or i1 %cmp9, %cmp11.not
  br i1 %or.cond47, label %linkstate_get_sqi_max.exit.if.end13_crit_edge, label %linkstate_get_sqi_max.exit.out_crit_edge

linkstate_get_sqi_max.exit.out_crit_edge:         ; preds = %linkstate_get_sqi_max.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

linkstate_get_sqi_max.exit.if.end13_crit_edge:    ; preds = %linkstate_get_sqi_max.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.end13:                                         ; preds = %linkstate_get_sqi_max.exit.if.end13_crit_edge, %if.end7.if.end13_crit_edge
  %retval.0.i6276 = phi i32 [ %ret.0.i60, %linkstate_get_sqi_max.exit.if.end13_crit_edge ], [ -95, %if.end7.if.end13_crit_edge ]
  %sqi_max = getelementptr inbounds %struct.linkstate_reply_data, ptr %reply_base, i32 0, i32 3
  %16 = ptrtoint ptr %sqi_max to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.0.i6276, ptr %sqi_max, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 8
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end13.if.end23_crit_edge, label %if.then14

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then14:                                        ; preds = %if.end13
  %ethtool_ops.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 44
  %19 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ethtool_ops.i, align 16
  %get_link_ext_state.i = getelementptr inbounds %struct.ethtool_ops, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %get_link_ext_state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_link_ext_state.i, align 4
  %tobool.not.i63 = icmp eq ptr %22, null
  br i1 %tobool.not.i63, label %if.then14.if.end23_crit_edge, label %if.end.i65

if.then14.if.end23_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.end.i65:                                       ; preds = %if.then14
  %ethtool_link_ext_state_info.i = getelementptr inbounds %struct.linkstate_reply_data, ptr %reply_base, i32 0, i32 5
  %call.i64 = tail call i32 %22(ptr noundef %1, ptr noundef %ethtool_link_ext_state_info.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool3.not.i = icmp eq i32 %call.i64, 0
  br i1 %tobool3.not.i, label %linkstate_get_link_ext_state.exit.thread, label %linkstate_get_link_ext_state.exit

linkstate_get_link_ext_state.exit.thread:         ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #6
  %link_ext_state_provided.i = getelementptr inbounds %struct.linkstate_reply_data, ptr %reply_base, i32 0, i32 4
  %23 = ptrtoint ptr %link_ext_state_provided.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %link_ext_state_provided.i, align 4
  br label %if.end23

linkstate_get_link_ext_state.exit:                ; preds = %if.end.i65
  %call.i64.fr = freeze i32 %call.i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i64.fr)
  %cmp16 = icmp sgt i32 %call.i64.fr, -1
  br i1 %cmp16, label %linkstate_get_link_ext_state.exit.if.end23_crit_edge, label %switch.early.test

linkstate_get_link_ext_state.exit.if.end23_crit_edge: ; preds = %linkstate_get_link_ext_state.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

switch.early.test:                                ; preds = %linkstate_get_link_ext_state.exit
  %24 = zext i32 %call.i64.fr to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i64.fr, label %switch.early.test.out_crit_edge [
    i32 -61, label %switch.early.test.if.end23_crit_edge
    i32 -95, label %switch.early.test.if.end23_crit_edge84
  ]

switch.early.test.if.end23_crit_edge84:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

switch.early.test.if.end23_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

switch.early.test.out_crit_edge:                  ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end23:                                         ; preds = %switch.early.test.if.end23_crit_edge, %switch.early.test.if.end23_crit_edge84, %linkstate_get_link_ext_state.exit.if.end23_crit_edge, %linkstate_get_link_ext_state.exit.thread, %if.then14.if.end23_crit_edge, %if.end13.if.end23_crit_edge
  br label %out

out:                                              ; preds = %if.end23, %switch.early.test.out_crit_edge, %linkstate_get_sqi_max.exit.out_crit_edge, %linkstate_get_sqi.exit.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end23 ], [ %ret.0.i, %linkstate_get_sqi.exit.out_crit_edge ], [ %ret.0.i60, %linkstate_get_sqi_max.exit.out_crit_edge ], [ %call.i64.fr, %switch.early.test.out_crit_edge ]
  tail call void @ethnl_ops_complete(ptr noundef %1) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @linkstate_reply_size(ptr nocapture noundef readnone %req_base, ptr nocapture noundef readonly %reply_base) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sqi = getelementptr inbounds %struct.linkstate_reply_data, ptr %reply_base, i32 0, i32 2
  %0 = ptrtoint ptr %sqi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sqi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %1)
  %cmp.not = icmp eq i32 %1, -95
  %spec.select = select i1 %cmp.not, i32 8, i32 16
  %sqi_max = getelementptr inbounds %struct.linkstate_reply_data, ptr %reply_base, i32 0, i32 3
  %2 = ptrtoint ptr %sqi_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sqi_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %3)
  %cmp3.not = icmp eq i32 %3, -95
  %add6 = add nuw nsw i32 %spec.select, 8
  %len.1 = select i1 %cmp3.not, i32 %spec.select, i32 %add6
  %link_ext_state_provided = getelementptr inbounds %struct.linkstate_reply_data, ptr %reply_base, i32 0, i32 4
  %4 = ptrtoint ptr %link_ext_state_provided to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %link_ext_state_provided, align 4, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %add10 = add nuw nsw i32 %len.1, 8
  %len.2 = select i1 %tobool.not, i32 %len.1, i32 %add10
  %6 = getelementptr inbounds %struct.linkstate_reply_data, ptr %reply_base, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.not = icmp eq i32 %8, 0
  %add15 = add nuw nsw i32 %len.2, 8
  %len.3 = select i1 %tobool12.not, i32 %len.2, i32 %add15
  ret i32 %len.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @linkstate_fill_reply(ptr noundef %skb, ptr nocapture noundef readnone %req_base, ptr nocapture noundef readonly %reply_base) #0 align 64 {
entry:
  %tmp.i59 = alloca i8, align 1
  %tmp.i57 = alloca i8, align 1
  %tmp.i55 = alloca i32, align 4
  %tmp.i53 = alloca i32, align 4
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr inbounds %struct.linkstate_reply_data, ptr %reply_base, i32 0, i32 1
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp sgt i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool = icmp ne i32 %1, 0
  %conv = zext i1 %tobool to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #4
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %sqi = getelementptr inbounds %struct.linkstate_reply_data, ptr %reply_base, i32 0, i32 2
  %3 = ptrtoint ptr %sqi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sqi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %4)
  %cmp4.not = icmp eq i32 %4, -95
  br i1 %cmp4.not, label %if.end.if.end11_crit_edge, label %land.lhs.true6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

land.lhs.true6:                                   ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i53) #4
  %5 = ptrtoint ptr %tmp.i53 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tmp.i53, align 4
  %call.i54 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i53) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i53) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool9.not = icmp eq i32 %call.i54, 0
  br i1 %tobool9.not, label %land.lhs.true6.if.end11_crit_edge, label %land.lhs.true6.cleanup_crit_edge

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true6.if.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true6.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %sqi_max = getelementptr inbounds %struct.linkstate_reply_data, ptr %reply_base, i32 0, i32 3
  %6 = ptrtoint ptr %sqi_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sqi_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %7)
  %cmp12.not = icmp eq i32 %7, -95
  br i1 %cmp12.not, label %if.end11.if.end19_crit_edge, label %land.lhs.true14

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

land.lhs.true14:                                  ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i55) #4
  %8 = ptrtoint ptr %tmp.i55 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i55, align 4
  %call.i56 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i55) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i55) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool17.not = icmp eq i32 %call.i56, 0
  br i1 %tobool17.not, label %land.lhs.true14.if.end19_crit_edge, label %land.lhs.true14.cleanup_crit_edge

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true14.if.end19_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true14.if.end19_crit_edge, %if.end11.if.end19_crit_edge
  %link_ext_state_provided = getelementptr inbounds %struct.linkstate_reply_data, ptr %reply_base, i32 0, i32 4
  %9 = ptrtoint ptr %link_ext_state_provided to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %link_ext_state_provided, align 4, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool20.not = icmp eq i8 %10, 0
  br i1 %tobool20.not, label %if.end19.if.end36_crit_edge, label %if.then21

if.end19.if.end36_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then21:                                        ; preds = %if.end19
  %ethtool_link_ext_state_info = getelementptr inbounds %struct.linkstate_reply_data, ptr %reply_base, i32 0, i32 5
  %11 = ptrtoint ptr %ethtool_link_ext_state_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ethtool_link_ext_state_info, align 4
  %conv22 = trunc i32 %12 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i57) #4
  %13 = ptrtoint ptr %tmp.i57 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv22, ptr %tmp.i57, align 1
  %call.i58 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %tmp.i57) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i57) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool24.not = icmp eq i32 %call.i58, 0
  br i1 %tobool24.not, label %if.end26, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %if.then21
  %14 = getelementptr inbounds %struct.linkstate_reply_data, ptr %reply_base, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool28.not = icmp eq i32 %16, 0
  br i1 %tobool28.not, label %if.end26.if.end36_crit_edge, label %land.lhs.true29

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

land.lhs.true29:                                  ; preds = %if.end26
  %conv31 = trunc i32 %16 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i59) #4
  %17 = ptrtoint ptr %tmp.i59 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv31, ptr %tmp.i59, align 1
  %call.i60 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %tmp.i59) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i59) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool33.not = icmp eq i32 %call.i60, 0
  br i1 %tobool33.not, label %land.lhs.true29.if.end36_crit_edge, label %land.lhs.true29.cleanup_crit_edge

land.lhs.true29.cleanup_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true29.if.end36_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.end36:                                         ; preds = %land.lhs.true29.if.end36_crit_edge, %if.end26.if.end36_crit_edge, %if.end19.if.end36_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %land.lhs.true29.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %land.lhs.true14.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -90, %land.lhs.true.cleanup_crit_edge ], [ -90, %land.lhs.true6.cleanup_crit_edge ], [ -90, %land.lhs.true14.cleanup_crit_edge ], [ -90, %if.then21.cleanup_crit_edge ], [ -90, %land.lhs.true29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_ops_begin(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ethtool_get_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_ops_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @ethnl_linkstate_get_policy, !1, !"ethnl_linkstate_get_policy", i1 false, i1 false}
!1 = !{!"../net/ethtool/linkstate.c", i32 23, i32 25}
!2 = !{ptr @ethnl_linkstate_request_ops, !3, !"ethnl_linkstate_request_ops", i1 false, i1 false}
!3 = !{!"../net/ethtool/linkstate.c", i32 172, i32 32}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i8 0, i8 2}
