; ModuleID = '/llk/IR_all_yes/net/ethtool/strset.c_pt.bc'
source_filename = "../net/ethtool/strset.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.ethnl_request_ops = type { i8, i8, i16, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.strset_info = type { i8, i8, i32, ptr }
%struct.strset_req_info = type { %struct.ethnl_req_info, i32, i8 }
%struct.ethnl_req_info = type { ptr, ptr, i32 }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.strset_reply_data = type { %struct.ethnl_reply_data, [21 x %struct.strset_info] }
%struct.ethnl_reply_data = type { ptr }
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
%struct.ethtool_phy_ops = type { ptr, ptr, ptr, ptr, ptr }
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

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_strset_get_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy }>, [32 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon zeroinitializer } }>, [32 x i8] zeroinitializer }, align 32
@ethnl_strset_request_ops = dso_local constant { %struct.ethnl_request_ops, [60 x i8] } { %struct.ethnl_request_ops { i8 1, i8 1, i16 1, i32 20, i32 256, i8 1, ptr @strset_parse_request, ptr @strset_prepare_data, ptr @strset_reply_size, ptr @strset_fill_reply, ptr @strset_cleanup_data }, [60 x i8] zeroinitializer }, align 32
@strset_stringsets_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@strset_parse_request.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/ethtool/strset.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"unexpected attrtype %u in ETHTOOL_A_STRSET_STRINGSETS\0A\00", [41 x i8] zeroinitializer }, align 32
@strset_parse_request.__msg = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unknown string set id\00", [42 x i8] zeroinitializer }, align 32
@get_stringset_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@info_template = internal constant { [21 x %struct.strset_info], [36 x i8] } { [21 x %struct.strset_info] [%struct.strset_info { i8 1, i8 0, i32 0, ptr null }, %struct.strset_info { i8 1, i8 0, i32 0, ptr null }, %struct.strset_info { i8 1, i8 0, i32 0, ptr null }, %struct.strset_info zeroinitializer, %struct.strset_info { i8 0, i8 0, i32 64, ptr @netdev_features_strings }, %struct.strset_info { i8 0, i8 0, i32 3, ptr @rss_hash_func_strings }, %struct.strset_info { i8 0, i8 0, i32 5, ptr @tunable_strings }, %struct.strset_info { i8 1, i8 0, i32 0, ptr null }, %struct.strset_info { i8 0, i8 0, i32 4, ptr @phy_tunable_strings }, %struct.strset_info { i8 0, i8 0, i32 92, ptr @link_mode_names }, %struct.strset_info { i8 0, i8 0, i32 15, ptr @netif_msg_class_names }, %struct.strset_info { i8 0, i8 0, i32 8, ptr @wol_mode_names }, %struct.strset_info { i8 0, i8 0, i32 16, ptr @sof_timestamping_names }, %struct.strset_info { i8 0, i8 0, i32 4, ptr @ts_tx_type_names }, %struct.strset_info { i8 0, i8 0, i32 16, ptr @ts_rx_filter_names }, %struct.strset_info { i8 0, i8 0, i32 3, ptr @udp_tunnel_type_names }, %struct.strset_info { i8 0, i8 0, i32 4, ptr @stats_std_names }, %struct.strset_info { i8 0, i8 0, i32 1, ptr @stats_eth_phy_names }, %struct.strset_info { i8 0, i8 0, i32 22, ptr @stats_eth_mac_names }, %struct.strset_info { i8 0, i8 0, i32 3, ptr @stats_eth_ctrl_names }, %struct.strset_info { i8 0, i8 0, i32 4, ptr @stats_rmon_names }], [36 x i8] zeroinitializer }, align 32
@strset_prepare_data.__msg = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"requested per device strings without dev\00", [55 x i8] zeroinitializer }, align 32
@netdev_features_strings = external dso_local constant [64 x [32 x i8]], align 1
@rss_hash_func_strings = external dso_local constant [3 x [32 x i8]], align 1
@tunable_strings = external dso_local constant [5 x [32 x i8]], align 1
@phy_tunable_strings = external dso_local constant [4 x [32 x i8]], align 1
@link_mode_names = external dso_local constant [0 x [32 x i8]], align 1
@netif_msg_class_names = external dso_local constant [0 x [32 x i8]], align 1
@wol_mode_names = external dso_local constant [0 x [32 x i8]], align 1
@sof_timestamping_names = external dso_local constant [0 x [32 x i8]], align 1
@ts_tx_type_names = external dso_local constant [0 x [32 x i8]], align 1
@ts_rx_filter_names = external dso_local constant [0 x [32 x i8]], align 1
@udp_tunnel_type_names = external dso_local constant [0 x [32 x i8]], align 1
@stats_std_names = external dso_local constant [4 x [32 x i8]], align 1
@stats_eth_phy_names = external dso_local constant [1 x [32 x i8]], align 1
@stats_eth_mac_names = external dso_local constant [22 x [32 x i8]], align 1
@stats_eth_ctrl_names = external dso_local constant [3 x [32 x i8]], align 1
@stats_rmon_names = external dso_local constant [4 x [32 x i8]], align 1
@ethtool_phy_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [24 x i8] c"ethnl_strset_get_policy\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 127, i32 25 }
@___asan_gen_.6 = private unnamed_addr constant [25 x i8] c"ethnl_strset_request_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 467, i32 32 }
@___asan_gen_.9 = private unnamed_addr constant [25 x i8] c"strset_stringsets_policy\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 177, i32 32 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 202, i32 7 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 211, i32 4 }
@___asan_gen_.21 = private unnamed_addr constant [21 x i8] c"get_stringset_policy\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 134, i32 32 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 1208, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"info_template\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 15, i32 33 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.31 = private constant [24 x i8] c"../net/ethtool/strset.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 293, i32 6 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 991, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @ethnl_strset_get_policy, ptr @ethnl_strset_request_ops, ptr @strset_stringsets_policy, ptr @.str, ptr @.str.1, ptr @strset_parse_request.__msg, ptr @get_stringset_policy, ptr @nla_parse_nested.__msg, ptr @info_template, ptr @strset_prepare_data.__msg, ptr @.str.2], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_strset_get_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_strset_request_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strset_stringsets_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strset_parse_request.__msg to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_stringset_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @info_template to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strset_prepare_data.__msg to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @strset_parse_request(ptr nocapture noundef %req_base, ptr nocapture noundef readonly %tb, ptr noundef %extack) #0 align 64 {
entry:
  %tb.i = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup68_crit_edge, label %if.end

