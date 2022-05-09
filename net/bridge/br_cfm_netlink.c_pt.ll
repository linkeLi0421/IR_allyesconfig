; ModuleID = '/llk/IR_all_yes/net/bridge/br_cfm_netlink.c_pt.bc'
source_filename = "../net/bridge/br_cfm_netlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon.48 }
%union.anon.48 = type { i32 }
%struct.anon.49 = type { i16, i16 }
%struct.br_cfm_cc_config = type { %struct.br_cfm_maid, i32, i8 }
%struct.br_cfm_maid = type { [48 x i8] }
%struct.br_cfm_mep_config = type { i32, i32, %struct.mac_addr }
%struct.mac_addr = type { [6 x i8] }
%struct.br_cfm_mep_create = type { i32, i32, i32 }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.br_cfm_cc_ccm_tx_info = type { %struct.mac_addr, i32, i8, i8, i8, i8, i8 }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.143, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%struct.list_head = type { ptr, ptr }
%union.anon.143 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.144, %union.anon.145, i16, i16 }
%union.anon.144 = type { %struct.in6_addr }
%union.anon.145 = type { %struct.in6_addr }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.hlist_head = type { ptr }
%struct.sk_buff = type { %union.anon.3, %union.anon.6, %union.anon.113, [48 x i8], %union.anon.114, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.116, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.6 = type { ptr }
%union.anon.113 = type { i64 }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { i32, ptr }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.118, i32, i32, i32, i16, i16, %union.anon.120, i32, %union.anon.121, %union.anon.122, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.118 = type { i32 }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i32 }
%union.anon.122 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.br_cfm_mep = type { %struct.hlist_node, i32, %struct.br_cfm_mep_create, %struct.br_cfm_mep_config, %struct.br_cfm_cc_config, %struct.br_cfm_cc_ccm_tx_info, %struct.hlist_head, ptr, i32, %struct.delayed_work, i32, i32, %struct.br_cfm_mep_status, i8, %struct.callback_head }
%struct.br_cfm_mep_status = type { i8, i8, i8 }
%struct.br_cfm_peer_mep = type { %struct.hlist_node, ptr, %struct.delayed_work, i32, %struct.br_cfm_cc_peer_status, i32, %struct.callback_head }
%struct.br_cfm_cc_peer_status = type { i8, i8, i8 }

@br_cfm_config_fill_info.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/bridge/br_cfm_netlink.c\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@br_cfm_config_fill_info.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_cfm_status_fill_info.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_cfm_status_fill_info.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@br_cfm_mep_create_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy { i8 17, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@br_cfm_mep_delete_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy { i8 17, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@br_cfm_cc_config_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy { i8 17, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 48, %union.anon.48 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@br_cfm_cc_rdi_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy { i8 17, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@br_cfm_policy = internal constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, { i8, i8, i16, { ptr } }, { i8, i8, i16, { ptr } }, { i8, i8, i16, { ptr } }, { i8, i8, i16, { ptr } }, { i8, i8, i16, { ptr } }, { i8, i8, i16, { ptr } }, { i8, i8, i16, { ptr } }, [8 x %struct.nla_policy] }>, [56 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, { i8, i8, i16, { ptr } }, { i8, i8, i16, { ptr } }, { i8, i8, i16, { ptr } }, { i8, i8, i16, { ptr } }, { i8, i8, i16, { ptr } }, { i8, i8, i16, { ptr } }, { i8, i8, i16, { ptr } }, [8 x %struct.nla_policy] }> <{ %struct.nla_policy { i8 17, i8 0, i16 0, %union.anon.48 zeroinitializer }, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 4, { ptr } { ptr @br_cfm_mep_create_policy } }, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 1, { ptr } { ptr @br_cfm_mep_delete_policy } }, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 4, { ptr } { ptr @br_cfm_mep_config_policy } }, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 4, { ptr } { ptr @br_cfm_cc_config_policy } }, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 2, { ptr } { ptr @br_cfm_cc_peer_mep_policy } }, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 2, { ptr } { ptr @br_cfm_cc_peer_mep_policy } }, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 2, { ptr } { ptr @br_cfm_cc_rdi_policy } }, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 8, { ptr } { ptr @br_cfm_cc_ccm_tx_policy } }, [8 x %struct.nla_policy] zeroinitializer }>, [56 x i8] zeroinitializer }, align 32
@br_cfm_mep_config_policy = internal constant { <{ %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.49 } }, { i8, i8, i16, { %struct.anon.49 } }, { i8, i8, i16, { %struct.anon.49 } } }>, [56 x i8] } { <{ %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.49 } }, { i8, i8, i16, { %struct.anon.49 } }, { i8, i8, i16, { %struct.anon.49 } } }> <{ %struct.nla_policy { i8 17, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, { i8, i8, i16, { %struct.anon.49 } } { i8 11, i8 1, i16 0, { %struct.anon.49 } { %struct.anon.49 { i16 6, i16 6 } } }, { i8, i8, i16, { %struct.anon.49 } } { i8 3, i8 4, i16 0, { %struct.anon.49 } { %struct.anon.49 { i16 0, i16 7 } } }, { i8, i8, i16, { %struct.anon.49 } } { i8 3, i8 4, i16 0, { %struct.anon.49 } { %struct.anon.49 { i16 0, i16 8191 } } } }>, [56 x i8] zeroinitializer }, align 32
@br_cfm_cc_peer_mep_policy = internal constant { <{ %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.49 } } }>, [40 x i8] } { <{ %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.49 } } }> <{ %struct.nla_policy { i8 17, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, { i8, i8, i16, { %struct.anon.49 } } { i8 3, i8 4, i16 0, { %struct.anon.49 } { %struct.anon.49 { i16 0, i16 8191 } } } }>, [40 x i8] zeroinitializer }, align 32
@br_cfm_cc_ccm_tx_policy = internal constant { <{ %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.49 } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }>, [56 x i8] } { <{ %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.49 } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy { i8 17, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, { i8, i8, i16, { %struct.anon.49 } } { i8 11, i8 1, i16 0, { %struct.anon.49 } { %struct.anon.49 { i16 6, i16 6 } } }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer } }>, [56 x i8] zeroinitializer }, align 32
@br_mep_create_parse.__msg = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bridge: Missing INSTANCE attribute\00", [61 x i8] zeroinitializer }, align 32
@br_mep_create_parse.__msg.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bridge: Missing DOMAIN attribute\00", [63 x i8] zeroinitializer }, align 32
@br_mep_create_parse.__msg.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bridge: Missing DIRECTION attribute\00", [60 x i8] zeroinitializer }, align 32
@br_mep_create_parse.__msg.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bridge: Missing IFINDEX attribute\00", [62 x i8] zeroinitializer }, align 32
@br_mep_delete_parse.__msg = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bridge: Missing INSTANCE attribute\00", [61 x i8] zeroinitializer }, align 32
@br_mep_config_parse.__msg = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bridge: Missing INSTANCE attribute\00", [61 x i8] zeroinitializer }, align 32
@br_mep_config_parse.__msg.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bridge: Missing UNICAST_MAC attribute\00", [58 x i8] zeroinitializer }, align 32
@br_mep_config_parse.__msg.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bridge: Missing MDLEVEL attribute\00", [62 x i8] zeroinitializer }, align 32
@br_mep_config_parse.__msg.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bridge: Missing MEPID attribute\00", [32 x i8] zeroinitializer }, align 32
@br_cc_config_parse.__msg = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bridge: Missing INSTANCE attribute\00", [61 x i8] zeroinitializer }, align 32
@br_cc_config_parse.__msg.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bridge: Missing ENABLE attribute\00", [63 x i8] zeroinitializer }, align 32
@br_cc_config_parse.__msg.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bridge: Missing INTERVAL attribute\00", [61 x i8] zeroinitializer }, align 32
@br_cc_config_parse.__msg.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bridge: Missing MAID attribute\00", [33 x i8] zeroinitializer }, align 32
@br_cc_peer_mep_add_parse.__msg = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bridge: Missing INSTANCE attribute\00", [61 x i8] zeroinitializer }, align 32
@br_cc_peer_mep_add_parse.__msg.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bridge: Missing PEER_MEP_ID attribute\00", [58 x i8] zeroinitializer }, align 32
@br_cc_peer_mep_remove_parse.__msg = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bridge: Missing INSTANCE attribute\00", [61 x i8] zeroinitializer }, align 32
@br_cc_peer_mep_remove_parse.__msg.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bridge: Missing PEER_MEP_ID attribute\00", [58 x i8] zeroinitializer }, align 32
@br_cc_rdi_parse.__msg = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bridge: Missing INSTANCE attribute\00", [61 x i8] zeroinitializer }, align 32
@br_cc_rdi_parse.__msg.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bridge: Missing RDI attribute\00", [34 x i8] zeroinitializer }, align 32
@br_cc_ccm_tx_parse.__msg = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bridge: Missing INSTANCE attribute\00", [61 x i8] zeroinitializer }, align 32
@br_cc_ccm_tx_parse.__msg.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bridge: Missing DMAC attribute\00", [33 x i8] zeroinitializer }, align 32
@br_cc_ccm_tx_parse.__msg.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"bridge: Missing SEQ_NO_UPDATE attribute\00", [56 x i8] zeroinitializer }, align 32
@br_cc_ccm_tx_parse.__msg.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bridge: Missing PERIOD attribute\00", [63 x i8] zeroinitializer }, align 32
@br_cc_ccm_tx_parse.__msg.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bridge: Missing IF_TLV attribute\00", [63 x i8] zeroinitializer }, align 32
@br_cc_ccm_tx_parse.__msg.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bridge: Missing IF_TLV_VALUE attribute\00", [57 x i8] zeroinitializer }, align 32
@br_cc_ccm_tx_parse.__msg.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bridge: Missing PORT_TLV attribute\00", [61 x i8] zeroinitializer }, align 32
@br_cc_ccm_tx_parse.__msg.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"bridge: Missing PORT_TLV_VALUE attribute\00", [55 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 461, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1208, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [25 x i8] c"br_cfm_mep_create_policy\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 9, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [25 x i8] c"br_cfm_mep_delete_policy\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 18, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [24 x i8] c"br_cfm_cc_config_policy\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 33, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant [21 x i8] c"br_cfm_cc_rdi_policy\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 50, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant [14 x i8] c"br_cfm_policy\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 70, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant [25 x i8] c"br_cfm_mep_config_policy\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 24, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant [26 x i8] c"br_cfm_cc_peer_mep_policy\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 43, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant [24 x i8] c"br_cfm_cc_ccm_tx_policy\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 57, i32 1 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 104, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 108, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 112, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 116, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 143, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 167, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 171, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 175, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 179, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 209, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 213, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 217, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 221, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 249, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 253, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 276, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 280, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 303, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 307, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 331, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 335, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 339, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 343, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 347, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 351, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 355, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.140 = private constant [31 x i8] c"../net/bridge/br_cfm_netlink.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 359, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 991, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @.str, ptr @.str.1, ptr @nla_parse_nested.__msg, ptr @br_cfm_mep_create_policy, ptr @br_cfm_mep_delete_policy, ptr @br_cfm_cc_config_policy, ptr @br_cfm_cc_rdi_policy, ptr @br_cfm_policy, ptr @br_cfm_mep_config_policy, ptr @br_cfm_cc_peer_mep_policy, ptr @br_cfm_cc_ccm_tx_policy, ptr @br_mep_create_parse.__msg, ptr @br_mep_create_parse.__msg.8, ptr @br_mep_create_parse.__msg.9, ptr @br_mep_create_parse.__msg.10, ptr @br_mep_delete_parse.__msg, ptr @br_mep_config_parse.__msg, ptr @br_mep_config_parse.__msg.11, ptr @br_mep_config_parse.__msg.12, ptr @br_mep_config_parse.__msg.13, ptr @br_cc_config_parse.__msg, ptr @br_cc_config_parse.__msg.14, ptr @br_cc_config_parse.__msg.15, ptr @br_cc_config_parse.__msg.16, ptr @br_cc_peer_mep_add_parse.__msg, ptr @br_cc_peer_mep_add_parse.__msg.17, ptr @br_cc_peer_mep_remove_parse.__msg, ptr @br_cc_peer_mep_remove_parse.__msg.18, ptr @br_cc_rdi_parse.__msg, ptr @br_cc_rdi_parse.__msg.19, ptr @br_cc_ccm_tx_parse.__msg, ptr @br_cc_ccm_tx_parse.__msg.20, ptr @br_cc_ccm_tx_parse.__msg.21, ptr @br_cc_ccm_tx_parse.__msg.22, ptr @br_cc_ccm_tx_parse.__msg.23, ptr @br_cc_ccm_tx_parse.__msg.24, ptr @br_cc_ccm_tx_parse.__msg.25, ptr @br_cc_ccm_tx_parse.__msg.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_mep_create_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_mep_delete_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_cc_config_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_cc_rdi_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_policy to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_mep_config_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_cc_peer_mep_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_cc_ccm_tx_policy to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mep_create_parse.__msg to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mep_create_parse.__msg.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mep_create_parse.__msg.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mep_create_parse.__msg.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mep_delete_parse.__msg to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mep_config_parse.__msg to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mep_config_parse.__msg.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mep_config_parse.__msg.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mep_config_parse.__msg.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cc_config_parse.__msg to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cc_config_parse.__msg.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cc_config_parse.__msg.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cc_config_parse.__msg.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cc_peer_mep_add_parse.__msg to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cc_peer_mep_add_parse.__msg.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cc_peer_mep_remove_parse.__msg to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cc_peer_mep_remove_parse.__msg.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cc_rdi_parse.__msg to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cc_rdi_parse.__msg.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cc_ccm_tx_parse.__msg to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cc_ccm_tx_parse.__msg.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cc_ccm_tx_parse.__msg.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cc_ccm_tx_parse.__msg.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cc_ccm_tx_parse.__msg.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cc_ccm_tx_parse.__msg.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cc_ccm_tx_parse.__msg.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cc_ccm_tx_parse.__msg.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_cfm_parse(ptr noundef %br, ptr noundef readonly %p, ptr noundef %attr, i32 noundef %cmd, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %tb.i249 = alloca [3 x ptr], align 4
  %tb.i223 = alloca [3 x ptr], align 4
  %tb.i182 = alloca [5 x ptr], align 4
  %config.i183 = alloca %struct.br_cfm_cc_config, align 4
  %tb.i142 = alloca [5 x ptr], align 4
  %config.i = alloca %struct.br_cfm_mep_config, align 4
  %tb.i121 = alloca [2 x ptr], align 4
  %tb.i = alloca [5 x ptr], align 4
  %create.i = alloca %struct.br_cfm_mep_create, align 4
  %tb = alloca [17 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tb) #3
  %0 = call ptr @memset(ptr %tb, i32 255, i32 68)
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %1 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %br.addr.0 = phi ptr [ %2, %if.then ], [ %br, %entry.if.end_crit_edge ]
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %tobool.not.i = icmp sgt i16 %4, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #3
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %if.then2.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %6 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %attr, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %7 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup

nla_parse_nested.exit:                            ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %attr, i32 4
  %8 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %attr, align 2
  %conv.i.i = zext i16 %9 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 16, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @br_cfm_policy, i32 noundef 31, ptr noundef %extack) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool2.not = icmp eq i32 %call6.i, 0
  br i1 %tobool2.not, label %if.end4, label %nla_parse_nested.exit.cleanup_crit_edge

nla_parse_nested.exit.cleanup_crit_edge:          ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %nla_parse_nested.exit
  %arrayidx = getelementptr inbounds [17 x ptr], ptr %tb, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.end4.if.end12_crit_edge, label %if.then6

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.then6:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tb.i) #3
  %12 = getelementptr inbounds [5 x ptr], ptr %tb.i, i32 0, i32 1
  %13 = getelementptr inbounds [5 x ptr], ptr %tb.i, i32 0, i32 2
  %14 = getelementptr inbounds [5 x ptr], ptr %tb.i, i32 0, i32 3
  %15 = getelementptr inbounds [5 x ptr], ptr %tb.i, i32 0, i32 4
  %16 = call ptr @memset(ptr %tb.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %create.i) #3
  %17 = getelementptr inbounds %struct.br_cfm_mep_create, ptr %create.i, i32 0, i32 1
  %18 = getelementptr inbounds %struct.br_cfm_mep_create, ptr %create.i, i32 0, i32 2
  %nla_type.i.i = getelementptr inbounds %struct.nlattr, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %nla_type.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %nla_type.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %20)
  %tobool.not.i.i = icmp sgt i16 %20, -1
  br i1 %tobool.not.i.i, label %do.body.i.i, label %nla_parse_nested.exit.i

