; ModuleID = '/llk/IR_all_yes/net/ethtool/linkmodes.c_pt.bc'
source_filename = "../net/ethtool/linkmodes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.ethnl_request_ops = type { i8, i8, i16, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { i16, i16 }
%struct.link_mode_info = type { i32, i8, i8 }
%struct.linkmodes_reply_data = type { %struct.ethnl_reply_data, %struct.ethtool_link_ksettings, ptr, i8 }
%struct.ethnl_reply_data = type { ptr }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.141, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.141 = type { [3 x i32], [3 x i32], [3 x i32] }
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
%struct.ethnl_req_info = type { ptr, ptr, i32 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_linkmodes_get_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }>, [16 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, [16 x i8] zeroinitializer }, align 32
@ethnl_linkmodes_request_ops = dso_local constant { %struct.ethnl_request_ops, [60 x i8] } { %struct.ethnl_request_ops { i8 4, i8 4, i16 1, i32 12, i32 100, i8 0, ptr null, ptr @linkmodes_prepare_data, ptr @linkmodes_reply_size, ptr @linkmodes_fill_reply, ptr null }, [60 x i8] zeroinitializer }, align 32
@ethnl_linkmodes_set_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon } } }>, [48 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer, { i8, i8, i16, { %struct.anon } } { i8 3, i8 1, i16 0, { %struct.anon } { %struct.anon { i16 1, i16 8 } } } }>, [48 x i8] zeroinitializer }, align 32
@ethnl_set_linkmodes.__msg = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to retrieve link settings\00", [63 x i8] zeroinitializer }, align 32
@ethnl_set_linkmodes.__msg.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"link settings update failed\00", [36 x i8] zeroinitializer }, align 32
@linkmodes_prepare_data.__msg = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to retrieve link settings\00", [63 x i8] zeroinitializer }, align 32
@link_mode_names = external dso_local constant [0 x [32 x i8]], align 1
@ethnl_check_linkmodes.__msg = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"master/slave value is invalid\00", [34 x i8] zeroinitializer }, align 32
@ethnl_check_linkmodes.__msg.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lanes value is invalid\00", [41 x i8] zeroinitializer }, align 32
@ethnl_update_linkmodes.__msg = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"master/slave configuration not supported by device\00", [45 x i8] zeroinitializer }, align 32
@ethnl_update_linkmodes.__msg.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"lanes configuration not supported by device\00", [52 x i8] zeroinitializer }, align 32
@link_mode_params = external dso_local local_unnamed_addr constant [0 x %struct.link_mode_info], align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.4 = private unnamed_addr constant [27 x i8] c"ethnl_linkmodes_get_policy\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 23, i32 25 }
@___asan_gen_.7 = private unnamed_addr constant [28 x i8] c"ethnl_linkmodes_request_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 149, i32 32 }
@___asan_gen_.10 = private unnamed_addr constant [27 x i8] c"ethnl_linkmodes_set_policy\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 163, i32 25 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 340, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 351, i32 4 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 44, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 228, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 235, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 255, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.32 = private constant [27 x i8] c"../net/ethtool/linkmodes.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 276, i32 4 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @ethnl_linkmodes_get_policy, ptr @ethnl_linkmodes_request_ops, ptr @ethnl_linkmodes_set_policy, ptr @ethnl_set_linkmodes.__msg, ptr @ethnl_set_linkmodes.__msg.1, ptr @linkmodes_prepare_data.__msg, ptr @ethnl_check_linkmodes.__msg, ptr @ethnl_check_linkmodes.__msg.2, ptr @ethnl_update_linkmodes.__msg, ptr @ethnl_update_linkmodes.__msg.3], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_linkmodes_get_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_linkmodes_request_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_linkmodes_set_policy to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_set_linkmodes.__msg to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_set_linkmodes.__msg.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linkmodes_prepare_data.__msg to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_check_linkmodes.__msg to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_check_linkmodes.__msg.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_update_linkmodes.__msg to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_update_linkmodes.__msg.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @linkmodes_prepare_data(ptr nocapture noundef readnone %req_base, ptr noundef %reply_base, ptr noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reply_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reply_base, align 4
  %ksettings = getelementptr inbounds %struct.linkmodes_reply_data, ptr %reply_base, i32 0, i32 1
  %lsettings = getelementptr inbounds %struct.linkmodes_reply_data, ptr %reply_base, i32 0, i32 2
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
  br i1 %or.cond, label %if.end9, label %do.body

do.body:                                          ; preds = %if.end
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @linkmodes_prepare_data.__msg) #5
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %do.body.out_crit_edge, label %if.then7

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @linkmodes_prepare_data.__msg, ptr %4, align 4
  br label %out

if.end9:                                          ; preds = %if.end
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 44
  %6 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ethtool_ops, align 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool10.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool10.not, label %if.then11, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %lanes = getelementptr inbounds %struct.linkmodes_reply_data, ptr %reply_base, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %lanes, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  %lp_advertising = getelementptr inbounds %struct.linkmodes_reply_data, ptr %reply_base, i32 0, i32 1, i32 1, i32 2
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %lp_advertising, i32 noundef 92) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 92
  %peer_empty = getelementptr inbounds %struct.linkmodes_reply_data, ptr %reply_base, i32 0, i32 3
  %frombool = zext i1 %cmp4.i to i8
  %10 = ptrtoint ptr %peer_empty to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %peer_empty, align 4
  br label %out

