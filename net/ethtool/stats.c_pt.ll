; ModuleID = '/llk/IR_all_yes/net/ethtool/stats.c_pt.bc'
source_filename = "../net/ethtool/stats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.ethnl_request_ops = type { i8, i8, i16, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.stats_req_info = type { %struct.ethnl_req_info, [1 x i32] }
%struct.ethnl_req_info = type { ptr, ptr, i32 }
%struct.stats_reply_data = type { %struct.ethnl_reply_data, %union.anon.148, ptr }
%struct.ethnl_reply_data = type { ptr }
%union.anon.148 = type { %struct.anon.149 }
%struct.anon.149 = type { %struct.ethtool_eth_phy_stats, %struct.ethtool_eth_mac_stats, %struct.ethtool_eth_ctrl_stats, %struct.ethtool_rmon_stats }
%struct.ethtool_eth_phy_stats = type { i64 }
%struct.ethtool_eth_mac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_eth_ctrl_stats = type { i64, i64, i64 }
%struct.ethtool_rmon_stats = type { i64, i64, i64, i64, [10 x i64], [10 x i64] }
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
%struct.ethtool_rmon_hist_range = type { i16, i16 }

@stats_std_names = dso_local constant { [4 x [32 x i8]], [32 x i8] } { [4 x [32 x i8]] [[32 x i8] c"eth-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"eth-mac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"eth-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rmon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@stats_eth_phy_names = dso_local constant { [1 x [32 x i8]], [32 x i8] } { [1 x [32 x i8]] [[32 x i8] c"SymbolErrorDuringCarrier\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@stats_eth_mac_names = dso_local constant { [22 x [32 x i8]], [160 x i8] } { [22 x [32 x i8]] [[32 x i8] c"FramesTransmittedOK\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"SingleCollisionFrames\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MultipleCollisionFrames\00\00\00\00\00\00\00\00\00", [32 x i8] c"FramesReceivedOK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"FrameCheckSequenceErrors\00\00\00\00\00\00\00\00", [32 x i8] c"AlignmentErrors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"OctetsTransmittedOK\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"FramesWithDeferredXmissions\00\00\00\00\00", [32 x i8] c"LateCollisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"FramesAbortedDueToXSColls\00\00\00\00\00\00\00", [32 x i8] c"FramesLostDueToIntMACXmitError\00\00", [32 x i8] c"CarrierSenseErrors\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"OctetsReceivedOK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"FramesLostDueToIntMACRcvError\00\00\00", [32 x i8] c"MulticastFramesXmittedOK\00\00\00\00\00\00\00\00", [32 x i8] c"BroadcastFramesXmittedOK\00\00\00\00\00\00\00\00", [32 x i8] c"FramesWithExcessiveDeferral\00\00\00\00\00", [32 x i8] c"MulticastFramesReceivedOK\00\00\00\00\00\00\00", [32 x i8] c"BroadcastFramesReceivedOK\00\00\00\00\00\00\00", [32 x i8] c"InRangeLengthErrors\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"OutOfRangeLengthField\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"FrameTooLongErrors\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [160 x i8] zeroinitializer }, align 32
@stats_eth_ctrl_names = dso_local constant { [3 x [32 x i8]], [32 x i8] } { [3 x [32 x i8]] [[32 x i8] c"MACControlFramesTransmitted\00\00\00\00\00", [32 x i8] c"MACControlFramesReceived\00\00\00\00\00\00\00\00", [32 x i8] c"UnsupportedOpcodesReceived\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@stats_rmon_names = dso_local constant { [4 x [32 x i8]], [32 x i8] } { [4 x [32 x i8]] [[32 x i8] c"etherStatsUndersizePkts\00\00\00\00\00\00\00\00\00", [32 x i8] c"etherStatsOversizePkts\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"etherStatsFragments\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"etherStatsJabbers\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_stats_get_policy = dso_local constant { <{ %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy }>, [32 x i8] } { <{ %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer } }>, [32 x i8] zeroinitializer }, align 32
@ethnl_stats_request_ops = dso_local constant { %struct.ethnl_request_ops, [60 x i8] } { %struct.ethnl_request_ops { i8 32, i8 33, i16 2, i32 16, i32 416, i8 0, ptr @stats_parse_request, ptr @stats_prepare_data, ptr @stats_reply_size, ptr @stats_fill_reply, ptr null }, [60 x i8] zeroinitializer }, align 32
@stats_parse_request.__msg = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no stats requested\00", [45 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"stats_std_names\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 29, i32 12 }
@___asan_gen_.4 = private unnamed_addr constant [20 x i8] c"stats_eth_phy_names\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 36, i32 12 }
@___asan_gen_.7 = private unnamed_addr constant [20 x i8] c"stats_eth_mac_names\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 40, i32 12 }
@___asan_gen_.10 = private unnamed_addr constant [21 x i8] c"stats_eth_ctrl_names\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 65, i32 12 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"stats_rmon_names\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 71, i32 12 }
@___asan_gen_.16 = private unnamed_addr constant [23 x i8] c"ethnl_stats_get_policy\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 78, i32 25 }
@___asan_gen_.19 = private unnamed_addr constant [24 x i8] c"ethnl_stats_request_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 401, i32 32 }
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.23 = private constant [23 x i8] c"../net/ethtool/stats.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 99, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 991, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @stats_std_names, ptr @stats_eth_phy_names, ptr @stats_eth_mac_names, ptr @stats_eth_ctrl_names, ptr @stats_rmon_names, ptr @ethnl_stats_get_policy, ptr @ethnl_stats_request_ops, ptr @stats_parse_request.__msg, ptr @.str], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_std_names to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_eth_phy_names to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_eth_mac_names to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_eth_ctrl_names to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_rmon_names to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_stats_get_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_stats_request_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_parse_request.__msg to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stats_parse_request(ptr noundef %req_base, ptr nocapture noundef readonly %tb, ptr noundef %extack) #0 align 64 {
entry:
  %mod = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mod) #4
  %0 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %mod, align 1
  %stat_mask = getelementptr inbounds %struct.stats_req_info, ptr %req_base, i32 0, i32 1
  %arrayidx = getelementptr ptr, ptr %tb, i32 3
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call = call i32 @ethnl_update_bitset(ptr noundef %stat_mask, i32 noundef 4, ptr noundef %2, ptr noundef nonnull @stats_std_names, ptr noundef %extack, ptr noundef nonnull %mod) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %mod to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mod, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @do_trace_netlink_extack(ptr noundef nonnull @stats_parse_request.__msg) #4
  %tobool3.not = icmp eq ptr %extack, null
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @stats_parse_request.__msg, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.then4 ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mod) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stats_prepare_data(ptr noundef %req_base, ptr noundef %reply_base, ptr nocapture noundef readnone %info) #0 align 64 {
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
  %2 = getelementptr inbounds %struct.stats_reply_data, ptr %reply_base, i32 0, i32 1
  %3 = call ptr @memset(ptr %2, i32 255, i32 400)
  %stat_mask = getelementptr inbounds %struct.stats_req_info, ptr %req_base, i32 0, i32 1
  %4 = ptrtoint ptr %stat_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %stat_mask, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 44
  %6 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ethtool_ops, align 16
  %get_eth_phy_stats = getelementptr inbounds %struct.ethtool_ops, ptr %7, i32 0, i32 65
  %8 = ptrtoint ptr %get_eth_phy_stats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_eth_phy_stats, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %land.lhs.true.if.end10_crit_edge, label %if.then7

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %9(ptr noundef %1, ptr noundef %2) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %10 = ptrtoint ptr %stat_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %stat_mask, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14.not = icmp eq i32 %12, 0
  br i1 %tobool14.not, label %if.end10.if.end21_crit_edge, label %land.lhs.true15

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