do.body.i.i:                                      ; preds = %if.then6
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #3
  %tobool1.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i.i, label %do.body.i.i.br_mep_create_parse.exit.thread_crit_edge, label %if.then2.i.i

do.body.i.i.br_mep_create_parse.exit.thread_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_mep_create_parse.exit.thread

if.then2.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %22 = ptrtoint ptr %bad_attr.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %11, ptr %bad_attr.i.i, align 4
  %policy3.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %23 = ptrtoint ptr %policy3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %policy3.i.i, align 4
  br label %br_mep_create_parse.exit.thread

nla_parse_nested.exit.i:                          ; preds = %if.then6
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 4
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %11, align 2
  %conv.i.i.i = zext i16 %25 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call6.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i, i32 noundef 4, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @br_cfm_mep_create_policy, i32 noundef 31, ptr noundef %extack) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool.not.i117 = icmp eq i32 %call6.i.i, 0
  br i1 %tobool.not.i117, label %if.end.i, label %nla_parse_nested.exit.i.br_mep_create_parse.exit.thread_crit_edge

nla_parse_nested.exit.i.br_mep_create_parse.exit.thread_crit_edge: ; preds = %nla_parse_nested.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_mep_create_parse.exit.thread

if.end.i:                                         ; preds = %nla_parse_nested.exit.i
  %26 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %12, align 4
  %tobool1.not.i118 = icmp eq ptr %27, null
  br i1 %tobool1.not.i118, label %do.body.i119, label %if.end6.i

do.body.i119:                                     ; preds = %if.end.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mep_create_parse.__msg) #3
  %tobool3.not.i = icmp eq ptr %extack, null
  br i1 %tobool3.not.i, label %do.body.i119.br_mep_create_parse.exit.thread_crit_edge, label %if.then4.i

do.body.i119.br_mep_create_parse.exit.thread_crit_edge: ; preds = %do.body.i119
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_mep_create_parse.exit.thread

if.then4.i:                                       ; preds = %do.body.i119
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @br_mep_create_parse.__msg, ptr %extack, align 4
  br label %br_mep_create_parse.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %29 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %13, align 4
  %tobool8.not.i = icmp eq ptr %30, null
  br i1 %tobool8.not.i, label %do.body10.i, label %if.end18.i

do.body10.i:                                      ; preds = %if.end6.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mep_create_parse.__msg.8) #3
  %tobool12.not.i = icmp eq ptr %extack, null
  br i1 %tobool12.not.i, label %do.body10.i.br_mep_create_parse.exit.thread_crit_edge, label %if.then13.i

do.body10.i.br_mep_create_parse.exit.thread_crit_edge: ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_mep_create_parse.exit.thread

if.then13.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #5
  %31 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @br_mep_create_parse.__msg.8, ptr %extack, align 4
  br label %br_mep_create_parse.exit.thread

if.end18.i:                                       ; preds = %if.end6.i
  %32 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %14, align 4
  %tobool20.not.i = icmp eq ptr %33, null
  br i1 %tobool20.not.i, label %do.body22.i, label %if.end30.i

do.body22.i:                                      ; preds = %if.end18.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mep_create_parse.__msg.9) #3
  %tobool24.not.i = icmp eq ptr %extack, null
  br i1 %tobool24.not.i, label %do.body22.i.br_mep_create_parse.exit.thread_crit_edge, label %if.then25.i

do.body22.i.br_mep_create_parse.exit.thread_crit_edge: ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_mep_create_parse.exit.thread

if.then25.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #5
  %34 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @br_mep_create_parse.__msg.9, ptr %extack, align 4
  br label %br_mep_create_parse.exit.thread

if.end30.i:                                       ; preds = %if.end18.i
  %35 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %15, align 4
  %tobool32.not.i = icmp eq ptr %36, null
  br i1 %tobool32.not.i, label %do.body34.i, label %br_mep_create_parse.exit

do.body34.i:                                      ; preds = %if.end30.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mep_create_parse.__msg.10) #3
  %tobool36.not.i = icmp eq ptr %extack, null
  br i1 %tobool36.not.i, label %do.body34.i.br_mep_create_parse.exit.thread_crit_edge, label %if.then37.i

do.body34.i.br_mep_create_parse.exit.thread_crit_edge: ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_mep_create_parse.exit.thread

if.then37.i:                                      ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #5
  %37 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @br_mep_create_parse.__msg.10, ptr %extack, align 4
  br label %br_mep_create_parse.exit.thread

br_mep_create_parse.exit.thread:                  ; preds = %if.then37.i, %do.body34.i.br_mep_create_parse.exit.thread_crit_edge, %if.then25.i, %do.body22.i.br_mep_create_parse.exit.thread_crit_edge, %if.then13.i, %do.body10.i.br_mep_create_parse.exit.thread_crit_edge, %if.then4.i, %do.body.i119.br_mep_create_parse.exit.thread_crit_edge, %nla_parse_nested.exit.i.br_mep_create_parse.exit.thread_crit_edge, %if.then2.i.i, %do.body.i.i.br_mep_create_parse.exit.thread_crit_edge
  %retval.0.i120.ph = phi i32 [ -22, %do.body.i.i.br_mep_create_parse.exit.thread_crit_edge ], [ -22, %if.then2.i.i ], [ -22, %do.body34.i.br_mep_create_parse.exit.thread_crit_edge ], [ -22, %if.then37.i ], [ -22, %do.body22.i.br_mep_create_parse.exit.thread_crit_edge ], [ -22, %if.then25.i ], [ -22, %do.body10.i.br_mep_create_parse.exit.thread_crit_edge ], [ -22, %if.then13.i ], [ -22, %do.body.i119.br_mep_create_parse.exit.thread_crit_edge ], [ -22, %if.then4.i ], [ %call6.i.i, %nla_parse_nested.exit.i.br_mep_create_parse.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %create.i) #3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb.i) #3
  br label %cleanup

br_mep_create_parse.exit:                         ; preds = %if.end30.i
  %add.ptr.i.i65.i = getelementptr i8, ptr %27, i32 4
  %38 = ptrtoint ptr %add.ptr.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i65.i, align 4
  %add.ptr.i.i66.i = getelementptr i8, ptr %30, i32 4
  %40 = ptrtoint ptr %add.ptr.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i.i66.i, align 4
  %42 = ptrtoint ptr %create.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %create.i, align 4
  %add.ptr.i.i67.i = getelementptr i8, ptr %33, i32 4
  %43 = ptrtoint ptr %add.ptr.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i.i67.i, align 4
  %45 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %17, align 4
  %add.ptr.i.i68.i = getelementptr i8, ptr %36, i32 4
  %46 = ptrtoint ptr %add.ptr.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i.i68.i, align 4
  %48 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %18, align 4
  %call51.i = call i32 @br_cfm_mep_create(ptr noundef %br.addr.0, i32 noundef %39, ptr noundef nonnull %create.i, ptr noundef %extack) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %create.i) #3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool9.not = icmp eq i32 %call51.i, 0
  br i1 %tobool9.not, label %br_mep_create_parse.exit.if.end12_crit_edge, label %br_mep_create_parse.exit.cleanup_crit_edge

br_mep_create_parse.exit.cleanup_crit_edge:       ; preds = %br_mep_create_parse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

br_mep_create_parse.exit.if.end12_crit_edge:      ; preds = %br_mep_create_parse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.end12:                                         ; preds = %br_mep_create_parse.exit.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  %arrayidx13 = getelementptr inbounds [17 x ptr], ptr %tb, i32 0, i32 2
  %49 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %50, null
  br i1 %tobool14.not, label %if.end12.if.end21_crit_edge, label %if.then15

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

if.then15:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tb.i121) #3
  %51 = ptrtoint ptr %tb.i121 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb.i121, align 4, !annotation !93
  %52 = getelementptr inbounds [2 x ptr], ptr %tb.i121, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 -1 to ptr), ptr %52, align 4, !annotation !93
  %nla_type.i.i122 = getelementptr inbounds %struct.nlattr, ptr %50, i32 0, i32 1
  %54 = ptrtoint ptr %nla_type.i.i122 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %nla_type.i.i122, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %55)
  %tobool.not.i.i123 = icmp sgt i16 %55, -1
  br i1 %tobool.not.i.i123, label %do.body.i.i125, label %nla_parse_nested.exit.i134

do.body.i.i125:                                   ; preds = %if.then15
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #3
  %tobool1.not.i.i124 = icmp eq ptr %extack, null
  br i1 %tobool1.not.i.i124, label %do.body.i.i125.br_mep_delete_parse.exit.thread_crit_edge, label %if.then2.i.i128

do.body.i.i125.br_mep_delete_parse.exit.thread_crit_edge: ; preds = %do.body.i.i125
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_mep_delete_parse.exit.thread

if.then2.i.i128:                                  ; preds = %do.body.i.i125
  call void @__sanitizer_cov_trace_pc() #5
  %56 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i.i126 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %57 = ptrtoint ptr %bad_attr.i.i126 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %50, ptr %bad_attr.i.i126, align 4
  %policy3.i.i127 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %58 = ptrtoint ptr %policy3.i.i127 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %policy3.i.i127, align 4
  br label %br_mep_delete_parse.exit.thread

nla_parse_nested.exit.i134:                       ; preds = %if.then15
  %add.ptr.i.i.i129 = getelementptr i8, ptr %50, i32 4
  %59 = ptrtoint ptr %50 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %50, align 2
  %conv.i.i.i130 = zext i16 %60 to i32
  %sub.i.i.i131 = add nsw i32 %conv.i.i.i130, -4
  %call6.i.i132 = call i32 @__nla_parse(ptr noundef nonnull %tb.i121, i32 noundef 1, ptr noundef %add.ptr.i.i.i129, i32 noundef %sub.i.i.i131, ptr noundef nonnull @br_cfm_mep_delete_policy, i32 noundef 31, ptr noundef %extack) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i132)
  %tobool.not.i133 = icmp eq i32 %call6.i.i132, 0
  br i1 %tobool.not.i133, label %if.end.i136, label %nla_parse_nested.exit.i134.br_mep_delete_parse.exit.thread_crit_edge

nla_parse_nested.exit.i134.br_mep_delete_parse.exit.thread_crit_edge: ; preds = %nla_parse_nested.exit.i134
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_mep_delete_parse.exit.thread

if.end.i136:                                      ; preds = %nla_parse_nested.exit.i134
  %61 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %52, align 4
  %tobool1.not.i135 = icmp eq ptr %62, null
  br i1 %tobool1.not.i135, label %do.body.i138, label %br_mep_delete_parse.exit

do.body.i138:                                     ; preds = %if.end.i136
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mep_delete_parse.__msg) #3
  %tobool3.not.i137 = icmp eq ptr %extack, null
  br i1 %tobool3.not.i137, label %do.body.i138.br_mep_delete_parse.exit.thread_crit_edge, label %if.then4.i139

do.body.i138.br_mep_delete_parse.exit.thread_crit_edge: ; preds = %do.body.i138
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_mep_delete_parse.exit.thread

if.then4.i139:                                    ; preds = %do.body.i138
  call void @__sanitizer_cov_trace_pc() #5
  %63 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @br_mep_delete_parse.__msg, ptr %extack, align 4
  br label %br_mep_delete_parse.exit.thread

br_mep_delete_parse.exit.thread:                  ; preds = %if.then4.i139, %do.body.i138.br_mep_delete_parse.exit.thread_crit_edge, %nla_parse_nested.exit.i134.br_mep_delete_parse.exit.thread_crit_edge, %if.then2.i.i128, %do.body.i.i125.br_mep_delete_parse.exit.thread_crit_edge
  %retval.0.i141.ph = phi i32 [ -22, %do.body.i.i125.br_mep_delete_parse.exit.thread_crit_edge ], [ -22, %if.then2.i.i128 ], [ -22, %do.body.i138.br_mep_delete_parse.exit.thread_crit_edge ], [ -22, %if.then4.i139 ], [ %call6.i.i132, %nla_parse_nested.exit.i134.br_mep_delete_parse.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tb.i121) #3
  br label %cleanup

br_mep_delete_parse.exit:                         ; preds = %if.end.i136
  %add.ptr.i.i16.i = getelementptr i8, ptr %62, i32 4
  %64 = ptrtoint ptr %add.ptr.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr.i.i16.i, align 4
  %call9.i = call i32 @br_cfm_mep_delete(ptr noundef %br.addr.0, i32 noundef %65, ptr noundef %extack) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tb.i121) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool18.not = icmp eq i32 %call9.i, 0
  br i1 %tobool18.not, label %br_mep_delete_parse.exit.if.end21_crit_edge, label %br_mep_delete_parse.exit.cleanup_crit_edge

br_mep_delete_parse.exit.cleanup_crit_edge:       ; preds = %br_mep_delete_parse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

br_mep_delete_parse.exit.if.end21_crit_edge:      ; preds = %br_mep_delete_parse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

if.end21:                                         ; preds = %br_mep_delete_parse.exit.if.end21_crit_edge, %if.end12.if.end21_crit_edge
  %arrayidx22 = getelementptr inbounds [17 x ptr], ptr %tb, i32 0, i32 3
  %66 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp eq ptr %67, null
  br i1 %tobool23.not, label %if.end21.if.end30_crit_edge, label %if.then24

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

if.then24:                                        ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tb.i142) #3
  %68 = getelementptr inbounds [5 x ptr], ptr %tb.i142, i32 0, i32 1
  %69 = getelementptr inbounds [5 x ptr], ptr %tb.i142, i32 0, i32 2
  %70 = getelementptr inbounds [5 x ptr], ptr %tb.i142, i32 0, i32 3
  %71 = getelementptr inbounds [5 x ptr], ptr %tb.i142, i32 0, i32 4
  %72 = call ptr @memset(ptr %tb.i142, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %config.i) #3
  %nla_type.i.i143 = getelementptr inbounds %struct.nlattr, ptr %67, i32 0, i32 1
  %73 = ptrtoint ptr %nla_type.i.i143 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %nla_type.i.i143, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %74)
  %tobool.not.i.i144 = icmp sgt i16 %74, -1
  br i1 %tobool.not.i.i144, label %do.body.i.i146, label %nla_parse_nested.exit.i155

do.body.i.i146:                                   ; preds = %if.then24
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #3
  %tobool1.not.i.i145 = icmp eq ptr %extack, null
  br i1 %tobool1.not.i.i145, label %do.body.i.i146.br_mep_config_parse.exit.thread_crit_edge, label %if.then2.i.i149

do.body.i.i146.br_mep_config_parse.exit.thread_crit_edge: ; preds = %do.body.i.i146
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_mep_config_parse.exit.thread

if.then2.i.i149:                                  ; preds = %do.body.i.i146
  call void @__sanitizer_cov_trace_pc() #5
  %75 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i.i147 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %76 = ptrtoint ptr %bad_attr.i.i147 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %67, ptr %bad_attr.i.i147, align 4
  %policy3.i.i148 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %77 = ptrtoint ptr %policy3.i.i148 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %policy3.i.i148, align 4
  br label %br_mep_config_parse.exit.thread

nla_parse_nested.exit.i155:                       ; preds = %if.then24
  %add.ptr.i.i.i150 = getelementptr i8, ptr %67, i32 4
  %78 = ptrtoint ptr %67 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %67, align 2
  %conv.i.i.i151 = zext i16 %79 to i32
  %sub.i.i.i152 = add nsw i32 %conv.i.i.i151, -4
  %call6.i.i153 = call i32 @__nla_parse(ptr noundef nonnull %tb.i142, i32 noundef 4, ptr noundef %add.ptr.i.i.i150, i32 noundef %sub.i.i.i152, ptr noundef nonnull @br_cfm_mep_config_policy, i32 noundef 31, ptr noundef %extack) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i153)
  %tobool.not.i154 = icmp eq i32 %call6.i.i153, 0
  br i1 %tobool.not.i154, label %if.end.i157, label %nla_parse_nested.exit.i155.br_mep_config_parse.exit.thread_crit_edge

