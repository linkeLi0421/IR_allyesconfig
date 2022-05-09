; ModuleID = '/llk/IR_all_yes/net/bridge/br_fdb.c_pt.bc'
source_filename = "../net/bridge/br_fdb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+br_fdb_find_port\22, \22a\22\09"
module asm "\09.weak\09__crc_br_fdb_find_port\09\09\09\09"
module asm "\09.long\09__crc_br_fdb_find_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_br_fdb_find_port:\09\09\09\09\09"
module asm "\09.asciz \09\22br_fdb_find_port\22\09\09\09\09\09"
module asm "__kstrtabns_br_fdb_find_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+br_fdb_clear_offload\22, \22a\22\09"
module asm "\09.weak\09__crc_br_fdb_clear_offload\09\09\09\09"
module asm "\09.long\09__crc_br_fdb_clear_offload\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_br_fdb_clear_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22br_fdb_clear_offload\22\09\09\09\09\09"
module asm "__kstrtabns_br_fdb_clear_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.48 }
%union.anon.48 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.83 }
%struct.atomic_t = type { i32 }
%union.anon.83 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.143, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%struct.list_head = type { ptr, ptr }
%union.anon.143 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.hlist_head = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.142 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_bridge_fdb_entry = type { %struct.rhash_head, ptr, %struct.net_bridge_fdb_key, %struct.hlist_node, i32, [100 x i8], i32, i32, %struct.callback_head, [112 x i8] }
%struct.rhash_head = type { ptr }
%struct.net_bridge_fdb_key = type { %struct.mac_addr, i16 }
%struct.mac_addr = type { [6 x i8] }
%struct.net_bridge_port = type { ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i8, i8, i16, i8, i8, i16, i16, %struct.bridge_id, %struct.bridge_id, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.kobject, %struct.callback_head, %struct.net_bridge_mcast_port, ptr, i32, i32, %struct.hlist_head, [16 x i8], ptr, i32, i32, %struct.netdev_phys_item_id, i16, i16, %struct.bridge_stp_xstats }
%struct.net_bridge_mcast_port = type { ptr, ptr, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, i8 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.bridge_stp_xstats = type { i64, i64, i64, i64, i64, i64 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.net_bridge_vlan = type { %struct.rhash_head, %struct.rhash_head, i16, i16, i16, i8, ptr, %union.anon.146, %union.anon.147, %struct.br_tunnel_info, %union.anon.148, %struct.list_head, %struct.callback_head }
%union.anon.146 = type { ptr }
%union.anon.147 = type { %struct.refcount_struct }
%struct.br_tunnel_info = type { i64, ptr }
%union.anon.148 = type { %struct.net_bridge_mcast }
%struct.net_bridge_vlan_group = type { %struct.rhashtable, %struct.rhashtable, %struct.list_head, i16, i16, i8 }
%struct.__fdb_entry = type { [6 x i8], i8, i8, i32, i8, i8, i16 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.132 }
%union.anon.132 = type { [6 x i32], [24 x i8] }
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
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.nda_cacheinfo = type { i32, i32, i32, i32 }
%struct.ndmsg = type { i8, i8, i16, i32, i16, i8, i8 }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bridge_fdb_cache\00", [47 x i8] zeroinitializer }, align 32
@br_fdb_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@br_fdb_rht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 8, i16 8, i16 0, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@br_fdb_find_port.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/bridge/br_fdb.c\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@__kstrtab_br_fdb_find_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_br_fdb_find_port = external dso_local constant [0 x i8], align 1
@__ksymtab_br_fdb_find_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @br_fdb_find_port to i32), ptr @__kstrtab_br_fdb_find_port, ptr @__kstrtabns_br_fdb_find_port }, section "___ksymtab_gpl+br_fdb_find_port", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@br_fdb_cleanup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@br_fdb_fillbuf.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_fdb_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.1, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\014%s: received packet on %s with own address as source address (addr:%pM, vlan:%u)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"br_fdb_update\00", [18 x i8] zeroinitializer }, align 32
@br_fdb_update._entry_ptr = internal global ptr @br_fdb_update._entry, section ".printk_index", align 4
@br_fdb_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_fdb_get.__msg = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Fdb entry not found\00", [44 x i8] zeroinitializer }, align 32
@br_fdb_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.1, i32 1015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016bridge: RTM_NEWNEIGH with invalid state %#x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"br_fdb_add\00", [21 x i8] zeroinitializer }, align 32
@br_fdb_add._entry_ptr = internal global ptr @br_fdb_add._entry, section ".printk_index", align 4
@br_fdb_add._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.1, i32 1020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016bridge: RTM_NEWNEIGH with invalid ether address\0A\00", [45 x i8] zeroinitializer }, align 32
@br_fdb_add._entry_ptr.10 = internal global ptr @br_fdb_add._entry.8, section ".printk_index", align 4
@br_fdb_add._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.1, i32 1031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016bridge: RTM_NEWNEIGH %s not a bridge port\0A\00", [51 x i8] zeroinitializer }, align 32
@br_fdb_add._entry_ptr.13 = internal global ptr @br_fdb_add._entry.11, section ".printk_index", align 4
@br_nda_fdb_pol = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.48 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@br_fdb_add._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.1, i32 1051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016bridge: RTM_NEWNEIGH with unconfigured vlan %d on %s\0A\00", [40 x i8] zeroinitializer }, align 32
@br_fdb_add._entry_ptr.16 = internal global ptr @br_fdb_add._entry.14, section ".printk_index", align 4
@br_fdb_delete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.1, i32 1128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016bridge: RTM_DELNEIGH %s not a bridge port\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"br_fdb_delete\00", [18 x i8] zeroinitializer }, align 32
@br_fdb_delete._entry_ptr = internal global ptr @br_fdb_delete._entry, section ".printk_index", align 4
@br_fdb_delete._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.1, i32 1138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016bridge: RTM_DELNEIGH with unconfigured vlan %d on %s\0A\00", [40 x i8] zeroinitializer }, align 32
@br_fdb_delete._entry_ptr.21 = internal global ptr @br_fdb_delete._entry.19, section ".printk_index", align 4
@br_fdb_sync_static.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@br_fdb_sync_static.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_fdb_sync_static.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_fdb_unsync_static.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@br_fdb_unsync_static.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_fdb_clear_offload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_br_fdb_clear_offload = external dso_local constant [0 x i8], align 1
@__kstrtabns_br_fdb_clear_offload = external dso_local constant [0 x i8], align 1
@__ksymtab_br_fdb_clear_offload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @br_fdb_clear_offload to i32), ptr @__kstrtab_br_fdb_clear_offload, ptr @__kstrtabns_br_fdb_clear_offload }, section "___ksymtab_gpl+br_fdb_clear_offload", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@fdb_find_rcu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.28 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_fdb_find.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@nbp_vlan_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"include/trace/events/../../../net/bridge/br_private.h\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@fdb_add_local._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.1, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\014%s: adding interface %s with same address as a received packet (addr:%pM, vlan:%u)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fdb_add_local\00", [18 x i8] zeroinitializer }, align 32
@fdb_add_local._entry_ptr = internal global ptr @fdb_add_local._entry, section ".printk_index", align 4
@fdb_add_hw_addr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@br_vlan_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_fdb_delete = external dso_local global %struct.tracepoint, align 4
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/bridge.h\00", [34 x i8] zeroinitializer }, align 32
@trace_fdb_delete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@fdb_del_hw_addr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.35 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.37 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.39 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@br_port_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_br_fdb_update = external dso_local global %struct.tracepoint, align 4
@trace_br_fdb_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_insert_fast.__warned.41 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__tracepoint_br_fdb_add = external dso_local global %struct.tracepoint, align 4
@trace_br_fdb_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_port_get_rtnl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@__br_fdb_add._entry = internal constant %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.1, i32 967, ptr null, ptr null }, align 1
@.str.43 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016bridge: RTM_NEWNEIGH %s with NTF_USE is not supported\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__br_fdb_add\00", [19 x i8] zeroinitializer }, align 32
@__br_fdb_add._entry_ptr = internal global ptr @__br_fdb_add._entry, section ".printk_index", align 4
@__br_fdb_add.__msg = internal constant [51 x i8] c"bridge: FDB entry towards bridge must be permanent\00", align 1
@fdb_add_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.1, i32 885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016bridge: RTM_NEWNEIGH %s without NUD_PERMANENT\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fdb_add_entry\00", [18 x i8] zeroinitializer }, align 32
@fdb_add_entry._entry_ptr = internal global ptr @fdb_add_entry._entry, section ".printk_index", align 4
@__tracepoint_br_fdb_external_learn_add = external dso_local global %struct.tracepoint, align 4
@trace_br_fdb_external_learn_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 38, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant [18 x i8] c"br_fdb_rht_params\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 27, i32 39 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 246, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 529, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 717, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 829, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1015, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1020, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1030, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant [15 x i8] c"br_nda_fdb_pol\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 994, i32 32 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1051, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1127, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1138, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 695, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 723, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 594, i32 8 }
@___asan_gen_.138 = private unnamed_addr constant [27 x i8] c"../net/bridge/br_private.h\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1477, i32 9 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 423, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [33 x i8] c"../include/trace/events/bridge.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 69, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 108, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 991, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1208, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 966, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private constant [23 x i8] c"../net/bridge/br_fdb.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 884, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__br_fdb_add._entry, ptr @__br_fdb_add._entry_ptr, ptr @__ksymtab_br_fdb_clear_offload, ptr @__ksymtab_br_fdb_find_port, ptr @br_fdb_add._entry, ptr @br_fdb_add._entry.11, ptr @br_fdb_add._entry.14, ptr @br_fdb_add._entry.8, ptr @br_fdb_add._entry_ptr, ptr @br_fdb_add._entry_ptr.10, ptr @br_fdb_add._entry_ptr.13, ptr @br_fdb_add._entry_ptr.16, ptr @br_fdb_delete._entry, ptr @br_fdb_delete._entry.19, ptr @br_fdb_delete._entry_ptr, ptr @br_fdb_delete._entry_ptr.21, ptr @br_fdb_update._entry, ptr @br_fdb_update._entry_ptr, ptr @fdb_add_entry._entry, ptr @fdb_add_entry._entry_ptr, ptr @fdb_add_local._entry, ptr @fdb_add_local._entry_ptr, ptr @.str, ptr @br_fdb_rht_params, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @br_fdb_get.__msg, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @br_nda_fdb_pol, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.42, ptr @nla_parse_nested.__msg, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_fdb_rht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_fdb_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_fdb_get.__msg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_fdb_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_fdb_add._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_fdb_add._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_nda_fdb_pol to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_fdb_add._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_fdb_delete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_fdb_delete._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdb_add_local._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdb_add_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_fdb_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 256, i32 noundef 0, i32 noundef 8192, ptr noundef null) #10
  store ptr %call, ptr @br_fdb_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_fdb_fini() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @br_fdb_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_fdb_hash_init(ptr noundef %br) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fdb_hash_tbl = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 8
  %call = tail call i32 @rhashtable_init(ptr noundef %fdb_hash_tbl, ptr noundef nonnull @br_fdb_rht_params) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_fdb_hash_fini(ptr noundef %br) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fdb_hash_tbl = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 8
  tail call void @rhashtable_destroy(ptr noundef %fdb_hash_tbl) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @br_fdb_find_port(ptr noundef %br_dev, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b55 = load i1, ptr @br_fdb_find_port.__already_done, align 1
  br i1 %.b55, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !170

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_fdb_find_port.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 246, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 246) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %br_dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %1, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end29.cleanup_crit_edge, label %if.end39

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %if.end29
  %2 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !171
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end39.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end39.rcu_read_lock.exit_crit_edge:            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end39
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 696, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end39.rcu_read_lock.exit_crit_edge
  %fdb_hash_tbl.i = getelementptr i8, ptr %br_dev, i32 2412
  %call.i56 = tail call fastcc ptr @fdb_find_rcu(ptr noundef %fdb_hash_tbl.i, ptr noundef %addr, i16 noundef zeroext %vid) #10
  %tobool42.not = icmp eq ptr %call.i56, null
  br i1 %tobool42.not, label %rcu_read_lock.exit.if.end47_crit_edge, label %land.lhs.true

rcu_read_lock.exit.if.end47_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %dst = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call.i56, i32 0, i32 1
  %6 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dst, align 4
  %tobool43.not = icmp eq ptr %7, null
  br i1 %tobool43.not, label %land.lhs.true.if.end47_crit_edge, label %if.then44

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then44:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %dev46 = getelementptr inbounds %struct.net_bridge_port, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev46, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %land.lhs.true.if.end47_crit_edge, %rcu_read_lock.exit.if.end47_crit_edge
  %dev.0 = phi ptr [ %9, %if.then44 ], [ null, %land.lhs.true.if.end47_crit_edge ], [ null, %rcu_read_lock.exit.if.end47_crit_edge ]
  %call.i57 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i57, label %if.end47.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i60

if.end47.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i60:                                ; preds = %if.end47
  %call1.i58 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58)
  %tobool.not.i59 = icmp eq i32 %call1.i58, 0
  br i1 %tobool.not.i59, label %land.lhs.true.i60.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i62

land.lhs.true.i60.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i62:                               ; preds = %land.lhs.true.i60
  %.b4.i61 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i61, label %land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge, label %if.then.i63

land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i63:                                      ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.25) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i63, %land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i60.rcu_read_unlock.exit_crit_edge, %if.end47.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !172
  %10 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i64 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i64 to ptr
  %preempt_count.i.i.i.i65 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i65, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i65, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end29.cleanup_crit_edge
  %retval.0 = phi ptr [ %dev.0, %rcu_read_unlock.exit ], [ null, %if.end29.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @br_fdb_find_rcu(ptr noundef %br, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fdb_hash_tbl = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 8
  %call = tail call fastcc ptr @fdb_find_rcu(ptr noundef %fdb_hash_tbl, ptr noundef %addr, i16 noundef zeroext %vid)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fdb_find_rcu(ptr noundef %tbl, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) unnamed_addr #2 align 64 {
entry:
  %key = alloca %struct.net_bridge_fdb_key, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #10
  %0 = getelementptr inbounds [6 x i8], ptr %key, i32 0, i32 4
  %1 = getelementptr inbounds %struct.net_bridge_fdb_key, ptr %key, i32 0, i32 1
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b48 = load i1, ptr @fdb_find_rcu.__already_done, align 1
  br i1 %.b48, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !170

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @fdb_find_rcu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 214, i32 noundef 9, ptr noundef null) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %vid, ptr %1, align 2
  %3 = call ptr @memcpy(ptr %key, ptr %addr, i32 6)
  %4 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %tbl, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %tbl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end29.do.end12.i.i_crit_edge

if.end29.do.end12.i.i_crit_edge:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %if.end29
  %call5.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b92.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 594, ptr noundef nonnull @.str.27) #10
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %if.end29.do.end12.i.i_crit_edge
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %tbl, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %0, align 4
  %8 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key, align 4
  %key_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %tbl, i32 0, i32 3, i32 2
  %key_len.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %tbl, i32 0, i32 3, i32 1
  br label %restart.i.i

restart.i.i:                                      ; preds = %do.end60.i.i.restart.i.i_crit_edge, %do.end12.i.i
  %tbl.0.i.i = phi ptr [ %5, %do.end12.i.i ], [ %32, %do.end60.i.i.restart.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_rnd.i.i.i, align 8
  %add1.i.i.i.i.i = add i32 %11, -559038729
  %add33.i.i.i.i.i = add i32 %7, %add1.i.i.i.i.i
  %add36.i.i.i.i.i = add i32 %9, %add1.i.i.i.i.i
  %xor37.i.i.i.i.i = xor i32 %add33.i.i.i.i.i, %add1.i.i.i.i.i
  %or.i140.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add33.i.i.i.i.i, i32 %add33.i.i.i.i.i, i32 14) #10
  %sub39.i.i.i.i.i = sub i32 %xor37.i.i.i.i.i, %or.i140.i.i.i.i.i
  %xor40.i.i.i.i.i = xor i32 %sub39.i.i.i.i.i, %add36.i.i.i.i.i
  %or.i141.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i, i32 %sub39.i.i.i.i.i, i32 11) #10
  %sub42.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i, %or.i141.i.i.i.i.i
  %xor43.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i, %add33.i.i.i.i.i
  %or.i142.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i, i32 %sub42.i.i.i.i.i, i32 25) #10
  %sub45.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i, %or.i142.i.i.i.i.i
  %xor46.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i, %sub39.i.i.i.i.i
  %or.i143.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i, i32 %sub45.i.i.i.i.i, i32 16) #10
  %sub48.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i, %or.i143.i.i.i.i.i
  %xor49.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i, %sub42.i.i.i.i.i
  %or.i144.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i, i32 %sub48.i.i.i.i.i, i32 4) #10
  %sub51.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i, %or.i144.i.i.i.i.i
  %xor52.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i, %sub45.i.i.i.i.i
  %or.i145.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i, i32 %sub51.i.i.i.i.i, i32 14) #10
  %sub54.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i, %or.i145.i.i.i.i.i
  %xor55.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i, %sub48.i.i.i.i.i
  %or.i146.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i, i32 %sub54.i.i.i.i.i, i32 24) #10
  %sub57.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i, %or.i146.i.i.i.i.i
  %12 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i = add i32 %13, -1
  %and.i3.i.i.i = and i32 %sub57.i.i.i.i.i, %sub.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i, !prof !170

cond.true.i.i.i:                                  ; preds = %restart.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i) #10
  br label %rht_bucket.exit.i.i

cond.false.i.i.i:                                 ; preds = %restart.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket.exit.i.i

rht_bucket.exit.i.i:                              ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi ptr [ %call.i.i.i, %cond.true.i.i.i ], [ %arrayidx.i.i.i, %cond.false.i.i.i ]
  %16 = ptrtoint ptr %cond.i.i.i to i32
  %or.i.i.i.i = or i32 %16, 1
  %17 = inttoptr i32 %or.i.i.i.i to ptr
  br label %do.body16.i.i

do.body16.i.i:                                    ; preds = %do.cond34.i.i.do.body16.i.i_crit_edge, %rht_bucket.exit.i.i
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !173
  %18 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %cond.i.i.i, align 4
  %call.i93.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i)
  %tobool.not.i94.i.i = icmp eq i32 %call.i93.i.i, 0
  br i1 %tobool.not.i94.i.i, label %land.lhs.true.i.i.i, label %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge

do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge:     ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body16.i.i
  %call2.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b11.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i, label %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr_rcu.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 369, ptr noundef nonnull @.str.27) #10
  br label %rht_ptr_rcu.exit.i.i

rht_ptr_rcu.exit.i.i:                             ; preds = %if.then.i.i.i, %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge
  %20 = ptrtoint ptr %19 to i32
  %and.i.i95.i.i = and i32 %20, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i)
  %tobool.not.i.i96.i.i = icmp eq i32 %and.i.i95.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i96.i.i, i32 %or.i.i.i.i, i32 %and.i.i95.i.i
  %21 = inttoptr i32 %cond.i.i.i.i to ptr
  %and.i106.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i)
  %tobool.i.not107.i.i = icmp eq i32 %and.i106.i.i, 0
  br i1 %tobool.i.not107.i.i, label %for.body.i.i.preheader, label %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge

rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge:     ; preds = %rht_ptr_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond34.i.i

for.body.i.i.preheader:                           ; preds = %rht_ptr_rcu.exit.i.i
  %22 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i98.i.i = zext i16 %23 to i32
  %idx.neg.i99.i.i = sub nsw i32 0, %conv.i98.i.i
  %24 = ptrtoint ptr %key_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %key_offset.i.i.i, align 4
  %conv.i101.i.i = zext i16 %25 to i32
  %26 = ptrtoint ptr %key_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %key_len.i.i.i, align 2
  %conv3.i.i.i = zext i16 %27 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %he.0108.i.i = phi ptr [ %29, %for.inc.i.i.for.body.i.i_crit_edge ], [ %21, %for.body.i.i.preheader ]
  %add.ptr.i100.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i99.i.i
  %add.ptr.i102.i.i = getelementptr i8, ptr %add.ptr.i100.i.i, i32 %conv.i101.i.i
  %bcmp.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i, ptr nonnull %key, i32 %conv3.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool26.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool26.not.i.i, label %__rhashtable_lookup.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %28 = ptrtoint ptr %he.0108.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %he.0108.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  %and.i.i.i = and i32 %30, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.cond34.i.i_crit_edge

for.inc.i.i.do.cond34.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond34.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

do.cond34.i.i:                                    ; preds = %for.inc.i.i.do.cond34.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge
  %he.0.lcssa.i.i = phi ptr [ %21, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge ], [ %29, %for.inc.i.i.do.cond34.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %he.0.lcssa.i.i, %17
  br i1 %cmp.not.i.i, label %do.end39.i.i, label %do.cond34.i.i.do.body16.i.i_crit_edge

do.cond34.i.i.do.body16.i.i_crit_edge:            ; preds = %do.cond34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16.i.i

do.end39.i.i:                                     ; preds = %do.cond34.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !174
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %31 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call47.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %tbl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %lor.lhs.false49.i.i, label %do.end39.i.i.do.end60.i.i_crit_edge

do.end39.i.i.do.end60.i.i_crit_edge:              ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60.i.i

lor.lhs.false49.i.i:                              ; preds = %do.end39.i.i
  %call50.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool51.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool51.not.i.i, label %land.lhs.true52.i.i, label %lor.lhs.false49.i.i.do.end60.i.i_crit_edge

lor.lhs.false49.i.i.do.end60.i.i_crit_edge:       ; preds = %lor.lhs.false49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60.i.i

land.lhs.true52.i.i:                              ; preds = %lor.lhs.false49.i.i
  %call53.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %land.lhs.true52.i.i.do.end60.i.i_crit_edge, label %land.lhs.true55.i.i

land.lhs.true52.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60.i.i

land.lhs.true55.i.i:                              ; preds = %land.lhs.true52.i.i
  %.b9091.i.i = load i1, ptr @__rhashtable_lookup.__warned.28, align 1
  br i1 %.b9091.i.i, label %land.lhs.true55.i.i.do.end60.i.i_crit_edge, label %if.then57.i.i

land.lhs.true55.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60.i.i

if.then57.i.i:                                    ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_lookup.__warned.28, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 614, ptr noundef nonnull @.str.27) #10
  br label %do.end60.i.i

do.end60.i.i:                                     ; preds = %if.then57.i.i, %land.lhs.true55.i.i.do.end60.i.i_crit_edge, %land.lhs.true52.i.i.do.end60.i.i_crit_edge, %lor.lhs.false49.i.i.do.end60.i.i_crit_edge, %do.end39.i.i.do.end60.i.i_crit_edge
  %tobool62.not.i.i = icmp eq ptr %32, null
  br i1 %tobool62.not.i.i, label %do.end60.i.i.rhashtable_lookup.exit_crit_edge, label %do.end60.i.i.restart.i.i_crit_edge, !prof !170

do.end60.i.i.restart.i.i_crit_edge:               ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %restart.i.i

do.end60.i.i.rhashtable_lookup.exit_crit_edge:    ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rhashtable_lookup.exit

__rhashtable_lookup.exit.i:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not.i = icmp eq ptr %he.0108.i.i, null
  %spec.select = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i100.i.i
  br label %rhashtable_lookup.exit

rhashtable_lookup.exit:                           ; preds = %__rhashtable_lookup.exit.i, %do.end60.i.i.rhashtable_lookup.exit_crit_edge
  %cond.i = phi ptr [ %spec.select, %__rhashtable_lookup.exit.i ], [ null, %do.end60.i.i.rhashtable_lookup.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #10
  ret ptr %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_fdb_find_delete_local(ptr noundef %br, ptr noundef %p, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_lock = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %hash_lock) #10
  %call = tail call fastcc ptr @br_fdb_find(ptr noundef %br, ptr noundef %addr, i16 noundef zeroext %vid)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool6.not = icmp eq i32 %4, 0
  br i1 %tobool6.not, label %land.lhs.true7, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true3
  %dst = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dst, align 4
  %cmp = icmp eq ptr %6, %p
  br i1 %cmp, label %if.then, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fdb_delete_local(ptr noundef %br, ptr noundef %p, ptr noundef nonnull %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true7.if.end_crit_edge, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %hash_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @br_fdb_find(ptr noundef %br, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end32_crit_edge, label %land.rhs

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 1, i32 0, i32 0, i32 4
  %call.i48 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp.not = icmp eq i32 %call.i48, 0
  br i1 %cmp.not, label %land.rhs4, label %land.rhs.if.end32_crit_edge

land.rhs.if.end32_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

land.rhs4:                                        ; preds = %land.rhs
  %.b46 = load i1, ptr @br_fdb_find.__already_done, align 1
  br i1 %.b46, label %land.rhs4.if.end32_crit_edge, label %if.then, !prof !170

land.rhs4.if.end32_crit_edge:                     ; preds = %land.rhs4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then:                                          ; preds = %land.rhs4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_fdb_find.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 229, i32 noundef 9, ptr noundef null) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then, %land.rhs4.if.end32_crit_edge, %land.rhs.if.end32_crit_edge, %entry.if.end32_crit_edge
  %1 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !171
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end32.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end32.rcu_read_lock.exit_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end32
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 696, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end32.rcu_read_lock.exit_crit_edge
  %fdb_hash_tbl = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 8
  %call42 = tail call fastcc ptr @fdb_find_rcu(ptr noundef %fdb_hash_tbl, ptr noundef %addr, i16 noundef zeroext %vid)
  %call.i49 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i49, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i52

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i52:                                ; preds = %rcu_read_lock.exit
  %call1.i50 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50)
  %tobool.not.i51 = icmp eq i32 %call1.i50, 0
  br i1 %tobool.not.i51, label %land.lhs.true.i52.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i54

land.lhs.true.i52.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i54:                               ; preds = %land.lhs.true.i52
  %.b4.i53 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i53, label %land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge, label %if.then.i55

land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i55:                                      ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.25) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i55, %land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i52.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !172
  %5 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i56 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i56 to ptr
  %preempt_count.i.i.i.i57 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i57, align 4
  %sub.i.i.i = add i32 %8, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i57, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %call42
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fdb_delete_local(ptr noundef %br, ptr noundef readnone %p, ptr noundef %f) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %key = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f, i32 0, i32 2
  %vlan_id = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vlan_id, align 2
  %port_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  %2 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn74 = load ptr, ptr %port_list, align 4
  %cmp.not76 = icmp eq ptr %.pn74, %port_list
  br i1 %cmp.not76, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr1.i = getelementptr %struct.net_bridge_fdb_entry, ptr %f, i32 0, i32 2, i32 0, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn77 = phi ptr [ %.pn74, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %op.078 = getelementptr i8, ptr %.pn77, i32 -12
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i, label %for.body.nbp_vlan_group.exit_crit_edge, label %land.lhs.true.i

for.body.nbp_vlan_group.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %nbp_vlan_group.exit

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.nbp_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nbp_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.nbp_vlan_group.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nbp_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 1477, ptr noundef nonnull @.str.30) #10
  br label %nbp_vlan_group.exit

nbp_vlan_group.exit:                              ; preds = %if.then.i, %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, %for.body.nbp_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr i8, ptr %.pn77, i32 12
  %3 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vlgrp.i, align 8
  %cmp5.not = icmp eq ptr %op.078, %p
  br i1 %cmp5.not, label %nbp_vlan_group.exit.for.inc_crit_edge, label %land.lhs.true