land.lhs.true15:                                  ; preds = %if.end10
  %ethtool_ops16 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 44
  %13 = ptrtoint ptr %ethtool_ops16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ethtool_ops16, align 16
  %get_eth_mac_stats = getelementptr inbounds %struct.ethtool_ops, ptr %14, i32 0, i32 66
  %15 = ptrtoint ptr %get_eth_mac_stats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_eth_mac_stats, align 4
  %tobool17.not = icmp eq ptr %16, null
  br i1 %tobool17.not, label %land.lhs.true15.if.end21_crit_edge, label %if.then18

land.lhs.true15.if.end21_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then18:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #6
  %mac_stats = getelementptr inbounds %struct.stats_reply_data, ptr %reply_base, i32 0, i32 1, i32 0, i32 1
  tail call void %16(ptr noundef %1, ptr noundef %mac_stats) #4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %land.lhs.true15.if.end21_crit_edge, %if.end10.if.end21_crit_edge
  %17 = ptrtoint ptr %stat_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %stat_mask, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool25.not = icmp eq i32 %19, 0
  br i1 %tobool25.not, label %if.end21.if.end32_crit_edge, label %land.lhs.true26

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

land.lhs.true26:                                  ; preds = %if.end21
  %ethtool_ops27 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 44
  %20 = ptrtoint ptr %ethtool_ops27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ethtool_ops27, align 16
  %get_eth_ctrl_stats = getelementptr inbounds %struct.ethtool_ops, ptr %21, i32 0, i32 67
  %22 = ptrtoint ptr %get_eth_ctrl_stats to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_eth_ctrl_stats, align 4
  %tobool28.not = icmp eq ptr %23, null
  br i1 %tobool28.not, label %land.lhs.true26.if.end32_crit_edge, label %if.then29