nla_parse_nested.exit.i155.br_mep_config_parse.exit.thread_crit_edge: ; preds = %nla_parse_nested.exit.i155
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_mep_config_parse.exit.thread

if.end.i157:                                      ; preds = %nla_parse_nested.exit.i155
  %80 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %68, align 4
  %tobool1.not.i156 = icmp eq ptr %81, null
  br i1 %tobool1.not.i156, label %do.body.i159, label %if.end6.i162

do.body.i159:                                     ; preds = %if.end.i157
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mep_config_parse.__msg) #3
  %tobool3.not.i158 = icmp eq ptr %extack, null
  br i1 %tobool3.not.i158, label %do.body.i159.br_mep_config_parse.exit.thread_crit_edge, label %if.then4.i160

do.body.i159.br_mep_config_parse.exit.thread_crit_edge: ; preds = %do.body.i159
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_mep_config_parse.exit.thread

if.then4.i160:                                    ; preds = %do.body.i159
  call void @__sanitizer_cov_trace_pc() #5
  %82 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @br_mep_config_parse.__msg, ptr %extack, align 4
  br label %br_mep_config_parse.exit.thread

if.end6.i162:                                     ; preds = %if.end.i157
  %83 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %69, align 4
  %tobool8.not.i161 = icmp eq ptr %84, null
  br i1 %tobool8.not.i161, label %do.body10.i164, label %if.end18.i167

do.body10.i164:                                   ; preds = %if.end6.i162
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mep_config_parse.__msg.11) #3
  %tobool12.not.i163 = icmp eq ptr %extack, null
  br i1 %tobool12.not.i163, label %do.body10.i164.br_mep_config_parse.exit.thread_crit_edge, label %if.then13.i165

do.body10.i164.br_mep_config_parse.exit.thread_crit_edge: ; preds = %do.body10.i164
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_mep_config_parse.exit.thread

if.then13.i165:                                   ; preds = %do.body10.i164
  call void @__sanitizer_cov_trace_pc() #5
  %85 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @br_mep_config_parse.__msg.11, ptr %extack, align 4
  br label %br_mep_config_parse.exit.thread

if.end18.i167:                                    ; preds = %if.end6.i162
  %86 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %70, align 4
  %tobool20.not.i166 = icmp eq ptr %87, null
  br i1 %tobool20.not.i166, label %do.body22.i169, label %if.end30.i172

do.body22.i169:                                   ; preds = %if.end18.i167
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mep_config_parse.__msg.12) #3
  %tobool24.not.i168 = icmp eq ptr %extack, null
  br i1 %tobool24.not.i168, label %do.body22.i169.br_mep_config_parse.exit.thread_crit_edge, label %if.then25.i170

do.body22.i169.br_mep_config_parse.exit.thread_crit_edge: ; preds = %do.body22.i169
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_mep_config_parse.exit.thread

if.then25.i170:                                   ; preds = %do.body22.i169
  call void @__sanitizer_cov_trace_pc() #5
  %88 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @br_mep_config_parse.__msg.12, ptr %extack, align 4
  br label %br_mep_config_parse.exit.thread

if.end30.i172:                                    ; preds = %if.end18.i167
  %89 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %71, align 4
  %tobool32.not.i171 = icmp eq ptr %90, null
  br i1 %tobool32.not.i171, label %do.body34.i174, label %br_mep_config_parse.exit

do.body34.i174:                                   ; preds = %if.end30.i172
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mep_config_parse.__msg.13) #3
  %tobool36.not.i173 = icmp eq ptr %extack, null
  br i1 %tobool36.not.i173, label %do.body34.i174.br_mep_config_parse.exit.thread_crit_edge, label %if.then37.i175

do.body34.i174.br_mep_config_parse.exit.thread_crit_edge: ; preds = %do.body34.i174
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_mep_config_parse.exit.thread

if.then37.i175:                                   ; preds = %do.body34.i174
  call void @__sanitizer_cov_trace_pc() #5
  %91 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @br_mep_config_parse.__msg.13, ptr %extack, align 4
  br label %br_mep_config_parse.exit.thread

br_mep_config_parse.exit.thread:                  ; preds = %if.then37.i175, %do.body34.i174.br_mep_config_parse.exit.thread_crit_edge, %if.then25.i170, %do.body22.i169.br_mep_config_parse.exit.thread_crit_edge, %if.then13.i165, %do.body10.i164.br_mep_config_parse.exit.thread_crit_edge, %if.then4.i160, %do.body.i159.br_mep_config_parse.exit.thread_crit_edge, %nla_parse_nested.exit.i155.br_mep_config_parse.exit.thread_crit_edge, %if.then2.i.i149, %do.body.i.i146.br_mep_config_parse.exit.thread_crit_edge
  %retval.0.i181.ph = phi i32 [ -22, %do.body.i.i146.br_mep_config_parse.exit.thread_crit_edge ], [ -22, %if.then2.i.i149 ], [ -22, %do.body34.i174.br_mep_config_parse.exit.thread_crit_edge ], [ -22, %if.then37.i175 ], [ -22, %do.body22.i169.br_mep_config_parse.exit.thread_crit_edge ], [ -22, %if.then25.i170 ], [ -22, %do.body10.i164.br_mep_config_parse.exit.thread_crit_edge ], [ -22, %if.then13.i165 ], [ -22, %do.body.i159.br_mep_config_parse.exit.thread_crit_edge ], [ -22, %if.then4.i160 ], [ %call6.i.i153, %nla_parse_nested.exit.i155.br_mep_config_parse.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %config.i) #3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb.i142) #3
  br label %cleanup

br_mep_config_parse.exit:                         ; preds = %if.end30.i172
  %92 = call ptr @memset(ptr %config.i, i32 0, i32 16)
  %add.ptr.i.i65.i176 = getelementptr i8, ptr %81, i32 4
  %93 = ptrtoint ptr %add.ptr.i.i65.i176 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr.i.i65.i176, align 4
  %unicast_mac.i = getelementptr inbounds %struct.br_cfm_mep_config, ptr %config.i, i32 0, i32 2
  %call46.i = call i32 @nla_memcpy(ptr noundef %unicast_mac.i, ptr noundef nonnull %84, i32 noundef 6) #3
  %95 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %70, align 4
  %add.ptr.i.i66.i177 = getelementptr i8, ptr %96, i32 4
  %97 = ptrtoint ptr %add.ptr.i.i66.i177 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr.i.i66.i177, align 4
  %99 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %config.i, align 4
  %100 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %71, align 4
  %add.ptr.i.i67.i178 = getelementptr i8, ptr %101, i32 4
  %102 = ptrtoint ptr %add.ptr.i.i67.i178 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %add.ptr.i.i67.i178, align 4
  %mepid.i = getelementptr inbounds %struct.br_cfm_mep_config, ptr %config.i, i32 0, i32 1
  %104 = ptrtoint ptr %mepid.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %mepid.i, align 4
  %call51.i179 = call i32 @br_cfm_mep_config_set(ptr noundef %br.addr.0, i32 noundef %94, ptr noundef nonnull %config.i, ptr noundef %extack) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %config.i) #3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb.i142) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i179)
  %tobool27.not = icmp eq i32 %call51.i179, 0
  br i1 %tobool27.not, label %br_mep_config_parse.exit.if.end30_crit_edge, label %br_mep_config_parse.exit.cleanup_crit_edge

br_mep_config_parse.exit.cleanup_crit_edge:       ; preds = %br_mep_config_parse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

br_mep_config_parse.exit.if.end30_crit_edge:      ; preds = %br_mep_config_parse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

if.end30:                                         ; preds = %br_mep_config_parse.exit.if.end30_crit_edge, %if.end21.if.end30_crit_edge
  %arrayidx31 = getelementptr inbounds [17 x ptr], ptr %tb, i32 0, i32 4
  %105 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx31, align 4
  %tobool32.not = icmp eq ptr %106, null
  br i1 %tobool32.not, label %if.end30.if.end39_crit_edge, label %if.then33

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end39

if.then33:                                        ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tb.i182) #3
  %107 = getelementptr inbounds [5 x ptr], ptr %tb.i182, i32 0, i32 1
  %108 = getelementptr inbounds [5 x ptr], ptr %tb.i182, i32 0, i32 2
  %109 = getelementptr inbounds [5 x ptr], ptr %tb.i182, i32 0, i32 3
  %110 = getelementptr inbounds [5 x ptr], ptr %tb.i182, i32 0, i32 4
  %111 = call ptr @memset(ptr %tb.i182, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %config.i183) #3
  %nla_type.i.i184 = getelementptr inbounds %struct.nlattr, ptr %106, i32 0, i32 1
  %112 = ptrtoint ptr %nla_type.i.i184 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %nla_type.i.i184, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %113)
  %tobool.not.i.i185 = icmp sgt i16 %113, -1
  br i1 %tobool.not.i.i185, label %do.body.i.i187, label %nla_parse_nested.exit.i196

do.body.i.i187:                                   ; preds = %if.then33
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #3
  %tobool1.not.i.i186 = icmp eq ptr %extack, null
  br i1 %tobool1.not.i.i186, label %do.body.i.i187.br_cc_config_parse.exit.thread_crit_edge, label %if.then2.i.i190

do.body.i.i187.br_cc_config_parse.exit.thread_crit_edge: ; preds = %do.body.i.i187
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_cc_config_parse.exit.thread

if.then2.i.i190:                                  ; preds = %do.body.i.i187
  call void @__sanitizer_cov_trace_pc() #5
  %114 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i.i188 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %115 = ptrtoint ptr %bad_attr.i.i188 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %106, ptr %bad_attr.i.i188, align 4
  %policy3.i.i189 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %116 = ptrtoint ptr %policy3.i.i189 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %policy3.i.i189, align 4
  br label %br_cc_config_parse.exit.thread

nla_parse_nested.exit.i196:                       ; preds = %if.then33
  %add.ptr.i.i.i191 = getelementptr i8, ptr %106, i32 4
  %117 = ptrtoint ptr %106 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %106, align 2
  %conv.i.i.i192 = zext i16 %118 to i32
  %sub.i.i.i193 = add nsw i32 %conv.i.i.i192, -4
  %call6.i.i194 = call i32 @__nla_parse(ptr noundef nonnull %tb.i182, i32 noundef 4, ptr noundef %add.ptr.i.i.i191, i32 noundef %sub.i.i.i193, ptr noundef nonnull @br_cfm_cc_config_policy, i32 noundef 31, ptr noundef %extack) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i194)
  %tobool.not.i195 = icmp eq i32 %call6.i.i194, 0
  br i1 %tobool.not.i195, label %if.end.i198, label %nla_parse_nested.exit.i196.br_cc_config_parse.exit.thread_crit_edge

nla_parse_nested.exit.i196.br_cc_config_parse.exit.thread_crit_edge: ; preds = %nla_parse_nested.exit.i196
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_cc_config_parse.exit.thread

if.end.i198:                                      ; preds = %nla_parse_nested.exit.i196
  %119 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %107, align 4
  %tobool1.not.i197 = icmp eq ptr %120, null
  br i1 %tobool1.not.i197, label %do.body.i200, label %if.end6.i203

do.body.i200:                                     ; preds = %if.end.i198
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_cc_config_parse.__msg) #3
  %tobool3.not.i199 = icmp eq ptr %extack, null
  br i1 %tobool3.not.i199, label %do.body.i200.br_cc_config_parse.exit.thread_crit_edge, label %if.then4.i201

do.body.i200.br_cc_config_parse.exit.thread_crit_edge: ; preds = %do.body.i200
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_cc_config_parse.exit.thread

if.then4.i201:                                    ; preds = %do.body.i200
  call void @__sanitizer_cov_trace_pc() #5
  %121 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @br_cc_config_parse.__msg, ptr %extack, align 4
  br label %br_cc_config_parse.exit.thread

if.end6.i203:                                     ; preds = %if.end.i198
  %122 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %108, align 4
  %tobool8.not.i202 = icmp eq ptr %123, null
  br i1 %tobool8.not.i202, label %do.body10.i205, label %if.end18.i208

do.body10.i205:                                   ; preds = %if.end6.i203
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_cc_config_parse.__msg.14) #3
  %tobool12.not.i204 = icmp eq ptr %extack, null
  br i1 %tobool12.not.i204, label %do.body10.i205.br_cc_config_parse.exit.thread_crit_edge, label %if.then13.i206

do.body10.i205.br_cc_config_parse.exit.thread_crit_edge: ; preds = %do.body10.i205
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_cc_config_parse.exit.thread

if.then13.i206:                                   ; preds = %do.body10.i205
  call void @__sanitizer_cov_trace_pc() #5
  %124 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @br_cc_config_parse.__msg.14, ptr %extack, align 4
  br label %br_cc_config_parse.exit.thread

if.end18.i208:                                    ; preds = %if.end6.i203
  %125 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %109, align 4
  %tobool20.not.i207 = icmp eq ptr %126, null
  br i1 %tobool20.not.i207, label %do.body22.i210, label %if.end30.i213

do.body22.i210:                                   ; preds = %if.end18.i208
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_cc_config_parse.__msg.15) #3
  %tobool24.not.i209 = icmp eq ptr %extack, null
  br i1 %tobool24.not.i209, label %do.body22.i210.br_cc_config_parse.exit.thread_crit_edge, label %if.then25.i211

do.body22.i210.br_cc_config_parse.exit.thread_crit_edge: ; preds = %do.body22.i210
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_cc_config_parse.exit.thread

if.then25.i211:                                   ; preds = %do.body22.i210
  call void @__sanitizer_cov_trace_pc() #5
  %127 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @br_cc_config_parse.__msg.15, ptr %extack, align 4
  br label %br_cc_config_parse.exit.thread

if.end30.i213:                                    ; preds = %if.end18.i208
  %128 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %110, align 4
  %tobool32.not.i212 = icmp eq ptr %129, null
  br i1 %tobool32.not.i212, label %do.body34.i215, label %br_cc_config_parse.exit

do.body34.i215:                                   ; preds = %if.end30.i213
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_cc_config_parse.__msg.16) #3
  %tobool36.not.i214 = icmp eq ptr %extack, null
  br i1 %tobool36.not.i214, label %do.body34.i215.br_cc_config_parse.exit.thread_crit_edge, label %if.then37.i216

do.body34.i215.br_cc_config_parse.exit.thread_crit_edge: ; preds = %do.body34.i215
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_cc_config_parse.exit.thread

if.then37.i216:                                   ; preds = %do.body34.i215
  call void @__sanitizer_cov_trace_pc() #5
  %130 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @br_cc_config_parse.__msg.16, ptr %extack, align 4
  br label %br_cc_config_parse.exit.thread

br_cc_config_parse.exit.thread:                   ; preds = %if.then37.i216, %do.body34.i215.br_cc_config_parse.exit.thread_crit_edge, %if.then25.i211, %do.body22.i210.br_cc_config_parse.exit.thread_crit_edge, %if.then13.i206, %do.body10.i205.br_cc_config_parse.exit.thread_crit_edge, %if.then4.i201, %do.body.i200.br_cc_config_parse.exit.thread_crit_edge, %nla_parse_nested.exit.i196.br_cc_config_parse.exit.thread_crit_edge, %if.then2.i.i190, %do.body.i.i187.br_cc_config_parse.exit.thread_crit_edge
  %retval.0.i222.ph = phi i32 [ -22, %do.body.i.i187.br_cc_config_parse.exit.thread_crit_edge ], [ -22, %if.then2.i.i190 ], [ -22, %do.body34.i215.br_cc_config_parse.exit.thread_crit_edge ], [ -22, %if.then37.i216 ], [ -22, %do.body22.i210.br_cc_config_parse.exit.thread_crit_edge ], [ -22, %if.then25.i211 ], [ -22, %do.body10.i205.br_cc_config_parse.exit.thread_crit_edge ], [ -22, %if.then13.i206 ], [ -22, %do.body.i200.br_cc_config_parse.exit.thread_crit_edge ], [ -22, %if.then4.i201 ], [ %call6.i.i194, %nla_parse_nested.exit.i196.br_cc_config_parse.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %config.i183) #3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb.i182) #3
  br label %cleanup