nbp_vlan_group.exit.for.inc_crit_edge:            ; preds = %nbp_vlan_group.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %nbp_vlan_group.exit
  %dev = getelementptr i8, ptr %.pn77, i32 -8
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %key, align 4
  %xor.i = xor i32 %12, %10
  %add.ptr.i = getelementptr i8, ptr %8, i32 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i, align 2
  %15 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %16, %14
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %land.lhs.true7, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true7:                                   ; preds = %land.lhs.true
  br i1 %tobool.not, label %land.lhs.true7.if.then_crit_edge, label %lor.lhs.false

land.lhs.true7.if.then_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true7
  %call8 = tail call ptr @br_vlan_find(ptr noundef %4, i16 noundef zeroext %1) #10
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true7.if.then_crit_edge
  %dst = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f, i32 0, i32 1
  %17 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %op.078, ptr %dst, align 4
  %flags = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #10
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %nbp_vlan_group.exit.for.inc_crit_edge
  %18 = ptrtoint ptr %.pn77 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn77, align 4
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %call.i58 = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i58, label %for.end.br_vlan_group.exit_crit_edge, label %land.lhs.true.i61

for.end.br_vlan_group.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_vlan_group.exit

land.lhs.true.i61:                                ; preds = %for.end
  %call1.i59 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i59)
  %tobool.not.i60 = icmp eq i32 %call1.i59, 0
  br i1 %tobool.not.i60, label %land.lhs.true.i61.br_vlan_group.exit_crit_edge, label %land.lhs.true2.i63

land.lhs.true.i61.br_vlan_group.exit_crit_edge:   ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_vlan_group.exit

land.lhs.true2.i63:                               ; preds = %land.lhs.true.i61
  %.b4.i62 = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i62, label %land.lhs.true2.i63.br_vlan_group.exit_crit_edge, label %if.then.i64

land.lhs.true2.i63.br_vlan_group.exit_crit_edge:  ; preds = %land.lhs.true2.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_vlan_group.exit

if.then.i64:                                      ; preds = %land.lhs.true2.i63
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 1471, ptr noundef nonnull @.str.30) #10
  br label %br_vlan_group.exit

br_vlan_group.exit:                               ; preds = %if.then.i64, %land.lhs.true2.i63.br_vlan_group.exit_crit_edge, %land.lhs.true.i61.br_vlan_group.exit_crit_edge, %for.end.br_vlan_group.exit_crit_edge
  %vlgrp.i65 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 7
  %19 = ptrtoint ptr %vlgrp.i65 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vlgrp.i65, align 4
  %call16 = tail call ptr @br_vlan_find(ptr noundef %20, i16 noundef zeroext %1) #10
  %tobool17.not = icmp eq ptr %p, null
  br i1 %tobool17.not, label %br_vlan_group.exit.if.end31_crit_edge, label %land.lhs.true18

br_vlan_group.exit.if.end31_crit_edge:            ; preds = %br_vlan_group.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true18:                                  ; preds = %br_vlan_group.exit
  %dev19 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %21 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev19, align 4
  %dev_addr20 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 86
  %23 = ptrtoint ptr %dev_addr20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_addr20, align 64
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %27 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %key, align 4
  %xor.i66 = xor i32 %28, %26
  %add.ptr.i67 = getelementptr i8, ptr %24, i32 4
  %29 = ptrtoint ptr %add.ptr.i67 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i67, align 2
  %add.ptr1.i68 = getelementptr %struct.net_bridge_fdb_entry, ptr %f, i32 0, i32 2, i32 0, i32 0, i32 4
  %31 = ptrtoint ptr %add.ptr1.i68 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr1.i68, align 2
  %xor37.i69 = xor i16 %32, %30
  %xor3.i70 = zext i16 %xor37.i69 to i32
  %or.i71 = or i32 %xor.i66, %xor3.i70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i71)
  %cmp.i72 = icmp eq i32 %or.i71, 0
  br i1 %cmp.i72, label %land.lhs.true22, label %land.lhs.true18.if.end31_crit_edge

land.lhs.true18.if.end31_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true22:                                  ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool23.not = icmp eq i16 %1, 0
  br i1 %tobool23.not, label %land.lhs.true22.if.then28_crit_edge, label %lor.lhs.false24

land.lhs.true22.if.then28_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

lor.lhs.false24:                                  ; preds = %land.lhs.true22
  %tobool25.not = icmp eq ptr %call16, null
  br i1 %tobool25.not, label %lor.lhs.false24.if.end31_crit_edge, label %land.lhs.true26

lor.lhs.false24.if.end31_crit_edge:               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true26:                                  ; preds = %lor.lhs.false24
  %flags.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call16, i32 0, i32 3
  %33 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %flags.i.i, align 2
  %35 = and i16 %34, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %35)
  %.not = icmp eq i16 %35, 1
  br i1 %.not, label %land.lhs.true26.if.end31_crit_edge, label %land.lhs.true26.if.then28_crit_edge

land.lhs.true26.if.then28_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

land.lhs.true26.if.end31_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then28:                                        ; preds = %land.lhs.true26.if.then28_crit_edge, %land.lhs.true22.if.then28_crit_edge
  %dst29 = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f, i32 0, i32 1
  %36 = ptrtoint ptr %dst29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %dst29, align 4
  %flags30 = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags30) #10
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true26.if.end31_crit_edge, %lor.lhs.false24.if.end31_crit_edge, %land.lhs.true18.if.end31_crit_edge, %br_vlan_group.exit.if.end31_crit_edge
  tail call fastcc void @fdb_delete(ptr noundef %br, ptr noundef %f, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then28, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_fdb_changeaddr(ptr noundef %p, ptr noundef %newaddr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %hash_lock = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %hash_lock) #10
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i, label %entry.nbp_vlan_group.exit_crit_edge, label %land.lhs.true.i

entry.nbp_vlan_group.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nbp_vlan_group.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.nbp_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nbp_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.nbp_vlan_group.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nbp_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 1477, ptr noundef nonnull @.str.30) #10
  br label %nbp_vlan_group.exit

nbp_vlan_group.exit:                              ; preds = %if.then.i, %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, %entry.nbp_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 5
  %2 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vlgrp.i, align 8
  %fdb_list = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 46
  %4 = ptrtoint ptr %fdb_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fdb_list, align 4
  %tobool.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -16
  %tobool3.not8389 = icmp eq ptr %add.ptr, null
  %tobool3.not83 = or i1 %tobool.not, %tobool3.not8389
  br i1 %tobool3.not83, label %nbp_vlan_group.exit.insert_crit_edge, label %for.body.lr.ph

nbp_vlan_group.exit.insert_crit_edge:             ; preds = %nbp_vlan_group.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %insert

for.body.lr.ph:                                   ; preds = %nbp_vlan_group.exit
  %tobool10.not = icmp eq ptr %3, null
  %num_vlans = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %3, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %f.084 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr20, %for.inc.for.body_crit_edge ]
  %dst = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.084, i32 0, i32 1
  %6 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dst, align 4
  %cmp = icmp eq ptr %7, %p
  br i1 %cmp, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %flags = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.084, i32 0, i32 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  br i1 %tobool5.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true6

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true6:                                   ; preds = %land.lhs.true
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not = icmp eq i32 %12, 0
  br i1 %tobool9.not, label %if.then, label %land.lhs.true6.for.inc_crit_edge

land.lhs.true6.for.inc_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true6
  tail call fastcc void @fdb_delete_local(ptr noundef %1, ptr noundef %p, ptr noundef nonnull %f.084)
  br i1 %tobool10.not, label %insert.thread, label %lor.lhs.false

insert.thread:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call2477 = tail call fastcc i32 @fdb_add_local(ptr noundef %1, ptr noundef %p, ptr noundef %newaddr, i16 noundef zeroext 0)
  br label %done

lor.lhs.false:                                    ; preds = %if.then
  %13 = ptrtoint ptr %num_vlans to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_vlans, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool11.not = icmp eq i16 %14, 0
  br i1 %tobool11.not, label %insert.thread79, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

insert.thread79:                                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call2480 = tail call fastcc i32 @fdb_add_local(ptr noundef %1, ptr noundef %p, ptr noundef %newaddr, i16 noundef zeroext 0)
  br label %lor.lhs.false26

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %land.lhs.true6.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %fdb_node = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.084, i32 0, i32 3
  %15 = ptrtoint ptr %fdb_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fdb_node, align 16
  %tobool16.not = icmp eq ptr %16, null
  %add.ptr20 = getelementptr i8, ptr %16, i32 -16
  %tobool3.not90 = icmp eq ptr %add.ptr20, null
  %tobool3.not = or i1 %tobool16.not, %tobool3.not90
  br i1 %tobool3.not, label %for.inc.insert_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.insert_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %insert

insert:                                           ; preds = %for.inc.insert_crit_edge, %nbp_vlan_group.exit.insert_crit_edge
  %call24 = tail call fastcc i32 @fdb_add_local(ptr noundef %1, ptr noundef %p, ptr noundef %newaddr, i16 noundef zeroext 0)
  %tobool25.not = icmp eq ptr %3, null
  br i1 %tobool25.not, label %insert.done_crit_edge, label %insert.lor.lhs.false26_crit_edge

insert.lor.lhs.false26_crit_edge:                 ; preds = %insert
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false26

insert.done_crit_edge:                            ; preds = %insert
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

lor.lhs.false26:                                  ; preds = %insert.lor.lhs.false26_crit_edge, %insert.thread79
  %num_vlans27 = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %num_vlans27 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_vlans27, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool28.not = icmp eq i16 %18, 0
  br i1 %tobool28.not, label %lor.lhs.false26.done_crit_edge, label %if.end30

lor.lhs.false26.done_crit_edge:                   ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end30:                                         ; preds = %lor.lhs.false26
  %vlan_list = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn86 = load ptr, ptr %vlan_list, align 4
  %cmp37.not87 = icmp eq ptr %.pn86, %vlan_list
  br i1 %cmp37.not87, label %if.end30.done_crit_edge, label %if.end30.for.body38_crit_edge

if.end30.for.body38_crit_edge:                    ; preds = %if.end30
  br label %for.body38

if.end30.done_crit_edge:                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

for.body38:                                       ; preds = %for.body38.for.body38_crit_edge, %if.end30.for.body38_crit_edge
  %.pn88 = phi ptr [ %.pn, %for.body38.for.body38_crit_edge ], [ %.pn86, %if.end30.for.body38_crit_edge ]
  %vid = getelementptr i8, ptr %.pn88, i32 -548
  %20 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vid, align 8
  %call39 = tail call fastcc i32 @fdb_add_local(ptr noundef %1, ptr noundef %p, ptr noundef %newaddr, i16 noundef zeroext %21)
  %22 = ptrtoint ptr %.pn88 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn88, align 4
  %cmp37.not = icmp eq ptr %.pn, %vlan_list
  br i1 %cmp37.not, label %for.body38.done_crit_edge, label %for.body38.for.body38_crit_edge

for.body38.for.body38_crit_edge:                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38

for.body38.done_crit_edge:                        ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

done:                                             ; preds = %for.body38.done_crit_edge, %if.end30.done_crit_edge, %lor.lhs.false26.done_crit_edge, %insert.done_crit_edge, %insert.thread
  tail call void @_raw_spin_unlock_bh(ptr noundef %hash_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fdb_add_local(ptr noundef %br, ptr noundef %source, ptr noundef %addr, i16 noundef zeroext %vid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %addr, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %call1 = tail call fastcc ptr @br_fdb_find(ptr noundef %br, ptr noundef %addr, i16 noundef zeroext %vid)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %if.then2

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then2:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call1, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool4.not = icmp eq i32 %and1.i, 0
  br i1 %tobool4.not, label %do.end, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then2
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %tobool7.not = icmp eq ptr %source, null
  br i1 %tobool7.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev8 = getelementptr inbounds %struct.net_bridge_port, ptr %source, i32 0, i32 1
  %9 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev8, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi ptr [ %10, %cond.true ], [ %8, %do.end.cond.end_crit_edge ]
  %conv = zext i16 %vid to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %8, ptr noundef %cond, ptr noundef %addr, i32 noundef %conv) #14
  tail call fastcc void @fdb_delete(ptr noundef %br, ptr noundef nonnull %call1, i1 noundef zeroext true)
  br label %if.end15

if.end15:                                         ; preds = %cond.end, %if.end.if.end15_crit_edge
  %call16 = tail call fastcc ptr @fdb_create(ptr noundef %br, ptr noundef %source, ptr noundef %addr, i16 noundef zeroext %vid, i32 noundef 3)
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fdb_add_hw_addr(ptr noundef %br, ptr noundef %addr)
  tail call fastcc void @fdb_notify(ptr noundef %br, ptr noundef nonnull %call16, i32 noundef 28, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end15.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -22, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_fdb_change_mac_address(ptr noundef %br, ptr noundef %newaddr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_lock = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %hash_lock) #10
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %call = tail call fastcc ptr @br_fdb_find(ptr noundef %br, ptr noundef %3, i16 noundef zeroext 0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %dst = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dst, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %land.lhs.true5, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %if.then, label %land.lhs.true5.if.end_crit_edge

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fdb_delete_local(ptr noundef %br, ptr noundef null, ptr noundef nonnull %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true5.if.end_crit_edge, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call9 = tail call fastcc i32 @fdb_add_local(ptr noundef %br, ptr noundef null, ptr noundef %newaddr, i16 noundef zeroext 0)
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i, label %if.end.br_vlan_group.exit_crit_edge, label %land.lhs.true.i

if.end.br_vlan_group.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_vlan_group.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.br_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.br_vlan_group.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.br_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.br_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 1471, ptr noundef nonnull @.str.30) #10
  br label %br_vlan_group.exit

br_vlan_group.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.br_vlan_group.exit_crit_edge, %land.lhs.true.i.br_vlan_group.exit_crit_edge, %if.end.br_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 7
  %11 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vlgrp.i, align 4
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %br_vlan_group.exit.out_crit_edge, label %lor.lhs.false

br_vlan_group.exit.out_crit_edge:                 ; preds = %br_vlan_group.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false:                                    ; preds = %br_vlan_group.exit
  %num_vlans = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %num_vlans to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_vlans, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool12.not = icmp eq i16 %14, 0
  br i1 %tobool12.not, label %lor.lhs.false.out_crit_edge, label %if.end14

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end14:                                         ; preds = %lor.lhs.false
  %vlan_list = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn75 = load ptr, ptr %vlan_list, align 4
  %cmp.not76 = icmp eq ptr %.pn75, %vlan_list
  br i1 %cmp.not76, label %if.end14.out_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  br label %for.body

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end14.for.body_crit_edge
  %.pn77 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn75, %if.end14.for.body_crit_edge ]
  %flags.i.i = getelementptr i8, ptr %.pn77, i32 -546
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags.i.i, align 2
  %18 = and i16 %17, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %18)
  %.not = icmp eq i16 %18, 1
  br i1 %.not, label %for.body.for.inc_crit_edge, label %if.end18

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end18:                                         ; preds = %for.body
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %dev_addr20 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 86
  %21 = ptrtoint ptr %dev_addr20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_addr20, align 64
  %vid = getelementptr i8, ptr %.pn77, i32 -548
  %23 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vid, align 8
  %call21 = tail call fastcc ptr @br_fdb_find(ptr noundef %br, ptr noundef %22, i16 noundef zeroext %24)
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end18.if.end35_crit_edge, label %land.lhs.true23

if.end18.if.end35_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

land.lhs.true23:                                  ; preds = %if.end18
  %flags24 = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call21, i32 0, i32 4
  %25 = ptrtoint ptr %flags24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags24, align 4
  %and1.i72 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i72)
  %tobool26.not = icmp eq i32 %and1.i72, 0
  br i1 %tobool26.not, label %land.lhs.true23.if.end35_crit_edge, label %land.lhs.true27

land.lhs.true23.if.end35_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

land.lhs.true27:                                  ; preds = %land.lhs.true23
  %dst28 = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call21, i32 0, i32 1
  %27 = ptrtoint ptr %dst28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dst28, align 4
  %tobool29.not = icmp eq ptr %28, null
  br i1 %tobool29.not, label %land.lhs.true30, label %land.lhs.true27.if.end35_crit_edge

land.lhs.true27.if.end35_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %29 = ptrtoint ptr %flags24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags24, align 4
  %31 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool33.not = icmp eq i32 %31, 0
  br i1 %tobool33.not, label %if.then34, label %land.lhs.true30.if.end35_crit_edge

land.lhs.true30.if.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then34:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fdb_delete_local(ptr noundef %br, ptr noundef null, ptr noundef nonnull %call21)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %land.lhs.true30.if.end35_crit_edge, %land.lhs.true27.if.end35_crit_edge, %land.lhs.true23.if.end35_crit_edge, %if.end18.if.end35_crit_edge
  %32 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vid, align 8
  %call37 = tail call fastcc i32 @fdb_add_local(ptr noundef %br, ptr noundef null, ptr noundef %newaddr, i16 noundef zeroext %33)
  br label %for.inc

for.inc:                                          ; preds = %if.end35, %for.body.for.inc_crit_edge
  %34 = ptrtoint ptr %.pn77 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn = load ptr, ptr %.pn77, align 4
  %cmp.not = icmp eq ptr %.pn, %vlan_list
  br i1 %cmp.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.end14.out_crit_edge, %lor.lhs.false.out_crit_edge, %br_vlan_group.exit.out_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %hash_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_fdb_cleanup(ptr noundef %work) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1788
  %topology_change.i = getelementptr i8, ptr %work, i32 -1264
  %0 = ptrtoint ptr %topology_change.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %topology_change.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i124 = icmp eq i8 %1, 0
  %cond.in.i.v = select i1 %tobool.not.i124, i32 -1248, i32 -1252
  %cond.in.i = getelementptr i8, ptr %work, i32 %cond.in.i.v
  %2 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond.i = load i32, ptr %cond.in.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %4 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !171
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 696, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b118 = load i1, ptr @br_fdb_cleanup.__warned, align 1
  br i1 %.b118, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_fdb_cleanup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 529, ptr noundef nonnull @.str.3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %fdb_list = getelementptr i8, ptr %work, i32 116
  %8 = ptrtoint ptr %fdb_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %fdb_list, align 4
  %tobool12.not = icmp eq ptr %9, null
  %add.ptr15 = getelementptr i8, ptr %9, i32 -16
  %tobool16.not138144 = icmp eq ptr %add.ptr15, null
  %tobool16.not138 = or i1 %tobool12.not, %tobool16.not138144
  br i1 %tobool16.not138, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %hash_lock = getelementptr i8, ptr %work, i32 -1744
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %f.0141 = phi ptr [ %add.ptr15, %for.body.lr.ph ], [ %add.ptr72, %cleanup.for.body_crit_edge ]
  %work_delay.0139 = phi i32 [ %cond.i, %for.body.lr.ph ], [ %work_delay.3, %cleanup.for.body_crit_edge ]
  %updated = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.0141, i32 0, i32 6
  %10 = ptrtoint ptr %updated to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %updated, align 128
  %add = add i32 %11, %cond.i
  %flags = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.0141, i32 0, i32 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool18.not = icmp eq i32 %14, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %for.body.if.then22_crit_edge

for.body.if.then22_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

lor.lhs.false:                                    ; preds = %for.body
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags, align 4
  %17 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not = icmp eq i32 %17, 0
  br i1 %tobool21.not, label %if.end42, label %lor.lhs.false.if.then22_crit_edge

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %for.body.if.then22_crit_edge
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %20 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool25.not = icmp eq i32 %20, 0
  br i1 %tobool25.not, label %if.then22.cleanup_crit_edge, label %if.then26

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then26:                                        ; preds = %if.then22
  %sub = sub i32 %3, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %sub28 = sub i32 %add, %3
  %21 = tail call i32 @llvm.umin.i32(i32 %work_delay.0139, i32 %sub28)
  br label %cleanup

if.else:                                          ; preds = %if.then26
  %call36 = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fdb_notify(ptr noundef %add.ptr, ptr noundef nonnull %f.0141, i32 noundef 28, i1 noundef zeroext false)
  br label %cleanup

if.end42:                                         ; preds = %lor.lhs.false
  %sub43 = sub i32 %3, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub43)
  %cmp44 = icmp slt i32 %sub43, 0
  br i1 %cmp44, label %if.then45, label %if.else53

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %sub46 = sub i32 %add, %3
  %22 = tail call i32 @llvm.umin.i32(i32 %work_delay.0139, i32 %sub46)
  br label %cleanup

if.else53:                                        ; preds = %if.end42
  tail call void @_raw_spin_lock_bh(ptr noundef %hash_lock) #10
  %pprev.i = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.0141, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i125.not = icmp eq ptr %24, null
  br i1 %tobool.not.i125.not, label %if.else53.if.end57_crit_edge, label %if.then56

if.else53.if.end57_crit_edge:                     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then56:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fdb_delete(ptr noundef %add.ptr, ptr noundef nonnull %f.0141, i1 noundef zeroext true)
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.else53.if.end57_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %hash_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.then45, %if.then38, %if.else.cleanup_crit_edge, %if.then27, %if.then22.cleanup_crit_edge
  %work_delay.3 = phi i32 [ %21, %if.then27 ], [ %work_delay.0139, %if.else.cleanup_crit_edge ], [ %work_delay.0139, %if.then38 ], [ %work_delay.0139, %if.then22.cleanup_crit_edge ], [ %22, %if.then45 ], [ %work_delay.0139, %if.end57 ]
  %fdb_node65 = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.0141, i32 0, i32 3
  %25 = ptrtoint ptr %fdb_node65 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %fdb_node65, align 16
  %tobool68.not = icmp eq ptr %26, null
  %add.ptr72 = getelementptr i8, ptr %26, i32 -16
  %tobool16.not145 = icmp eq ptr %add.ptr72, null
  %tobool16.not = or i1 %tobool68.not, %tobool16.not145
  br i1 %tobool16.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.end.for.end_crit_edge
  %work_delay.0.lcssa = phi i32 [ %cond.i, %do.end.for.end_crit_edge ], [ %work_delay.3, %cleanup.for.end_crit_edge ]
  %call.i126 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i126, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i129

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i129:                               ; preds = %for.end
  %call1.i127 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i127)
  %tobool.not.i128 = icmp eq i32 %call1.i127, 0
  br i1 %tobool.not.i128, label %land.lhs.true.i129.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i131

land.lhs.true.i129.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i129
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i131:                              ; preds = %land.lhs.true.i129
  %.b4.i130 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i130, label %land.lhs.true2.i131.rcu_read_unlock.exit_crit_edge, label %if.then.i132

land.lhs.true2.i131.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i131
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i132:                                     ; preds = %land.lhs.true2.i131
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.25) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i132, %land.lhs.true2.i131.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i129.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !172
  %27 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i133 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i133 to ptr
  %preempt_count.i.i.i.i134 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i134 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i134, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i134, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %31 = tail call i32 @llvm.umax.i32(i32 %work_delay.0.lcssa, i32 1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %32 = load ptr, ptr @system_long_wq, align 4
  %call.i135 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %work, i32 noundef %31) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fdb_notify(ptr noundef %br, ptr noundef %fdb, i32 noundef %type, i1 noundef zeroext %swdev_notify) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  br i1 %swdev_notify, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @br_switchdev_fdb_notify(ptr noundef %br, ptr noundef %fdb, i32 noundef %type) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 88, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %cmp = icmp eq ptr %call.i.i, null
  br i1 %cmp, label %if.end.errout_crit_edge, label %if.end4

if.end.errout_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %errout

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @fdb_fill_info(ptr noundef nonnull %call.i.i, ptr noundef %br, ptr noundef %fdb, i32 noundef 0, i32 noundef 0, i32 noundef %type, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end30

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %call5)
  %cmp8 = icmp eq i32 %call5, -90
  br i1 %cmp8, label %do.end, label %if.then7.if.end23_crit_edge, !prof !175

if.then7.if.end23_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 198, i32 noundef 9, ptr noundef null) #10
  br label %if.end23

if.end23:                                         ; preds = %do.end, %if.then7.if.end23_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  br label %errout

if.end30:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rtnl_notify(ptr noundef nonnull %call.i.i, ptr noundef %3, i32 noundef 0, i32 noundef 3, ptr noundef null, i32 noundef 2592) #10
  br label %cleanup

errout:                                           ; preds = %if.end23, %if.end.errout_crit_edge
  %err.0 = phi i32 [ -105, %if.end.errout_crit_edge ], [ %call5, %if.end23 ]
  tail call void @rtnl_set_sk_err(ptr noundef %3, i32 noundef 3, i32 noundef %err.0) #10
  br label %cleanup

cleanup:                                          ; preds = %errout, %if.end30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fdb_delete(ptr noundef %br, ptr noundef %f, i1 noundef zeroext %swdev_notify) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_fdb_delete(ptr noundef %br, ptr noundef %f)
  %flags = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %key = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f, i32 0, i32 2
  %call.i = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.then.if.end29.i_crit_edge

if.then.if.end29.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

land.rhs.i:                                       ; preds = %if.then
  %.b56.i = load i1, ptr @fdb_del_hw_addr.__already_done, align 1
  br i1 %.b56.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !170

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @fdb_del_hw_addr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 306, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 306) #10
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %if.then.if.end29.i_crit_edge
  %port_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  %3 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn57.i = load ptr, ptr %port_list.i, align 4
  %cmp.not58.i = icmp eq ptr %.pn57.i, %port_list.i
  br i1 %cmp.not58.i, label %if.end29.i.if.end_crit_edge, label %if.end29.i.for.body.i_crit_edge

if.end29.i.for.body.i_crit_edge:                  ; preds = %if.end29.i
  br label %for.body.i

if.end29.i.if.end_crit_edge:                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end29.i.for.body.i_crit_edge
  %.pn59.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn57.i, %if.end29.i.for.body.i_crit_edge ]
  %flags.i = getelementptr i8, ptr %.pn59.i, i32 8
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool41.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool41.not.i, label %if.then42.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then42.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr i8, ptr %.pn59.i, i32 -8
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %call43.i = tail call i32 @dev_uc_del(ptr noundef %7, ptr noundef %key) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then42.i, %for.body.i.for.inc.i_crit_edge
  %8 = ptrtoint ptr %.pn59.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn59.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %port_list.i
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %if.end29.i.if.end_crit_edge, %entry.if.end_crit_edge
  %pprev.i.i = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.not.i, label %if.end.hlist_del_init_rcu.exit_crit_edge, label %if.then.i19

if.end.hlist_del_init_rcu.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del_init_rcu.exit

if.then.i19:                                      ; preds = %if.end
  %fdb_node = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f, i32 0, i32 3
  %11 = ptrtoint ptr %fdb_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fdb_node, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %12, ptr %10, align 4
  %tobool.not.i7.i = icmp eq ptr %12, null
  br i1 %tobool.not.i7.i, label %if.then.i19.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i19.__hlist_del.exit.i_crit_edge:         ; preds = %if.then.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i19
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %10, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i19.__hlist_del.exit.i_crit_edge
  %15 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init_rcu.exit