out:                                              ; preds = %if.end13, %if.then7, %do.body.out_crit_edge
  tail call void @ethnl_ops_complete(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %out ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @linkmodes_reply_size(ptr nocapture noundef readonly %req_base, ptr noundef %reply_base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ethnl_req_info, ptr %req_base, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %link_modes = getelementptr inbounds %struct.linkmodes_reply_data, ptr %reply_base, i32 0, i32 1, i32 1
  %advertising = getelementptr inbounds %struct.linkmodes_reply_data, ptr %reply_base, i32 0, i32 1, i32 1, i32 1
  %call11 = tail call i32 @ethnl_bitset_size(ptr noundef %advertising, ptr noundef %link_modes, i32 noundef 92, ptr noundef nonnull @link_mode_names, i1 noundef zeroext %tobool) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add12 = add nuw i32 %call11, 32
  %peer_empty = getelementptr inbounds %struct.linkmodes_reply_data, ptr %reply_base, i32 0, i32 3
  %2 = ptrtoint ptr %peer_empty to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %peer_empty, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool13.not = icmp eq i8 %3, 0
  br i1 %tobool13.not, label %if.then14, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then14:                                        ; preds = %if.end
  %lp_advertising = getelementptr inbounds %struct.linkmodes_reply_data, ptr %reply_base, i32 0, i32 1, i32 1, i32 2
  %call18 = tail call i32 @ethnl_bitset_size(ptr noundef %lp_advertising, ptr noundef null, i32 noundef 92, ptr noundef nonnull @link_mode_names, i1 noundef zeroext %tobool) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then14.cleanup_crit_edge, label %if.end21

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %add22 = add i32 %call18, %add12
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %if.end.if.end23_crit_edge
  %len.0 = phi i32 [ %add12, %if.end.if.end23_crit_edge ], [ %add22, %if.end21 ]
  %master_slave_cfg = getelementptr inbounds %struct.linkmodes_reply_data, ptr %reply_base, i32 0, i32 1, i32 0, i32 11
  %4 = ptrtoint ptr %master_slave_cfg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %master_slave_cfg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp24.not = icmp eq i8 %5, 0
  %add28 = add i32 %len.0, 8
  %spec.select = select i1 %cmp24.not, i32 %len.0, i32 %add28
  %master_slave_state = getelementptr inbounds %struct.linkmodes_reply_data, ptr %reply_base, i32 0, i32 1, i32 0, i32 12
  %6 = ptrtoint ptr %master_slave_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %master_slave_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp31.not = icmp eq i8 %7, 0
  %add35 = add i32 %spec.select, 8
  %spec.select57 = select i1 %cmp31.not, i32 %spec.select, i32 %add35
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %entry.cleanup_crit_edge ], [ %call18, %if.then14.cleanup_crit_edge ], [ %spec.select57, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @linkmodes_fill_reply(ptr noundef %skb, ptr nocapture noundef readonly %req_base, ptr noundef %reply_base) #0 align 64 {
entry:
  %tmp.i81 = alloca i8, align 1
  %tmp.i79 = alloca i8, align 1
  %tmp.i77 = alloca i32, align 4
  %tmp.i75 = alloca i8, align 1
  %tmp.i73 = alloca i32, align 4
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ethnl_req_info, ptr %req_base, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %autoneg = getelementptr inbounds %struct.linkmodes_reply_data, ptr %reply_base, i32 0, i32 1, i32 0, i32 5
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %autoneg, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #5
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %link_modes = getelementptr inbounds %struct.linkmodes_reply_data, ptr %reply_base, i32 0, i32 1, i32 1
  %advertising = getelementptr inbounds %struct.linkmodes_reply_data, ptr %reply_base, i32 0, i32 1, i32 1, i32 1
  %call6 = call i32 @ethnl_put_bitset(ptr noundef %skb, i32 noundef 3, ptr noundef %advertising, ptr noundef %link_modes, i32 noundef 92, ptr noundef nonnull @link_mode_names, i1 noundef zeroext %tobool) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %peer_empty = getelementptr inbounds %struct.linkmodes_reply_data, ptr %reply_base, i32 0, i32 3
  %5 = ptrtoint ptr %peer_empty to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %peer_empty, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool9.not = icmp eq i8 %6, 0
  br i1 %tobool9.not, label %if.then10, label %if.end8.if.end18_crit_edge

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then10:                                        ; preds = %if.end8
  %lp_advertising = getelementptr inbounds %struct.linkmodes_reply_data, ptr %reply_base, i32 0, i32 1, i32 1, i32 2
  %call14 = call i32 @ethnl_put_bitset(ptr noundef %skb, i32 noundef 4, ptr noundef %lp_advertising, ptr noundef null, i32 noundef 92, ptr noundef nonnull @link_mode_names, i1 noundef zeroext %tobool) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then10.cleanup_crit_edge, label %if.then10.if.end18_crit_edge

if.then10.if.end18_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %if.then10.if.end18_crit_edge, %if.end8.if.end18_crit_edge
  %speed = getelementptr inbounds %struct.linkmodes_reply_data, ptr %reply_base, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i73) #5
  %9 = ptrtoint ptr %tmp.i73 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i73, align 4
  %call.i74 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i73) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i73) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool20.not = icmp eq i32 %call.i74, 0
  br i1 %tobool20.not, label %lor.lhs.false, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end18
  %duplex = getelementptr inbounds %struct.linkmodes_reply_data, ptr %reply_base, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %duplex, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i75) #5
  %12 = ptrtoint ptr %tmp.i75 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %tmp.i75, align 1
  %call.i76 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %tmp.i75) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i75) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool22.not = icmp eq i32 %call.i76, 0
  br i1 %tobool22.not, label %if.end24, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  %lanes = getelementptr inbounds %struct.linkmodes_reply_data, ptr %reply_base, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool25.not = icmp eq i32 %14, 0
  br i1 %tobool25.not, label %if.end24.if.end30_crit_edge, label %land.lhs.true

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i77) #5
  %15 = ptrtoint ptr %tmp.i77 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tmp.i77, align 4
  %call.i78 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i77) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i77) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool28.not = icmp eq i32 %call.i78, 0
  br i1 %tobool28.not, label %land.lhs.true.if.end30_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true.if.end30_crit_edge, %if.end24.if.end30_crit_edge
  %master_slave_cfg = getelementptr inbounds %struct.linkmodes_reply_data, ptr %reply_base, i32 0, i32 1, i32 0, i32 11
  %16 = ptrtoint ptr %master_slave_cfg to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %master_slave_cfg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp31.not = icmp eq i8 %17, 0
  br i1 %cmp31.not, label %if.end30.if.end38_crit_edge, label %land.lhs.true33

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