br_cc_config_parse.exit:                          ; preds = %if.end30.i213
  %131 = call ptr @memset(ptr %config.i183, i32 0, i32 56)
  %add.ptr.i.i66.i217 = getelementptr i8, ptr %120, i32 4
  %132 = ptrtoint ptr %add.ptr.i.i66.i217 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %add.ptr.i.i66.i217, align 4
  %add.ptr.i.i67.i218 = getelementptr i8, ptr %123, i32 4
  %134 = ptrtoint ptr %add.ptr.i.i67.i218 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %add.ptr.i.i67.i218, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool47.i = icmp ne i32 %135, 0
  %enable.i = getelementptr inbounds %struct.br_cfm_cc_config, ptr %config.i183, i32 0, i32 2
  %frombool.i = zext i1 %tobool47.i to i8
  %136 = ptrtoint ptr %enable.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %frombool.i, ptr %enable.i, align 4
  %add.ptr.i.i68.i219 = getelementptr i8, ptr %126, i32 4
  %137 = ptrtoint ptr %add.ptr.i.i68.i219 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %add.ptr.i.i68.i219, align 4
  %exp_interval.i = getelementptr inbounds %struct.br_cfm_cc_config, ptr %config.i183, i32 0, i32 1
  %139 = ptrtoint ptr %exp_interval.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %exp_interval.i, align 4
  %call51.i220 = call i32 @nla_memcpy(ptr noundef nonnull %config.i183, ptr noundef nonnull %129, i32 noundef 48) #3
  %call52.i = call i32 @br_cfm_cc_config_set(ptr noundef %br.addr.0, i32 noundef %133, ptr noundef nonnull %config.i183, ptr noundef %extack) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %config.i183) #3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb.i182) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool36.not = icmp eq i32 %call52.i, 0
  br i1 %tobool36.not, label %br_cc_config_parse.exit.if.end39_crit_edge, label %br_cc_config_parse.exit.cleanup_crit_edge

br_cc_config_parse.exit.cleanup_crit_edge:        ; preds = %br_cc_config_parse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

br_cc_config_parse.exit.if.end39_crit_edge:       ; preds = %br_cc_config_parse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end39

if.end39:                                         ; preds = %br_cc_config_parse.exit.if.end39_crit_edge, %if.end30.if.end39_crit_edge
  %arrayidx40 = getelementptr inbounds [17 x ptr], ptr %tb, i32 0, i32 5
  %140 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx40, align 4
  %tobool41.not = icmp eq ptr %141, null
  br i1 %tobool41.not, label %if.end39.if.end48_crit_edge, label %if.then42

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48

if.then42:                                        ; preds = %if.end39
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb.i223) #3
  %142 = ptrtoint ptr %tb.i223 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb.i223, align 4, !annotation !93
  %143 = getelementptr inbounds [3 x ptr], ptr %tb.i223, i32 0, i32 1
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr inttoptr (i32 -1 to ptr), ptr %143, align 4, !annotation !93
  %145 = getelementptr inbounds [3 x ptr], ptr %tb.i223, i32 0, i32 2
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr inttoptr (i32 -1 to ptr), ptr %145, align 4, !annotation !93
  %nla_type.i.i224 = getelementptr inbounds %struct.nlattr, ptr %141, i32 0, i32 1
  %147 = ptrtoint ptr %nla_type.i.i224 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %nla_type.i.i224, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %148)
  %tobool.not.i.i225 = icmp sgt i16 %148, -1
  br i1 %tobool.not.i.i225, label %do.body.i.i227, label %nla_parse_nested.exit.i236

do.body.i.i227:                                   ; preds = %if.then42
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #3
  %tobool1.not.i.i226 = icmp eq ptr %extack, null
  br i1 %tobool1.not.i.i226, label %do.body.i.i227.br_cc_peer_mep_add_parse.exit.thread_crit_edge, label %if.then2.i.i230

do.body.i.i227.br_cc_peer_mep_add_parse.exit.thread_crit_edge: ; preds = %do.body.i.i227
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_cc_peer_mep_add_parse.exit.thread

if.then2.i.i230:                                  ; preds = %do.body.i.i227
  call void @__sanitizer_cov_trace_pc() #5
  %149 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i.i228 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %150 = ptrtoint ptr %bad_attr.i.i228 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %141, ptr %bad_attr.i.i228, align 4
  %policy3.i.i229 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %151 = ptrtoint ptr %policy3.i.i229 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr null, ptr %policy3.i.i229, align 4
  br label %br_cc_peer_mep_add_parse.exit.thread

nla_parse_nested.exit.i236:                       ; preds = %if.then42
  %add.ptr.i.i.i231 = getelementptr i8, ptr %141, i32 4
  %152 = ptrtoint ptr %141 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %141, align 2
  %conv.i.i.i232 = zext i16 %153 to i32
  %sub.i.i.i233 = add nsw i32 %conv.i.i.i232, -4
  %call6.i.i234 = call i32 @__nla_parse(ptr noundef nonnull %tb.i223, i32 noundef 2, ptr noundef %add.ptr.i.i.i231, i32 noundef %sub.i.i.i233, ptr noundef nonnull @br_cfm_cc_peer_mep_policy, i32 noundef 31, ptr noundef %extack) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i234)
  %tobool.not.i235 = icmp eq i32 %call6.i.i234, 0
  br i1 %tobool.not.i235, label %if.end.i238, label %nla_parse_nested.exit.i236.br_cc_peer_mep_add_parse.exit.thread_crit_edge

nla_parse_nested.exit.i236.br_cc_peer_mep_add_parse.exit.thread_crit_edge: ; preds = %nla_parse_nested.exit.i236
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_cc_peer_mep_add_parse.exit.thread

if.end.i238:                                      ; preds = %nla_parse_nested.exit.i236
  %154 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %143, align 4
  %tobool1.not.i237 = icmp eq ptr %155, null
  br i1 %tobool1.not.i237, label %do.body.i240, label %if.end6.i243

do.body.i240:                                     ; preds = %if.end.i238
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_cc_peer_mep_add_parse.__msg) #3
  %tobool3.not.i239 = icmp eq ptr %extack, null
  br i1 %tobool3.not.i239, label %do.body.i240.br_cc_peer_mep_add_parse.exit.thread_crit_edge, label %if.then4.i241

do.body.i240.br_cc_peer_mep_add_parse.exit.thread_crit_edge: ; preds = %do.body.i240
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_cc_peer_mep_add_parse.exit.thread

if.then4.i241:                                    ; preds = %do.body.i240
  call void @__sanitizer_cov_trace_pc() #5
  %156 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr @br_cc_peer_mep_add_parse.__msg, ptr %extack, align 4
  br label %br_cc_peer_mep_add_parse.exit.thread

if.end6.i243:                                     ; preds = %if.end.i238
  %157 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %145, align 4
  %tobool8.not.i242 = icmp eq ptr %158, null
  br i1 %tobool8.not.i242, label %do.body10.i245, label %br_cc_peer_mep_add_parse.exit

do.body10.i245:                                   ; preds = %if.end6.i243
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_cc_peer_mep_add_parse.__msg.17) #3
  %tobool12.not.i244 = icmp eq ptr %extack, null
  br i1 %tobool12.not.i244, label %do.body10.i245.br_cc_peer_mep_add_parse.exit.thread_crit_edge, label %if.then13.i246

do.body10.i245.br_cc_peer_mep_add_parse.exit.thread_crit_edge: ; preds = %do.body10.i245
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_cc_peer_mep_add_parse.exit.thread

if.then13.i246:                                   ; preds = %do.body10.i245
  call void @__sanitizer_cov_trace_pc() #5
  %159 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr @br_cc_peer_mep_add_parse.__msg.17, ptr %extack, align 4
  br label %br_cc_peer_mep_add_parse.exit.thread

br_cc_peer_mep_add_parse.exit.thread:             ; preds = %if.then13.i246, %do.body10.i245.br_cc_peer_mep_add_parse.exit.thread_crit_edge, %if.then4.i241, %do.body.i240.br_cc_peer_mep_add_parse.exit.thread_crit_edge, %nla_parse_nested.exit.i236.br_cc_peer_mep_add_parse.exit.thread_crit_edge, %if.then2.i.i230, %do.body.i.i227.br_cc_peer_mep_add_parse.exit.thread_crit_edge
  %retval.0.i248.ph = phi i32 [ -22, %do.body.i.i227.br_cc_peer_mep_add_parse.exit.thread_crit_edge ], [ -22, %if.then2.i.i230 ], [ -22, %do.body10.i245.br_cc_peer_mep_add_parse.exit.thread_crit_edge ], [ -22, %if.then13.i246 ], [ -22, %do.body.i240.br_cc_peer_mep_add_parse.exit.thread_crit_edge ], [ -22, %if.then4.i241 ], [ %call6.i.i234, %nla_parse_nested.exit.i236.br_cc_peer_mep_add_parse.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i223) #3
  br label %cleanup

br_cc_peer_mep_add_parse.exit:                    ; preds = %if.end6.i243
  %add.ptr.i.i33.i = getelementptr i8, ptr %155, i32 4
  %160 = ptrtoint ptr %add.ptr.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %add.ptr.i.i33.i, align 4
  %add.ptr.i.i34.i = getelementptr i8, ptr %158, i32 4
  %162 = ptrtoint ptr %add.ptr.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %add.ptr.i.i34.i, align 4
  %call23.i = call i32 @br_cfm_cc_peer_mep_add(ptr noundef %br.addr.0, i32 noundef %161, i32 noundef %163, ptr noundef %extack) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i223) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool45.not = icmp eq i32 %call23.i, 0
  br i1 %tobool45.not, label %br_cc_peer_mep_add_parse.exit.if.end48_crit_edge, label %br_cc_peer_mep_add_parse.exit.cleanup_crit_edge

br_cc_peer_mep_add_parse.exit.cleanup_crit_edge:  ; preds = %br_cc_peer_mep_add_parse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

br_cc_peer_mep_add_parse.exit.if.end48_crit_edge: ; preds = %br_cc_peer_mep_add_parse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48

if.end48:                                         ; preds = %br_cc_peer_mep_add_parse.exit.if.end48_crit_edge, %if.end39.if.end48_crit_edge
  %arrayidx49 = getelementptr inbounds [17 x ptr], ptr %tb, i32 0, i32 6
  %164 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx49, align 4
  %tobool50.not = icmp eq ptr %165, null
  br i1 %tobool50.not, label %if.end48.if.end57_crit_edge, label %if.then51

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57

if.then51:                                        ; preds = %if.end48
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb.i249) #3
  %166 = ptrtoint ptr %tb.i249 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb.i249, align 4, !annotation !93
  %167 = getelementptr inbounds [3 x ptr], ptr %tb.i249, i32 0, i32 1
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr inttoptr (i32 -1 to ptr), ptr %167, align 4, !annotation !93
  %169 = getelementptr inbounds [3 x ptr], ptr %tb.i249, i32 0, i32 2
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr inttoptr (i32 -1 to ptr), ptr %169, align 4, !annotation !93
  %nla_type.i.i250 = getelementptr inbounds %struct.nlattr, ptr %165, i32 0, i32 1
  %171 = ptrtoint ptr %nla_type.i.i250 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %nla_type.i.i250, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %172)
  %tobool.not.i.i251 = icmp sgt i16 %172, -1
  br i1 %tobool.not.i.i251, label %do.body.i.i253, label %nla_parse_nested.exit.i262

do.body.i.i253:                                   ; preds = %if.then51
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #3
  %tobool1.not.i.i252 = icmp eq ptr %extack, null
  br i1 %tobool1.not.i.i252, label %do.body.i.i253.br_cc_peer_mep_remove_parse.exit.thread_crit_edge, label %if.then2.i.i256

do.body.i.i253.br_cc_peer_mep_remove_parse.exit.thread_crit_edge: ; preds = %do.body.i.i253
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_cc_peer_mep_remove_parse.exit.thread

if.then2.i.i256:                                  ; preds = %do.body.i.i253
  call void @__sanitizer_cov_trace_pc() #5
  %173 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i.i254 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %174 = ptrtoint ptr %bad_attr.i.i254 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %165, ptr %bad_attr.i.i254, align 4
  %policy3.i.i255 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %175 = ptrtoint ptr %policy3.i.i255 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %policy3.i.i255, align 4
  br label %br_cc_peer_mep_remove_parse.exit.thread

nla_parse_nested.exit.i262:                       ; preds = %if.then51
  %add.ptr.i.i.i257 = getelementptr i8, ptr %165, i32 4
  %176 = ptrtoint ptr %165 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %165, align 2
  %conv.i.i.i258 = zext i16 %177 to i32
  %sub.i.i.i259 = add nsw i32 %conv.i.i.i258, -4
  %call6.i.i260 = call i32 @__nla_parse(ptr noundef nonnull %tb.i249, i32 noundef 2, ptr noundef %add.ptr.i.i.i257, i32 noundef %sub.i.i.i259, ptr noundef nonnull @br_cfm_cc_peer_mep_policy, i32 noundef 31, ptr noundef %extack) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i260)
  %tobool.not.i261 = icmp eq i32 %call6.i.i260, 0
  br i1 %tobool.not.i261, label %if.end.i264, label %nla_parse_nested.exit.i262.br_cc_peer_mep_remove_parse.exit.thread_crit_edge

nla_parse_nested.exit.i262.br_cc_peer_mep_remove_parse.exit.thread_crit_edge: ; preds = %nla_parse_nested.exit.i262
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_cc_peer_mep_remove_parse.exit.thread

if.end.i264:                                      ; preds = %nla_parse_nested.exit.i262
  %178 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %167, align 4
  %tobool1.not.i263 = icmp eq ptr %179, null
  br i1 %tobool1.not.i263, label %do.body.i266, label %if.end6.i269

do.body.i266:                                     ; preds = %if.end.i264
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_cc_peer_mep_remove_parse.__msg) #3
  %tobool3.not.i265 = icmp eq ptr %extack, null
  br i1 %tobool3.not.i265, label %do.body.i266.br_cc_peer_mep_remove_parse.exit.thread_crit_edge, label %if.then4.i267

do.body.i266.br_cc_peer_mep_remove_parse.exit.thread_crit_edge: ; preds = %do.body.i266
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_cc_peer_mep_remove_parse.exit.thread

if.then4.i267:                                    ; preds = %do.body.i266
  call void @__sanitizer_cov_trace_pc() #5
  %180 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr @br_cc_peer_mep_remove_parse.__msg, ptr %extack, align 4
  br label %br_cc_peer_mep_remove_parse.exit.thread

if.end6.i269:                                     ; preds = %if.end.i264
  %181 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %169, align 4
  %tobool8.not.i268 = icmp eq ptr %182, null
  br i1 %tobool8.not.i268, label %do.body10.i271, label %br_cc_peer_mep_remove_parse.exit

do.body10.i271:                                   ; preds = %if.end6.i269
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_cc_peer_mep_remove_parse.__msg.18) #3
  %tobool12.not.i270 = icmp eq ptr %extack, null
  br i1 %tobool12.not.i270, label %do.body10.i271.br_cc_peer_mep_remove_parse.exit.thread_crit_edge, label %if.then13.i272

do.body10.i271.br_cc_peer_mep_remove_parse.exit.thread_crit_edge: ; preds = %do.body10.i271
  call void @__sanitizer_cov_trace_pc() #5
  br label %br_cc_peer_mep_remove_parse.exit.thread

if.then13.i272:                                   ; preds = %do.body10.i271
  call void @__sanitizer_cov_trace_pc() #5
  %183 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr @br_cc_peer_mep_remove_parse.__msg.18, ptr %extack, align 4
  br label %br_cc_peer_mep_remove_parse.exit.thread

br_cc_peer_mep_remove_parse.exit.thread:          ; preds = %if.then13.i272, %do.body10.i271.br_cc_peer_mep_remove_parse.exit.thread_crit_edge, %if.then4.i267, %do.body.i266.br_cc_peer_mep_remove_parse.exit.thread_crit_edge, %nla_parse_nested.exit.i262.br_cc_peer_mep_remove_parse.exit.thread_crit_edge, %if.then2.i.i256, %do.body.i.i253.br_cc_peer_mep_remove_parse.exit.thread_crit_edge
  %retval.0.i277.ph = phi i32 [ -22, %do.body.i.i253.br_cc_peer_mep_remove_parse.exit.thread_crit_edge ], [ -22, %if.then2.i.i256 ], [ -22, %do.body10.i271.br_cc_peer_mep_remove_parse.exit.thread_crit_edge ], [ -22, %if.then13.i272 ], [ -22, %do.body.i266.br_cc_peer_mep_remove_parse.exit.thread_crit_edge ], [ -22, %if.then4.i267 ], [ %call6.i.i260, %nla_parse_nested.exit.i262.br_cc_peer_mep_remove_parse.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i249) #3
  br label %cleanup