hlist_del_init_rcu.exit:                          ; preds = %__hlist_del.exit.i, %if.end.hlist_del_init_rcu.exit_crit_edge
  %fdb_hash_tbl = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 8
  %16 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !171
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i, label %hlist_del_init_rcu.exit.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

hlist_del_init_rcu.exit.rcu_read_lock.exit.i.i_crit_edge: ; preds = %hlist_del_init_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %hlist_del_init_rcu.exit
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 696, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %hlist_del_init_rcu.exit.rcu_read_lock.exit.i.i_crit_edge
  %20 = ptrtoint ptr %fdb_hash_tbl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %fdb_hash_tbl, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %fdb_hash_tbl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call3.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end10.i.i_crit_edge

lor.lhs.false.i.i.do.end10.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.do.end10.i.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i.i.do.end10.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true7.i.i.do.end10.i.i_crit_edge, label %if.then.i.i

land.lhs.true7.i.i.do.end10.i.i_crit_edge:        ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

if.then.i.i:                                      ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 1076, ptr noundef nonnull @.str.27) #10
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true7.i.i.do.end10.i.i_crit_edge, %land.lhs.true.i.i.do.end10.i.i_crit_edge, %lor.lhs.false.i.i.do.end10.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge
  %head_offset.i.i.i.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 8, i32 3, i32 3
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %f, i32 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.end33.i.i.while.cond.i.i_crit_edge, %do.end10.i.i
  %tbl.0.i.i = phi ptr [ %21, %do.end10.i.i ], [ %56, %do.end33.i.i.while.cond.i.i_crit_edge ]
  %22 = ptrtoint ptr %head_offset.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %head_offset.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %23 to i32
  %idx.neg.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %idx.neg.i.i.i.i.i
  %hash_rnd.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %hash_rnd.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hash_rnd.i.i.i.i.i, align 8
  %add1.i.i.i.i.i.i.i = add i32 %25, -559038729
  %arrayidx32.i.i.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i.i, i32 1
  %26 = ptrtoint ptr %arrayidx32.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx32.i.i.i.i.i.i.i, align 4
  %add33.i.i.i.i.i.i.i = add i32 %27, %add1.i.i.i.i.i.i.i
  %28 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %add36.i.i.i.i.i.i.i = add i32 %29, %add1.i.i.i.i.i.i.i
  %xor37.i.i.i.i.i.i.i = xor i32 %add33.i.i.i.i.i.i.i, %add1.i.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add33.i.i.i.i.i.i.i, i32 %add33.i.i.i.i.i.i.i, i32 14) #10
  %sub39.i.i.i.i.i.i.i = sub i32 %xor37.i.i.i.i.i.i.i, %or.i140.i.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i.i = xor i32 %sub39.i.i.i.i.i.i.i, %add36.i.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i.i, i32 11) #10
  %sub42.i.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i.i, %add33.i.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i.i, i32 25) #10
  %sub45.i.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i.i, %sub39.i.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i.i, i32 16) #10
  %sub48.i.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i.i, %sub42.i.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i.i, i32 4) #10
  %sub51.i.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i.i, %sub45.i.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i.i, i32 14) #10
  %sub54.i.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i.i, %sub48.i.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i.i, i32 24) #10
  %sub57.i.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i.i
  %30 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i.i.i = add i32 %31, -1
  %and.i3.i.i.i.i.i = and i32 %sub57.i.i.i.i.i.i.i, %sub.i.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i3.i.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i3.i.i.i, label %cond.false.i5.i.i.i, label %cond.true.i4.i.i.i, !prof !170

cond.true.i4.i.i.i:                               ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #10
  br label %rht_bucket_var.exit.i.i.i

cond.false.i5.i.i.i:                              ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i.i
  br label %rht_bucket_var.exit.i.i.i

rht_bucket_var.exit.i.i.i:                        ; preds = %cond.false.i5.i.i.i, %cond.true.i4.i.i.i
  %cond.i6.i.i.i = phi ptr [ %call.i.i.i.i, %cond.true.i4.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i5.i.i.i ]
  %tobool.not.i3.i.i = icmp eq ptr %cond.i6.i.i.i, null
  br i1 %tobool.not.i3.i.i, label %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge, label %if.end.i.i.i

rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge: ; preds = %rht_bucket_var.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

if.end.i.i.i:                                     ; preds = %rht_bucket_var.exit.i.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #10
  %call.i8.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i.i)
  %tobool.not.i9.i.i.i = icmp eq i32 %call.i8.i.i.i, 0
  br i1 %tobool.not.i9.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge

if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b7.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i, label %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 377, ptr noundef nonnull @.str.30) #10
  br label %rht_ptr.exit.i.i.i

rht_ptr.exit.i.i.i:                               ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge
  %34 = ptrtoint ptr %cond.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cond.i6.i.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  %and.i.i.i.i.i = and i32 %36, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  %37 = ptrtoint ptr %cond.i6.i.i.i to i32
  %or.i.i.i.i.i = or i32 %37, 1
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i.i.i.i
  %and.i20.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i.i)
  %tobool.i.not21.i.i.i = icmp eq i32 %and.i20.i.i.i, 0
  br i1 %tobool.i.not21.i.i.i, label %for.body.preheader.i.i.i, label %rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge

rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge:      ; preds = %rht_ptr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlocked.i.i.i

for.body.preheader.i.i.i:                         ; preds = %rht_ptr.exit.i.i.i
  %38 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %cmp.not.i20.i.i = icmp eq ptr %38, %f
  br i1 %cmp.not.i20.i.i, label %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge

for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  br label %do.body145.i.i.i

for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54.i.i.i

for.body.i.i.i:                                   ; preds = %do.end156.i.i.i
  %cmp.not.i.i.i = icmp eq ptr %43, %f
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.i.i.i.do.body145.i.i.i_crit_edge

for.body.i.i.i.do.body145.i.i.i_crit_edge:        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body145.i.i.i

for.body.i.i.i.do.body54.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54.i.i.i

do.body54.i.i.i:                                  ; preds = %for.body.i.i.i.do.body54.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge
  %pprev.023.i.lcssa.i.i = phi ptr [ %he.022.i21.i.i, %for.body.i.i.i.do.body54.i.i.i_crit_edge ], [ null, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge ]
  %call55.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i.i)
  %tobool56.not.i.i.i = icmp eq i32 %call55.i.i.i, 0
  br i1 %tobool56.not.i.i.i, label %land.lhs.true57.i.i.i, label %do.body54.i.i.i.do.end65.i.i.i_crit_edge

do.body54.i.i.i.do.end65.i.i.i_crit_edge:         ; preds = %do.body54.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65.i.i.i

land.lhs.true57.i.i.i:                            ; preds = %do.body54.i.i.i
  %call58.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i.i)
  %tobool59.not.i.i.i = icmp eq i32 %call58.i.i.i, 0
  br i1 %tobool59.not.i.i.i, label %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, label %land.lhs.true60.i.i.i

land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true57.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65.i.i.i

land.lhs.true60.i.i.i:                            ; preds = %land.lhs.true57.i.i.i
  %.b2.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.37, align 1
  br i1 %.b2.i.i.i, label %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, label %if.then62.i.i.i

land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65.i.i.i

if.then62.i.i.i:                                  ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.37, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 1032, ptr noundef nonnull @.str.30) #10
  br label %do.end65.i.i.i

do.end65.i.i.i:                                   ; preds = %if.then62.i.i.i, %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, %do.body54.i.i.i.do.end65.i.i.i_crit_edge
  %39 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %f, align 4
  %tobool103.not.i.i.i = icmp eq ptr %pprev.023.i.lcssa.i.i, null
  br i1 %tobool103.not.i.i.i, label %if.else142.i.i.i, label %do.body105.i.i.i

do.body105.i.i.i:                                 ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !176
  %41 = ptrtoint ptr %pprev.023.i.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %40, ptr %pprev.023.i.lcssa.i.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #10
  br label %if.then160.i.i.i

if.else142.i.i.i:                                 ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i, ptr noundef %40) #10
  br label %if.then160.i.i.i

do.body145.i.i.i:                                 ; preds = %for.body.i.i.i.do.body145.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge
  %he.022.i21.i.i = phi ptr [ %43, %for.body.i.i.i.do.body145.i.i.i_crit_edge ], [ %38, %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge ]
  %call146.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i.i)
  %tobool147.not.i.i.i = icmp eq i32 %call146.i.i.i, 0
  br i1 %tobool147.not.i.i.i, label %land.lhs.true148.i.i.i, label %do.body145.i.i.i.do.end156.i.i.i_crit_edge

do.body145.i.i.i.do.end156.i.i.i_crit_edge:       ; preds = %do.body145.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end156.i.i.i

land.lhs.true148.i.i.i:                           ; preds = %do.body145.i.i.i
  %call149.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i.i)
  %tobool150.not.i.i.i = icmp eq i32 %call149.i.i.i, 0
  br i1 %tobool150.not.i.i.i, label %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, label %land.lhs.true151.i.i.i

land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true148.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end156.i.i.i

land.lhs.true151.i.i.i:                           ; preds = %land.lhs.true148.i.i.i
  %.b2281.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.39, align 1
  br i1 %.b2281.i.i.i, label %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, label %if.then153.i.i.i

land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end156.i.i.i

if.then153.i.i.i:                                 ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.39, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 1004, ptr noundef nonnull @.str.30) #10
  br label %do.end156.i.i.i

do.end156.i.i.i:                                  ; preds = %if.then153.i.i.i, %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, %do.body145.i.i.i.do.end156.i.i.i_crit_edge
  %42 = ptrtoint ptr %he.022.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %he.022.i21.i.i, align 4
  %44 = ptrtoint ptr %43 to i32
  %and.i.i.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.body.i.i.i, label %do.end156.i.i.i.unlocked.i.i.i_crit_edge

do.end156.i.i.i.unlocked.i.i.i_crit_edge:         ; preds = %do.end156.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlocked.i.i.i

unlocked.i.i.i:                                   ; preds = %do.end156.i.i.i.unlocked.i.i.i_crit_edge, %rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #10
  br label %land.rhs.i.i

if.then160.i.i.i:                                 ; preds = %if.else142.i.i.i, %do.body105.i.i.i
  %nelems.i.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 8, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i.i, i32 1, i32 3, i32 1) #10
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i, ptr %nelems.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i) #10, !srcloc !177
  %automatic_shrinking.i.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 8, i32 3, i32 6
  %46 = ptrtoint ptr %automatic_shrinking.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %automatic_shrinking.i.i.i, align 2, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool161.not.i.i.i = icmp eq i8 %47, 0
  br i1 %tobool161.not.i.i.i, label %if.then160.i.i.i.while.end.i.i_crit_edge, label %land.rhs162.i.i.i

if.then160.i.i.i.while.end.i.i_crit_edge:         ; preds = %if.then160.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

land.rhs162.i.i.i:                                ; preds = %if.then160.i.i.i
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #10
  %48 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %nelems.i.i.i, align 4
  %50 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tbl.0.i.i, align 128
  %mul.i.i.i.i = mul i32 %51, 3
  %div.i.i.i.i = udiv i32 %mul.i.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %div.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %49, %div.i.i.i.i
  br i1 %cmp.i.i.i.i, label %rht_shrink_below_30.exit.i.i.i, label %land.rhs162.i.i.i.while.end.i.i_crit_edge

land.rhs162.i.i.i.while.end.i.i_crit_edge:        ; preds = %land.rhs162.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

rht_shrink_below_30.exit.i.i.i:                   ; preds = %land.rhs162.i.i.i
  %min_size.i.i.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 8, i32 3, i32 5
  %52 = ptrtoint ptr %min_size.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %min_size.i.i.i.i, align 4
  %conv.i11.i.i.i = zext i16 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %conv.i11.i.i.i)
  %cmp2.i.i.i.i = icmp ugt i32 %51, %conv.i11.i.i.i
  br i1 %cmp2.i.i.i.i, label %if.then168.i.i.i, label %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, !prof !175

rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

if.then168.i.i.i:                                 ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %run_work.i.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 8, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %54 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %54, ptr noundef %run_work.i.i.i) #10
  br label %while.end.i.i

land.rhs.i.i:                                     ; preds = %unlocked.i.i.i, %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %55 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call20.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %fdb_hash_tbl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %lor.lhs.false22.i.i, label %land.rhs.i.i.do.end33.i.i_crit_edge

land.rhs.i.i.do.end33.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i.i

lor.lhs.false22.i.i:                              ; preds = %land.rhs.i.i
  %call23.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %tobool24.not.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %tobool24.not.i.i, label %land.lhs.true25.i.i, label %lor.lhs.false22.i.i.do.end33.i.i_crit_edge

lor.lhs.false22.i.i.do.end33.i.i_crit_edge:       ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i.i

land.lhs.true25.i.i:                              ; preds = %lor.lhs.false22.i.i
  %call26.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %land.lhs.true25.i.i.do.end33.i.i_crit_edge, label %land.lhs.true28.i.i

land.lhs.true25.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i.i

land.lhs.true28.i.i:                              ; preds = %land.lhs.true25.i.i
  %.b401.i.i = load i1, ptr @__rhashtable_remove_fast.__warned.35, align 1
  br i1 %.b401.i.i, label %land.lhs.true28.i.i.do.end33.i.i_crit_edge, label %if.then30.i.i

land.lhs.true28.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i.i

if.then30.i.i:                                    ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_remove_fast.__warned.35, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 1085, ptr noundef nonnull @.str.27) #10
  br label %do.end33.i.i

do.end33.i.i:                                     ; preds = %if.then30.i.i, %land.lhs.true28.i.i.do.end33.i.i_crit_edge, %land.lhs.true25.i.i.do.end33.i.i_crit_edge, %lor.lhs.false22.i.i.do.end33.i.i_crit_edge, %land.rhs.i.i.do.end33.i.i_crit_edge
  %tobool35.not.i.i = icmp eq ptr %56, null
  br i1 %tobool35.not.i.i, label %do.end33.i.i.while.end.i.i_crit_edge, label %do.end33.i.i.while.cond.i.i_crit_edge

do.end33.i.i.while.cond.i.i_crit_edge:            ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

do.end33.i.i.while.end.i.i_crit_edge:             ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end33.i.i.while.end.i.i_crit_edge, %if.then168.i.i.i, %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, %land.rhs162.i.i.i.while.end.i.i_crit_edge, %if.then160.i.i.i.while.end.i.i_crit_edge
  %call.i4.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i4.i.i, label %while.end.i.i.rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i.i

while.end.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rhashtable_remove_fast.exit

land.lhs.true.i7.i.i:                             ; preds = %while.end.i.i
  %call1.i5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i.i)
  %tobool.not.i6.i.i = icmp eq i32 %call1.i5.i.i, 0
  br i1 %tobool.not.i6.i.i, label %land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i.i

land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rhashtable_remove_fast.exit

land.lhs.true2.i9.i.i:                            ; preds = %land.lhs.true.i7.i.i
  %.b4.i8.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i.i, label %land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i.i

land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rhashtable_remove_fast.exit

if.then.i10.i.i:                                  ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.25) #10
  br label %rhashtable_remove_fast.exit

rhashtable_remove_fast.exit:                      ; preds = %if.then.i10.i.i, %land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge, %while.end.i.i.rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !172
  %57 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i11.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i11.i.i to ptr
  %preempt_count.i.i.i.i12.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i12.i.i, align 4
  %sub.i.i.i.i.i = add i32 %60, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i12.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  tail call fastcc void @fdb_notify(ptr noundef %br, ptr noundef %f, i32 noundef 29, i1 noundef zeroext %swdev_notify)
  %rcu = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f, i32 0, i32 8
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @fdb_rcu_free) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_fdb_flush(ptr noundef %br) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_lock = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %hash_lock) #10
  %fdb_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 46
  %0 = ptrtoint ptr %fdb_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fdb_list, align 4
  %tobool.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %tobool3.not3032 = icmp eq ptr %add.ptr, null
  %tobool3.not30 = or i1 %tobool.not, %tobool3.not3032
  br i1 %tobool3.not30, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %f.031 = phi ptr [ %add.ptr13, %for.inc.land.rhs_crit_edge ], [ %add.ptr, %entry.land.rhs_crit_edge ]
  %fdb_node = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.031, i32 0, i32 3
  %2 = ptrtoint ptr %fdb_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fdb_node, align 16
  %flags = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.031, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %if.then, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fdb_delete(ptr noundef %br, ptr noundef nonnull %f.031, i1 noundef zeroext true)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.rhs.for.inc_crit_edge
  %tobool9.not = icmp eq ptr %3, null
  %add.ptr13 = getelementptr i8, ptr %3, i32 -16
  %tobool3.not33 = icmp eq ptr %add.ptr13, null
  %tobool3.not = or i1 %tobool9.not, %tobool3.not33
  br i1 %tobool3.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %hash_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_fdb_delete_by_port(ptr noundef %br, ptr noundef %p, i16 noundef zeroext %vid, i32 noundef %do_all) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_lock = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %hash_lock) #10
  %fdb_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 46
  %0 = ptrtoint ptr %fdb_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fdb_list, align 4
  %tobool.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %tobool3.not6770 = icmp eq ptr %add.ptr, null
  %tobool3.not67 = or i1 %tobool.not, %tobool3.not6770
  br i1 %tobool3.not67, label %entry.for.end_crit_edge, label %land.rhs.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_all)
  %tobool6.not = icmp eq i32 %do_all, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %tobool16.not = icmp eq i16 %vid, 0
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %f.068 = phi ptr [ %add.ptr, %land.rhs.lr.ph ], [ %add.ptr36, %for.inc.land.rhs_crit_edge ]
  %fdb_node = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.068, i32 0, i32 3
  %2 = ptrtoint ptr %fdb_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fdb_node, align 16
  %dst = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.068, i32 0, i32 1
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst, align 4
  %cmp.not = icmp eq ptr %5, %p
  br i1 %cmp.not, label %if.end, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %land.rhs
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then7:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.068, i32 0, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.then7.for.inc_crit_edge

if.then7.for.inc_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.then7
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not = icmp eq i32 %11, 0
  br i1 %tobool11.not, label %lor.lhs.false.lor.lhs.false15_crit_edge, label %land.lhs.true

lor.lhs.false.lor.lhs.false15_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false15

land.lhs.true:                                    ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool14.not = icmp eq i32 %14, 0
  br i1 %tobool14.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.lor.lhs.false15_crit_edge

land.lhs.true.lor.lhs.false15_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false15

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false15:                                  ; preds = %land.lhs.true.lor.lhs.false15_crit_edge, %lor.lhs.false.lor.lhs.false15_crit_edge
  br i1 %tobool16.not, label %lor.lhs.false15.if.end24_crit_edge, label %land.lhs.true17

lor.lhs.false15.if.end24_crit_edge:               ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true17:                                  ; preds = %lor.lhs.false15
  %vlan_id = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.068, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vlan_id, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %vid)
  %cmp20.not = icmp eq i16 %16, %vid
  br i1 %cmp20.not, label %land.lhs.true17.if.end24_crit_edge, label %land.lhs.true17.for.inc_crit_edge

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true17.if.end24_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true17.if.end24_crit_edge, %lor.lhs.false15.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %flags25 = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.068, i32 0, i32 4
  %17 = ptrtoint ptr %flags25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags25, align 4
  %and1.i64 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i64)
  %tobool27.not = icmp eq i32 %and1.i64, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fdb_delete_local(ptr noundef %br, ptr noundef %p, ptr noundef nonnull %f.068)
  br label %for.inc

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fdb_delete(ptr noundef %br, ptr noundef nonnull %f.068, i1 noundef zeroext true)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then28, %land.lhs.true17.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.then7.for.inc_crit_edge, %land.rhs.for.inc_crit_edge
  %tobool32.not = icmp eq ptr %3, null
  %add.ptr36 = getelementptr i8, ptr %3, i32 -16
  %tobool3.not71 = icmp eq ptr %add.ptr36, null
  %tobool3.not = or i1 %tobool32.not, %tobool3.not71
  br i1 %tobool3.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %hash_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_fdb_test_addr(ptr noundef %dev, ptr nocapture noundef readonly %addr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !171
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 696, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %4 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %rx_handler_data.i, align 4
  %call.i15 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool.not.i16 = icmp eq i32 %call.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i17, label %rcu_read_lock.exit.br_port_get_rcu.exit_crit_edge

rcu_read_lock.exit.br_port_get_rcu.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rcu.exit

land.lhs.true.i17:                                ; preds = %rcu_read_lock.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i17.br_port_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i17.br_port_get_rcu.exit_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i17
  %.b9.i = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.br_port_get_rcu.exit_crit_edge, label %if.then.i18

land.lhs.true4.i.br_port_get_rcu.exit_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rcu.exit

if.then.i18:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 416, ptr noundef nonnull @.str.27) #10
  br label %br_port_get_rcu.exit

br_port_get_rcu.exit:                             ; preds = %if.then.i18, %land.lhs.true4.i.br_port_get_rcu.exit_crit_edge, %land.lhs.true.i17.br_port_get_rcu.exit_crit_edge, %rcu_read_lock.exit.br_port_get_rcu.exit_crit_edge
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %br_port_get_rcu.exit.if.end9_crit_edge, label %if.else

br_port_get_rcu.exit.if.end9_crit_edge:           ; preds = %br_port_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.else:                                          ; preds = %br_port_get_rcu.exit
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %fdb_hash_tbl.i = getelementptr inbounds %struct.net_bridge, ptr %7, i32 0, i32 8
  %call.i19 = tail call fastcc ptr @fdb_find_rcu(ptr noundef %fdb_hash_tbl.i, ptr noundef %addr, i16 noundef zeroext 0) #10
  %tobool2.not = icmp eq ptr %call.i19, null
  br i1 %tobool2.not, label %if.else.if.end9_crit_edge, label %if.end

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end:                                           ; preds = %if.else
  %dst4 = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call.i19, i32 0, i32 1
  %8 = ptrtoint ptr %dst4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %dst4, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %dev6 = getelementptr inbounds %struct.net_bridge_port, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev6, align 4
  %cmp.not = icmp eq ptr %11, %dev
  br i1 %cmp.not, label %land.lhs.true.if.end9_crit_edge, label %land.rhs

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.net_bridge_port, ptr %9, i32 0, i32 8
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp7 = icmp eq i8 %13, 3
  %phi.cast = zext i1 %cmp7 to i32
  br label %if.end9

if.end9:                                          ; preds = %land.rhs, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge, %if.else.if.end9_crit_edge, %br_port_get_rcu.exit.if.end9_crit_edge
  %ret.0 = phi i32 [ 0, %br_port_get_rcu.exit.if.end9_crit_edge ], [ 0, %land.lhs.true.if.end9_crit_edge ], [ 0, %if.end.if.end9_crit_edge ], [ %phi.cast, %land.rhs ], [ 0, %if.else.if.end9_crit_edge ]
  %call.i20 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i20, label %if.end9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i23

if.end9.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i23:                                ; preds = %if.end9
  %call1.i21 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21)
  %tobool.not.i22 = icmp eq i32 %call1.i21, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i25

land.lhs.true.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i25:                               ; preds = %land.lhs.true.i23
  %.b4.i24 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24, label %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, label %if.then.i26

land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i26:                                      ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.25) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i26, %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, %if.end9.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !172
  %14 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i27 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i27 to ptr
  %preempt_count.i.i.i.i28 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i28, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i28, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_fdb_fillbuf(ptr noundef %br, ptr nocapture noundef writeonly %buf, i32 noundef %maxnum, i32 noundef %skip) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %maxnum, 4
  %0 = call ptr @memset(ptr %buf, i32 0, i32 %mul)
  %1 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !171
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 696, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b79 = load i1, ptr @br_fdb_fillbuf.__warned, align 1
  br i1 %.b79, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_fdb_fillbuf.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 650, ptr noundef nonnull @.str.3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %fdb_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 46
  %5 = ptrtoint ptr %fdb_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %fdb_list, align 4
  %tobool10.not = icmp ne ptr %6, null
  %add.ptr = getelementptr i8, ptr %6, i32 -16
  %tobool12.not95106 = icmp ne ptr %add.ptr, null
  %tobool12.not95 = and i1 %tobool10.not, %tobool12.not95106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxnum)
  %cmp.not96 = icmp ne i32 %maxnum, 0
  %or.cond97 = and i1 %tobool12.not95, %cmp.not96
  br i1 %or.cond97, label %if.end14.lr.ph, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end14.lr.ph:                                   ; preds = %do.end
  %topology_change.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 15
  %forward_delay.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 20
  %ageing_time.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 21
  br label %if.end14

if.end14:                                         ; preds = %for.inc.if.end14_crit_edge, %if.end14.lr.ph
  %skip.addr.0105 = phi i32 [ %skip, %if.end14.lr.ph ], [ %skip.addr.1, %for.inc.if.end14_crit_edge ]
  %f.0102 = phi ptr [ %add.ptr, %if.end14.lr.ph ], [ %add.ptr52, %for.inc.if.end14_crit_edge ]
  %fe.0100 = phi ptr [ %buf, %if.end14.lr.ph ], [ %fe.1, %for.inc.if.end14_crit_edge ]
  %num.098 = phi i32 [ 0, %if.end14.lr.ph ], [ %num.1, %for.inc.if.end14_crit_edge ]
  %flags.i = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.0102, i32 0, i32 4
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i82 = icmp eq i32 %9, 0
  br i1 %tobool.not.i82, label %land.lhs.true.i83, label %if.end14.if.end18_crit_edge

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

land.lhs.true.i83:                                ; preds = %if.end14
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i, align 4
  %12 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not.i = icmp eq i32 %12, 0
  br i1 %tobool3.not.i, label %has_expired.exit, label %land.lhs.true.i83.if.end18_crit_edge

land.lhs.true.i83.if.end18_crit_edge:             ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

has_expired.exit:                                 ; preds = %land.lhs.true.i83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %updated.i = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.0102, i32 0, i32 6
  %14 = ptrtoint ptr %updated.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %updated.i, align 128
  %16 = ptrtoint ptr %topology_change.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %topology_change.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i = icmp eq i8 %17, 0
  %cond.in.i.i = select i1 %tobool.not.i.i, ptr %ageing_time.i.i, ptr %forward_delay.i.i
  %18 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %cond.i.i = load i32, ptr %cond.in.i.i, align 4
  %19 = xor i32 %13, -1
  %add.i = add i32 %15, %19
  %20 = add i32 %add.i, %cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %tobool16.not = icmp sgt i32 %20, -1
  br i1 %tobool16.not, label %has_expired.exit.if.end18_crit_edge, label %has_expired.exit.for.inc_crit_edge

has_expired.exit.for.inc_crit_edge:               ; preds = %has_expired.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

has_expired.exit.if.end18_crit_edge:              ; preds = %has_expired.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end18:                                         ; preds = %has_expired.exit.if.end18_crit_edge, %land.lhs.true.i83.if.end18_crit_edge, %if.end14.if.end18_crit_edge
  %dst = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.0102, i32 0, i32 1
  %21 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dst, align 4
  %tobool19.not = icmp eq ptr %22, null
  br i1 %tobool19.not, label %if.end18.for.inc_crit_edge, label %if.end21

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end21:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip.addr.0105)
  %tobool22.not = icmp eq i32 %skip.addr.0105, 0
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %dec = add i32 %skip.addr.0105, -1
  br label %for.inc