land.lhs.true33:                                  ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i79) #5
  %18 = ptrtoint ptr %tmp.i79 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %tmp.i79, align 1
  %call.i80 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %tmp.i79) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i79) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool36.not = icmp eq i32 %call.i80, 0
  br i1 %tobool36.not, label %land.lhs.true33.if.end38_crit_edge, label %land.lhs.true33.cleanup_crit_edge

land.lhs.true33.cleanup_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true33.if.end38_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.end38:                                         ; preds = %land.lhs.true33.if.end38_crit_edge, %if.end30.if.end38_crit_edge
  %master_slave_state = getelementptr inbounds %struct.linkmodes_reply_data, ptr %reply_base, i32 0, i32 1, i32 0, i32 12
  %19 = ptrtoint ptr %master_slave_state to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %master_slave_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp40.not = icmp eq i8 %20, 0
  br i1 %cmp40.not, label %if.end38.if.end47_crit_edge, label %land.lhs.true42

if.end38.if.end47_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

land.lhs.true42:                                  ; preds = %if.end38
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i81) #5
  %21 = ptrtoint ptr %tmp.i81 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %tmp.i81, align 1
  %call.i82 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 1, ptr noundef nonnull %tmp.i81) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i81) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %tobool45.not = icmp eq i32 %call.i82, 0
  br i1 %tobool45.not, label %land.lhs.true42.if.end47_crit_edge, label %land.lhs.true42.cleanup_crit_edge

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true42.if.end47_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.end47:                                         ; preds = %land.lhs.true42.if.end47_crit_edge, %if.end38.if.end47_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %land.lhs.true42.cleanup_crit_edge, %land.lhs.true33.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -90, %if.then10.cleanup_crit_edge ], [ -90, %lor.lhs.false.cleanup_crit_edge ], [ -90, %if.end18.cleanup_crit_edge ], [ -90, %land.lhs.true.cleanup_crit_edge ], [ -90, %land.lhs.true33.cleanup_crit_edge ], [ -90, %land.lhs.true42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_set_linkmodes(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %old_adv.i.i = alloca [3 x i32], align 4
  %ksettings = alloca %struct.ethtool_link_ksettings, align 4
  %req_info = alloca %struct.ethnl_req_info, align 4
  %mod = alloca i8, align 1
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mod) #5
  %4 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %mod, align 1
  %arrayidx.i = getelementptr ptr, ptr %3, i32 7
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.if.end4.i_crit_edge, label %land.lhs.true.i

entry.if.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

land.lhs.true.i:                                  ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr.i.i.i, align 1
  %cfg.off.i.i = add i8 %8, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %cfg.off.i.i)
  %switch.i.i = icmp ult i8 %cfg.off.i.i, 4
  br i1 %switch.i.i, label %land.lhs.true.i.if.end4.i_crit_edge, label %do.body.i

land.lhs.true.i.if.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

do.body.i:                                        ; preds = %land.lhs.true.i
  %extack.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %9 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %extack.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_check_linkmodes.__msg) #5
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %do.body.i.cleanup_crit_edge, label %if.then3.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ethnl_check_linkmodes.__msg, ptr %10, align 4
  br label %cleanup.sink.split.i

if.end4.i:                                        ; preds = %land.lhs.true.i.if.end4.i_crit_edge, %entry.if.end4.i_crit_edge
  %arrayidx5.i = getelementptr ptr, ptr %3, i32 9
  %12 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx5.i, align 4
  %tobool6.not.i = icmp eq ptr %13, null
  br i1 %tobool6.not.i, label %if.end4.i.if.end_crit_edge, label %land.lhs.true7.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.i:                                 ; preds = %if.end4.i
  %add.ptr.i.i39.i = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i39.i, align 4
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #5, !range !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %land.lhs.true7.i.if.end_crit_edge, label %do.body11.i

land.lhs.true7.i.if.end_crit_edge:                ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body11.i:                                      ; preds = %land.lhs.true7.i
  %extack13.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %18 = ptrtoint ptr %extack13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %extack13.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_check_linkmodes.__msg.2) #5
  %tobool14.not.i = icmp eq ptr %19, null
  br i1 %tobool14.not.i, label %do.body11.i.cleanup_crit_edge, label %if.then15.i

do.body11.i.cleanup_crit_edge:                    ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ethnl_check_linkmodes.__msg.2, ptr %19, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then15.i, %if.then3.i
  %.sink41.i = phi ptr [ %19, %if.then15.i ], [ %10, %if.then3.i ]
  %.sink40.i = phi ptr [ %13, %if.then15.i ], [ %6, %if.then3.i ]
  %retval.0.ph.i = phi i32 [ -22, %if.then15.i ], [ -95, %if.then3.i ]
  %bad_attr17.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %.sink41.i, i32 0, i32 1
  %21 = ptrtoint ptr %bad_attr17.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %.sink40.i, ptr %bad_attr17.i, align 4
  %policy18.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %.sink41.i, i32 0, i32 2
  %22 = ptrtoint ptr %policy18.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %policy18.i, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.i.if.end_crit_edge, %if.end4.i.if.end_crit_edge
  %arrayidx = getelementptr ptr, ptr %3, i32 1
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %25 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %_net.i, align 4
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %27 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %extack, align 4
  %call2 = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %req_info, ptr noundef %24, ptr noundef %26, ptr noundef %28, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %29 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %req_info, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 44
  %31 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ethtool_ops, align 16
  %get_link_ksettings = getelementptr inbounds %struct.ethtool_ops, ptr %32, i32 0, i32 56
  %33 = ptrtoint ptr %get_link_ksettings to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_link_ksettings, align 4
  %tobool.not = icmp eq ptr %34, null
  br i1 %tobool.not, label %if.end5.out_dev_crit_edge, label %lor.lhs.false