entry.cleanup68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup68

if.end:                                           ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %conv.i.i.i = zext i16 %3 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = tail call i32 @__nla_validate(ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, i32 noundef 1, ptr noundef nonnull @strset_stringsets_policy, i32 noundef 31, ptr noundef %extack) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp = icmp slt i32 %call2.i.i, 0
  br i1 %cmp, label %if.end.cleanup68_crit_edge, label %if.end2

if.end.cleanup68_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup68

if.end2:                                          ; preds = %if.end
  %arrayidx3 = getelementptr ptr, ptr %tb, i32 3
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  %tobool4 = icmp ne ptr %5, null
  %counts_only = getelementptr inbounds %struct.strset_req_info, ptr %req_base, i32 0, i32 2
  %frombool = zext i1 %tobool4 to i8
  %6 = ptrtoint ptr %counts_only to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %counts_only, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %8)
  %cmp.i121 = icmp ugt i16 %8, 7
  br i1 %cmp.i121, label %land.lhs.true.i.lr.ph, label %if.end2.cleanup68_crit_edge

if.end2.cleanup68_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup68

land.lhs.true.i.lr.ph:                            ; preds = %if.end2
  %conv.i = zext i16 %8 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %9 = getelementptr inbounds [2 x ptr], ptr %tb.i, i32 0, i32 1
  %req_ids = getelementptr inbounds %struct.strset_req_info, ptr %req_base, i32 0, i32 1
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.inc.land.lhs.true.i_crit_edge, %land.lhs.true.i.lr.ph
  %attr.0123 = phi ptr [ %add.ptr.i.i.i, %land.lhs.true.i.lr.ph ], [ %add.ptr.i106, %for.inc.land.lhs.true.i_crit_edge ]
  %rem.0122 = phi i32 [ %sub.i, %land.lhs.true.i.lr.ph ], [ %sub1.i, %for.inc.land.lhs.true.i_crit_edge ]
  %10 = ptrtoint ptr %attr.0123 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %attr.0123, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %11)
  %cmp1.i = icmp ult i16 %11, 4
  %conv.i96 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0122, i32 %conv.i96)
  %cmp5.i.not = icmp ult i32 %rem.0122, %conv.i96
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond, label %land.lhs.true.i.cleanup68_crit_edge, label %for.body

land.lhs.true.i.cleanup68_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup68

for.body:                                         ; preds = %land.lhs.true.i
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %attr.0123, i32 0, i32 1
  %12 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %nla_type.i, align 2
  %14 = and i16 %13, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %14)
  %cmp10.not = icmp eq i16 %14, 1
  br i1 %cmp10.not, label %if.end53, label %land.rhs

land.rhs:                                         ; preds = %for.body
  %.b94 = load i1, ptr @strset_parse_request.__already_done, align 1
  br i1 %.b94, label %land.rhs.cleanup68_crit_edge, label %if.then19, !prof !31

land.rhs.cleanup68_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup68

if.then19:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.le = zext i16 %14 to i32
  store i1 true, ptr @strset_parse_request.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 204, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %and.i.le) #7
  br label %cleanup68

if.end53:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tb.i) #7
  %15 = ptrtoint ptr %tb.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb.i, align 4, !annotation !32
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %9, align 4, !annotation !32
  %17 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %18)
  %tobool.not.i.i = icmp sgt i16 %18, -1
  br i1 %tobool.not.i.i, label %do.body.i.i, label %nla_parse_nested.exit.i

do.body.i.i:                                      ; preds = %if.end53
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #7
  %tobool1.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i.i, label %do.body.i.i.strset_get_id.exit.thread_crit_edge, label %if.then2.i.i

do.body.i.i.strset_get_id.exit.thread_crit_edge:  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %strset_get_id.exit.thread

if.then2.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %20 = ptrtoint ptr %bad_attr.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %attr.0123, ptr %bad_attr.i.i, align 4
  %policy3.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %21 = ptrtoint ptr %policy3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %policy3.i.i, align 4
  br label %strset_get_id.exit.thread

nla_parse_nested.exit.i:                          ; preds = %if.end53
  %add.ptr.i.i.i99 = getelementptr i8, ptr %attr.0123, i32 4
  %22 = ptrtoint ptr %attr.0123 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %attr.0123, align 2
  %conv.i.i.i100 = zext i16 %23 to i32
  %sub.i.i.i101 = add nsw i32 %conv.i.i.i100, -4
  %call6.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i, i32 noundef 1, ptr noundef %add.ptr.i.i.i99, i32 noundef %sub.i.i.i101, ptr noundef nonnull @get_stringset_policy, i32 noundef 31, ptr noundef %extack) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp.i102 = icmp slt i32 %call6.i.i, 0
  br i1 %cmp.i102, label %nla_parse_nested.exit.i.strset_get_id.exit.thread_crit_edge, label %if.end.i

nla_parse_nested.exit.i.strset_get_id.exit.thread_crit_edge: ; preds = %nla_parse_nested.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %strset_get_id.exit.thread

if.end.i:                                         ; preds = %nla_parse_nested.exit.i
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %9, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end.i.strset_get_id.exit.thread_crit_edge, label %if.end57

if.end.i.strset_get_id.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %strset_get_id.exit.thread

strset_get_id.exit.thread:                        ; preds = %if.end.i.strset_get_id.exit.thread_crit_edge, %nla_parse_nested.exit.i.strset_get_id.exit.thread_crit_edge, %if.then2.i.i, %do.body.i.i.strset_get_id.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %do.body.i.i.strset_get_id.exit.thread_crit_edge ], [ -22, %if.then2.i.i ], [ %call6.i.i, %nla_parse_nested.exit.i.strset_get_id.exit.thread_crit_edge ], [ -22, %if.end.i.strset_get_id.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tb.i) #7
  br label %cleanup68