if.end24:                                         ; preds = %if.end21
  %key = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.0102, i32 0, i32 2
  %23 = call ptr @memcpy(ptr %fe.0100, ptr %key, i32 6)
  %24 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dst, align 4
  %port_no = getelementptr inbounds %struct.net_bridge_port, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %port_no to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %port_no, align 2
  %conv = trunc i16 %27 to i8
  %port_no28 = getelementptr inbounds %struct.__fdb_entry, ptr %fe.0100, i32 0, i32 1
  %28 = ptrtoint ptr %port_no28 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv, ptr %port_no28, align 2
  %29 = load ptr, ptr %dst, align 4
  %port_no30 = getelementptr inbounds %struct.net_bridge_port, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %port_no30 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %port_no30, align 2
  %32 = lshr i16 %31, 8
  %conv32 = trunc i16 %32 to i8
  %port_hi = getelementptr inbounds %struct.__fdb_entry, ptr %fe.0100, i32 0, i32 4
  %33 = ptrtoint ptr %port_hi to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv32, ptr %port_hi, align 4
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags.i, align 4
  %36 = trunc i32 %35 to i8
  %conv34 = and i8 %36, 1
  %is_local = getelementptr inbounds %struct.__fdb_entry, ptr %fe.0100, i32 0, i32 2
  %37 = ptrtoint ptr %is_local to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv34, ptr %is_local, align 1
  %38 = load volatile i32, ptr %flags.i, align 4
  %39 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool37.not = icmp eq i32 %39, 0
  br i1 %tobool37.not, label %if.then38, label %if.end24.if.end40_crit_edge

if.end24.if.end40_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then38:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %updated = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.0102, i32 0, i32 6
  %41 = ptrtoint ptr %updated to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %updated, align 128
  %sub = sub i32 %40, %42
  %43 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0) #10
  %call.i84 = tail call i32 @jiffies_to_clock_t(i32 noundef %43) #10
  %ageing_timer_value = getelementptr inbounds %struct.__fdb_entry, ptr %fe.0100, i32 0, i32 3
  %44 = ptrtoint ptr %ageing_timer_value to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call.i84, ptr %ageing_timer_value, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end24.if.end40_crit_edge
  %incdec.ptr = getelementptr %struct.__fdb_entry, ptr %fe.0100, i32 1
  %inc = add nuw i32 %num.098, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end40, %if.then23, %if.end18.for.inc_crit_edge, %has_expired.exit.for.inc_crit_edge
  %num.1 = phi i32 [ %num.098, %has_expired.exit.for.inc_crit_edge ], [ %num.098, %if.then23 ], [ %inc, %if.end40 ], [ %num.098, %if.end18.for.inc_crit_edge ]
  %fe.1 = phi ptr [ %fe.0100, %has_expired.exit.for.inc_crit_edge ], [ %fe.0100, %if.then23 ], [ %incdec.ptr, %if.end40 ], [ %fe.0100, %if.end18.for.inc_crit_edge ]
  %skip.addr.1 = phi i32 [ %skip.addr.0105, %has_expired.exit.for.inc_crit_edge ], [ %dec, %if.then23 ], [ 0, %if.end40 ], [ %skip.addr.0105, %if.end18.for.inc_crit_edge ]
  %fdb_node = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.0102, i32 0, i32 3
  %45 = ptrtoint ptr %fdb_node to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %fdb_node, align 16
  %tobool48.not = icmp ne ptr %46, null
  %add.ptr52 = getelementptr i8, ptr %46, i32 -16
  %tobool12.not107 = icmp ne ptr %add.ptr52, null
  %tobool12.not = and i1 %tobool48.not, %tobool12.not107
  call void @__sanitizer_cov_trace_cmp4(i32 %num.1, i32 %maxnum)
  %cmp.not = icmp ult i32 %num.1, %maxnum
  %or.cond = select i1 %tobool12.not, i1 %cmp.not, i1 false
  br i1 %or.cond, label %for.inc.if.end14_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.if.end14_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %num.0.lcssa = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %num.1, %for.inc.for.end_crit_edge ]
  %call.i85 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i85, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i88

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i88:                                ; preds = %for.end
  %call1.i86 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i86)
  %tobool.not.i87 = icmp eq i32 %call1.i86, 0
  br i1 %tobool.not.i87, label %land.lhs.true.i88.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i90

land.lhs.true.i88.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i90:                               ; preds = %land.lhs.true.i88
  %.b4.i89 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i89, label %land.lhs.true2.i90.rcu_read_unlock.exit_crit_edge, label %if.then.i91

land.lhs.true2.i90.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i90
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i91:                                      ; preds = %land.lhs.true2.i90
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.25) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i91, %land.lhs.true2.i90.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i88.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !172
  %47 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i92 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i92 to ptr
  %preempt_count.i.i.i.i93 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i93, align 4
  %sub.i.i.i = add i32 %50, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i93, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret i32 %num.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_fdb_add_local(ptr noundef %br, ptr noundef %source, ptr noundef %addr, i16 noundef zeroext %vid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_lock = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %hash_lock) #10
  %call = tail call fastcc i32 @fdb_add_local(ptr noundef %br, ptr noundef %source, ptr noundef %addr, i16 noundef zeroext %vid)
  tail call void @_raw_spin_unlock_bh(ptr noundef %hash_lock) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_fdb_update(ptr noundef %br, ptr noundef %source, ptr noundef %addr, i16 noundef zeroext %vid, i32 noundef %flags) local_unnamed_addr #2 align 64 {
entry:
  %flags.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flags.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %flags, ptr %flags.addr, align 4
  %topology_change.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 15
  %1 = ptrtoint ptr %topology_change.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %topology_change.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  %forward_delay.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 20
  %ageing_time.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 21
  %cond.in.i = select i1 %tobool.not.i, ptr %ageing_time.i, ptr %forward_delay.i
  %3 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %cond.i = load i32, ptr %cond.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp = icmp eq i32 %cond.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %fdb_hash_tbl = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 8
  %call1 = tail call fastcc ptr @fdb_find_rcu(ptr noundef %fdb_hash_tbl, ptr noundef %addr, i16 noundef zeroext %vid)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.else91, label %if.then4, !prof !175

if.then4:                                         ; preds = %if.end
  %flags5 = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call1, i32 0, i32 4
  %4 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags5, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool7.not = icmp eq i32 %and1.i, 0
  br i1 %tobool7.not, label %if.else, label %if.then14, !prof !170

if.then14:                                        ; preds = %if.then4
  %call15 = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.cleanup_crit_edge, label %do.end

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev18 = getelementptr inbounds %struct.net_bridge_port, ptr %source, i32 0, i32 1
  %8 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev18, align 4
  %conv = zext i16 %vid to i32
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %7, ptr noundef %9, ptr noundef %addr, i32 noundef %conv) #14
  br label %cleanup

if.else:                                          ; preds = %if.then4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %updated = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call1, i32 0, i32 6
  %11 = ptrtoint ptr %updated to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %updated, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp23.not = icmp eq i32 %10, %12
  br i1 %cmp23.not, label %if.else.if.end28_crit_edge, label %if.then25

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then25:                                        ; preds = %if.else
  %13 = ptrtoint ptr %updated to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %updated, align 128
  %14 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags5, align 4
  %16 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i142 = icmp eq i32 %16, 0
  br i1 %tobool.not.i142, label %if.then25.if.end28_crit_edge, label %land.rhs.i

if.then25.if.end28_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.rhs.i:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flags5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.i = icmp ne i32 %call2.i, 0
  br label %if.end28

if.end28:                                         ; preds = %land.rhs.i, %if.then25.if.end28_crit_edge, %if.else.if.end28_crit_edge
  %fdb_modified.0.off0 = phi i1 [ false, %if.else.if.end28_crit_edge ], [ false, %if.then25.if.end28_crit_edge ], [ %tobool3.i, %land.rhs.i ]
  %dst = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call1, i32 0, i32 1
  %17 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %dst, align 4
  %cmp33.not = icmp eq ptr %18, %source
  br i1 %cmp33.not, label %if.end28.if.end69_crit_edge, label %land.rhs

if.end28.if.end69_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

land.rhs:                                         ; preds = %if.end28
  %19 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags5, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool37.not = icmp eq i32 %21, 0
  br i1 %tobool37.not, label %if.then46, label %land.rhs.if.end69_crit_edge, !prof !175

land.rhs.if.end69_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then46:                                        ; preds = %land.rhs
  tail call void @br_switchdev_fdb_notify(ptr noundef %br, ptr noundef nonnull %call1, i32 noundef 29) #10
  %22 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %source, ptr %dst, align 4
  %23 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags5, align 4
  %25 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool59.not = icmp eq i32 %25, 0
  br i1 %tobool59.not, label %if.then46.if.end69_crit_edge, label %if.then66, !prof !170

if.then46.if.end69_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then66:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags5) #10
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.then46.if.end69_crit_edge, %land.rhs.if.end69_crit_edge, %if.end28.if.end69_crit_edge
  %fdb_modified.1.off0 = phi i1 [ true, %if.then66 ], [ true, %if.then46.if.end69_crit_edge ], [ %fdb_modified.0.off0, %land.rhs.if.end69_crit_edge ], [ %fdb_modified.0.off0, %if.end28.if.end69_crit_edge ]
  %26 = ptrtoint ptr %flags.addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %flags.addr.0.flags.addr.0. = load volatile i32, ptr %flags.addr, align 4
  %27 = and i32 %flags.addr.0.flags.addr.0., 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool71.not = icmp eq i32 %27, 0
  br i1 %tobool71.not, label %if.end69.if.end80_crit_edge, label %if.then78, !prof !170

if.end69.if.end80_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then78:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags5) #10
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.end69.if.end80_crit_edge
  br i1 %fdb_modified.1.off0, label %if.then88, label %if.end80.cleanup_crit_edge, !prof !175

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then88:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %flags.addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %flags.addr.0.flags.addr.0.143 = load i32, ptr %flags.addr, align 4
  tail call fastcc void @trace_br_fdb_update(ptr noundef %br, ptr noundef %source, ptr noundef %addr, i16 noundef zeroext %vid, i32 noundef %flags.addr.0.flags.addr.0.143)
  tail call fastcc void @fdb_notify(ptr noundef %br, ptr noundef nonnull %call1, i32 noundef 28, i1 noundef zeroext true)
  br label %cleanup

if.else91:                                        ; preds = %if.end
  %hash_lock = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %hash_lock) #10
  %29 = ptrtoint ptr %flags.addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %flags.addr.0.flags.addr.0.144 = load i32, ptr %flags.addr, align 4
  %call92 = tail call fastcc ptr @fdb_create(ptr noundef %br, ptr noundef %source, ptr noundef %addr, i16 noundef zeroext %vid, i32 noundef %flags.addr.0.flags.addr.0.144)
  %tobool93.not = icmp eq ptr %call92, null
  br i1 %tobool93.not, label %if.else91.if.end95_crit_edge, label %if.then94

if.else91.if.end95_crit_edge:                     ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.then94:                                        ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %flags.addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %flags.addr.0.flags.addr.0.145 = load i32, ptr %flags.addr, align 4
  tail call fastcc void @trace_br_fdb_update(ptr noundef %br, ptr noundef %source, ptr noundef %addr, i16 noundef zeroext %vid, i32 noundef %flags.addr.0.flags.addr.0.145)
  tail call fastcc void @fdb_notify(ptr noundef %br, ptr noundef nonnull %call92, i32 noundef 28, i1 noundef zeroext true)
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.else91.if.end95_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %hash_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %if.then88, %if.end80.cleanup_crit_edge, %do.end, %if.then14.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_switchdev_fdb_notify(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_br_fdb_update(ptr noundef %br, ptr noundef %source, ptr noundef %addr, i16 noundef zeroext %vid, i32 noundef %flags) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_br_fdb_update, i32 0, i32 1), ptr blockaddress(@trace_br_fdb_update, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !170

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !180
  %call42 = tail call i32 @__traceiter_br_fdb_update(ptr noundef null, ptr noundef %br, ptr noundef %source, ptr noundef %addr, i16 noundef zeroext %vid, i32 noundef %flags) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !181
  %13 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !170

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_br_fdb_update, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_br_fdb_update, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_br_fdb_update.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_br_fdb_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 123, ptr noundef nonnull @.str.27) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fdb_create(ptr noundef %br, ptr noundef %source, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @br_fdb_cache, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 2592) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %key = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call, i32 0, i32 2
  %1 = call ptr @memcpy(ptr %key, ptr %addr, i32 6)
  %dst = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %source, ptr %dst, align 4
  %vlan_id = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %vid, ptr %vlan_id, align 2
  %flags10 = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %flags10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %flags, ptr %flags10, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %used = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call, i32 0, i32 7
  %6 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %used, align 4
  %updated = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call, i32 0, i32 6
  %7 = ptrtoint ptr %updated to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %updated, align 128
  %fdb_hash_tbl = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 8
  %head_offset.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 8, i32 3, i32 3
  %obj_hashfn.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 8, i32 3, i32 8
  %8 = ptrtoint ptr %obj_hashfn.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %obj_hashfn.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.end8.i, label %do.body3.i, !prof !170

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rhashtable.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 903, 0\0A.popsection", ""() #10, !srcloc !184
  unreachable

do.end8.i:                                        ; preds = %if.end
  %10 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %head_offset.i.i, align 2
  %conv.i.i = zext i16 %11 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call, i32 %idx.neg.i.i
  %key_offset.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 8, i32 3, i32 2
  %12 = ptrtoint ptr %key_offset.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %key_offset.i, align 4
  %conv.i = zext i16 %13 to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv.i
  %14 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !171
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i, label %do.end8.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

do.end8.i.rcu_read_lock.exit.i.i_crit_edge:       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.end8.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 696, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %do.end8.i.rcu_read_lock.exit.i.i_crit_edge
  %18 = ptrtoint ptr %fdb_hash_tbl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %fdb_hash_tbl, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %fdb_hash_tbl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call5.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 715, ptr noundef nonnull @.str.27) #10
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge
  %20 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %head_offset.i.i, align 2
  %conv.i.i.i.i = zext i16 %21 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call, i32 %idx.neg.i.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 8
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add1.i.i.i.i.i.i = add i32 %23, -559038729
  %arrayidx32.i.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i, i32 1
  %24 = ptrtoint ptr %arrayidx32.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx32.i.i.i.i.i.i, align 4
  %add33.i.i.i.i.i.i = add i32 %25, %add1.i.i.i.i.i.i
  %26 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i.i, align 4
  %add36.i.i.i.i.i.i = add i32 %27, %add1.i.i.i.i.i.i
  %xor37.i.i.i.i.i.i = xor i32 %add33.i.i.i.i.i.i, %add1.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add33.i.i.i.i.i.i, i32 %add33.i.i.i.i.i.i, i32 14) #10
  %sub39.i.i.i.i.i.i = sub i32 %xor37.i.i.i.i.i.i, %or.i140.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i = xor i32 %sub39.i.i.i.i.i.i, %add36.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i, i32 11) #10
  %sub42.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i, %add33.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i, i32 25) #10
  %sub45.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i, %sub39.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i, i32 16) #10
  %sub48.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i, %sub42.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i, i32 4) #10
  %sub51.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i, %sub45.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i, i32 14) #10
  %sub54.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i, %sub48.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i, i32 24) #10
  %sub57.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i
  %28 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %19, align 128
  %sub.i.i.i.i.i = add i32 %29, -1
  %and.i3.i.i.i.i = and i32 %sub57.i.i.i.i.i.i, %sub.i.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %19, i32 0, i32 1
  %30 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i5.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i5.i.i, label %cond.false.i8.i.i, label %cond.true.i7.i.i, !prof !170

cond.true.i7.i.i:                                 ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i6.i.i = tail call ptr @rht_bucket_nested_insert(ptr noundef %fdb_hash_tbl, ptr noundef %19, i32 noundef %and.i3.i.i.i.i) #10
  br label %rht_bucket_insert.exit.i.i

cond.false.i8.i.i:                                ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %19, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_insert.exit.i.i

rht_bucket_insert.exit.i.i:                       ; preds = %cond.false.i8.i.i, %cond.true.i7.i.i
  %cond.i9.i.i = phi ptr [ %call.i6.i.i, %cond.true.i7.i.i ], [ %arrayidx.i.i.i, %cond.false.i8.i.i ]
  %tobool17.not.i.i = icmp eq ptr %cond.i9.i.i, null
  br i1 %tobool17.not.i.i, label %rht_bucket_insert.exit.i.i.out.i.i_crit_edge, label %if.end19.i.i

rht_bucket_insert.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_bucket_insert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.end19.i.i:                                     ; preds = %rht_bucket_insert.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %19, ptr noundef nonnull %cond.i9.i.i) #10
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %19, i32 0, i32 5
  %32 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %33, null
  br i1 %tobool25.not.i.i, label %if.end30.i.i, label %if.end19.i.i.slow_path.i.i_crit_edge, !prof !170

if.end19.i.i.slow_path.i.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %slow_path.i.i

slow_path.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, %for.end.i.i.slow_path.i.i_crit_edge, %if.end19.i.i.slow_path.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %19, ptr noundef nonnull %cond.i9.i.i) #10
  %call.i11.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i11.i.i, label %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i14.i.i

slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %slow_path.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i14.i.i:                            ; preds = %slow_path.i.i
  %call1.i12.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i.i)
  %tobool.not.i13.i.i = icmp eq i32 %call1.i12.i.i, 0
  br i1 %tobool.not.i13.i.i, label %land.lhs.true.i14.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i16.i.i

land.lhs.true.i14.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i16.i.i:                           ; preds = %land.lhs.true.i14.i.i
  %.b4.i15.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15.i.i, label %land.lhs.true2.i16.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i17.i.i

land.lhs.true2.i16.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i

if.then.i17.i.i:                                  ; preds = %land.lhs.true2.i16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.25) #10
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i17.i.i, %land.lhs.true2.i16.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i14.i.i.rcu_read_unlock.exit.i.i_crit_edge, %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !172
  %34 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i18.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i18.i.i to ptr
  %preempt_count.i.i.i.i19.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i19.i.i, align 4
  %sub.i.i.i20.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i20.i.i, ptr %preempt_count.i.i.i.i19.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %call29.i.i = tail call ptr @rhashtable_insert_slow(ptr noundef %fdb_hash_tbl, ptr noundef %add.ptr.i, ptr noundef nonnull %call) #10
  br label %rhashtable_lookup_insert_fast.exit

if.end30.i.i:                                     ; preds = %if.end19.i.i
  %call.i21.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %19, i32 noundef %and.i3.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i.i)
  %tobool.not.i22.i.i = icmp eq i32 %call.i21.i.i, 0
  br i1 %tobool.not.i22.i.i, label %land.lhs.true.i24.i.i, label %if.end30.i.i.rht_ptr.exit.i.i_crit_edge

if.end30.i.i.rht_ptr.exit.i.i_crit_edge:          ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i

land.lhs.true.i24.i.i:                            ; preds = %if.end30.i.i
  %call1.i23.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i23.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i24.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i24.i.i.rht_ptr.exit.i.i_crit_edge: ; preds = %land.lhs.true.i24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i24.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i25.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i

if.then.i25.i.i:                                  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 377, ptr noundef nonnull @.str.30) #10
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i25.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i24.i.i.rht_ptr.exit.i.i_crit_edge, %if.end30.i.i.rht_ptr.exit.i.i_crit_edge
  %38 = ptrtoint ptr %cond.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cond.i9.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  %and.i.i.i.i = and i32 %40, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %41 = ptrtoint ptr %cond.i9.i.i to i32
  %or.i.i.i.i = or i32 %41, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i84.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84.i.i)
  %tobool.i.not85.i.i = icmp eq i32 %and.i84.i.i, 0
  br i1 %tobool.i.not85.i.i, label %for.body.lr.ph.i.i, label %rht_ptr.exit.i.i.if.end152.i.i_crit_edge

rht_ptr.exit.i.i.if.end152.i.i_crit_edge:         ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152.i.i

for.body.lr.ph.i.i:                               ; preds = %rht_ptr.exit.i.i
  %42 = inttoptr i32 %cond.i.i.i.i to ptr
  %tobool35.not.i.i = icmp eq ptr %add.ptr.i, null
  %key_len.i.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 8, i32 3, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %do.end147.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %head.087.i.i = phi ptr [ %42, %for.body.lr.ph.i.i ], [ %50, %do.end147.i.i.for.body.i.i_crit_edge ]
  %elasticity.086.i.i = phi i32 [ 16, %for.body.lr.ph.i.i ], [ %dec.i.i, %do.end147.i.i.for.body.i.i_crit_edge ]
  %dec.i.i = add i32 %elasticity.086.i.i, -1
  br i1 %tobool35.not.i.i, label %for.body.i.i.do.body136.i.i_crit_edge, label %lor.lhs.false36.i.i

for.body.i.i.do.body136.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body136.i.i

lor.lhs.false36.i.i:                              ; preds = %for.body.i.i
  %43 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %head_offset.i.i, align 2
  %conv.i29.i.i = zext i16 %44 to i32
  %idx.neg.i30.i.i = sub nsw i32 0, %conv.i29.i.i
  %add.ptr.i31.i.i = getelementptr i8, ptr %head.087.i.i, i32 %idx.neg.i30.i.i
  %45 = ptrtoint ptr %key_offset.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %key_offset.i, align 4
  %conv.i32.i.i = zext i16 %46 to i32
  %add.ptr.i33.i.i = getelementptr i8, ptr %add.ptr.i31.i.i, i32 %conv.i32.i.i
  %47 = ptrtoint ptr %key_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %key_len.i.i.i, align 2
  %conv3.i.i.i = zext i16 %48 to i32
  %bcmp.i.i = tail call i32 @bcmp(ptr %add.ptr.i33.i.i, ptr nonnull %add.ptr.i, i32 %conv3.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool44.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool44.not.i.i, label %lor.lhs.false36.i.i.out_unlock.i.i_crit_edge, label %lor.lhs.false36.i.i.do.body136.i.i_crit_edge

lor.lhs.false36.i.i.do.body136.i.i_crit_edge:     ; preds = %lor.lhs.false36.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body136.i.i

lor.lhs.false36.i.i.out_unlock.i.i_crit_edge:     ; preds = %lor.lhs.false36.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.i.i

do.body136.i.i:                                   ; preds = %lor.lhs.false36.i.i.do.body136.i.i_crit_edge, %for.body.i.i.do.body136.i.i_crit_edge
  %call137.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %19, i32 noundef %and.i3.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i.i)
  %tobool138.not.i.i = icmp eq i32 %call137.i.i, 0
  br i1 %tobool138.not.i.i, label %land.lhs.true139.i.i, label %do.body136.i.i.do.end147.i.i_crit_edge

do.body136.i.i.do.end147.i.i_crit_edge:           ; preds = %do.body136.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end147.i.i

land.lhs.true139.i.i:                             ; preds = %do.body136.i.i
  %call140.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i.i)
  %tobool141.not.i.i = icmp eq i32 %call140.i.i, 0
  br i1 %tobool141.not.i.i, label %land.lhs.true139.i.i.do.end147.i.i_crit_edge, label %land.lhs.true142.i.i

land.lhs.true139.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true139.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end147.i.i

land.lhs.true142.i.i:                             ; preds = %land.lhs.true139.i.i
  %.b2811.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.41, align 1
  br i1 %.b2811.i.i, label %land.lhs.true142.i.i.do.end147.i.i_crit_edge, label %if.then144.i.i

land.lhs.true142.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end147.i.i

if.then144.i.i:                                   ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_insert_fast.__warned.41, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 732, ptr noundef nonnull @.str.30) #10
  br label %do.end147.i.i

do.end147.i.i:                                    ; preds = %if.then144.i.i, %land.lhs.true142.i.i.do.end147.i.i_crit_edge, %land.lhs.true139.i.i.do.end147.i.i_crit_edge, %do.body136.i.i.do.end147.i.i_crit_edge
  %49 = ptrtoint ptr %head.087.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %head.087.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  %and.i.i.i = and i32 %51, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %do.end147.i.i.for.body.i.i_crit_edge, label %for.end.i.i

do.end147.i.i.for.body.i.i_crit_edge:             ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i)
  %phi.cmp.i.i = icmp slt i32 %dec.i.i, 1
  br i1 %phi.cmp.i.i, label %for.end.i.i.slow_path.i.i_crit_edge, label %for.end.i.i.if.end152.i.i_crit_edge

for.end.i.i.if.end152.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152.i.i

for.end.i.i.slow_path.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %slow_path.i.i

if.end152.i.i:                                    ; preds = %for.end.i.i.if.end152.i.i_crit_edge, %rht_ptr.exit.i.i.if.end152.i.i_crit_edge
  %nelems.i.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 8, i32 8
  %call.i.i.i39.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #10
  %52 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %nelems.i.i.i, align 4
  %max_elems.i.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 8, i32 2
  %54 = ptrtoint ptr %max_elems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_elems.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp.i.not.i.i = icmp ult i32 %53, %55
  br i1 %cmp.i.not.i.i, label %if.end162.i.i, label %if.end152.i.i.out_unlock.i.i_crit_edge, !prof !170

if.end152.i.i.out_unlock.i.i_crit_edge:           ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.i.i

if.end162.i.i:                                    ; preds = %if.end152.i.i
  %call.i.i.i41.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #10
  %56 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %nelems.i.i.i, align 4
  %58 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %19, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp.i42.i.i = icmp ugt i32 %57, %59
  br i1 %cmp.i42.i.i, label %rht_grow_above_100.exit.i.i, label %if.end162.i.i.if.end171.i.i_crit_edge

if.end162.i.i.if.end171.i.i_crit_edge:            ; preds = %if.end162.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i:                      ; preds = %if.end162.i.i
  %max_size.i.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 8, i32 3, i32 4
  %60 = ptrtoint ptr %max_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i43.i.i = icmp eq i32 %61, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp4.i.i.i = icmp ult i32 %59, %61
  %spec.select.i.i.i = select i1 %tobool.not.i43.i.i, i1 true, i1 %cmp4.i.i.i
  br i1 %spec.select.i.i.i, label %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, label %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, !prof !175

rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %slow_path.i.i

if.end171.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, %if.end162.i.i.if.end171.i.i_crit_edge
  %call.i44.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %19, i32 noundef %and.i3.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i.i)
  %tobool.not.i45.i.i = icmp eq i32 %call.i44.i.i, 0
  br i1 %tobool.not.i45.i.i, label %land.lhs.true.i48.i.i, label %if.end171.i.i.rht_ptr.exit56.i.i_crit_edge

if.end171.i.i.rht_ptr.exit56.i.i_crit_edge:       ; preds = %if.end171.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit56.i.i

land.lhs.true.i48.i.i:                            ; preds = %if.end171.i.i
  %call1.i46.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46.i.i)
  %tobool2.not.i47.i.i = icmp eq i32 %call1.i46.i.i, 0
  br i1 %tobool2.not.i47.i.i, label %land.lhs.true.i48.i.i.rht_ptr.exit56.i.i_crit_edge, label %land.lhs.true3.i50.i.i

land.lhs.true.i48.i.i.rht_ptr.exit56.i.i_crit_edge: ; preds = %land.lhs.true.i48.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit56.i.i

land.lhs.true3.i50.i.i:                           ; preds = %land.lhs.true.i48.i.i
  %.b7.i49.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i49.i.i, label %land.lhs.true3.i50.i.i.rht_ptr.exit56.i.i_crit_edge, label %if.then.i51.i.i