br_cc_peer_mep_remove_parse.exit:                 ; preds = %if.end6.i269
  %add.ptr.i.i33.i273 = getelementptr i8, ptr %179, i32 4
  %184 = ptrtoint ptr %add.ptr.i.i33.i273 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %add.ptr.i.i33.i273, align 4
  %add.ptr.i.i34.i274 = getelementptr i8, ptr %182, i32 4
  %186 = ptrtoint ptr %add.ptr.i.i34.i274 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %add.ptr.i.i34.i274, align 4
  %call23.i275 = call i32 @br_cfm_cc_peer_mep_remove(ptr noundef %br.addr.0, i32 noundef %185, i32 noundef %187, ptr noundef %extack) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i249) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i275)
  %tobool54.not = icmp eq i32 %call23.i275, 0
  br i1 %tobool54.not, label %br_cc_peer_mep_remove_parse.exit.if.end57_crit_edge, label %br_cc_peer_mep_remove_parse.exit.cleanup_crit_edge

br_cc_peer_mep_remove_parse.exit.cleanup_crit_edge: ; preds = %br_cc_peer_mep_remove_parse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

br_cc_peer_mep_remove_parse.exit.if.end57_crit_edge: ; preds = %br_cc_peer_mep_remove_parse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57

if.end57:                                         ; preds = %br_cc_peer_mep_remove_parse.exit.if.end57_crit_edge, %if.end48.if.end57_crit_edge
  %arrayidx58 = getelementptr inbounds [17 x ptr], ptr %tb, i32 0, i32 7
  %188 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %arrayidx58, align 4
  %tobool59.not = icmp eq ptr %189, null
  br i1 %tobool59.not, label %if.end57.if.end66_crit_edge, label %if.then60

if.end57.if.end66_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end66

if.then60:                                        ; preds = %if.end57
  %call62 = call fastcc i32 @br_cc_rdi_parse(ptr noundef %br.addr.0, ptr noundef nonnull %189, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then60.if.end66_crit_edge, label %if.then60.cleanup_crit_edge

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then60.if.end66_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end66

if.end66:                                         ; preds = %if.then60.if.end66_crit_edge, %if.end57.if.end66_crit_edge
  %arrayidx67 = getelementptr inbounds [17 x ptr], ptr %tb, i32 0, i32 8
  %190 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx67, align 4
  %tobool68.not = icmp eq ptr %191, null
  br i1 %tobool68.not, label %if.end66.if.end75_crit_edge, label %if.then69

if.end66.if.end75_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end75

if.then69:                                        ; preds = %if.end66
  %call71 = call fastcc i32 @br_cc_ccm_tx_parse(ptr noundef %br.addr.0, ptr noundef nonnull %191, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then69.if.end75_crit_edge, label %if.then69.cleanup_crit_edge

if.then69.cleanup_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then69.if.end75_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end75

if.end75:                                         ; preds = %if.then69.if.end75_crit_edge, %if.end66.if.end75_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.then69.cleanup_crit_edge, %if.then60.cleanup_crit_edge, %br_cc_peer_mep_remove_parse.exit.cleanup_crit_edge, %br_cc_peer_mep_remove_parse.exit.thread, %br_cc_peer_mep_add_parse.exit.cleanup_crit_edge, %br_cc_peer_mep_add_parse.exit.thread, %br_cc_config_parse.exit.cleanup_crit_edge, %br_cc_config_parse.exit.thread, %br_mep_config_parse.exit.cleanup_crit_edge, %br_mep_config_parse.exit.thread, %br_mep_delete_parse.exit.cleanup_crit_edge, %br_mep_delete_parse.exit.thread, %br_mep_create_parse.exit.cleanup_crit_edge, %br_mep_create_parse.exit.thread, %nla_parse_nested.exit.cleanup_crit_edge, %if.then2.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end75 ], [ %call6.i, %nla_parse_nested.exit.cleanup_crit_edge ], [ %call51.i, %br_mep_create_parse.exit.cleanup_crit_edge ], [ %call9.i, %br_mep_delete_parse.exit.cleanup_crit_edge ], [ %call51.i179, %br_mep_config_parse.exit.cleanup_crit_edge ], [ %call52.i, %br_cc_config_parse.exit.cleanup_crit_edge ], [ %call23.i, %br_cc_peer_mep_add_parse.exit.cleanup_crit_edge ], [ %call23.i275, %br_cc_peer_mep_remove_parse.exit.cleanup_crit_edge ], [ %call62, %if.then60.cleanup_crit_edge ], [ %call71, %if.then69.cleanup_crit_edge ], [ %retval.0.i120.ph, %br_mep_create_parse.exit.thread ], [ %retval.0.i141.ph, %br_mep_delete_parse.exit.thread ], [ %retval.0.i181.ph, %br_mep_config_parse.exit.thread ], [ %retval.0.i222.ph, %br_cc_config_parse.exit.thread ], [ %retval.0.i248.ph, %br_cc_peer_mep_add_parse.exit.thread ], [ %retval.0.i277.ph, %br_cc_peer_mep_remove_parse.exit.thread ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tb) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_cc_rdi_parse(ptr noundef %br, ptr noundef %attr, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %tb = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb) #3
  %0 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb, align 4, !annotation !93
  %1 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !93
  %3 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !93
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %6)
  %tobool.not.i = icmp sgt i16 %6, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #3
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %if.then2.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %8 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %attr, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %9 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup

nla_parse_nested.exit:                            ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %attr, i32 4
  %10 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %attr, align 2
  %conv.i.i = zext i16 %11 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 2, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @br_cfm_cc_rdi_policy, i32 noundef 31, ptr noundef %extack) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not = icmp eq i32 %call6.i, 0
  br i1 %tobool.not, label %if.end, label %nla_parse_nested.exit.cleanup_crit_edge

nla_parse_nested.exit.cleanup_crit_edge:          ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %nla_parse_nested.exit
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %13, null
  br i1 %tobool1.not, label %do.body, label %if.end6

do.body:                                          ; preds = %if.end
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_cc_rdi_parse.__msg) #3
  %tobool3.not = icmp eq ptr %extack, null
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @br_cc_rdi_parse.__msg, ptr %extack, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %tobool8.not = icmp eq ptr %16, null
  br i1 %tobool8.not, label %do.body10, label %if.end18

do.body10:                                        ; preds = %if.end6
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_cc_rdi_parse.__msg.19) #3
  %tobool12.not = icmp eq ptr %extack, null
  br i1 %tobool12.not, label %do.body10.cleanup_crit_edge, label %if.then13

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then13:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @br_cc_rdi_parse.__msg.19, ptr %extack, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i34 = getelementptr i8, ptr %13, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i34, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %16, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool23 = icmp ne i32 %21, 0
  %call24 = call i32 @br_cfm_cc_rdi_set(ptr noundef %br, i32 noundef %19, i1 noundef zeroext %tobool23, ptr noundef %extack) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then13, %do.body10.cleanup_crit_edge, %if.then4, %do.body.cleanup_crit_edge, %nla_parse_nested.exit.cleanup_crit_edge, %if.then2.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.end18 ], [ %call6.i, %nla_parse_nested.exit.cleanup_crit_edge ], [ -22, %if.then4 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then13 ], [ -22, %do.body10.cleanup_crit_edge ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_cc_ccm_tx_parse(ptr noundef %br, ptr noundef %attr, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %tb = alloca [9 x ptr], align 4
  %tx_info = alloca %struct.br_cfm_cc_ccm_tx_info, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tb) #3
  %0 = call ptr @memset(ptr %tb, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tx_info) #3
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %attr, i32 0, i32 1
  %1 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %2)
  %tobool.not.i = icmp sgt i16 %2, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #3
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %if.then2.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %4 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %attr, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %5 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup

nla_parse_nested.exit:                            ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %attr, i32 4
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %attr, align 2
  %conv.i.i = zext i16 %7 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 8, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @br_cfm_cc_ccm_tx_policy, i32 noundef 31, ptr noundef %extack) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not = icmp eq i32 %call6.i, 0
  br i1 %tobool.not, label %if.end, label %nla_parse_nested.exit.cleanup_crit_edge

nla_parse_nested.exit.cleanup_crit_edge:          ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %nla_parse_nested.exit
  %arrayidx = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %do.body, label %if.end6

do.body:                                          ; preds = %if.end
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_cc_ccm_tx_parse.__msg) #3
  %tobool3.not = icmp eq ptr %extack, null
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @br_cc_ccm_tx_parse.__msg, ptr %extack, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %arrayidx7 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %do.body10, label %if.end18

do.body10:                                        ; preds = %if.end6
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_cc_ccm_tx_parse.__msg.20) #3
  %tobool12.not = icmp eq ptr %extack, null
  br i1 %tobool12.not, label %do.body10.cleanup_crit_edge, label %if.then13

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then13:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @br_cc_ccm_tx_parse.__msg.20, ptr %extack, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  %arrayidx19 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx19, align 4
  %tobool20.not = icmp eq ptr %15, null
  br i1 %tobool20.not, label %do.body22, label %if.end30

do.body22:                                        ; preds = %if.end18
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_cc_ccm_tx_parse.__msg.21) #3
  %tobool24.not = icmp eq ptr %extack, null
  br i1 %tobool24.not, label %do.body22.cleanup_crit_edge, label %if.then25

do.body22.cleanup_crit_edge:                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then25:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @br_cc_ccm_tx_parse.__msg.21, ptr %extack, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.end18
  %arrayidx31 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 4
  %17 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx31, align 4
  %tobool32.not = icmp eq ptr %18, null
  br i1 %tobool32.not, label %do.body34, label %if.end42

do.body34:                                        ; preds = %if.end30
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_cc_ccm_tx_parse.__msg.22) #3
  %tobool36.not = icmp eq ptr %extack, null
  br i1 %tobool36.not, label %do.body34.cleanup_crit_edge, label %if.then37

do.body34.cleanup_crit_edge:                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then37:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @br_cc_ccm_tx_parse.__msg.22, ptr %extack, align 4
  br label %cleanup

if.end42:                                         ; preds = %if.end30
  %arrayidx43 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 5
  %20 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx43, align 4
  %tobool44.not = icmp eq ptr %21, null
  br i1 %tobool44.not, label %do.body46, label %if.end54

do.body46:                                        ; preds = %if.end42
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_cc_ccm_tx_parse.__msg.23) #3
  %tobool48.not = icmp eq ptr %extack, null
  br i1 %tobool48.not, label %do.body46.cleanup_crit_edge, label %if.then49

do.body46.cleanup_crit_edge:                      ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then49:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @br_cc_ccm_tx_parse.__msg.23, ptr %extack, align 4
  br label %cleanup

if.end54:                                         ; preds = %if.end42
  %arrayidx55 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 6
  %23 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx55, align 4
  %tobool56.not = icmp eq ptr %24, null
  br i1 %tobool56.not, label %do.body58, label %if.end66

do.body58:                                        ; preds = %if.end54
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_cc_ccm_tx_parse.__msg.24) #3
  %tobool60.not = icmp eq ptr %extack, null
  br i1 %tobool60.not, label %do.body58.cleanup_crit_edge, label %if.then61

do.body58.cleanup_crit_edge:                      ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then61:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #5
  %25 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @br_cc_ccm_tx_parse.__msg.24, ptr %extack, align 4
  br label %cleanup

if.end66:                                         ; preds = %if.end54
  %arrayidx67 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 7
  %26 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx67, align 4
  %tobool68.not = icmp eq ptr %27, null
  br i1 %tobool68.not, label %do.body70, label %if.end78

do.body70:                                        ; preds = %if.end66
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_cc_ccm_tx_parse.__msg.25) #3
  %tobool72.not = icmp eq ptr %extack, null
  br i1 %tobool72.not, label %do.body70.cleanup_crit_edge, label %if.then73

do.body70.cleanup_crit_edge:                      ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then73:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @br_cc_ccm_tx_parse.__msg.25, ptr %extack, align 4
  br label %cleanup

if.end78:                                         ; preds = %if.end66
  %arrayidx79 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 8
  %29 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx79, align 4
  %tobool80.not = icmp eq ptr %30, null
  br i1 %tobool80.not, label %do.body82, label %if.end90

do.body82:                                        ; preds = %if.end78
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_cc_ccm_tx_parse.__msg.26) #3
  %tobool84.not = icmp eq ptr %extack, null
  br i1 %tobool84.not, label %do.body82.cleanup_crit_edge, label %if.then85

do.body82.cleanup_crit_edge:                      ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then85:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #5
  %31 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @br_cc_ccm_tx_parse.__msg.26, ptr %extack, align 4
  br label %cleanup

if.end90:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #5
  %32 = call ptr @memset(ptr %tx_info, i32 0, i32 20)
  %add.ptr.i.i134 = getelementptr i8, ptr %9, i32 4
  %33 = ptrtoint ptr %add.ptr.i.i134 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i134, align 4
  %call94 = call i32 @nla_memcpy(ptr noundef nonnull %tx_info, ptr noundef nonnull %12, i32 noundef 6) #3
  %35 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx19, align 4
  %add.ptr.i.i135 = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i135 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool97 = icmp ne i32 %38, 0
  %seq_no_update = getelementptr inbounds %struct.br_cfm_cc_ccm_tx_info, ptr %tx_info, i32 0, i32 2
  %frombool = zext i1 %tobool97 to i8
  %39 = ptrtoint ptr %seq_no_update to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %frombool, ptr %seq_no_update, align 4
  %40 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx31, align 4
  %add.ptr.i.i136 = getelementptr i8, ptr %41, i32 4
  %42 = ptrtoint ptr %add.ptr.i.i136 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i.i136, align 4
  %period = getelementptr inbounds %struct.br_cfm_cc_ccm_tx_info, ptr %tx_info, i32 0, i32 1
  %44 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %period, align 4
  %45 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx43, align 4
  %add.ptr.i.i137 = getelementptr i8, ptr %46, i32 4
  %47 = ptrtoint ptr %add.ptr.i.i137 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i.i137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool102 = icmp ne i32 %48, 0
  %if_tlv = getelementptr inbounds %struct.br_cfm_cc_ccm_tx_info, ptr %tx_info, i32 0, i32 3
  %frombool103 = zext i1 %tobool102 to i8
  %49 = ptrtoint ptr %if_tlv to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %frombool103, ptr %if_tlv, align 1
  %50 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx55, align 4
  %add.ptr.i.i138 = getelementptr i8, ptr %51, i32 4
  %52 = ptrtoint ptr %add.ptr.i.i138 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %add.ptr.i.i138, align 1
  %if_tlv_value = getelementptr inbounds %struct.br_cfm_cc_ccm_tx_info, ptr %tx_info, i32 0, i32 4
  %54 = ptrtoint ptr %if_tlv_value to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %if_tlv_value, align 2
  %55 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx67, align 4
  %add.ptr.i.i139 = getelementptr i8, ptr %56, i32 4
  %57 = ptrtoint ptr %add.ptr.i.i139 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr.i.i139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool108 = icmp ne i32 %58, 0
  %port_tlv = getelementptr inbounds %struct.br_cfm_cc_ccm_tx_info, ptr %tx_info, i32 0, i32 5
  %frombool109 = zext i1 %tobool108 to i8
  %59 = ptrtoint ptr %port_tlv to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %frombool109, ptr %port_tlv, align 1
  %60 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx79, align 4
  %add.ptr.i.i140 = getelementptr i8, ptr %61, i32 4
  %62 = ptrtoint ptr %add.ptr.i.i140 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %add.ptr.i.i140, align 1
  %port_tlv_value = getelementptr inbounds %struct.br_cfm_cc_ccm_tx_info, ptr %tx_info, i32 0, i32 6
  %64 = ptrtoint ptr %port_tlv_value to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %port_tlv_value, align 4
  %call112 = call i32 @br_cfm_cc_ccm_tx(ptr noundef %br, i32 noundef %34, ptr noundef nonnull %tx_info, ptr noundef %extack) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %if.then85, %do.body82.cleanup_crit_edge, %if.then73, %do.body70.cleanup_crit_edge, %if.then61, %do.body58.cleanup_crit_edge, %if.then49, %do.body46.cleanup_crit_edge, %if.then37, %do.body34.cleanup_crit_edge, %if.then25, %do.body22.cleanup_crit_edge, %if.then13, %do.body10.cleanup_crit_edge, %if.then4, %do.body.cleanup_crit_edge, %nla_parse_nested.exit.cleanup_crit_edge, %if.then2.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call112, %if.end90 ], [ %call6.i, %nla_parse_nested.exit.cleanup_crit_edge ], [ -22, %if.then4 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then13 ], [ -22, %do.body10.cleanup_crit_edge ], [ -22, %if.then25 ], [ -22, %do.body22.cleanup_crit_edge ], [ -22, %if.then37 ], [ -22, %do.body34.cleanup_crit_edge ], [ -22, %if.then49 ], [ -22, %do.body46.cleanup_crit_edge ], [ -22, %if.then61 ], [ -22, %do.body58.cleanup_crit_edge ], [ -22, %if.then73 ], [ -22, %do.body70.cleanup_crit_edge ], [ -22, %if.then85 ], [ -22, %do.body82.cleanup_crit_edge ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tx_info) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tb) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_cfm_config_fill_info(ptr noundef %skb, ptr noundef %br) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i402 = alloca i32, align 4
  %tmp.i400 = alloca i32, align 4
  %tmp.i389 = alloca i8, align 1
  %tmp.i387 = alloca i32, align 4
  %tmp.i385 = alloca i8, align 1
  %tmp.i383 = alloca i32, align 4
  %tmp.i381 = alloca i32, align 4
  %tmp.i379 = alloca i32, align 4
  %tmp.i377 = alloca i32, align 4
  %tmp.i366 = alloca i32, align 4
  %tmp.i364 = alloca i32, align 4
  %tmp.i353 = alloca i32, align 4
  %tmp.i351 = alloca i32, align 4
  %tmp.i349 = alloca i32, align 4
  %tmp.i338 = alloca i32, align 4
  %tmp.i336 = alloca i32, align 4
  %tmp.i334 = alloca i32, align 4
  %tmp.i328 = alloca i32, align 4
  %tmp.i326 = alloca i32, align 4
  %tmp.i324 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b320 = load i1, ptr @br_cfm_config_fill_info.__warned, align 1
  br i1 %.b320, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @br_cfm_config_fill_info.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 461, ptr noundef nonnull @.str.1) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %mep_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 48
  %0 = ptrtoint ptr %mep_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %mep.0422 = load volatile ptr, ptr %mep_list, align 4
  %tobool12.not423 = icmp eq ptr %mep.0422, null
  br i1 %tobool12.not423, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %for.body