if.end57:                                         ; preds = %if.end.i
  %add.ptr.i.i7.i = getelementptr i8, ptr %25, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i7.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tb.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %27)
  %cmp58 = icmp ugt i32 %27, 20
  br i1 %cmp58, label %do.body60, label %for.inc

do.body60:                                        ; preds = %if.end57
  call void @do_trace_netlink_extack(ptr noundef nonnull @strset_parse_request.__msg) #7
  %tobool61.not = icmp eq ptr %extack, null
  br i1 %tobool61.not, label %do.body60.cleanup68_crit_edge, label %if.then62

do.body60.cleanup68_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup68

if.then62:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @strset_parse_request.__msg, ptr %extack, align 4
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %29 = ptrtoint ptr %bad_attr to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %attr.0123, ptr %bad_attr, align 4
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %30 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %policy, align 4
  br label %cleanup68

for.inc:                                          ; preds = %if.end57
  %shl = shl nuw nsw i32 1, %27
  %31 = ptrtoint ptr %req_ids to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %req_ids, align 4
  %or = or i32 %32, %shl
  store i32 %or, ptr %req_ids, align 4
  %33 = ptrtoint ptr %attr.0123 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %attr.0123, align 2
  %conv.i103 = zext i16 %34 to i32
  %sub.i104 = add nuw nsw i32 %conv.i103, 3
  %and.i105 = and i32 %sub.i104, 131068
  %sub1.i = sub nsw i32 %rem.0122, %and.i105
  %add.ptr.i106 = getelementptr i8, ptr %attr.0123, i32 %and.i105
  %cmp.i = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i, label %for.inc.land.lhs.true.i_crit_edge, label %for.inc.cleanup68_crit_edge

for.inc.cleanup68_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup68

for.inc.land.lhs.true.i_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

cleanup68:                                        ; preds = %for.inc.cleanup68_crit_edge, %if.then62, %do.body60.cleanup68_crit_edge, %strset_get_id.exit.thread, %if.then19, %land.rhs.cleanup68_crit_edge, %land.lhs.true.i.cleanup68_crit_edge, %if.end2.cleanup68_crit_edge, %if.end.cleanup68_crit_edge, %entry.cleanup68_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup68_crit_edge ], [ %call2.i.i, %if.end.cleanup68_crit_edge ], [ %retval.0.i.ph, %strset_get_id.exit.thread ], [ -22, %land.rhs.cleanup68_crit_edge ], [ -95, %do.body60.cleanup68_crit_edge ], [ -95, %if.then62 ], [ -22, %if.then19 ], [ 0, %if.end2.cleanup68_crit_edge ], [ 0, %for.inc.cleanup68_crit_edge ], [ 0, %land.lhs.true.i.cleanup68_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @strset_prepare_data(ptr nocapture noundef readonly %req_base, ptr nocapture noundef %reply_base, ptr noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reply_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reply_base, align 4
  %sets = getelementptr inbounds %struct.strset_reply_data, ptr %reply_base, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %sets, ptr @info_template, i32 252)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.cond.preheader, label %if.end18

for.cond.preheader:                               ; preds = %entry
  %req_ids = getelementptr inbounds %struct.strset_req_info, ptr %req_base, i32 0, i32 1
  %3 = ptrtoint ptr %req_ids to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %req_ids, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.087 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.087
  %and = and i32 %4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr %struct.strset_reply_data, ptr %reply_base, i32 0, i32 1, i32 %i.087
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool7.not = icmp eq i8 %6, 0
  br i1 %tobool7.not, label %land.lhs.true.for.inc_crit_edge, label %if.then8

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then8:                                         ; preds = %land.lhs.true
  %tobool9.not = icmp eq ptr %info, null
  br i1 %tobool9.not, label %if.then8.cleanup_crit_edge, label %do.body11

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body11:                                        ; preds = %if.then8
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @strset_prepare_data.__msg) #7
  %tobool12.not = icmp eq ptr %8, null
  br i1 %tobool12.not, label %do.body11.cleanup_crit_edge, label %if.then13

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @strset_prepare_data.__msg, ptr %8, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.087, 1
  %exitcond90.not = icmp eq i32 %inc, 21
  br i1 %exitcond90.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %entry
  %call = tail call i32 @ethnl_ops_begin(ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp19 = icmp slt i32 %call, 0
  br i1 %cmp19, label %if.end18.err_strset_crit_edge, label %for.cond22.preheader

if.end18.err_strset_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_strset

for.cond22.preheader:                             ; preds = %if.end18
  %req_ids.i = getelementptr inbounds %struct.strset_req_info, ptr %req_base, i32 0, i32 1
  %counts_only = getelementptr inbounds %struct.strset_req_info, ptr %req_base, i32 0, i32 2
  %ethtool_ops.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 44
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  br label %for.body24

for.body24:                                       ; preds = %for.inc39.for.body24_crit_edge, %for.cond22.preheader
  %i.185 = phi i32 [ 0, %for.cond22.preheader ], [ %inc40, %for.inc39.for.body24_crit_edge ]
  %10 = ptrtoint ptr %req_ids.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %req_ids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body24
  %shl.i = shl nuw nsw i32 1, %i.185
  %and.i = and i32 %11, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool2.i.not, label %if.then.i.for.inc39_crit_edge, label %if.then.i.lor.lhs.false_crit_edge

if.then.i.lor.lhs.false_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.then.i.for.inc39_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc39

if.end.i:                                         ; preds = %for.body24
  %arrayidx.i = getelementptr %struct.strset_reply_data, ptr %reply_base, i32 0, i32 1, i32 %i.185
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.i = icmp ne i8 %13, 0
  br i1 %tobool4.i, label %if.end.i.strset_include.exit_crit_edge, label %land.lhs.true.i

if.end.i.strset_include.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %strset_include.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %strings.i = getelementptr %struct.strset_reply_data, ptr %reply_base, i32 0, i32 1, i32 %i.185, i32 3
  %14 = ptrtoint ptr %strings.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %strings.i, align 4
  %tobool8.not.i = icmp eq ptr %15, null
  br i1 %tobool8.not.i, label %land.lhs.true.i.for.inc39_crit_edge, label %land.lhs.true.i.strset_include.exit_crit_edge

land.lhs.true.i.strset_include.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %strset_include.exit

land.lhs.true.i.for.inc39_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc39

strset_include.exit:                              ; preds = %land.lhs.true.i.strset_include.exit_crit_edge, %if.end.i.strset_include.exit_crit_edge
  %16 = ptrtoint ptr %reply_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reply_base, align 4
  %tobool11.not.i = icmp eq ptr %17, null
  %spec.select.i = xor i1 %tobool4.i, %tobool11.not.i
  br i1 %spec.select.i, label %strset_include.exit.lor.lhs.false_crit_edge, label %strset_include.exit.for.inc39_crit_edge

strset_include.exit.for.inc39_crit_edge:          ; preds = %strset_include.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc39

strset_include.exit.lor.lhs.false_crit_edge:      ; preds = %strset_include.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %strset_include.exit.lor.lhs.false_crit_edge, %if.then.i.lor.lhs.false_crit_edge
  %arrayidx27 = getelementptr %struct.strset_reply_data, ptr %reply_base, i32 0, i32 1, i32 %i.185
  %18 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx27, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool29.not = icmp eq i8 %19, 0
  br i1 %tobool29.not, label %lor.lhs.false.for.inc39_crit_edge, label %if.end31

lor.lhs.false.for.inc39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc39

if.end31:                                         ; preds = %lor.lhs.false
  %20 = ptrtoint ptr %counts_only to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %counts_only, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool34 = icmp ne i8 %21, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ethtool_phy_ops to i32))
  %22 = load ptr, ptr @ethtool_phy_ops, align 4
  %23 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ethtool_ops.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.185)
  %cmp.i = icmp eq i32 %i.185, 7
  br i1 %cmp.i, label %land.lhs.true.i73, label %if.end31.if.else.i_crit_edge