land.lhs.true3.i50.i.i.rht_ptr.exit56.i.i_crit_edge: ; preds = %land.lhs.true3.i50.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit56.i.i

if.then.i51.i.i:                                  ; preds = %land.lhs.true3.i50.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 377, ptr noundef nonnull @.str.30) #10
  br label %rht_ptr.exit56.i.i

rht_ptr.exit56.i.i:                               ; preds = %if.then.i51.i.i, %land.lhs.true3.i50.i.i.rht_ptr.exit56.i.i_crit_edge, %land.lhs.true.i48.i.i.rht_ptr.exit56.i.i_crit_edge, %if.end171.i.i.rht_ptr.exit56.i.i_crit_edge
  %62 = ptrtoint ptr %cond.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cond.i9.i.i, align 4
  %64 = ptrtoint ptr %63 to i32
  %and.i.i52.i.i = and i32 %64, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i52.i.i)
  %tobool.not.i.i53.i.i = icmp eq i32 %and.i.i52.i.i, 0
  %cond.i.i55.i.i = select i1 %tobool.not.i.i53.i.i, i32 %or.i.i.i.i, i32 %and.i.i52.i.i
  %65 = inttoptr i32 %cond.i.i55.i.i to ptr
  %66 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %65, ptr %call, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i.i, i32 1, i32 3, i32 1) #10
  %67 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i, ptr %nelems.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i) #10, !srcloc !185
  tail call fastcc void @rht_assign_unlock(ptr noundef %19, ptr noundef nonnull %cond.i9.i.i, ptr noundef nonnull %call) #10
  %call.i.i.i58.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #10
  %68 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %nelems.i.i.i, align 4
  %70 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %19, align 128
  %div8.i.i.i = lshr i32 %71, 2
  %mul.i.i.i = mul nuw i32 %div8.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %mul.i.i.i)
  %cmp.i59.i.i = icmp ugt i32 %69, %mul.i.i.i
  br i1 %cmp.i59.i.i, label %rht_grow_above_75.exit.i.i, label %rht_ptr.exit56.i.i.out.i.i_crit_edge

rht_ptr.exit56.i.i.out.i.i_crit_edge:             ; preds = %rht_ptr.exit56.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

rht_grow_above_75.exit.i.i:                       ; preds = %rht_ptr.exit56.i.i
  %max_size.i60.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 8, i32 3, i32 4
  %72 = ptrtoint ptr %max_size.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %max_size.i60.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i61.i.i = icmp eq i32 %73, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp4.i62.i.i = icmp ult i32 %71, %73
  %spec.select.i63.i.i = select i1 %tobool.not.i61.i.i, i1 true, i1 %cmp4.i62.i.i
  br i1 %spec.select.i63.i.i, label %if.then207.i.i, label %rht_grow_above_75.exit.i.i.out.i.i_crit_edge

rht_grow_above_75.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.then207.i.i:                                   ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %run_work.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 8, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %74 = load ptr, ptr @system_wq, align 4
  %call.i.i65.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %74, ptr noundef %run_work.i.i) #10
  br label %out.i.i

out.i.i:                                          ; preds = %out_unlock.i.i, %if.then207.i.i, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge, %rht_ptr.exit56.i.i.out.i.i_crit_edge, %rht_bucket_insert.exit.i.i.out.i.i_crit_edge
  %data.2.i.i = phi ptr [ %data.3.i.i, %out_unlock.i.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.i.out.i.i_crit_edge ], [ null, %if.then207.i.i ], [ null, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge ], [ null, %rht_ptr.exit56.i.i.out.i.i_crit_edge ]
  %call.i66.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i66.i.i, label %out.i.i.rcu_read_unlock.exit76.i.i_crit_edge, label %land.lhs.true.i69.i.i

out.i.i.rcu_read_unlock.exit76.i.i_crit_edge:     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit76.i.i

land.lhs.true.i69.i.i:                            ; preds = %out.i.i
  %call1.i67.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67.i.i)
  %tobool.not.i68.i.i = icmp eq i32 %call1.i67.i.i, 0
  br i1 %tobool.not.i68.i.i, label %land.lhs.true.i69.i.i.rcu_read_unlock.exit76.i.i_crit_edge, label %land.lhs.true2.i71.i.i

land.lhs.true.i69.i.i.rcu_read_unlock.exit76.i.i_crit_edge: ; preds = %land.lhs.true.i69.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit76.i.i

land.lhs.true2.i71.i.i:                           ; preds = %land.lhs.true.i69.i.i
  %.b4.i70.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70.i.i, label %land.lhs.true2.i71.i.i.rcu_read_unlock.exit76.i.i_crit_edge, label %if.then.i72.i.i

land.lhs.true2.i71.i.i.rcu_read_unlock.exit76.i.i_crit_edge: ; preds = %land.lhs.true2.i71.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit76.i.i

if.then.i72.i.i:                                  ; preds = %land.lhs.true2.i71.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.25) #10
  br label %rcu_read_unlock.exit76.i.i

rcu_read_unlock.exit76.i.i:                       ; preds = %if.then.i72.i.i, %land.lhs.true2.i71.i.i.rcu_read_unlock.exit76.i.i_crit_edge, %land.lhs.true.i69.i.i.rcu_read_unlock.exit76.i.i_crit_edge, %out.i.i.rcu_read_unlock.exit76.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !172
  %75 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i73.i.i = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i.i.i73.i.i to ptr
  %preempt_count.i.i.i.i74.i.i = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %preempt_count.i.i.i.i74.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %preempt_count.i.i.i.i74.i.i, align 4
  %sub.i.i.i75.i.i = add i32 %78, -1
  store volatile i32 %sub.i.i.i75.i.i, ptr %preempt_count.i.i.i.i74.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %rhashtable_lookup_insert_fast.exit

out_unlock.i.i:                                   ; preds = %if.end152.i.i.out_unlock.i.i_crit_edge, %lor.lhs.false36.i.i.out_unlock.i.i_crit_edge
  %data.3.i.i = phi ptr [ inttoptr (i32 -7 to ptr), %if.end152.i.i.out_unlock.i.i_crit_edge ], [ %add.ptr.i31.i.i, %lor.lhs.false36.i.i.out_unlock.i.i_crit_edge ]
  tail call fastcc void @rht_unlock(ptr noundef %19, ptr noundef nonnull %cond.i9.i.i) #10
  br label %out.i.i

rhashtable_lookup_insert_fast.exit:               ; preds = %rcu_read_unlock.exit76.i.i, %rcu_read_unlock.exit.i.i
  %retval.0.i.i = phi ptr [ %call29.i.i, %rcu_read_unlock.exit.i.i ], [ %data.2.i.i, %rcu_read_unlock.exit76.i.i ]
  %cmp.i = icmp eq ptr %retval.0.i.i, null
  br i1 %cmp.i, label %if.end14, label %if.then13

if.then13:                                        ; preds = %rhashtable_lookup_insert_fast.exit
  call void @__sanitizer_cov_trace_pc() #12
  %79 = load ptr, ptr @br_fdb_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %79, ptr noundef nonnull %call) #10
  br label %cleanup

if.end14:                                         ; preds = %rhashtable_lookup_insert_fast.exit
  %fdb_node = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call, i32 0, i32 3
  %fdb_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 46
  %80 = ptrtoint ptr %fdb_list to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fdb_list, align 4
  %82 = ptrtoint ptr %fdb_node to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %fdb_node, align 8
  %pprev.i = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call, i32 0, i32 3, i32 1
  %83 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %fdb_list, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !186
  %84 = ptrtoint ptr %fdb_list to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %fdb_node, ptr %fdb_list, align 4
  %tobool.not.i33 = icmp eq ptr %81, null
  br i1 %tobool.not.i33, label %if.end14.cleanup_crit_edge, label %do.body49.i

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body49.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %81, i32 0, i32 1
  %85 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %fdb_node, ptr %pprev51.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body49.i, %if.end14.cleanup_crit_edge, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then13 ], [ null, %entry.cleanup_crit_edge ], [ %call, %if.end14.cleanup_crit_edge ], [ %call, %do.body49.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_fdb_dump(ptr noundef %skb, ptr noundef %cb, ptr noundef %dev, ptr noundef readnone %filter_dev, ptr noundef %idx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %1, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %filter_dev, null
  br i1 %tobool.not, label %if.then2, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @ndo_dflt_fdb_dump(ptr noundef %skb, ptr noundef %cb, ptr noundef %dev, ptr noundef null, ptr noundef %idx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then2.cleanup_crit_edge, label %if.then2.if.end6_crit_edge

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.then2.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %err.0 = phi i32 [ 0, %if.end.if.end6_crit_edge ], [ %call3, %if.then2.if.end6_crit_edge ]
  %2 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !171
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end6.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end6.rcu_read_lock.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end6
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 696, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end6.rcu_read_lock.exit_crit_edge
  %call7 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true11

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b98 = load i1, ptr @br_fdb_dump.__warned, align 1
  br i1 %.b98, label %land.lhs.true11.do.end_crit_edge, label %if.then13

land.lhs.true11.do.end_crit_edge:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_fdb_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 783, ptr noundef nonnull @.str.3) #10
  br label %do.end

do.end:                                           ; preds = %if.then13, %land.lhs.true11.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %fdb_list = getelementptr i8, ptr %dev, i32 4208
  %6 = ptrtoint ptr %fdb_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %fdb_list, align 4
  %tobool20.not = icmp eq ptr %7, null
  %add.ptr = getelementptr i8, ptr %7, i32 -16
  %tobool22.not113117 = icmp eq ptr %add.ptr, null
  %tobool22.not113 = or i1 %tobool20.not, %tobool22.not113117
  br i1 %tobool22.not113, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %cmp33.not = icmp eq ptr %filter_dev, %dev
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %skip.for.body_crit_edge, %for.body.lr.ph
  %f.0115 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr64, %skip.for.body_crit_edge ]
  %err.1114 = phi i32 [ %err.0, %for.body.lr.ph ], [ %err.2, %skip.for.body_crit_edge ]
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp23 = icmp slt i32 %9, %11
  br i1 %cmp23, label %for.body.skip_crit_edge, label %if.end25

for.body.skip_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip

if.end25:                                         ; preds = %for.body
  %dst43 = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.0115, i32 0, i32 1
  %12 = ptrtoint ptr %dst43 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dst43, align 4
  %tobool44.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %land.lhs.true42.critedge, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %if.end25
  br i1 %tobool44.not, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true27
  %dev30 = getelementptr inbounds %struct.net_bridge_port, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev30, align 4
  %cmp31.not = icmp eq ptr %15, %filter_dev
  br i1 %cmp31.not, label %lor.lhs.false.if.end46_crit_edge, label %lor.lhs.false.skip_crit_edge

lor.lhs.false.skip_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip

lor.lhs.false.if.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then32:                                        ; preds = %land.lhs.true27
  br i1 %cmp33.not, label %if.then32.if.end46_crit_edge, label %if.then32.skip_crit_edge

if.then32.skip_crit_edge:                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip

if.then32.if.end46_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

land.lhs.true42.critedge:                         ; preds = %if.end25
  br i1 %tobool44.not, label %land.lhs.true42.critedge.if.end46_crit_edge, label %land.lhs.true42.critedge.skip_crit_edge

land.lhs.true42.critedge.skip_crit_edge:          ; preds = %land.lhs.true42.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip

land.lhs.true42.critedge.if.end46_crit_edge:      ; preds = %land.lhs.true42.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.end46:                                         ; preds = %land.lhs.true42.critedge.if.end46_crit_edge, %if.then32.if.end46_crit_edge, %lor.lhs.false.if.end46_crit_edge
  %16 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 12
  %18 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %portid, align 4
  %20 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nlmsg_seq, align 4
  %call49 = tail call fastcc i32 @fdb_fill_info(ptr noundef %skb, ptr noundef %add.ptr.i, ptr noundef nonnull %f.0115, i32 noundef %19, i32 noundef %23, i32 noundef 28, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.end46.for.end_crit_edge, label %if.end46.skip_crit_edge

if.end46.skip_crit_edge:                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip

if.end46.for.end_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

skip:                                             ; preds = %if.end46.skip_crit_edge, %land.lhs.true42.critedge.skip_crit_edge, %if.then32.skip_crit_edge, %lor.lhs.false.skip_crit_edge, %for.body.skip_crit_edge
  %err.2 = phi i32 [ %err.1114, %for.body.skip_crit_edge ], [ %err.1114, %if.then32.skip_crit_edge ], [ %call49, %if.end46.skip_crit_edge ], [ %err.1114, %land.lhs.true42.critedge.skip_crit_edge ], [ %err.1114, %lor.lhs.false.skip_crit_edge ]
  %24 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %idx, align 4
  %add = add i32 %25, 1
  store i32 %add, ptr %idx, align 4
  %fdb_node = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.0115, i32 0, i32 3
  %26 = ptrtoint ptr %fdb_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %fdb_node, align 16
  %tobool60.not = icmp eq ptr %27, null
  %add.ptr64 = getelementptr i8, ptr %27, i32 -16
  %tobool22.not118 = icmp eq ptr %add.ptr64, null
  %tobool22.not = or i1 %tobool60.not, %tobool22.not118
  br i1 %tobool22.not, label %skip.for.end_crit_edge, label %skip.for.body_crit_edge

skip.for.body_crit_edge:                          ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

skip.for.end_crit_edge:                           ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %skip.for.end_crit_edge, %if.end46.for.end_crit_edge, %do.end.for.end_crit_edge
  %err.3 = phi i32 [ %err.0, %do.end.for.end_crit_edge ], [ %call49, %if.end46.for.end_crit_edge ], [ %err.2, %skip.for.end_crit_edge ]
  %call.i101 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i101, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i104

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i104:                               ; preds = %for.end
  %call1.i102 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i102)
  %tobool.not.i103 = icmp eq i32 %call1.i102, 0
  br i1 %tobool.not.i103, label %land.lhs.true.i104.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i106

land.lhs.true.i104.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i104
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i106:                              ; preds = %land.lhs.true.i104
  %.b4.i105 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i105, label %land.lhs.true2.i106.rcu_read_unlock.exit_crit_edge, label %if.then.i107

land.lhs.true2.i106.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i106
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i107:                                     ; preds = %land.lhs.true2.i106
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.25) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i107, %land.lhs.true2.i106.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i104.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !172
  %28 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i108 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i108 to ptr
  %preempt_count.i.i.i.i109 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i109, align 4
  %sub.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i109, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %rcu_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ], [ %call3, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ndo_dflt_fdb_dump(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fdb_fill_info(ptr noundef %skb, ptr nocapture noundef readonly %br, ptr noundef %fdb, i32 noundef %portid, i32 noundef %seq, i32 noundef %type, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  %tmp.i136 = alloca i8, align 1
  %tmp.i = alloca i32, align 4
  %ci = alloca %struct.nda_cacheinfo, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dst1 = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %fdb, i32 0, i32 1
  %0 = ptrtoint ptr %dst1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %dst1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ci) #10
  %3 = getelementptr inbounds %struct.nda_cacheinfo, ptr %ci, i32 0, i32 1
  %4 = getelementptr inbounds %struct.nda_cacheinfo, ptr %ci, i32 0, i32 2
  %5 = getelementptr inbounds %struct.nda_cacheinfo, ptr %ci, i32 0, i32 3
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = call ptr @memset(ptr %ci, i32 255, i32 16)
  %7 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %entry.cleanup81_crit_edge

entry.cleanup81_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup81

skb_tailroom.exit.i:                              ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %9 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 28
  br i1 %cmp.i, label %skb_tailroom.exit.i.cleanup81_crit_edge, label %nlmsg_put.exit, !prof !175

skb_tailroom.exit.i.cleanup81_crit_edge:          ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup81

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef %type, i32 noundef 12, i32 noundef %flags) #10
  %cmp = icmp eq ptr %call3.i, null
  br i1 %cmp, label %nlmsg_put.exit.cleanup81_crit_edge, label %if.end

nlmsg_put.exit.cleanup81_crit_edge:               ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup81

if.end:                                           ; preds = %nlmsg_put.exit
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 7, ptr %add.ptr.i, align 4
  %ndm_pad1 = getelementptr i8, ptr %call3.i, i32 17
  %14 = ptrtoint ptr %ndm_pad1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %ndm_pad1, align 1
  %ndm_pad2 = getelementptr i8, ptr %call3.i, i32 18
  %15 = ptrtoint ptr %ndm_pad2 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %ndm_pad2, align 2
  %ndm_flags = getelementptr i8, ptr %call3.i, i32 26
  %16 = ptrtoint ptr %ndm_flags to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %ndm_flags, align 2
  %ndm_type = getelementptr i8, ptr %call3.i, i32 27
  %17 = ptrtoint ptr %ndm_type to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %ndm_type, align 1
  %tobool.not = icmp eq ptr %1, null
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %1, i32 0, i32 1
  %dev3 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %.pn.in = select i1 %tobool.not, ptr %dev3, ptr %dev
  %18 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cond.in = getelementptr inbounds %struct.net_device, ptr %.pn, i32 0, i32 17
  %19 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %cond = load i32, ptr %cond.in, align 4
  %ndm_ifindex = getelementptr i8, ptr %call3.i, i32 20
  %20 = ptrtoint ptr %ndm_ifindex to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond, ptr %ndm_ifindex, align 4
  %flags.i = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %fdb, i32 0, i32 4
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end.fdb_to_nud.exit_crit_edge

if.end.fdb_to_nud.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fdb_to_nud.exit

if.else.i:                                        ; preds = %if.end
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags.i, align 4
  %25 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool3.not.i = icmp eq i32 %25, 0
  br i1 %tobool3.not.i, label %if.else5.i, label %if.else.i.fdb_to_nud.exit_crit_edge

if.else.i.fdb_to_nud.exit_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fdb_to_nud.exit

if.else5.i:                                       ; preds = %if.else.i
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags.i, align 4
  %28 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.else5.i.has_expired.exit.thread.i_crit_edge

if.else5.i.has_expired.exit.thread.i_crit_edge:   ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %has_expired.exit.thread.i

land.lhs.true.i.i:                                ; preds = %if.else5.i
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags.i, align 4
  %31 = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool3.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool3.not.i.i, label %has_expired.exit.i, label %land.lhs.true.i.i.has_expired.exit.thread.i_crit_edge

land.lhs.true.i.i.has_expired.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %has_expired.exit.thread.i

has_expired.exit.i:                               ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %updated.i.i = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %fdb, i32 0, i32 6
  %33 = ptrtoint ptr %updated.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %updated.i.i, align 128
  %topology_change.i.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 15
  %35 = ptrtoint ptr %topology_change.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %topology_change.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i.i.i = icmp eq i8 %36, 0
  %forward_delay.i.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 20
  %ageing_time.i.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 21
  %cond.in.i.i.i = select i1 %tobool.not.i.i.i, ptr %ageing_time.i.i.i, ptr %forward_delay.i.i.i
  %37 = ptrtoint ptr %cond.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %cond.i.i.i = load i32, ptr %cond.in.i.i.i, align 4
  %38 = xor i32 %32, -1
  %add.i.i = add i32 %34, %38
  %39 = add i32 %add.i.i, %cond.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %tobool7.not.i = icmp sgt i32 %39, -1
  br i1 %tobool7.not.i, label %has_expired.exit.i.has_expired.exit.thread.i_crit_edge, label %has_expired.exit.i.fdb_to_nud.exit_crit_edge

has_expired.exit.i.fdb_to_nud.exit_crit_edge:     ; preds = %has_expired.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fdb_to_nud.exit

has_expired.exit.i.has_expired.exit.thread.i_crit_edge: ; preds = %has_expired.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %has_expired.exit.thread.i

has_expired.exit.thread.i:                        ; preds = %has_expired.exit.i.has_expired.exit.thread.i_crit_edge, %land.lhs.true.i.i.has_expired.exit.thread.i_crit_edge, %if.else5.i.has_expired.exit.thread.i_crit_edge
  br label %fdb_to_nud.exit

fdb_to_nud.exit:                                  ; preds = %has_expired.exit.thread.i, %has_expired.exit.i.fdb_to_nud.exit_crit_edge, %if.else.i.fdb_to_nud.exit_crit_edge, %if.end.fdb_to_nud.exit_crit_edge
  %retval.0.i135 = phi i16 [ 128, %if.end.fdb_to_nud.exit_crit_edge ], [ 64, %if.else.i.fdb_to_nud.exit_crit_edge ], [ 2, %has_expired.exit.thread.i ], [ 4, %has_expired.exit.i.fdb_to_nud.exit_crit_edge ]
  %ndm_state = getelementptr i8, ptr %call3.i, i32 24
  %40 = ptrtoint ptr %ndm_state to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %retval.0.i135, ptr %ndm_state, align 4
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags.i, align 4
  %43 = and i32 %42, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool8.not = icmp eq i32 %43, 0
  br i1 %tobool8.not, label %fdb_to_nud.exit.if.end13_crit_edge, label %if.then9

fdb_to_nud.exit.if.end13_crit_edge:               ; preds = %fdb_to_nud.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then9:                                         ; preds = %fdb_to_nud.exit
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %ndm_flags to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ndm_flags, align 2
  %46 = or i8 %45, 32
  store i8 %46, ptr %ndm_flags, align 2
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %fdb_to_nud.exit.if.end13_crit_edge
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flags.i, align 4
  %49 = and i32 %48, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool16.not = icmp eq i32 %49, 0
  br i1 %tobool16.not, label %if.end13.if.end22_crit_edge, label %if.then17

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %ndm_flags to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ndm_flags, align 2
  %52 = or i8 %51, 16
  store i8 %52, ptr %ndm_flags, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end13.if.end22_crit_edge
  %53 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %flags.i, align 4
  %55 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool25.not = icmp eq i32 %55, 0
  br i1 %tobool25.not, label %if.end22.if.end31_crit_edge, label %if.then26

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %ndm_flags to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ndm_flags, align 2
  %58 = or i8 %57, 64
  store i8 %58, ptr %ndm_flags, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end22.if.end31_crit_edge
  %key = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %fdb, i32 0, i32 2
  %call32 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 6, ptr noundef %key) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.if.then.i.i_crit_edge

if.end31.if.then.i.i_crit_edge:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end35:                                         ; preds = %if.end31
  %59 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev3, align 4
  %ifindex37 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 17
  %61 = ptrtoint ptr %ifindex37 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ifindex37, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %63 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool39.not = icmp eq i32 %call.i, 0
  br i1 %tobool39.not, label %if.end41, label %if.end35.if.then.i.i_crit_edge

if.end35.if.then.i.i_crit_edge:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end41:                                         ; preds = %if.end35
  %used = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %fdb, i32 0, i32 7
  %64 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %used, align 4
  %sub = sub i32 %2, %65
  %call42 = call i32 @jiffies_to_clock_t(i32 noundef %sub) #10
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call42, ptr %3, align 4
  %67 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %ci, align 4
  %updated = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %fdb, i32 0, i32 6
  %68 = ptrtoint ptr %updated to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %updated, align 128
  %sub43 = sub i32 %2, %69
  %call44 = call i32 @jiffies_to_clock_t(i32 noundef %sub43) #10
  %70 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call44, ptr %4, align 4
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %5, align 4
  %call45 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 16, ptr noundef nonnull %ci) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end41.if.then.i.i_crit_edge

if.end41.if.then.i.i_crit_edge:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end48:                                         ; preds = %if.end41
  %vlan_id = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %fdb, i32 0, i32 2, i32 1
  %72 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %vlan_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool51.not = icmp eq i16 %73, 0
  br i1 %tobool51.not, label %if.end48.if.end57_crit_edge, label %land.lhs.true

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

land.lhs.true:                                    ; preds = %if.end48
  %call54 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 2, ptr noundef %vlan_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %land.lhs.true.if.end57_crit_edge, label %land.lhs.true.if.then.i.i_crit_edge

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.end57:                                         ; preds = %land.lhs.true.if.end57_crit_edge, %if.end48.if.end57_crit_edge
  %74 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %flags.i, align 4
  %76 = and i32 %75, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool60.not = icmp eq i32 %76, 0
  br i1 %tobool60.not, label %if.end57.if.end80_crit_edge, label %if.then61

if.end57.if.end80_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then61:                                        ; preds = %if.end57
  %77 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tail.i.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32782, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool63.not153 = icmp eq ptr %78, null
  %tobool63.not = select i1 %cmp.i.i, i1 true, i1 %tobool63.not153
  br i1 %tobool63.not, label %if.then61.if.then.i.i_crit_edge, label %if.end65

if.then61.if.then.i.i_crit_edge:                  ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end65:                                         ; preds = %if.then61
  %79 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %flags.i, align 4
  %81 = and i32 %80, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool68.not = icmp eq i32 %81, 0
  %spec.select = select i1 %tobool68.not, i8 1, i8 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i136) #10
  %82 = ptrtoint ptr %tmp.i136 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %spec.select, ptr %tmp.i136, align 1
  %call.i137 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i136) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i136) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool75.not = icmp eq i32 %call.i137, 0
  br i1 %tobool75.not, label %cleanup, label %if.then76

if.then76:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @nla_nest_cancel(ptr noundef %skb, ptr noundef nonnull %78)
  br label %if.then.i.i

cleanup:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %84 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %78 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %85 = ptrtoint ptr %78 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv.i, ptr %78, align 2
  br label %if.end80

if.end80:                                         ; preds = %cleanup, %if.end57.if.end80_crit_edge
  %86 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i140 = ptrtoint ptr %87 to i32
  %sub.ptr.rhs.cast.i141 = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i142 = sub i32 %sub.ptr.lhs.cast.i140, %sub.ptr.rhs.cast.i141
  %88 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %sub.ptr.sub.i142, ptr %call3.i, align 4
  br label %cleanup81

if.then.i.i:                                      ; preds = %if.then76, %if.then61.if.then.i.i_crit_edge, %land.lhs.true.if.then.i.i_crit_edge, %if.end41.if.then.i.i_crit_edge, %if.end35.if.then.i.i_crit_edge, %if.end31.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %89 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i144 = icmp ugt ptr %90, %call3.i
  br i1 %cmp.i.i144, label %do.end.i.i, label %if.then.i.i.nlmsg_cancel.exit_crit_edge, !prof !175

if.then.i.i.nlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i.nlmsg_cancel.exit_crit_edge
  %91 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i145 = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i.i146 = ptrtoint ptr %92 to i32
  %sub.ptr.sub.i.i147 = sub i32 %sub.ptr.lhs.cast.i.i145, %sub.ptr.rhs.cast.i.i146
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i147) #10
  br label %cleanup81

cleanup81:                                        ; preds = %nlmsg_cancel.exit, %if.end80, %nlmsg_put.exit.cleanup81_crit_edge, %skb_tailroom.exit.i.cleanup81_crit_edge, %entry.cleanup81_crit_edge
  %retval.0 = phi i32 [ -90, %nlmsg_cancel.exit ], [ 0, %if.end80 ], [ -90, %nlmsg_put.exit.cleanup81_crit_edge ], [ -90, %skb_tailroom.exit.i.cleanup81_crit_edge ], [ -90, %entry.cleanup81_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ci) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_fdb_get(ptr noundef %skb, ptr nocapture noundef readnone %tb, ptr noundef %dev, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid, i32 noundef %portid, i32 noundef %seq, ptr noundef writeonly %extack) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !171
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 696, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %fdb_hash_tbl.i = getelementptr i8, ptr %dev, i32 2412
  %call.i9 = tail call fastcc ptr @fdb_find_rcu(ptr noundef %fdb_hash_tbl.i, ptr noundef %addr, i16 noundef zeroext %vid) #10
  %tobool.not = icmp eq ptr %call.i9, null
  br i1 %tobool.not, label %do.body, label %if.end4