if.end5.out_dev_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_dev

lor.lhs.false:                                    ; preds = %if.end5
  %set_link_ksettings = getelementptr inbounds %struct.ethtool_ops, ptr %32, i32 0, i32 57
  %35 = ptrtoint ptr %set_link_ksettings to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_link_ksettings, align 4
  %tobool8.not = icmp eq ptr %36, null
  br i1 %tobool8.not, label %lor.lhs.false.out_dev_crit_edge, label %if.end10

lor.lhs.false.out_dev_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_dev

if.end10:                                         ; preds = %lor.lhs.false
  call void @rtnl_lock() #5
  %call11 = call i32 @ethnl_ops_begin(ptr noundef %30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.out_rtnl_crit_edge, label %if.end14

if.end10.out_rtnl_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_rtnl

if.end14:                                         ; preds = %if.end10
  %call15 = call i32 @__ethtool_get_link_ksettings(ptr noundef %30, ptr noundef nonnull %ksettings) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.body, label %if.end22

do.body:                                          ; preds = %if.end14
  %37 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_linkmodes.__msg) #5
  %tobool19.not = icmp eq ptr %38, null
  br i1 %tobool19.not, label %do.body.out_ops_crit_edge, label %if.then20

do.body.out_ops_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_ops

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @ethnl_set_linkmodes.__msg, ptr %38, align 4
  br label %out_ops

if.end22:                                         ; preds = %if.end14
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i78 = icmp eq ptr %41, null
  br i1 %tobool.not.i78, label %if.end22.if.end7.i_crit_edge, label %if.then.i

if.end22.if.end7.i_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.then.i:                                        ; preds = %if.end22
  %master_slave_cfg1.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ksettings, i32 0, i32 11
  %42 = ptrtoint ptr %master_slave_cfg1.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %master_slave_cfg1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp.i = icmp eq i8 %43, 0
  br i1 %cmp.i, label %do.body.i80, label %if.then.i.if.end7.i_crit_edge

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

do.body.i80:                                      ; preds = %if.then.i
  %44 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_update_linkmodes.__msg) #5
  %tobool4.not.i = icmp eq ptr %45, null
  br i1 %tobool4.not.i, label %do.body.i80.out_ops_crit_edge, label %if.then5.i

do.body.i80.out_ops_crit_edge:                    ; preds = %do.body.i80
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_ops

if.then5.i:                                       ; preds = %do.body.i80
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @ethnl_update_linkmodes.__msg, ptr %45, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %45, i32 0, i32 1
  %47 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %41, ptr %bad_attr.i, align 4
  %policy.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %45, i32 0, i32 2
  %48 = ptrtoint ptr %policy.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %policy.i, align 4
  br label %out_ops

if.end7.i:                                        ; preds = %if.then.i.if.end7.i_crit_edge, %if.end22.if.end7.i_crit_edge
  %49 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %mod, align 1
  %arrayidx8.i = getelementptr ptr, ptr %3, i32 5
  %50 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx8.i, align 4
  %tobool9.i = icmp ne ptr %51, null
  %52 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx5.i, align 4
  %tobool11.i = icmp ne ptr %53, null
  %arrayidx13.i = getelementptr ptr, ptr %3, i32 6
  %54 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx13.i, align 4
  %tobool14.i = icmp ne ptr %55, null
  %autoneg.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ksettings, i32 0, i32 5
  %arrayidx16.i = getelementptr ptr, ptr %3, i32 2
  %56 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx16.i, align 4
  %tobool.not.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i.i, label %ethnl_update_u8.exit.ithread-pre-split, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end7.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %57, i32 4
  %58 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %add.ptr.i.i.i.i, align 1
  %60 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %autoneg.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %59)
  %cmp.i.i = icmp eq i8 %61, %59
  br i1 %cmp.i.i, label %if.end.i.i.ethnl_update_u8.exit.i_crit_edge, label %if.end4.i.i

if.end.i.i.ethnl_update_u8.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u8.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %59, ptr %autoneg.i, align 1
  %63 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %mod, align 1
  br label %ethnl_update_u8.exit.i

ethnl_update_u8.exit.ithread-pre-split:           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %.pr = load i8, ptr %autoneg.i, align 1
  br label %ethnl_update_u8.exit.i

ethnl_update_u8.exit.i:                           ; preds = %ethnl_update_u8.exit.ithread-pre-split, %if.end4.i.i, %if.end.i.i.ethnl_update_u8.exit.i_crit_edge
  %65 = phi i8 [ %.pr, %ethnl_update_u8.exit.ithread-pre-split ], [ %59, %if.end4.i.i ], [ %59, %if.end.i.i.ethnl_update_u8.exit.i_crit_edge ]
  %66 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx5.i, align 4
  %tobool18.not.i = icmp eq ptr %67, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool37.not.i = icmp eq i8 %65, 0
  br i1 %tobool18.not.i, label %if.else.i, label %if.then19.i

if.then19.i:                                      ; preds = %ethnl_update_u8.exit.i
  br i1 %tobool37.not.i, label %land.lhs.true.i81, label %if.then19.i.if.end40.i_crit_edge

if.then19.i.if.end40.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i

land.lhs.true.i81:                                ; preds = %if.then19.i
  %68 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ethtool_ops, align 16
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load.i = load i8, ptr %69, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool22.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool22.not.i, label %do.body24.i, label %land.lhs.true.i81.if.end40.i_crit_edge

land.lhs.true.i81.if.end40.i_crit_edge:           ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i