for.cond.loopexit:                                ; preds = %if.end198.for.cond.loopexit_crit_edge, %do.end165.for.cond.loopexit_crit_edge
  %1 = ptrtoint ptr %mep.0424 to i32
  call void @__asan_load4_noabort(i32 %1)
  %mep.0 = load volatile ptr, ptr %mep.0424, align 4
  %tobool12.not = icmp eq ptr %mep.0, null
  br i1 %tobool12.not, label %for.cond.loopexit.cleanup_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.cond.loopexit.cleanup_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %mep.0424 = phi ptr [ %mep.0422, %for.body.lr.ph ], [ %mep.0, %for.cond.loopexit.for.body_crit_edge ]
  %2 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32777, i32 noundef 0, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool14.not410 = icmp eq ptr %3, null
  %tobool14.not = select i1 %cmp.i.i, i1 true, i1 %tobool14.not410
  br i1 %tobool14.not, label %for.body.cleanup_crit_edge, label %if.end16

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end16:                                         ; preds = %for.body
  %instance = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0424, i32 0, i32 1
  %4 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %instance, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #3
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.if.then.i.i_crit_edge

if.end16.if.then.i.i_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end20:                                         ; preds = %if.end16
  %create = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0424, i32 0, i32 2
  %7 = ptrtoint ptr %create to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %create, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i324) #3
  %9 = ptrtoint ptr %tmp.i324 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i324, align 4
  %call.i325 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i324) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i324) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i325)
  %tobool22.not = icmp eq i32 %call.i325, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.if.then.i.i_crit_edge

if.end20.if.then.i.i_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end24:                                         ; preds = %if.end20
  %direction = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0424, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %direction, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i326) #3
  %12 = ptrtoint ptr %tmp.i326 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tmp.i326, align 4
  %call.i327 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i326) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i326) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i327)
  %tobool27.not = icmp eq i32 %call.i327, 0
  br i1 %tobool27.not, label %if.end29, label %if.end24.if.then.i.i_crit_edge

if.end24.if.then.i.i_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end29:                                         ; preds = %if.end24
  %ifindex = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0424, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i328) #3
  %15 = ptrtoint ptr %tmp.i328 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tmp.i328, align 4
  %call.i329 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i328) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i328) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i329)
  %tobool32.not = icmp eq i32 %call.i329, 0
  br i1 %tobool32.not, label %if.end34, label %if.end29.if.then.i.i_crit_edge

if.end29.if.then.i.i_crit_edge:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end34:                                         ; preds = %if.end29
  %16 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %3, align 2
  %19 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i331 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32778, i32 noundef 0, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i331)
  %cmp.i.i332 = icmp slt i32 %call1.i.i331, 0
  %tobool37.not411 = icmp eq ptr %19, null
  %tobool37.not = select i1 %cmp.i.i332, i1 true, i1 %tobool37.not411
  br i1 %tobool37.not, label %if.end34.cleanup_crit_edge, label %if.end39

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  %20 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %instance, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i334) #3
  %22 = ptrtoint ptr %tmp.i334 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tmp.i334, align 4
  %call.i335 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i334) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i334) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i335)
  %tobool42.not = icmp eq i32 %call.i335, 0
  br i1 %tobool42.not, label %if.end44, label %if.end39.if.then.i.i_crit_edge

if.end39.if.then.i.i_crit_edge:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end44:                                         ; preds = %if.end39
  %unicast_mac = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0424, i32 0, i32 3, i32 2
  %call45 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 6, ptr noundef %unicast_mac) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end44.if.then.i.i_crit_edge

if.end44.if.then.i.i_crit_edge:                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end48:                                         ; preds = %if.end44
  %config = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0424, i32 0, i32 3
  %23 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %config, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i336) #3
  %25 = ptrtoint ptr %tmp.i336 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tmp.i336, align 4
  %call.i337 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i336) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i336) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i337)
  %tobool51.not = icmp eq i32 %call.i337, 0
  br i1 %tobool51.not, label %if.end53, label %if.end48.if.then.i.i_crit_edge

if.end48.if.then.i.i_crit_edge:                   ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end53:                                         ; preds = %if.end48
  %mepid = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0424, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %mepid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mepid, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i338) #3
  %28 = ptrtoint ptr %tmp.i338 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %tmp.i338, align 4
  %call.i339 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i338) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i338) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i339)
  %tobool56.not = icmp eq i32 %call.i339, 0
  br i1 %tobool56.not, label %if.end58, label %if.end53.if.then.i.i_crit_edge

if.end53.if.then.i.i_crit_edge:                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end58:                                         ; preds = %if.end53
  %29 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i341 = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i342 = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i343 = sub i32 %sub.ptr.lhs.cast.i341, %sub.ptr.rhs.cast.i342
  %conv.i344 = trunc i32 %sub.ptr.sub.i343 to i16
  %31 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i344, ptr %19, align 2
  %32 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i346 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32779, i32 noundef 0, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i346)
  %cmp.i.i347 = icmp slt i32 %call1.i.i346, 0
  %tobool61.not412 = icmp eq ptr %32, null
  %tobool61.not = select i1 %cmp.i.i347, i1 true, i1 %tobool61.not412
  br i1 %tobool61.not, label %if.end58.cleanup_crit_edge, label %if.end63

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end63:                                         ; preds = %if.end58
  %33 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %instance, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i349) #3
  %35 = ptrtoint ptr %tmp.i349 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %tmp.i349, align 4
  %call.i350 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i349) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i349) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i350)
  %tobool66.not = icmp eq i32 %call.i350, 0
  br i1 %tobool66.not, label %if.end68, label %if.end63.if.then.i.i_crit_edge

if.end63.if.then.i.i_crit_edge:                   ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end68:                                         ; preds = %if.end63
  %cc_config = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0424, i32 0, i32 4
  %enable = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0424, i32 0, i32 4, i32 2
  %36 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %enable, align 4, !range !94
  %38 = zext i8 %37 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i351) #3
  %39 = ptrtoint ptr %tmp.i351 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %tmp.i351, align 4
  %call.i352 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i351) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i351) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i352)
  %tobool71.not = icmp eq i32 %call.i352, 0
  br i1 %tobool71.not, label %if.end73, label %if.end68.if.then.i.i_crit_edge

if.end68.if.then.i.i_crit_edge:                   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end73:                                         ; preds = %if.end68
  %exp_interval = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0424, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %exp_interval to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %exp_interval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i353) #3
  %42 = ptrtoint ptr %tmp.i353 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %tmp.i353, align 4
  %call.i354 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i353) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i353) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i354)
  %tobool76.not = icmp eq i32 %call.i354, 0
  br i1 %tobool76.not, label %if.end78, label %if.end73.if.then.i.i_crit_edge

if.end73.if.then.i.i_crit_edge:                   ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end78:                                         ; preds = %if.end73
  %call81 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 48, ptr noundef %cc_config) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end78.if.then.i.i_crit_edge

if.end78.if.then.i.i_crit_edge:                   ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end84:                                         ; preds = %if.end78
  %43 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i356 = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast.i357 = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i358 = sub i32 %sub.ptr.lhs.cast.i356, %sub.ptr.rhs.cast.i357
  %conv.i359 = trunc i32 %sub.ptr.sub.i358 to i16
  %45 = ptrtoint ptr %32 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i359, ptr %32, align 2
  %46 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i361 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32780, i32 noundef 0, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i361)
  %cmp.i.i362 = icmp slt i32 %call1.i.i361, 0
  %tobool87.not413 = icmp eq ptr %46, null
  %tobool87.not = select i1 %cmp.i.i362, i1 true, i1 %tobool87.not413
  br i1 %tobool87.not, label %if.end84.cleanup_crit_edge, label %if.end89

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end89:                                         ; preds = %if.end84
  %47 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %instance, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i364) #3
  %49 = ptrtoint ptr %tmp.i364 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %tmp.i364, align 4
  %call.i365 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i364) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i364) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i365)
  %tobool92.not = icmp eq i32 %call.i365, 0
  br i1 %tobool92.not, label %if.end94, label %if.end89.if.then.i.i_crit_edge

if.end89.if.then.i.i_crit_edge:                   ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end94:                                         ; preds = %if.end89
  %rdi = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0424, i32 0, i32 13
  %50 = ptrtoint ptr %rdi to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %rdi, align 1, !range !94
  %52 = zext i8 %51 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i366) #3
  %53 = ptrtoint ptr %tmp.i366 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %tmp.i366, align 4
  %call.i367 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i366) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i366) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i367)
  %tobool98.not = icmp eq i32 %call.i367, 0
  br i1 %tobool98.not, label %if.end100, label %if.end94.if.then.i.i_crit_edge

if.end94.if.then.i.i_crit_edge:                   ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end100:                                        ; preds = %if.end94
  %54 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i369 = ptrtoint ptr %55 to i32
  %sub.ptr.rhs.cast.i370 = ptrtoint ptr %46 to i32
  %sub.ptr.sub.i371 = sub i32 %sub.ptr.lhs.cast.i369, %sub.ptr.rhs.cast.i370
  %conv.i372 = trunc i32 %sub.ptr.sub.i371 to i16
  %56 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv.i372, ptr %46, align 2
  %57 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i374 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32781, i32 noundef 0, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i374)
  %cmp.i.i375 = icmp slt i32 %call1.i.i374, 0
  %tobool103.not414 = icmp eq ptr %57, null
  %tobool103.not = select i1 %cmp.i.i375, i1 true, i1 %tobool103.not414
  br i1 %tobool103.not, label %if.end100.cleanup_crit_edge, label %if.end105

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end105:                                        ; preds = %if.end100
  %58 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %instance, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i377) #3
  %60 = ptrtoint ptr %tmp.i377 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %tmp.i377, align 4
  %call.i378 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i377) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i377) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i378)
  %tobool108.not = icmp eq i32 %call.i378, 0
  br i1 %tobool108.not, label %if.end110, label %if.end105.if.then.i.i_crit_edge

if.end105.if.then.i.i_crit_edge:                  ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end110:                                        ; preds = %if.end105
  %cc_ccm_tx_info = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0424, i32 0, i32 5
  %call113 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 6, ptr noundef %cc_ccm_tx_info) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %if.end110.if.then.i.i_crit_edge

if.end110.if.then.i.i_crit_edge:                  ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end116:                                        ; preds = %if.end110
  %seq_no_update = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0424, i32 0, i32 5, i32 2
  %61 = ptrtoint ptr %seq_no_update to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %seq_no_update, align 4, !range !94
  %63 = zext i8 %62 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i379) #3
  %64 = ptrtoint ptr %tmp.i379 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %tmp.i379, align 4
  %call.i380 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i379) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i379) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i380)
  %tobool121.not = icmp eq i32 %call.i380, 0
  br i1 %tobool121.not, label %if.end123, label %if.end116.if.then.i.i_crit_edge

if.end116.if.then.i.i_crit_edge:                  ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end123:                                        ; preds = %if.end116
  %period = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0424, i32 0, i32 5, i32 1
  %65 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %period, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i381) #3
  %67 = ptrtoint ptr %tmp.i381 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %tmp.i381, align 4
  %call.i382 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i381) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i381) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i382)
  %tobool126.not = icmp eq i32 %call.i382, 0
  br i1 %tobool126.not, label %if.end128, label %if.end123.if.then.i.i_crit_edge

if.end123.if.then.i.i_crit_edge:                  ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end128:                                        ; preds = %if.end123
  %if_tlv = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0424, i32 0, i32 5, i32 3
  %68 = ptrtoint ptr %if_tlv to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %if_tlv, align 1, !range !94
  %70 = zext i8 %69 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i383) #3
  %71 = ptrtoint ptr %tmp.i383 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %tmp.i383, align 4
  %call.i384 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i383) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i383) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i384)
  %tobool133.not = icmp eq i32 %call.i384, 0
  br i1 %tobool133.not, label %if.end135, label %if.end128.if.then.i.i_crit_edge

if.end128.if.then.i.i_crit_edge:                  ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end135:                                        ; preds = %if.end128
  %if_tlv_value = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0424, i32 0, i32 5, i32 4
  %72 = ptrtoint ptr %if_tlv_value to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %if_tlv_value, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i385) #3
  %74 = ptrtoint ptr %tmp.i385 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %tmp.i385, align 1
  %call.i386 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %tmp.i385) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i385) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i386)
  %tobool138.not = icmp eq i32 %call.i386, 0
  br i1 %tobool138.not, label %if.end140, label %if.end135.if.then.i.i_crit_edge

if.end135.if.then.i.i_crit_edge:                  ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end140:                                        ; preds = %if.end135
  %port_tlv = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0424, i32 0, i32 5, i32 5
  %75 = ptrtoint ptr %port_tlv to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %port_tlv, align 1, !range !94
  %77 = zext i8 %76 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i387) #3
  %78 = ptrtoint ptr %tmp.i387 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %tmp.i387, align 4
  %call.i388 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i387) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i387) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i388)
  %tobool145.not = icmp eq i32 %call.i388, 0
  br i1 %tobool145.not, label %if.end147, label %if.end140.if.then.i.i_crit_edge

if.end140.if.then.i.i_crit_edge:                  ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end147:                                        ; preds = %if.end140
  %port_tlv_value = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0424, i32 0, i32 5, i32 6
  %79 = ptrtoint ptr %port_tlv_value to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %port_tlv_value, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i389) #3
  %81 = ptrtoint ptr %tmp.i389 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %tmp.i389, align 1
  %call.i390 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 1, ptr noundef nonnull %tmp.i389) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i389) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i390)
  %tobool150.not = icmp eq i32 %call.i390, 0
  br i1 %tobool150.not, label %if.end152, label %if.end147.if.then.i.i_crit_edge