land.lhs.true26.if.end32_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then29:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #6
  %ctrl_stats = getelementptr inbounds %struct.stats_reply_data, ptr %reply_base, i32 0, i32 1, i32 0, i32 2
  tail call void %23(ptr noundef %1, ptr noundef %ctrl_stats) #4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %land.lhs.true26.if.end32_crit_edge, %if.end21.if.end32_crit_edge
  %24 = ptrtoint ptr %stat_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %stat_mask, align 4
  %26 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool36.not = icmp eq i32 %26, 0
  br i1 %tobool36.not, label %if.end32.if.end43_crit_edge, label %land.lhs.true37

if.end32.if.end43_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

land.lhs.true37:                                  ; preds = %if.end32
  %ethtool_ops38 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 44
  %27 = ptrtoint ptr %ethtool_ops38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ethtool_ops38, align 16
  %get_rmon_stats = getelementptr inbounds %struct.ethtool_ops, ptr %28, i32 0, i32 68
  %29 = ptrtoint ptr %get_rmon_stats to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_rmon_stats, align 4
  %tobool39.not = icmp eq ptr %30, null
  br i1 %tobool39.not, label %land.lhs.true37.if.end43_crit_edge, label %if.then40

land.lhs.true37.if.end43_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.then40:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #6
  %rmon_stats = getelementptr inbounds %struct.stats_reply_data, ptr %reply_base, i32 0, i32 1, i32 0, i32 3
  %rmon_ranges = getelementptr inbounds %struct.stats_reply_data, ptr %reply_base, i32 0, i32 2
  tail call void %30(ptr noundef %1, ptr noundef %rmon_stats, ptr noundef %rmon_ranges) #4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %land.lhs.true37.if.end43_crit_edge, %if.end32.if.end43_crit_edge
  tail call void @ethnl_ops_complete(ptr noundef %1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end43 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stats_reply_size(ptr noundef %req_base, ptr nocapture noundef readnone %reply_base) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %stat_mask = getelementptr inbounds %struct.stats_req_info, ptr %req_base, i32 0, i32 1
  %0 = ptrtoint ptr %stat_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %stat_mask, align 4
  %and1.i = and i32 %1, 1
  %2 = load volatile i32, ptr %stat_mask, align 4
  %3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  %not.tobool4.not = xor i1 %tobool4.not, true
  %inc7 = zext i1 %not.tobool4.not to i32
  %n_grps.1 = add nuw nsw i32 %and1.i, %inc7
  %4 = ptrtoint ptr %stat_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %stat_mask, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool12.not = icmp eq i32 %6, 0
  %not.tobool12.not = xor i1 %tobool12.not, true
  %inc15 = zext i1 %not.tobool12.not to i32
  %n_grps.2 = add nuw nsw i32 %n_grps.1, %inc15
  %7 = ptrtoint ptr %stat_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %stat_mask, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool20.not = icmp eq i32 %9, 0
  %not.tobool20.not = xor i1 %tobool20.not, true
  %inc23 = zext i1 %not.tobool20.not to i32
  %n_grps.3 = add nuw nsw i32 %n_grps.2, %inc23
  %len.0 = select i1 %tobool20.not, i32 0, i32 400
  %mul37 = mul nuw nsw i32 %n_grps.3, 20
  %add38 = add nuw nsw i32 %mul37, %len.0
  %10 = shl nuw nsw i32 %and1.i, 4
  %11 = or i32 %10, 352
  %12 = select i1 %tobool4.not, i32 %10, i32 %11
  %13 = add nuw nsw i32 %12, 48
  %14 = select i1 %tobool12.not, i32 %12, i32 %13
  %15 = add nuw nsw i32 %14, 384
  %mul42 = select i1 %tobool20.not, i32 %14, i32 %15
  %add43 = add i32 %add38, %mul42
  ret i32 %add43
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stats_fill_reply(ptr noundef %skb, ptr noundef %req_base, ptr noundef %reply_base) #0 align 64 {
entry:
  %tmp.i19.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %stat_mask = getelementptr inbounds %struct.stats_req_info, ptr %req_base, i32 0, i32 1
  %0 = ptrtoint ptr %stat_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %stat_mask, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool4.not = icmp eq i32 %and1.i, 0
  br i1 %tobool4.not, label %entry.land.lhs.true7_crit_edge, label %if.then

entry.land.lhs.true7_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true7

if.then:                                          ; preds = %entry
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i.i.i, align 8
  %call1.i.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32772, i32 noundef 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call1.i.i.i, 0
  %tobool.not22.i = icmp eq ptr %3, null
  %tobool.not.i = select i1 %cmp.i.i.i, i1 true, i1 %tobool.not22.i
  br i1 %tobool.not.i, label %if.then.if.end32_crit_edge, label %if.end.i

if.then.if.end32_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.end.i:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #4
  %4 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i, label %if.end.i.if.then.i.i.i_crit_edge

if.end.i.if.then.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i19.i) #4
  %5 = ptrtoint ptr %tmp.i19.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 17, ptr %tmp.i19.i, align 4
  %call.i20.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i19.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i19.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool4.not.i = icmp eq i32 %call.i20.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %lor.lhs.false.i.if.then.i.i.i_crit_edge