do.body24.i:                                      ; preds = %land.lhs.true.i81
  %71 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_update_linkmodes.__msg.3) #5
  %tobool27.not.i = icmp eq ptr %72, null
  br i1 %tobool27.not.i, label %do.body24.i.out_ops_crit_edge, label %if.then28.i

do.body24.i.out_ops_crit_edge:                    ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_ops

if.then28.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @ethnl_update_linkmodes.__msg.3, ptr %72, align 4
  %bad_attr30.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %72, i32 0, i32 1
  %74 = ptrtoint ptr %bad_attr30.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %67, ptr %bad_attr30.i, align 4
  %policy31.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %72, i32 0, i32 2
  %75 = ptrtoint ptr %policy31.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %policy31.i, align 4
  br label %out_ops

if.else.i:                                        ; preds = %ethnl_update_u8.exit.i
  br i1 %tobool37.not.i, label %if.then38.i, label %if.else.i.if.end40.i_crit_edge

if.else.i.if.end40.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i

if.then38.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %lanes.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ksettings, i32 0, i32 2
  %76 = ptrtoint ptr %lanes.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %lanes.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then38.i, %if.else.i.if.end40.i_crit_edge, %land.lhs.true.i81.if.end40.i_crit_edge, %if.then19.i.if.end40.i_crit_edge
  %advertising.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ksettings, i32 0, i32 1, i32 1
  %arrayidx41.i = getelementptr ptr, ptr %3, i32 3
  %77 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx41.i, align 4
  %79 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %extack, align 4
  %call.i = call i32 @ethnl_update_bitset(ptr noundef %advertising.i, i32 noundef 92, ptr noundef %78, ptr noundef nonnull @link_mode_names, ptr noundef %80, ptr noundef nonnull %mod) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp43.i = icmp slt i32 %call.i, 0
  br i1 %cmp43.i, label %if.end40.i.out_ops_crit_edge, label %if.end46.i

if.end40.i.out_ops_crit_edge:                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_ops

if.end46.i:                                       ; preds = %if.end40.i
  %speed.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ksettings, i32 0, i32 1
  %81 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx8.i, align 4
  %tobool.not.i126.i = icmp eq ptr %82, null
  br i1 %tobool.not.i126.i, label %if.end46.i.ethnl_update_u32.exit.i_crit_edge, label %if.end.i129.i

if.end46.i.ethnl_update_u32.exit.i_crit_edge:     ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit.i

if.end.i129.i:                                    ; preds = %if.end46.i
  %add.ptr.i.i.i127.i = getelementptr i8, ptr %82, i32 4
  %83 = ptrtoint ptr %add.ptr.i.i.i127.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr.i.i.i127.i, align 4
  %85 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %84)
  %cmp.i128.i = icmp eq i32 %86, %84
  br i1 %cmp.i128.i, label %if.end.i129.i.ethnl_update_u32.exit.i_crit_edge, label %if.end2.i.i

if.end.i129.i.ethnl_update_u32.exit.i_crit_edge:  ; preds = %if.end.i129.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit.i

if.end2.i.i:                                      ; preds = %if.end.i129.i
  call void @__sanitizer_cov_trace_pc() #7
  %87 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %84, ptr %speed.i, align 4
  %88 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %mod, align 1
  br label %ethnl_update_u32.exit.i

ethnl_update_u32.exit.i:                          ; preds = %if.end2.i.i, %if.end.i129.i.ethnl_update_u32.exit.i_crit_edge, %if.end46.i.ethnl_update_u32.exit.i_crit_edge
  %lanes48.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ksettings, i32 0, i32 2
  br i1 %tobool18.not.i, label %ethnl_update_u32.exit.i.ethnl_update_u32.exit135.i_crit_edge, label %if.end.i133.i

ethnl_update_u32.exit.i.ethnl_update_u32.exit135.i_crit_edge: ; preds = %ethnl_update_u32.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit135.i

if.end.i133.i:                                    ; preds = %ethnl_update_u32.exit.i
  %add.ptr.i.i.i131.i = getelementptr i8, ptr %67, i32 4
  %89 = ptrtoint ptr %add.ptr.i.i.i131.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %add.ptr.i.i.i131.i, align 4
  %91 = ptrtoint ptr %lanes48.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %lanes48.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %90)
  %cmp.i132.i = icmp eq i32 %92, %90
  br i1 %cmp.i132.i, label %if.end.i133.i.ethnl_update_u32.exit135.i_crit_edge, label %if.end2.i134.i

if.end.i133.i.ethnl_update_u32.exit135.i_crit_edge: ; preds = %if.end.i133.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit135.i

if.end2.i134.i:                                   ; preds = %if.end.i133.i
  call void @__sanitizer_cov_trace_pc() #7
  %93 = ptrtoint ptr %lanes48.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %90, ptr %lanes48.i, align 4
  %94 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %mod, align 1
  br label %ethnl_update_u32.exit135.i

ethnl_update_u32.exit135.i:                       ; preds = %if.end2.i134.i, %if.end.i133.i.ethnl_update_u32.exit135.i_crit_edge, %ethnl_update_u32.exit.i.ethnl_update_u32.exit135.i_crit_edge
  %duplex.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ksettings, i32 0, i32 2
  %95 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx13.i, align 4
  %tobool.not.i136.i = icmp eq ptr %96, null
  br i1 %tobool.not.i136.i, label %ethnl_update_u32.exit135.i.ethnl_update_u8.exit141.i_crit_edge, label %if.end.i139.i

ethnl_update_u32.exit135.i.ethnl_update_u8.exit141.i_crit_edge: ; preds = %ethnl_update_u32.exit135.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u8.exit141.i

if.end.i139.i:                                    ; preds = %ethnl_update_u32.exit135.i
  %add.ptr.i.i.i137.i = getelementptr i8, ptr %96, i32 4
  %97 = ptrtoint ptr %add.ptr.i.i.i137.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %add.ptr.i.i.i137.i, align 1
  %99 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %100, i8 %98)
  %cmp.i138.i = icmp eq i8 %100, %98
  br i1 %cmp.i138.i, label %if.end.i139.i.ethnl_update_u8.exit141.i_crit_edge, label %if.end4.i140.i