if.end31.if.else.i_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i73:                                ; preds = %if.end31
  %25 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phydev.i, align 16
  %tobool.not.i72 = icmp eq ptr %26, null
  br i1 %tobool.not.i72, label %land.lhs.true.i73.if.else.i_crit_edge, label %land.lhs.true1.i

land.lhs.true.i73.if.else.i_crit_edge:            ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i73
  %get_ethtool_phy_stats.i = getelementptr inbounds %struct.ethtool_ops, ptr %24, i32 0, i32 61
  %27 = ptrtoint ptr %get_ethtool_phy_stats.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_ethtool_phy_stats.i, align 4
  %tobool2.not.i = icmp ne ptr %28, null
  %tobool4.not.i = icmp eq ptr %22, null
  %or.cond.i = select i1 %tobool2.not.i, i1 true, i1 %tobool4.not.i
  br i1 %or.cond.i, label %land.lhs.true1.i.if.else.i_crit_edge, label %land.lhs.true5.i

land.lhs.true1.i.if.else.i_crit_edge:             ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true1.i
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %22, align 4
  %tobool6.not.i = icmp eq ptr %30, null
  br i1 %tobool6.not.i, label %land.lhs.true5.i.if.else.i_crit_edge, label %if.then.i74

land.lhs.true5.i.if.else.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i74:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %30(ptr noundef nonnull %26) #7
  br label %if.end17.i

if.else.i:                                        ; preds = %land.lhs.true5.i.if.else.i_crit_edge, %land.lhs.true1.i.if.else.i_crit_edge, %land.lhs.true.i73.if.else.i_crit_edge, %if.end31.if.else.i_crit_edge
  %get_sset_count9.i = getelementptr inbounds %struct.ethtool_ops, ptr %24, i32 0, i32 31
  %31 = ptrtoint ptr %get_sset_count9.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %get_sset_count9.i, align 4
  %tobool10.not.i = icmp eq ptr %32, null
  br i1 %tobool10.not.i, label %if.else.i.strset_prepare_set.exit_crit_edge, label %land.lhs.true11.i

if.else.i.strset_prepare_set.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %strset_prepare_set.exit

land.lhs.true11.i:                                ; preds = %if.else.i
  %get_strings.i = getelementptr inbounds %struct.ethtool_ops, ptr %24, i32 0, i32 24
  %33 = ptrtoint ptr %get_strings.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_strings.i, align 4
  %tobool12.not.i = icmp eq ptr %34, null
  br i1 %tobool12.not.i, label %land.lhs.true11.i.strset_prepare_set.exit_crit_edge, label %if.then13.i

land.lhs.true11.i.strset_prepare_set.exit_crit_edge: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %strset_prepare_set.exit

if.then13.i:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = tail call i32 %32(ptr noundef nonnull %1, i32 noundef %i.185) #7
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %if.then.i74
  %ret.0.i = phi i32 [ %call15.i, %if.then13.i ], [ %call.i, %if.then.i74 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0.i)
  %cmp18.i = icmp slt i32 %ret.0.i, 1
  %brmerge.i = or i1 %tobool34, %cmp18.i
  %.mux.i = select i1 %cmp18.i, i32 0, i32 %ret.0.i
  br i1 %brmerge.i, label %if.end17.i.strset_prepare_set.exit_crit_edge, label %if.then23.i

if.end17.i.strset_prepare_set.exit_crit_edge:     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %strset_prepare_set.exit

if.then23.i:                                      ; preds = %if.end17.i
  %35 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %ret.0.i, i32 32) #7
  %36 = extractvalue { i32, i1 } %35, 1
  br i1 %36, label %if.then23.i.err_ops_crit_edge, label %if.end7.i.i.i, !prof !34

if.then23.i.err_ops_crit_edge:                    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ops

if.end7.i.i.i:                                    ; preds = %if.then23.i
  %37 = extractvalue { i32, i1 } %35, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %37, i32 noundef 3520) #10
  %tobool25.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool25.not.i, label %if.end7.i.i.i.err_ops_crit_edge, label %if.end27.i

if.end7.i.i.i.err_ops_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ops

if.end27.i:                                       ; preds = %if.end7.i.i.i
  br i1 %cmp.i, label %land.lhs.true29.i, label %if.end27.i.if.else44.i_crit_edge

if.end27.i.if.else44.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else44.i

land.lhs.true29.i:                                ; preds = %if.end27.i
  %38 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phydev.i, align 16
  %tobool31.not.i = icmp eq ptr %39, null
  br i1 %tobool31.not.i, label %land.lhs.true29.i.if.else44.i_crit_edge, label %land.lhs.true32.i