do.body:                                          ; preds = %rcu_read_lock.exit
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_fdb_get.__msg) #10
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.errout_crit_edge, label %if.then3

do.body.errout_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %errout

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @br_fdb_get.__msg, ptr %extack, align 4
  br label %errout

if.end4:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call fastcc i32 @fdb_fill_info(ptr noundef %skb, ptr noundef %add.ptr.i, ptr noundef nonnull %call.i9, i32 noundef %portid, i32 noundef %seq, i32 noundef 28, i32 noundef 0)
  br label %errout

errout:                                           ; preds = %if.end4, %if.then3, %do.body.errout_crit_edge
  %err.0 = phi i32 [ %call5, %if.end4 ], [ -2, %if.then3 ], [ -2, %do.body.errout_crit_edge ]
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i10, label %errout.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

errout.rcu_read_unlock.exit_crit_edge:            ; preds = %errout
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %errout
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.25) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %errout.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !172
  %5 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i17 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %8, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_fdb_add(ptr noundef %ndm, ptr nocapture noundef readonly %tb, ptr noundef %dev, ptr noundef %addr, i16 noundef zeroext %vid, i16 noundef zeroext %nlh_flags, ptr noundef %extack) local_unnamed_addr #2 align 64 {
entry:
  %nfea_tb = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nfea_tb) #10
  %0 = ptrtoint ptr %nfea_tb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nfea_tb, align 4, !annotation !187
  %1 = getelementptr inbounds [3 x ptr], ptr %nfea_tb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !187
  %3 = getelementptr inbounds [3 x ptr], ptr %nfea_tb, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !187
  tail call fastcc void @trace_br_fdb_add(ptr noundef %ndm, ptr noundef %dev, ptr noundef %addr, i16 noundef zeroext %vid, i16 noundef zeroext %nlh_flags)
  %ndm_state = getelementptr inbounds %struct.ndmsg, ptr %ndm, i32 0, i32 4
  %5 = ptrtoint ptr %ndm_state to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ndm_state, align 4
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr, align 4
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %10 to i32
  %or.i = or i32 %8, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %11 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %12, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end10
  %add.ptr.i135 = getelementptr i8, ptr %dev, i32 2304
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i, label %if.then12.br_vlan_group.exit_crit_edge, label %land.lhs.true.i

if.then12.br_vlan_group.exit_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_vlan_group.exit

land.lhs.true.i:                                  ; preds = %if.then12
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.br_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.br_vlan_group.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.br_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.br_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 1471, ptr noundef nonnull @.str.30) #10
  br label %br_vlan_group.exit

br_vlan_group.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.br_vlan_group.exit_crit_edge, %land.lhs.true.i.br_vlan_group.exit_crit_edge, %if.then12.br_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr i8, ptr %dev, i32 2408
  br label %if.end26

if.else:                                          ; preds = %if.end10
  %and.i.i = and i64 %12, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.do.end20_crit_edge, label %do.body.i

if.else.do.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end20

do.body.i:                                        ; preds = %if.else
  %call1.i136 = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call1.i136, label %do.body.i.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true.i138

do.body.i.br_port_get_rtnl.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rtnl.exit

land.lhs.true.i138:                               ; preds = %do.body.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i137 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i137, label %land.lhs.true.i138.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i138.br_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i138
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rtnl.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i138
  %.b6.i = load i1, ptr @br_port_get_rtnl.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, label %if.then.i139

land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rtnl.exit

if.then.i139:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_port_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 422, ptr noundef nonnull @.str.30) #10
  br label %br_port_get_rtnl.exit

br_port_get_rtnl.exit:                            ; preds = %if.then.i139, %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, %land.lhs.true.i138.br_port_get_rtnl.exit_crit_edge, %do.body.i.br_port_get_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %13 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_handler_data.i, align 4
  %tobool16.not = icmp eq ptr %14, null
  br i1 %tobool16.not, label %br_port_get_rtnl.exit.do.end20_crit_edge, label %if.end23

br_port_get_rtnl.exit.do.end20_crit_edge:         ; preds = %br_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end20

do.end20:                                         ; preds = %br_port_get_rtnl.exit.do.end20_crit_edge, %if.else.do.end20_crit_edge
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %dev) #14
  br label %cleanup

if.end23:                                         ; preds = %br_port_get_rtnl.exit
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %call.i140 = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i140, label %if.end23.nbp_vlan_group.exit_crit_edge, label %land.lhs.true.i143

if.end23.nbp_vlan_group.exit_crit_edge:           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %nbp_vlan_group.exit

land.lhs.true.i143:                               ; preds = %if.end23
  %call1.i141 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i141)
  %tobool.not.i142 = icmp eq i32 %call1.i141, 0
  br i1 %tobool.not.i142, label %land.lhs.true.i143.nbp_vlan_group.exit_crit_edge, label %land.lhs.true2.i145

land.lhs.true.i143.nbp_vlan_group.exit_crit_edge: ; preds = %land.lhs.true.i143
  call void @__sanitizer_cov_trace_pc() #12
  br label %nbp_vlan_group.exit

land.lhs.true2.i145:                              ; preds = %land.lhs.true.i143
  %.b4.i144 = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i144, label %land.lhs.true2.i145.nbp_vlan_group.exit_crit_edge, label %if.then.i146

land.lhs.true2.i145.nbp_vlan_group.exit_crit_edge: ; preds = %land.lhs.true2.i145
  call void @__sanitizer_cov_trace_pc() #12
  br label %nbp_vlan_group.exit

if.then.i146:                                     ; preds = %land.lhs.true2.i145
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 1477, ptr noundef nonnull @.str.30) #10
  br label %nbp_vlan_group.exit

nbp_vlan_group.exit:                              ; preds = %if.then.i146, %land.lhs.true2.i145.nbp_vlan_group.exit_crit_edge, %land.lhs.true.i143.nbp_vlan_group.exit_crit_edge, %if.end23.nbp_vlan_group.exit_crit_edge
  %vlgrp.i147 = getelementptr inbounds %struct.net_bridge_port, ptr %14, i32 0, i32 5
  br label %if.end26

if.end26:                                         ; preds = %nbp_vlan_group.exit, %br_vlan_group.exit
  %br.0 = phi ptr [ %add.ptr.i135, %br_vlan_group.exit ], [ %16, %nbp_vlan_group.exit ]
  %p.0 = phi ptr [ null, %br_vlan_group.exit ], [ %14, %nbp_vlan_group.exit ]
  %vg.0.in = phi ptr [ %vlgrp.i, %br_vlan_group.exit ], [ %vlgrp.i147, %nbp_vlan_group.exit ]
  %17 = ptrtoint ptr %vg.0.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %vg.0 = load ptr, ptr %vg.0.in, align 4
  %arrayidx = getelementptr ptr, ptr %tb, i32 14
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %tobool27.not = icmp eq ptr %19, null
  br i1 %tobool27.not, label %if.else35, label %if.then28

if.then28:                                        ; preds = %if.end26
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %21)
  %tobool.not.i149 = icmp sgt i16 %21, -1
  br i1 %tobool.not.i149, label %do.body.i150, label %nla_parse_nested.exit

do.body.i150:                                     ; preds = %if.then28
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #10
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i150.cleanup_crit_edge, label %if.then2.i

do.body.i150.cleanup_crit_edge:                   ; preds = %do.body.i150
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i:                                       ; preds = %do.body.i150
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %23 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %19, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %24 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup

nla_parse_nested.exit:                            ; preds = %if.then28
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 4
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %19, align 2
  %conv.i.i = zext i16 %26 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %nfea_tb, i32 noundef 2, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @br_nda_fdb_pol, i32 noundef 31, ptr noundef %extack) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool32.not = icmp eq i32 %call6.i, 0
  br i1 %tobool32.not, label %nla_parse_nested.exit.if.end37_crit_edge, label %nla_parse_nested.exit.cleanup_crit_edge

nla_parse_nested.exit.cleanup_crit_edge:          ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

nla_parse_nested.exit.if.end37_crit_edge:         ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.else35:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %27 = call ptr @memset(ptr %nfea_tb, i32 0, i32 12)
  br label %if.end37

if.end37:                                         ; preds = %if.else35, %nla_parse_nested.exit.if.end37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %tobool38.not = icmp eq i16 %vid, 0
  br i1 %tobool38.not, label %if.else55, label %if.then39

if.then39:                                        ; preds = %if.end37
  %call40 = call ptr @br_vlan_find(ptr noundef %vg.0, i16 noundef zeroext %vid) #10
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.then39.do.end46_crit_edge, label %lor.lhs.false

if.then39.do.end46_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

lor.lhs.false:                                    ; preds = %if.then39
  %flags.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call40, i32 0, i32 3
  %28 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flags.i.i, align 2
  %30 = and i16 %29, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %30)
  %.not = icmp eq i16 %30, 1
  br i1 %.not, label %lor.lhs.false.do.end46_crit_edge, label %if.end52

lor.lhs.false.do.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

do.end46:                                         ; preds = %lor.lhs.false.do.end46_crit_edge, %if.then39.do.end46_crit_edge
  %conv48 = zext i16 %vid to i32
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv48, ptr noundef %dev) #14
  br label %cleanup

if.end52:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call54 = call fastcc i32 @__br_fdb_add(ptr noundef %ndm, ptr noundef %br.0, ptr noundef %p.0, ptr noundef %addr, i16 noundef zeroext %nlh_flags, i16 noundef zeroext %vid, ptr noundef nonnull %nfea_tb, ptr noundef %extack)
  br label %cleanup

if.else55:                                        ; preds = %if.end37
  %call57 = call fastcc i32 @__br_fdb_add(ptr noundef %ndm, ptr noundef %br.0, ptr noundef %p.0, ptr noundef %addr, i16 noundef zeroext %nlh_flags, i16 noundef zeroext 0, ptr noundef nonnull %nfea_tb, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %lor.lhs.false59, label %if.else55.cleanup_crit_edge

if.else55.cleanup_crit_edge:                      ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false59:                                  ; preds = %if.else55
  %tobool60.not = icmp eq ptr %vg.0, null
  br i1 %tobool60.not, label %lor.lhs.false59.cleanup_crit_edge, label %lor.lhs.false61

lor.lhs.false59.cleanup_crit_edge:                ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false61:                                  ; preds = %lor.lhs.false59
  %num_vlans = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 3
  %31 = ptrtoint ptr %num_vlans to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %num_vlans, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool62.not = icmp eq i16 %32, 0
  br i1 %tobool62.not, label %lor.lhs.false61.cleanup_crit_edge, label %if.end64

lor.lhs.false61.cleanup_crit_edge:                ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end64:                                         ; preds = %lor.lhs.false61
  %vlan_list = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 2
  %33 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn157 = load ptr, ptr %vlan_list, align 4
  %cmp.not158 = icmp eq ptr %.pn157, %vlan_list
  br i1 %cmp.not158, label %if.end64.cleanup_crit_edge, label %if.end64.for.body_crit_edge

if.end64.for.body_crit_edge:                      ; preds = %if.end64
  br label %for.body

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end64.for.body_crit_edge
  %.pn159 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn157, %if.end64.for.body_crit_edge ]
  %flags.i.i151 = getelementptr i8, ptr %.pn159, i32 -546
  %34 = ptrtoint ptr %flags.i.i151 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %flags.i.i151, align 2
  %36 = and i16 %35, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %36)
  %.not156 = icmp eq i16 %36, 1
  br i1 %.not156, label %for.body.for.inc_crit_edge, label %if.end70

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end70:                                         ; preds = %for.body
  %vid71 = getelementptr i8, ptr %.pn159, i32 -548
  %37 = ptrtoint ptr %vid71 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vid71, align 8
  %call73 = call fastcc i32 @__br_fdb_add(ptr noundef %ndm, ptr noundef %br.0, ptr noundef %p.0, ptr noundef %addr, i16 noundef zeroext %nlh_flags, i16 noundef zeroext %38, ptr noundef nonnull %nfea_tb, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end70.for.inc_crit_edge, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end70.for.inc_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end70.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %39 = ptrtoint ptr %.pn159 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn = load ptr, ptr %.pn159, align 4
  %cmp.not = icmp eq ptr %.pn, %vlan_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %lor.lhs.false61.cleanup_crit_edge, %lor.lhs.false59.cleanup_crit_edge, %if.else55.cleanup_crit_edge, %if.end52, %do.end46, %nla_parse_nested.exit.cleanup_crit_edge, %if.then2.i, %do.body.i150.cleanup_crit_edge, %do.end20, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end7 ], [ -22, %do.end46 ], [ -22, %do.end20 ], [ -22, %do.end ], [ %call6.i, %nla_parse_nested.exit.cleanup_crit_edge ], [ %call54, %if.end52 ], [ %call57, %if.else55.cleanup_crit_edge ], [ 0, %lor.lhs.false61.cleanup_crit_edge ], [ 0, %lor.lhs.false59.cleanup_crit_edge ], [ -22, %if.then2.i ], [ -22, %do.body.i150.cleanup_crit_edge ], [ 0, %if.end64.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %call73, %if.end70.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nfea_tb) #10
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_br_fdb_add(ptr noundef %ndm, ptr noundef %dev, ptr noundef %addr, i16 noundef zeroext %vid, i16 noundef zeroext %nlh_flags) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_br_fdb_add, i32 0, i32 1), ptr blockaddress(@trace_br_fdb_add, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !170

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !188
  %call42 = tail call i32 @__traceiter_br_fdb_add(ptr noundef null, ptr noundef %ndm, ptr noundef %dev, ptr noundef %addr, i16 noundef zeroext %vid, i16 noundef zeroext %nlh_flags) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !189
  %13 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !170

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_br_fdb_add, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_br_fdb_add, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_br_fdb_add.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_br_fdb_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 40, ptr noundef nonnull @.str.27) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_vlan_find(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__br_fdb_add(ptr nocapture noundef readonly %ndm, ptr noundef %br, ptr noundef %p, ptr noundef %addr, i16 noundef zeroext %nlh_flags, i16 noundef zeroext %vid, ptr nocapture noundef readonly %nfea_tb, ptr noundef writeonly %extack) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ndm_flags = getelementptr inbounds %struct.ndmsg, ptr %ndm, i32 0, i32 5
  %0 = ptrtoint ptr %ndm_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ndm_flags, align 2
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq ptr %p, null
  br i1 %tobool1.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %3) #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  %state.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 8
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state.i, align 1
  %6 = and i8 %5, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %7 = icmp eq i8 %6, 2
  br i1 %7, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call fastcc void @local_bh_disable()
  %8 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !171
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end5.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end5.rcu_read_lock.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end5
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 696, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end5.rcu_read_lock.exit_crit_edge
  tail call void @br_fdb_update(ptr noundef %br, ptr noundef nonnull %p, ptr noundef %addr, i16 noundef zeroext %vid, i32 noundef 8)
  %call.i47 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i47, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i50

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i50:                                ; preds = %rcu_read_lock.exit
  %call1.i48 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %tobool.not.i49 = icmp eq i32 %call1.i48, 0
  br i1 %tobool.not.i49, label %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i52

land.lhs.true.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i52:                               ; preds = %land.lhs.true.i50
  %.b4.i51 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i51, label %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, label %if.then.i53

land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i53:                                      ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.25) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i53, %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !172
  %12 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i54 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i54 to ptr
  %preempt_count.i.i.i.i55 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i55, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i55, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  tail call fastcc void @local_bh_enable()
  br label %cleanup

if.else:                                          ; preds = %entry
  %and8 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else24, label %if.then10

if.then10:                                        ; preds = %if.else
  %tobool11.not = icmp eq ptr %p, null
  br i1 %tobool11.not, label %land.lhs.true, label %if.then10.if.end22_crit_edge

if.then10.if.end22_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

land.lhs.true:                                    ; preds = %if.then10
  %ndm_state = getelementptr inbounds %struct.ndmsg, ptr %ndm, i32 0, i32 4
  %16 = ptrtoint ptr %ndm_state to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ndm_state, align 4
  %18 = and i16 %17, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool14.not = icmp eq i16 %18, 0
  br i1 %tobool14.not, label %do.body16, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

do.body16:                                        ; preds = %land.lhs.true
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__br_fdb_add.__msg) #10
  %tobool17.not = icmp eq ptr %extack, null
  br i1 %tobool17.not, label %do.body16.cleanup_crit_edge, label %if.then18

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @__br_fdb_add.__msg, ptr %extack, align 4
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %if.then10.if.end22_crit_edge
  %call23 = tail call i32 @br_fdb_external_learn_add(ptr noundef %br, ptr noundef %p, ptr noundef %addr, i16 noundef zeroext %vid, i1 noundef zeroext true)
  br label %cleanup

if.else24:                                        ; preds = %if.else
  %hash_lock = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %hash_lock) #10
  %20 = ptrtoint ptr %ndm_flags to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ndm_flags, align 2
  %22 = and i8 %21, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i56 = icmp eq i8 %22, 0
  %arrayidx.i = getelementptr ptr, ptr %nfea_tb, i32 2
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %24, null
  %ndm_state.i = getelementptr inbounds %struct.ndmsg, ptr %ndm, i32 0, i32 4
  %25 = ptrtoint ptr %ndm_state.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ndm_state.i, align 4
  %tobool5.not.i = icmp eq ptr %p, null
  br i1 %tobool5.not.i, label %land.lhs.true22.critedge.i, label %land.lhs.true.i57

land.lhs.true.i57:                                ; preds = %if.else24
  %27 = and i16 %26, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %land.lhs.true13.i, label %land.lhs.true.i57.if.end27.i_crit_edge

land.lhs.true.i57.if.end27.i_crit_edge:           ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

land.lhs.true13.i:                                ; preds = %land.lhs.true.i57
  %state14.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 8
  %29 = ptrtoint ptr %state14.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %state14.i, align 1
  %31 = and i8 %30, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %switch.i = icmp eq i8 %31, 2
  br i1 %switch.i, label %land.lhs.true13.i.if.end27.i_crit_edge, label %land.lhs.true13.i.fdb_add_entry.exit_crit_edge

land.lhs.true13.i.fdb_add_entry.exit_crit_edge:   ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fdb_add_entry.exit

land.lhs.true13.i.if.end27.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

land.lhs.true22.critedge.i:                       ; preds = %if.else24
  %32 = and i16 %26, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool25.not.i = icmp eq i16 %32, 0
  br i1 %tobool25.not.i, label %do.end.i, label %land.lhs.true22.critedge.i.if.end27.i_crit_edge

land.lhs.true22.critedge.i.if.end27.i_crit_edge:  ; preds = %land.lhs.true22.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

do.end.i:                                         ; preds = %land.lhs.true22.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  %call.i58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %34) #14
  br label %fdb_add_entry.exit

if.end27.i:                                       ; preds = %land.lhs.true22.critedge.i.if.end27.i_crit_edge, %land.lhs.true13.i.if.end27.i_crit_edge, %land.lhs.true.i57.if.end27.i_crit_edge
  %35 = and i16 %26, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool33.not.i = icmp eq i16 %35, 0
  %or.cond200.i = select i1 %tobool.not.i56, i1 true, i1 %tobool33.not.i
  br i1 %or.cond200.i, label %if.end35.i, label %if.end27.i.fdb_add_entry.exit_crit_edge

if.end27.i.fdb_add_entry.exit_crit_edge:          ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fdb_add_entry.exit

if.end35.i:                                       ; preds = %if.end27.i
  %arrayidx36.i = getelementptr ptr, ptr %nfea_tb, i32 1
  %36 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx36.i, align 4
  %tobool37.not.i = icmp eq ptr %37, null
  br i1 %tobool37.not.i, label %if.end35.i.if.end51.i_crit_edge, label %if.then38.i

if.end35.i.if.end51.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i

if.then38.i:                                      ; preds = %if.end35.i
  %add.ptr.i.i.i = getelementptr i8, ptr %37, i32 4
  %38 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %add.ptr.i.i.i, align 1
  %conv41.i = zext i8 %39 to i32
  %and42.i = and i32 %conv41.i, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp ne i32 %and42.i, 0
  %and46.i = and i32 %conv41.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and46.i)
  %cmp47.i = icmp eq i32 %and46.i, 2
  %or.cond201.i = or i1 %tobool43.not.i, %cmp47.i
  br i1 %or.cond201.i, label %if.then38.i.fdb_add_entry.exit_crit_edge, label %if.then38.i.if.end51.i_crit_edge

if.then38.i.if.end51.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i

if.then38.i.fdb_add_entry.exit_crit_edge:         ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fdb_add_entry.exit

if.end51.i:                                       ; preds = %if.then38.i.if.end51.i_crit_edge, %if.end35.i.if.end51.i_crit_edge
  %notify.0.i = phi i8 [ 0, %if.end35.i.if.end51.i_crit_edge ], [ %39, %if.then38.i.if.end51.i_crit_edge ]
  %call52.i = tail call fastcc ptr @br_fdb_find(ptr noundef %br, ptr noundef %addr, i16 noundef zeroext %vid) #10
  %cmp53.i = icmp eq ptr %call52.i, null
  br i1 %cmp53.i, label %if.then55.i, label %if.else.i

if.then55.i:                                      ; preds = %if.end51.i
  %40 = and i16 %nlh_flags, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool58.not.i = icmp eq i16 %40, 0
  br i1 %tobool58.not.i, label %if.then55.i.fdb_add_entry.exit_crit_edge, label %if.end60.i

if.then55.i.fdb_add_entry.exit_crit_edge:         ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fdb_add_entry.exit

if.end60.i:                                       ; preds = %if.then55.i
  %call61.i = tail call fastcc ptr @fdb_create(ptr noundef %br, ptr noundef %p, ptr noundef %addr, i16 noundef zeroext %vid, i32 noundef 0) #10
  %tobool62.not.i = icmp eq ptr %call61.i, null
  br i1 %tobool62.not.i, label %if.end60.i.fdb_add_entry.exit_crit_edge, label %if.end60.i.if.end88.i_crit_edge

if.end60.i.if.end88.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.i

if.end60.i.fdb_add_entry.exit_crit_edge:          ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fdb_add_entry.exit

if.else.i:                                        ; preds = %if.end51.i
  %41 = and i16 %nlh_flags, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool67.not.i = icmp eq i16 %41, 0
  br i1 %tobool67.not.i, label %do.end72.i, label %if.else.i.fdb_add_entry.exit_crit_edge

if.else.i.fdb_add_entry.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fdb_add_entry.exit

do.end72.i:                                       ; preds = %if.else.i
  %dst.i = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call52.i, i32 0, i32 1
  %42 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %dst.i, align 4
  %cmp74.not.i = icmp eq ptr %43, %p
  br i1 %cmp74.not.i, label %do.end72.i.if.end88.i_crit_edge, label %do.body81.i

do.end72.i.if.end88.i_crit_edge:                  ; preds = %do.end72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.i

do.body81.i:                                      ; preds = %do.end72.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %p, ptr %dst.i, align 4
  br label %if.end88.i

if.end88.i:                                       ; preds = %do.body81.i, %do.end72.i.if.end88.i_crit_edge, %if.end60.i.if.end88.i_crit_edge
  %fdb.0.i = phi ptr [ %call52.i, %do.body81.i ], [ %call52.i, %do.end72.i.if.end88.i_crit_edge ], [ %call61.i, %if.end60.i.if.end88.i_crit_edge ]
  %modified.0.off0.i = phi i1 [ true, %do.body81.i ], [ false, %do.end72.i.if.end88.i_crit_edge ], [ true, %if.end60.i.if.end88.i_crit_edge ]
  %flags.i.i = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %fdb.0.i, i32 0, i32 4
  %45 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end88.i.fdb_to_nud.exit.i_crit_edge

if.end88.i.fdb_to_nud.exit.i_crit_edge:           ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fdb_to_nud.exit.i

if.else.i.i:                                      ; preds = %if.end88.i
  %47 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flags.i.i, align 4
  %49 = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool3.not.i.i = icmp eq i32 %49, 0
  br i1 %tobool3.not.i.i, label %if.else5.i.i, label %if.else.i.i.fdb_to_nud.exit.i_crit_edge

if.else.i.i.fdb_to_nud.exit.i_crit_edge:          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fdb_to_nud.exit.i

if.else5.i.i:                                     ; preds = %if.else.i.i
  %50 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %flags.i.i, align 4
  %52 = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i.i.i = icmp eq i32 %52, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %if.else5.i.i.has_expired.exit.thread.i.i_crit_edge

if.else5.i.i.has_expired.exit.thread.i.i_crit_edge: ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %has_expired.exit.thread.i.i

land.lhs.true.i.i.i:                              ; preds = %if.else5.i.i
  %53 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %flags.i.i, align 4
  %55 = and i32 %54, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool3.not.i.i.i = icmp eq i32 %55, 0
  br i1 %tobool3.not.i.i.i, label %has_expired.exit.i.i, label %land.lhs.true.i.i.i.has_expired.exit.thread.i.i_crit_edge

land.lhs.true.i.i.i.has_expired.exit.thread.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %has_expired.exit.thread.i.i

has_expired.exit.i.i:                             ; preds = %land.lhs.true.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %updated.i.i.i = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %fdb.0.i, i32 0, i32 6
  %57 = ptrtoint ptr %updated.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %updated.i.i.i, align 128
  %topology_change.i.i.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 15
  %59 = ptrtoint ptr %topology_change.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %topology_change.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i.i.i.i = icmp eq i8 %60, 0
  %forward_delay.i.i.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 20
  %ageing_time.i.i.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 21
  %cond.in.i.i.i.i = select i1 %tobool.not.i.i.i.i, ptr %ageing_time.i.i.i.i, ptr %forward_delay.i.i.i.i
  %61 = ptrtoint ptr %cond.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %cond.i.i.i.i = load i32, ptr %cond.in.i.i.i.i, align 4
  %62 = xor i32 %56, -1
  %add.i.i.i59 = add i32 %58, %62
  %63 = add i32 %add.i.i.i59, %cond.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %tobool7.not.i.i = icmp sgt i32 %63, -1
  br i1 %tobool7.not.i.i, label %has_expired.exit.i.i.has_expired.exit.thread.i.i_crit_edge, label %has_expired.exit.i.i.fdb_to_nud.exit.i_crit_edge

has_expired.exit.i.i.fdb_to_nud.exit.i_crit_edge: ; preds = %has_expired.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fdb_to_nud.exit.i

has_expired.exit.i.i.has_expired.exit.thread.i.i_crit_edge: ; preds = %has_expired.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %has_expired.exit.thread.i.i

has_expired.exit.thread.i.i:                      ; preds = %has_expired.exit.i.i.has_expired.exit.thread.i.i_crit_edge, %land.lhs.true.i.i.i.has_expired.exit.thread.i.i_crit_edge, %if.else5.i.i.has_expired.exit.thread.i.i_crit_edge
  br label %fdb_to_nud.exit.i