if.end147.if.then.i.i_crit_edge:                  ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end152:                                        ; preds = %if.end147
  %82 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i392 = ptrtoint ptr %83 to i32
  %sub.ptr.rhs.cast.i393 = ptrtoint ptr %57 to i32
  %sub.ptr.sub.i394 = sub i32 %sub.ptr.lhs.cast.i392, %sub.ptr.rhs.cast.i393
  %conv.i395 = trunc i32 %sub.ptr.sub.i394 to i16
  %84 = ptrtoint ptr %57 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv.i395, ptr %57, align 2
  %call155 = call i32 @rcu_read_lock_any_held() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %land.lhs.true157, label %if.end152.do.end165_crit_edge

if.end152.do.end165_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end165

land.lhs.true157:                                 ; preds = %if.end152
  %call158 = call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %land.lhs.true157.do.end165_crit_edge, label %land.lhs.true160

land.lhs.true157.do.end165_crit_edge:             ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end165

land.lhs.true160:                                 ; preds = %land.lhs.true157
  %.b318319 = load i1, ptr @br_cfm_config_fill_info.__warned.2, align 1
  br i1 %.b318319, label %land.lhs.true160.do.end165_crit_edge, label %if.then162

land.lhs.true160.do.end165_crit_edge:             ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end165

if.then162:                                       ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @br_cfm_config_fill_info.__warned.2, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 587, ptr noundef nonnull @.str.1) #3
  br label %do.end165

do.end165:                                        ; preds = %if.then162, %land.lhs.true160.do.end165_crit_edge, %land.lhs.true157.do.end165_crit_edge, %if.end152.do.end165_crit_edge
  %peer_mep_list = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0424, i32 0, i32 6
  %85 = ptrtoint ptr %peer_mep_list to i32
  call void @__asan_load4_noabort(i32 %85)
  %peer_mep.0419 = load volatile ptr, ptr %peer_mep_list, align 4
  %tobool183.not420 = icmp eq ptr %peer_mep.0419, null
  br i1 %tobool183.not420, label %do.end165.for.cond.loopexit_crit_edge, label %do.end165.for.body184_crit_edge

do.end165.for.body184_crit_edge:                  ; preds = %do.end165
  br label %for.body184

do.end165.for.cond.loopexit_crit_edge:            ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.loopexit

for.body184:                                      ; preds = %if.end198.for.body184_crit_edge, %do.end165.for.body184_crit_edge
  %peer_mep.0421 = phi ptr [ %peer_mep.0, %if.end198.for.body184_crit_edge ], [ %peer_mep.0419, %do.end165.for.body184_crit_edge ]
  %86 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i397 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32782, i32 noundef 0, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i397)
  %cmp.i.i398 = icmp slt i32 %call1.i.i397, 0
  %tobool186.not415 = icmp eq ptr %87, null
  %tobool186.not = select i1 %cmp.i.i398, i1 true, i1 %tobool186.not415
  br i1 %tobool186.not, label %for.body184.cleanup_crit_edge, label %if.end188

for.body184.cleanup_crit_edge:                    ; preds = %for.body184
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end188:                                        ; preds = %for.body184
  %88 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %instance, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i400) #3
  %90 = ptrtoint ptr %tmp.i400 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %tmp.i400, align 4
  %call.i401 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i400) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i400) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i401)
  %tobool191.not = icmp eq i32 %call.i401, 0
  br i1 %tobool191.not, label %if.end193, label %if.end188.if.then.i.i_crit_edge

if.end188.if.then.i.i_crit_edge:                  ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end193:                                        ; preds = %if.end188
  %mepid194 = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %peer_mep.0421, i32 0, i32 3
  %91 = ptrtoint ptr %mepid194 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mepid194, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i402) #3
  %93 = ptrtoint ptr %tmp.i402 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %tmp.i402, align 4
  %call.i403 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i402) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i402) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i403)
  %tobool196.not = icmp eq i32 %call.i403, 0
  br i1 %tobool196.not, label %if.end198, label %if.end193.if.then.i.i_crit_edge

if.end193.if.then.i.i_crit_edge:                  ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end198:                                        ; preds = %if.end193
  %94 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i405 = ptrtoint ptr %95 to i32
  %sub.ptr.rhs.cast.i406 = ptrtoint ptr %87 to i32
  %sub.ptr.sub.i407 = sub i32 %sub.ptr.lhs.cast.i405, %sub.ptr.rhs.cast.i406
  %conv.i408 = trunc i32 %sub.ptr.sub.i407 to i16
  %96 = ptrtoint ptr %87 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv.i408, ptr %87, align 2
  %97 = ptrtoint ptr %peer_mep.0421 to i32
  call void @__asan_load4_noabort(i32 %97)
  %peer_mep.0 = load volatile ptr, ptr %peer_mep.0421, align 4
  %tobool183.not = icmp eq ptr %peer_mep.0, null
  br i1 %tobool183.not, label %if.end198.for.cond.loopexit_crit_edge, label %if.end198.for.body184_crit_edge

if.end198.for.body184_crit_edge:                  ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body184

if.end198.for.cond.loopexit_crit_edge:            ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.loopexit

if.then.i.i:                                      ; preds = %if.end193.if.then.i.i_crit_edge, %if.end188.if.then.i.i_crit_edge, %if.end147.if.then.i.i_crit_edge, %if.end140.if.then.i.i_crit_edge, %if.end135.if.then.i.i_crit_edge, %if.end128.if.then.i.i_crit_edge, %if.end123.if.then.i.i_crit_edge, %if.end116.if.then.i.i_crit_edge, %if.end110.if.then.i.i_crit_edge, %if.end105.if.then.i.i_crit_edge, %if.end94.if.then.i.i_crit_edge, %if.end89.if.then.i.i_crit_edge, %if.end78.if.then.i.i_crit_edge, %if.end73.if.then.i.i_crit_edge, %if.end68.if.then.i.i_crit_edge, %if.end63.if.then.i.i_crit_edge, %if.end53.if.then.i.i_crit_edge, %if.end48.if.then.i.i_crit_edge, %if.end44.if.then.i.i_crit_edge, %if.end39.if.then.i.i_crit_edge, %if.end29.if.then.i.i_crit_edge, %if.end24.if.then.i.i_crit_edge, %if.end20.if.then.i.i_crit_edge, %if.end16.if.then.i.i_crit_edge
  %tb.0 = phi ptr [ %87, %if.end193.if.then.i.i_crit_edge ], [ %87, %if.end188.if.then.i.i_crit_edge ], [ %57, %if.end147.if.then.i.i_crit_edge ], [ %57, %if.end140.if.then.i.i_crit_edge ], [ %57, %if.end135.if.then.i.i_crit_edge ], [ %57, %if.end128.if.then.i.i_crit_edge ], [ %57, %if.end123.if.then.i.i_crit_edge ], [ %57, %if.end116.if.then.i.i_crit_edge ], [ %57, %if.end110.if.then.i.i_crit_edge ], [ %57, %if.end105.if.then.i.i_crit_edge ], [ %46, %if.end94.if.then.i.i_crit_edge ], [ %46, %if.end89.if.then.i.i_crit_edge ], [ %32, %if.end78.if.then.i.i_crit_edge ], [ %32, %if.end73.if.then.i.i_crit_edge ], [ %32, %if.end68.if.then.i.i_crit_edge ], [ %32, %if.end63.if.then.i.i_crit_edge ], [ %19, %if.end53.if.then.i.i_crit_edge ], [ %19, %if.end48.if.then.i.i_crit_edge ], [ %19, %if.end44.if.then.i.i_crit_edge ], [ %19, %if.end39.if.then.i.i_crit_edge ], [ %3, %if.end29.if.then.i.i_crit_edge ], [ %3, %if.end24.if.then.i.i_crit_edge ], [ %3, %if.end20.if.then.i.i_crit_edge ], [ %3, %if.end16.if.then.i.i_crit_edge ]
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %98 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i409 = icmp ugt ptr %99, %tb.0
  br i1 %cmp.i.i409, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !95

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 991, i32 noundef 9, ptr noundef null) #3
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %100 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %tb.0 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %101 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #3
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %for.body184.cleanup_crit_edge, %if.end100.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.loopexit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_nest_cancel.exit ], [ 0, %do.end.cleanup_crit_edge ], [ -90, %for.body184.cleanup_crit_edge ], [ 0, %for.cond.loopexit.cleanup_crit_edge ], [ -90, %if.end100.cleanup_crit_edge ], [ -90, %if.end84.cleanup_crit_edge ], [ -90, %if.end58.cleanup_crit_edge ], [ -90, %if.end34.cleanup_crit_edge ], [ -90, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_cfm_status_fill_info(ptr noundef %skb, ptr noundef %br, i1 noundef zeroext %getlink) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i281 = alloca i32, align 4
  %tmp.i279 = alloca i32, align 4
  %tmp.i277 = alloca i32, align 4
  %tmp.i275 = alloca i8, align 1
  %tmp.i273 = alloca i8, align 1
  %tmp.i271 = alloca i32, align 4
  %tmp.i269 = alloca i32, align 4
  %tmp.i267 = alloca i32, align 4
  %tmp.i265 = alloca i32, align 4
  %tmp.i259 = alloca i32, align 4
  %tmp.i257 = alloca i32, align 4
  %tmp.i255 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b251 = load i1, ptr @br_cfm_status_fill_info.__warned, align 1
  br i1 %.b251, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @br_cfm_status_fill_info.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 624, ptr noundef nonnull @.str.1) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %mep_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 48
  %0 = ptrtoint ptr %mep_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %mep.0299 = load volatile ptr, ptr %mep_list, align 4
  %tobool12.not300 = icmp eq ptr %mep.0299, null
  br i1 %tobool12.not300, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %for.body

for.cond.loopexit:                                ; preds = %if.end160.for.cond.loopexit_crit_edge, %do.end61.for.cond.loopexit_crit_edge
  %1 = ptrtoint ptr %mep.0301 to i32
  call void @__asan_load4_noabort(i32 %1)
  %mep.0 = load volatile ptr, ptr %mep.0301, align 4
  %tobool12.not = icmp eq ptr %mep.0, null
  br i1 %tobool12.not, label %for.cond.loopexit.cleanup_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.cond.loopexit.cleanup_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %mep.0301 = phi ptr [ %mep.0299, %for.body.lr.ph ], [ %mep.0, %for.cond.loopexit.for.body_crit_edge ]
  %2 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32783, i32 noundef 0, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool14.not289 = icmp eq ptr %3, null
  %tobool14.not = select i1 %cmp.i.i, i1 true, i1 %tobool14.not289
  br i1 %tobool14.not, label %for.body.cleanup_crit_edge, label %if.end16

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end16:                                         ; preds = %for.body
  %instance = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0301, i32 0, i32 1
  %4 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %instance, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #3
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.if.then.i.i_crit_edge

if.end16.if.then.i.i_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end20:                                         ; preds = %if.end16
  %status = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0301, i32 0, i32 12
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %status, align 4, !range !94
  %9 = zext i8 %8 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i255) #3
  %10 = ptrtoint ptr %tmp.i255 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tmp.i255, align 4
  %call.i256 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i255) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i255) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i256)
  %tobool23.not = icmp eq i32 %call.i256, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.if.then.i.i_crit_edge

if.end20.if.then.i.i_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end25:                                         ; preds = %if.end20
  %version_unexp_seen = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0301, i32 0, i32 12, i32 1
  %11 = ptrtoint ptr %version_unexp_seen to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %version_unexp_seen, align 1, !range !94
  %13 = zext i8 %12 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i257) #3
  %14 = ptrtoint ptr %tmp.i257 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tmp.i257, align 4
  %call.i258 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i257) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i257) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i258)
  %tobool30.not = icmp eq i32 %call.i258, 0
  br i1 %tobool30.not, label %if.end32, label %if.end25.if.then.i.i_crit_edge

if.end25.if.then.i.i_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end32:                                         ; preds = %if.end25
  %rx_level_low_seen = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0301, i32 0, i32 12, i32 2
  %15 = ptrtoint ptr %rx_level_low_seen to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rx_level_low_seen, align 2, !range !94
  %17 = zext i8 %16 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i259) #3
  %18 = ptrtoint ptr %tmp.i259 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tmp.i259, align 4
  %call.i260 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i259) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i259) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i260)
  %tobool37.not = icmp eq i32 %call.i260, 0
  br i1 %tobool37.not, label %if.end39, label %if.end32.if.then.i.i_crit_edge

if.end32.if.then.i.i_crit_edge:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end39:                                         ; preds = %if.end32
  br i1 %getlink, label %if.then41, label %if.end39.if.end48_crit_edge

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %status, align 4
  %20 = ptrtoint ptr %version_unexp_seen to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %version_unexp_seen, align 1
  %21 = ptrtoint ptr %rx_level_low_seen to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %rx_level_low_seen, align 2
  br label %if.end48

if.end48:                                         ; preds = %if.then41, %if.end39.if.end48_crit_edge
  %22 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i, ptr %3, align 2
  %call51 = call i32 @rcu_read_lock_any_held() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.lhs.true53, label %if.end48.do.end61_crit_edge

if.end48.do.end61_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end61

land.lhs.true53:                                  ; preds = %if.end48
  %call54 = call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %land.lhs.true53.do.end61_crit_edge, label %land.lhs.true56

land.lhs.true53.do.end61_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end61

land.lhs.true56:                                  ; preds = %land.lhs.true53
  %.b249250 = load i1, ptr @br_cfm_status_fill_info.__warned.3, align 1
  br i1 %.b249250, label %land.lhs.true56.do.end61_crit_edge, label %if.then58

land.lhs.true56.do.end61_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end61

if.then58:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @br_cfm_status_fill_info.__warned.3, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 658, ptr noundef nonnull @.str.1) #3
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %land.lhs.true56.do.end61_crit_edge, %land.lhs.true53.do.end61_crit_edge, %if.end48.do.end61_crit_edge
  %peer_mep_list = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0301, i32 0, i32 6
  %25 = ptrtoint ptr %peer_mep_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %peer_mep.0296 = load volatile ptr, ptr %peer_mep_list, align 4
  %tobool79.not297 = icmp eq ptr %peer_mep.0296, null
  br i1 %tobool79.not297, label %do.end61.for.cond.loopexit_crit_edge, label %do.end61.for.body80_crit_edge

do.end61.for.body80_crit_edge:                    ; preds = %do.end61
  br label %for.body80

do.end61.for.cond.loopexit_crit_edge:             ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.loopexit

for.body80:                                       ; preds = %if.end160.for.body80_crit_edge, %do.end61.for.body80_crit_edge
  %peer_mep.0298 = phi ptr [ %peer_mep.0, %if.end160.for.body80_crit_edge ], [ %peer_mep.0296, %do.end61.for.body80_crit_edge ]
  %26 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i262 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32784, i32 noundef 0, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i262)
  %cmp.i.i263 = icmp slt i32 %call1.i.i262, 0
  %tobool82.not290 = icmp eq ptr %27, null
  %tobool82.not = select i1 %cmp.i.i263, i1 true, i1 %tobool82.not290
  br i1 %tobool82.not, label %for.body80.cleanup_crit_edge, label %if.end84

for.body80.cleanup_crit_edge:                     ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end84:                                         ; preds = %for.body80
  %28 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %instance, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i265) #3
  %30 = ptrtoint ptr %tmp.i265 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %tmp.i265, align 4
  %call.i266 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i265) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i265) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i266)
  %tobool87.not = icmp eq i32 %call.i266, 0
  br i1 %tobool87.not, label %if.end89, label %if.end84.if.then.i.i_crit_edge

if.end84.if.then.i.i_crit_edge:                   ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end89:                                         ; preds = %if.end84
  %mepid = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %peer_mep.0298, i32 0, i32 3
  %31 = ptrtoint ptr %mepid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mepid, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i267) #3
  %33 = ptrtoint ptr %tmp.i267 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %tmp.i267, align 4
  %call.i268 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i267) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i267) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i268)
  %tobool91.not = icmp eq i32 %call.i268, 0
  br i1 %tobool91.not, label %if.end93, label %if.end89.if.then.i.i_crit_edge