land.lhs.true29.i.if.else44.i_crit_edge:          ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else44.i

land.lhs.true32.i:                                ; preds = %land.lhs.true29.i
  %get_ethtool_phy_stats33.i = getelementptr inbounds %struct.ethtool_ops, ptr %24, i32 0, i32 61
  %40 = ptrtoint ptr %get_ethtool_phy_stats33.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %get_ethtool_phy_stats33.i, align 4
  %tobool34.not.i = icmp ne ptr %41, null
  %tobool36.not.i = icmp eq ptr %22, null
  %or.cond86.i = select i1 %tobool34.not.i, i1 true, i1 %tobool36.not.i
  br i1 %or.cond86.i, label %land.lhs.true32.i.if.else44.i_crit_edge, label %land.lhs.true37.i

land.lhs.true32.i.if.else44.i_crit_edge:          ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else44.i

land.lhs.true37.i:                                ; preds = %land.lhs.true32.i
  %get_strings38.i = getelementptr inbounds %struct.ethtool_phy_ops, ptr %22, i32 0, i32 1
  %42 = ptrtoint ptr %get_strings38.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get_strings38.i, align 4
  %tobool39.not.i = icmp eq ptr %43, null
  br i1 %tobool39.not.i, label %land.lhs.true37.i.if.else44.i_crit_edge, label %if.then40.i

land.lhs.true37.i.if.else44.i_crit_edge:          ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else44.i

if.then40.i:                                      ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #9
  %call43.i = tail call i32 %43(ptr noundef nonnull %39, ptr noundef nonnull %call8.i.i.i) #7
  br label %if.end46.i

if.else44.i:                                      ; preds = %land.lhs.true37.i.if.else44.i_crit_edge, %land.lhs.true32.i.if.else44.i_crit_edge, %land.lhs.true29.i.if.else44.i_crit_edge, %if.end27.i.if.else44.i_crit_edge
  %get_strings45.i = getelementptr inbounds %struct.ethtool_ops, ptr %24, i32 0, i32 24
  %44 = ptrtoint ptr %get_strings45.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %get_strings45.i, align 4
  tail call void %45(ptr noundef nonnull %1, i32 noundef %i.185, ptr noundef nonnull %call8.i.i.i) #7
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.else44.i, %if.then40.i
  %strings47.i = getelementptr %struct.strset_reply_data, ptr %reply_base, i32 0, i32 1, i32 %i.185, i32 3
  %46 = ptrtoint ptr %strings47.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call8.i.i.i, ptr %strings47.i, align 4
  %free_strings.i = getelementptr %struct.strset_reply_data, ptr %reply_base, i32 0, i32 1, i32 %i.185, i32 1
  %47 = ptrtoint ptr %free_strings.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %free_strings.i, align 1
  br label %strset_prepare_set.exit

strset_prepare_set.exit:                          ; preds = %if.end46.i, %if.end17.i.strset_prepare_set.exit_crit_edge, %land.lhs.true11.i.strset_prepare_set.exit_crit_edge, %if.else.i.strset_prepare_set.exit_crit_edge
  %ret.0.sink.i = phi i32 [ 0, %if.else.i.strset_prepare_set.exit_crit_edge ], [ 0, %land.lhs.true11.i.strset_prepare_set.exit_crit_edge ], [ %.mux.i, %if.end17.i.strset_prepare_set.exit_crit_edge ], [ %ret.0.i, %if.end46.i ]
  %count49.i = getelementptr %struct.strset_reply_data, ptr %reply_base, i32 0, i32 1, i32 %i.185, i32 2
  %48 = ptrtoint ptr %count49.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %ret.0.sink.i, ptr %count49.i, align 4
  br label %for.inc39

for.inc39:                                        ; preds = %strset_prepare_set.exit, %lor.lhs.false.for.inc39_crit_edge, %strset_include.exit.for.inc39_crit_edge, %land.lhs.true.i.for.inc39_crit_edge, %if.then.i.for.inc39_crit_edge
  %inc40 = add nuw nsw i32 %i.185, 1
  %exitcond.not = icmp eq i32 %inc40, 21
  br i1 %exitcond.not, label %for.end41, label %for.inc39.for.body24_crit_edge

for.inc39.for.body24_crit_edge:                   ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24

for.end41:                                        ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ethnl_ops_complete(ptr noundef nonnull %1) #7
  br label %cleanup

err_ops:                                          ; preds = %if.end7.i.i.i.err_ops_crit_edge, %if.then23.i.err_ops_crit_edge
  tail call void @ethnl_ops_complete(ptr noundef nonnull %1) #7
  br label %err_strset

