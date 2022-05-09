; ModuleID = '/llk/IR_all_yes/net/tipc/netlink.c_pt.bc'
source_filename = "../net/tipc/netlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@tipc_nl_name_table_policy = dso_local constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@tipc_nl_monitor_policy = dso_local constant { [7 x %struct.nla_policy], [40 x i8] } { [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [40 x i8] zeroinitializer }, align 32
@tipc_nl_sock_policy = dso_local constant { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, [8 x %struct.nla_policy] }>, [56 x i8] } { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, [8 x %struct.nla_policy] }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon zeroinitializer }, [8 x %struct.nla_policy] zeroinitializer }>, [56 x i8] zeroinitializer }, align 32
@tipc_nl_net_policy = dso_local constant { [6 x %struct.nla_policy], [48 x i8] } { [6 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@tipc_nl_link_policy = dso_local constant { [11 x %struct.nla_policy], [40 x i8] } { [11 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 5, i8 0, i16 68, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@tipc_nl_node_policy = dso_local constant { [7 x %struct.nla_policy], [40 x i8] } { [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 16, %union.anon zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 72, %union.anon zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@tipc_nl_prop_policy = dso_local constant { [7 x %struct.nla_policy], [40 x i8] } { [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@tipc_nl_bearer_policy = dso_local constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 5, i8 0, i16 32, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer], [56 x i8] zeroinitializer }, align 32
@tipc_nl_media_policy = dso_local constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 5, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@tipc_nl_udp_policy = dso_local constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 11, i8 0, i16 128, %union.anon zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 128, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer], [32 x i8] zeroinitializer }, align 32
@tipc_nl_policy = internal constant { [11 x %struct.nla_policy], [40 x i8] } { [11 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer], [40 x i8] zeroinitializer }, align 32
@tipc_genl_v2_ops = internal constant { [24 x %struct.genl_ops], [160 x i8] } { [24 x %struct.genl_ops] [%struct.genl_ops { ptr @tipc_nl_bearer_disable, ptr null, ptr null, ptr null, ptr null, i32 0, i8 2, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr @tipc_nl_bearer_enable, ptr null, ptr null, ptr null, ptr null, i32 0, i8 3, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr @tipc_nl_bearer_get, ptr null, ptr @tipc_nl_bearer_dump, ptr null, ptr null, i32 0, i8 4, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr @tipc_nl_bearer_add, ptr null, ptr null, ptr null, ptr null, i32 0, i8 21, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr @tipc_nl_bearer_set, ptr null, ptr null, ptr null, ptr null, i32 0, i8 5, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr null, ptr @tipc_dump_start, ptr @tipc_nl_sk_dump, ptr @tipc_dump_done, ptr null, i32 0, i8 6, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr null, ptr null, ptr @tipc_nl_publ_dump, ptr null, ptr null, i32 0, i8 7, i8 0, i8 0, i8 5 }, %struct.genl_ops { ptr @tipc_nl_node_get_link, ptr null, ptr @tipc_nl_node_dump_link, ptr null, ptr null, i32 0, i8 8, i8 0, i8 0, i8 1 }, %struct.genl_ops { ptr @tipc_nl_node_set_link, ptr null, ptr null, ptr null, ptr null, i32 0, i8 9, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr @tipc_nl_node_reset_link_stats, ptr null, ptr null, ptr null, ptr null, i32 0, i8 10, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr @tipc_nl_media_get, ptr null, ptr @tipc_nl_media_dump, ptr null, ptr null, i32 0, i8 11, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr @tipc_nl_media_set, ptr null, ptr null, ptr null, ptr null, i32 0, i8 12, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr null, ptr null, ptr @tipc_nl_node_dump, ptr null, ptr null, i32 0, i8 13, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr null, ptr null, ptr @tipc_nl_net_dump, ptr null, ptr null, i32 0, i8 14, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr @tipc_nl_net_set, ptr null, ptr null, ptr null, ptr null, i32 0, i8 15, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr null, ptr null, ptr @tipc_nl_name_table_dump, ptr null, ptr null, i32 0, i8 16, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr @tipc_nl_node_set_monitor, ptr null, ptr null, ptr null, ptr null, i32 0, i8 17, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr @tipc_nl_node_get_monitor, ptr null, ptr @tipc_nl_node_dump_monitor, ptr null, ptr null, i32 0, i8 18, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr null, ptr null, ptr @tipc_nl_node_dump_monitor_peer, ptr null, ptr null, i32 0, i8 19, i8 0, i8 0, i8 5 }, %struct.genl_ops { ptr @tipc_nl_peer_rm, ptr null, ptr null, ptr null, ptr null, i32 0, i8 20, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr null, ptr null, ptr @tipc_udp_nl_dump_remoteip, ptr null, ptr null, i32 0, i8 22, i8 0, i8 0, i8 5 }, %struct.genl_ops { ptr @tipc_nl_node_set_key, ptr null, ptr null, ptr null, ptr null, i32 0, i8 23, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr @tipc_nl_node_flush_key, ptr null, ptr null, ptr null, ptr null, i32 0, i8 24, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr @tipc_nl_net_addr_legacy_get, ptr null, ptr null, ptr null, ptr null, i32 0, i8 25, i8 0, i8 0, i8 3 }], [160 x i8] zeroinitializer }, align 32
@tipc_genl_family = dso_local global %struct.genl_family { i32 0, i32 0, [16 x i8] c"TIPCv2\00\00\00\00\00\00\00\00\00\00", i32 1, i32 10, i32 0, i8 -128, i8 24, i8 0, i8 0, ptr @tipc_nl_policy, ptr null, ptr null, ptr @tipc_genl_v2_ops, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 4
@tipc_netlink_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013tipc: Failed to register netlink interface\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tipc_netlink_start\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/tipc/netlink.c\00", [45 x i8] zeroinitializer }, align 32
@tipc_netlink_start._entry_ptr = internal global ptr @tipc_netlink_start._entry, section ".printk_index", align 4
@___asan_gen_.3 = private unnamed_addr constant [26 x i8] c"tipc_nl_name_table_policy\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 61, i32 1 }
@___asan_gen_.6 = private unnamed_addr constant [23 x i8] c"tipc_nl_monitor_policy\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 66, i32 25 }
@___asan_gen_.9 = private unnamed_addr constant [20 x i8] c"tipc_nl_sock_policy\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 72, i32 25 }
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"tipc_nl_net_policy\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 80, i32 25 }
@___asan_gen_.15 = private unnamed_addr constant [20 x i8] c"tipc_nl_link_policy\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 89, i32 25 }
@___asan_gen_.18 = private unnamed_addr constant [20 x i8] c"tipc_nl_node_policy\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 103, i32 25 }
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"tipc_nl_prop_policy\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 116, i32 25 }
@___asan_gen_.24 = private unnamed_addr constant [22 x i8] c"tipc_nl_bearer_policy\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 126, i32 25 }
@___asan_gen_.27 = private unnamed_addr constant [21 x i8] c"tipc_nl_media_policy\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 134, i32 25 }
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"tipc_nl_udp_policy\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 140, i32 25 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"tipc_nl_policy\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 47, i32 32 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"tipc_genl_v2_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 151, i32 30 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [22 x i8] c"../net/tipc/netlink.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 305, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @tipc_netlink_start._entry, ptr @tipc_netlink_start._entry_ptr, ptr @tipc_nl_name_table_policy, ptr @tipc_nl_monitor_policy, ptr @tipc_nl_sock_policy, ptr @tipc_nl_net_policy, ptr @tipc_nl_link_policy, ptr @tipc_nl_node_policy, ptr @tipc_nl_prop_policy, ptr @tipc_nl_bearer_policy, ptr @tipc_nl_media_policy, ptr @tipc_nl_udp_policy, ptr @tipc_nl_policy, ptr @tipc_genl_v2_ops, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_nl_name_table_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_nl_monitor_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_nl_sock_policy to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_nl_net_policy to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_nl_link_policy to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_nl_node_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_nl_prop_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_nl_bearer_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_nl_media_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_nl_udp_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_nl_policy to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_genl_v2_ops to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_netlink_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_netlink_start() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_register_family(ptr noundef nonnull @tipc_genl_family) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_netlink_stop() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_unregister_family(ptr noundef nonnull @tipc_genl_family) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_bearer_disable(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_bearer_enable(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_bearer_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_bearer_dump(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_bearer_add(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_bearer_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_dump_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_sk_dump(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_dump_done(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_publ_dump(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_node_get_link(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_node_dump_link(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_node_set_link(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_node_reset_link_stats(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_media_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_media_dump(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_media_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_node_dump(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_net_dump(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_net_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_name_table_dump(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_node_set_monitor(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_node_get_monitor(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_node_dump_monitor(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_node_dump_monitor_peer(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_peer_rm(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_udp_nl_dump_remoteip(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_node_set_key(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_node_flush_key(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nl_net_addr_legacy_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @tipc_nl_name_table_policy, !1, !"tipc_nl_name_table_policy", i1 false, i1 false}
!1 = !{!"../net/tipc/netlink.c", i32 61, i32 1}
!2 = !{ptr @tipc_nl_monitor_policy, !3, !"tipc_nl_monitor_policy", i1 false, i1 false}
!3 = !{!"../net/tipc/netlink.c", i32 66, i32 25}
!4 = !{ptr @tipc_nl_sock_policy, !5, !"tipc_nl_sock_policy", i1 false, i1 false}
!5 = !{!"../net/tipc/netlink.c", i32 72, i32 25}
!6 = !{ptr @tipc_nl_net_policy, !7, !"tipc_nl_net_policy", i1 false, i1 false}
!7 = !{!"../net/tipc/netlink.c", i32 80, i32 25}
!8 = !{ptr @tipc_nl_link_policy, !9, !"tipc_nl_link_policy", i1 false, i1 false}
!9 = !{!"../net/tipc/netlink.c", i32 89, i32 25}
!10 = !{ptr @tipc_nl_node_policy, !11, !"tipc_nl_node_policy", i1 false, i1 false}
!11 = !{!"../net/tipc/netlink.c", i32 103, i32 25}
!12 = !{ptr @tipc_nl_prop_policy, !13, !"tipc_nl_prop_policy", i1 false, i1 false}
!13 = !{!"../net/tipc/netlink.c", i32 116, i32 25}
!14 = !{ptr @tipc_nl_bearer_policy, !15, !"tipc_nl_bearer_policy", i1 false, i1 false}
!15 = !{!"../net/tipc/netlink.c", i32 126, i32 25}
!16 = !{ptr @tipc_nl_media_policy, !17, !"tipc_nl_media_policy", i1 false, i1 false}
!17 = !{!"../net/tipc/netlink.c", i32 134, i32 25}
!18 = !{ptr @tipc_nl_udp_policy, !19, !"tipc_nl_udp_policy", i1 false, i1 false}
!19 = !{!"../net/tipc/netlink.c", i32 140, i32 25}
!20 = !{ptr @tipc_genl_family, !21, !"tipc_genl_family", i1 false, i1 false}
!21 = !{!"../net/tipc/netlink.c", i32 287, i32 20}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/tipc/netlink.c", i32 305, i32 3}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @tipc_netlink_start._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @tipc_netlink_start._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @tipc_nl_policy, !29, !"tipc_nl_policy", i1 false, i1 false}
!29 = !{!"../net/tipc/netlink.c", i32 47, i32 32}
!30 = !{ptr @tipc_genl_v2_ops, !31, !"tipc_genl_v2_ops", i1 false, i1 false}
!31 = !{!"../net/tipc/netlink.c", i32 151, i32 30}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