lor.lhs.false.i.if.then.i.i.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

if.end6.i:                                        ; preds = %lor.lhs.false.i
  %6 = getelementptr inbounds %struct.stats_reply_data, ptr %reply_base, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %6, align 8
  %call.i = call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 0, i64 noundef %8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i51 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i51, label %if.end10.i, label %if.end6.i.if.then.i.i.i_crit_edge

if.end6.i.if.then.i.i.i_crit_edge:                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

if.end10.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i.i, ptr %3, align 2
  br label %land.lhs.true7

if.then.i.i.i:                                    ; preds = %if.end6.i.if.then.i.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i.i_crit_edge, %if.end.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i21.i = icmp ugt ptr %13, %3
  br i1 %cmp.i.i21.i, label %do.end.i.i.i, label %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge, !prof !28

if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_nest_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #4
  br label %nla_nest_cancel.exit.i

nla_nest_cancel.exit.i:                           ; preds = %do.end.i.i.i, %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge
  %14 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #4
  br label %if.end32

land.lhs.true7:                                   ; preds = %if.end10.i, %entry.land.lhs.true7_crit_edge
  %16 = ptrtoint ptr %stat_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %stat_mask, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool11.not = icmp eq i32 %18, 0
  br i1 %tobool11.not, label %land.lhs.true7.land.lhs.true16_crit_edge, label %if.end14

land.lhs.true7.land.lhs.true16_crit_edge:         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true16

if.end14:                                         ; preds = %land.lhs.true7
  %call13 = call fastcc i32 @stats_put_stats(ptr noundef %skb, ptr noundef %reply_base, i32 noundef 1, i32 noundef 18, ptr noundef nonnull @stats_put_mac_stats)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool15.not = icmp eq i32 %call13, 0
  br i1 %tobool15.not, label %if.end14.land.lhs.true16_crit_edge, label %if.end14.if.end32_crit_edge

if.end14.if.end32_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.end14.land.lhs.true16_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true16

land.lhs.true16:                                  ; preds = %if.end14.land.lhs.true16_crit_edge, %land.lhs.true7.land.lhs.true16_crit_edge
  %19 = ptrtoint ptr %stat_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %stat_mask, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool20.not = icmp eq i32 %21, 0
  br i1 %tobool20.not, label %land.lhs.true16.land.lhs.true25_crit_edge, label %if.end23

land.lhs.true16.land.lhs.true25_crit_edge:        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true25

if.end23:                                         ; preds = %land.lhs.true16
  %call22 = call fastcc i32 @stats_put_stats(ptr noundef %skb, ptr noundef %reply_base, i32 noundef 2, i32 noundef 19, ptr noundef nonnull @stats_put_ctrl_stats)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool24.not = icmp eq i32 %call22, 0
  br i1 %tobool24.not, label %if.end23.land.lhs.true25_crit_edge, label %if.end23.if.end32_crit_edge

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.end23.land.lhs.true25_crit_edge:               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true25

land.lhs.true25:                                  ; preds = %if.end23.land.lhs.true25_crit_edge, %land.lhs.true16.land.lhs.true25_crit_edge
  %22 = ptrtoint ptr %stat_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %stat_mask, align 4
  %24 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool29.not = icmp eq i32 %24, 0
  br i1 %tobool29.not, label %land.lhs.true25.if.end32_crit_edge, label %if.then30

land.lhs.true25.if.end32_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then30:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #6
  %call31 = call fastcc i32 @stats_put_stats(ptr noundef %skb, ptr noundef %reply_base, i32 noundef 3, i32 noundef 20, ptr noundef nonnull @stats_put_rmon_stats)
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %land.lhs.true25.if.end32_crit_edge, %if.end23.if.end32_crit_edge, %if.end14.if.end32_crit_edge, %nla_nest_cancel.exit.i, %if.then.if.end32_crit_edge
  %ret.3 = phi i32 [ %call22, %if.end23.if.end32_crit_edge ], [ %call31, %if.then30 ], [ 0, %land.lhs.true25.if.end32_crit_edge ], [ %call13, %if.end14.if.end32_crit_edge ], [ -90, %nla_nest_cancel.exit.i ], [ -90, %if.then.if.end32_crit_edge ]
  ret i32 %ret.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_update_bitset(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_ops_begin(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_ops_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stats_put_stats(ptr noundef %skb, ptr noundef %data, i32 noundef %id, i32 noundef %ss_id, ptr nocapture noundef readonly %cb) unnamed_addr #0 align 64 {
entry:
  %tmp.i19 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32772, i32 noundef 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not22 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not22
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #4
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %id, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.if.then.i.i_crit_edge

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i19) #4
  %3 = ptrtoint ptr %tmp.i19 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %ss_id, ptr %tmp.i19, align 4
  %call.i20 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i19) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool4.not = icmp eq i32 %call.i20, 0
  br i1 %tobool4.not, label %if.end6, label %lor.lhs.false.if.then.i.i_crit_edge

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i