err_strset:                                       ; preds = %err_ops, %if.end18.err_strset_crit_edge
  %ret.0 = phi i32 [ %call, %if.end18.err_strset_crit_edge ], [ -12, %err_ops ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %err_strset
  %i.017.i = phi i32 [ 0, %err_strset ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %free_strings.i76 = getelementptr %struct.strset_reply_data, ptr %reply_base, i32 0, i32 1, i32 %i.017.i, i32 1
  %49 = ptrtoint ptr %free_strings.i76 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %free_strings.i76, align 1, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i77 = icmp eq i8 %50, 0
  br i1 %tobool.not.i77, label %for.body.i.for.inc.i_crit_edge, label %if.then.i79

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i79:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %strings.i78 = getelementptr %struct.strset_reply_data, ptr %reply_base, i32 0, i32 1, i32 %i.017.i, i32 3
  %51 = ptrtoint ptr %strings.i78 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %strings.i78, align 4
  tail call void @kfree(ptr noundef %52) #7
  %53 = ptrtoint ptr %strings.i78 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %strings.i78, align 4
  %54 = ptrtoint ptr %free_strings.i76 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %free_strings.i76, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i79, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 21
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %for.end41, %for.inc.cleanup_crit_edge, %if.then13, %do.body11.cleanup_crit_edge, %if.then8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end41 ], [ -22, %do.body11.cleanup_crit_edge ], [ -22, %if.then13 ], [ -22, %if.then8.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %ret.0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @strset_reply_size(ptr nocapture noundef readonly %req_base, ptr nocapture noundef readonly %reply_base) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %req_ids.i = getelementptr inbounds %struct.strset_req_info, ptr %req_base, i32 0, i32 1
  %0 = ptrtoint ptr %req_ids.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req_ids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  %counts_only = getelementptr inbounds %struct.strset_req_info, ptr %req_base, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %len.039 = phi i32 [ 4, %entry ], [ %len.1.ph, %for.inc.for.body_crit_edge ]
  %i.036 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %shl.i = shl nuw nsw i32 1, %i.036
  %and.i = and i32 %1, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool2.i.not, label %if.then.i.for.inc_crit_edge, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i.for.inc_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %arrayidx.i = getelementptr %struct.strset_reply_data, ptr %reply_base, i32 0, i32 1, i32 %i.036
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.i = icmp ne i8 %3, 0
  br i1 %tobool4.i, label %if.end.i.strset_include.exit_crit_edge, label %land.lhs.true.i

if.end.i.strset_include.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %strset_include.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %strings.i = getelementptr %struct.strset_reply_data, ptr %reply_base, i32 0, i32 1, i32 %i.036, i32 3
  %4 = ptrtoint ptr %strings.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %strings.i, align 4
  %tobool8.not.i = icmp eq ptr %5, null
  br i1 %tobool8.not.i, label %land.lhs.true.i.for.inc_crit_edge, label %land.lhs.true.i.strset_include.exit_crit_edge

land.lhs.true.i.strset_include.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %strset_include.exit

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

strset_include.exit:                              ; preds = %land.lhs.true.i.strset_include.exit_crit_edge, %if.end.i.strset_include.exit_crit_edge
  %6 = ptrtoint ptr %reply_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reply_base, align 4
  %tobool11.not.i = icmp eq ptr %7, null
  %spec.select.i = xor i1 %tobool4.i, %tobool11.not.i
  br i1 %spec.select.i, label %strset_include.exit.if.end_crit_edge, label %strset_include.exit.for.inc_crit_edge

strset_include.exit.for.inc_crit_edge:            ; preds = %strset_include.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

strset_include.exit.if.end_crit_edge:             ; preds = %strset_include.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %strset_include.exit.if.end_crit_edge, %if.then.i.if.end_crit_edge
  %8 = ptrtoint ptr %counts_only to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %counts_only, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool = icmp ne i8 %9, 0
  %count.i = getelementptr %struct.strset_reply_data, ptr %reply_base, i32 0, i32 1, i32 %i.036, i32 2
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  %brmerge.i = or i1 %tobool, %cmp.i
  %.mux.i = select i1 %cmp.i, i32 0, i32 20
  br i1 %brmerge.i, label %if.end.if.end8_crit_edge, label %for.body.lr.ph.i

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

for.body.lr.ph.i:                                 ; preds = %if.end
  %strings.i24 = getelementptr %struct.strset_reply_data, ptr %reply_base, i32 0, i32 1, i32 %i.036, i32 3
  %12 = ptrtoint ptr %strings.i24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %strings.i24, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.030.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %len.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add9.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i25 = getelementptr [32 x i8], ptr %13, i32 %i.030.i
  %call.i.i = tail call i32 @strnlen(ptr noundef %arrayidx.i25, i32 noundef 32) #11
  %14 = add i32 %call.i.i, 16
  %add.i = and i32 %14, -4
  %sub.i22.i = add i32 %add.i, 7
  %and.i23.i = and i32 %sub.i22.i, -4
  %add9.i = add i32 %and.i23.i, %len.029.i
  %inc.i = add nuw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %strset_set_size.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

strset_set_size.exit:                             ; preds = %for.body.i
  %phi.bo.i = add i32 %add9.i, 23
  %phi.bo31.i = and i32 %phi.bo.i, -4
  %phi.bo32.i = add i32 %phi.bo31.i, 7
  %phi.bo33.i = and i32 %phi.bo32.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo33.i)
  %cmp6 = icmp slt i32 %phi.bo33.i, 0
  br i1 %cmp6, label %strset_set_size.exit.cleanup10_crit_edge, label %strset_set_size.exit.if.end8_crit_edge

strset_set_size.exit.if.end8_crit_edge:           ; preds = %strset_set_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

strset_set_size.exit.cleanup10_crit_edge:         ; preds = %strset_set_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

if.end8:                                          ; preds = %strset_set_size.exit.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %retval.0.i2630 = phi i32 [ %phi.bo33.i, %strset_set_size.exit.if.end8_crit_edge ], [ %.mux.i, %if.end.if.end8_crit_edge ]
  %add9 = add i32 %retval.0.i2630, %len.039
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %strset_include.exit.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.then.i.for.inc_crit_edge
  %len.1.ph = phi i32 [ %len.039, %if.then.i.for.inc_crit_edge ], [ %len.039, %strset_include.exit.for.inc_crit_edge ], [ %add9, %if.end8 ], [ %len.039, %land.lhs.true.i.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, 21
  br i1 %exitcond.not, label %for.inc.cleanup10_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup10_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

cleanup10:                                        ; preds = %for.inc.cleanup10_crit_edge, %strset_set_size.exit.cleanup10_crit_edge
  %retval.2 = phi i32 [ %len.1.ph, %for.inc.cleanup10_crit_edge ], [ %phi.bo33.i, %strset_set_size.exit.cleanup10_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @strset_fill_reply(ptr noundef %skb, ptr nocapture noundef readonly %req_base, ptr nocapture noundef readonly %reply_base) #0 align 64 {
entry:
  %tmp.i.i.i = alloca i32, align 4
  %tmp.i48.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32770, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not56 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not56
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %req_ids.i = getelementptr inbounds %struct.strset_req_info, ptr %req_base, i32 0, i32 1
  %counts_only = getelementptr inbounds %struct.strset_req_info, ptr %req_base, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.051 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %req_ids.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req_ids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %shl.i = shl nuw nsw i32 1, %i.051
  %and.i = and i32 %3, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool2.i.not, label %if.then.i.for.inc_crit_edge, label %if.then.i.if.then5_crit_edge

if.then.i.if.then5_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.then.i.for.inc_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %arrayidx.i = getelementptr %struct.strset_reply_data, ptr %reply_base, i32 0, i32 1, i32 %i.051
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.i = icmp ne i8 %5, 0
  br i1 %tobool4.i, label %if.end.i.strset_include.exit_crit_edge, label %land.lhs.true.i

if.end.i.strset_include.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %strset_include.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %strings.i = getelementptr %struct.strset_reply_data, ptr %reply_base, i32 0, i32 1, i32 %i.051, i32 3
  %6 = ptrtoint ptr %strings.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %strings.i, align 4
  %tobool8.not.i = icmp eq ptr %7, null
  br i1 %tobool8.not.i, label %land.lhs.true.i.for.inc_crit_edge, label %land.lhs.true.i.strset_include.exit_crit_edge

land.lhs.true.i.strset_include.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %strset_include.exit

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

strset_include.exit:                              ; preds = %land.lhs.true.i.strset_include.exit_crit_edge, %if.end.i.strset_include.exit_crit_edge
  %8 = ptrtoint ptr %reply_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reply_base, align 4
  %tobool11.not.i = icmp eq ptr %9, null
  %spec.select.i = xor i1 %tobool4.i, %tobool11.not.i
  br i1 %spec.select.i, label %strset_include.exit.if.then5_crit_edge, label %strset_include.exit.for.inc_crit_edge

strset_include.exit.for.inc_crit_edge:            ; preds = %strset_include.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

strset_include.exit.if.then5_crit_edge:           ; preds = %strset_include.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.then5:                                         ; preds = %strset_include.exit.if.then5_crit_edge, %if.then.i.if.then5_crit_edge
  %arrayidx = getelementptr %struct.strset_reply_data, ptr %reply_base, i32 0, i32 1, i32 %i.051
  %10 = ptrtoint ptr %counts_only to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %counts_only, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i29 = icmp eq i8 %13, 0
  br i1 %tobool.not.i29, label %land.lhs.true.i31, label %if.then5.if.end.i32_crit_edge

if.then5.if.end.i32_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i32

land.lhs.true.i31:                                ; preds = %if.then5
  %strings.i30 = getelementptr %struct.strset_reply_data, ptr %reply_base, i32 0, i32 1, i32 %i.051, i32 3
  %14 = ptrtoint ptr %strings.i30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %strings.i30, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %land.lhs.true.i31.if.then.i.i_crit_edge, label %land.lhs.true.i31.if.end.i32_crit_edge

land.lhs.true.i31.if.end.i32_crit_edge:           ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i32

land.lhs.true.i31.if.then.i.i_crit_edge:          ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.end.i32:                                       ; preds = %land.lhs.true.i31.if.end.i32_crit_edge, %if.then5.if.end.i32_crit_edge
  %count.i = getelementptr %struct.strset_reply_data, ptr %reply_base, i32 0, i32 1, i32 %i.051, i32 2
  %16 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  br i1 %cmp.i, label %if.end.i32.for.inc_crit_edge, label %if.end3.i

if.end.i32.for.inc_crit_edge:                     ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end3.i:                                        ; preds = %if.end.i32
  %18 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call1.i.i.i, 0
  %tobool4.not67.i = icmp eq ptr %19, null
  %tobool4.not.i = select i1 %cmp.i.i.i, i1 true, i1 %tobool4.not67.i
  br i1 %tobool4.not.i, label %if.end3.i.if.then.i.i_crit_edge, label %if.end6.i

if.end3.i.if.then.i.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.end6.i:                                        ; preds = %if.end3.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #7
  %20 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %i.051, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not.i33 = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not.i33, label %lor.lhs.false.i, label %if.end6.i.if.then.i.i.i_crit_edge

if.end6.i.if.then.i.i.i_crit_edge:                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

lor.lhs.false.i:                                  ; preds = %if.end6.i
  %21 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i48.i) #7
  %23 = ptrtoint ptr %tmp.i48.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %tmp.i48.i, align 4
  %call.i49.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i48.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i48.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49.i)
  %tobool11.not.i34 = icmp eq i32 %call.i49.i, 0
  br i1 %tobool11.not.i34, label %if.end13.i, label %lor.lhs.false.i.if.then.i.i.i_crit_edge

lor.lhs.false.i.if.then.i.i.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.end13.i:                                       ; preds = %lor.lhs.false.i
  br i1 %tobool6.not, label %if.then15.i, label %if.end13.i.if.end27.i_crit_edge

if.end13.i.if.end27.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then15.i:                                      ; preds = %if.end13.i
  %24 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i51.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32771, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i51.i)
  %cmp.i.i52.i = icmp slt i32 %call1.i.i51.i, 0
  %tobool17.not71.i = icmp eq ptr %25, null
  %tobool17.not.i = select i1 %cmp.i.i52.i, i1 true, i1 %tobool17.not71.i
  br i1 %tobool17.not.i, label %if.then15.i.if.then.i.i.i_crit_edge, label %for.cond.preheader.i