if.end.i139.i.ethnl_update_u8.exit141.i_crit_edge: ; preds = %if.end.i139.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u8.exit141.i

if.end4.i140.i:                                   ; preds = %if.end.i139.i
  call void @__sanitizer_cov_trace_pc() #7
  %101 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %98, ptr %duplex.i, align 4
  %102 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %mod, align 1
  br label %ethnl_update_u8.exit141.i

ethnl_update_u8.exit141.i:                        ; preds = %if.end4.i140.i, %if.end.i139.i.ethnl_update_u8.exit141.i_crit_edge, %ethnl_update_u32.exit135.i.ethnl_update_u8.exit141.i_crit_edge
  %master_slave_cfg50.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ksettings, i32 0, i32 11
  br i1 %tobool.not.i78, label %ethnl_update_u8.exit141.i.ethnl_update_u8.exit147.i_crit_edge, label %if.end.i145.i

ethnl_update_u8.exit141.i.ethnl_update_u8.exit147.i_crit_edge: ; preds = %ethnl_update_u8.exit141.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u8.exit147.i

if.end.i145.i:                                    ; preds = %ethnl_update_u8.exit141.i
  %add.ptr.i.i.i143.i = getelementptr i8, ptr %41, i32 4
  %103 = ptrtoint ptr %add.ptr.i.i.i143.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %add.ptr.i.i.i143.i, align 1
  %105 = ptrtoint ptr %master_slave_cfg50.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %master_slave_cfg50.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %106, i8 %104)
  %cmp.i144.i = icmp eq i8 %106, %104
  br i1 %cmp.i144.i, label %if.end.i145.i.ethnl_update_u8.exit147.i_crit_edge, label %if.end4.i146.i

if.end.i145.i.ethnl_update_u8.exit147.i_crit_edge: ; preds = %if.end.i145.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u8.exit147.i

if.end4.i146.i:                                   ; preds = %if.end.i145.i
  call void @__sanitizer_cov_trace_pc() #7
  %107 = ptrtoint ptr %master_slave_cfg50.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %104, ptr %master_slave_cfg50.i, align 1
  %108 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %mod, align 1
  br label %ethnl_update_u8.exit147.i

ethnl_update_u8.exit147.i:                        ; preds = %if.end4.i146.i, %if.end.i145.i.ethnl_update_u8.exit147.i_crit_edge, %ethnl_update_u8.exit141.i.ethnl_update_u8.exit147.i_crit_edge
  %109 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx41.i, align 4
  %tobool52.not.i = icmp eq ptr %110, null
  br i1 %tobool52.not.i, label %land.lhs.true53.i, label %ethnl_update_u8.exit147.i.if.end26_crit_edge

ethnl_update_u8.exit147.i.if.end26_crit_edge:     ; preds = %ethnl_update_u8.exit147.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

land.lhs.true53.i:                                ; preds = %ethnl_update_u8.exit147.i
  %111 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %autoneg.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool56.not.i = icmp ne i8 %112, 0
  %brmerge.i = select i1 %tobool9.i, i1 true, i1 %tobool11.i
  %brmerge125.i = select i1 %brmerge.i, i1 true, i1 %tobool14.i
  %or.cond.i = select i1 %tobool56.not.i, i1 %brmerge125.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true65.i, label %land.lhs.true53.i.if.end26_crit_edge

land.lhs.true53.i.if.end26_crit_edge:             ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

land.lhs.true65.i:                                ; preds = %land.lhs.true53.i
  %link_modes.i.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ksettings, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %old_adv.i.i) #5
  %113 = call ptr @memcpy(ptr %old_adv.i.i, ptr %advertising.i, i32 12)
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %land.lhs.true65.i
  %i.052.i.i = phi i32 [ 0, %land.lhs.true65.i ], [ %inc.i.i, %cleanup.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [0 x %struct.link_mode_info], ptr @link_mode_params, i32 0, i32 %i.052.i.i
  %114 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %115)
  %cmp8.i.i = icmp eq i32 %115, -1
  br i1 %cmp8.i.i, label %for.body.i.i.cleanup.i.i_crit_edge, label %if.end.i149.i

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i.i

if.end.i149.i:                                    ; preds = %for.body.i.i
  %div3.i.i.i = lshr i32 %i.052.i.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %link_modes.i.i, i32 %div3.i.i.i
  %116 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %i.052.i.i, 31
  %118 = shl nuw i32 1, %and.i.i.i
  %119 = and i32 %117, %118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool.not.i148.i = icmp eq i32 %119, 0
  br i1 %tobool.not.i148.i, label %if.end.i149.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i149.i.if.else.i.i_crit_edge:              ; preds = %if.end.i149.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i149.i
  br i1 %tobool9.i, label %lor.lhs.false.i.i, label %land.lhs.true.i.i.land.lhs.true13.i.i_crit_edge

land.lhs.true.i.i.land.lhs.true13.i.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true13.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i
  %120 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %121)
  %cmp12.i.i = icmp eq i32 %115, %121
  br i1 %cmp12.i.i, label %lor.lhs.false.i.i.land.lhs.true13.i.i_crit_edge, label %lor.lhs.false.i.i.if.else.i.i_crit_edge

lor.lhs.false.i.i.if.else.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

lor.lhs.false.i.i.land.lhs.true13.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true13.i.i

land.lhs.true13.i.i:                              ; preds = %lor.lhs.false.i.i.land.lhs.true13.i.i_crit_edge, %land.lhs.true.i.i.land.lhs.true13.i.i_crit_edge
  br i1 %tobool11.i, label %lor.lhs.false15.i.i, label %land.lhs.true13.i.i.land.lhs.true19.i.i_crit_edge