if.end89.if.then.i.i_crit_edge:                   ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end93:                                         ; preds = %if.end89
  %cc_status = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %peer_mep.0298, i32 0, i32 4
  %ccm_defect = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %peer_mep.0298, i32 0, i32 4, i32 2
  %34 = ptrtoint ptr %ccm_defect to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %ccm_defect, align 2
  %bf.lshr = lshr i8 %bf.load, 7
  %conv94 = zext i8 %bf.lshr to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i269) #3
  %35 = ptrtoint ptr %tmp.i269 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv94, ptr %tmp.i269, align 4
  %call.i270 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i269) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i269) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i270)
  %tobool96.not = icmp eq i32 %call.i270, 0
  br i1 %tobool96.not, label %if.end98, label %if.end93.if.then.i.i_crit_edge

if.end93.if.then.i.i_crit_edge:                   ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end98:                                         ; preds = %if.end93
  %36 = ptrtoint ptr %ccm_defect to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load100 = load i8, ptr %ccm_defect, align 2
  %bf.lshr101 = lshr i8 %bf.load100, 6
  %bf.clear = and i8 %bf.lshr101, 1
  %conv102 = zext i8 %bf.clear to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i271) #3
  %37 = ptrtoint ptr %tmp.i271 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv102, ptr %tmp.i271, align 4
  %call.i272 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i271) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i271) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i272)
  %tobool104.not = icmp eq i32 %call.i272, 0
  br i1 %tobool104.not, label %if.end106, label %if.end98.if.then.i.i_crit_edge

if.end98.if.then.i.i_crit_edge:                   ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end106:                                        ; preds = %if.end98
  %38 = ptrtoint ptr %cc_status to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %cc_status, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i273) #3
  %40 = ptrtoint ptr %tmp.i273 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %tmp.i273, align 1
  %call.i274 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %tmp.i273) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i273) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i274)
  %tobool109.not = icmp eq i32 %call.i274, 0
  br i1 %tobool109.not, label %if.end111, label %if.end106.if.then.i.i_crit_edge

if.end106.if.then.i.i_crit_edge:                  ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end111:                                        ; preds = %if.end106
  %if_tlv_value = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %peer_mep.0298, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %if_tlv_value to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %if_tlv_value, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i275) #3
  %43 = ptrtoint ptr %tmp.i275 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %tmp.i275, align 1
  %call.i276 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %tmp.i275) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i275) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276)
  %tobool114.not = icmp eq i32 %call.i276, 0
  br i1 %tobool114.not, label %if.end116, label %if.end111.if.then.i.i_crit_edge

if.end111.if.then.i.i_crit_edge:                  ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end116:                                        ; preds = %if.end111
  %44 = ptrtoint ptr %ccm_defect to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load118 = load i8, ptr %ccm_defect, align 2
  %bf.lshr119 = lshr i8 %bf.load118, 5
  %bf.clear120 = and i8 %bf.lshr119, 1
  %conv121 = zext i8 %bf.clear120 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i277) #3
  %45 = ptrtoint ptr %tmp.i277 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv121, ptr %tmp.i277, align 4
  %call.i278 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i277) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i277) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i278)
  %tobool123.not = icmp eq i32 %call.i278, 0
  br i1 %tobool123.not, label %if.end125, label %if.end116.if.then.i.i_crit_edge

if.end116.if.then.i.i_crit_edge:                  ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end125:                                        ; preds = %if.end116
  %46 = ptrtoint ptr %ccm_defect to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load127 = load i8, ptr %ccm_defect, align 2
  %bf.lshr128 = lshr i8 %bf.load127, 4
  %bf.clear129 = and i8 %bf.lshr128, 1
  %conv130 = zext i8 %bf.clear129 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i279) #3
  %47 = ptrtoint ptr %tmp.i279 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv130, ptr %tmp.i279, align 4
  %call.i280 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i279) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i279) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i280)
  %tobool132.not = icmp eq i32 %call.i280, 0
  br i1 %tobool132.not, label %if.end134, label %if.end125.if.then.i.i_crit_edge

if.end125.if.then.i.i_crit_edge:                  ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end134:                                        ; preds = %if.end125
  %48 = ptrtoint ptr %ccm_defect to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load136 = load i8, ptr %ccm_defect, align 2
  %bf.lshr137 = lshr i8 %bf.load136, 3
  %bf.clear138 = and i8 %bf.lshr137, 1
  %conv139 = zext i8 %bf.clear138 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i281) #3
  %49 = ptrtoint ptr %tmp.i281 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv139, ptr %tmp.i281, align 4
  %call.i282 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i281) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i281) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i282)
  %tobool141.not = icmp eq i32 %call.i282, 0
  br i1 %tobool141.not, label %if.end143, label %if.end134.if.then.i.i_crit_edge

if.end134.if.then.i.i_crit_edge:                  ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i.i

if.end143:                                        ; preds = %if.end134
  br i1 %getlink, label %if.then145, label %if.end143.if.end160_crit_edge

if.end143.if.end160_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end160

if.then145:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #5
  %50 = ptrtoint ptr %ccm_defect to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load148 = load i8, ptr %ccm_defect, align 2
  %bf.clear158 = and i8 %bf.load148, -57
  store i8 %bf.clear158, ptr %ccm_defect, align 2
  br label %if.end160

if.end160:                                        ; preds = %if.then145, %if.end143.if.end160_crit_edge
  %51 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i284 = ptrtoint ptr %52 to i32
  %sub.ptr.rhs.cast.i285 = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i286 = sub i32 %sub.ptr.lhs.cast.i284, %sub.ptr.rhs.cast.i285
  %conv.i287 = trunc i32 %sub.ptr.sub.i286 to i16
  %53 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i287, ptr %27, align 2
  %54 = ptrtoint ptr %peer_mep.0298 to i32
  call void @__asan_load4_noabort(i32 %54)
  %peer_mep.0 = load volatile ptr, ptr %peer_mep.0298, align 4
  %tobool79.not = icmp eq ptr %peer_mep.0, null
  br i1 %tobool79.not, label %if.end160.for.cond.loopexit_crit_edge, label %if.end160.for.body80_crit_edge

if.end160.for.body80_crit_edge:                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body80

if.end160.for.cond.loopexit_crit_edge:            ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.loopexit

if.then.i.i:                                      ; preds = %if.end134.if.then.i.i_crit_edge, %if.end125.if.then.i.i_crit_edge, %if.end116.if.then.i.i_crit_edge, %if.end111.if.then.i.i_crit_edge, %if.end106.if.then.i.i_crit_edge, %if.end98.if.then.i.i_crit_edge, %if.end93.if.then.i.i_crit_edge, %if.end89.if.then.i.i_crit_edge, %if.end84.if.then.i.i_crit_edge, %if.end32.if.then.i.i_crit_edge, %if.end25.if.then.i.i_crit_edge, %if.end20.if.then.i.i_crit_edge, %if.end16.if.then.i.i_crit_edge
  %tb.0 = phi ptr [ %27, %if.end134.if.then.i.i_crit_edge ], [ %27, %if.end125.if.then.i.i_crit_edge ], [ %27, %if.end116.if.then.i.i_crit_edge ], [ %27, %if.end111.if.then.i.i_crit_edge ], [ %27, %if.end106.if.then.i.i_crit_edge ], [ %27, %if.end98.if.then.i.i_crit_edge ], [ %27, %if.end93.if.then.i.i_crit_edge ], [ %27, %if.end89.if.then.i.i_crit_edge ], [ %27, %if.end84.if.then.i.i_crit_edge ], [ %3, %if.end32.if.then.i.i_crit_edge ], [ %3, %if.end25.if.then.i.i_crit_edge ], [ %3, %if.end20.if.then.i.i_crit_edge ], [ %3, %if.end16.if.then.i.i_crit_edge ]
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %55 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i288 = icmp ugt ptr %56, %tb.0
  br i1 %cmp.i.i288, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !95

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 991, i32 noundef 9, ptr noundef null) #3
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %57 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %tb.0 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %58 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #3
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %for.body80.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.loopexit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_nest_cancel.exit ], [ 0, %do.end.cleanup_crit_edge ], [ -90, %for.body80.cleanup_crit_edge ], [ 0, %for.cond.loopexit.cleanup_crit_edge ], [ -90, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_cfm_mep_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_cfm_mep_delete(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_cfm_mep_config_set(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_cfm_cc_config_set(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_cfm_cc_peer_mep_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_cfm_cc_peer_mep_remove(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_cfm_cc_rdi_set(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_cfm_cc_ccm_tx(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/bridge/br_cfm_netlink.c", i32 461, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/bridge/br_cfm_netlink.c", i32 587, i32 3}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/bridge/br_cfm_netlink.c", i32 624, i32 2}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/bridge/br_cfm_netlink.c", i32 658, i32 3}
!10 = !{ptr @nla_parse_nested.__msg, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!12 = !{ptr @br_cfm_policy, !13, !"br_cfm_policy", i1 false, i1 false}
!13 = !{!"../net/bridge/br_cfm_netlink.c", i32 70, i32 1}
!14 = !{ptr @br_cfm_mep_create_policy, !15, !"br_cfm_mep_create_policy", i1 false, i1 false}
!15 = !{!"../net/bridge/br_cfm_netlink.c", i32 9, i32 1}
!16 = !{ptr @br_cfm_mep_delete_policy, !17, !"br_cfm_mep_delete_policy", i1 false, i1 false}
!17 = !{!"../net/bridge/br_cfm_netlink.c", i32 18, i32 1}
!18 = !{ptr @br_cfm_mep_config_policy, !19, !"br_cfm_mep_config_policy", i1 false, i1 false}
!19 = !{!"../net/bridge/br_cfm_netlink.c", i32 24, i32 1}
!20 = !{ptr @br_cfm_cc_config_policy, !21, !"br_cfm_cc_config_policy", i1 false, i1 false}
!21 = !{!"../net/bridge/br_cfm_netlink.c", i32 33, i32 1}
!22 = !{ptr @br_cfm_cc_peer_mep_policy, !23, !"br_cfm_cc_peer_mep_policy", i1 false, i1 false}
!23 = !{!"../net/bridge/br_cfm_netlink.c", i32 43, i32 1}
!24 = !{ptr @br_cfm_cc_rdi_policy, !25, !"br_cfm_cc_rdi_policy", i1 false, i1 false}
!25 = !{!"../net/bridge/br_cfm_netlink.c", i32 50, i32 1}
!26 = !{ptr @br_cfm_cc_ccm_tx_policy, !27, !"br_cfm_cc_ccm_tx_policy", i1 false, i1 false}
!27 = !{!"../net/bridge/br_cfm_netlink.c", i32 57, i32 1}
!28 = !{ptr @br_mep_create_parse.__msg, !29, !"__msg", i1 false, i1 false}
!29 = !{!"../net/bridge/br_cfm_netlink.c", i32 104, i32 3}
!30 = !{ptr @br_mep_create_parse.__msg.8, !31, !"__msg", i1 false, i1 false}
!31 = !{!"../net/bridge/br_cfm_netlink.c", i32 108, i32 3}
!32 = !{ptr @br_mep_create_parse.__msg.9, !33, !"__msg", i1 false, i1 false}
!33 = !{!"../net/bridge/br_cfm_netlink.c", i32 112, i32 3}
!34 = !{ptr @br_mep_create_parse.__msg.10, !35, !"__msg", i1 false, i1 false}
!35 = !{!"../net/bridge/br_cfm_netlink.c", i32 116, i32 3}
!36 = !{ptr @br_mep_delete_parse.__msg, !37, !"__msg", i1 false, i1 false}
!37 = !{!"../net/bridge/br_cfm_netlink.c", i32 143, i32 3}
!38 = !{ptr @br_mep_config_parse.__msg, !39, !"__msg", i1 false, i1 false}
!39 = !{!"../net/bridge/br_cfm_netlink.c", i32 167, i32 3}
!40 = !{ptr @br_mep_config_parse.__msg.11, !41, !"__msg", i1 false, i1 false}
!41 = !{!"../net/bridge/br_cfm_netlink.c", i32 171, i32 3}
!42 = !{ptr @br_mep_config_parse.__msg.12, !43, !"__msg", i1 false, i1 false}
!43 = !{!"../net/bridge/br_cfm_netlink.c", i32 175, i32 3}
!44 = !{ptr @br_mep_config_parse.__msg.13, !45, !"__msg", i1 false, i1 false}
!45 = !{!"../net/bridge/br_cfm_netlink.c", i32 179, i32 3}
!46 = !{ptr @br_cc_config_parse.__msg, !47, !"__msg", i1 false, i1 false}
!47 = !{!"../net/bridge/br_cfm_netlink.c", i32 209, i32 3}
!48 = !{ptr @br_cc_config_parse.__msg.14, !49, !"__msg", i1 false, i1 false}
!49 = !{!"../net/bridge/br_cfm_netlink.c", i32 213, i32 3}
!50 = !{ptr @br_cc_config_parse.__msg.15, !51, !"__msg", i1 false, i1 false}
!51 = !{!"../net/bridge/br_cfm_netlink.c", i32 217, i32 3}
!52 = !{ptr @br_cc_config_parse.__msg.16, !53, !"__msg", i1 false, i1 false}
!53 = !{!"../net/bridge/br_cfm_netlink.c", i32 221, i32 3}
!54 = !{ptr @br_cc_peer_mep_add_parse.__msg, !55, !"__msg", i1 false, i1 false}
!55 = !{!"../net/bridge/br_cfm_netlink.c", i32 249, i32 3}
!56 = !{ptr @br_cc_peer_mep_add_parse.__msg.17, !57, !"__msg", i1 false, i1 false}
!57 = !{!"../net/bridge/br_cfm_netlink.c", i32 253, i32 3}
!58 = !{ptr @br_cc_peer_mep_remove_parse.__msg, !59, !"__msg", i1 false, i1 false}
!59 = !{!"../net/bridge/br_cfm_netlink.c", i32 276, i32 3}
!60 = !{ptr @br_cc_peer_mep_remove_parse.__msg.18, !61, !"__msg", i1 false, i1 false}
!61 = !{!"../net/bridge/br_cfm_netlink.c", i32 280, i32 3}
!62 = !{ptr @br_cc_rdi_parse.__msg, !63, !"__msg", i1 false, i1 false}
!63 = !{!"../net/bridge/br_cfm_netlink.c", i32 303, i32 3}
!64 = !{ptr @br_cc_rdi_parse.__msg.19, !65, !"__msg", i1 false, i1 false}
!65 = !{!"../net/bridge/br_cfm_netlink.c", i32 307, i32 3}
!66 = !{ptr @br_cc_ccm_tx_parse.__msg, !67, !"__msg", i1 false, i1 false}
!67 = !{!"../net/bridge/br_cfm_netlink.c", i32 331, i32 3}
!68 = !{ptr @br_cc_ccm_tx_parse.__msg.20, !69, !"__msg", i1 false, i1 false}
!69 = !{!"../net/bridge/br_cfm_netlink.c", i32 335, i32 3}
!70 = !{ptr @br_cc_ccm_tx_parse.__msg.21, !71, !"__msg", i1 false, i1 false}
!71 = !{!"../net/bridge/br_cfm_netlink.c", i32 339, i32 3}
!72 = !{ptr @br_cc_ccm_tx_parse.__msg.22, !73, !"__msg", i1 false, i1 false}
!73 = !{!"../net/bridge/br_cfm_netlink.c", i32 343, i32 3}
!74 = !{ptr @br_cc_ccm_tx_parse.__msg.23, !75, !"__msg", i1 false, i1 false}
!75 = !{!"../net/bridge/br_cfm_netlink.c", i32 347, i32 3}
!76 = !{ptr @br_cc_ccm_tx_parse.__msg.24, !77, !"__msg", i1 false, i1 false}
!77 = !{!"../net/bridge/br_cfm_netlink.c", i32 351, i32 3}
!78 = !{ptr @br_cc_ccm_tx_parse.__msg.25, !79, !"__msg", i1 false, i1 false}
!79 = !{!"../net/bridge/br_cfm_netlink.c", i32 355, i32 3}
!80 = !{ptr @br_cc_ccm_tx_parse.__msg.26, !81, !"__msg", i1 false, i1 false}
!81 = !{!"../net/bridge/br_cfm_netlink.c", i32 359, i32 3}
!82 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/net/netlink.h", i32 991, i32 3}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"auto-init"}
!94 = !{i8 0, i8 2}
!95 = !{!"branch_weights", i32 1, i32 2000}