if.end6:                                          ; preds = %lor.lhs.false
  %call7 = call i32 %cb(ptr noundef %skb, ptr noundef %data) #4, !callees !29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.if.then.i.i_crit_edge

if.end6.if.then.i.i_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %1, align 2
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end6.if.then.i.i_crit_edge, %lor.lhs.false.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i21 = icmp ugt ptr %8, %1
  br i1 %cmp.i.i21, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !28

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #4
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_nest_cancel.exit ], [ 0, %if.end10 ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stats_put_mac_stats(ptr noundef %skb, ptr noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_stats = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mac_stats to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %mac_stats, align 8
  %call = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 0, i64 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %SingleCollisionFrames = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %SingleCollisionFrames to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %SingleCollisionFrames, align 8
  %call2 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 1, i64 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %MultipleCollisionFrames = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %MultipleCollisionFrames to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %MultipleCollisionFrames, align 8
  %call6 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 2, i64 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %lor.lhs.false4.return_crit_edge

lor.lhs.false4.return_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %FramesReceivedOK = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %FramesReceivedOK to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %FramesReceivedOK, align 8
  %call10 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 3, i64 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false8.return_crit_edge

lor.lhs.false8.return_crit_edge:                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %FrameCheckSequenceErrors = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %FrameCheckSequenceErrors to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %FrameCheckSequenceErrors, align 8
  %call14 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 4, i64 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %lor.lhs.false12.return_crit_edge

lor.lhs.false12.return_crit_edge:                 ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %AlignmentErrors = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %AlignmentErrors to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %AlignmentErrors, align 8
  %call18 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 5, i64 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %lor.lhs.false20, label %lor.lhs.false16.return_crit_edge

lor.lhs.false16.return_crit_edge:                 ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false20:                                  ; preds = %lor.lhs.false16
  %OctetsTransmittedOK = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 1, i32 6
  %12 = ptrtoint ptr %OctetsTransmittedOK to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %OctetsTransmittedOK, align 8
  %call22 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 6, i64 noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %lor.lhs.false24, label %lor.lhs.false20.return_crit_edge

lor.lhs.false20.return_crit_edge:                 ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %FramesWithDeferredXmissions = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 1, i32 7
  %14 = ptrtoint ptr %FramesWithDeferredXmissions to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %FramesWithDeferredXmissions, align 8
  %call26 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 7, i64 noundef %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %lor.lhs.false24.return_crit_edge

lor.lhs.false24.return_crit_edge:                 ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false28:                                  ; preds = %lor.lhs.false24
  %LateCollisions = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 1, i32 8
  %16 = ptrtoint ptr %LateCollisions to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %LateCollisions, align 8
  %call30 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 8, i64 noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %lor.lhs.false32, label %lor.lhs.false28.return_crit_edge

lor.lhs.false28.return_crit_edge:                 ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false32:                                  ; preds = %lor.lhs.false28
  %FramesAbortedDueToXSColls = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 1, i32 9
  %18 = ptrtoint ptr %FramesAbortedDueToXSColls to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %FramesAbortedDueToXSColls, align 8
  %call34 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 9, i64 noundef %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %lor.lhs.false36, label %lor.lhs.false32.return_crit_edge

lor.lhs.false32.return_crit_edge:                 ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false36:                                  ; preds = %lor.lhs.false32
  %FramesLostDueToIntMACXmitError = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 1, i32 10
  %20 = ptrtoint ptr %FramesLostDueToIntMACXmitError to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %FramesLostDueToIntMACXmitError, align 8
  %call38 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 10, i64 noundef %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %lor.lhs.false40, label %lor.lhs.false36.return_crit_edge

lor.lhs.false36.return_crit_edge:                 ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false40:                                  ; preds = %lor.lhs.false36
  %CarrierSenseErrors = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 1, i32 11
  %22 = ptrtoint ptr %CarrierSenseErrors to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %CarrierSenseErrors, align 8
  %call42 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 11, i64 noundef %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %lor.lhs.false44, label %lor.lhs.false40.return_crit_edge

lor.lhs.false40.return_crit_edge:                 ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false44:                                  ; preds = %lor.lhs.false40
  %OctetsReceivedOK = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 1, i32 12
  %24 = ptrtoint ptr %OctetsReceivedOK to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %OctetsReceivedOK, align 8
  %call46 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 12, i64 noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %lor.lhs.false48, label %lor.lhs.false44.return_crit_edge

lor.lhs.false44.return_crit_edge:                 ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false48:                                  ; preds = %lor.lhs.false44
  %FramesLostDueToIntMACRcvError = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 1, i32 13
  %26 = ptrtoint ptr %FramesLostDueToIntMACRcvError to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %FramesLostDueToIntMACRcvError, align 8
  %call50 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 13, i64 noundef %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %lor.lhs.false52, label %lor.lhs.false48.return_crit_edge

lor.lhs.false48.return_crit_edge:                 ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false52:                                  ; preds = %lor.lhs.false48
  %MulticastFramesXmittedOK = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 1, i32 14
  %28 = ptrtoint ptr %MulticastFramesXmittedOK to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %MulticastFramesXmittedOK, align 8
  %call54 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 14, i64 noundef %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %lor.lhs.false56, label %lor.lhs.false52.return_crit_edge

lor.lhs.false52.return_crit_edge:                 ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false56:                                  ; preds = %lor.lhs.false52
  %BroadcastFramesXmittedOK = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 1, i32 15
  %30 = ptrtoint ptr %BroadcastFramesXmittedOK to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %BroadcastFramesXmittedOK, align 8
  %call58 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 15, i64 noundef %31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %lor.lhs.false60, label %lor.lhs.false56.return_crit_edge

lor.lhs.false56.return_crit_edge:                 ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false60:                                  ; preds = %lor.lhs.false56
  %FramesWithExcessiveDeferral = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 1, i32 16
  %32 = ptrtoint ptr %FramesWithExcessiveDeferral to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %FramesWithExcessiveDeferral, align 8
  %call62 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 16, i64 noundef %33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %lor.lhs.false64, label %lor.lhs.false60.return_crit_edge

lor.lhs.false60.return_crit_edge:                 ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false64:                                  ; preds = %lor.lhs.false60
  %MulticastFramesReceivedOK = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 1, i32 17
  %34 = ptrtoint ptr %MulticastFramesReceivedOK to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %MulticastFramesReceivedOK, align 8
  %call66 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 17, i64 noundef %35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %lor.lhs.false68, label %lor.lhs.false64.return_crit_edge

lor.lhs.false64.return_crit_edge:                 ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false68:                                  ; preds = %lor.lhs.false64
  %BroadcastFramesReceivedOK = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 1, i32 18
  %36 = ptrtoint ptr %BroadcastFramesReceivedOK to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %BroadcastFramesReceivedOK, align 8
  %call70 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 18, i64 noundef %37)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %lor.lhs.false72, label %lor.lhs.false68.return_crit_edge

lor.lhs.false68.return_crit_edge:                 ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false72:                                  ; preds = %lor.lhs.false68
  %InRangeLengthErrors = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 1, i32 19
  %38 = ptrtoint ptr %InRangeLengthErrors to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %InRangeLengthErrors, align 8
  %call74 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 19, i64 noundef %39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %lor.lhs.false76, label %lor.lhs.false72.return_crit_edge

lor.lhs.false72.return_crit_edge:                 ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false76:                                  ; preds = %lor.lhs.false72
  %OutOfRangeLengthField = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 1, i32 20
  %40 = ptrtoint ptr %OutOfRangeLengthField to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %OutOfRangeLengthField, align 8
  %call78 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 20, i64 noundef %41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %lor.lhs.false80, label %lor.lhs.false76.return_crit_edge

lor.lhs.false76.return_crit_edge:                 ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false80:                                  ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #6
  %FrameTooLongErrors = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 1, i32 21
  %42 = ptrtoint ptr %FrameTooLongErrors to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %FrameTooLongErrors, align 8
  %call82 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 21, i64 noundef %43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  %spec.select = select i1 %tobool83.not, i32 0, i32 -90
  br label %return

return:                                           ; preds = %lor.lhs.false80, %lor.lhs.false76.return_crit_edge, %lor.lhs.false72.return_crit_edge, %lor.lhs.false68.return_crit_edge, %lor.lhs.false64.return_crit_edge, %lor.lhs.false60.return_crit_edge, %lor.lhs.false56.return_crit_edge, %lor.lhs.false52.return_crit_edge, %lor.lhs.false48.return_crit_edge, %lor.lhs.false44.return_crit_edge, %lor.lhs.false40.return_crit_edge, %lor.lhs.false36.return_crit_edge, %lor.lhs.false32.return_crit_edge, %lor.lhs.false28.return_crit_edge, %lor.lhs.false24.return_crit_edge, %lor.lhs.false20.return_crit_edge, %lor.lhs.false16.return_crit_edge, %lor.lhs.false12.return_crit_edge, %lor.lhs.false8.return_crit_edge, %lor.lhs.false4.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -90, %lor.lhs.false76.return_crit_edge ], [ -90, %lor.lhs.false72.return_crit_edge ], [ -90, %lor.lhs.false68.return_crit_edge ], [ -90, %lor.lhs.false64.return_crit_edge ], [ -90, %lor.lhs.false60.return_crit_edge ], [ -90, %lor.lhs.false56.return_crit_edge ], [ -90, %lor.lhs.false52.return_crit_edge ], [ -90, %lor.lhs.false48.return_crit_edge ], [ -90, %lor.lhs.false44.return_crit_edge ], [ -90, %lor.lhs.false40.return_crit_edge ], [ -90, %lor.lhs.false36.return_crit_edge ], [ -90, %lor.lhs.false32.return_crit_edge ], [ -90, %lor.lhs.false28.return_crit_edge ], [ -90, %lor.lhs.false24.return_crit_edge ], [ -90, %lor.lhs.false20.return_crit_edge ], [ -90, %lor.lhs.false16.return_crit_edge ], [ -90, %lor.lhs.false12.return_crit_edge ], [ -90, %lor.lhs.false8.return_crit_edge ], [ -90, %lor.lhs.false4.return_crit_edge ], [ -90, %lor.lhs.false.return_crit_edge ], [ -90, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false80 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stats_put_ctrl_stats(ptr noundef %skb, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_stats = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %ctrl_stats to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ctrl_stats, align 8
  %call = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 0, i64 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %MACControlFramesReceived = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %MACControlFramesReceived to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %MACControlFramesReceived, align 8
  %call2 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 1, i64 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %UnsupportedOpcodesReceived = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %UnsupportedOpcodesReceived to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %UnsupportedOpcodesReceived, align 8
  %call6 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 2, i64 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %spec.select = select i1 %tobool7.not, i32 0, i32 -90
  br label %return

return:                                           ; preds = %lor.lhs.false4, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -90, %lor.lhs.false.return_crit_edge ], [ -90, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stats_put_rmon_stats(ptr noundef %skb, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rmon_stats = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 3
  %hist = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 3, i32 4
  %rmon_ranges = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %rmon_ranges to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmon_ranges, align 8
  %call = tail call fastcc i32 @stats_put_rmon_hist(ptr noundef %skb, i32 noundef 5, ptr noundef %hist, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hist_tx = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 3, i32 5
  %2 = ptrtoint ptr %rmon_ranges to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmon_ranges, align 8
  %call4 = tail call fastcc i32 @stats_put_rmon_hist(ptr noundef %skb, i32 noundef 6, ptr noundef %hist_tx, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %rmon_stats to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %rmon_stats, align 8
  %call7 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 0, i64 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false9:                                   ; preds = %if.end
  %oversize_pkts = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %oversize_pkts to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %oversize_pkts, align 8
  %call11 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 1, i64 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %lor.lhs.false9.return_crit_edge

lor.lhs.false9.return_crit_edge:                  ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %fragments = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %fragments to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %fragments, align 8
  %call15 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 2, i64 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %lor.lhs.false17, label %lor.lhs.false13.return_crit_edge

lor.lhs.false13.return_crit_edge:                 ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #6
  %jabbers = getelementptr inbounds %struct.stats_reply_data, ptr %data, i32 0, i32 1, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %jabbers to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %jabbers, align 8
  %call19 = tail call fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext 3, i64 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  %spec.select = select i1 %tobool20.not, i32 0, i32 -90
  br label %return

return:                                           ; preds = %lor.lhs.false17, %lor.lhs.false13.return_crit_edge, %lor.lhs.false9.return_crit_edge, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -90, %lor.lhs.false.return_crit_edge ], [ -90, %entry.return_crit_edge ], [ -90, %lor.lhs.false13.return_crit_edge ], [ -90, %lor.lhs.false9.return_crit_edge ], [ -90, %if.end.return_crit_edge ], [ %spec.select, %lor.lhs.false17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stat_put(ptr noundef %skb, i16 noundef zeroext %attrtype, i64 noundef %val) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %val)
  %cmp = icmp eq i64 %val, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32772, i32 noundef 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not17 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not17
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %conv = zext i16 %attrtype to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #4
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %val, ptr %tmp.i, align 8
  %call.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef %conv, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef -1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end2
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i16 = icmp ugt ptr %4, %1
  br i1 %cmp.i.i16, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !28

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #4
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #4
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %1, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %nla_nest_cancel.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %nla_nest_cancel.exit ], [ 0, %if.end6 ], [ 0, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stats_put_rmon_hist(ptr noundef %skb, i32 noundef %attr, ptr nocapture noundef readonly %hist, ptr noundef readonly %ranges) unnamed_addr #0 align 64 {
entry:
  %tmp.i51 = alloca i64, align 8
  %tmp.i49 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ranges, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %or.i = or i32 %attr, 32768
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.055 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ethtool_rmon_hist_range, ptr %ranges, i32 %i.055
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool1.not = icmp eq i16 %1, 0
  br i1 %tobool1.not, label %land.lhs.true, label %for.body.if.end5_crit_edge

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

land.lhs.true:                                    ; preds = %for.body
  %high = getelementptr %struct.ethtool_rmon_hist_range, ptr %ranges, i32 %i.055, i32 1
  %2 = ptrtoint ptr %high to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %high, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool3.not = icmp eq i16 %3, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %for.body.if.end5_crit_edge
  %arrayidx6 = getelementptr i64, ptr %hist, i32 %i.055
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx6, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %5)
  %cmp7 = icmp eq i64 %5, -1
  br i1 %cmp7, label %if.end5.for.inc_crit_edge, label %if.end9

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end9:                                          ; preds = %if.end5
  %6 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef %or.i, i32 noundef 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool10.not54 = icmp eq ptr %7, null
  %tobool10.not = select i1 %cmp.i.i, i1 true, i1 %tobool10.not54
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %9 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #4
  %10 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %lor.lhs.false, label %if.end12.if.then.i.i_crit_edge

if.end12.if.then.i.i_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %if.end12
  %high18 = getelementptr %struct.ethtool_rmon_hist_range, ptr %ranges, i32 %i.055, i32 1
  %11 = ptrtoint ptr %high18 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %high18, align 2
  %conv19 = zext i16 %12 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i49) #4
  %13 = ptrtoint ptr %tmp.i49 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv19, ptr %tmp.i49, align 4
  %call.i50 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i49) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i49) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool21.not = icmp eq i32 %call.i50, 0
  br i1 %tobool21.not, label %lor.lhs.false22, label %lor.lhs.false.if.then.i.i_crit_edge

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx6, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i51) #4
  %16 = ptrtoint ptr %tmp.i51 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %tmp.i51, align 8
  %call.i52 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 9, i32 noundef 8, ptr noundef nonnull %tmp.i51, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i51) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool25.not = icmp eq i32 %call.i52, 0
  br i1 %tobool25.not, label %if.end27, label %lor.lhs.false22.if.then.i.i_crit_edge