if.then15.i.if.then.i.i.i_crit_edge:              ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

for.cond.preheader.i:                             ; preds = %if.then15.i
  %26 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp2169.not.i = icmp eq i32 %27, 0
  br i1 %cmp2169.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %strings.i.i = getelementptr %struct.strset_reply_data, ptr %reply_base, i32 0, i32 1, i32 %i.051, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.070.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %strings.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %strings.i.i, align 4
  %arrayidx.i.i = getelementptr [32 x i8], ptr %29, i32 %i.070.i
  %30 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call1.i.i.i.i, 0
  %tobool.not20.i.i = icmp eq ptr %31, null
  %tobool.not.i.i = select i1 %cmp.i.i.i.i, i1 true, i1 %tobool.not20.i.i
  br i1 %tobool.not.i.i, label %for.body.i.if.then.i.i.i_crit_edge, label %if.end.i.i

for.body.i.if.then.i.i.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #7
  %32 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %i.070.i, ptr %tmp.i.i.i, align 4
  %call.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.i.if.then.i.i.i.i_crit_edge

if.end.i.i.if.then.i.i.i.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i16.i.i = call i32 @strnlen(ptr noundef %arrayidx.i.i, i32 noundef 32) #11
  %add.i.i.i = add i32 %call.i16.i.i, 1
  %call1.i.i54.i = call ptr @nla_reserve(ptr noundef %skb, i32 noundef 2, i32 noundef %add.i.i.i) #7
  %tobool.not.i.i.i = icmp eq ptr %call1.i.i54.i, null
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.if.then.i.i.i.i_crit_edge, label %for.inc.i