land.lhs.true13.i.i.land.lhs.true19.i.i_crit_edge: ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true19.i.i

lor.lhs.false15.i.i:                              ; preds = %land.lhs.true13.i.i
  %lanes.i.i = getelementptr [0 x %struct.link_mode_info], ptr @link_mode_params, i32 0, i32 %i.052.i.i, i32 1
  %122 = ptrtoint ptr %lanes.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %lanes.i.i, align 4
  %conv.i.i = zext i8 %123 to i32
  %124 = ptrtoint ptr %lanes48.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %lanes48.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %conv.i.i)
  %cmp17.i.i = icmp eq i32 %125, %conv.i.i
  br i1 %cmp17.i.i, label %lor.lhs.false15.i.i.land.lhs.true19.i.i_crit_edge, label %lor.lhs.false15.i.i.if.else.i.i_crit_edge

lor.lhs.false15.i.i.if.else.i.i_crit_edge:        ; preds = %lor.lhs.false15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

lor.lhs.false15.i.i.land.lhs.true19.i.i_crit_edge: ; preds = %lor.lhs.false15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true19.i.i

land.lhs.true19.i.i:                              ; preds = %lor.lhs.false15.i.i.land.lhs.true19.i.i_crit_edge, %land.lhs.true13.i.i.land.lhs.true19.i.i_crit_edge
  br i1 %tobool14.i, label %lor.lhs.false21.i.i, label %land.lhs.true19.i.i.if.then28.i.i_crit_edge

land.lhs.true19.i.i.if.then28.i.i_crit_edge:      ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then28.i.i

lor.lhs.false21.i.i:                              ; preds = %land.lhs.true19.i.i
  %duplex.i.i = getelementptr [0 x %struct.link_mode_info], ptr @link_mode_params, i32 0, i32 %i.052.i.i, i32 2
  %126 = ptrtoint ptr %duplex.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %duplex.i.i, align 1
  %128 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %127, i8 %129)
  %cmp26.i.i = icmp eq i8 %127, %129
  br i1 %cmp26.i.i, label %lor.lhs.false21.i.i.if.then28.i.i_crit_edge, label %lor.lhs.false21.i.i.if.else.i.i_crit_edge

lor.lhs.false21.i.i.if.else.i.i_crit_edge:        ; preds = %lor.lhs.false21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

lor.lhs.false21.i.i.if.then28.i.i_crit_edge:      ; preds = %lor.lhs.false21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then28.i.i

if.then28.i.i:                                    ; preds = %lor.lhs.false21.i.i.if.then28.i.i_crit_edge, %land.lhs.true19.i.i.if.then28.i.i_crit_edge
  call void @_set_bit(i32 noundef %i.052.i.i, ptr noundef %advertising.i) #5
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %lor.lhs.false21.i.i.if.else.i.i_crit_edge, %lor.lhs.false15.i.i.if.else.i.i_crit_edge, %lor.lhs.false.i.i.if.else.i.i_crit_edge, %if.end.i149.i.if.else.i.i_crit_edge
  call void @_clear_bit(i32 noundef %i.052.i.i, ptr noundef %advertising.i) #5
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.else.i.i, %if.then28.i.i, %for.body.i.i.cleanup.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.052.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 92
  br i1 %exitcond.not.i.i, label %ethnl_auto_linkmodes.exit.i, label %cleanup.i.i.for.body.i.i_crit_edge

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

ethnl_auto_linkmodes.exit.i:                      ; preds = %cleanup.i.i
  %call13.i.i.i = call i32 @__bitmap_equal(ptr noundef nonnull %old_adv.i.i, ptr noundef %advertising.i, i32 noundef 92) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %call13.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %old_adv.i.i) #5
  br i1 %tobool32.not.i.i, label %if.end26.thread, label %ethnl_auto_linkmodes.exit.i.if.end26_crit_edge

ethnl_auto_linkmodes.exit.i.if.end26_crit_edge:   ; preds = %ethnl_auto_linkmodes.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.end26.thread:                                  ; preds = %ethnl_auto_linkmodes.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %130 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 1, ptr %mod, align 1
  br label %if.then28

if.end26:                                         ; preds = %ethnl_auto_linkmodes.exit.i.if.end26_crit_edge, %land.lhs.true53.i.if.end26_crit_edge, %ethnl_update_u8.exit147.i.if.end26_crit_edge
  %131 = ptrtoint ptr %mod to i32
  call void @__asan_load1_noabort(i32 %131)
  %.pr89 = load i8, ptr %mod, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr89)
  %tobool27.not = icmp eq i8 %.pr89, 0
  br i1 %tobool27.not, label %if.end26.out_ops_crit_edge, label %if.end26.if.then28_crit_edge

if.end26.if.then28_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then28

if.end26.out_ops_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_ops

if.then28:                                        ; preds = %if.end26.if.then28_crit_edge, %if.end26.thread
  %132 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ethtool_ops, align 16
  %set_link_ksettings30 = getelementptr inbounds %struct.ethtool_ops, ptr %133, i32 0, i32 57
  %134 = ptrtoint ptr %set_link_ksettings30 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %set_link_ksettings30, align 4
  %call31 = call i32 %135(ptr noundef %30, ptr noundef nonnull %ksettings) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.body34, label %if.else

do.body34:                                        ; preds = %if.then28
  %136 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_linkmodes.__msg.1) #5
  %tobool37.not = icmp eq ptr %137, null
  br i1 %tobool37.not, label %do.body34.out_ops_crit_edge, label %if.then38

do.body34.out_ops_crit_edge:                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_ops

if.then38:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @ethnl_set_linkmodes.__msg.1, ptr %137, align 4
  br label %out_ops

if.else:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  call void @ethtool_notify(ptr noundef %30, i32 noundef 5, ptr noundef null) #5
  br label %out_ops