lor.lhs.false22.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i

if.end27:                                         ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %7, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end27, %if.end5.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i.i:                                      ; preds = %lor.lhs.false22.if.then.i.i_crit_edge, %lor.lhs.false.if.then.i.i_crit_edge, %if.end12.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i53 = icmp ugt ptr %21, %7
  br i1 %cmp.i.i53, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !28

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #4
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %for.inc.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_nest_cancel.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -90, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @stats_std_names, !1, !"stats_std_names", i1 false, i1 false}
!1 = !{!"../net/ethtool/stats.c", i32 29, i32 12}
!2 = !{ptr @stats_eth_phy_names, !3, !"stats_eth_phy_names", i1 false, i1 false}
!3 = !{!"../net/ethtool/stats.c", i32 36, i32 12}
!4 = !{ptr @stats_eth_mac_names, !5, !"stats_eth_mac_names", i1 false, i1 false}
!5 = !{!"../net/ethtool/stats.c", i32 40, i32 12}
!6 = !{ptr @stats_eth_ctrl_names, !7, !"stats_eth_ctrl_names", i1 false, i1 false}
!7 = !{!"../net/ethtool/stats.c", i32 65, i32 12}
!8 = !{ptr @stats_rmon_names, !9, !"stats_rmon_names", i1 false, i1 false}
!9 = !{!"../net/ethtool/stats.c", i32 71, i32 12}
!10 = !{ptr @ethnl_stats_get_policy, !11, !"ethnl_stats_get_policy", i1 false, i1 false}
!11 = !{!"../net/ethtool/stats.c", i32 78, i32 25}
!12 = !{ptr @ethnl_stats_request_ops, !13, !"ethnl_stats_request_ops", i1 false, i1 false}
!13 = !{!"../net/ethtool/stats.c", i32 401, i32 32}
!14 = !{ptr @stats_parse_request.__msg, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../net/ethtool/stats.c", i32 99, i32 3}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/net/netlink.h", i32 991, i32 3}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i8 0, i8 2}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = distinct !{ptr @stats_put_ctrl_stats, ptr @stats_put_mac_stats, null, ptr @stats_put_rmon_stats}