lor.lhs.false.i.i.if.then.i.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lor.lhs.false.i.i.if.then.i.i.i.i_crit_edge, %if.end.i.i.if.then.i.i.i.i_crit_edge
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %33 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i17.i.i = icmp ugt ptr %34, %31
  br i1 %cmp.i.i17.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.nla_nest_cancel.exit.i.i_crit_edge, !prof !34

if.then.i.i.i.i.nla_nest_cancel.exit.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_nest_cancel.exit.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #7
  br label %nla_nest_cancel.exit.i.i

nla_nest_cancel.exit.i.i:                         ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.nla_nest_cancel.exit.i.i_crit_edge
  %35 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i.i) #7
  br label %if.then.i.i.i

for.inc.i:                                        ; preds = %lor.lhs.false.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call1.i.i54.i, i32 4
  %37 = call ptr @memcpy(ptr %add.ptr.i.i.i.i, ptr %arrayidx.i.i, i32 %call.i16.i.i)
  %arrayidx.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %call.i16.i.i
  %38 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx.i.i.i, align 1
  %39 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %40 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %41 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i.i.i, ptr %31, align 2
  %inc.i = add nuw i32 %i.070.i, 1
  %42 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %count.i, align 4
  %cmp21.i = icmp ult i32 %inc.i, %43
  br i1 %cmp21.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %44 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %45 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %46 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i.i, ptr %25, align 2
  br label %if.end27.i

if.end27.i:                                       ; preds = %for.end.i, %if.end13.i.if.end27.i_crit_edge
  %47 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i56.i = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast.i57.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i58.i = sub i32 %sub.ptr.lhs.cast.i56.i, %sub.ptr.rhs.cast.i57.i
  %conv.i59.i = trunc i32 %sub.ptr.sub.i58.i to i16
  %49 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv.i59.i, ptr %19, align 2
  br label %for.inc

if.then.i.i.i:                                    ; preds = %nla_nest_cancel.exit.i.i, %for.body.i.if.then.i.i.i_crit_edge, %if.then15.i.if.then.i.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i.i_crit_edge, %if.end6.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i61.i = icmp ugt ptr %51, %19
  br i1 %cmp.i.i61.i, label %do.end.i.i.i, label %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge, !prof !34

if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_nest_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #7
  br label %nla_nest_cancel.exit.i

nla_nest_cancel.exit.i:                           ; preds = %do.end.i.i.i, %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge
  %52 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i62.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i.i63.i = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i.i64.i = sub i32 %sub.ptr.lhs.cast.i.i62.i, %sub.ptr.rhs.cast.i.i63.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i64.i) #7
  br label %if.then.i.i

for.inc:                                          ; preds = %if.end27.i, %if.end.i32.for.inc_crit_edge, %strset_include.exit.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.then.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, 21
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %55 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv.i, ptr %1, align 2
  br label %cleanup

if.then.i.i:                                      ; preds = %nla_nest_cancel.exit.i, %if.end3.i.if.then.i.i_crit_edge, %land.lhs.true.i31.if.then.i.i_crit_edge
  %retval.0.i35.ph = phi i32 [ -90, %nla_nest_cancel.exit.i ], [ -95, %land.lhs.true.i31.if.then.i.i_crit_edge ], [ -90, %if.end3.i.if.then.i.i_crit_edge ]
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %57 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i37 = icmp ugt ptr %58, %1
  br i1 %cmp.i.i37, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !34

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #7
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %59 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i38 = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i39 = ptrtoint ptr %60 to i32
  %sub.ptr.sub.i.i40 = sub i32 %sub.ptr.lhs.cast.i.i38, %sub.ptr.rhs.cast.i.i39
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i40) #7
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i35.ph, %nla_nest_cancel.exit ], [ 0, %for.end ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @strset_cleanup_data(ptr nocapture noundef %reply_base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %free_strings = getelementptr %struct.strset_reply_data, ptr %reply_base, i32 0, i32 1, i32 %i.017, i32 1
  %0 = ptrtoint ptr %free_strings to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %free_strings, align 1, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %strings = getelementptr %struct.strset_reply_data, ptr %reply_base, i32 0, i32 1, i32 %i.017, i32 3
  %2 = ptrtoint ptr %strings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %strings, align 4
  tail call void @kfree(ptr noundef %3) #7
  %4 = ptrtoint ptr %strings to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %strings, align 4
  %5 = ptrtoint ptr %free_strings to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %free_strings, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 21
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_validate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_ops_begin(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_ops_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @ethnl_strset_get_policy, !1, !"ethnl_strset_get_policy", i1 false, i1 false}
!1 = !{!"../net/ethtool/strset.c", i32 127, i32 25}
!2 = !{ptr @ethnl_strset_request_ops, !3, !"ethnl_strset_request_ops", i1 false, i1 false}
!3 = !{!"../net/ethtool/strset.c", i32 467, i32 32}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../net/ethtool/strset.c", i32 202, i32 7}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @strset_parse_request.__msg, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../net/ethtool/strset.c", i32 211, i32 4}
!10 = !{ptr @strset_stringsets_policy, !11, !"strset_stringsets_policy", i1 false, i1 false}
!11 = !{!"../net/ethtool/strset.c", i32 177, i32 32}
!12 = !{ptr @nla_parse_nested.__msg, !13, !"__msg", i1 false, i1 false}
!13 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!14 = !{ptr @get_stringset_policy, !15, !"get_stringset_policy", i1 false, i1 false}
!15 = !{!"../net/ethtool/strset.c", i32 134, i32 32}
!16 = !{ptr @strset_prepare_data.__msg, !17, !"__msg", i1 false, i1 false}
!17 = !{!"../net/ethtool/strset.c", i32 293, i32 6}
!18 = !{ptr @info_template, !19, !"info_template", i1 false, i1 false}
!19 = !{!"../net/ethtool/strset.c", i32 15, i32 33}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/net/netlink.h", i32 991, i32 3}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{!"auto-init"}
!33 = !{i8 0, i8 2}
!34 = !{!"branch_weights", i32 1, i32 2000}