out_ops:                                          ; preds = %if.else, %if.then38, %do.body34.out_ops_crit_edge, %if.end26.out_ops_crit_edge, %if.end40.i.out_ops_crit_edge, %if.then28.i, %do.body24.i.out_ops_crit_edge, %if.then5.i, %do.body.i80.out_ops_crit_edge, %if.then20, %do.body.out_ops_crit_edge
  %ret.0 = phi i32 [ %call31, %if.else ], [ 0, %if.end26.out_ops_crit_edge ], [ %call15, %if.then20 ], [ %call15, %do.body.out_ops_crit_edge ], [ %call31, %if.then38 ], [ %call31, %do.body34.out_ops_crit_edge ], [ %call.i, %if.end40.i.out_ops_crit_edge ], [ -95, %do.body24.i.out_ops_crit_edge ], [ -95, %if.then28.i ], [ -95, %do.body.i80.out_ops_crit_edge ], [ -95, %if.then5.i ]
  call void @ethnl_ops_complete(ptr noundef %30) #5
  br label %out_rtnl

out_rtnl:                                         ; preds = %out_ops, %if.end10.out_rtnl_crit_edge
  %ret.1 = phi i32 [ %call11, %if.end10.out_rtnl_crit_edge ], [ %ret.0, %out_ops ]
  call void @rtnl_unlock() #5
  br label %out_dev

out_dev:                                          ; preds = %out_rtnl, %lor.lhs.false.out_dev_crit_edge, %if.end5.out_dev_crit_edge
  %ret.2 = phi i32 [ %ret.1, %out_rtnl ], [ -95, %lor.lhs.false.out_dev_crit_edge ], [ -95, %if.end5.out_dev_crit_edge ]
  %139 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %req_info, align 4
  %tobool.not.i.i83 = icmp eq ptr %140, null
  br i1 %tobool.not.i.i83, label %out_dev.cleanup_crit_edge, label %do.body1.i.i.i

out_dev.cleanup_crit_edge:                        ; preds = %out_dev
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body1.i.i.i:                                   ; preds = %out_dev
  %dev_tracker.i = getelementptr inbounds %struct.ethnl_req_info, ptr %req_info, i32 0, i32 1
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %140, i32 0, i32 119
  %call.i.i.i = call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %dev_tracker.i) #5
  %141 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !32
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %140, i32 0, i32 118
  %142 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %144 = ptrtoint ptr %143 to i32
  %145 = call i32 @llvm.read_register.i32(metadata !20) #5
  %and.i.i.i.i = and i32 %145, -16384
  %146 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %146, i32 0, i32 3
  %147 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i84 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %148
  %149 = ptrtoint ptr %arrayidx.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx.i.i.i84, align 4
  %add.i.i.i = add i32 %150, %144
  %151 = inttoptr i32 %add.i.i.i to ptr
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %151, align 4
  %add13.i.i.i = add i32 %153, -1
  store i32 %add13.i.i.i, ptr %151, align 4
  %154 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !33
  %and.i.i.i.i.i = and i32 %154, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_put.exit.i.i_crit_edge, !prof !34

do.body1.i.i.i.dev_put.exit.i.i_crit_edge:        ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_put.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @warn_bogus_irq_restore() #5
  br label %dev_put.exit.i.i

dev_put.exit.i.i:                                 ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_put.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %141) #5, !srcloc !35
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit.i.i, %out_dev.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cleanup.sink.split.i, %do.body11.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end.cleanup_crit_edge ], [ %ret.2, %out_dev.cleanup_crit_edge ], [ %ret.2, %dev_put.exit.i.i ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -22, %do.body11.i.cleanup_crit_edge ], [ -95, %do.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mod) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_info) #5
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ksettings) #5
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
declare dso_local i32 @__ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_ops_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_bitset_size(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_put_bitset(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_update_bitset(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_equal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.named.register.sp = !{!20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @ethnl_linkmodes_get_policy, !1, !"ethnl_linkmodes_get_policy", i1 false, i1 false}
!1 = !{!"../net/ethtool/linkmodes.c", i32 23, i32 25}
!2 = !{ptr @ethnl_linkmodes_request_ops, !3, !"ethnl_linkmodes_request_ops", i1 false, i1 false}
!3 = !{!"../net/ethtool/linkmodes.c", i32 149, i32 32}
!4 = !{ptr @ethnl_linkmodes_set_policy, !5, !"ethnl_linkmodes_set_policy", i1 false, i1 false}
!5 = !{!"../net/ethtool/linkmodes.c", i32 163, i32 25}
!6 = !{ptr @ethnl_set_linkmodes.__msg, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../net/ethtool/linkmodes.c", i32 340, i32 3}
!8 = !{ptr @ethnl_set_linkmodes.__msg.1, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../net/ethtool/linkmodes.c", i32 351, i32 4}
!10 = !{ptr @linkmodes_prepare_data.__msg, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../net/ethtool/linkmodes.c", i32 44, i32 3}
!12 = !{ptr @ethnl_check_linkmodes.__msg, !13, !"__msg", i1 false, i1 false}
!13 = !{!"../net/ethtool/linkmodes.c", i32 228, i32 3}
!14 = !{ptr @ethnl_check_linkmodes.__msg.2, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../net/ethtool/linkmodes.c", i32 235, i32 3}
!16 = !{ptr @ethnl_update_linkmodes.__msg, !17, !"__msg", i1 false, i1 false}
!17 = !{!"../net/ethtool/linkmodes.c", i32 255, i32 4}
!18 = !{ptr @ethnl_update_linkmodes.__msg.3, !19, !"__msg", i1 false, i1 false}
!19 = !{!"../net/ethtool/linkmodes.c", i32 276, i32 4}
!20 = !{!"sp"}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i8 0, i8 2}
!31 = !{i32 0, i32 33}
!32 = !{i64 662582, i64 662643}
!33 = !{i64 665314}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 665599}