fdb_to_nud.exit.i:                                ; preds = %has_expired.exit.thread.i.i, %has_expired.exit.i.i.fdb_to_nud.exit.i_crit_edge, %if.else.i.i.fdb_to_nud.exit.i_crit_edge, %if.end88.i.fdb_to_nud.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 128, %if.end88.i.fdb_to_nud.exit.i_crit_edge ], [ 64, %if.else.i.i.fdb_to_nud.exit.i_crit_edge ], [ 2, %has_expired.exit.thread.i.i ], [ 4, %has_expired.exit.i.i.fdb_to_nud.exit.i_crit_edge ]
  %conv90.i = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %conv90.i)
  %cmp91.not.i = icmp eq i32 %retval.0.i.i, %conv90.i
  br i1 %cmp91.not.i, label %fdb_to_nud.exit.i.if.end124.i_crit_edge, label %if.then93.i

fdb_to_nud.exit.i.if.end124.i_crit_edge:          ; preds = %fdb_to_nud.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124.i

if.then93.i:                                      ; preds = %fdb_to_nud.exit.i
  %and95.i = and i32 %conv90.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i)
  %tobool96.not.i = icmp eq i32 %and95.i, 0
  br i1 %tobool96.not.i, label %if.else104.i, label %if.then97.i

if.then97.i:                                      ; preds = %if.then93.i
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #10
  %call100.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i)
  %tobool101.not.i = icmp eq i32 %call100.i, 0
  br i1 %tobool101.not.i, label %if.then102.i, label %if.then97.i.if.end124.i_crit_edge

if.then97.i.if.end124.i_crit_edge:                ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124.i

if.then102.i:                                     ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fdb_add_hw_addr(ptr noundef %br, ptr noundef %addr) #10
  br label %if.end124.i

if.else104.i:                                     ; preds = %if.then93.i
  %and106.i = and i32 %conv90.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i)
  %tobool107.not.i = icmp eq i32 %and106.i, 0
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i.i) #10
  br i1 %tobool107.not.i, label %if.else115.i, label %if.then108.i

if.then108.i:                                     ; preds = %if.else104.i
  %call111.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i)
  %tobool112.not.i = icmp eq i32 %call111.i, 0
  br i1 %tobool112.not.i, label %if.then113.i, label %if.then108.i.if.end124.i_crit_edge

if.then108.i.if.end124.i_crit_edge:               ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124.i

if.then113.i:                                     ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fdb_add_hw_addr(ptr noundef %br, ptr noundef %addr) #10
  br label %if.end124.i

if.else115.i:                                     ; preds = %if.else104.i
  %call118.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118.i)
  %tobool119.not.i = icmp eq i32 %call118.i, 0
  br i1 %tobool119.not.i, label %if.else115.i.if.end124.i_crit_edge, label %if.then120.i

if.else115.i.if.end124.i_crit_edge:               ; preds = %if.else115.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124.i

if.then120.i:                                     ; preds = %if.else115.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fdb_del_hw_addr(ptr noundef %br, ptr noundef %addr) #10
  br label %if.end124.i

if.end124.i:                                      ; preds = %if.then120.i, %if.else115.i.if.end124.i_crit_edge, %if.then113.i, %if.then108.i.if.end124.i_crit_edge, %if.then102.i, %if.then97.i.if.end124.i_crit_edge, %fdb_to_nud.exit.i.if.end124.i_crit_edge
  %modified.1.off0.i = phi i1 [ %modified.0.off0.i, %fdb_to_nud.exit.i.if.end124.i_crit_edge ], [ true, %if.then113.i ], [ true, %if.then108.i.if.end124.i_crit_edge ], [ true, %if.then120.i ], [ true, %if.else115.i.if.end124.i_crit_edge ], [ true, %if.then97.i.if.end124.i_crit_edge ], [ true, %if.then102.i ]
  %.lobit.i = lshr exact i8 %22, 6
  %64 = zext i8 %.lobit.i to i32
  %65 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %flags.i.i, align 4
  %shr.i.i = lshr i32 %66, 2
  %and1.i.i = and i32 %shr.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i.i, i32 %64)
  %cmp129.not.i = icmp eq i32 %and1.i.i, %64
  br i1 %cmp129.not.i, label %if.end124.i.if.end133.i_crit_edge, label %if.then131.i

if.end124.i.if.end133.i_crit_edge:                ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133.i

if.then131.i:                                     ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_change_bit(i32 noundef 2, ptr noundef %flags.i.i) #10
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.then131.i, %if.end124.i.if.end133.i_crit_edge
  %modified.2.off0.i = phi i1 [ true, %if.then131.i ], [ %modified.1.off0.i, %if.end124.i.if.end133.i_crit_edge ]
  %conv.i.i = zext i8 %notify.0.i to i32
  %and.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i202.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i202.i, label %if.end133.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end133.i.if.end.i.i_crit_edge:                 ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %flags.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %if.end133.i.if.end.i.i_crit_edge
  %modified.0.off0.i.i = phi i1 [ false, %if.end133.i.if.end.i.i_crit_edge ], [ %tobool1.not.i.i, %land.lhs.true.i.i ]
  %and3.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true13.critedge.i.i, label %land.lhs.true5.i.i

land.lhs.true5.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i.i = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %flags.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  %spec.select28.i.i = select i1 %tobool8.not.i.i, i1 true, i1 %modified.0.off0.i.i
  br label %fdb_handle_notify.exit.i

land.lhs.true13.critedge.i.i:                     ; preds = %if.end.i.i
  %call15.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flags.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %land.lhs.true13.critedge.i.i.fdb_handle_notify.exit.i_crit_edge, label %if.then17.i.i

land.lhs.true13.critedge.i.i.fdb_handle_notify.exit.i_crit_edge: ; preds = %land.lhs.true13.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fdb_handle_notify.exit.i

if.then17.i.i:                                    ; preds = %land.lhs.true13.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %flags.i.i) #10
  br label %fdb_handle_notify.exit.i

fdb_handle_notify.exit.i:                         ; preds = %if.then17.i.i, %land.lhs.true13.critedge.i.i.fdb_handle_notify.exit.i_crit_edge, %land.lhs.true5.i.i
  %modified.1.off0.i.i = phi i1 [ true, %if.then17.i.i ], [ %modified.0.off0.i.i, %land.lhs.true13.critedge.i.i.fdb_handle_notify.exit.i_crit_edge ], [ %spec.select28.i.i, %land.lhs.true5.i.i ]
  %spec.select.i = or i1 %modified.2.off0.i, %modified.1.off0.i.i
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %used.i = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %fdb.0.i, i32 0, i32 7
  %68 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %used.i, align 4
  br i1 %spec.select.i, label %if.then139.i, label %fdb_handle_notify.exit.i.fdb_add_entry.exit_crit_edge

fdb_handle_notify.exit.i.fdb_add_entry.exit_crit_edge: ; preds = %fdb_handle_notify.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fdb_add_entry.exit

if.then139.i:                                     ; preds = %fdb_handle_notify.exit.i
  br i1 %tobool2.not.i, label %if.then141.i, label %if.then139.i.if.end142.i_crit_edge

if.then139.i.if.end142.i_crit_edge:               ; preds = %if.then139.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142.i

if.then141.i:                                     ; preds = %if.then139.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %updated.i = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %fdb.0.i, i32 0, i32 6
  %70 = ptrtoint ptr %updated.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %updated.i, align 128
  br label %if.end142.i

if.end142.i:                                      ; preds = %if.then141.i, %if.then139.i.if.end142.i_crit_edge
  tail call fastcc void @fdb_notify(ptr noundef %br, ptr noundef nonnull %fdb.0.i, i32 noundef 28, i1 noundef zeroext true) #10
  br label %fdb_add_entry.exit

fdb_add_entry.exit:                               ; preds = %if.end142.i, %fdb_handle_notify.exit.i.fdb_add_entry.exit_crit_edge, %if.else.i.fdb_add_entry.exit_crit_edge, %if.end60.i.fdb_add_entry.exit_crit_edge, %if.then55.i.fdb_add_entry.exit_crit_edge, %if.then38.i.fdb_add_entry.exit_crit_edge, %if.end27.i.fdb_add_entry.exit_crit_edge, %do.end.i, %land.lhs.true13.i.fdb_add_entry.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ -1, %land.lhs.true13.i.fdb_add_entry.exit_crit_edge ], [ -22, %if.end27.i.fdb_add_entry.exit_crit_edge ], [ -22, %if.then38.i.fdb_add_entry.exit_crit_edge ], [ -2, %if.then55.i.fdb_add_entry.exit_crit_edge ], [ -12, %if.end60.i.fdb_add_entry.exit_crit_edge ], [ -17, %if.else.i.fdb_add_entry.exit_crit_edge ], [ 0, %if.end142.i ], [ 0, %fdb_handle_notify.exit.i.fdb_add_entry.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %hash_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %fdb_add_entry.exit, %if.end22, %if.then18, %do.body16.cleanup_crit_edge, %rcu_read_unlock.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.then18 ], [ -22, %do.body16.cleanup_crit_edge ], [ 0, %rcu_read_unlock.exit ], [ %call23, %if.end22 ], [ %retval.0.i, %fdb_add_entry.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_fdb_delete(ptr nocapture noundef readnone %ndm, ptr nocapture noundef readnone %tb, ptr noundef %dev, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %1, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i, label %if.then.br_vlan_group.exit_crit_edge, label %land.lhs.true.i

if.then.br_vlan_group.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_vlan_group.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.br_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.br_vlan_group.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.br_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.br_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 1471, ptr noundef nonnull @.str.30) #10
  br label %br_vlan_group.exit

br_vlan_group.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.br_vlan_group.exit_crit_edge, %land.lhs.true.i.br_vlan_group.exit_crit_edge, %if.then.br_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr i8, ptr %dev, i32 2408
  br label %if.end8

if.else:                                          ; preds = %entry
  %and.i.i = and i64 %1, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.do.end_crit_edge, label %do.body.i

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.body.i:                                        ; preds = %if.else
  %call1.i76 = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call1.i76, label %do.body.i.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true.i78

do.body.i.br_port_get_rtnl.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rtnl.exit

land.lhs.true.i78:                                ; preds = %do.body.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i77 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i77, label %land.lhs.true.i78.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i78.br_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rtnl.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i78
  %.b6.i = load i1, ptr @br_port_get_rtnl.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, label %if.then.i79

land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rtnl.exit

if.then.i79:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_port_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 422, ptr noundef nonnull @.str.30) #10
  br label %br_port_get_rtnl.exit

br_port_get_rtnl.exit:                            ; preds = %if.then.i79, %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, %land.lhs.true.i78.br_port_get_rtnl.exit_crit_edge, %do.body.i.br_port_get_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %2 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_handler_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %br_port_get_rtnl.exit.do.end_crit_edge, label %if.end

br_port_get_rtnl.exit.do.end_crit_edge:           ; preds = %br_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %br_port_get_rtnl.exit.do.end_crit_edge, %if.else.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %dev) #14
  br label %cleanup

if.end:                                           ; preds = %br_port_get_rtnl.exit
  %call.i80 = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i80, label %if.end.nbp_vlan_group.exit_crit_edge, label %land.lhs.true.i83

if.end.nbp_vlan_group.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %nbp_vlan_group.exit

land.lhs.true.i83:                                ; preds = %if.end
  %call1.i81 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i81)
  %tobool.not.i82 = icmp eq i32 %call1.i81, 0
  br i1 %tobool.not.i82, label %land.lhs.true.i83.nbp_vlan_group.exit_crit_edge, label %land.lhs.true2.i85

land.lhs.true.i83.nbp_vlan_group.exit_crit_edge:  ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #12
  br label %nbp_vlan_group.exit

land.lhs.true2.i85:                               ; preds = %land.lhs.true.i83
  %.b4.i84 = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i84, label %land.lhs.true2.i85.nbp_vlan_group.exit_crit_edge, label %if.then.i86

land.lhs.true2.i85.nbp_vlan_group.exit_crit_edge: ; preds = %land.lhs.true2.i85
  call void @__sanitizer_cov_trace_pc() #12
  br label %nbp_vlan_group.exit

if.then.i86:                                      ; preds = %land.lhs.true2.i85
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 1477, ptr noundef nonnull @.str.30) #10
  br label %nbp_vlan_group.exit

nbp_vlan_group.exit:                              ; preds = %if.then.i86, %land.lhs.true2.i85.nbp_vlan_group.exit_crit_edge, %land.lhs.true.i83.nbp_vlan_group.exit_crit_edge, %if.end.nbp_vlan_group.exit_crit_edge
  %vlgrp.i87 = getelementptr inbounds %struct.net_bridge_port, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  br label %if.end8

if.end8:                                          ; preds = %nbp_vlan_group.exit, %br_vlan_group.exit
  %br.0 = phi ptr [ %add.ptr.i, %br_vlan_group.exit ], [ %5, %nbp_vlan_group.exit ]
  %p.0 = phi ptr [ null, %br_vlan_group.exit ], [ %3, %nbp_vlan_group.exit ]
  %vg.0.in = phi ptr [ %vlgrp.i, %br_vlan_group.exit ], [ %vlgrp.i87, %nbp_vlan_group.exit ]
  %6 = ptrtoint ptr %vg.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %vg.0 = load ptr, ptr %vg.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %tobool9.not = icmp eq i16 %vid, 0
  br i1 %tobool9.not, label %if.else23, label %if.then10

if.then10:                                        ; preds = %if.end8
  %call11 = tail call ptr @br_vlan_find(ptr noundef %vg.0, i16 noundef zeroext %vid) #10
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end16, label %if.end21

do.end16:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %vid to i32
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv, ptr noundef %dev) #14
  br label %cleanup

if.end21:                                         ; preds = %if.then10
  %hash_lock.i = getelementptr inbounds %struct.net_bridge, ptr %br.0, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %hash_lock.i) #10
  %call.i.i = tail call fastcc ptr @br_fdb_find(ptr noundef %br.0, ptr noundef %addr, i16 noundef zeroext %vid) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end21.__br_fdb_delete.exit_crit_edge, label %do.end.i.i

if.end21.__br_fdb_delete.exit_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %__br_fdb_delete.exit

do.end.i.i:                                       ; preds = %if.end21
  %dst.i.i = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %dst.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %8, %p.0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.end.i.i.__br_fdb_delete.exit_crit_edge

do.end.i.i.__br_fdb_delete.exit_crit_edge:        ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__br_fdb_delete.exit

if.end.i.i:                                       ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fdb_delete(ptr noundef %br.0, ptr noundef nonnull %call.i.i, i1 noundef zeroext true) #10
  br label %__br_fdb_delete.exit

__br_fdb_delete.exit:                             ; preds = %if.end.i.i, %do.end.i.i.__br_fdb_delete.exit_crit_edge, %if.end21.__br_fdb_delete.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end.i.i ], [ -2, %do.end.i.i.__br_fdb_delete.exit_crit_edge ], [ -2, %if.end21.__br_fdb_delete.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %hash_lock.i) #10
  br label %cleanup

if.else23:                                        ; preds = %if.end8
  %hash_lock.i89 = getelementptr inbounds %struct.net_bridge, ptr %br.0, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %hash_lock.i89) #10
  %call.i.i90 = tail call fastcc ptr @br_fdb_find(ptr noundef %br.0, ptr noundef %addr, i16 noundef zeroext 0) #10
  %tobool.not.i.i91 = icmp eq ptr %call.i.i90, null
  br i1 %tobool.not.i.i91, label %if.else23.__br_fdb_delete.exit97_crit_edge, label %do.end.i.i94

if.else23.__br_fdb_delete.exit97_crit_edge:       ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #12
  br label %__br_fdb_delete.exit97

do.end.i.i94:                                     ; preds = %if.else23
  %dst.i.i92 = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call.i.i90, i32 0, i32 1
  %9 = ptrtoint ptr %dst.i.i92 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %dst.i.i92, align 4
  %cmp.not.i.i93 = icmp eq ptr %10, %p.0
  br i1 %cmp.not.i.i93, label %if.end.i.i95, label %do.end.i.i94.__br_fdb_delete.exit97_crit_edge

do.end.i.i94.__br_fdb_delete.exit97_crit_edge:    ; preds = %do.end.i.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %__br_fdb_delete.exit97

if.end.i.i95:                                     ; preds = %do.end.i.i94
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fdb_delete(ptr noundef %br.0, ptr noundef nonnull %call.i.i90, i1 noundef zeroext true) #10
  br label %__br_fdb_delete.exit97

__br_fdb_delete.exit97:                           ; preds = %if.end.i.i95, %do.end.i.i94.__br_fdb_delete.exit97_crit_edge, %if.else23.__br_fdb_delete.exit97_crit_edge
  %retval.0.i.i96 = phi i32 [ 0, %if.end.i.i95 ], [ -2, %do.end.i.i94.__br_fdb_delete.exit97_crit_edge ], [ -2, %if.else23.__br_fdb_delete.exit97_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %hash_lock.i89) #10
  %tobool25.not = icmp eq ptr %vg.0, null
  br i1 %tobool25.not, label %__br_fdb_delete.exit97.cleanup_crit_edge, label %lor.lhs.false

__br_fdb_delete.exit97.cleanup_crit_edge:         ; preds = %__br_fdb_delete.exit97
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %__br_fdb_delete.exit97
  %num_vlans = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 3
  %11 = ptrtoint ptr %num_vlans to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_vlans, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool26.not = icmp eq i16 %12, 0
  br i1 %tobool26.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end28

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false
  %vlan_list = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 2
  %13 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn109 = load ptr, ptr %vlan_list, align 4
  %cmp.not110 = icmp eq ptr %.pn109, %vlan_list
  br i1 %cmp.not110, label %if.end28.cleanup_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  br label %for.body

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end28.for.body_crit_edge
  %.pn112 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn109, %if.end28.for.body_crit_edge ]
  %err.0111 = phi i32 [ %err.1, %for.inc.for.body_crit_edge ], [ %retval.0.i.i96, %if.end28.for.body_crit_edge ]
  %flags.i.i = getelementptr i8, ptr %.pn112, i32 -546
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags.i.i, align 2
  %16 = and i16 %15, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %16)
  %.not = icmp eq i16 %16, 1
  br i1 %.not, label %for.body.for.inc_crit_edge, label %if.end34

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end34:                                         ; preds = %for.body
  %vid35 = getelementptr i8, ptr %.pn112, i32 -548
  %17 = ptrtoint ptr %vid35 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vid35, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %hash_lock.i89) #10
  %call.i.i99 = tail call fastcc ptr @br_fdb_find(ptr noundef %br.0, ptr noundef %addr, i16 noundef zeroext %18) #10
  %tobool.not.i.i100 = icmp eq ptr %call.i.i99, null
  br i1 %tobool.not.i.i100, label %if.end34.__br_fdb_delete.exit106_crit_edge, label %do.end.i.i103

if.end34.__br_fdb_delete.exit106_crit_edge:       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %__br_fdb_delete.exit106

do.end.i.i103:                                    ; preds = %if.end34
  %dst.i.i101 = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call.i.i99, i32 0, i32 1
  %19 = ptrtoint ptr %dst.i.i101 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %dst.i.i101, align 4
  %cmp.not.i.i102 = icmp eq ptr %20, %p.0
  br i1 %cmp.not.i.i102, label %if.end.i.i104, label %do.end.i.i103.__br_fdb_delete.exit106_crit_edge

do.end.i.i103.__br_fdb_delete.exit106_crit_edge:  ; preds = %do.end.i.i103
  call void @__sanitizer_cov_trace_pc() #12
  br label %__br_fdb_delete.exit106

if.end.i.i104:                                    ; preds = %do.end.i.i103
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fdb_delete(ptr noundef %br.0, ptr noundef nonnull %call.i.i99, i1 noundef zeroext true) #10
  br label %__br_fdb_delete.exit106

__br_fdb_delete.exit106:                          ; preds = %if.end.i.i104, %do.end.i.i103.__br_fdb_delete.exit106_crit_edge, %if.end34.__br_fdb_delete.exit106_crit_edge
  %retval.0.i.i105 = phi i32 [ 0, %if.end.i.i104 ], [ -2, %do.end.i.i103.__br_fdb_delete.exit106_crit_edge ], [ -2, %if.end34.__br_fdb_delete.exit106_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %hash_lock.i89) #10
  %and37 = and i32 %retval.0.i.i105, %err.0111
  br label %for.inc

for.inc:                                          ; preds = %__br_fdb_delete.exit106, %for.body.for.inc_crit_edge
  %err.1 = phi i32 [ %and37, %__br_fdb_delete.exit106 ], [ %err.0111, %for.body.for.inc_crit_edge ]
  %21 = ptrtoint ptr %.pn112 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn112, align 4
  %cmp.not = icmp eq ptr %.pn, %vlan_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %__br_fdb_delete.exit97.cleanup_crit_edge, %__br_fdb_delete.exit, %do.end16, %do.end
  %retval.0 = phi i32 [ -22, %do.end16 ], [ -22, %do.end ], [ %retval.0.i.i96, %lor.lhs.false.cleanup_crit_edge ], [ %retval.0.i.i96, %__br_fdb_delete.exit97.cleanup_crit_edge ], [ %retval.0.i.i, %__br_fdb_delete.exit ], [ %retval.0.i.i96, %if.end28.cleanup_crit_edge ], [ %err.1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_fdb_sync_static(ptr noundef %br, ptr nocapture noundef readonly %p) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b170 = load i1, ptr @br_fdb_sync_static.__already_done, align 1
  br i1 %.b170, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !170

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_fdb_sync_static.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1164, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1164) #10
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %0 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !171
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end30.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end30.rcu_read_lock.exit_crit_edge:            ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end30
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 696, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end30.rcu_read_lock.exit_crit_edge
  %call39 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end48_crit_edge

rcu_read_lock.exit.do.end48_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end48

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call41 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.lhs.true.do.end48_crit_edge, label %land.lhs.true43

land.lhs.true.do.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end48

land.lhs.true43:                                  ; preds = %land.lhs.true
  %.b166169 = load i1, ptr @br_fdb_sync_static.__warned, align 1
  br i1 %.b166169, label %land.lhs.true43.do.end48_crit_edge, label %if.then45

land.lhs.true43.do.end48_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end48

if.then45:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_fdb_sync_static.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1168, ptr noundef nonnull @.str.3) #10
  br label %do.end48

do.end48:                                         ; preds = %if.then45, %land.lhs.true43.do.end48_crit_edge, %land.lhs.true.do.end48_crit_edge, %rcu_read_lock.exit.do.end48_crit_edge
  %fdb_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 46
  %4 = ptrtoint ptr %fdb_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %fdb_list, align 4
  %tobool55.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -16
  %tobool57.not193199 = icmp eq ptr %add.ptr, null
  %tobool57.not193 = or i1 %tobool55.not, %tobool57.not193199
  br i1 %tobool57.not193, label %do.end48.done_crit_edge, label %for.body.lr.ph

do.end48.done_crit_edge:                          ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

for.body.lr.ph:                                   ; preds = %do.end48
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %f.0194 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr78, %for.inc.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.0194, i32 0, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool59.not = icmp eq i32 %8, 0
  br i1 %tobool59.not, label %for.body.for.inc_crit_edge, label %if.end61

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end61:                                         ; preds = %for.body
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %key = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.0194, i32 0, i32 2
  %call63 = tail call i32 @dev_uc_add(ptr noundef %10, ptr noundef %key) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end61.for.inc_crit_edge, label %do.body82

if.end61.for.inc_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end61.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %fdb_node = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.0194, i32 0, i32 3
  %11 = ptrtoint ptr %fdb_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %fdb_node, align 16
  %tobool74.not = icmp eq ptr %12, null
  %add.ptr78 = getelementptr i8, ptr %12, i32 -16
  %tobool57.not206 = icmp eq ptr %add.ptr78, null
  %tobool57.not = or i1 %tobool74.not, %tobool57.not206
  br i1 %tobool57.not, label %for.inc.done_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.done_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

done:                                             ; preds = %for.inc127.done_crit_edge, %if.end118.done_crit_edge, %do.end93.done_crit_edge, %for.inc.done_crit_edge, %do.end48.done_crit_edge
  %err.2 = phi i32 [ %call63, %do.end93.done_crit_edge ], [ 0, %do.end48.done_crit_edge ], [ %call63, %for.inc127.done_crit_edge ], [ %call63, %if.end118.done_crit_edge ], [ 0, %for.inc.done_crit_edge ]
  %call.i176 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i176, label %done.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i179

done.rcu_read_unlock.exit_crit_edge:              ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i179:                               ; preds = %done
  %call1.i177 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i177)
  %tobool.not.i178 = icmp eq i32 %call1.i177, 0
  br i1 %tobool.not.i178, label %land.lhs.true.i179.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i181

land.lhs.true.i179.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i179
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i181:                              ; preds = %land.lhs.true.i179
  %.b4.i180 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i180, label %land.lhs.true2.i181.rcu_read_unlock.exit_crit_edge, label %if.then.i182

land.lhs.true2.i181.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i181
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i182:                                     ; preds = %land.lhs.true2.i181
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.25) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i182, %land.lhs.true2.i181.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i179.rcu_read_unlock.exit_crit_edge, %done.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !172
  %13 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i183 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i183 to ptr
  %preempt_count.i.i.i.i184 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i184 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i184, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i184, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret i32 %err.2

do.body82:                                        ; preds = %if.end61
  %call83 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %land.lhs.true85, label %do.body82.do.end93_crit_edge

do.body82.do.end93_crit_edge:                     ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end93

land.lhs.true85:                                  ; preds = %do.body82
  %call86 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %land.lhs.true85.do.end93_crit_edge, label %land.lhs.true88

land.lhs.true85.do.end93_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end93

land.lhs.true88:                                  ; preds = %land.lhs.true85
  %.b167168 = load i1, ptr @br_fdb_sync_static.__warned.22, align 1
  br i1 %.b167168, label %land.lhs.true88.do.end93_crit_edge, label %if.then90

land.lhs.true88.do.end93_crit_edge:               ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end93

if.then90:                                        ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_fdb_sync_static.__warned.22, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1182, ptr noundef nonnull @.str.3) #10
  br label %do.end93

do.end93:                                         ; preds = %if.then90, %land.lhs.true88.do.end93_crit_edge, %land.lhs.true85.do.end93_crit_edge, %do.body82.do.end93_crit_edge
  %17 = ptrtoint ptr %fdb_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %fdb_list, align 4
  %tobool103.not = icmp eq ptr %18, null
  %add.ptr107 = getelementptr i8, ptr %18, i32 -16
  %tobool112.not196202 = icmp eq ptr %add.ptr107, null
  %tobool112.not196 = or i1 %tobool103.not, %tobool112.not196202
  br i1 %tobool112.not196, label %do.end93.done_crit_edge, label %do.end93.for.body113_crit_edge

do.end93.for.body113_crit_edge:                   ; preds = %do.end93
  br label %for.body113

do.end93.done_crit_edge:                          ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

for.body113:                                      ; preds = %for.inc127.for.body113_crit_edge, %do.end93.for.body113_crit_edge
  %tmp.0197 = phi ptr [ %add.ptr141, %for.inc127.for.body113_crit_edge ], [ %add.ptr107, %do.end93.for.body113_crit_edge ]
  %flags114 = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %tmp.0197, i32 0, i32 4
  %19 = ptrtoint ptr %flags114 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags114, align 4
  %21 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool116.not = icmp eq i32 %21, 0
  br i1 %tobool116.not, label %for.body113.for.inc127_crit_edge, label %if.end118

for.body113.for.inc127_crit_edge:                 ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc127

if.end118:                                        ; preds = %for.body113
  %cmp = icmp eq ptr %tmp.0197, %f.0194
  br i1 %cmp, label %if.end118.done_crit_edge, label %if.end120

if.end118.done_crit_edge:                         ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end120:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %key122 = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %tmp.0197, i32 0, i32 2
  %call126 = tail call i32 @dev_uc_del(ptr noundef %23, ptr noundef %key122) #10
  br label %for.inc127

for.inc127:                                       ; preds = %if.end120, %for.body113.for.inc127_crit_edge
  %fdb_node133 = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %tmp.0197, i32 0, i32 3
  %24 = ptrtoint ptr %fdb_node133 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %fdb_node133, align 16
  %tobool137.not = icmp eq ptr %25, null
  %add.ptr141 = getelementptr i8, ptr %25, i32 -16
  %tobool112.not205 = icmp eq ptr %add.ptr141, null
  %tobool112.not = or i1 %tobool137.not, %tobool112.not205
  br i1 %tobool112.not, label %for.inc127.done_crit_edge, label %for.inc127.for.body113_crit_edge

for.inc127.for.body113_crit_edge:                 ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body113

for.inc127.done_crit_edge:                        ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #12
  br label %done
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_fdb_unsync_static(ptr noundef %br, ptr nocapture noundef readonly %p) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b88 = load i1, ptr @br_fdb_unsync_static.__already_done, align 1
  br i1 %.b88, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !170

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_fdb_unsync_static.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1198, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1198) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %0 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !171
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end29.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end29.rcu_read_lock.exit_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end29
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 696, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end29.rcu_read_lock.exit_crit_edge
  %call38 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end47_crit_edge

rcu_read_lock.exit.do.end47_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call40 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.lhs.true.do.end47_crit_edge, label %land.lhs.true42

land.lhs.true.do.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

land.lhs.true42:                                  ; preds = %land.lhs.true
  %.b8687 = load i1, ptr @br_fdb_unsync_static.__warned, align 1
  br i1 %.b8687, label %land.lhs.true42.do.end47_crit_edge, label %if.then44

land.lhs.true42.do.end47_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

if.then44:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_fdb_unsync_static.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1201, ptr noundef nonnull @.str.3) #10
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %land.lhs.true42.do.end47_crit_edge, %land.lhs.true.do.end47_crit_edge, %rcu_read_lock.exit.do.end47_crit_edge
  %fdb_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 46
  %4 = ptrtoint ptr %fdb_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %fdb_list, align 4
  %tobool54.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -16
  %tobool56.not101104 = icmp eq ptr %add.ptr, null
  %tobool56.not101 = or i1 %tobool54.not, %tobool56.not101104
  br i1 %tobool56.not101, label %do.end47.for.end_crit_edge, label %for.body.lr.ph

do.end47.for.end_crit_edge:                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end47
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %f.0102 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr74, %for.inc.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.0102, i32 0, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool58.not = icmp eq i32 %8, 0
  br i1 %tobool58.not, label %for.body.for.inc_crit_edge, label %if.end60

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end60:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %key = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.0102, i32 0, i32 2
  %call62 = tail call i32 @dev_uc_del(ptr noundef %10, ptr noundef %key) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end60, %for.body.for.inc_crit_edge
  %fdb_node = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.0102, i32 0, i32 3
  %11 = ptrtoint ptr %fdb_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %fdb_node, align 16
  %tobool70.not = icmp eq ptr %12, null
  %add.ptr74 = getelementptr i8, ptr %12, i32 -16
  %tobool56.not105 = icmp eq ptr %add.ptr74, null
  %tobool56.not = or i1 %tobool70.not, %tobool56.not105
  br i1 %tobool56.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end47.for.end_crit_edge
  %call.i90 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i90, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i93

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i93:                                ; preds = %for.end
  %call1.i91 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i91)
  %tobool.not.i92 = icmp eq i32 %call1.i91, 0
  br i1 %tobool.not.i92, label %land.lhs.true.i93.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i95

land.lhs.true.i93.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i95:                               ; preds = %land.lhs.true.i93
  %.b4.i94 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i94, label %land.lhs.true2.i95.rcu_read_unlock.exit_crit_edge, label %if.then.i96

land.lhs.true2.i95.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i96:                                      ; preds = %land.lhs.true2.i95
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.25) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i96, %land.lhs.true2.i95.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i93.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !172
  %13 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i.i97 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i97 to ptr
  %preempt_count.i.i.i.i98 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i98, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i98, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_fdb_external_learn_add(ptr noundef %br, ptr noundef %p, ptr noundef %addr, i16 noundef zeroext %vid, i1 noundef zeroext %swdev_notify) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_br_fdb_external_learn_add(ptr noundef %br, ptr noundef %p, ptr noundef %addr, i16 noundef zeroext %vid)
  %hash_lock = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %hash_lock) #10
  %call = tail call fastcc ptr @br_fdb_find(ptr noundef %br, ptr noundef %addr, i16 noundef zeroext %vid)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %spec.select = select i1 %swdev_notify, i32 24, i32 16
  %tobool3.not = icmp eq ptr %p, null
  %or5 = zext i1 %tobool3.not to i32
  %flags.1 = or i32 %spec.select, %or5
  %call7 = tail call fastcc ptr @fdb_create(ptr noundef %br, ptr noundef %p, ptr noundef %addr, i16 noundef zeroext %vid, i32 noundef %flags.1)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then.err_unlock_crit_edge, label %if.then.err_unlock.sink.split_crit_edge

if.then.err_unlock.sink.split_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unlock.sink.split

if.then.err_unlock_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unlock

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %updated = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %updated to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %updated, align 128
  %dst = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %dst, align 4
  %cmp.not = icmp eq ptr %3, %p
  br i1 %cmp.not, label %if.else.if.end23_crit_edge, label %do.body17

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.body17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %p, ptr %dst, align 4
  br label %if.end23

if.end23:                                         ; preds = %do.body17, %if.else.if.end23_crit_edge
  %5 = xor i1 %cmp.not, true
  %flags24 = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %flags24 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags24, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool26.not = icmp eq i32 %8, 0
  br i1 %tobool26.not, label %if.else28, label %if.then27

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %used = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call, i32 0, i32 7
  %10 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %used, align 4
  br label %if.end35

if.else28:                                        ; preds = %if.end23
  %11 = ptrtoint ptr %flags24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags24, align 4
  %13 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool31.not = icmp eq i32 %13, 0
  br i1 %tobool31.not, label %if.then32, label %if.else28.if.end35_crit_edge

if.else28.if.end35_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then32:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags24) #10
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.else28.if.end35_crit_edge, %if.then27
  %modified.1.off0 = phi i1 [ %5, %if.then27 ], [ %5, %if.else28.if.end35_crit_edge ], [ true, %if.then32 ]
  br i1 %swdev_notify, label %if.then37, label %if.end35.if.end39_crit_edge

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags24) #10
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end35.if.end39_crit_edge
  %tobool40.not = icmp eq ptr %p, null
  br i1 %tobool40.not, label %if.then41, label %if.end39.if.end43_crit_edge

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags24) #10
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end39.if.end43_crit_edge
  br i1 %modified.1.off0, label %if.end43.err_unlock.sink.split_crit_edge, label %if.end43.err_unlock_crit_edge

if.end43.err_unlock_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unlock

if.end43.err_unlock.sink.split_crit_edge:         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unlock.sink.split

err_unlock.sink.split:                            ; preds = %if.end43.err_unlock.sink.split_crit_edge, %if.then.err_unlock.sink.split_crit_edge
  %call7.sink = phi ptr [ %call7, %if.then.err_unlock.sink.split_crit_edge ], [ %call, %if.end43.err_unlock.sink.split_crit_edge ]
  tail call fastcc void @fdb_notify(ptr noundef %br, ptr noundef nonnull %call7.sink, i32 noundef 28, i1 noundef zeroext %swdev_notify)
  br label %err_unlock

err_unlock:                                       ; preds = %err_unlock.sink.split, %if.end43.err_unlock_crit_edge, %if.then.err_unlock_crit_edge
  %err.1 = phi i32 [ 0, %if.end43.err_unlock_crit_edge ], [ -12, %if.then.err_unlock_crit_edge ], [ 0, %err_unlock.sink.split ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %hash_lock) #10
  ret i32 %err.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_br_fdb_external_learn_add(ptr noundef %br, ptr noundef %p, ptr noundef %addr, i16 noundef zeroext %vid) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_br_fdb_external_learn_add, i32 0, i32 1), ptr blockaddress(@trace_br_fdb_external_learn_add, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !170

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !190
  %call42 = tail call i32 @__traceiter_br_fdb_external_learn_add(ptr noundef null, ptr noundef %br, ptr noundef %p, ptr noundef %addr, i16 noundef zeroext %vid) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !191
  %13 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !170

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_br_fdb_external_learn_add, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_br_fdb_external_learn_add, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_br_fdb_external_learn_add.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_br_fdb_external_learn_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 67, ptr noundef nonnull @.str.27) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_fdb_external_learn_del(ptr noundef %br, ptr nocapture noundef readnone %p, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid, i1 noundef zeroext %swdev_notify) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_lock = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %hash_lock) #10
  %call = tail call fastcc ptr @br_fdb_find(ptr noundef %br, ptr noundef %addr, i16 noundef zeroext %vid)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fdb_delete(ptr noundef %br, ptr noundef nonnull %call, i1 noundef zeroext %swdev_notify)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %err.0 = phi i32 [ 0, %if.then ], [ -2, %land.lhs.true.if.end_crit_edge ], [ -2, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %hash_lock) #10
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_fdb_offloaded_set(ptr noundef %br, ptr nocapture noundef readnone %p, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid, i1 noundef zeroext %offloaded) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_lock = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %hash_lock) #10
  %call = tail call fastcc ptr @br_fdb_find(ptr noundef %br, ptr noundef %addr, i16 noundef zeroext %vid)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  %cmp.not = xor i1 %3, %offloaded
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_change_bit(i32 noundef 5, ptr noundef %flags) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %hash_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_change_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_fdb_clear_offload(ptr nocapture noundef readonly %dev, i16 noundef zeroext %vid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b77 = load i1, ptr @br_fdb_clear_offload.__already_done, align 1
  br i1 %.b77, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !170

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_fdb_clear_offload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1311, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1311) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %1, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end29.cleanup_crit_edge, label %do.body.i

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.i:                                        ; preds = %if.end29
  %call1.i = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call1.i, label %do.body.i.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true.i

do.body.i.br_port_get_rtnl.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %do.body.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.br_port_get_rtnl.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rtnl.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @br_port_get_rtnl.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_port_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 422, ptr noundef nonnull @.str.30) #10
  br label %br_port_get_rtnl.exit

br_port_get_rtnl.exit:                            ; preds = %if.then.i, %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, %land.lhs.true.i.br_port_get_rtnl.exit_crit_edge, %do.body.i.br_port_get_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %2 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_handler_data.i, align 4
  %tobool38.not = icmp eq ptr %3, null
  br i1 %tobool38.not, label %br_port_get_rtnl.exit.cleanup_crit_edge, label %if.end40

br_port_get_rtnl.exit.cleanup_crit_edge:          ; preds = %br_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end40:                                         ; preds = %br_port_get_rtnl.exit
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %hash_lock = getelementptr inbounds %struct.net_bridge, ptr %5, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %hash_lock) #10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %fdb_list = getelementptr inbounds %struct.net_bridge, ptr %7, i32 0, i32 46
  %8 = ptrtoint ptr %fdb_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fdb_list, align 4
  %tobool43.not = icmp eq ptr %9, null
  %add.ptr = getelementptr i8, ptr %9, i32 -16
  %tobool45.not8386 = icmp eq ptr %add.ptr, null
  %tobool45.not83 = or i1 %tobool43.not, %tobool45.not8386
  br i1 %tobool45.not83, label %if.end40.for.end_crit_edge, label %if.end40.for.body_crit_edge

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  br label %for.body

if.end40.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end40.for.body_crit_edge
  %f.084 = phi ptr [ %add.ptr57, %for.inc.for.body_crit_edge ], [ %add.ptr, %if.end40.for.body_crit_edge ]
  %dst = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.084, i32 0, i32 1
  %10 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dst, align 4
  %cmp = icmp eq ptr %11, %3
  br i1 %cmp, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %vlan_id = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.084, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vlan_id, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %vid)
  %cmp47 = icmp eq i16 %13, %vid
  br i1 %cmp47, label %if.then49, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then49:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.084, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then49, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %fdb_node = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %f.084, i32 0, i32 3
  %14 = ptrtoint ptr %fdb_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fdb_node, align 16
  %tobool53.not = icmp eq ptr %15, null
  %add.ptr57 = getelementptr i8, ptr %15, i32 -16
  %tobool45.not87 = icmp eq ptr %add.ptr57, null
  %tobool45.not = or i1 %tobool53.not, %tobool45.not87
  br i1 %tobool45.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end40.for.end_crit_edge
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 8
  %hash_lock62 = getelementptr inbounds %struct.net_bridge, ptr %17, i32 0, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %hash_lock62) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %br_port_get_rtnl.exit.cleanup_crit_edge, %if.end29.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fdb_add_hw_addr(ptr noundef readonly %br, ptr noundef %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b93 = load i1, ptr @fdb_add_hw_addr.__already_done, align 1
  br i1 %.b93, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !170

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @fdb_add_hw_addr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 279) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %port_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  %0 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn96 = load ptr, ptr %port_list, align 4
  %cmp.not97 = icmp eq ptr %.pn96, %port_list
  br i1 %cmp.not97, label %if.end29.cleanup_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  br label %for.body

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end29.for.body_crit_edge
  %.pn98 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn96, %if.end29.for.body_crit_edge ]
  %flags = getelementptr i8, ptr %.pn98, i32 8
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %if.then42, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then42:                                        ; preds = %for.body
  %dev = getelementptr i8, ptr %.pn98, i32 -8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call43 = tail call i32 @dev_uc_add(ptr noundef %4, ptr noundef %addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then42.for.inc_crit_edge, label %for.cond57.preheader

if.then42.for.inc_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.cond57.preheader:                             ; preds = %if.then42
  %.pn92.in99 = getelementptr inbounds %struct.list_head, ptr %.pn98, i32 0, i32 1
  %5 = ptrtoint ptr %.pn92.in99 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn92100 = load ptr, ptr %.pn92.in99, align 4
  %cmp60.not101 = icmp eq ptr %.pn92100, %port_list
  br i1 %cmp60.not101, label %for.cond57.preheader.cleanup_crit_edge, label %for.cond57.preheader.for.body63_crit_edge

for.cond57.preheader.for.body63_crit_edge:        ; preds = %for.cond57.preheader
  br label %for.body63

for.cond57.preheader.cleanup_crit_edge:           ; preds = %for.cond57.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %if.then42.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %6 = ptrtoint ptr %.pn98 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn98, align 4
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body63:                                       ; preds = %for.inc71.for.body63_crit_edge, %for.cond57.preheader.for.body63_crit_edge
  %.pn92102 = phi ptr [ %.pn92, %for.inc71.for.body63_crit_edge ], [ %.pn92100, %for.cond57.preheader.for.body63_crit_edge ]
  %flags64 = getelementptr i8, ptr %.pn92102, i32 8
  %7 = ptrtoint ptr %flags64 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags64, align 4
  %and65 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.then67, label %for.body63.for.inc71_crit_edge

for.body63.for.inc71_crit_edge:                   ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc71

if.then67:                                        ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #12
  %dev68 = getelementptr i8, ptr %.pn92102, i32 -8
  %9 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev68, align 4
  %call69 = tail call i32 @dev_uc_del(ptr noundef %10, ptr noundef %addr) #10
  br label %for.inc71

for.inc71:                                        ; preds = %if.then67, %for.body63.for.inc71_crit_edge
  %.pn92.in = getelementptr inbounds %struct.list_head, ptr %.pn92102, i32 0, i32 1
  %11 = ptrtoint ptr %.pn92.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn92 = load ptr, ptr %.pn92.in, align 4
  %cmp60.not = icmp eq ptr %.pn92, %port_list
  br i1 %cmp60.not, label %for.inc71.cleanup_crit_edge, label %for.inc71.for.body63_crit_edge

for.inc71.for.body63_crit_edge:                   ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body63

for.inc71.cleanup_crit_edge:                      ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc71.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond57.preheader.cleanup_crit_edge, %if.end29.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_set_sk_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_fdb_delete(ptr noundef %br, ptr noundef %f) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fdb_delete, i32 0, i32 1), ptr blockaddress(@trace_fdb_delete, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !179

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !170

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !192
  %call42 = tail call i32 @__traceiter_fdb_delete(ptr noundef null, ptr noundef %br, ptr noundef %f) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !193
  %13 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !170

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fdb_delete, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fdb_delete, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_fdb_delete.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_fdb_delete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 93, ptr noundef nonnull @.str.27) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !183
  %31 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fdb_del_hw_addr(ptr noundef readonly %br, ptr noundef %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b56 = load i1, ptr @fdb_del_hw_addr.__already_done, align 1
  br i1 %.b56, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !170

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @fdb_del_hw_addr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 306, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 306) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %port_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  %0 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn57 = load ptr, ptr %port_list, align 4
  %cmp.not58 = icmp eq ptr %.pn57, %port_list
  br i1 %cmp.not58, label %if.end29.for.end_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  br label %for.body

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end29.for.body_crit_edge
  %.pn59 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn57, %if.end29.for.body_crit_edge ]
  %flags = getelementptr i8, ptr %.pn59, i32 8
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %if.then42, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then42:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %.pn59, i32 -8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call43 = tail call i32 @dev_uc_del(ptr noundef %4, ptr noundef %addr) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then42, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %.pn59 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn59, align 4
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end29.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fdb_rcu_free(ptr noundef %head) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -136
  %0 = load ptr, ptr @br_fdb_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_fdb_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !194
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #10
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !195

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #10, !srcloc !196
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !197
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !170

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !198
  %7 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !200
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !201
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #10
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !175

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #10, !srcloc !202
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !203
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #10, !srcloc !204
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !205
  %3 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !206
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !207
  %2 = tail call i32 @llvm.read_register.i32(metadata !160) #10
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_br_fdb_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nla_nest_cancel(ptr noundef %skb, ptr noundef %start) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not.i = icmp eq ptr %start, null
  br i1 %tobool.not.i, label %entry.nlmsg_trim.exit_crit_edge, label %if.then.i

entry.nlmsg_trim.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlmsg_trim.exit

if.then.i:                                        ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %1, %start
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !175

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %start to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #10
  br label %nlmsg_trim.exit

nlmsg_trim.exit:                                  ; preds = %if.end.i, %entry.nlmsg_trim.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_br_fdb_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_br_fdb_external_learn_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !11, !13, !15, !16, !17, !18, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !70, !72, !73, !75, !77, !78, !79, !81, !83, !85, !87, !88, !89, !91, !92, !93, !94, !96, !98, !100, !101, !102, !104, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !128, !130, !132, !134, !136, !138, !139, !141, !143, !145, !147, !148, !149, !150, !152, !154, !155, !156, !157, !159}
!llvm.named.register.sp = !{!160}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bridge/br_fdb.c", i32 38, i32 35}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../net/bridge/br_fdb.c", i32 246, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__ksymtab_br_fdb_find_port, !7, !"__ksymtab_br_fdb_find_port", i1 false, i1 false}
!7 = !{!"../net/bridge/br_fdb.c", i32 260, i32 1}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/bridge/br_fdb.c", i32 529, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../net/bridge/br_fdb.c", i32 650, i32 2}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/bridge/br_fdb.c", i32 717, i32 5}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @br_fdb_update._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @br_fdb_update._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../net/bridge/br_fdb.c", i32 783, i32 2}
!20 = !{ptr @br_fdb_get.__msg, !21, !"__msg", i1 false, i1 false}
!21 = !{!"../net/bridge/br_fdb.c", i32 829, i32 3}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/bridge/br_fdb.c", i32 1015, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @br_fdb_add._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @br_fdb_add._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/bridge/br_fdb.c", i32 1020, i32 3}
!29 = !{ptr @br_fdb_add._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @br_fdb_add._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/bridge/br_fdb.c", i32 1030, i32 4}
!33 = !{ptr @br_fdb_add._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @br_fdb_add._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/bridge/br_fdb.c", i32 1051, i32 4}
!37 = !{ptr @br_fdb_add._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @br_fdb_add._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/bridge/br_fdb.c", i32 1127, i32 4}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @br_fdb_delete._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @br_fdb_delete._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/bridge/br_fdb.c", i32 1138, i32 4}
!46 = !{ptr @br_fdb_delete._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @br_fdb_delete._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../net/bridge/br_fdb.c", i32 1164, i32 2}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../net/bridge/br_fdb.c", i32 1168, i32 2}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../net/bridge/br_fdb.c", i32 1182, i32 2}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../net/bridge/br_fdb.c", i32 1198, i32 2}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../net/bridge/br_fdb.c", i32 1201, i32 2}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../net/bridge/br_fdb.c", i32 1311, i32 2}
!60 = !{ptr @__ksymtab_br_fdb_clear_offload, !61, !"__ksymtab_br_fdb_clear_offload", i1 false, i1 false}
!61 = !{!"../net/bridge/br_fdb.c", i32 1324, i32 1}
!62 = !{ptr @br_fdb_cache, !63, !"br_fdb_cache", i1 false, i1 false}
!63 = !{!"../net/bridge/br_fdb.c", i32 34, i32 27}
!64 = !{ptr @br_fdb_rht_params, !65, !"br_fdb_rht_params", i1 false, i1 false}
!65 = !{!"../net/bridge/br_fdb.c", i32 27, i32 39}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!68 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!72 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../net/bridge/br_fdb.c", i32 214, i32 2}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!77 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../net/bridge/br_fdb.c", i32 229, i32 2}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../net/bridge/br_private.h", i32 1477, i32 9}
!87 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/bridge/br_fdb.c", i32 423, i32 3}
!91 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @fdb_add_local._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @fdb_add_local._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../net/bridge/br_fdb.c", i32 279, i32 2}
!96 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!97 = !{!"../net/bridge/br_private.h", i32 1471, i32 9}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../include/trace/events/bridge.h", i32 69, i32 1}
!100 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!101 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!104 = !{ptr @.str.34, !103, !"<string literal>", i1 false, i1 false}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../net/bridge/br_fdb.c", i32 306, i32 2}
!107 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!108 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!109 = distinct !{null, !110, !"__warned", i1 false, i1 false}
!110 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!111 = distinct !{null, !112, !"__warned", i1 false, i1 false}
!112 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!113 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!114 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!115 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!116 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!117 = distinct !{null, !118, !"__warned", i1 false, i1 false}
!118 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!119 = distinct !{null, !120, !"__warned", i1 false, i1 false}
!120 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!121 = distinct !{null, !122, !"__warned", i1 false, i1 false}
!122 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!123 = distinct !{null, !124, !"__warned", i1 false, i1 false}
!124 = !{!"../net/bridge/br_private.h", i32 416, i32 9}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../include/trace/events/bridge.h", i32 95, i32 1}
!127 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!128 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!129 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!130 = distinct !{null, !131, !"__warned", i1 false, i1 false}
!131 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!132 = distinct !{null, !133, !"__warned", i1 false, i1 false}
!133 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!134 = !{ptr @.str.42, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../include/net/netlink.h", i32 991, i32 3}
!136 = distinct !{null, !137, !"__already_done", i1 false, i1 false}
!137 = !{!"../include/trace/events/bridge.h", i32 12, i32 1}
!138 = distinct !{null, !137, !"__warned", i1 false, i1 false}
!139 = distinct !{null, !140, !"__warned", i1 false, i1 false}
!140 = !{!"../net/bridge/br_private.h", i32 422, i32 3}
!141 = !{ptr @nla_parse_nested.__msg, !142, !"__msg", i1 false, i1 false}
!142 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!143 = !{ptr @br_nda_fdb_pol, !144, !"br_nda_fdb_pol", i1 false, i1 false}
!144 = !{!"../net/bridge/br_fdb.c", i32 994, i32 32}
!145 = !{ptr @.str.43, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../net/bridge/br_fdb.c", i32 966, i32 4}
!147 = !{ptr @.str.44, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @__br_fdb_add._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @__br_fdb_add._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @__br_fdb_add.__msg, !151, !"__msg", i1 false, i1 false}
!151 = !{!"../net/bridge/br_fdb.c", i32 980, i32 4}
!152 = !{ptr @.str.45, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../net/bridge/br_fdb.c", i32 884, i32 3}
!154 = !{ptr @.str.46, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @fdb_add_entry._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @fdb_add_entry._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = distinct !{null, !158, !"__already_done", i1 false, i1 false}
!158 = !{!"../include/trace/events/bridge.h", i32 42, i32 1}
!159 = distinct !{null, !158, !"__warned", i1 false, i1 false}
!160 = !{!"sp"}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{!"branch_weights", i32 2000, i32 1}
!171 = !{i64 2149195353}
!172 = !{i64 2149195619}
!173 = !{i64 2157840997}
!174 = !{i64 2157844431}
!175 = !{!"branch_weights", i32 1, i32 2000}
!176 = !{i64 2157908373}
!177 = !{i64 2148243734, i64 2148243760, i64 2148243789, i64 2148243823, i64 2148243854, i64 2148243877}
!178 = !{i8 0, i8 2}
!179 = !{i64 2148723084, i64 2148723089, i64 2148723102, i64 2148723146, i64 2148723180, i64 2148723201}
!180 = !{i64 2158089374}
!181 = !{i64 2158089619}
!182 = !{i64 2149203912}
!183 = !{i64 2149204948}
!184 = !{i64 2157886514, i64 2157887005, i64 2157886551, i64 2157886607, i64 2157886641, i64 2157886665, i64 2157886706, i64 2157886727, i64 2157886755, i64 2157886789}
!185 = !{i64 2148241269, i64 2148241295, i64 2148241324, i64 2148241358, i64 2148241389, i64 2148241412}
!186 = !{i64 2149296964}
!187 = !{!"auto-init"}
!188 = !{i64 2158033441}
!189 = !{i64 2158033684}
!190 = !{i64 2158055036}
!191 = !{i64 2158055281}
!192 = !{i64 2158072107}
!193 = !{i64 2158072300}
!194 = !{i64 2152661648}
!195 = !{!"branch_weights", i32 2146410443, i32 1073205}
!196 = !{i64 2148250127, i64 2148250159, i64 2148250188, i64 2148250222, i64 2148250253, i64 2148250276}
!197 = !{i64 2148339208}
!198 = !{i64 2152661808}
!199 = !{i64 2152662085}
!200 = !{i64 2152661927}
!201 = !{i64 2152662290}
!202 = !{i64 2152663353, i64 2152663845, i64 2152663390, i64 2152663446, i64 2152663480, i64 2152663504, i64 2152663545, i64 2152663566, i64 2152663594, i64 2152663628}
!203 = !{i64 2148338095}
!204 = !{i64 2148248514, i64 2148248546, i64 2148248575, i64 2148248609, i64 2148248640, i64 2148248663}
!205 = !{i64 2152664748}
!206 = !{i64 2157834070}
!207 = !{i64 2157836369}
