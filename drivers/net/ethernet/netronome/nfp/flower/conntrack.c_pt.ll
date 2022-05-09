; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/flower/conntrack.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/flower/conntrack.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.4, ptr }
%union.anon.4 = type { %struct.anon.205 }
%struct.anon.205 = type { i32, i64, i64, i64, i32 }
%struct.flow_match_ct = type { ptr, ptr }
%struct.nfp_fl_ct_flow_entry = type { i32, %struct.list_head, i32, i32, ptr, ptr, %struct.list_head, ptr, %struct.flow_stats, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.206 = type { i32, i16, ptr }
%struct.nfp_fl_ct_zone_entry = type { i16, %struct.rhash_head, ptr, ptr, %struct.list_head, i32, %struct.list_head, i32, %struct.rhashtable, i32, %struct.list_head, i32, %struct.rhashtable, i32 }
%struct.rhash_head = type { ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.nf_flowtable = type { %struct.list_head, %struct.rhashtable, i32, ptr, %struct.delayed_work, i32, %struct.flow_block, %struct.rw_semaphore, %struct.possible_net_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.flow_block = type { %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.possible_net_t = type { ptr }
%struct.flow_block_cb = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.flow_block_indr, i32 }
%struct.flow_block_indr = type { %struct.list_head, ptr, ptr, i32, ptr, ptr, ptr }
%struct.nfp_flower_priv = type { ptr, ptr, i32, i64, i64, i8, %struct.nfp_fl_stats_id, %struct.nfp_fl_mask_id, [1024 x %struct.hlist_head], i32, %struct.rhashtable, ptr, %struct.spinlock, %struct.rhashtable, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.nfp_fl_tunnel_offloads, %struct.atomic_t, %struct.wait_queue_head, %struct.nfp_mtu_conf, %struct.nfp_fl_lag, %struct.list_head, %struct.list_head, i32, i32, %struct.nfp_fl_internal_ports, %struct.delayed_work, i32, %struct.spinlock, i32, %struct.rhashtable, %struct.rhashtable, ptr, %struct.rhashtable }
%struct.nfp_fl_stats_id = type { %struct.circ_buf, i32, i8 }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.nfp_fl_mask_id = type { %struct.circ_buf, ptr, i8 }
%struct.hlist_head = type { ptr }
%struct.sk_buff_head = type { %union.anon.54, i32, %struct.spinlock }
%union.anon.54 = type { %struct.anon.55 }
%struct.anon.55 = type { ptr, ptr }
%struct.nfp_fl_tunnel_offloads = type { %struct.rhashtable, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.ida, %struct.notifier_block }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nfp_mtu_conf = type { i32, i32, i8, %struct.wait_queue_head, %struct.spinlock }
%struct.nfp_fl_lag = type { %struct.delayed_work, %struct.mutex, %struct.list_head, %struct.ida, i32, i32, i8, i8, %struct.sk_buff_head }
%struct.nfp_fl_internal_ports = type { %struct.idr, %struct.spinlock }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.rhashtable_iter = type { ptr, ptr, ptr, %struct.rhashtable_walker, i32, i32, i8 }
%struct.rhashtable_walker = type { %struct.list_head, ptr }
%struct.nf_flow_match = type { %struct.flow_dissector, %struct.nf_flow_key, %struct.nf_flow_key }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.nf_flow_key = type { %struct.flow_dissector_key_meta, %struct.flow_dissector_key_control, %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %union.anon.218, %struct.flow_dissector_key_keyid, %union.anon.219, %struct.flow_dissector_key_tcp, %struct.flow_dissector_key_ports }
%struct.flow_dissector_key_meta = type { i32, i16 }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_vlan = type { %union.anon.216, i16 }
%union.anon.216 = type { %struct.anon.217 }
%struct.anon.217 = type { i16 }
%union.anon.218 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.52 }
%union.anon.52 = type { [4 x i32] }
%struct.flow_dissector_key_keyid = type { i32 }
%union.anon.219 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_tcp = type { i16 }
%struct.flow_dissector_key_ports = type { %union.anon.220 }
%union.anon.220 = type { i32 }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.200, i16, i8, i8, i32, i16, i16 }
%union.anon.200 = type { %struct.anon.202 }
%struct.anon.202 = type { %struct.in6_addr, %struct.in6_addr }
%struct.dst_cache = type { ptr, i32 }
%struct.nfp_fl_ct_map_entry = type { i32, %struct.rhash_head, ptr }
%struct.nfp_fl_ct_tc_merge = type { [2 x i32], %struct.rhash_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %struct.list_head }
%struct.flow_dissector_key_ct = type { i16, i16, i32, [4 x i32] }
%struct.nfp_fl_nft_tc_merge = type { ptr, [3 x i32], %struct.rhash_head, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr }
%struct.nfp_fl_rule_metadata = type <{ i8, i8, i8, i8, i32, i64, i64, i32 }>
%struct.nfp_fl_stats = type { i64, i64, i64 }
%struct.nfp_fl_payload = type { %struct.nfp_fl_rule_metadata, i32, %struct.rhash_head, %struct.callback_head, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i8, %struct.anon.250 }
%struct.callback_head = type { ptr, ptr }
%struct.anon.250 = type { ptr, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.5, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.197, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.5 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.197 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.nfp_port = type { ptr, i32, i32, i32, ptr, %struct.devlink_port, %union.anon.246, %struct.list_head }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.185 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.185 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%union.anon.246 = type { %struct.anon.248 }
%struct.anon.248 = type { i32, i32, i8, i32, ptr }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.flow_match_control = type { ptr, ptr }
%struct.flow_match_basic = type { ptr, ptr }
%struct.flow_match_ipv4_addrs = type { ptr, ptr }
%struct.flow_match_ipv6_addrs = type { ptr, ptr }
%struct.flow_match_ports = type { ptr, ptr }
%struct.flow_match_eth_addrs = type { ptr, ptr }
%struct.flow_match_vlan = type { ptr, ptr }
%struct.flow_match_mpls = type { ptr, ptr }
%struct.flow_match_tcp = type { ptr, ptr }
%struct.flow_match_ip = type { ptr, ptr }
%struct.flow_match_enc_keyid = type { ptr, ptr }
%struct.flow_match_enc_opts = type { ptr, ptr }
%struct.anon.222 = type { i32, i32, [4 x i32], i8 }
%struct.nfp_fl_key_ls = type { i32, i8, i32 }
%struct.nfp_flower_tun_ipv6 = type { %struct.in6_addr, %struct.in6_addr }
%struct.nfp_flower_tun_ipv4 = type { i32, i32 }
%struct.anon.199 = type { i32, i32, i32, i32 }
%struct.flow_dissector_key_ip = type { i8, i8 }
%struct.flow_dissector_key_ipv4_addrs = type { i32, i32 }

@nfp_tc_ct_merge_params = dso_local constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 8, i16 0, i16 8, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@nfp_nft_ct_merge_params = dso_local constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 12, i16 4, i16 16, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@nfp_fl_ct_handle_pre_ct.__msg = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"nfp: unsupported offload: Conntrack action empty in conntrack offload\00", [58 x i8] zeroinitializer }, align 32
@nfp_fl_ct_handle_pre_ct.__msg.1 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"nfp: unsupported offload: Conntrack requires ACTION_GOTO\00", [39 x i8] zeroinitializer }, align 32
@nfp_fl_ct_handle_pre_ct.__msg.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"nfp: offload error: Could not create zone table entry\00", [42 x i8] zeroinitializer }, align 32
@nfp_fl_ct_handle_pre_ct.__msg.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"nfp: offload error: Could not register nft_callback\00", [44 x i8] zeroinitializer }, align 32
@nfp_fl_ct_handle_post_ct.__msg = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"nfp: unsupported offload: partially wildcarded ct_zone is not supported\00", [56 x i8] zeroinitializer }, align 32
@nfp_fl_ct_handle_post_ct.__msg.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"nfp: offload error: Could not create zone table entry\00", [42 x i8] zeroinitializer }, align 32
@nfp_ct_map_params = external dso_local local_unnamed_addr constant %struct.rhashtable_params, align 4
@cleanup_nft_merge_entry.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/netronome/nfp/flower/conntrack.c\00", [42 x i8] zeroinitializer }, align 32
@nfp_fl_ct_del_offload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfp_flower_table_params = external dso_local local_unnamed_addr constant %struct.rhashtable_params, align 4
@nfp_repr_netdev_ops = external dso_local constant %struct.net_device_ops, align 4
@nfp_del_tc_merge_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 1297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014WARNING: could not remove merge_entry from hashtable\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfp_del_tc_merge_entry\00", [41 x i8] zeroinitializer }, align 32
@nfp_del_tc_merge_entry._entry_ptr = internal global ptr @nfp_del_tc_merge_entry._entry, section ".printk_index", align 4
@nfp_zone_table_params = external dso_local local_unnamed_addr constant %struct.rhashtable_params, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.15 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nfp_fl_ct_add_flow.__msg = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"nfp: offload error: ct map entry creation failed\00", [47 x i8] zeroinitializer }, align 32
@nfp_fl_ct_add_flow.__msg.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"nfp: offload error: ct map entry table add failed\00", [46 x i8] zeroinitializer }, align 32
@nfp_fl_ct_add_offload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfp_fl_ct_offload_nft_flow.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.23 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.30 = internal global [9 x i64] [i64 7, i64 32, i64 8, i64 9, i64 10, i64 13, i64 25, i64 26, i64 27]
@__sancov_gen_cov_switch_values.31 = internal global [9 x i64] [i64 7, i64 32, i64 8, i64 9, i64 10, i64 13, i64 25, i64 26, i64 27]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 23, i64 24]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 23, i64 24]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 23, i64 24]
@__sancov_gen_cov_switch_values.35 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 16]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.39 = private unnamed_addr constant [23 x i8] c"nfp_tc_ct_merge_params\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 7, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant [24 x i8] c"nfp_nft_ct_merge_params\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 15, i32 32 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 1419, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 1426, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 1433, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 1442, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 1481, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 1488, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 1249, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 1297, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 695, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 594, i32 8 }
@___asan_gen_.88 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 723, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 755, i32 10 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 1202, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 1213, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [57 x i8] c"../drivers/net/ethernet/netronome/nfp/flower/conntrack.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 1668, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @nfp_del_tc_merge_entry._entry, ptr @nfp_del_tc_merge_entry._entry_ptr, ptr @nfp_tc_ct_merge_params, ptr @nfp_nft_ct_merge_params, ptr @nfp_fl_ct_handle_pre_ct.__msg, ptr @nfp_fl_ct_handle_pre_ct.__msg.1, ptr @nfp_fl_ct_handle_pre_ct.__msg.2, ptr @nfp_fl_ct_handle_pre_ct.__msg.3, ptr @nfp_fl_ct_handle_post_ct.__msg, ptr @nfp_fl_ct_handle_post_ct.__msg.4, ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @nfp_fl_ct_add_flow.__msg, ptr @nfp_fl_ct_add_flow.__msg.16, ptr @.str.18], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_tc_ct_merge_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_nft_ct_merge_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_ct_handle_pre_ct.__msg to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_ct_handle_pre_ct.__msg.1 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_ct_handle_pre_ct.__msg.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_ct_handle_pre_ct.__msg.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_ct_handle_post_ct.__msg to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_ct_handle_post_ct.__msg.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_del_tc_merge_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_ct_add_flow.__msg to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_ct_add_flow.__msg.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @is_pre_ct_flow(ptr nocapture noundef readonly %flow) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rule = getelementptr inbounds %struct.flow_cls_offload, ptr %flow, i32 0, i32 3
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 8
  %entries = getelementptr inbounds %struct.flow_rule, ptr %1, i32 1
  %action2 = getelementptr inbounds %struct.flow_rule, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %action2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %action2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14.not = icmp eq i32 %3, 0
  br i1 %cmp14.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %cmp17 = phi i1 [ %cmp, %for.inc.for.body_crit_edge ], [ true, %entry.for.body_crit_edge ]
  %i.016 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %act.015 = phi ptr [ %arrayidx8, %for.inc.for.body_crit_edge ], [ %entries, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %act.015 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %act.015, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %5)
  %cmp3 = icmp eq i32 %5, 23
  br i1 %cmp3, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %6 = getelementptr inbounds %struct.flow_action_entry, ptr %act.015, i32 0, i32 5
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.016, 1
  %arrayidx8 = getelementptr [0 x %struct.flow_action_entry], ptr %entries, i32 0, i32 %inc
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %3)
  %cmp = icmp ult i32 %inc, %3
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.cleanup_crit_edge ], [ %cmp, %for.inc.cleanup_crit_edge ], [ %cmp17, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %cmp.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @is_post_ct_flow(ptr nocapture noundef readonly %flow) local_unnamed_addr #2 align 64 {
entry:
  %ct = alloca %struct.flow_match_ct, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rule.i = getelementptr inbounds %struct.flow_cls_offload, ptr %flow, i32 0, i32 3
  %0 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ct) #12
  %4 = ptrtoint ptr %ct to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %ct, align 4, !annotation !85
  %5 = getelementptr inbounds %struct.flow_match_ct, ptr %ct, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !85
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  %and = and i32 %8, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @flow_rule_match_ct(ptr noundef %1, ptr noundef nonnull %ct) #12
  %9 = ptrtoint ptr %ct to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ct, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %10, align 4
  %13 = and i16 %12, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool3.not = icmp eq i16 %13, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end5 ], [ true, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ct) #12
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ct(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_fl_ct_clean_flow_entry(ptr noundef %entry1) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %list_node = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %entry1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_node) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %entry1, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %list_node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list_node, align 4
  %prev.i = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %entry1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %children = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %entry1, i32 0, i32 6
  %8 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %children, align 4
  %cmp.i = icmp eq ptr %9, %children
  br i1 %cmp.i, label %list_del.exit.if.end3_crit_edge, label %if.then

list_del.exit.if.end3_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then:                                          ; preds = %list_del.exit
  %type = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %entry1, i32 0, i32 3
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.then.if.end3_crit_edge [
    i32 1, label %if.then.for.body.i_crit_edge
    i32 0, label %if.then.for.body.i29_crit_edge
    i32 2, label %if.then.for.body29.i_crit_edge
  ]

if.then.for.body29.i_crit_edge:                   ; preds = %if.then
  br label %for.body29.i

if.then.for.body.i29_crit_edge:                   ; preds = %if.then
  br label %for.body.i29

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %.pn48.in55.i = phi ptr [ %.pn48.i, %for.body.i.for.body.i_crit_edge ], [ %9, %if.then.for.body.i_crit_edge ]
  %m_entry.0.i = getelementptr i8, ptr %.pn48.in55.i, i32 -24
  %13 = ptrtoint ptr %.pn48.in55.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn48.i = load ptr, ptr %.pn48.in55.i, align 4
  tail call fastcc void @cleanup_nft_merge_entry(ptr noundef %m_entry.0.i) #12
  %cmp.not.i = icmp eq ptr %.pn48.i, %children
  br i1 %cmp.not.i, label %for.body.i.if.end3_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.if.end3_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

for.body.i29:                                     ; preds = %for.body.i29.for.body.i29_crit_edge, %if.then.for.body.i29_crit_edge
  %.pn49.in56.i = phi ptr [ %.pn49.i, %for.body.i29.for.body.i29_crit_edge ], [ %9, %if.then.for.body.i29_crit_edge ]
  %m_ent.0.i = getelementptr i8, ptr %.pn49.in56.i, i32 -12
  %14 = ptrtoint ptr %.pn49.in56.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn49.i = load ptr, ptr %.pn49.in56.i, align 4
  tail call fastcc void @nfp_del_tc_merge_entry(ptr noundef %m_ent.0.i) #12
  %cmp.not.i28 = icmp eq ptr %.pn49.i, %children
  br i1 %cmp.not.i28, label %for.body.i29.if.end3_crit_edge, label %for.body.i29.for.body.i29_crit_edge

for.body.i29.for.body.i29_crit_edge:              ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i29

for.body.i29.if.end3_crit_edge:                   ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

for.body29.i:                                     ; preds = %for.body29.i.for.body29.i_crit_edge, %if.then.for.body29.i_crit_edge
  %.pn.in54.i = phi ptr [ %.pn.i, %for.body29.i.for.body29.i_crit_edge ], [ %9, %if.then.for.body29.i_crit_edge ]
  %m_ent.1.i = getelementptr i8, ptr %.pn.in54.i, i32 -20
  %15 = ptrtoint ptr %.pn.in54.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn.i = load ptr, ptr %.pn.in54.i, align 4
  tail call fastcc void @nfp_del_tc_merge_entry(ptr noundef %m_ent.1.i) #12
  %cmp27.not.i = icmp eq ptr %.pn.i, %children
  br i1 %cmp27.not.i, label %for.body29.i.if.end3_crit_edge, label %for.body29.i.for.body29.i_crit_edge

for.body29.i.for.body29.i_crit_edge:              ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body29.i

for.body29.i.if.end3_crit_edge:                   ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.end3:                                          ; preds = %for.body29.i.if.end3_crit_edge, %for.body.i29.if.end3_crit_edge, %for.body.i.if.end3_crit_edge, %if.then.if.end3_crit_edge, %list_del.exit.if.end3_crit_edge
  %tun_offset = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %entry1, i32 0, i32 9
  %16 = ptrtoint ptr %tun_offset to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tun_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp4.not = icmp eq i8 %17, -1
  br i1 %cmp4.not, label %if.end3.if.end8_crit_edge, label %if.then6

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %17 to i32
  %rule = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %entry1, i32 0, i32 7
  %18 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rule, align 4
  %entries = getelementptr inbounds %struct.flow_rule, ptr %19, i32 1
  %arrayidx = getelementptr [0 x %struct.flow_action_entry], ptr %entries, i32 0, i32 %conv
  %20 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx, i32 0, i32 5
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  tail call void @kfree(ptr noundef %22) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end3.if.end8_crit_edge
  %type9 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %entry1, i32 0, i32 3
  %23 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp10 = icmp eq i32 %24, 1
  br i1 %cmp10, label %if.then12, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %rule13 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %entry1, i32 0, i32 7
  %25 = ptrtoint ptr %rule13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rule13, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  tail call void @kfree(ptr noundef %28) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end8.if.end14_crit_edge
  %rule15 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %entry1, i32 0, i32 7
  %29 = ptrtoint ptr %rule15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rule15, align 4
  tail call void @kfree(ptr noundef %30) #12
  tail call void @kfree(ptr noundef %entry1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_fl_ct_handle_pre_ct(ptr noundef %priv, ptr noundef %netdev, ptr noundef %flow, ptr noundef %extack) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rule = getelementptr inbounds %struct.flow_cls_offload, ptr %flow, i32 0, i32 3
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 8
  %action.i = getelementptr inbounds %struct.flow_rule, ptr %1, i32 0, i32 1
  %entries.i = getelementptr inbounds %struct.flow_rule, ptr %1, i32 1
  %2 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %action.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not.i = icmp eq i32 %3, 0
  br i1 %cmp11.not.i, label %entry.do.body_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %act.012.i = phi ptr [ %arrayidx5.i, %for.inc.i.for.body.i_crit_edge ], [ %entries.i, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %act.012.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %act.012.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %5)
  %cmp2.i = icmp eq i32 %5, 23
  br i1 %cmp2.i, label %get_flow_act.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.013.i, 1
  %arrayidx5.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i, i32 0, i32 %inc.i
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.do.body_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.do.body_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

get_flow_act.exit:                                ; preds = %for.body.i
  %tobool.not = icmp eq ptr %act.012.i, null
  br i1 %tobool.not, label %get_flow_act.exit.do.body_crit_edge, label %get_flow_act.exit.for.body.i99_crit_edge

get_flow_act.exit.for.body.i99_crit_edge:         ; preds = %get_flow_act.exit
  br label %for.body.i99

get_flow_act.exit.do.body_crit_edge:              ; preds = %get_flow_act.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %get_flow_act.exit.do.body_crit_edge, %for.inc.i.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_ct_handle_pre_ct.__msg) #12
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @nfp_fl_ct_handle_pre_ct.__msg, ptr %extack, align 4
  br label %cleanup

for.body.i99:                                     ; preds = %for.inc.i103.for.body.i99_crit_edge, %get_flow_act.exit.for.body.i99_crit_edge
  %i.013.i96 = phi i32 [ %inc.i100, %for.inc.i103.for.body.i99_crit_edge ], [ 0, %get_flow_act.exit.for.body.i99_crit_edge ]
  %act.012.i97 = phi ptr [ %arrayidx5.i101, %for.inc.i103.for.body.i99_crit_edge ], [ %entries.i, %get_flow_act.exit.for.body.i99_crit_edge ]
  %7 = ptrtoint ptr %act.012.i97 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %act.012.i97, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp2.i98 = icmp eq i32 %8, 3
  br i1 %cmp2.i98, label %get_flow_act.exit105, label %for.inc.i103

for.inc.i103:                                     ; preds = %for.body.i99
  %inc.i100 = add nuw i32 %i.013.i96, 1
  %arrayidx5.i101 = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i, i32 0, i32 %inc.i100
  %exitcond.not.i102 = icmp eq i32 %inc.i100, %3
  br i1 %exitcond.not.i102, label %for.inc.i103.do.body8_crit_edge, label %for.inc.i103.for.body.i99_crit_edge

for.inc.i103.for.body.i99_crit_edge:              ; preds = %for.inc.i103
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i99

for.inc.i103.do.body8_crit_edge:                  ; preds = %for.inc.i103
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body8

get_flow_act.exit105:                             ; preds = %for.body.i99
  %tobool6.not = icmp eq ptr %act.012.i97, null
  br i1 %tobool6.not, label %get_flow_act.exit105.do.body8_crit_edge, label %if.end16

get_flow_act.exit105.do.body8_crit_edge:          ; preds = %get_flow_act.exit105
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body8

do.body8:                                         ; preds = %get_flow_act.exit105.do.body8_crit_edge, %for.inc.i103.do.body8_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_ct_handle_pre_ct.__msg.1) #12
  %tobool10.not = icmp eq ptr %extack, null
  br i1 %tobool10.not, label %do.body8.cleanup_crit_edge, label %if.then11

do.body8.cleanup_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @nfp_fl_ct_handle_pre_ct.__msg.1, ptr %extack, align 4
  br label %cleanup

if.end16:                                         ; preds = %get_flow_act.exit105
  %10 = getelementptr inbounds %struct.flow_action_entry, ptr %act.012.i, i32 0, i32 5
  %zone = getelementptr inbounds %struct.anon.206, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %zone to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %zone, align 4
  %call17 = tail call fastcc ptr @get_nfp_zone_entry(ptr noundef %priv, i16 noundef zeroext %12, i1 noundef zeroext false)
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body20, label %if.end29

do.body20:                                        ; preds = %if.end16
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_ct_handle_pre_ct.__msg.2) #12
  %tobool22.not = icmp eq ptr %extack, null
  br i1 %tobool22.not, label %do.body20.if.end25_crit_edge, label %if.then23

do.body20.if.end25_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then23:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @nfp_fl_ct_handle_pre_ct.__msg.2, ptr %extack, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %do.body20.if.end25_crit_edge
  %14 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end16
  %nft = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %call17, i32 0, i32 3
  %15 = ptrtoint ptr %nft to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nft, align 4
  %tobool30.not = icmp eq ptr %16, null
  br i1 %tobool30.not, label %if.then31, label %if.end29.if.end46_crit_edge

if.end29.if.end46_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then31:                                        ; preds = %if.end29
  %flow_table = getelementptr inbounds %struct.flow_action_entry, ptr %act.012.i, i32 0, i32 5, i32 0, i32 1
  %17 = ptrtoint ptr %flow_table to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %flow_table, align 8
  %19 = ptrtoint ptr %nft to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %nft, align 4
  %flow_block.i = getelementptr inbounds %struct.nf_flowtable, ptr %18, i32 0, i32 6
  %flow_block_lock.i = getelementptr inbounds %struct.nf_flowtable, ptr %18, i32 0, i32 7
  tail call void @down_write(ptr noundef %flow_block_lock.i) #12
  %call.i = tail call ptr @flow_block_cb_lookup(ptr noundef %flow_block.i, ptr noundef nonnull @nfp_fl_ct_handle_nft_flow, ptr noundef %call17) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then31.do.body37_crit_edge

if.then31.do.body37_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body37

if.end.i:                                         ; preds = %if.then31
  %call1.i = tail call ptr @flow_block_cb_alloc(ptr noundef nonnull @nfp_fl_ct_handle_nft_flow, ptr noundef %call17, ptr noundef %call17, ptr noundef null) #12
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %nf_flow_table_offload_add_cb.exit, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  %list.i = getelementptr inbounds %struct.flow_block_cb, ptr %call1.i, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.nf_flowtable, ptr %18, i32 0, i32 6, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %21, ptr noundef %flow_block.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end5.i.nf_flow_table_offload_add_cb.exit.thread_crit_edge

if.end5.i.nf_flow_table_offload_add_cb.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_flow_table_offload_add_cb.exit.thread

if.end.i.i.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %list.i, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %flow_block.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call1.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %list.i, ptr %21, align 4
  br label %nf_flow_table_offload_add_cb.exit.thread

nf_flow_table_offload_add_cb.exit.thread:         ; preds = %if.end.i.i.i, %if.end5.i.nf_flow_table_offload_add_cb.exit.thread_crit_edge
  tail call void @up_write(ptr noundef %flow_block_lock.i) #12
  br label %if.end46

nf_flow_table_offload_add_cb.exit:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %call1.i to i32
  br label %do.body37

do.body37:                                        ; preds = %nf_flow_table_offload_add_cb.exit, %if.then31.do.body37_crit_edge
  %err.0.i116 = phi i32 [ %26, %nf_flow_table_offload_add_cb.exit ], [ -17, %if.then31.do.body37_crit_edge ]
  tail call void @up_write(ptr noundef %flow_block_lock.i) #12
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_ct_handle_pre_ct.__msg.3) #12
  %tobool39.not = icmp eq ptr %extack, null
  br i1 %tobool39.not, label %do.body37.cleanup_crit_edge, label %if.then40

do.body37.cleanup_crit_edge:                      ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then40:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @nfp_fl_ct_handle_pre_ct.__msg.3, ptr %extack, align 4
  br label %cleanup

if.end46:                                         ; preds = %nf_flow_table_offload_add_cb.exit.thread, %if.end29.if.end46_crit_edge
  %call47 = tail call fastcc ptr @nfp_fl_ct_add_flow(ptr noundef %call17, ptr noundef %netdev, ptr noundef %flow, i1 noundef zeroext false, ptr noundef %extack)
  %cmp.i106 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %call47 to i32
  br label %cleanup

if.end51:                                         ; preds = %if.end46
  %type = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %call47, i32 0, i32 3
  %29 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %type, align 8
  %30 = getelementptr inbounds %struct.flow_action_entry, ptr %act.012.i97, i32 0, i32 5
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %chain_index = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %call47, i32 0, i32 2
  %33 = ptrtoint ptr %chain_index to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %chain_index, align 4
  %list_node = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %call47, i32 0, i32 1
  %pre_ct_list = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %call17, i32 0, i32 4
  %34 = ptrtoint ptr %pre_ct_list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pre_ct_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_node, ptr noundef %pre_ct_list, ptr noundef %35) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end51.list_add.exit_crit_edge

if.end51.list_add.exit_crit_edge:                 ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %list_node, ptr %prev1.i.i, align 4
  %37 = ptrtoint ptr %list_node to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %list_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %call47, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %pre_ct_list, ptr %prev3.i.i, align 4
  %39 = ptrtoint ptr %pre_ct_list to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %list_node, ptr %pre_ct_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end51.list_add.exit_crit_edge
  %pre_ct_count = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %call17, i32 0, i32 5
  %40 = ptrtoint ptr %pre_ct_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pre_ct_count, align 4
  %inc = add i32 %41, 1
  store i32 %inc, ptr %pre_ct_count, align 4
  tail call fastcc void @nfp_ct_merge_tc_entries(ptr noundef %call47, ptr noundef %call17, ptr noundef %call17)
  %ct_zone_wc = getelementptr inbounds %struct.nfp_flower_priv, ptr %priv, i32 0, i32 33
  %42 = ptrtoint ptr %ct_zone_wc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ct_zone_wc, align 4
  %tobool52.not = icmp eq ptr %43, null
  br i1 %tobool52.not, label %list_add.exit.cleanup_crit_edge, label %if.then53

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then53:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @nfp_ct_merge_tc_entries(ptr noundef %call47, ptr noundef nonnull %43, ptr noundef %call17)
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %list_add.exit.cleanup_crit_edge, %if.then49, %if.then40, %do.body37.cleanup_crit_edge, %if.end25, %if.then11, %do.body8.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.end25 ], [ %28, %if.then49 ], [ -95, %if.then2 ], [ -95, %do.body.cleanup_crit_edge ], [ -95, %if.then11 ], [ -95, %do.body8.cleanup_crit_edge ], [ %err.0.i116, %if.then40 ], [ %err.0.i116, %do.body37.cleanup_crit_edge ], [ 0, %if.then53 ], [ 0, %list_add.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_nfp_zone_entry(ptr noundef %priv, i16 noundef zeroext %zone, i1 noundef zeroext %wildcarded) unnamed_addr #2 align 64 {
entry:
  %zone.addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zone.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %zone, ptr %zone.addr, align 2
  br i1 %wildcarded, label %land.lhs.true, label %if.then4.critedge

land.lhs.true:                                    ; preds = %entry
  %ct_zone_wc = getelementptr inbounds %struct.nfp_flower_priv, ptr %priv, i32 0, i32 33
  %1 = ptrtoint ptr %ct_zone_wc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ct_zone_wc, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.else, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4.critedge:                                ; preds = %entry
  %ct_zone_table = getelementptr inbounds %struct.nfp_flower_priv, ptr %priv, i32 0, i32 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfp_zone_table_params to i32))
  %.unpack = load i32, ptr @nfp_zone_table_params, align 4
  %3 = insertvalue [7 x i32] undef, i32 %.unpack, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_zone_table_params, i32 0, i32 2) to i32))
  %.unpack67 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_zone_table_params, i32 0, i32 2), align 4
  %4 = insertvalue [7 x i32] %3, i32 %.unpack67, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_zone_table_params, i32 0, i32 4) to i32))
  %.unpack68 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_zone_table_params, i32 0, i32 4), align 4
  %5 = insertvalue [7 x i32] %4, i32 %.unpack68, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_zone_table_params, i32 0, i32 5) to i32))
  %.unpack69 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_zone_table_params, i32 0, i32 5), align 4
  %6 = insertvalue [7 x i32] %5, i32 %.unpack69, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_zone_table_params, i32 0, i32 7) to i32))
  %.unpack70 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_zone_table_params, i32 0, i32 7), align 4
  %7 = insertvalue [7 x i32] %6, i32 %.unpack70, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_zone_table_params, i32 0, i32 8) to i32))
  %.unpack71 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_zone_table_params, i32 0, i32 8), align 4
  %8 = insertvalue [7 x i32] %7, i32 %.unpack71, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_zone_table_params, i32 0, i32 9) to i32))
  %.unpack72 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_zone_table_params, i32 0, i32 9), align 4
  %9 = insertvalue [7 x i32] %8, i32 %.unpack72, 6
  %call.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %ct_zone_table, ptr noundef nonnull %zone.addr, [7 x i32] %9) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then4.critedge.get_hashentry.exit_crit_edge

if.then4.critedge.get_hashentry.exit_crit_edge:   ; preds = %if.then4.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_hashentry.exit

if.end.i:                                         ; preds = %if.then4.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 516) #15
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.get_hashentry.exit_crit_edge

if.end.i.get_hashentry.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_hashentry.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

get_hashentry.exit:                               ; preds = %if.end.i.get_hashentry.exit_crit_edge, %if.then4.critedge.get_hashentry.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i, %if.then4.critedge.get_hashentry.exit_crit_edge ], [ %call7.i.i.i, %if.end.i.get_hashentry.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %get_hashentry.exit.cleanup_crit_edge, label %lor.lhs.false

get_hashentry.exit.cleanup_crit_edge:             ; preds = %get_hashentry.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %get_hashentry.exit
  %priv6 = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %retval.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %priv6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv6, align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %lor.lhs.false.if.end15_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.else:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 516) #15
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.else.cleanup_crit_edge, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.else.if.end15_crit_edge, %lor.lhs.false.if.end15_crit_edge
  %zt.0 = phi ptr [ %call7.i.i, %if.else.if.end15_crit_edge ], [ %retval.0.i, %lor.lhs.false.if.end15_crit_edge ]
  %14 = ptrtoint ptr %zone.addr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %zone.addr, align 2
  %16 = ptrtoint ptr %zt.0 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %zt.0, align 4
  %priv17 = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt.0, i32 0, i32 2
  %17 = ptrtoint ptr %priv17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %priv, ptr %priv17, align 4
  %nft = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt.0, i32 0, i32 3
  %18 = ptrtoint ptr %nft to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %nft, align 4
  %pre_ct_list = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt.0, i32 0, i32 4
  %19 = ptrtoint ptr %pre_ct_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %pre_ct_list, ptr %pre_ct_list, align 4
  %prev.i = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt.0, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pre_ct_list, ptr %prev.i, align 4
  %post_ct_list = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt.0, i32 0, i32 6
  %21 = ptrtoint ptr %post_ct_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %post_ct_list, ptr %post_ct_list, align 4
  %prev.i80 = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt.0, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %prev.i80 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %post_ct_list, ptr %prev.i80, align 4
  %nft_flows_list = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt.0, i32 0, i32 10
  %23 = ptrtoint ptr %nft_flows_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %nft_flows_list, ptr %nft_flows_list, align 4
  %prev.i81 = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt.0, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i81 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %nft_flows_list, ptr %prev.i81, align 4
  %tc_merge_tb = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt.0, i32 0, i32 8
  %call18 = call i32 @rhashtable_init(ptr noundef %tc_merge_tb, ptr noundef nonnull @nfp_tc_ct_merge_params) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end15.err_tc_merge_tb_init_crit_edge

if.end15.err_tc_merge_tb_init_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_tc_merge_tb_init

if.end21:                                         ; preds = %if.end15
  %nft_merge_tb = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt.0, i32 0, i32 12
  %call22 = call i32 @rhashtable_init(ptr noundef %nft_merge_tb, ptr noundef nonnull @nfp_nft_ct_merge_params) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.err_nft_merge_tb_init_crit_edge

if.end21.err_nft_merge_tb_init_crit_edge:         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_nft_merge_tb_init

if.end25:                                         ; preds = %if.end21
  br i1 %wildcarded, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %ct_zone_wc28 = getelementptr inbounds %struct.nfp_flower_priv, ptr %priv, i32 0, i32 33
  %25 = ptrtoint ptr %ct_zone_wc28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %zt.0, ptr %ct_zone_wc28, align 4
  br label %cleanup

if.else29:                                        ; preds = %if.end25
  %ct_zone_table30 = getelementptr inbounds %struct.nfp_flower_priv, ptr %priv, i32 0, i32 32
  %hash_node = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt.0, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfp_zone_table_params to i32))
  %.unpack73 = load i32, ptr @nfp_zone_table_params, align 4
  %26 = insertvalue [7 x i32] undef, i32 %.unpack73, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_zone_table_params, i32 0, i32 2) to i32))
  %.unpack74 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_zone_table_params, i32 0, i32 2), align 4
  %27 = insertvalue [7 x i32] %26, i32 %.unpack74, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_zone_table_params, i32 0, i32 4) to i32))
  %.unpack75 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_zone_table_params, i32 0, i32 4), align 4
  %28 = insertvalue [7 x i32] %27, i32 %.unpack75, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_zone_table_params, i32 0, i32 5) to i32))
  %.unpack76 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_zone_table_params, i32 0, i32 5), align 4
  %29 = insertvalue [7 x i32] %28, i32 %.unpack76, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_zone_table_params, i32 0, i32 7) to i32))
  %.unpack77 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_zone_table_params, i32 0, i32 7), align 4
  %30 = insertvalue [7 x i32] %29, i32 %.unpack77, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_zone_table_params, i32 0, i32 8) to i32))
  %.unpack78 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_zone_table_params, i32 0, i32 8), align 4
  %31 = insertvalue [7 x i32] %30, i32 %.unpack78, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_zone_table_params, i32 0, i32 9) to i32))
  %.unpack79 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_zone_table_params, i32 0, i32 9), align 4
  %32 = insertvalue [7 x i32] %31, i32 %.unpack79, 6
  %call31 = call fastcc i32 @rhashtable_insert_fast(ptr noundef %ct_zone_table30, ptr noundef %hash_node, [7 x i32] %32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.else29.cleanup_crit_edge, label %err_zone_insert

if.else29.cleanup_crit_edge:                      ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_zone_insert:                                  ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #14
  call void @rhashtable_destroy(ptr noundef %nft_merge_tb) #12
  br label %err_nft_merge_tb_init

err_nft_merge_tb_init:                            ; preds = %err_zone_insert, %if.end21.err_nft_merge_tb_init_crit_edge
  %err.0 = phi i32 [ %call22, %if.end21.err_nft_merge_tb_init_crit_edge ], [ %call31, %err_zone_insert ]
  call void @rhashtable_destroy(ptr noundef %tc_merge_tb) #12
  br label %err_tc_merge_tb_init

err_tc_merge_tb_init:                             ; preds = %err_nft_merge_tb_init, %if.end15.err_tc_merge_tb_init_crit_edge
  %err.1 = phi i32 [ %call18, %if.end15.err_tc_merge_tb_init_crit_edge ], [ %err.0, %err_nft_merge_tb_init ]
  call void @kfree(ptr noundef nonnull %zt.0) #12
  %33 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_tc_merge_tb_init, %if.else29.cleanup_crit_edge, %if.then27, %if.else.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %get_hashentry.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ %33, %err_tc_merge_tb_init ], [ %2, %land.lhs.true.cleanup_crit_edge ], [ %retval.0.i, %lor.lhs.false.cleanup_crit_edge ], [ %retval.0.i, %get_hashentry.exit.cleanup_crit_edge ], [ %zt.0, %if.else29.cleanup_crit_edge ], [ %zt.0, %if.then27 ], [ inttoptr (i32 -12 to ptr), %if.else.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_fl_ct_handle_nft_flow(i32 noundef %type, ptr noundef %type_data, ptr noundef %cb_priv) #2 align 64 {
entry:
  %iter.i.i = alloca %struct.rhashtable_iter, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cond = icmp eq i32 %type, 2
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  tail call void @rtnl_lock() #12
  %call.i = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %sw.bb.if.end29.i_crit_edge

sw.bb.if.end29.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

land.rhs.i:                                       ; preds = %sw.bb
  %.b105.i = load i1, ptr @nfp_fl_ct_offload_nft_flow.__already_done, align 1
  br i1 %.b105.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !86

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nfp_fl_ct_offload_nft_flow.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1668, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str, i32 noundef 1668) #12
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %sw.bb.if.end29.i_crit_edge
  %extack37.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 3
  %0 = ptrtoint ptr %extack37.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack37.i, align 4
  %command.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 1
  %2 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %command.i, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %3, label %if.end29.i.nfp_fl_ct_offload_nft_flow.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb47.i
    i32 2, label %sw.bb53.i
  ]

if.end29.i.nfp_fl_ct_offload_nft_flow.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_fl_ct_offload_nft_flow.exit

sw.bb.i:                                          ; preds = %if.end29.i
  %priv.i = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %cb_priv, i32 0, i32 2
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 4
  %ct_map_table.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %6, i32 0, i32 34
  %cookie.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfp_ct_map_params to i32))
  %.unpack98.i = load i32, ptr @nfp_ct_map_params, align 4
  %7 = insertvalue [7 x i32] undef, i32 %.unpack98.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 2) to i32))
  %.unpack99.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 2), align 4
  %8 = insertvalue [7 x i32] %7, i32 %.unpack99.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 4) to i32))
  %.unpack100.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 4), align 4
  %9 = insertvalue [7 x i32] %8, i32 %.unpack100.i, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 5) to i32))
  %.unpack101.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 5), align 4
  %10 = insertvalue [7 x i32] %9, i32 %.unpack101.i, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 7) to i32))
  %.unpack102.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 7), align 4
  %11 = insertvalue [7 x i32] %10, i32 %.unpack102.i, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 8) to i32))
  %.unpack103.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 8), align 4
  %12 = insertvalue [7 x i32] %11, i32 %.unpack103.i, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 9) to i32))
  %.unpack104.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 9), align 4
  %13 = insertvalue [7 x i32] %12, i32 %.unpack104.i, 6
  %call38.i = tail call fastcc ptr @rhashtable_lookup_fast(ptr noundef %ct_map_table.i, ptr noundef %cookie.i, [7 x i32] %13) #12
  %tobool39.not.i = icmp eq ptr %call38.i, null
  br i1 %tobool39.not.i, label %if.then40.i, label %sw.bb.i.nfp_fl_ct_offload_nft_flow.exit_crit_edge

sw.bb.i.nfp_fl_ct_offload_nft_flow.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_fl_ct_offload_nft_flow.exit

if.then40.i:                                      ; preds = %sw.bb.i
  %call41.i = tail call fastcc ptr @nfp_fl_ct_add_flow(ptr noundef %cb_priv, ptr noundef null, ptr noundef %type_data, i1 noundef zeroext true, ptr noundef %1) #12
  %cmp.i.i = icmp ugt ptr %call41.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then43.i, label %if.end45.i

if.then43.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %call41.i to i32
  br label %nfp_fl_ct_offload_nft_flow.exit

if.end45.i:                                       ; preds = %if.then40.i
  %type.i = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %call41.i, i32 0, i32 3
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %type.i, align 8
  %list_node.i = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %call41.i, i32 0, i32 1
  %nft_flows_list.i = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %cb_priv, i32 0, i32 10
  %16 = ptrtoint ptr %nft_flows_list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nft_flows_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_node.i, ptr noundef %nft_flows_list.i, ptr noundef %17) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end45.i.list_add.exit.i_crit_edge

if.end45.i.list_add.exit.i_crit_edge:             ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %list_node.i, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %list_node.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %list_node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %call41.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %nft_flows_list.i, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %nft_flows_list.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %list_node.i, ptr %nft_flows_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end45.i.list_add.exit.i_crit_edge
  %nft_flows_count.i = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %cb_priv, i32 0, i32 11
  %22 = ptrtoint ptr %nft_flows_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nft_flows_count.i, align 4
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr %nft_flows_count.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %iter.i.i) #12
  %24 = call ptr @memset(ptr %iter.i.i, i32 255, i32 36)
  %tc_merge_tb.i.i = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %cb_priv, i32 0, i32 8
  call void @rhashtable_walk_enter(ptr noundef %tc_merge_tb.i.i, ptr noundef nonnull %iter.i.i) #12
  %call.i.i106.i = call i32 @rhashtable_walk_start_check(ptr noundef nonnull %iter.i.i) #12
  %call6.i.i = call ptr @rhashtable_walk_next(ptr noundef nonnull %iter.i.i) #12
  %cmp.not7.i.i = icmp eq ptr %call6.i.i, null
  br i1 %cmp.not7.i.i, label %list_add.exit.i.nfp_ct_merge_nft_with_tc.exit.i_crit_edge, label %list_add.exit.i.while.body.i.i_crit_edge

list_add.exit.i.while.body.i.i_crit_edge:         ; preds = %list_add.exit.i
  br label %while.body.i.i

list_add.exit.i.nfp_ct_merge_nft_with_tc.exit.i_crit_edge: ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_ct_merge_nft_with_tc.exit.i

while.body.i.i:                                   ; preds = %while.cond.backedge.i.i.while.body.i.i_crit_edge, %list_add.exit.i.while.body.i.i_crit_edge
  %call8.i.i = phi ptr [ %call.i.i, %while.cond.backedge.i.i.while.body.i.i_crit_edge ], [ %call6.i.i, %list_add.exit.i.while.body.i.i_crit_edge ]
  %cmp.i.i.i = icmp ugt ptr %call8.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %while.body.i.i.while.cond.backedge.i.i_crit_edge, label %if.end.i.i

while.body.i.i.while.cond.backedge.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge.i.i

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @rhashtable_walk_stop(ptr noundef nonnull %iter.i.i) #12
  call fastcc void @nfp_ct_do_nft_merge(ptr noundef %cb_priv, ptr noundef %call41.i, ptr noundef nonnull %call8.i.i) #12
  %call.i5.i.i = call i32 @rhashtable_walk_start_check(ptr noundef nonnull %iter.i.i) #12
  br label %while.cond.backedge.i.i

while.cond.backedge.i.i:                          ; preds = %if.end.i.i, %while.body.i.i.while.cond.backedge.i.i_crit_edge
  %call.i.i = call ptr @rhashtable_walk_next(ptr noundef nonnull %iter.i.i) #12
  %cmp.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not.i.i, label %while.cond.backedge.i.i.nfp_ct_merge_nft_with_tc.exit.i_crit_edge, label %while.cond.backedge.i.i.while.body.i.i_crit_edge

while.cond.backedge.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

while.cond.backedge.i.i.nfp_ct_merge_nft_with_tc.exit.i_crit_edge: ; preds = %while.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_ct_merge_nft_with_tc.exit.i

nfp_ct_merge_nft_with_tc.exit.i:                  ; preds = %while.cond.backedge.i.i.nfp_ct_merge_nft_with_tc.exit.i_crit_edge, %list_add.exit.i.nfp_ct_merge_nft_with_tc.exit.i_crit_edge
  call void @rhashtable_walk_stop(ptr noundef nonnull %iter.i.i) #12
  call void @rhashtable_walk_exit(ptr noundef nonnull %iter.i.i) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %iter.i.i) #12
  br label %nfp_fl_ct_offload_nft_flow.exit

sw.bb47.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  %priv48.i = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %cb_priv, i32 0, i32 2
  %25 = ptrtoint ptr %priv48.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv48.i, align 4
  %ct_map_table49.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %26, i32 0, i32 34
  %cookie50.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfp_ct_map_params to i32))
  %.unpack91.i = load i32, ptr @nfp_ct_map_params, align 4
  %27 = insertvalue [7 x i32] undef, i32 %.unpack91.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 2) to i32))
  %.unpack92.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 2), align 4
  %28 = insertvalue [7 x i32] %27, i32 %.unpack92.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 4) to i32))
  %.unpack93.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 4), align 4
  %29 = insertvalue [7 x i32] %28, i32 %.unpack93.i, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 5) to i32))
  %.unpack94.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 5), align 4
  %30 = insertvalue [7 x i32] %29, i32 %.unpack94.i, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 7) to i32))
  %.unpack95.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 7), align 4
  %31 = insertvalue [7 x i32] %30, i32 %.unpack95.i, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 8) to i32))
  %.unpack96.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 8), align 4
  %32 = insertvalue [7 x i32] %31, i32 %.unpack96.i, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 9) to i32))
  %.unpack97.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 9), align 4
  %33 = insertvalue [7 x i32] %32, i32 %.unpack97.i, 6
  %call51.i = tail call fastcc ptr @rhashtable_lookup_fast(ptr noundef %ct_map_table49.i, ptr noundef %cookie50.i, [7 x i32] %33) #12
  %call52.i = tail call i32 @nfp_fl_ct_del_flow(ptr noundef %call51.i) #12
  br label %nfp_fl_ct_offload_nft_flow.exit

sw.bb53.i:                                        ; preds = %if.end29.i
  %priv54.i = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %cb_priv, i32 0, i32 2
  %34 = ptrtoint ptr %priv54.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv54.i, align 4
  %ct_map_table55.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %35, i32 0, i32 34
  %cookie56.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfp_ct_map_params to i32))
  %.unpack.i = load i32, ptr @nfp_ct_map_params, align 4
  %36 = insertvalue [7 x i32] undef, i32 %.unpack.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 2) to i32))
  %.unpack85.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 2), align 4
  %37 = insertvalue [7 x i32] %36, i32 %.unpack85.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 4) to i32))
  %.unpack86.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 4), align 4
  %38 = insertvalue [7 x i32] %37, i32 %.unpack86.i, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 5) to i32))
  %.unpack87.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 5), align 4
  %39 = insertvalue [7 x i32] %38, i32 %.unpack87.i, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 7) to i32))
  %.unpack88.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 7), align 4
  %40 = insertvalue [7 x i32] %39, i32 %.unpack88.i, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 8) to i32))
  %.unpack89.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 8), align 4
  %41 = insertvalue [7 x i32] %40, i32 %.unpack89.i, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 9) to i32))
  %.unpack90.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 9), align 4
  %42 = insertvalue [7 x i32] %41, i32 %.unpack90.i, 6
  %call57.i = tail call fastcc ptr @rhashtable_lookup_fast(ptr noundef %ct_map_table55.i, ptr noundef %cookie56.i, [7 x i32] %42) #12
  %tobool58.not.i = icmp eq ptr %call57.i, null
  br i1 %tobool58.not.i, label %sw.bb53.i.nfp_fl_ct_offload_nft_flow.exit_crit_edge, label %if.then59.i

sw.bb53.i.nfp_fl_ct_offload_nft_flow.exit_crit_edge: ; preds = %sw.bb53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_fl_ct_offload_nft_flow.exit

if.then59.i:                                      ; preds = %sw.bb53.i
  call void @__sanitizer_cov_trace_pc() #14
  %call60.i = tail call i32 @nfp_fl_ct_stats(ptr noundef %type_data, ptr noundef nonnull %call57.i) #12
  br label %nfp_fl_ct_offload_nft_flow.exit

nfp_fl_ct_offload_nft_flow.exit:                  ; preds = %if.then59.i, %sw.bb53.i.nfp_fl_ct_offload_nft_flow.exit_crit_edge, %sw.bb47.i, %nfp_ct_merge_nft_with_tc.exit.i, %if.then43.i, %sw.bb.i.nfp_fl_ct_offload_nft_flow.exit_crit_edge, %if.end29.i.nfp_fl_ct_offload_nft_flow.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then59.i ], [ %call52.i, %sw.bb47.i ], [ %14, %if.then43.i ], [ 0, %nfp_ct_merge_nft_with_tc.exit.i ], [ 0, %sw.bb.i.nfp_fl_ct_offload_nft_flow.exit_crit_edge ], [ -22, %if.end29.i.nfp_fl_ct_offload_nft_flow.exit_crit_edge ], [ -22, %sw.bb53.i.nfp_fl_ct_offload_nft_flow.exit_crit_edge ]
  call void @rtnl_unlock() #12
  br label %cleanup

cleanup:                                          ; preds = %nfp_fl_ct_offload_nft_flow.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %nfp_fl_ct_offload_nft_flow.exit ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfp_fl_ct_add_flow(ptr noundef %zt, ptr noundef %netdev, ptr noundef %flow, i1 noundef zeroext %is_nft, ptr noundef writeonly %extack) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 88) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup127_crit_edge, label %if.end

entry.cleanup127_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup127

if.end:                                           ; preds = %entry
  %rule = getelementptr inbounds %struct.flow_cls_offload, ptr %flow, i32 0, i32 3
  %1 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rule, align 8
  %action = getelementptr inbounds %struct.flow_rule, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %action, align 8
  %call3 = tail call ptr @flow_rule_alloc(i32 noundef %4) #12
  %rule4 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %rule4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %rule4, align 4
  %tobool6.not = icmp eq ptr %call3, null
  br i1 %tobool6.not, label %if.end.err_pre_ct_rule_crit_edge, label %if.end8

if.end.err_pre_ct_rule_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_pre_ct_rule

if.end8:                                          ; preds = %if.end
  br i1 %is_nft, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i210 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 284) #15
  %tobool12.not = icmp eq ptr %call7.i.i210, null
  br i1 %tobool12.not, label %if.then10.err_pre_ct_act_crit_edge, label %if.end14

if.then10.err_pre_ct_act_crit_edge:               ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_pre_ct_act

if.end14:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rule, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = call ptr @memcpy(ptr %call7.i.i210, ptr %10, i32 60)
  %mask = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i210, i32 0, i32 2
  %mask19 = getelementptr inbounds %struct.flow_match, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %mask19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mask19, align 4
  %14 = call ptr @memcpy(ptr %mask, ptr %13, i32 112)
  %key = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i210, i32 0, i32 1
  %key22 = getelementptr inbounds %struct.flow_match, ptr %8, i32 0, i32 2
  %15 = ptrtoint ptr %key22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %key22, align 8
  %17 = call ptr @memcpy(ptr %key, ptr %16, i32 112)
  %18 = ptrtoint ptr %rule4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rule4, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i210, ptr %19, align 8
  %21 = load ptr, ptr %rule4, align 4
  %mask30 = getelementptr inbounds %struct.flow_match, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %mask30 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %mask, ptr %mask30, align 4
  br label %if.end53

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rule, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %27 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %call3, align 8
  %28 = load ptr, ptr %rule, align 8
  %mask43 = getelementptr inbounds %struct.flow_match, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %mask43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mask43, align 4
  %31 = ptrtoint ptr %rule4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rule4, align 4
  %mask46 = getelementptr inbounds %struct.flow_match, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %mask46 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %mask46, align 4
  %34 = load ptr, ptr %rule, align 8
  %key49 = getelementptr inbounds %struct.flow_match, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %key49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %key49, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.end14
  %.sink = phi ptr [ %36, %if.else ], [ %key, %if.end14 ]
  %nft_match.0 = phi ptr [ null, %if.else ], [ %call7.i.i210, %if.end14 ]
  %37 = ptrtoint ptr %rule4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rule4, align 4
  %key52 = getelementptr inbounds %struct.flow_match, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %key52 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %.sink, ptr %key52, align 8
  %zt54 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %call7.i.i, i32 0, i32 5
  %40 = ptrtoint ptr %zt54 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %zt, ptr %zt54, align 8
  %netdev55 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %call7.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %netdev55 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %netdev, ptr %netdev55, align 4
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %flow, i32 0, i32 2
  %42 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cookie, align 4
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %call7.i.i, align 8
  %45 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flow, align 8
  %chain_index57 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %call7.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %chain_index57 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %chain_index57, align 4
  %tun_offset = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %call7.i.i, i32 0, i32 9
  %48 = ptrtoint ptr %tun_offset to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %tun_offset, align 8
  %49 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rule, align 8
  %action59 = getelementptr inbounds %struct.flow_rule, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %action59 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %action59, align 8
  %53 = load ptr, ptr %rule4, align 4
  %action62 = getelementptr inbounds %struct.flow_rule, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %action62 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %52, ptr %action62, align 8
  %55 = load ptr, ptr %rule, align 8
  %action67218 = getelementptr inbounds %struct.flow_rule, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %action67218 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %action67218, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp219.not = icmp eq i32 %57, 0
  br i1 %cmp219.not, label %if.end53.for.end_crit_edge, label %for.body.preheader

if.end53.for.end_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.preheader:                               ; preds = %if.end53
  %entries = getelementptr inbounds %struct.flow_rule, ptr %55, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0221 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %act.0220 = phi ptr [ %arrayidx89, %for.inc.for.body_crit_edge ], [ %entries, %for.body.preheader ]
  %58 = ptrtoint ptr %rule4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rule4, align 4
  %entries71 = getelementptr inbounds %struct.flow_rule, ptr %59, i32 1
  %arrayidx72 = getelementptr [0 x %struct.flow_action_entry], ptr %entries71, i32 0, i32 %i.0221
  %60 = call ptr @memcpy(ptr %arrayidx72, ptr %act.0220, i32 72)
  %61 = ptrtoint ptr %act.0220 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %act.0220, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %62)
  %cmp73 = icmp eq i32 %62, 11
  br i1 %cmp73, label %if.then74, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then74:                                        ; preds = %for.body
  %63 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0220, i32 0, i32 5
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  %options_len = getelementptr inbounds %struct.ip_tunnel_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %options_len to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %options_len, align 8
  %conv = zext i8 %67 to i32
  %add = add nuw nsw i32 %conv, 72
  %call75 = tail call ptr @kmemdup(ptr noundef %65, i32 noundef %add, i32 noundef 2592) #12
  %68 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx72, i32 0, i32 5
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call75, ptr %68, align 8
  %tobool76.not = icmp eq ptr %call75, null
  br i1 %tobool76.not, label %if.then74.err_pre_ct_tun_cp_crit_edge, label %cleanup

if.then74.err_pre_ct_tun_cp_crit_edge:            ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_pre_ct_tun_cp

cleanup:                                          ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  %conv79 = trunc i32 %i.0221 to i8
  %70 = ptrtoint ptr %tun_offset to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv79, ptr %tun_offset, align 8
  br label %for.inc

for.inc:                                          ; preds = %cleanup, %for.body.for.inc_crit_edge
  %71 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rule, align 8
  %entries88 = getelementptr inbounds %struct.flow_rule, ptr %72, i32 1
  %inc = add nuw i32 %i.0221, 1
  %arrayidx89 = getelementptr [0 x %struct.flow_action_entry], ptr %entries88, i32 0, i32 %inc
  %action67 = getelementptr inbounds %struct.flow_rule, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %action67 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %action67, align 8
  %cmp = icmp ult i32 %inc, %74
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end53.for.end_crit_edge
  %children = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %call7.i.i, i32 0, i32 6
  %75 = ptrtoint ptr %children to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %children, ptr %children, align 4
  %prev.i = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %call7.i.i, i32 0, i32 6, i32 1
  %76 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %children, ptr %prev.i, align 8
  %priv = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt, i32 0, i32 2
  %77 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %priv, align 4
  %ct_map_table = getelementptr inbounds %struct.nfp_flower_priv, ptr %78, i32 0, i32 34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfp_ct_map_params to i32))
  %.unpack = load i32, ptr @nfp_ct_map_params, align 4
  %79 = insertvalue [7 x i32] undef, i32 %.unpack, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 2) to i32))
  %.unpack197 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 2), align 4
  %80 = insertvalue [7 x i32] %79, i32 %.unpack197, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 4) to i32))
  %.unpack198 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 4), align 4
  %81 = insertvalue [7 x i32] %80, i32 %.unpack198, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 5) to i32))
  %.unpack199 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 5), align 4
  %82 = insertvalue [7 x i32] %81, i32 %.unpack199, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 7) to i32))
  %.unpack200 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 7), align 4
  %83 = insertvalue [7 x i32] %82, i32 %.unpack200, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 8) to i32))
  %.unpack201 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 8), align 4
  %84 = insertvalue [7 x i32] %83, i32 %.unpack201, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 9) to i32))
  %.unpack202 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 9), align 4
  %85 = insertvalue [7 x i32] %84, i32 %.unpack202, 6
  %call.i = tail call fastcc ptr @rhashtable_lookup_fast(ptr noundef %ct_map_table, ptr noundef %cookie, [7 x i32] %85) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %for.end.get_hashentry.exit_crit_edge

for.end.get_hashentry.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_hashentry.exit

if.end.i:                                         ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %86 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %86, i32 noundef 3520, i32 noundef 12) #15
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.do.body_crit_edge, label %if.end.i.get_hashentry.exit_crit_edge

if.end.i.get_hashentry.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_hashentry.exit

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

get_hashentry.exit:                               ; preds = %if.end.i.get_hashentry.exit_crit_edge, %for.end.get_hashentry.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i, %for.end.get_hashentry.exit_crit_edge ], [ %call7.i.i.i, %if.end.i.get_hashentry.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %get_hashentry.exit.do.body_crit_edge, label %if.end97

get_hashentry.exit.do.body_crit_edge:             ; preds = %get_hashentry.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %get_hashentry.exit.do.body_crit_edge, %if.end.i.do.body_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_ct_add_flow.__msg) #12
  %tobool94.not = icmp eq ptr %extack, null
  br i1 %tobool94.not, label %do.body.err_ct_flow_insert_crit_edge, label %if.then95

do.body.err_ct_flow_insert_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_ct_flow_insert

if.then95:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @nfp_fl_ct_add_flow.__msg, ptr %extack, align 4
  br label %err_ct_flow_insert

if.end97:                                         ; preds = %get_hashentry.exit
  %88 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cookie, align 4
  %90 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %retval.0.i, align 4
  %ct_entry = getelementptr inbounds %struct.nfp_fl_ct_map_entry, ptr %retval.0.i, i32 0, i32 2
  %91 = ptrtoint ptr %ct_entry to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call7.i.i, ptr %ct_entry, align 4
  %92 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %priv, align 4
  %ct_map_table101 = getelementptr inbounds %struct.nfp_flower_priv, ptr %93, i32 0, i32 34
  %hash_node = getelementptr inbounds %struct.nfp_fl_ct_map_entry, ptr %retval.0.i, i32 0, i32 1
  %call102 = tail call fastcc i32 @rhashtable_insert_fast(ptr noundef %ct_map_table101, ptr noundef %hash_node, [7 x i32] %85)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end97.cleanup127_crit_edge, label %do.body105

if.end97.cleanup127_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup127

do.body105:                                       ; preds = %if.end97
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_ct_add_flow.__msg.16) #12
  %tobool107.not = icmp eq ptr %extack, null
  br i1 %tobool107.not, label %do.body105.if.end110_crit_edge, label %if.then108

do.body105.if.end110_crit_edge:                   ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

if.then108:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @nfp_fl_ct_add_flow.__msg.16, ptr %extack, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %do.body105.if.end110_crit_edge
  tail call void @kfree(ptr noundef nonnull %retval.0.i) #12
  br label %err_ct_flow_insert

err_ct_flow_insert:                               ; preds = %if.end110, %if.then95, %do.body.err_ct_flow_insert_crit_edge
  %err.4 = phi i32 [ %call102, %if.end110 ], [ -12, %if.then95 ], [ -12, %do.body.err_ct_flow_insert_crit_edge ]
  %95 = ptrtoint ptr %tun_offset to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %tun_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %96)
  %cmp116.not = icmp eq i8 %96, -1
  br i1 %cmp116.not, label %err_ct_flow_insert.err_pre_ct_tun_cp_crit_edge, label %if.then118

err_ct_flow_insert.err_pre_ct_tun_cp_crit_edge:   ; preds = %err_ct_flow_insert
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_pre_ct_tun_cp

if.then118:                                       ; preds = %err_ct_flow_insert
  call void @__sanitizer_cov_trace_pc() #14
  %conv115 = zext i8 %96 to i32
  %97 = ptrtoint ptr %rule4 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rule4, align 4
  %entries121 = getelementptr inbounds %struct.flow_rule, ptr %98, i32 1
  %arrayidx123 = getelementptr [0 x %struct.flow_action_entry], ptr %entries121, i32 0, i32 %conv115
  %99 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx123, i32 0, i32 5
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 8
  tail call void @kfree(ptr noundef %101) #12
  br label %err_pre_ct_tun_cp

err_pre_ct_tun_cp:                                ; preds = %if.then118, %err_ct_flow_insert.err_pre_ct_tun_cp_crit_edge, %if.then74.err_pre_ct_tun_cp_crit_edge
  %err.5 = phi i32 [ %err.4, %if.then118 ], [ %err.4, %err_ct_flow_insert.err_pre_ct_tun_cp_crit_edge ], [ -12, %if.then74.err_pre_ct_tun_cp_crit_edge ]
  tail call void @kfree(ptr noundef %nft_match.0) #12
  br label %err_pre_ct_act

err_pre_ct_act:                                   ; preds = %err_pre_ct_tun_cp, %if.then10.err_pre_ct_act_crit_edge
  %err.6 = phi i32 [ %err.5, %err_pre_ct_tun_cp ], [ -12, %if.then10.err_pre_ct_act_crit_edge ]
  %102 = ptrtoint ptr %rule4 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rule4, align 4
  tail call void @kfree(ptr noundef %103) #12
  br label %err_pre_ct_rule

err_pre_ct_rule:                                  ; preds = %err_pre_ct_act, %if.end.err_pre_ct_rule_crit_edge
  %err.7 = phi i32 [ %err.6, %err_pre_ct_act ], [ -12, %if.end.err_pre_ct_rule_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  %104 = inttoptr i32 %err.7 to ptr
  br label %cleanup127

cleanup127:                                       ; preds = %err_pre_ct_rule, %if.end97.cleanup127_crit_edge, %entry.cleanup127_crit_edge
  %retval.0 = phi ptr [ %104, %err_pre_ct_rule ], [ %call7.i.i, %if.end97.cleanup127_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup127_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_ct_merge_tc_entries(ptr noundef %ct_entry1, ptr noundef readonly %zt_src, ptr noundef %zt_dst) unnamed_addr #2 align 64 {
entry:
  %new_cookie.i = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %ct_entry1, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 2, label %if.then3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %post_ct_list = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt_src, i32 0, i32 6
  br label %if.end5

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pre_ct_list = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt_src, i32 0, i32 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then
  %ct_list.0 = phi ptr [ %post_ct_list, %if.then ], [ %pre_ct_list, %if.then3 ]
  %3 = ptrtoint ptr %ct_list.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ct_list.0, align 4
  %cmp11.not27 = icmp eq ptr %4, %ct_list.0
  br i1 %cmp11.not27, label %if.end5.cleanup_crit_edge, label %for.body.lr.ph

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end5
  %5 = getelementptr inbounds [2 x i32], ptr %new_cookie.i, i32 0, i32 1
  %tc_merge_tb.i = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt_dst, i32 0, i32 8
  %tc_merge_count.i = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt_dst, i32 0, i32 9
  %nft_flows_list.i = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt_dst, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %nfp_ct_do_tc_merge.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in28 = phi ptr [ %4, %for.body.lr.ph ], [ %.pn, %nfp_ct_do_tc_merge.exit.for.body_crit_edge ]
  %ct_entry2.0 = getelementptr i8, ptr %.pn.in28, i32 -4
  %6 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in28, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_cookie.i) #12
  %type.i = getelementptr i8, ptr %.pn.in28, i32 12
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  %ct_entry1.ct_entry2.i = select i1 %cmp.i, ptr %ct_entry2.0, ptr %ct_entry1
  %ct_entry2.ct_entry1.i = select i1 %cmp.i, ptr %ct_entry1, ptr %ct_entry2.0
  %netdev.i = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %ct_entry2.ct_entry1.i, i32 0, i32 4
  %9 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev.i, align 4
  %netdev1.i = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %ct_entry1.ct_entry2.i, i32 0, i32 4
  %11 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev1.i, align 4
  %cmp2.not.i = icmp eq ptr %10, %12
  br i1 %cmp2.not.i, label %if.end4.i, label %for.body.nfp_ct_do_tc_merge.exit_crit_edge

for.body.nfp_ct_do_tc_merge.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_ct_do_tc_merge.exit

if.end4.i:                                        ; preds = %for.body
  %chain_index.i = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %ct_entry2.ct_entry1.i, i32 0, i32 2
  %13 = ptrtoint ptr %chain_index.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chain_index.i, align 4
  %chain_index5.i = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %ct_entry1.ct_entry2.i, i32 0, i32 2
  %15 = ptrtoint ptr %chain_index5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chain_index5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp6.not.i = icmp eq i32 %14, %16
  br i1 %cmp6.not.i, label %if.end8.i, label %if.end4.i.nfp_ct_do_tc_merge.exit_crit_edge

if.end4.i.nfp_ct_do_tc_merge.exit_crit_edge:      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_ct_do_tc_merge.exit

if.end8.i:                                        ; preds = %if.end4.i
  %call.i = call fastcc i32 @nfp_ct_merge_check(ptr noundef %ct_entry2.ct_entry1.i, ptr noundef %ct_entry1.ct_entry2.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end10.i, label %if.end8.i.nfp_ct_do_tc_merge.exit_crit_edge

if.end8.i.nfp_ct_do_tc_merge.exit_crit_edge:      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_ct_do_tc_merge.exit

if.end10.i:                                       ; preds = %if.end8.i
  %17 = ptrtoint ptr %ct_entry1.ct_entry2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ct_entry1.ct_entry2.i, align 8
  %19 = ptrtoint ptr %new_cookie.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %new_cookie.i, align 8
  %20 = ptrtoint ptr %ct_entry2.ct_entry1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ct_entry2.ct_entry1.i, align 8
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %5, align 4
  %call.i.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %tc_merge_tb.i, ptr noundef nonnull %new_cookie.i, [7 x i32] [i32 8, i32 8, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end10.i.get_hashentry.exit.i_crit_edge

if.end10.i.get_hashentry.exit.i_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_hashentry.exit.i

if.end.i.i:                                       ; preds = %if.end10.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 48) #15
  %tobool2.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.nfp_ct_do_tc_merge.exit_crit_edge, label %if.end.i.i.get_hashentry.exit.i_crit_edge

if.end.i.i.get_hashentry.exit.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_hashentry.exit.i

if.end.i.i.nfp_ct_do_tc_merge.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_ct_do_tc_merge.exit

get_hashentry.exit.i:                             ; preds = %if.end.i.i.get_hashentry.exit.i_crit_edge, %if.end10.i.get_hashentry.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i, %if.end10.i.get_hashentry.exit.i_crit_edge ], [ %call7.i.i.i.i, %if.end.i.i.get_hashentry.exit.i_crit_edge ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %get_hashentry.exit.i.nfp_ct_do_tc_merge.exit_crit_edge, label %if.end17.i

get_hashentry.exit.i.nfp_ct_do_tc_merge.exit_crit_edge: ; preds = %get_hashentry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_ct_do_tc_merge.exit

if.end17.i:                                       ; preds = %get_hashentry.exit.i
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %new_cookie.i, ptr noundef nonnull dereferenceable(8) %retval.0.i.i, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool20.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool20.not.i, label %if.end17.i.nfp_ct_do_tc_merge.exit_crit_edge, label %if.end22.i

if.end17.i.nfp_ct_do_tc_merge.exit_crit_edge:     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_ct_do_tc_merge.exit

if.end22.i:                                       ; preds = %if.end17.i
  %24 = ptrtoint ptr %new_cookie.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %new_cookie.i, align 8
  %26 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %retval.0.i.i, align 4
  %zt24.i = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %retval.0.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %zt24.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %zt_dst, ptr %zt24.i, align 4
  %post_ct_parent.i = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %retval.0.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %post_ct_parent.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %ct_entry2.ct_entry1.i, ptr %post_ct_parent.i, align 4
  %pre_ct_parent.i = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %retval.0.i.i, i32 0, i32 5
  %29 = ptrtoint ptr %pre_ct_parent.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %ct_entry1.ct_entry2.i, ptr %pre_ct_parent.i, align 4
  %post_ct_list.i = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %retval.0.i.i, i32 0, i32 3
  %children.i = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %ct_entry2.ct_entry1.i, i32 0, i32 6
  %30 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %children.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %post_ct_list.i, ptr noundef %children.i, ptr noundef %31) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end22.i.list_add.exit.i_crit_edge

if.end22.i.list_add.exit.i_crit_edge:             ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %post_ct_list.i, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %post_ct_list.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %post_ct_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %retval.0.i.i, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %children.i, ptr %prev3.i.i.i, align 4
  %35 = ptrtoint ptr %children.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %post_ct_list.i, ptr %children.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end22.i.list_add.exit.i_crit_edge
  %pre_ct_list.i = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %retval.0.i.i, i32 0, i32 2
  %children25.i = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %ct_entry1.ct_entry2.i, i32 0, i32 6
  %36 = ptrtoint ptr %children25.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %children25.i, align 4
  %call.i.i14.i = call zeroext i1 @__list_add_valid(ptr noundef %pre_ct_list.i, ptr noundef %children25.i, ptr noundef %37) #12
  br i1 %call.i.i14.i, label %if.end.i.i17.i, label %list_add.exit.i.list_add.exit18.i_crit_edge

list_add.exit.i.list_add.exit18.i_crit_edge:      ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit18.i

if.end.i.i17.i:                                   ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i15.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i15.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %pre_ct_list.i, ptr %prev1.i.i15.i, align 4
  %39 = ptrtoint ptr %pre_ct_list.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %37, ptr %pre_ct_list.i, align 4
  %prev3.i.i16.i = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %retval.0.i.i, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %prev3.i.i16.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %children25.i, ptr %prev3.i.i16.i, align 4
  %41 = ptrtoint ptr %children25.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %pre_ct_list.i, ptr %children25.i, align 4
  br label %list_add.exit18.i

list_add.exit18.i:                                ; preds = %if.end.i.i17.i, %list_add.exit.i.list_add.exit18.i_crit_edge
  %children26.i = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %retval.0.i.i, i32 0, i32 7
  %42 = ptrtoint ptr %children26.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %children26.i, ptr %children26.i, align 4
  %prev.i.i = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %retval.0.i.i, i32 0, i32 7, i32 1
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %children26.i, ptr %prev.i.i, align 4
  %hash_node.i = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %retval.0.i.i, i32 0, i32 1
  %call28.i = call fastcc i32 @rhashtable_insert_fast(ptr noundef %tc_merge_tb.i, ptr noundef %hash_node.i, [7 x i32] [i32 8, i32 8, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %err_ct_tc_merge_insert.i

if.end31.i:                                       ; preds = %list_add.exit18.i
  %44 = ptrtoint ptr %tc_merge_count.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tc_merge_count.i, align 4
  %inc.i = add i32 %45, 1
  store i32 %inc.i, ptr %tc_merge_count.i, align 4
  %46 = ptrtoint ptr %nft_flows_list.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %nft_flows_list.i, align 4
  %cmp38.not30.i = icmp eq ptr %47, %nft_flows_list.i
  br i1 %cmp38.not30.i, label %if.end31.i.nfp_ct_do_tc_merge.exit_crit_edge, label %if.end31.i.for.body.i_crit_edge

if.end31.i.for.body.i_crit_edge:                  ; preds = %if.end31.i
  br label %for.body.i

if.end31.i.nfp_ct_do_tc_merge.exit_crit_edge:     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_ct_do_tc_merge.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end31.i.for.body.i_crit_edge
  %.pn.in31.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %47, %if.end31.i.for.body.i_crit_edge ]
  %nft_entry.0.i = getelementptr i8, ptr %.pn.in31.i, i32 -4
  %48 = ptrtoint ptr %.pn.in31.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn.i = load ptr, ptr %.pn.in31.i, align 4
  call fastcc void @nfp_ct_do_nft_merge(ptr noundef %zt_dst, ptr noundef %nft_entry.0.i, ptr noundef %retval.0.i.i) #12
  %cmp38.not.i = icmp eq ptr %.pn.i, %nft_flows_list.i
  br i1 %cmp38.not.i, label %for.body.i.nfp_ct_do_tc_merge.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.nfp_ct_do_tc_merge.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_ct_do_tc_merge.exit

err_ct_tc_merge_insert.i:                         ; preds = %list_add.exit18.i
  %call.i.i19.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %post_ct_list.i) #12
  br i1 %call.i.i19.i, label %if.end.i.i20.i, label %err_ct_tc_merge_insert.i.list_del.exit.i_crit_edge

err_ct_tc_merge_insert.i.list_del.exit.i_crit_edge: ; preds = %err_ct_tc_merge_insert.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i20.i:                                   ; preds = %err_ct_tc_merge_insert.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %retval.0.i.i, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i.i, align 4
  %51 = ptrtoint ptr %post_ct_list.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %post_ct_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i20.i, %err_ct_tc_merge_insert.i.list_del.exit.i_crit_edge
  %55 = ptrtoint ptr %post_ct_list.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 256 to ptr), ptr %post_ct_list.i, align 4
  %prev.i21.i = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %retval.0.i.i, i32 0, i32 3, i32 1
  %56 = ptrtoint ptr %prev.i21.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i21.i, align 4
  %call.i.i22.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %pre_ct_list.i) #12
  br i1 %call.i.i22.i, label %if.end.i.i25.i, label %list_del.exit.i.list_del.exit27.i_crit_edge

list_del.exit.i.list_del.exit27.i_crit_edge:      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit27.i

if.end.i.i25.i:                                   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i23.i = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %retval.0.i.i, i32 0, i32 2, i32 1
  %57 = ptrtoint ptr %prev.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i23.i, align 4
  %59 = ptrtoint ptr %pre_ct_list.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pre_ct_list.i, align 4
  %prev1.i.i.i24.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i24.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %list_del.exit27.i

list_del.exit27.i:                                ; preds = %if.end.i.i25.i, %list_del.exit.i.list_del.exit27.i_crit_edge
  %63 = ptrtoint ptr %pre_ct_list.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 256 to ptr), ptr %pre_ct_list.i, align 4
  %prev.i26.i = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %retval.0.i.i, i32 0, i32 2, i32 1
  %64 = ptrtoint ptr %prev.i26.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i26.i, align 4
  call void @kfree(ptr noundef nonnull %retval.0.i.i) #12
  br label %nfp_ct_do_tc_merge.exit

nfp_ct_do_tc_merge.exit:                          ; preds = %list_del.exit27.i, %for.body.i.nfp_ct_do_tc_merge.exit_crit_edge, %if.end31.i.nfp_ct_do_tc_merge.exit_crit_edge, %if.end17.i.nfp_ct_do_tc_merge.exit_crit_edge, %get_hashentry.exit.i.nfp_ct_do_tc_merge.exit_crit_edge, %if.end.i.i.nfp_ct_do_tc_merge.exit_crit_edge, %if.end8.i.nfp_ct_do_tc_merge.exit_crit_edge, %if.end4.i.nfp_ct_do_tc_merge.exit_crit_edge, %for.body.nfp_ct_do_tc_merge.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_cookie.i) #12
  %cmp11.not = icmp eq ptr %.pn, %ct_list.0
  br i1 %cmp11.not, label %nfp_ct_do_tc_merge.exit.cleanup_crit_edge, label %nfp_ct_do_tc_merge.exit.for.body_crit_edge

nfp_ct_do_tc_merge.exit.for.body_crit_edge:       ; preds = %nfp_ct_do_tc_merge.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

nfp_ct_do_tc_merge.exit.cleanup_crit_edge:        ; preds = %nfp_ct_do_tc_merge.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %nfp_ct_do_tc_merge.exit.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_fl_ct_handle_post_ct(ptr noundef %priv, ptr noundef %netdev, ptr noundef %flow, ptr noundef %extack) local_unnamed_addr #2 align 64 {
entry:
  %ct = alloca %struct.flow_match_ct, align 4
  %iter = alloca %struct.rhashtable_iter, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rule.i = getelementptr inbounds %struct.flow_cls_offload, ptr %flow, i32 0, i32 3
  %0 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ct) #12
  %2 = ptrtoint ptr %ct to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %ct, align 4, !annotation !85
  %3 = getelementptr inbounds %struct.flow_match_ct, ptr %ct, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !85
  call void @flow_rule_match_ct(ptr noundef %1, ptr noundef nonnull %ct) #12
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %ct_zone = getelementptr inbounds %struct.flow_dissector_key_ct, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %ct_zone to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ct_zone, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %8, label %do.body [
    i16 -1, label %entry.if.end8_crit_edge
    i16 0, label %entry.if.end8_crit_edge72
  ]

entry.if.end8_crit_edge72:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

do.body:                                          ; preds = %entry
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_ct_handle_post_ct.__msg) #12
  %tobool5.not = icmp eq ptr %extack, null
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %if.then6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @nfp_fl_ct_handle_post_ct.__msg, ptr %extack, align 4
  br label %cleanup

if.end8:                                          ; preds = %entry.if.end8_crit_edge, %entry.if.end8_crit_edge72
  %11 = ptrtoint ptr %ct to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ct, align 4
  %ct_zone9 = getelementptr inbounds %struct.flow_dissector_key_ct, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ct_zone9 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ct_zone9, align 2
  %call11 = call fastcc ptr @get_nfp_zone_entry(ptr noundef %priv, i16 noundef zeroext %14, i1 noundef zeroext %tobool.not)
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body14, label %if.end23

do.body14:                                        ; preds = %if.end8
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_ct_handle_post_ct.__msg.4) #12
  %tobool16.not = icmp eq ptr %extack, null
  br i1 %tobool16.not, label %do.body14.if.end19_crit_edge, label %if.then17

do.body14.if.end19_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then17:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @nfp_fl_ct_handle_post_ct.__msg.4, ptr %extack, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %do.body14.if.end19_crit_edge
  %16 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end8
  %call24 = call fastcc ptr @nfp_fl_ct_add_flow(ptr noundef %call11, ptr noundef %netdev, ptr noundef %flow, i1 noundef zeroext false, ptr noundef %extack)
  %cmp.i66 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %type = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %call24, i32 0, i32 3
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %type, align 8
  %19 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flow, align 8
  %chain_index29 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %call24, i32 0, i32 2
  %21 = ptrtoint ptr %chain_index29 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %chain_index29, align 4
  %list_node = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %call24, i32 0, i32 1
  %post_ct_list = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %call11, i32 0, i32 6
  %22 = ptrtoint ptr %post_ct_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %post_ct_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list_node, ptr noundef %post_ct_list, ptr noundef %23) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end28.list_add.exit_crit_edge

if.end28.list_add.exit_crit_edge:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %list_node, ptr %prev1.i.i, align 4
  %25 = ptrtoint ptr %list_node to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %list_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %call24, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %post_ct_list, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %post_ct_list to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %list_node, ptr %post_ct_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end28.list_add.exit_crit_edge
  %post_ct_count = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %call11, i32 0, i32 7
  %28 = ptrtoint ptr %post_ct_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %post_ct_count, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %post_ct_count, align 4
  br i1 %tobool.not, label %if.then31, label %if.else38

if.then31:                                        ; preds = %list_add.exit
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %iter) #12
  %30 = call ptr @memset(ptr %iter, i32 255, i32 36)
  %ct_zone_table = getelementptr inbounds %struct.nfp_flower_priv, ptr %priv, i32 0, i32 32
  call void @rhashtable_walk_enter(ptr noundef %ct_zone_table, ptr noundef nonnull %iter) #12
  %call.i = call i32 @rhashtable_walk_start_check(ptr noundef nonnull %iter) #12
  %call3269 = call ptr @rhashtable_walk_next(ptr noundef nonnull %iter) #12
  %cmp33.not70 = icmp eq ptr %call3269, null
  br i1 %cmp33.not70, label %if.then31.while.end_crit_edge, label %if.then31.while.body_crit_edge

if.then31.while.body_crit_edge:                   ; preds = %if.then31
  br label %while.body

if.then31.while.end_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %if.then31.while.body_crit_edge
  %call3271 = phi ptr [ %call32, %while.cond.backedge.while.body_crit_edge ], [ %call3269, %if.then31.while.body_crit_edge ]
  %cmp.i67 = icmp ugt ptr %call3271, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67, label %while.body.while.cond.backedge_crit_edge, label %if.end37

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.end37:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @rhashtable_walk_stop(ptr noundef nonnull %iter) #12
  call fastcc void @nfp_ct_merge_tc_entries(ptr noundef %call24, ptr noundef nonnull %call3271, ptr noundef nonnull %call3271)
  %call.i68 = call i32 @rhashtable_walk_start_check(ptr noundef nonnull %iter) #12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end37, %while.body.while.cond.backedge_crit_edge
  %call32 = call ptr @rhashtable_walk_next(ptr noundef nonnull %iter) #12
  %cmp33.not = icmp eq ptr %call32, null
  br i1 %cmp33.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %if.then31.while.end_crit_edge
  call void @rhashtable_walk_stop(ptr noundef nonnull %iter) #12
  call void @rhashtable_walk_exit(ptr noundef nonnull %iter) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %iter) #12
  br label %cleanup

if.else38:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @nfp_ct_merge_tc_entries(ptr noundef %call24, ptr noundef %call11, ptr noundef %call11)
  br label %cleanup

cleanup:                                          ; preds = %if.else38, %while.end, %if.then26, %if.end19, %if.then6, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.end19 ], [ %17, %if.then26 ], [ -95, %if.then6 ], [ -95, %do.body.cleanup_crit_edge ], [ 0, %if.else38 ], [ 0, %while.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ct) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_enter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_walk_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_fl_ct_stats(ptr nocapture noundef %flow, ptr nocapture noundef readonly %ct_map_ent) local_unnamed_addr #2 align 64 {
entry:
  %pkts = alloca i64, align 8
  %bytes = alloca i64, align 8
  %used = alloca i64, align 8
  %m_pkts = alloca i64, align 8
  %m_bytes = alloca i64, align 8
  %m_used = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ct_entry1 = getelementptr inbounds %struct.nfp_fl_ct_map_entry, ptr %ct_map_ent, i32 0, i32 2
  %0 = ptrtoint ptr %ct_entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ct_entry1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pkts) #12
  %2 = ptrtoint ptr %pkts to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %pkts, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes) #12
  %3 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %bytes, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %used) #12
  %4 = ptrtoint ptr %used to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %used, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m_pkts) #12
  %5 = ptrtoint ptr %m_pkts to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %m_pkts, align 8, !annotation !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m_bytes) #12
  %6 = ptrtoint ptr %m_bytes to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %m_bytes, align 8, !annotation !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m_used) #12
  %7 = ptrtoint ptr %m_used to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %m_used, align 8, !annotation !85
  %zt = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %zt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %zt, align 8
  %priv = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %stats_lock = getelementptr inbounds %struct.nfp_flower_priv, ptr %11, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %stats_lock) #12
  %type = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %13, label %if.else96 [
    i32 0, label %if.then
    i32 2, label %if.then41
  ]

if.then:                                          ; preds = %entry
  %children = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %children, align 4
  %cmp8.not224 = icmp eq ptr %16, %children
  br i1 %cmp8.not224, label %if.then.if.end119_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end119_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

for.body:                                         ; preds = %for.end.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn184.in225 = phi ptr [ %.pn184226, %for.end.for.body_crit_edge ], [ %16, %if.then.for.body_crit_edge ]
  %17 = ptrtoint ptr %.pn184.in225 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn184226 = load ptr, ptr %.pn184.in225, align 4
  %18 = ptrtoint ptr %m_pkts to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %m_pkts, align 8
  %19 = ptrtoint ptr %m_bytes to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %m_bytes, align 8
  %20 = ptrtoint ptr %m_used to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %m_used, align 8
  %children10 = getelementptr i8, ptr %.pn184.in225, i32 28
  %21 = ptrtoint ptr %children10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %children10, align 4
  %cmp21.not221 = icmp eq ptr %22, %children10
  br i1 %cmp21.not221, label %for.body.for.end_crit_edge, label %for.body.for.body23_crit_edge

for.body.for.body23_crit_edge:                    ; preds = %for.body
  br label %for.body23

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %for.body.for.body23_crit_edge
  %.pn185.in222 = phi ptr [ %.pn185, %for.body23.for.body23_crit_edge ], [ %22, %for.body.for.body23_crit_edge ]
  %nft_merge.0 = getelementptr i8, ptr %.pn185.in222, i32 -32
  %23 = ptrtoint ptr %.pn185.in222 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn185 = load ptr, ptr %.pn185.in222, align 4
  call fastcc void @nfp_fl_ct_sub_stats(ptr noundef %nft_merge.0, i32 noundef 0, ptr noundef nonnull %m_pkts, ptr noundef nonnull %m_bytes, ptr noundef nonnull %m_used)
  %cmp21.not = icmp eq ptr %.pn185, %children10
  br i1 %cmp21.not, label %for.body23.for.end_crit_edge, label %for.body23.for.body23_crit_edge

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body23

for.body23.for.end_crit_edge:                     ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body23.for.end_crit_edge, %for.body.for.end_crit_edge
  %24 = ptrtoint ptr %m_pkts to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %m_pkts, align 8
  %26 = ptrtoint ptr %pkts to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pkts, align 8
  %add = add i64 %27, %25
  store i64 %add, ptr %pkts, align 8
  %28 = ptrtoint ptr %m_bytes to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %m_bytes, align 8
  %30 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %bytes, align 8
  %add29 = add i64 %31, %29
  store i64 %add29, ptr %bytes, align 8
  %32 = ptrtoint ptr %used to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %used, align 8
  %34 = ptrtoint ptr %m_used to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %m_used, align 8
  %36 = tail call i64 @llvm.umax.i64(i64 %33, i64 %35)
  %37 = ptrtoint ptr %used to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %used, align 8
  %post_ct_parent = getelementptr i8, ptr %.pn184.in225, i32 24
  %38 = ptrtoint ptr %post_ct_parent to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %post_ct_parent, align 4
  %stats = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %stats, align 8
  %add.i = add i64 %41, %25
  store i64 %add.i, ptr %stats, align 8
  %bytes2.i = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %39, i32 0, i32 8, i32 1
  %42 = ptrtoint ptr %bytes2.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %bytes2.i, align 8
  %add3.i = add i64 %43, %29
  store i64 %add3.i, ptr %bytes2.i, align 8
  %lastused6.i = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %39, i32 0, i32 8, i32 3
  %44 = ptrtoint ptr %lastused6.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %lastused6.i, align 8
  %46 = tail call i64 @llvm.umax.i64(i64 %45, i64 %35) #12
  %47 = ptrtoint ptr %lastused6.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %lastused6.i, align 8
  %used_hw_stats28.i = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %39, i32 0, i32 8, i32 4
  %48 = ptrtoint ptr %used_hw_stats28.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %used_hw_stats28.i, align 8
  %or.i = or i32 %49, 2
  store i32 %or.i, ptr %used_hw_stats28.i, align 8
  %used_hw_stats_valid.i = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %39, i32 0, i32 8, i32 5
  %50 = ptrtoint ptr %used_hw_stats_valid.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %used_hw_stats_valid.i, align 4
  %cmp8.not = icmp eq ptr %.pn184226, %children
  br i1 %cmp8.not, label %for.end.if.end119_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end.if.end119_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

if.then41:                                        ; preds = %entry
  %children43 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %1, i32 0, i32 6
  %51 = ptrtoint ptr %children43 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %children43, align 4
  %cmp54.not218 = icmp eq ptr %52, %children43
  br i1 %cmp54.not218, label %if.then41.if.end119_crit_edge, label %if.then41.for.body56_crit_edge

if.then41.for.body56_crit_edge:                   ; preds = %if.then41
  br label %for.body56

if.then41.if.end119_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

for.body56:                                       ; preds = %for.end79.for.body56_crit_edge, %if.then41.for.body56_crit_edge
  %.pn182.in219 = phi ptr [ %.pn182220, %for.end79.for.body56_crit_edge ], [ %52, %if.then41.for.body56_crit_edge ]
  %53 = ptrtoint ptr %.pn182.in219 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn182220 = load ptr, ptr %.pn182.in219, align 4
  %54 = ptrtoint ptr %m_pkts to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 0, ptr %m_pkts, align 8
  %55 = ptrtoint ptr %m_bytes to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 0, ptr %m_bytes, align 8
  %56 = ptrtoint ptr %m_used to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 0, ptr %m_used, align 8
  %children58 = getelementptr i8, ptr %.pn182.in219, i32 20
  %57 = ptrtoint ptr %children58 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %children58, align 4
  %cmp70.not215 = icmp eq ptr %58, %children58
  br i1 %cmp70.not215, label %for.body56.for.end79_crit_edge, label %for.body56.for.body72_crit_edge

for.body56.for.body72_crit_edge:                  ; preds = %for.body56
  br label %for.body72

for.body56.for.end79_crit_edge:                   ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end79

for.body72:                                       ; preds = %for.body72.for.body72_crit_edge, %for.body56.for.body72_crit_edge
  %.pn183.in216 = phi ptr [ %.pn183, %for.body72.for.body72_crit_edge ], [ %58, %for.body56.for.body72_crit_edge ]
  %nft_merge.1 = getelementptr i8, ptr %.pn183.in216, i32 -32
  %59 = ptrtoint ptr %.pn183.in216 to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn183 = load ptr, ptr %.pn183.in216, align 4
  call fastcc void @nfp_fl_ct_sub_stats(ptr noundef %nft_merge.1, i32 noundef 2, ptr noundef nonnull %m_pkts, ptr noundef nonnull %m_bytes, ptr noundef nonnull %m_used)
  %cmp70.not = icmp eq ptr %.pn183, %children58
  br i1 %cmp70.not, label %for.body72.for.end79_crit_edge, label %for.body72.for.body72_crit_edge

for.body72.for.body72_crit_edge:                  ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body72

for.body72.for.end79_crit_edge:                   ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end79

for.end79:                                        ; preds = %for.body72.for.end79_crit_edge, %for.body56.for.end79_crit_edge
  %60 = ptrtoint ptr %m_pkts to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %m_pkts, align 8
  %62 = ptrtoint ptr %pkts to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %pkts, align 8
  %add80 = add i64 %63, %61
  store i64 %add80, ptr %pkts, align 8
  %64 = ptrtoint ptr %m_bytes to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %m_bytes, align 8
  %66 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %bytes, align 8
  %add81 = add i64 %67, %65
  store i64 %add81, ptr %bytes, align 8
  %68 = ptrtoint ptr %used to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %used, align 8
  %70 = ptrtoint ptr %m_used to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %m_used, align 8
  %72 = tail call i64 @llvm.umax.i64(i64 %69, i64 %71)
  %73 = ptrtoint ptr %used to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %used, align 8
  %pre_ct_parent = getelementptr i8, ptr %.pn182.in219, i32 12
  %74 = ptrtoint ptr %pre_ct_parent to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pre_ct_parent, align 4
  %stats88 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %75, i32 0, i32 8
  %76 = ptrtoint ptr %stats88 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %stats88, align 8
  %add.i192 = add i64 %77, %61
  store i64 %add.i192, ptr %stats88, align 8
  %bytes2.i193 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %75, i32 0, i32 8, i32 1
  %78 = ptrtoint ptr %bytes2.i193 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %bytes2.i193, align 8
  %add3.i194 = add i64 %79, %65
  store i64 %add3.i194, ptr %bytes2.i193, align 8
  %lastused6.i195 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %75, i32 0, i32 8, i32 3
  %80 = ptrtoint ptr %lastused6.i195 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %lastused6.i195, align 8
  %82 = tail call i64 @llvm.umax.i64(i64 %81, i64 %71) #12
  %83 = ptrtoint ptr %lastused6.i195 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %lastused6.i195, align 8
  %used_hw_stats28.i196 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %75, i32 0, i32 8, i32 4
  %84 = ptrtoint ptr %used_hw_stats28.i196 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %used_hw_stats28.i196, align 8
  %or.i197 = or i32 %85, 2
  store i32 %or.i197, ptr %used_hw_stats28.i196, align 8
  %used_hw_stats_valid.i198 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %75, i32 0, i32 8, i32 5
  %86 = ptrtoint ptr %used_hw_stats_valid.i198 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %used_hw_stats_valid.i198, align 4
  %cmp54.not = icmp eq ptr %.pn182220, %children43
  br i1 %cmp54.not, label %for.end79.if.end119_crit_edge, label %for.end79.for.body56_crit_edge

for.end79.for.body56_crit_edge:                   ; preds = %for.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body56

for.end79.if.end119_crit_edge:                    ; preds = %for.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

if.else96:                                        ; preds = %entry
  %children98 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %1, i32 0, i32 6
  %87 = ptrtoint ptr %children98 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %children98, align 4
  %cmp109.not227 = icmp eq ptr %88, %children98
  br i1 %cmp109.not227, label %if.else96.if.end119_crit_edge, label %if.else96.for.body111_crit_edge

if.else96.for.body111_crit_edge:                  ; preds = %if.else96
  br label %for.body111

if.else96.if.end119_crit_edge:                    ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

for.body111:                                      ; preds = %for.body111.for.body111_crit_edge, %if.else96.for.body111_crit_edge
  %.pn.in228 = phi ptr [ %.pn, %for.body111.for.body111_crit_edge ], [ %88, %if.else96.for.body111_crit_edge ]
  %nft_merge.2 = getelementptr i8, ptr %.pn.in228, i32 -24
  %89 = ptrtoint ptr %.pn.in228 to i32
  call void @__asan_load4_noabort(i32 %89)
  %.pn = load ptr, ptr %.pn.in228, align 4
  call fastcc void @nfp_fl_ct_sub_stats(ptr noundef %nft_merge.2, i32 noundef 1, ptr noundef nonnull %pkts, ptr noundef nonnull %bytes, ptr noundef nonnull %used)
  %cmp109.not = icmp eq ptr %.pn, %children98
  br i1 %cmp109.not, label %for.body111.if.end119_crit_edge, label %for.body111.for.body111_crit_edge

for.body111.for.body111_crit_edge:                ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body111

for.body111.if.end119_crit_edge:                  ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

if.end119:                                        ; preds = %for.body111.if.end119_crit_edge, %if.else96.if.end119_crit_edge, %for.end79.if.end119_crit_edge, %if.then41.if.end119_crit_edge, %for.end.if.end119_crit_edge, %if.then.if.end119_crit_edge
  %stats120 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %1, i32 0, i32 8
  %90 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %bytes, align 8
  %92 = ptrtoint ptr %pkts to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %pkts, align 8
  %94 = ptrtoint ptr %used to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %used, align 8
  %96 = ptrtoint ptr %stats120 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %stats120, align 8
  %add.i199 = add i64 %97, %93
  store i64 %add.i199, ptr %stats120, align 8
  %bytes2.i200 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %1, i32 0, i32 8, i32 1
  %98 = ptrtoint ptr %bytes2.i200 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %bytes2.i200, align 8
  %add3.i201 = add i64 %99, %91
  store i64 %add3.i201, ptr %bytes2.i200, align 8
  %lastused6.i202 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %1, i32 0, i32 8, i32 3
  %100 = ptrtoint ptr %lastused6.i202 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %lastused6.i202, align 8
  %102 = tail call i64 @llvm.umax.i64(i64 %101, i64 %95) #12
  %103 = ptrtoint ptr %lastused6.i202 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %102, ptr %lastused6.i202, align 8
  %used_hw_stats28.i203 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %1, i32 0, i32 8, i32 4
  %104 = ptrtoint ptr %used_hw_stats28.i203 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %used_hw_stats28.i203, align 8
  %or.i204 = or i32 %105, 2
  store i32 %or.i204, ptr %used_hw_stats28.i203, align 8
  %used_hw_stats_valid.i205 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %1, i32 0, i32 8, i32 5
  %106 = ptrtoint ptr %used_hw_stats_valid.i205 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %used_hw_stats_valid.i205, align 4
  %stats121 = getelementptr inbounds %struct.flow_cls_offload, ptr %flow, i32 0, i32 4
  %107 = ptrtoint ptr %stats121 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %stats121, align 8
  %add.i206 = add i64 %108, %add.i199
  store i64 %add.i206, ptr %stats121, align 8
  %bytes2.i207 = getelementptr inbounds %struct.flow_cls_offload, ptr %flow, i32 0, i32 4, i32 1
  %109 = ptrtoint ptr %bytes2.i207 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %bytes2.i207, align 8
  %add3.i208 = add i64 %110, %add3.i201
  store i64 %add3.i208, ptr %bytes2.i207, align 8
  %lastused6.i209 = getelementptr inbounds %struct.flow_cls_offload, ptr %flow, i32 0, i32 4, i32 3
  %111 = ptrtoint ptr %lastused6.i209 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %lastused6.i209, align 8
  %113 = tail call i64 @llvm.umax.i64(i64 %112, i64 %102) #12
  %114 = ptrtoint ptr %lastused6.i209 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %113, ptr %lastused6.i209, align 8
  %used_hw_stats28.i210 = getelementptr inbounds %struct.flow_cls_offload, ptr %flow, i32 0, i32 4, i32 4
  %115 = ptrtoint ptr %used_hw_stats28.i210 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %used_hw_stats28.i210, align 8
  %or.i211 = or i32 %116, 2
  store i32 %or.i211, ptr %used_hw_stats28.i210, align 8
  %used_hw_stats_valid.i212 = getelementptr inbounds %struct.flow_cls_offload, ptr %flow, i32 0, i32 4, i32 5
  %117 = ptrtoint ptr %used_hw_stats_valid.i212 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %used_hw_stats_valid.i212, align 4
  %118 = call ptr @memset(ptr %stats120, i32 0, i32 16)
  %119 = ptrtoint ptr %zt to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %zt, align 8
  %priv132 = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %priv132 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %priv132, align 4
  %stats_lock133 = getelementptr inbounds %struct.nfp_flower_priv, ptr %122, i32 0, i32 12
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats_lock133) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m_used) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m_bytes) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m_pkts) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %used) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pkts) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_fl_ct_sub_stats(ptr nocapture noundef readonly %nft_merge, i32 noundef %type, ptr nocapture noundef %m_pkts, ptr nocapture noundef %m_bytes, ptr nocapture noundef %m_used) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %zt = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %nft_merge, i32 0, i32 3
  %0 = ptrtoint ptr %zt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zt, align 4
  %priv1 = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %flow_pay = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %nft_merge, i32 0, i32 9
  %4 = ptrtoint ptr %flow_pay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flow_pay, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %host_ctx_id = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %host_ctx_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %host_ctx_id, align 4
  %stats = getelementptr inbounds %struct.nfp_flower_priv, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats, align 4
  %arrayidx = getelementptr %struct.nfp_fl_stats, ptr %9, i32 %7
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx, align 8
  %12 = ptrtoint ptr %m_pkts to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %m_pkts, align 8
  %add = add i64 %13, %11
  store i64 %add, ptr %m_pkts, align 8
  %14 = load ptr, ptr %stats, align 4
  %bytes = getelementptr %struct.nfp_fl_stats, ptr %14, i32 %7, i32 1
  %15 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %bytes, align 8
  %17 = ptrtoint ptr %m_bytes to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %m_bytes, align 8
  %add4 = add i64 %18, %16
  store i64 %add4, ptr %m_bytes, align 8
  %19 = ptrtoint ptr %m_used to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %m_used, align 8
  %21 = load ptr, ptr %stats, align 4
  %used = getelementptr %struct.nfp_fl_stats, ptr %21, i32 %7, i32 2
  %22 = ptrtoint ptr %used to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %used, align 8
  %24 = tail call i64 @llvm.umax.i64(i64 %20, i64 %23)
  %25 = ptrtoint ptr %m_used to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %m_used, align 8
  %linked_flows = getelementptr inbounds %struct.nfp_fl_payload, ptr %5, i32 0, i32 10
  %26 = ptrtoint ptr %linked_flows to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %linked_flows, align 4
  %cmp.i.not = icmp eq ptr %27, %linked_flows
  br i1 %cmp.i.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 8
  tail call void @nfp_flower_update_merge_stats(ptr noundef %29, ptr noundef nonnull %5) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp10.not = icmp eq i32 %type, 1
  br i1 %cmp10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %nft_parent = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %nft_merge, i32 0, i32 7
  br label %if.end43

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %tc_m_parent = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %nft_merge, i32 0, i32 6
  %30 = ptrtoint ptr %tc_m_parent to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tc_m_parent, align 4
  %pre_ct_parent = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %pre_ct_parent to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pre_ct_parent, align 4
  %stats22 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stats, align 4
  %arrayidx24 = getelementptr %struct.nfp_fl_stats, ptr %35, i32 %7
  %bytes25 = getelementptr %struct.nfp_fl_stats, ptr %35, i32 %7, i32 1
  %36 = ptrtoint ptr %bytes25 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %bytes25, align 8
  %38 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx24, align 8
  %used31 = getelementptr %struct.nfp_fl_stats, ptr %35, i32 %7, i32 2
  %40 = ptrtoint ptr %used31 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %used31, align 8
  %42 = ptrtoint ptr %stats22 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %stats22, align 8
  %add.i91 = add i64 %43, %39
  store i64 %add.i91, ptr %stats22, align 8
  %bytes2.i92 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %33, i32 0, i32 8, i32 1
  %44 = ptrtoint ptr %bytes2.i92 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %bytes2.i92, align 8
  %add3.i93 = add i64 %45, %37
  store i64 %add3.i93, ptr %bytes2.i92, align 8
  %lastused6.i94 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %33, i32 0, i32 8, i32 3
  %46 = ptrtoint ptr %lastused6.i94 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %lastused6.i94, align 8
  %48 = tail call i64 @llvm.umax.i64(i64 %47, i64 %41) #12
  %49 = ptrtoint ptr %lastused6.i94 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %lastused6.i94, align 8
  %used_hw_stats28.i95 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %33, i32 0, i32 8, i32 4
  %50 = ptrtoint ptr %used_hw_stats28.i95 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %used_hw_stats28.i95, align 8
  %or.i96 = or i32 %51, 2
  store i32 %or.i96, ptr %used_hw_stats28.i95, align 8
  %used_hw_stats_valid.i97 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %33, i32 0, i32 8, i32 5
  %52 = ptrtoint ptr %used_hw_stats_valid.i97 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %used_hw_stats_valid.i97, align 4
  %53 = ptrtoint ptr %tc_m_parent to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tc_m_parent, align 4
  %post_ct_parent = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %54, i32 0, i32 6
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then11
  %post_ct_parent.sink = phi ptr [ %post_ct_parent, %if.else ], [ %nft_parent, %if.then11 ]
  %55 = ptrtoint ptr %post_ct_parent.sink to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %post_ct_parent.sink, align 4
  %stats33 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %stats, align 4
  %arrayidx35 = getelementptr %struct.nfp_fl_stats, ptr %58, i32 %7
  %bytes36 = getelementptr %struct.nfp_fl_stats, ptr %58, i32 %7, i32 1
  %59 = ptrtoint ptr %bytes36 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %bytes36, align 8
  %61 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx35, align 8
  %used42 = getelementptr %struct.nfp_fl_stats, ptr %58, i32 %7, i32 2
  %63 = ptrtoint ptr %used42 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %used42, align 8
  %65 = ptrtoint ptr %stats33 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %stats33, align 8
  %add.i98 = add i64 %66, %62
  store i64 %add.i98, ptr %stats33, align 8
  %bytes2.i99 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %56, i32 0, i32 8, i32 1
  %67 = ptrtoint ptr %bytes2.i99 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %bytes2.i99, align 8
  %add3.i100 = add i64 %68, %60
  store i64 %add3.i100, ptr %bytes2.i99, align 8
  %lastused6.i101 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %56, i32 0, i32 8, i32 3
  %69 = ptrtoint ptr %lastused6.i101 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %lastused6.i101, align 8
  %71 = tail call i64 @llvm.umax.i64(i64 %70, i64 %64) #12
  %72 = ptrtoint ptr %lastused6.i101 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %lastused6.i101, align 8
  %used_hw_stats28.i102 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %56, i32 0, i32 8, i32 4
  %73 = ptrtoint ptr %used_hw_stats28.i102 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %used_hw_stats28.i102, align 8
  %or.i103 = or i32 %74, 2
  store i32 %or.i103, ptr %used_hw_stats28.i102, align 8
  %used_hw_stats_valid.i104 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %56, i32 0, i32 8, i32 5
  %75 = ptrtoint ptr %used_hw_stats_valid.i104 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %used_hw_stats_valid.i104, align 4
  %76 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %stats, align 4
  %arrayidx45 = getelementptr %struct.nfp_fl_stats, ptr %77, i32 %7
  %78 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 0, ptr %arrayidx45, align 8
  %79 = load ptr, ptr %stats, align 4
  %bytes49 = getelementptr %struct.nfp_fl_stats, ptr %79, i32 %7, i32 1
  %80 = ptrtoint ptr %bytes49 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 0, ptr %bytes49, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_fl_ct_del_flow(ptr noundef %ct_map_ent) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ct_map_ent, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ct_entry1 = getelementptr inbounds %struct.nfp_fl_ct_map_entry, ptr %ct_map_ent, i32 0, i32 2
  %0 = ptrtoint ptr %ct_entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ct_entry1, align 4
  %zt2 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %zt2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %zt2, align 8
  %priv = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %ct_map_table = getelementptr inbounds %struct.nfp_flower_priv, ptr %5, i32 0, i32 34
  %type = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb8
    i32 1, label %sw.bb12
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %pre_ct_count = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %pre_ct_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pre_ct_count, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr %pre_ct_count, align 4
  %hash_node = getelementptr inbounds %struct.nfp_fl_ct_map_entry, ptr %ct_map_ent, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfp_ct_map_params to i32))
  %.unpack51 = load i32, ptr @nfp_ct_map_params, align 4
  %11 = insertvalue [7 x i32] undef, i32 %.unpack51, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 2) to i32))
  %.unpack52 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 2), align 4
  %12 = insertvalue [7 x i32] %11, i32 %.unpack52, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 4) to i32))
  %.unpack53 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 4), align 4
  %13 = insertvalue [7 x i32] %12, i32 %.unpack53, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 5) to i32))
  %.unpack54 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 5), align 4
  %14 = insertvalue [7 x i32] %13, i32 %.unpack54, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 7) to i32))
  %.unpack55 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 7), align 4
  %15 = insertvalue [7 x i32] %14, i32 %.unpack55, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 8) to i32))
  %.unpack56 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 8), align 4
  %16 = insertvalue [7 x i32] %15, i32 %.unpack56, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 9) to i32))
  %.unpack57 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 9), align 4
  %17 = insertvalue [7 x i32] %16, i32 %.unpack57, 6
  %call = tail call fastcc i32 @rhashtable_remove_fast(ptr noundef %ct_map_table, ptr noundef %hash_node, [7 x i32] %17)
  tail call void @nfp_fl_ct_clean_flow_entry(ptr noundef %1)
  tail call void @kfree(ptr noundef nonnull %ct_map_ent) #12
  %18 = ptrtoint ptr %pre_ct_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pre_ct_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool5.not = icmp eq i32 %19, 0
  br i1 %tobool5.not, label %if.then6, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6:                                         ; preds = %sw.bb
  %nft = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %nft to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %nft, align 4
  %nft_flows_list.i = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %3, i32 0, i32 10
  %21 = ptrtoint ptr %nft_flows_list.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nft_flows_list.i, align 4
  %cmp.not.i58 = icmp eq ptr %22, %nft_flows_list.i
  br i1 %cmp.not.i58, label %if.then6.cleanup_crit_edge, label %if.then6.for.body.i_crit_edge

if.then6.for.body.i_crit_edge:                    ; preds = %if.then6
  br label %for.body.i

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then6.for.body.i_crit_edge
  %.pn.in.i59 = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %22, %if.then6.for.body.i_crit_edge ]
  %nft_entry.0.i = getelementptr i8, ptr %.pn.in.i59, i32 -4
  %23 = ptrtoint ptr %.pn.in.i59 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i = load ptr, ptr %.pn.in.i59, align 4
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  %ct_map_table.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %25, i32 0, i32 34
  %call.i = tail call fastcc ptr @rhashtable_lookup_fast(ptr noundef %ct_map_table.i, ptr noundef %nft_entry.0.i, [7 x i32] %17) #12
  %call7.i = tail call i32 @nfp_fl_ct_del_flow(ptr noundef %call.i) #12
  %cmp.not.i = icmp eq ptr %.pn.i, %nft_flows_list.i
  br i1 %cmp.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %post_ct_count = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %3, i32 0, i32 7
  %26 = ptrtoint ptr %post_ct_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %post_ct_count, align 4
  %dec9 = add i32 %27, -1
  store i32 %dec9, ptr %post_ct_count, align 4
  %hash_node10 = getelementptr inbounds %struct.nfp_fl_ct_map_entry, ptr %ct_map_ent, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfp_ct_map_params to i32))
  %.unpack44 = load i32, ptr @nfp_ct_map_params, align 4
  %28 = insertvalue [7 x i32] undef, i32 %.unpack44, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 2) to i32))
  %.unpack45 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 2), align 4
  %29 = insertvalue [7 x i32] %28, i32 %.unpack45, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 4) to i32))
  %.unpack46 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 4), align 4
  %30 = insertvalue [7 x i32] %29, i32 %.unpack46, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 5) to i32))
  %.unpack47 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 5), align 4
  %31 = insertvalue [7 x i32] %30, i32 %.unpack47, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 7) to i32))
  %.unpack48 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 7), align 4
  %32 = insertvalue [7 x i32] %31, i32 %.unpack48, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 8) to i32))
  %.unpack49 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 8), align 4
  %33 = insertvalue [7 x i32] %32, i32 %.unpack49, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 9) to i32))
  %.unpack50 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 9), align 4
  %34 = insertvalue [7 x i32] %33, i32 %.unpack50, 6
  %call11 = tail call fastcc i32 @rhashtable_remove_fast(ptr noundef %ct_map_table, ptr noundef %hash_node10, [7 x i32] %34)
  br label %cleanup.sink.split

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %nft_flows_count = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %3, i32 0, i32 11
  %35 = ptrtoint ptr %nft_flows_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nft_flows_count, align 4
  %dec13 = add i32 %36, -1
  store i32 %dec13, ptr %nft_flows_count, align 4
  %hash_node14 = getelementptr inbounds %struct.nfp_fl_ct_map_entry, ptr %ct_map_ent, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfp_ct_map_params to i32))
  %.unpack = load i32, ptr @nfp_ct_map_params, align 4
  %37 = insertvalue [7 x i32] undef, i32 %.unpack, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 2) to i32))
  %.unpack38 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 2), align 4
  %38 = insertvalue [7 x i32] %37, i32 %.unpack38, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 4) to i32))
  %.unpack39 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 4), align 4
  %39 = insertvalue [7 x i32] %38, i32 %.unpack39, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 5) to i32))
  %.unpack40 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 5), align 4
  %40 = insertvalue [7 x i32] %39, i32 %.unpack40, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 7) to i32))
  %.unpack41 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 7), align 4
  %41 = insertvalue [7 x i32] %40, i32 %.unpack41, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 8) to i32))
  %.unpack42 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 8), align 4
  %42 = insertvalue [7 x i32] %41, i32 %.unpack42, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 9) to i32))
  %.unpack43 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 9), align 4
  %43 = insertvalue [7 x i32] %42, i32 %.unpack43, 6
  %call15 = tail call fastcc i32 @rhashtable_remove_fast(ptr noundef %ct_map_table, ptr noundef %hash_node14, [7 x i32] %43)
  %44 = ptrtoint ptr %ct_entry1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ct_entry1, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb12, %sw.bb8
  %.sink = phi ptr [ %1, %sw.bb8 ], [ %45, %sw.bb12 ]
  tail call void @nfp_fl_ct_clean_flow_entry(ptr noundef %.sink)
  tail call void @kfree(ptr noundef nonnull %ct_map_ent) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.body.i.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then6.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_remove_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !75) #12
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !87
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1076, ptr noundef nonnull @.str.10) #12
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %rcu_read_lock.exit.i.do.end10.i_crit_edge
  %params.coerce.fca.0.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 0
  %params.coerce.fca.5.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i.i to ptr
  %head_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %params.coerce.fca.5.extract.i.i.i, 0
  %conv.i.i.i = and i32 %params.coerce.fca.0.extract.i.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  %key_len6.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %params.coerce.fca.1.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i.i = lshr i32 %params.coerce.fca.1.extract.i.i.i, 16
  %hashfn.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end33.i.while.cond.i_crit_edge, %do.end10.i
  %tbl.0.i = phi ptr [ %5, %do.end10.i ], [ %45, %do.end33.i.while.cond.i_crit_edge ]
  %7 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i.i
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !88

cond.true.i.i.i:                                  ; preds = %while.cond.i
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %key_len6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i.i, align 2
  %conv7.i.i.i = zext i16 %10 to i32
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv7.i.i.i, %cond.false.i.i.i ], [ %conv.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i.i, align 8
  %call8.i.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %12) #12
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i
  %15 = ptrtoint ptr %hashfn.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %key_len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i.i, i32 noundef %18, i32 noundef %14) #12
  br label %rht_head_hashfn.exit.i.i

rht_head_hashfn.exit.i.i:                         ; preds = %if.then.i.i.i.i.i, %cond.end.i.i.i
  %hash.2.i.i.sink.i.i.i = phi i32 [ %call8.i.i.i, %cond.end.i.i.i ], [ %call.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %19 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %hash.2.i.i.sink.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i3.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i3.i.i, label %cond.false.i5.i.i, label %cond.true.i4.i.i, !prof !86

cond.true.i4.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
  br label %rht_bucket_var.exit.i.i

cond.false.i5.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_var.exit.i.i

rht_bucket_var.exit.i.i:                          ; preds = %cond.false.i5.i.i, %cond.true.i4.i.i
  %cond.i6.i.i = phi ptr [ %call.i.i.i, %cond.true.i4.i.i ], [ %arrayidx.i.i.i, %cond.false.i5.i.i ]
  %tobool.not.i3.i = icmp eq ptr %cond.i6.i.i, null
  br i1 %tobool.not.i3.i, label %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge, label %if.end.i.i

rht_bucket_var.exit.i.i.land.rhs.i_crit_edge:     ; preds = %rht_bucket_var.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %rht_bucket_var.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #12
  %call.i8.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %call.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.rht_ptr.exit.i.i_crit_edge

if.end.i.i.rht_ptr.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 377, ptr noundef nonnull @.str.14) #12
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, %if.end.i.i.rht_ptr.exit.i.i_crit_edge
  %23 = ptrtoint ptr %cond.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cond.i6.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %26 = ptrtoint ptr %cond.i6.i.i to i32
  %or.i.i.i.i = or i32 %26, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i20.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i)
  %tobool.i.not21.i.i = icmp eq i32 %and.i20.i.i, 0
  br i1 %tobool.i.not21.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.unlocked.i.i_crit_edge

rht_ptr.exit.i.i.unlocked.i.i_crit_edge:          ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlocked.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %27 = inttoptr i32 %cond.i.i.i.i to ptr
  %cmp.not.i21.i = icmp eq ptr %27, %obj
  br i1 %cmp.not.i21.i, label %for.body.preheader.i.i.do.body54.i.i_crit_edge, label %for.body.preheader.i.i.do.body145.i.i_crit_edge

for.body.preheader.i.i.do.body145.i.i_crit_edge:  ; preds = %for.body.preheader.i.i
  br label %do.body145.i.i

for.body.preheader.i.i.do.body54.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i

for.body.i.i:                                     ; preds = %do.end156.i.i
  %cmp.not.i.i = icmp eq ptr %32, %obj
  br i1 %cmp.not.i.i, label %for.body.i.i.do.body54.i.i_crit_edge, label %for.body.i.i.do.body145.i.i_crit_edge

for.body.i.i.do.body145.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body145.i.i

for.body.i.i.do.body54.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i

do.body54.i.i:                                    ; preds = %for.body.i.i.do.body54.i.i_crit_edge, %for.body.preheader.i.i.do.body54.i.i_crit_edge
  %pprev.023.i.lcssa.i = phi ptr [ %he.022.i22.i, %for.body.i.i.do.body54.i.i_crit_edge ], [ null, %for.body.preheader.i.i.do.body54.i.i_crit_edge ]
  %call55.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %land.lhs.true57.i.i, label %do.body54.i.i.do.end65.i.i_crit_edge

do.body54.i.i.do.end65.i.i_crit_edge:             ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i

land.lhs.true57.i.i:                              ; preds = %do.body54.i.i
  %call58.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %land.lhs.true57.i.i.do.end65.i.i_crit_edge, label %land.lhs.true60.i.i

land.lhs.true57.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i

land.lhs.true60.i.i:                              ; preds = %land.lhs.true57.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.21, align 1
  br i1 %.b2.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.21, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1032, ptr noundef nonnull @.str.14) #12
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %28 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %obj, align 4
  %tobool103.not.i.i = icmp eq ptr %pprev.023.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !89
  %30 = ptrtoint ptr %pprev.023.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %pprev.023.i.lcssa.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #12
  br label %if.then160.i.i

if.else142.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i, ptr noundef %29) #12
  br label %if.then160.i.i

do.body145.i.i:                                   ; preds = %for.body.i.i.do.body145.i.i_crit_edge, %for.body.preheader.i.i.do.body145.i.i_crit_edge
  %he.022.i22.i = phi ptr [ %32, %for.body.i.i.do.body145.i.i_crit_edge ], [ %27, %for.body.preheader.i.i.do.body145.i.i_crit_edge ]
  %call146.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i)
  %tobool147.not.i.i = icmp eq i32 %call146.i.i, 0
  br i1 %tobool147.not.i.i, label %land.lhs.true148.i.i, label %do.body145.i.i.do.end156.i.i_crit_edge

do.body145.i.i.do.end156.i.i_crit_edge:           ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i

land.lhs.true148.i.i:                             ; preds = %do.body145.i.i
  %call149.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %tobool150.not.i.i = icmp eq i32 %call149.i.i, 0
  br i1 %tobool150.not.i.i, label %land.lhs.true148.i.i.do.end156.i.i_crit_edge, label %land.lhs.true151.i.i

land.lhs.true148.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i

land.lhs.true151.i.i:                             ; preds = %land.lhs.true148.i.i
  %.b2281.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.23, align 1
  br i1 %.b2281.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.23, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1004, ptr noundef nonnull @.str.14) #12
  br label %do.end156.i.i

do.end156.i.i:                                    ; preds = %if.then153.i.i, %land.lhs.true151.i.i.do.end156.i.i_crit_edge, %land.lhs.true148.i.i.do.end156.i.i_crit_edge, %do.body145.i.i.do.end156.i.i_crit_edge
  %31 = ptrtoint ptr %he.022.i22.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %he.022.i22.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %and.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.i, label %do.end156.i.i.unlocked.i.i_crit_edge

do.end156.i.i.unlocked.i.i_crit_edge:             ; preds = %do.end156.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlocked.i.i

unlocked.i.i:                                     ; preds = %do.end156.i.i.unlocked.i.i_crit_edge, %rht_ptr.exit.i.i.unlocked.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #12
  br label %land.rhs.i

if.then160.i.i:                                   ; preds = %if.else142.i.i, %do.body105.i.i
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #12
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #12, !srcloc !90
  %automatic_shrinking.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %automatic_shrinking.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %automatic_shrinking.i.i, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool161.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool161.not.i.i, label %if.then160.i.i.while.end.i_crit_edge, label %land.rhs162.i.i

if.then160.i.i.while.end.i_crit_edge:             ; preds = %if.then160.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

land.rhs162.i.i:                                  ; preds = %if.then160.i.i
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #12
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %39 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tbl.0.i, align 128
  %mul.i.i.i = mul i32 %40, 3
  %div.i.i.i = udiv i32 %mul.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %div.i.i.i)
  %cmp.i.i.i = icmp ult i32 %38, %div.i.i.i
  br i1 %cmp.i.i.i, label %rht_shrink_below_30.exit.i.i, label %land.rhs162.i.i.while.end.i_crit_edge

land.rhs162.i.i.while.end.i_crit_edge:            ; preds = %land.rhs162.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

rht_shrink_below_30.exit.i.i:                     ; preds = %land.rhs162.i.i
  %min_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 5
  %41 = ptrtoint ptr %min_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %min_size.i.i.i, align 4
  %conv.i11.i.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i11.i.i)
  %cmp2.i.i.i = icmp ugt i32 %40, %conv.i11.i.i
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !88

rht_shrink_below_30.exit.i.i.while.end.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.then168.i.i:                                   ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %run_work.i.i) #12
  br label %while.end.i

land.rhs.i:                                       ; preds = %unlocked.i.i, %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %44 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %future_tbl.i, align 4
  %call20.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %land.rhs.i.do.end33.i_crit_edge

land.rhs.i.do.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

lor.lhs.false22.i:                                ; preds = %land.rhs.i
  %call23.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %lor.lhs.false22.i.do.end33.i_crit_edge

lor.lhs.false22.i.do.end33.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

land.lhs.true25.i:                                ; preds = %lor.lhs.false22.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.19, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast.__warned.19, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1085, ptr noundef nonnull @.str.10) #12
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %lor.lhs.false22.i.do.end33.i_crit_edge, %land.rhs.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %45, null
  br i1 %tobool35.not.i, label %do.end33.i.while.end.i_crit_edge, label %do.end33.i.while.cond.i_crit_edge

do.end33.i.while.cond.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

do.end33.i.while.end.i_crit_edge:                 ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %do.end33.i.while.end.i_crit_edge, %if.then168.i.i, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, %land.rhs162.i.i.while.end.i_crit_edge, %if.then160.i.i.while.end.i_crit_edge
  %retval.0.i15.i = phi i32 [ 0, %if.then160.i.i.while.end.i_crit_edge ], [ 0, %if.then168.i.i ], [ 0, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge ], [ 0, %land.rhs162.i.i.while.end.i_crit_edge ], [ -2, %do.end33.i.while.end.i_crit_edge ]
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i4.i, label %while.end.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i

while.end.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast.exit

land.lhs.true.i7.i:                               ; preds = %while.end.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.12) #12
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !92
  %46 = tail call i32 @llvm.read_register.i32(metadata !75) #12
  %and.i.i.i.i.i11.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i32 %retval.0.i15.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cleanup_nft_merge_entry(ptr noundef %m_entry) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %zt1 = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %m_entry, i32 0, i32 3
  %0 = ptrtoint ptr %zt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zt1, align 4
  %tc_flower_cookie = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %m_entry, i32 0, i32 8
  %2 = ptrtoint ptr %tc_flower_cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tc_flower_cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  %priv = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = ptrtoint ptr %m_entry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m_entry, align 4
  %call = tail call fastcc i32 @nfp_fl_ct_del_offload(ptr noundef %7, i32 noundef %3, ptr noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %nft_merge_tb = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %1, i32 0, i32 12
  %hash_node = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %m_entry, i32 0, i32 2
  %call6 = tail call fastcc i32 @rhashtable_remove_fast(ptr noundef %nft_merge_tb, ptr noundef %hash_node, [7 x i32] [i32 12, i32 262160, i32 0, i32 256, i32 0, i32 0, i32 0])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.if.end37_crit_edge, label %land.rhs

if.end5.if.end37_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

land.rhs:                                         ; preds = %if.end5
  %.b63 = load i1, ptr @cleanup_nft_merge_entry.__already_done, align 1
  br i1 %.b63, label %land.rhs.if.end37_crit_edge, label %if.then15, !prof !86

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cleanup_nft_merge_entry.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1251, i32 noundef 9, ptr noundef null) #12
  br label %if.end37

if.end37:                                         ; preds = %if.then15, %land.rhs.if.end37_crit_edge, %if.end5.if.end37_crit_edge
  %nft_merge_count = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %nft_merge_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nft_merge_count, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %nft_merge_count, align 4
  %tc_merge_list = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %m_entry, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tc_merge_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end37.list_del.exit_crit_edge

if.end37.list_del.exit_crit_edge:                 ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %m_entry, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %tc_merge_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tc_merge_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end37.list_del.exit_crit_edge
  %18 = ptrtoint ptr %tc_merge_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %tc_merge_list, align 4
  %prev.i = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %m_entry, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %nft_flow_list = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %m_entry, i32 0, i32 4
  %call.i.i64 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %nft_flow_list) #12
  br i1 %call.i.i64, label %if.end.i.i67, label %list_del.exit.list_del.exit69_crit_edge

list_del.exit.list_del.exit69_crit_edge:          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit69

if.end.i.i67:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i65 = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %m_entry, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %prev.i.i65 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i65, align 4
  %22 = ptrtoint ptr %nft_flow_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nft_flow_list, align 4
  %prev1.i.i.i66 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i66, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit69

list_del.exit69:                                  ; preds = %if.end.i.i67, %list_del.exit.list_del.exit69_crit_edge
  %26 = ptrtoint ptr %nft_flow_list to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %nft_flow_list, align 4
  %prev.i68 = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %m_entry, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %prev.i68 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i68, align 4
  tail call void @kfree(ptr noundef %m_entry) #12
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit69, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_fl_ct_del_offload(ptr noundef %app, i32 noundef %cookie, ptr noundef %netdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp eq ptr %3, @nfp_repr_netdev_ops
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call ptr @nfp_port_from_netdev(ptr noundef %netdev) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %port.0 = phi ptr [ %call2, %if.then ], [ null, %entry.if.end_crit_edge ]
  %call3 = tail call ptr @nfp_flower_search_fl_table(ptr noundef %app, i32 noundef %cookie, ptr noundef %netdev) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @nfp_modify_flow_metadata(ptr noundef %app, ptr noundef nonnull %call3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.err_free_merge_flow_crit_edge

if.end5.err_free_merge_flow_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_merge_flow

if.end9:                                          ; preds = %if.end5
  %nfp_tun_ipv4_addr = getelementptr inbounds %struct.nfp_fl_payload, ptr %call3, i32 0, i32 4
  %4 = ptrtoint ptr %nfp_tun_ipv4_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nfp_tun_ipv4_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool10.not = icmp eq i32 %5, 0
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nfp_tunnel_del_ipv4_off(ptr noundef %app, i32 noundef %5) #12
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  %nfp_tun_ipv6 = getelementptr inbounds %struct.nfp_fl_payload, ptr %call3, i32 0, i32 5
  %6 = ptrtoint ptr %nfp_tun_ipv6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nfp_tun_ipv6, align 4
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %if.end13.if.end17_crit_edge, label %if.then15

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nfp_tunnel_put_ipv6_off(ptr noundef %app, ptr noundef nonnull %7) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13.if.end17_crit_edge
  %in_hw = getelementptr inbounds %struct.nfp_fl_payload, ptr %call3, i32 0, i32 11
  %8 = ptrtoint ptr %in_hw to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %in_hw, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool18.not = icmp eq i8 %9, 0
  br i1 %tobool18.not, label %if.end17.err_free_merge_flow_crit_edge, label %if.end20

if.end17.err_free_merge_flow_crit_edge:           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_merge_flow

if.end20:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %call21 = tail call i32 @nfp_flower_xmit_flow(ptr noundef %app, ptr noundef nonnull %call3, i8 noundef zeroext 2) #12
  br label %err_free_merge_flow

err_free_merge_flow:                              ; preds = %if.end20, %if.end17.err_free_merge_flow_crit_edge, %if.end5.err_free_merge_flow_crit_edge
  %err.0 = phi i32 [ %call6, %if.end5.err_free_merge_flow_crit_edge ], [ %call21, %if.end20 ], [ 0, %if.end17.err_free_merge_flow_crit_edge ]
  tail call void @nfp_flower_del_linked_merge_flows(ptr noundef %app, ptr noundef nonnull %call3) #12
  %tobool22.not = icmp eq ptr %port.0, null
  br i1 %tobool22.not, label %err_free_merge_flow.if.end24_crit_edge, label %if.then23

err_free_merge_flow.if.end24_crit_edge:           ; preds = %err_free_merge_flow
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then23:                                        ; preds = %err_free_merge_flow
  call void @__sanitizer_cov_trace_pc() #14
  %tc_offload_cnt = getelementptr inbounds %struct.nfp_port, ptr %port.0, i32 0, i32 3
  %10 = ptrtoint ptr %tc_offload_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tc_offload_cnt, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %tc_offload_cnt, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %err_free_merge_flow.if.end24_crit_edge
  %action_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %call3, i32 0, i32 9
  %12 = ptrtoint ptr %action_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %action_data, align 4
  tail call void @kfree(ptr noundef %13) #12
  %mask_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %call3, i32 0, i32 8
  %14 = ptrtoint ptr %mask_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mask_data, align 4
  tail call void @kfree(ptr noundef %15) #12
  %unmasked_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %call3, i32 0, i32 7
  %16 = ptrtoint ptr %unmasked_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unmasked_data, align 4
  tail call void @kfree(ptr noundef %17) #12
  %flow_table = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 10
  %fl_node = getelementptr inbounds %struct.nfp_fl_payload, ptr %call3, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfp_flower_table_params to i32))
  %.unpack = load i32, ptr @nfp_flower_table_params, align 4
  %18 = insertvalue [7 x i32] undef, i32 %.unpack, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 2) to i32))
  %.unpack103 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 2), align 4
  %19 = insertvalue [7 x i32] %18, i32 %.unpack103, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 4) to i32))
  %.unpack104 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 4), align 4
  %20 = insertvalue [7 x i32] %19, i32 %.unpack104, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 5) to i32))
  %.unpack105 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 5), align 4
  %21 = insertvalue [7 x i32] %20, i32 %.unpack105, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 7) to i32))
  %.unpack106 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 7), align 4
  %22 = insertvalue [7 x i32] %21, i32 %.unpack106, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 8) to i32))
  %.unpack107 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 8), align 4
  %23 = insertvalue [7 x i32] %22, i32 %.unpack107, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 9) to i32))
  %.unpack108 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 9), align 4
  %24 = insertvalue [7 x i32] %23, i32 %.unpack108, 6
  %call25 = tail call fastcc i32 @rhashtable_remove_fast(ptr noundef %flow_table, ptr noundef %fl_node, [7 x i32] %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.do.end69_crit_edge, label %land.rhs

if.end24.do.end69_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end69

land.rhs:                                         ; preds = %if.end24
  %.b109 = load i1, ptr @nfp_fl_ct_del_offload.__already_done, align 1
  br i1 %.b109, label %land.rhs.do.end69_crit_edge, label %if.then34, !prof !86

land.rhs.do.end69_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end69

if.then34:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nfp_fl_ct_del_offload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 893, i32 noundef 9, ptr noundef null) #12
  br label %do.end69

do.end69:                                         ; preds = %if.then34, %land.rhs.do.end69_crit_edge, %if.end24.do.end69_crit_edge
  %rcu = getelementptr inbounds %struct.nfp_fl_payload, ptr %call3, i32 0, i32 3
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 36 to ptr)) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end69, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %do.end69 ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_port_from_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_flower_search_fl_table(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_modify_flow_metadata(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_tunnel_del_ipv4_off(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_tunnel_put_ipv6_off(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_flower_xmit_flow(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_del_linked_merge_flows(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_del_tc_merge_entry(ptr noundef %m_ent) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %zt1 = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %m_ent, i32 0, i32 4
  %0 = ptrtoint ptr %zt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zt1, align 4
  %tc_merge_tb = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %1, i32 0, i32 8
  %hash_node = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %m_ent, i32 0, i32 1
  %call = tail call fastcc i32 @rhashtable_remove_fast(ptr noundef %tc_merge_tb, ptr noundef %hash_node, [7 x i32] [i32 8, i32 8, i32 0, i32 256, i32 0, i32 0, i32 0])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tc_merge_count = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %tc_merge_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tc_merge_count, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %tc_merge_count, align 4
  %post_ct_list = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %m_ent, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %post_ct_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %m_ent, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %post_ct_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %post_ct_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %post_ct_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %post_ct_list, align 4
  %prev.i = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %m_ent, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %pre_ct_list = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %m_ent, i32 0, i32 2
  %call.i.i20 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pre_ct_list) #12
  br i1 %call.i.i20, label %if.end.i.i23, label %list_del.exit.list_del.exit25_crit_edge

list_del.exit.list_del.exit25_crit_edge:          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit25

if.end.i.i23:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i21 = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %m_ent, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %prev.i.i21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i21, align 4
  %14 = ptrtoint ptr %pre_ct_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pre_ct_list, align 4
  %prev1.i.i.i22 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i22 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i22, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit25

list_del.exit25:                                  ; preds = %if.end.i.i23, %list_del.exit.list_del.exit25_crit_edge
  %18 = ptrtoint ptr %pre_ct_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %pre_ct_list, align 4
  %prev.i24 = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %m_ent, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %prev.i24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i24, align 4
  %children = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %m_ent, i32 0, i32 7
  %20 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %children, align 4
  %cmp.i = icmp eq ptr %21, %children
  br i1 %cmp.i, label %list_del.exit25.if.end6_crit_edge, label %list_del.exit25.for.body29.i_crit_edge

list_del.exit25.for.body29.i_crit_edge:           ; preds = %list_del.exit25
  br label %for.body29.i

list_del.exit25.if.end6_crit_edge:                ; preds = %list_del.exit25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.body29.i:                                     ; preds = %for.body29.i.for.body29.i_crit_edge, %list_del.exit25.for.body29.i_crit_edge
  %.pn.in53.i = phi ptr [ %.pn.i, %for.body29.i.for.body29.i_crit_edge ], [ %21, %list_del.exit25.for.body29.i_crit_edge ]
  %m_entry.1.i = getelementptr i8, ptr %.pn.in53.i, i32 -32
  %22 = ptrtoint ptr %.pn.in53.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i = load ptr, ptr %.pn.in53.i, align 4
  tail call fastcc void @cleanup_nft_merge_entry(ptr noundef %m_entry.1.i) #12
  %cmp27.not.i = icmp eq ptr %.pn.i, %children
  br i1 %cmp27.not.i, label %for.body29.i.if.end6_crit_edge, label %for.body29.i.for.body29.i_crit_edge

for.body29.i.for.body29.i_crit_edge:              ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body29.i

for.body29.i.if.end6_crit_edge:                   ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end6:                                          ; preds = %for.body29.i.if.end6_crit_edge, %list_del.exit25.if.end6_crit_edge
  tail call void @kfree(ptr noundef %m_ent) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_hashentry(ptr noundef %ht, ptr noundef %key, [7 x i32] %params.coerce, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @rhashtable_lookup_fast(ptr noundef %ht, ptr noundef %key, [7 x i32] %params.coerce)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end8.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 3520) #18
  %tobool2.not = icmp eq ptr %call9.i.i, null
  %spec.select = select i1 %tobool2.not, ptr inttoptr (i32 -12 to ptr), ptr %call9.i.i
  br label %cleanup

cleanup:                                          ; preds = %if.end8.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %entry.cleanup_crit_edge ], [ %spec.select, %if.end8.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_insert_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !75) #12
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !87
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end12.i_crit_edge

rcu_read_lock.exit.i.do.end12.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end12.i_crit_edge

lor.lhs.false.i.do.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true9.i.do.end12.i_crit_edge, label %if.then.i

land.lhs.true9.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 715, ptr noundef nonnull @.str.10) #12
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then.i, %land.lhs.true9.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %lor.lhs.false.i.do.end12.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i_crit_edge
  %params.coerce.fca.5.extract.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i to ptr
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i)
  %tobool.not.i3.i = icmp eq i32 %params.coerce.fca.5.extract.i.i, 0
  br i1 %tobool.not.i3.i, label %if.then.i.i.i.i, label %cond.true.i.i, !prof !88

cond.true.i.i:                                    ; preds = %do.end12.i
  %params.coerce.fca.0.extract.i.i = extractvalue [7 x i32] %params.coerce, 0
  %conv.i.i = and i32 %params.coerce.fca.0.extract.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool4.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool4.not.i.i, label %cond.false.i.i, label %cond.true.i.i.cond.end.i.i_crit_edge

cond.true.i.i.cond.end.i.i_crit_edge:             ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %key_len6.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %key_len6.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i, align 2
  %conv7.i.i = zext i16 %10 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv7.i.i, %cond.false.i.i ], [ %conv.i.i, %cond.true.i.i.cond.end.i.i_crit_edge ]
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i, align 8
  %call8.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i, i32 noundef %cond.i.i, i32 noundef %12) #12
  br label %rht_head_hashfn.exit.i

if.then.i.i.i.i:                                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i, align 8
  %params.coerce.fca.1.extract.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i = lshr i32 %params.coerce.fca.1.extract.i.i, 16
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %15 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  %17 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i, i32 noundef %18, i32 noundef %14) #12
  br label %rht_head_hashfn.exit.i

rht_head_hashfn.exit.i:                           ; preds = %if.then.i.i.i.i, %cond.end.i.i
  %hash.2.i.i.sink.i.i = phi i32 [ %call8.i.i, %cond.end.i.i ], [ %call.i.i.i.i, %if.then.i.i.i.i ]
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 128
  %sub.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %hash.2.i.i.sink.i.i
  %nest.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i4.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i4.i, label %cond.false.i7.i, label %cond.true.i6.i, !prof !86

cond.true.i6.i:                                   ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i5.i = tail call ptr @rht_bucket_nested_insert(ptr noundef %ht, ptr noundef %5, i32 noundef %and.i3.i.i.i) #12
  br label %rht_bucket_insert.exit.i

cond.false.i7.i:                                  ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.bucket_table, ptr %5, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket_insert.exit.i

rht_bucket_insert.exit.i:                         ; preds = %cond.false.i7.i, %cond.true.i6.i
  %cond.i8.i = phi ptr [ %call.i5.i, %cond.true.i6.i ], [ %arrayidx.i.i, %cond.false.i7.i ]
  %tobool17.not.i = icmp eq ptr %cond.i8.i, null
  br i1 %tobool17.not.i, label %rht_bucket_insert.exit.i.out.i_crit_edge, label %if.end19.i

rht_bucket_insert.exit.i.out.i_crit_edge:         ; preds = %rht_bucket_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end19.i:                                       ; preds = %rht_bucket_insert.exit.i
  tail call fastcc void @rht_lock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #12
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 5
  %23 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %future_tbl.i, align 4
  %tobool25.not.i = icmp eq ptr %24, null
  br i1 %tobool25.not.i, label %if.end30.i, label %if.end19.i.slow_path.i_crit_edge, !prof !86

if.end19.i.slow_path.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i

slow_path.i:                                      ; preds = %rht_grow_above_100.exit.i.slow_path.i_crit_edge, %for.end.i.slow_path.i_crit_edge, %if.end19.i.slow_path.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #12
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i10.i, label %slow_path.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i13.i

slow_path.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %slow_path.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i13.i:                              ; preds = %slow_path.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.12) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, %slow_path.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !92
  %25 = tail call i32 @llvm.read_register.i32(metadata !75) #12
  %and.i.i.i.i.i17.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i19.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i19.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %call29.i = tail call ptr @rhashtable_insert_slow(ptr noundef %ht, ptr noundef null, ptr noundef %obj) #12
  br label %__rhashtable_insert_fast.exit

if.end30.i:                                       ; preds = %if.end19.i
  %call.i20.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool.not.i21.i = icmp eq i32 %call.i20.i, 0
  br i1 %tobool.not.i21.i, label %land.lhs.true.i23.i, label %if.end30.i.rht_ptr.exit.i_crit_edge

if.end30.i.rht_ptr.exit.i_crit_edge:              ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i

land.lhs.true.i23.i:                              ; preds = %if.end30.i
  %call1.i22.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i22.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge:     ; preds = %land.lhs.true.i23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i23.i
  %.b7.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i, label %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, label %if.then.i24.i

land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge:      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i

if.then.i24.i:                                    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 377, ptr noundef nonnull @.str.14) #12
  br label %rht_ptr.exit.i

rht_ptr.exit.i:                                   ; preds = %if.then.i24.i, %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, %land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge, %if.end30.i.rht_ptr.exit.i_crit_edge
  %29 = ptrtoint ptr %cond.i8.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cond.i8.i, align 4
  %31 = ptrtoint ptr %30 to i32
  %and.i.i.i = and i32 %31, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %32 = ptrtoint ptr %cond.i8.i to i32
  %or.i.i.i = or i32 %32, 1
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 %or.i.i.i, i32 %and.i.i.i
  %and.i63.i = and i32 %cond.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63.i)
  %tobool.i.not64.i = icmp eq i32 %and.i63.i, 0
  br i1 %tobool.i.not64.i, label %for.body.preheader.i, label %rht_ptr.exit.i.if.end152.i_crit_edge

rht_ptr.exit.i.if.end152.i_crit_edge:             ; preds = %rht_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i

for.body.preheader.i:                             ; preds = %rht_ptr.exit.i
  %33 = inttoptr i32 %cond.i.i.i to ptr
  br label %for.body.i

for.body.i:                                       ; preds = %do.end147.i.for.body.i_crit_edge, %for.body.preheader.i
  %head.066.i = phi ptr [ %35, %do.end147.i.for.body.i_crit_edge ], [ %33, %for.body.preheader.i ]
  %elasticity.065.i = phi i32 [ %dec.i, %do.end147.i.for.body.i_crit_edge ], [ 16, %for.body.preheader.i ]
  %dec.i = add i32 %elasticity.065.i, -1
  %call137.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i)
  %tobool138.not.i = icmp eq i32 %call137.i, 0
  br i1 %tobool138.not.i, label %land.lhs.true139.i, label %for.body.i.do.end147.i_crit_edge

for.body.i.do.end147.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i

land.lhs.true139.i:                               ; preds = %for.body.i
  %call140.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i)
  %tobool141.not.i = icmp eq i32 %call140.i, 0
  br i1 %tobool141.not.i, label %land.lhs.true139.i.do.end147.i_crit_edge, label %land.lhs.true142.i

land.lhs.true139.i.do.end147.i_crit_edge:         ; preds = %land.lhs.true139.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i

land.lhs.true142.i:                               ; preds = %land.lhs.true139.i
  %.b2811.i = load i1, ptr @__rhashtable_insert_fast.__warned.15, align 1
  br i1 %.b2811.i, label %land.lhs.true142.i.do.end147.i_crit_edge, label %if.then144.i

land.lhs.true142.i.do.end147.i_crit_edge:         ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i

if.then144.i:                                     ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned.15, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 732, ptr noundef nonnull @.str.14) #12
  br label %do.end147.i

do.end147.i:                                      ; preds = %if.then144.i, %land.lhs.true142.i.do.end147.i_crit_edge, %land.lhs.true139.i.do.end147.i_crit_edge, %for.body.i.do.end147.i_crit_edge
  %34 = ptrtoint ptr %head.066.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.066.i, align 4
  %36 = ptrtoint ptr %35 to i32
  %and.i.i = and i32 %36, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.end147.i.for.body.i_crit_edge, label %for.end.i

do.end147.i.for.body.i_crit_edge:                 ; preds = %do.end147.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %do.end147.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %phi.cmp.i = icmp slt i32 %dec.i, 1
  br i1 %phi.cmp.i, label %for.end.i.slow_path.i_crit_edge, label %for.end.i.if.end152.i_crit_edge

for.end.i.if.end152.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i

for.end.i.slow_path.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i

if.end152.i:                                      ; preds = %for.end.i.if.end152.i_crit_edge, %rht_ptr.exit.i.if.end152.i_crit_edge
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i25.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #12
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %max_elems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 2
  %39 = ptrtoint ptr %max_elems.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_elems.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp.i.not.i = icmp ult i32 %38, %40
  br i1 %cmp.i.not.i, label %if.end162.i, label %out_unlock.i, !prof !86

if.end162.i:                                      ; preds = %if.end152.i
  %call.i.i.i27.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #12
  %41 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %nelems.i.i, align 4
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %5, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp.i28.i = icmp ugt i32 %42, %44
  br i1 %cmp.i28.i, label %rht_grow_above_100.exit.i, label %if.end162.i.if.end171.i_crit_edge

if.end162.i.if.end171.i_crit_edge:                ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171.i

rht_grow_above_100.exit.i:                        ; preds = %if.end162.i
  %max_size.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %45 = ptrtoint ptr %max_size.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i29.i = icmp eq i32 %46, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp4.i.i = icmp ult i32 %44, %46
  %spec.select.i.i = select i1 %tobool.not.i29.i, i1 true, i1 %cmp4.i.i
  br i1 %spec.select.i.i, label %rht_grow_above_100.exit.i.slow_path.i_crit_edge, label %rht_grow_above_100.exit.i.if.end171.i_crit_edge, !prof !88

rht_grow_above_100.exit.i.if.end171.i_crit_edge:  ; preds = %rht_grow_above_100.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171.i

rht_grow_above_100.exit.i.slow_path.i_crit_edge:  ; preds = %rht_grow_above_100.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i

if.end171.i:                                      ; preds = %rht_grow_above_100.exit.i.if.end171.i_crit_edge, %if.end162.i.if.end171.i_crit_edge
  %call.i30.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool.not.i31.i = icmp eq i32 %call.i30.i, 0
  br i1 %tobool.not.i31.i, label %land.lhs.true.i34.i, label %if.end171.i.rht_ptr.exit42.i_crit_edge

if.end171.i.rht_ptr.exit42.i_crit_edge:           ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit42.i

land.lhs.true.i34.i:                              ; preds = %if.end171.i
  %call1.i32.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i)
  %tobool2.not.i33.i = icmp eq i32 %call1.i32.i, 0
  br i1 %tobool2.not.i33.i, label %land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge, label %land.lhs.true3.i36.i

land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge:   ; preds = %land.lhs.true.i34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit42.i

land.lhs.true3.i36.i:                             ; preds = %land.lhs.true.i34.i
  %.b7.i35.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i35.i, label %land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge, label %if.then.i37.i

land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge:  ; preds = %land.lhs.true3.i36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit42.i

if.then.i37.i:                                    ; preds = %land.lhs.true3.i36.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 377, ptr noundef nonnull @.str.14) #12
  br label %rht_ptr.exit42.i

rht_ptr.exit42.i:                                 ; preds = %if.then.i37.i, %land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge, %land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge, %if.end171.i.rht_ptr.exit42.i_crit_edge
  %47 = ptrtoint ptr %cond.i8.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cond.i8.i, align 4
  %49 = ptrtoint ptr %48 to i32
  %and.i.i38.i = and i32 %49, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38.i)
  %tobool.not.i.i39.i = icmp eq i32 %and.i.i38.i, 0
  %cond.i.i41.i = select i1 %tobool.not.i.i39.i, i32 %or.i.i.i, i32 %and.i.i38.i
  %50 = inttoptr i32 %cond.i.i41.i to ptr
  %51 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %50, ptr %obj, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #12
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #12, !srcloc !93
  tail call fastcc void @rht_assign_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i, ptr noundef %obj) #12
  %call.i.i.i44.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #12
  %53 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %nelems.i.i, align 4
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %5, align 128
  %div8.i.i = lshr i32 %56, 2
  %mul.i.i = mul nuw i32 %div8.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %mul.i.i)
  %cmp.i45.i = icmp ugt i32 %54, %mul.i.i
  br i1 %cmp.i45.i, label %rht_grow_above_75.exit.i, label %rht_ptr.exit42.i.out.i_crit_edge

rht_ptr.exit42.i.out.i_crit_edge:                 ; preds = %rht_ptr.exit42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

rht_grow_above_75.exit.i:                         ; preds = %rht_ptr.exit42.i
  %max_size.i46.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %57 = ptrtoint ptr %max_size.i46.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_size.i46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i47.i = icmp eq i32 %58, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp4.i48.i = icmp ult i32 %56, %58
  %spec.select.i49.i = select i1 %tobool.not.i47.i, i1 true, i1 %cmp4.i48.i
  br i1 %spec.select.i49.i, label %if.then207.i, label %rht_grow_above_75.exit.i.out.i_crit_edge

rht_grow_above_75.exit.i.out.i_crit_edge:         ; preds = %rht_grow_above_75.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then207.i:                                     ; preds = %rht_grow_above_75.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %run_work.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %59 = load ptr, ptr @system_wq, align 4
  %call.i.i51.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %59, ptr noundef %run_work.i) #12
  br label %out.i

out.i:                                            ; preds = %out_unlock.i, %if.then207.i, %rht_grow_above_75.exit.i.out.i_crit_edge, %rht_ptr.exit42.i.out.i_crit_edge, %rht_bucket_insert.exit.i.out.i_crit_edge
  %data.2.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.out.i_crit_edge ], [ null, %if.then207.i ], [ null, %rht_grow_above_75.exit.i.out.i_crit_edge ], [ null, %rht_ptr.exit42.i.out.i_crit_edge ]
  %call.i52.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i52.i, label %out.i.rcu_read_unlock.exit62.i_crit_edge, label %land.lhs.true.i55.i

out.i.rcu_read_unlock.exit62.i_crit_edge:         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit62.i

land.lhs.true.i55.i:                              ; preds = %out.i
  %call1.i53.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i)
  %tobool.not.i54.i = icmp eq i32 %call1.i53.i, 0
  br i1 %tobool.not.i54.i, label %land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge, label %land.lhs.true2.i57.i

land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge: ; preds = %land.lhs.true.i55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit62.i

land.lhs.true2.i57.i:                             ; preds = %land.lhs.true.i55.i
  %.b4.i56.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56.i, label %land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge, label %if.then.i58.i

land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge: ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit62.i

if.then.i58.i:                                    ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.12) #12
  br label %rcu_read_unlock.exit62.i

rcu_read_unlock.exit62.i:                         ; preds = %if.then.i58.i, %land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge, %land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge, %out.i.rcu_read_unlock.exit62.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !92
  %60 = tail call i32 @llvm.read_register.i32(metadata !75) #12
  %and.i.i.i.i.i59.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i59.i to ptr
  %preempt_count.i.i.i.i60.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i60.i, align 4
  %sub.i.i.i61.i = add i32 %63, -1
  store volatile i32 %sub.i.i.i61.i, ptr %preempt_count.i.i.i.i60.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %__rhashtable_insert_fast.exit

out_unlock.i:                                     ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rht_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #12
  br label %out.i

__rhashtable_insert_fast.exit:                    ; preds = %rcu_read_unlock.exit62.i, %rcu_read_unlock.exit.i
  %retval.0.i = phi ptr [ %call29.i, %rcu_read_unlock.exit.i ], [ %data.2.i, %rcu_read_unlock.exit62.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %64 = ptrtoint ptr %retval.0.i to i32
  %cmp = icmp eq ptr %retval.0.i, null
  %cond = select i1 %cmp, i32 0, i32 -17
  %retval.0 = select i1 %cmp.i, i32 %64, i32 %cond
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup_fast(ptr noundef %ht, ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #4 align 64 {
entry:
  %arg.i.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !75) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !87
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %params.coerce.fca.6.extract.i.i = extractvalue [7 x i32] %params.coerce, 6
  %4 = inttoptr i32 %params.coerce.fca.6.extract.i.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i.i) #12
  %5 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ht, ptr %arg.i.i, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %key, ptr %5, align 4
  %8 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ht, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.do.end12.i.i_crit_edge

rcu_read_lock.exit.do.end12.i.i_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call5.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b92.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 594, ptr noundef nonnull @.str.10) #12
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.do.end12.i.i_crit_edge
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract.i.i)
  %tobool19.not.i.i = icmp eq i32 %params.coerce.fca.6.extract.i.i, 0
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.end60.i.i.if.then.i.i.i.i_crit_edge, %do.end12.i.i
  %tbl.0.i.i = phi ptr [ %9, %do.end12.i.i ], [ %40, %do.end60.i.i.if.then.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_rnd.i.i.i, align 8
  %12 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %14 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %13(ptr noundef %key, i32 noundef %15, i32 noundef %11) #12
  %16 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i = add i32 %17, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %call.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i, !prof !86

cond.true.i.i.i:                                  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i) #12
  br label %rht_bucket.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket.exit.i.i

rht_bucket.exit.i.i:                              ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi ptr [ %call.i.i.i, %cond.true.i.i.i ], [ %arrayidx.i.i.i, %cond.false.i.i.i ]
  %20 = ptrtoint ptr %cond.i.i.i to i32
  %or.i.i.i.i = or i32 %20, 1
  %21 = inttoptr i32 %or.i.i.i.i to ptr
  br label %do.body16.i.i

do.body16.i.i:                                    ; preds = %do.cond34.i.i.do.body16.i.i_crit_edge, %rht_bucket.exit.i.i
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !94
  %22 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %cond.i.i.i, align 4
  %call.i93.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i)
  %tobool.not.i94.i.i = icmp eq i32 %call.i93.i.i, 0
  br i1 %tobool.not.i94.i.i, label %land.lhs.true.i.i.i, label %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge

do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge:     ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body16.i.i
  %call2.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b11.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i, label %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 369, ptr noundef nonnull @.str.10) #12
  br label %rht_ptr_rcu.exit.i.i

rht_ptr_rcu.exit.i.i:                             ; preds = %if.then.i.i.i, %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge
  %24 = ptrtoint ptr %23 to i32
  %and.i.i95.i.i = and i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i)
  %tobool.not.i.i96.i.i = icmp eq i32 %and.i.i95.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i96.i.i, i32 %or.i.i.i.i, i32 %and.i.i95.i.i
  %25 = inttoptr i32 %cond.i.i.i.i to ptr
  %and.i106.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i)
  %tobool.i.not107.i.i = icmp eq i32 %and.i106.i.i, 0
  br i1 %tobool.i.not107.i.i, label %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge, label %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge

rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge:     ; preds = %rht_ptr_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond34.i.i

rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge:      ; preds = %rht_ptr_rcu.exit.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge
  %he.0108.i.i = phi ptr [ %37, %for.inc.i.i.for.body.i.i_crit_edge ], [ %25, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge ]
  %26 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i98.i.i = zext i16 %27 to i32
  %idx.neg.i99.i.i = sub nsw i32 0, %conv.i98.i.i
  %add.ptr.i100.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i99.i.i
  br i1 %tobool19.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.body.i.i
  %call22.i.i = call i32 %4(ptr noundef nonnull %arg.i.i, ptr noundef %add.ptr.i100.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.true.i.i.for.inc.i.i_crit_edge

cond.true.i.i.for.inc.i.i_crit_edge:              ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_lookup.exit.i

cond.false.i.i:                                   ; preds = %for.body.i.i
  %28 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arg.i.i, align 4
  %key_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %key_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %key_offset.i.i.i, align 4
  %conv.i101.i.i = zext i16 %31 to i32
  %add.ptr.i102.i.i = getelementptr i8, ptr %add.ptr.i100.i.i, i32 %conv.i101.i.i
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %key_len.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %key_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %key_len.i.i.i, align 2
  %conv3.i.i.i = zext i16 %35 to i32
  %bcmp.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i, ptr %33, i32 %conv3.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool26.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool26.not.i.i, label %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.false.i.i.for.inc.i.i_crit_edge

cond.false.i.i.for.inc.i.i_crit_edge:             ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_lookup.exit.i

for.inc.i.i:                                      ; preds = %cond.false.i.i.for.inc.i.i_crit_edge, %cond.true.i.i.for.inc.i.i_crit_edge
  %36 = ptrtoint ptr %he.0108.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %he.0108.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %and.i.i.i = and i32 %38, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.cond34.i.i_crit_edge

for.inc.i.i.do.cond34.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond34.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

do.cond34.i.i:                                    ; preds = %for.inc.i.i.do.cond34.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge
  %he.0.lcssa.i.i = phi ptr [ %25, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge ], [ %37, %for.inc.i.i.do.cond34.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %he.0.lcssa.i.i, %21
  br i1 %cmp.not.i.i, label %do.end39.i.i, label %do.cond34.i.i.do.body16.i.i_crit_edge

do.cond34.i.i.do.body16.i.i_crit_edge:            ; preds = %do.cond34.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16.i.i

do.end39.i.i:                                     ; preds = %do.cond34.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !95
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call47.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %lor.lhs.false49.i.i, label %do.end39.i.i.do.end60.i.i_crit_edge

do.end39.i.i.do.end60.i.i_crit_edge:              ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i

lor.lhs.false49.i.i:                              ; preds = %do.end39.i.i
  %call50.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool51.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool51.not.i.i, label %land.lhs.true52.i.i, label %lor.lhs.false49.i.i.do.end60.i.i_crit_edge

lor.lhs.false49.i.i.do.end60.i.i_crit_edge:       ; preds = %lor.lhs.false49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i

land.lhs.true52.i.i:                              ; preds = %lor.lhs.false49.i.i
  %call53.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %land.lhs.true52.i.i.do.end60.i.i_crit_edge, label %land.lhs.true55.i.i

land.lhs.true52.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i

land.lhs.true55.i.i:                              ; preds = %land.lhs.true52.i.i
  %.b9091.i.i = load i1, ptr @__rhashtable_lookup.__warned.11, align 1
  br i1 %.b9091.i.i, label %land.lhs.true55.i.i.do.end60.i.i_crit_edge, label %if.then57.i.i

land.lhs.true55.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i

if.then57.i.i:                                    ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_lookup.__warned.11, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 614, ptr noundef nonnull @.str.10) #12
  br label %do.end60.i.i

do.end60.i.i:                                     ; preds = %if.then57.i.i, %land.lhs.true55.i.i.do.end60.i.i_crit_edge, %land.lhs.true52.i.i.do.end60.i.i_crit_edge, %lor.lhs.false49.i.i.do.end60.i.i_crit_edge, %do.end39.i.i.do.end60.i.i_crit_edge
  %tobool62.not.i.i = icmp eq ptr %40, null
  br i1 %tobool62.not.i.i, label %__rhashtable_lookup.exit.thread.i, label %do.end60.i.i.if.then.i.i.i.i_crit_edge, !prof !86

do.end60.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i

__rhashtable_lookup.exit.thread.i:                ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #12
  br label %rhashtable_lookup.exit

__rhashtable_lookup.exit.i:                       ; preds = %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #12
  %tobool.not.i1 = icmp eq ptr %he.0108.i.i, null
  br i1 %tobool.not.i1, label %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, label %cond.true.i

__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge: ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_lookup.exit

cond.true.i:                                      ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i = zext i16 %42 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i.i
  br label %rhashtable_lookup.exit

rhashtable_lookup.exit:                           ; preds = %cond.true.i, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, %__rhashtable_lookup.exit.thread.i
  %cond.i = phi ptr [ %add.ptr.i.i, %cond.true.i ], [ null, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge ], [ null, %__rhashtable_lookup.exit.thread.i ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i2, label %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %rhashtable_lookup.exit
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.12) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !92
  %43 = call i32 @llvm.read_register.i32(metadata !75) #12
  %and.i.i.i.i.i9 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %cond.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !75) #12
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !96
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !97

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !98
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !99
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !86

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !100
  %7 = tail call i32 @llvm.read_register.i32(metadata !75) #12
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !102
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = tail call i32 @llvm.read_register.i32(metadata !75) #12
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !103
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #12
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !88

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #12, !srcloc !104
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !105
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !106
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !107
  %3 = tail call i32 @llvm.read_register.i32(metadata !75) #12
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !109
  %2 = tail call i32 @llvm.read_register.i32(metadata !75) #12
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
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_rule_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_ct_merge_check(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %entry2) unnamed_addr #2 align 64 {
entry:
  %match1 = alloca %struct.flow_match_control, align 4
  %match26 = alloca %struct.flow_match_control, align 4
  %match135 = alloca %struct.flow_match_basic, align 4
  %match236 = alloca %struct.flow_match_basic, align 4
  %match193 = alloca %struct.flow_match_ipv4_addrs, align 4
  %match294 = alloca %struct.flow_match_ipv4_addrs, align 4
  %match1151 = alloca %struct.flow_match_ipv6_addrs, align 4
  %match2152 = alloca %struct.flow_match_ipv6_addrs, align 4
  %match1209 = alloca %struct.flow_match_ports, align 4
  %match2210 = alloca %struct.flow_match_ports, align 4
  %match1267 = alloca %struct.flow_match_eth_addrs, align 4
  %match2268 = alloca %struct.flow_match_eth_addrs, align 4
  %match1325 = alloca %struct.flow_match_vlan, align 4
  %match2326 = alloca %struct.flow_match_vlan, align 4
  %match1383 = alloca %struct.flow_match_mpls, align 4
  %match2384 = alloca %struct.flow_match_mpls, align 4
  %match1441 = alloca %struct.flow_match_tcp, align 4
  %match2442 = alloca %struct.flow_match_tcp, align 4
  %match1499 = alloca %struct.flow_match_ip, align 4
  %match2500 = alloca %struct.flow_match_ip, align 4
  %match1557 = alloca %struct.flow_match_enc_keyid, align 4
  %match2558 = alloca %struct.flow_match_enc_keyid, align 4
  %match1615 = alloca %struct.flow_match_ipv4_addrs, align 4
  %match2616 = alloca %struct.flow_match_ipv4_addrs, align 4
  %match1673 = alloca %struct.flow_match_ipv6_addrs, align 4
  %match2674 = alloca %struct.flow_match_ipv6_addrs, align 4
  %match1731 = alloca %struct.flow_match_control, align 4
  %match2732 = alloca %struct.flow_match_control, align 4
  %match1789 = alloca %struct.flow_match_ip, align 4
  %match2790 = alloca %struct.flow_match_ip, align 4
  %match1847 = alloca %struct.flow_match_enc_opts, align 4
  %match2848 = alloca %struct.flow_match_enc_opts, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rule = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %rule1 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %entry2, i32 0, i32 7
  %6 = ptrtoint ptr %rule1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rule1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %and = and i32 %11, %5
  %and5 = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %if.then

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match1) #12
  %12 = ptrtoint ptr %match1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %match1, align 4, !annotation !85
  %13 = getelementptr inbounds %struct.flow_match_control, ptr %match1, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %13, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match26) #12
  %15 = ptrtoint ptr %match26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %match26, align 4, !annotation !85
  %16 = getelementptr inbounds %struct.flow_match_control, ptr %match26, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %16, align 4, !annotation !85
  call void @flow_rule_match_control(ptr noundef %1, ptr noundef nonnull %match1) #12
  %18 = ptrtoint ptr %rule1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rule1, align 4
  call void @flow_rule_match_control(ptr noundef %19, ptr noundef nonnull %match26) #12
  %20 = ptrtoint ptr %match1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %_match1.sroa.0.0.copyload = load ptr, ptr %match1, align 4
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %_match1.sroa.5.0.copyload = load ptr, ptr %13, align 4
  %22 = ptrtoint ptr %match26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %_match2.sroa.0.0.copyload = load ptr, ptr %match26, align 4
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %_match2.sroa.5.0.copyload = load ptr, ptr %16, align 4
  %24 = ptrtoint ptr %_match1.sroa.0.0.copyload to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %_match1.sroa.0.0.copyload, align 1
  %26 = ptrtoint ptr %_match1.sroa.5.0.copyload to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %_match1.sroa.5.0.copyload, align 1
  %28 = ptrtoint ptr %_match2.sroa.5.0.copyload to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %_match2.sroa.5.0.copyload, align 1
  %30 = ptrtoint ptr %_match2.sroa.0.0.copyload to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %_match2.sroa.0.0.copyload, align 1
  %and1312461252 = xor i8 %31, %25
  %and1612471251 = and i8 %29, %27
  %xor1250 = and i8 %and1612471251, %and1312461252
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor1250)
  %tobool25.not = icmp eq i8 %xor1250, 0
  br i1 %tobool25.not, label %for.cond, label %if.then.check_failed.critedge_crit_edge

if.then.check_failed.critedge_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge

for.cond:                                         ; preds = %if.then
  %arrayidx.1 = getelementptr i8, ptr %_match1.sroa.0.0.copyload, i32 1
  %32 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.1, align 1
  %arrayidx11.1 = getelementptr i8, ptr %_match1.sroa.5.0.copyload, i32 1
  %34 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx11.1, align 1
  %arrayidx14.1 = getelementptr i8, ptr %_match2.sroa.5.0.copyload, i32 1
  %36 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx14.1, align 1
  %arrayidx17.1 = getelementptr i8, ptr %_match2.sroa.0.0.copyload, i32 1
  %38 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx17.1, align 1
  %and1312461252.1 = xor i8 %39, %33
  %and1612471251.1 = and i8 %37, %35
  %xor1250.1 = and i8 %and1612471251.1, %and1312461252.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor1250.1)
  %tobool25.not.1 = icmp eq i8 %xor1250.1, 0
  br i1 %tobool25.not.1, label %for.cond.1, label %for.cond.check_failed.critedge_crit_edge

for.cond.check_failed.critedge_crit_edge:         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr i8, ptr %_match1.sroa.0.0.copyload, i32 2
  %40 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.2, align 1
  %arrayidx11.2 = getelementptr i8, ptr %_match1.sroa.5.0.copyload, i32 2
  %42 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx11.2, align 1
  %arrayidx14.2 = getelementptr i8, ptr %_match2.sroa.5.0.copyload, i32 2
  %44 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx14.2, align 1
  %arrayidx17.2 = getelementptr i8, ptr %_match2.sroa.0.0.copyload, i32 2
  %46 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx17.2, align 1
  %and1312461252.2 = xor i8 %47, %41
  %and1612471251.2 = and i8 %45, %43
  %xor1250.2 = and i8 %and1612471251.2, %and1312461252.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor1250.2)
  %tobool25.not.2 = icmp eq i8 %xor1250.2, 0
  br i1 %tobool25.not.2, label %for.cond.2, label %for.cond.1.check_failed.critedge_crit_edge

for.cond.1.check_failed.critedge_crit_edge:       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr i8, ptr %_match1.sroa.0.0.copyload, i32 3
  %48 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.3, align 1
  %arrayidx11.3 = getelementptr i8, ptr %_match1.sroa.5.0.copyload, i32 3
  %50 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx11.3, align 1
  %arrayidx14.3 = getelementptr i8, ptr %_match2.sroa.5.0.copyload, i32 3
  %52 = ptrtoint ptr %arrayidx14.3 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx14.3, align 1
  %arrayidx17.3 = getelementptr i8, ptr %_match2.sroa.0.0.copyload, i32 3
  %54 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx17.3, align 1
  %and1312461252.3 = xor i8 %55, %49
  %and1612471251.3 = and i8 %53, %51
  %xor1250.3 = and i8 %and1612471251.3, %and1312461252.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor1250.3)
  %tobool25.not.3 = icmp eq i8 %xor1250.3, 0
  br i1 %tobool25.not.3, label %for.cond.3, label %for.cond.2.check_failed.critedge_crit_edge

for.cond.2.check_failed.critedge_crit_edge:       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr i8, ptr %_match1.sroa.0.0.copyload, i32 4
  %56 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.4, align 1
  %arrayidx11.4 = getelementptr i8, ptr %_match1.sroa.5.0.copyload, i32 4
  %58 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx11.4, align 1
  %arrayidx14.4 = getelementptr i8, ptr %_match2.sroa.5.0.copyload, i32 4
  %60 = ptrtoint ptr %arrayidx14.4 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx14.4, align 1
  %arrayidx17.4 = getelementptr i8, ptr %_match2.sroa.0.0.copyload, i32 4
  %62 = ptrtoint ptr %arrayidx17.4 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx17.4, align 1
  %and1312461252.4 = xor i8 %63, %57
  %and1612471251.4 = and i8 %61, %59
  %xor1250.4 = and i8 %and1612471251.4, %and1312461252.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor1250.4)
  %tobool25.not.4 = icmp eq i8 %xor1250.4, 0
  br i1 %tobool25.not.4, label %for.cond.4, label %for.cond.3.check_failed.critedge_crit_edge

for.cond.3.check_failed.critedge_crit_edge:       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr i8, ptr %_match1.sroa.0.0.copyload, i32 5
  %64 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.5, align 1
  %arrayidx11.5 = getelementptr i8, ptr %_match1.sroa.5.0.copyload, i32 5
  %66 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx11.5, align 1
  %arrayidx14.5 = getelementptr i8, ptr %_match2.sroa.5.0.copyload, i32 5
  %68 = ptrtoint ptr %arrayidx14.5 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx14.5, align 1
  %arrayidx17.5 = getelementptr i8, ptr %_match2.sroa.0.0.copyload, i32 5
  %70 = ptrtoint ptr %arrayidx17.5 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx17.5, align 1
  %and1312461252.5 = xor i8 %71, %65
  %and1612471251.5 = and i8 %69, %67
  %xor1250.5 = and i8 %and1612471251.5, %and1312461252.5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor1250.5)
  %tobool25.not.5 = icmp eq i8 %xor1250.5, 0
  br i1 %tobool25.not.5, label %for.cond.5, label %for.cond.4.check_failed.critedge_crit_edge

for.cond.4.check_failed.critedge_crit_edge:       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx.6 = getelementptr i8, ptr %_match1.sroa.0.0.copyload, i32 6
  %72 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.6, align 1
  %arrayidx11.6 = getelementptr i8, ptr %_match1.sroa.5.0.copyload, i32 6
  %74 = ptrtoint ptr %arrayidx11.6 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx11.6, align 1
  %arrayidx14.6 = getelementptr i8, ptr %_match2.sroa.5.0.copyload, i32 6
  %76 = ptrtoint ptr %arrayidx14.6 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx14.6, align 1
  %arrayidx17.6 = getelementptr i8, ptr %_match2.sroa.0.0.copyload, i32 6
  %78 = ptrtoint ptr %arrayidx17.6 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx17.6, align 1
  %and1312461252.6 = xor i8 %79, %73
  %and1612471251.6 = and i8 %77, %75
  %xor1250.6 = and i8 %and1612471251.6, %and1312461252.6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor1250.6)
  %tobool25.not.6 = icmp eq i8 %xor1250.6, 0
  br i1 %tobool25.not.6, label %for.cond.6, label %for.cond.5.check_failed.critedge_crit_edge

for.cond.5.check_failed.critedge_crit_edge:       ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx.7 = getelementptr i8, ptr %_match1.sroa.0.0.copyload, i32 7
  %80 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.7, align 1
  %arrayidx11.7 = getelementptr i8, ptr %_match1.sroa.5.0.copyload, i32 7
  %82 = ptrtoint ptr %arrayidx11.7 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx11.7, align 1
  %arrayidx14.7 = getelementptr i8, ptr %_match2.sroa.5.0.copyload, i32 7
  %84 = ptrtoint ptr %arrayidx14.7 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx14.7, align 1
  %arrayidx17.7 = getelementptr i8, ptr %_match2.sroa.0.0.copyload, i32 7
  %86 = ptrtoint ptr %arrayidx17.7 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx17.7, align 1
  %and1312461252.7 = xor i8 %87, %81
  %and1612471251.7 = and i8 %85, %83
  %xor1250.7 = and i8 %and1612471251.7, %and1312461252.7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor1250.7)
  %tobool25.not.7 = icmp eq i8 %xor1250.7, 0
  br i1 %tobool25.not.7, label %for.cond.7, label %for.cond.6.check_failed.critedge_crit_edge

for.cond.6.check_failed.critedge_crit_edge:       ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge

for.cond.7:                                       ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match26) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1) #12
  br label %if.end31

if.end31:                                         ; preds = %for.cond.7, %entry.if.end31_crit_edge
  %and32 = and i32 %and, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end89_crit_edge, label %if.then34

if.end31.if.end89_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

if.then34:                                        ; preds = %if.end31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match135) #12
  %88 = ptrtoint ptr %match135 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 -1 to ptr), ptr %match135, align 4, !annotation !85
  %89 = getelementptr inbounds %struct.flow_match_basic, ptr %match135, i32 0, i32 1
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 -1 to ptr), ptr %89, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match236) #12
  %91 = ptrtoint ptr %match236 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 -1 to ptr), ptr %match236, align 4, !annotation !85
  %92 = getelementptr inbounds %struct.flow_match_basic, ptr %match236, i32 0, i32 1
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr inttoptr (i32 -1 to ptr), ptr %92, align 4, !annotation !85
  %94 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rule, align 4
  call void @flow_rule_match_basic(ptr noundef %95, ptr noundef nonnull %match135) #12
  %96 = ptrtoint ptr %rule1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rule1, align 4
  call void @flow_rule_match_basic(ptr noundef %97, ptr noundef nonnull %match236) #12
  %98 = ptrtoint ptr %match135 to i32
  call void @__asan_load4_noabort(i32 %98)
  %_match140.sroa.0.0.copyload = load ptr, ptr %match135, align 4
  %99 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %99)
  %_match140.sroa.5.0.copyload = load ptr, ptr %89, align 4
  %100 = ptrtoint ptr %match236 to i32
  call void @__asan_load4_noabort(i32 %100)
  %_match241.sroa.0.0.copyload = load ptr, ptr %match236, align 4
  %101 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %101)
  %_match241.sroa.5.0.copyload = load ptr, ptr %92, align 4
  %102 = ptrtoint ptr %_match140.sroa.0.0.copyload to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %_match140.sroa.0.0.copyload, align 1
  %104 = ptrtoint ptr %_match140.sroa.5.0.copyload to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %_match140.sroa.5.0.copyload, align 1
  %106 = ptrtoint ptr %_match241.sroa.5.0.copyload to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %_match241.sroa.5.0.copyload, align 1
  %108 = ptrtoint ptr %_match241.sroa.0.0.copyload to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %_match241.sroa.0.0.copyload, align 1
  %and6112391245 = xor i8 %109, %103
  %and6412401244 = and i8 %107, %105
  %xor731243 = and i8 %and6412401244, %and6112391245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor731243)
  %tobool74.not = icmp eq i8 %xor731243, 0
  br i1 %tobool74.not, label %for.cond53, label %if.then34.check_failed.critedge1268_crit_edge

if.then34.check_failed.critedge1268_crit_edge:    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1268

for.cond53:                                       ; preds = %if.then34
  %arrayidx57.1 = getelementptr i8, ptr %_match140.sroa.0.0.copyload, i32 1
  %110 = ptrtoint ptr %arrayidx57.1 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx57.1, align 1
  %arrayidx59.1 = getelementptr i8, ptr %_match140.sroa.5.0.copyload, i32 1
  %112 = ptrtoint ptr %arrayidx59.1 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx59.1, align 1
  %arrayidx62.1 = getelementptr i8, ptr %_match241.sroa.5.0.copyload, i32 1
  %114 = ptrtoint ptr %arrayidx62.1 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx62.1, align 1
  %arrayidx65.1 = getelementptr i8, ptr %_match241.sroa.0.0.copyload, i32 1
  %116 = ptrtoint ptr %arrayidx65.1 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx65.1, align 1
  %and6112391245.1 = xor i8 %117, %111
  %and6412401244.1 = and i8 %115, %113
  %xor731243.1 = and i8 %and6412401244.1, %and6112391245.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor731243.1)
  %tobool74.not.1 = icmp eq i8 %xor731243.1, 0
  br i1 %tobool74.not.1, label %for.cond53.1, label %for.cond53.check_failed.critedge1268_crit_edge

for.cond53.check_failed.critedge1268_crit_edge:   ; preds = %for.cond53
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1268

for.cond53.1:                                     ; preds = %for.cond53
  %arrayidx57.2 = getelementptr i8, ptr %_match140.sroa.0.0.copyload, i32 2
  %118 = ptrtoint ptr %arrayidx57.2 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx57.2, align 1
  %arrayidx59.2 = getelementptr i8, ptr %_match140.sroa.5.0.copyload, i32 2
  %120 = ptrtoint ptr %arrayidx59.2 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx59.2, align 1
  %arrayidx62.2 = getelementptr i8, ptr %_match241.sroa.5.0.copyload, i32 2
  %122 = ptrtoint ptr %arrayidx62.2 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx62.2, align 1
  %arrayidx65.2 = getelementptr i8, ptr %_match241.sroa.0.0.copyload, i32 2
  %124 = ptrtoint ptr %arrayidx65.2 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx65.2, align 1
  %and6112391245.2 = xor i8 %125, %119
  %and6412401244.2 = and i8 %123, %121
  %xor731243.2 = and i8 %and6412401244.2, %and6112391245.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor731243.2)
  %tobool74.not.2 = icmp eq i8 %xor731243.2, 0
  br i1 %tobool74.not.2, label %for.cond53.2, label %for.cond53.1.check_failed.critedge1268_crit_edge

for.cond53.1.check_failed.critedge1268_crit_edge: ; preds = %for.cond53.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1268

for.cond53.2:                                     ; preds = %for.cond53.1
  %arrayidx57.3 = getelementptr i8, ptr %_match140.sroa.0.0.copyload, i32 3
  %126 = ptrtoint ptr %arrayidx57.3 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx57.3, align 1
  %arrayidx59.3 = getelementptr i8, ptr %_match140.sroa.5.0.copyload, i32 3
  %128 = ptrtoint ptr %arrayidx59.3 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx59.3, align 1
  %arrayidx62.3 = getelementptr i8, ptr %_match241.sroa.5.0.copyload, i32 3
  %130 = ptrtoint ptr %arrayidx62.3 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx62.3, align 1
  %arrayidx65.3 = getelementptr i8, ptr %_match241.sroa.0.0.copyload, i32 3
  %132 = ptrtoint ptr %arrayidx65.3 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx65.3, align 1
  %and6112391245.3 = xor i8 %133, %127
  %and6412401244.3 = and i8 %131, %129
  %xor731243.3 = and i8 %and6412401244.3, %and6112391245.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor731243.3)
  %tobool74.not.3 = icmp eq i8 %xor731243.3, 0
  br i1 %tobool74.not.3, label %for.cond53.3, label %for.cond53.2.check_failed.critedge1268_crit_edge

for.cond53.2.check_failed.critedge1268_crit_edge: ; preds = %for.cond53.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1268

for.cond53.3:                                     ; preds = %for.cond53.2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match236) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match135) #12
  br label %if.end89

if.end89:                                         ; preds = %for.cond53.3, %if.end31.if.end89_crit_edge
  %and90 = and i32 %and, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end89.if.end147_crit_edge, label %if.then92

if.end89.if.end147_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147

if.then92:                                        ; preds = %if.end89
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match193) #12
  %134 = ptrtoint ptr %match193 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr inttoptr (i32 -1 to ptr), ptr %match193, align 4, !annotation !85
  %135 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %match193, i32 0, i32 1
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr inttoptr (i32 -1 to ptr), ptr %135, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match294) #12
  %137 = ptrtoint ptr %match294 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr inttoptr (i32 -1 to ptr), ptr %match294, align 4, !annotation !85
  %138 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %match294, i32 0, i32 1
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr inttoptr (i32 -1 to ptr), ptr %138, align 4, !annotation !85
  %140 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rule, align 4
  call void @flow_rule_match_ipv4_addrs(ptr noundef %141, ptr noundef nonnull %match193) #12
  %142 = ptrtoint ptr %rule1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rule1, align 4
  call void @flow_rule_match_ipv4_addrs(ptr noundef %143, ptr noundef nonnull %match294) #12
  %144 = ptrtoint ptr %match193 to i32
  call void @__asan_load4_noabort(i32 %144)
  %_match198.sroa.0.0.copyload = load ptr, ptr %match193, align 4
  %145 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %145)
  %_match198.sroa.5.0.copyload = load ptr, ptr %135, align 4
  %146 = ptrtoint ptr %match294 to i32
  call void @__asan_load4_noabort(i32 %146)
  %_match299.sroa.0.0.copyload = load ptr, ptr %match294, align 4
  %147 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %147)
  %_match299.sroa.5.0.copyload = load ptr, ptr %138, align 4
  %148 = ptrtoint ptr %_match198.sroa.0.0.copyload to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %_match198.sroa.0.0.copyload, align 1
  %150 = ptrtoint ptr %_match198.sroa.5.0.copyload to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %_match198.sroa.5.0.copyload, align 1
  %152 = ptrtoint ptr %_match299.sroa.5.0.copyload to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %_match299.sroa.5.0.copyload, align 1
  %154 = ptrtoint ptr %_match299.sroa.0.0.copyload to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %_match299.sroa.0.0.copyload, align 1
  %and11912321238 = xor i8 %155, %149
  %and12212331237 = and i8 %153, %151
  %xor1311236 = and i8 %and12212331237, %and11912321238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor1311236)
  %tobool132.not = icmp eq i8 %xor1311236, 0
  br i1 %tobool132.not, label %for.cond111, label %if.then92.check_failed.critedge1269_crit_edge

if.then92.check_failed.critedge1269_crit_edge:    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1269

for.cond111:                                      ; preds = %if.then92
  %arrayidx115.1 = getelementptr i8, ptr %_match198.sroa.0.0.copyload, i32 1
  %156 = ptrtoint ptr %arrayidx115.1 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx115.1, align 1
  %arrayidx117.1 = getelementptr i8, ptr %_match198.sroa.5.0.copyload, i32 1
  %158 = ptrtoint ptr %arrayidx117.1 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx117.1, align 1
  %arrayidx120.1 = getelementptr i8, ptr %_match299.sroa.5.0.copyload, i32 1
  %160 = ptrtoint ptr %arrayidx120.1 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx120.1, align 1
  %arrayidx123.1 = getelementptr i8, ptr %_match299.sroa.0.0.copyload, i32 1
  %162 = ptrtoint ptr %arrayidx123.1 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx123.1, align 1
  %and11912321238.1 = xor i8 %163, %157
  %and12212331237.1 = and i8 %161, %159
  %xor1311236.1 = and i8 %and12212331237.1, %and11912321238.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor1311236.1)
  %tobool132.not.1 = icmp eq i8 %xor1311236.1, 0
  br i1 %tobool132.not.1, label %for.cond111.1, label %for.cond111.check_failed.critedge1269_crit_edge

for.cond111.check_failed.critedge1269_crit_edge:  ; preds = %for.cond111
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1269

for.cond111.1:                                    ; preds = %for.cond111
  %arrayidx115.2 = getelementptr i8, ptr %_match198.sroa.0.0.copyload, i32 2
  %164 = ptrtoint ptr %arrayidx115.2 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx115.2, align 1
  %arrayidx117.2 = getelementptr i8, ptr %_match198.sroa.5.0.copyload, i32 2
  %166 = ptrtoint ptr %arrayidx117.2 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx117.2, align 1
  %arrayidx120.2 = getelementptr i8, ptr %_match299.sroa.5.0.copyload, i32 2
  %168 = ptrtoint ptr %arrayidx120.2 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx120.2, align 1
  %arrayidx123.2 = getelementptr i8, ptr %_match299.sroa.0.0.copyload, i32 2
  %170 = ptrtoint ptr %arrayidx123.2 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx123.2, align 1
  %and11912321238.2 = xor i8 %171, %165
  %and12212331237.2 = and i8 %169, %167
  %xor1311236.2 = and i8 %and12212331237.2, %and11912321238.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor1311236.2)
  %tobool132.not.2 = icmp eq i8 %xor1311236.2, 0
  br i1 %tobool132.not.2, label %for.cond111.2, label %for.cond111.1.check_failed.critedge1269_crit_edge

for.cond111.1.check_failed.critedge1269_crit_edge: ; preds = %for.cond111.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1269

for.cond111.2:                                    ; preds = %for.cond111.1
  %arrayidx115.3 = getelementptr i8, ptr %_match198.sroa.0.0.copyload, i32 3
  %172 = ptrtoint ptr %arrayidx115.3 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx115.3, align 1
  %arrayidx117.3 = getelementptr i8, ptr %_match198.sroa.5.0.copyload, i32 3
  %174 = ptrtoint ptr %arrayidx117.3 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx117.3, align 1
  %arrayidx120.3 = getelementptr i8, ptr %_match299.sroa.5.0.copyload, i32 3
  %176 = ptrtoint ptr %arrayidx120.3 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx120.3, align 1
  %arrayidx123.3 = getelementptr i8, ptr %_match299.sroa.0.0.copyload, i32 3
  %178 = ptrtoint ptr %arrayidx123.3 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx123.3, align 1
  %and11912321238.3 = xor i8 %179, %173
  %and12212331237.3 = and i8 %177, %175
  %xor1311236.3 = and i8 %and12212331237.3, %and11912321238.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor1311236.3)
  %tobool132.not.3 = icmp eq i8 %xor1311236.3, 0
  br i1 %tobool132.not.3, label %for.cond111.3, label %for.cond111.2.check_failed.critedge1269_crit_edge

for.cond111.2.check_failed.critedge1269_crit_edge: ; preds = %for.cond111.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1269

for.cond111.3:                                    ; preds = %for.cond111.2
  %arrayidx115.4 = getelementptr i8, ptr %_match198.sroa.0.0.copyload, i32 4
  %180 = ptrtoint ptr %arrayidx115.4 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx115.4, align 1
  %arrayidx117.4 = getelementptr i8, ptr %_match198.sroa.5.0.copyload, i32 4
  %182 = ptrtoint ptr %arrayidx117.4 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx117.4, align 1
  %arrayidx120.4 = getelementptr i8, ptr %_match299.sroa.5.0.copyload, i32 4
  %184 = ptrtoint ptr %arrayidx120.4 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx120.4, align 1
  %arrayidx123.4 = getelementptr i8, ptr %_match299.sroa.0.0.copyload, i32 4
  %186 = ptrtoint ptr %arrayidx123.4 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx123.4, align 1
  %and11912321238.4 = xor i8 %187, %181
  %and12212331237.4 = and i8 %185, %183
  %xor1311236.4 = and i8 %and12212331237.4, %and11912321238.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor1311236.4)
  %tobool132.not.4 = icmp eq i8 %xor1311236.4, 0
  br i1 %tobool132.not.4, label %for.cond111.4, label %for.cond111.3.check_failed.critedge1269_crit_edge

for.cond111.3.check_failed.critedge1269_crit_edge: ; preds = %for.cond111.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1269

for.cond111.4:                                    ; preds = %for.cond111.3
  %arrayidx115.5 = getelementptr i8, ptr %_match198.sroa.0.0.copyload, i32 5
  %188 = ptrtoint ptr %arrayidx115.5 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx115.5, align 1
  %arrayidx117.5 = getelementptr i8, ptr %_match198.sroa.5.0.copyload, i32 5
  %190 = ptrtoint ptr %arrayidx117.5 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx117.5, align 1
  %arrayidx120.5 = getelementptr i8, ptr %_match299.sroa.5.0.copyload, i32 5
  %192 = ptrtoint ptr %arrayidx120.5 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx120.5, align 1
  %arrayidx123.5 = getelementptr i8, ptr %_match299.sroa.0.0.copyload, i32 5
  %194 = ptrtoint ptr %arrayidx123.5 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx123.5, align 1
  %and11912321238.5 = xor i8 %195, %189
  %and12212331237.5 = and i8 %193, %191
  %xor1311236.5 = and i8 %and12212331237.5, %and11912321238.5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor1311236.5)
  %tobool132.not.5 = icmp eq i8 %xor1311236.5, 0
  br i1 %tobool132.not.5, label %for.cond111.5, label %for.cond111.4.check_failed.critedge1269_crit_edge

for.cond111.4.check_failed.critedge1269_crit_edge: ; preds = %for.cond111.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1269

for.cond111.5:                                    ; preds = %for.cond111.4
  %arrayidx115.6 = getelementptr i8, ptr %_match198.sroa.0.0.copyload, i32 6
  %196 = ptrtoint ptr %arrayidx115.6 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx115.6, align 1
  %arrayidx117.6 = getelementptr i8, ptr %_match198.sroa.5.0.copyload, i32 6
  %198 = ptrtoint ptr %arrayidx117.6 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx117.6, align 1
  %arrayidx120.6 = getelementptr i8, ptr %_match299.sroa.5.0.copyload, i32 6
  %200 = ptrtoint ptr %arrayidx120.6 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx120.6, align 1
  %arrayidx123.6 = getelementptr i8, ptr %_match299.sroa.0.0.copyload, i32 6
  %202 = ptrtoint ptr %arrayidx123.6 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx123.6, align 1
  %and11912321238.6 = xor i8 %203, %197
  %and12212331237.6 = and i8 %201, %199
  %xor1311236.6 = and i8 %and12212331237.6, %and11912321238.6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor1311236.6)
  %tobool132.not.6 = icmp eq i8 %xor1311236.6, 0
  br i1 %tobool132.not.6, label %for.cond111.6, label %for.cond111.5.check_failed.critedge1269_crit_edge

for.cond111.5.check_failed.critedge1269_crit_edge: ; preds = %for.cond111.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1269

for.cond111.6:                                    ; preds = %for.cond111.5
  %arrayidx115.7 = getelementptr i8, ptr %_match198.sroa.0.0.copyload, i32 7
  %204 = ptrtoint ptr %arrayidx115.7 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx115.7, align 1
  %arrayidx117.7 = getelementptr i8, ptr %_match198.sroa.5.0.copyload, i32 7
  %206 = ptrtoint ptr %arrayidx117.7 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx117.7, align 1
  %arrayidx120.7 = getelementptr i8, ptr %_match299.sroa.5.0.copyload, i32 7
  %208 = ptrtoint ptr %arrayidx120.7 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx120.7, align 1
  %arrayidx123.7 = getelementptr i8, ptr %_match299.sroa.0.0.copyload, i32 7
  %210 = ptrtoint ptr %arrayidx123.7 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx123.7, align 1
  %and11912321238.7 = xor i8 %211, %205
  %and12212331237.7 = and i8 %209, %207
  %xor1311236.7 = and i8 %and12212331237.7, %and11912321238.7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor1311236.7)
  %tobool132.not.7 = icmp eq i8 %xor1311236.7, 0
  br i1 %tobool132.not.7, label %for.cond111.7, label %for.cond111.6.check_failed.critedge1269_crit_edge

for.cond111.6.check_failed.critedge1269_crit_edge: ; preds = %for.cond111.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1269

for.cond111.7:                                    ; preds = %for.cond111.6
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match294) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match193) #12
  br label %if.end147

if.end147:                                        ; preds = %for.cond111.7, %if.end89.if.end147_crit_edge
  %and148 = and i32 %and, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %if.end147.if.end205_crit_edge, label %if.then150

if.end147.if.end205_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end205

if.then150:                                       ; preds = %if.end147
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match1151) #12
  %212 = ptrtoint ptr %match1151 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr inttoptr (i32 -1 to ptr), ptr %match1151, align 4, !annotation !85
  %213 = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %match1151, i32 0, i32 1
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr inttoptr (i32 -1 to ptr), ptr %213, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match2152) #12
  %215 = ptrtoint ptr %match2152 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr inttoptr (i32 -1 to ptr), ptr %match2152, align 4, !annotation !85
  %216 = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %match2152, i32 0, i32 1
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr inttoptr (i32 -1 to ptr), ptr %216, align 4, !annotation !85
  %218 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %rule, align 4
  call void @flow_rule_match_ipv6_addrs(ptr noundef %219, ptr noundef nonnull %match1151) #12
  %220 = ptrtoint ptr %rule1 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %rule1, align 4
  call void @flow_rule_match_ipv6_addrs(ptr noundef %221, ptr noundef nonnull %match2152) #12
  %222 = ptrtoint ptr %match1151 to i32
  call void @__asan_load4_noabort(i32 %222)
  %_match1156.sroa.0.0.copyload = load ptr, ptr %match1151, align 4
  %223 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %223)
  %_match1156.sroa.5.0.copyload = load ptr, ptr %213, align 4
  %224 = ptrtoint ptr %match2152 to i32
  call void @__asan_load4_noabort(i32 %224)
  %_match2157.sroa.0.0.copyload = load ptr, ptr %match2152, align 4
  %225 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %225)
  %_match2157.sroa.5.0.copyload = load ptr, ptr %216, align 4
  br label %for.body172

for.cond169:                                      ; preds = %for.body172
  %inc194 = add nuw nsw i32 %i159.01286, 1
  %exitcond.not = icmp eq i32 %inc194, 32
  br i1 %exitcond.not, label %if.end205.critedge, label %for.cond169.for.body172_crit_edge

for.cond169.for.body172_crit_edge:                ; preds = %for.cond169
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body172

for.body172:                                      ; preds = %for.cond169.for.body172_crit_edge, %if.then150
  %i159.01286 = phi i32 [ 0, %if.then150 ], [ %inc194, %for.cond169.for.body172_crit_edge ]
  %arrayidx173 = getelementptr i8, ptr %_match1156.sroa.0.0.copyload, i32 %i159.01286
  %226 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx173, align 1
  %arrayidx175 = getelementptr i8, ptr %_match1156.sroa.5.0.copyload, i32 %i159.01286
  %228 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx175, align 1
  %arrayidx178 = getelementptr i8, ptr %_match2157.sroa.5.0.copyload, i32 %i159.01286
  %230 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %arrayidx178, align 1
  %arrayidx181 = getelementptr i8, ptr %_match2157.sroa.0.0.copyload, i32 %i159.01286
  %232 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx181, align 1
  %and17712251231 = xor i8 %233, %227
  %and18012261230 = and i8 %231, %229
  %xor1891229 = and i8 %and18012261230, %and17712251231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor1891229)
  %tobool190.not = icmp eq i8 %xor1891229, 0
  br i1 %tobool190.not, label %for.cond169, label %check_failed.critedge1270

if.end205.critedge:                               ; preds = %for.cond169
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2152) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1151) #12
  br label %if.end205

if.end205:                                        ; preds = %if.end205.critedge, %if.end147.if.end205_crit_edge
  %and206 = and i32 %and, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and206)
  %tobool207.not = icmp eq i32 %and206, 0
  br i1 %tobool207.not, label %if.end205.if.end263_crit_edge, label %if.then208

if.end205.if.end263_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end263

if.then208:                                       ; preds = %if.end205
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match1209) #12
  %234 = ptrtoint ptr %match1209 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr inttoptr (i32 -1 to ptr), ptr %match1209, align 4, !annotation !85
  %235 = getelementptr inbounds %struct.flow_match_ports, ptr %match1209, i32 0, i32 1
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr inttoptr (i32 -1 to ptr), ptr %235, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match2210) #12
  %237 = ptrtoint ptr %match2210 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr inttoptr (i32 -1 to ptr), ptr %match2210, align 4, !annotation !85
  %238 = getelementptr inbounds %struct.flow_match_ports, ptr %match2210, i32 0, i32 1
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr inttoptr (i32 -1 to ptr), ptr %238, align 4, !annotation !85
  %240 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %rule, align 4
  call void @flow_rule_match_ports(ptr noundef %241, ptr noundef nonnull %match1209) #12
  %242 = ptrtoint ptr %rule1 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %rule1, align 4
  call void @flow_rule_match_ports(ptr noundef %243, ptr noundef nonnull %match2210) #12
  %244 = ptrtoint ptr %match1209 to i32
  call void @__asan_load4_noabort(i32 %244)
  %_match1214.sroa.0.0.copyload = load ptr, ptr %match1209, align 4
  %245 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %245)
  %_match1214.sroa.5.0.copyload = load ptr, ptr %235, align 4
  %246 = ptrtoint ptr %match2210 to i32
  call void @__asan_load4_noabort(i32 %246)
  %_match2215.sroa.0.0.copyload = load ptr, ptr %match2210, align 4
  %247 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %247)
  %_match2215.sroa.5.0.copyload = load ptr, ptr %238, align 4
  %248 = ptrtoint ptr %_match1214.sroa.0.0.copyload to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %_match1214.sroa.0.0.copyload, align 1
  %250 = ptrtoint ptr %_match1214.sroa.5.0.copyload to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %_match1214.sroa.5.0.copyload, align 1
  %252 = ptrtoint ptr %_match2215.sroa.5.0.copyload to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %_match2215.sroa.5.0.copyload, align 1
  %254 = ptrtoint ptr %_match2215.sroa.0.0.copyload to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %_match2215.sroa.0.0.copyload, align 1
  %and23512181224 = xor i8 %255, %249
  %and23812191223 = and i8 %253, %251
  %xor2471222 = and i8 %and23812191223, %and23512181224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor2471222)
  %tobool248.not = icmp eq i8 %xor2471222, 0
  br i1 %tobool248.not, label %for.cond227, label %if.then208.check_failed.critedge1271_crit_edge

if.then208.check_failed.critedge1271_crit_edge:   ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1271

for.cond227:                                      ; preds = %if.then208
  %arrayidx231.1 = getelementptr i8, ptr %_match1214.sroa.0.0.copyload, i32 1
  %256 = ptrtoint ptr %arrayidx231.1 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %arrayidx231.1, align 1
  %arrayidx233.1 = getelementptr i8, ptr %_match1214.sroa.5.0.copyload, i32 1
  %258 = ptrtoint ptr %arrayidx233.1 to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %arrayidx233.1, align 1
  %arrayidx236.1 = getelementptr i8, ptr %_match2215.sroa.5.0.copyload, i32 1
  %260 = ptrtoint ptr %arrayidx236.1 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %arrayidx236.1, align 1
  %arrayidx239.1 = getelementptr i8, ptr %_match2215.sroa.0.0.copyload, i32 1
  %262 = ptrtoint ptr %arrayidx239.1 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %arrayidx239.1, align 1
  %and23512181224.1 = xor i8 %263, %257
  %and23812191223.1 = and i8 %261, %259
  %xor2471222.1 = and i8 %and23812191223.1, %and23512181224.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor2471222.1)
  %tobool248.not.1 = icmp eq i8 %xor2471222.1, 0
  br i1 %tobool248.not.1, label %for.cond227.1, label %for.cond227.check_failed.critedge1271_crit_edge

for.cond227.check_failed.critedge1271_crit_edge:  ; preds = %for.cond227
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1271

for.cond227.1:                                    ; preds = %for.cond227
  %arrayidx231.2 = getelementptr i8, ptr %_match1214.sroa.0.0.copyload, i32 2
  %264 = ptrtoint ptr %arrayidx231.2 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %arrayidx231.2, align 1
  %arrayidx233.2 = getelementptr i8, ptr %_match1214.sroa.5.0.copyload, i32 2
  %266 = ptrtoint ptr %arrayidx233.2 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %arrayidx233.2, align 1
  %arrayidx236.2 = getelementptr i8, ptr %_match2215.sroa.5.0.copyload, i32 2
  %268 = ptrtoint ptr %arrayidx236.2 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %arrayidx236.2, align 1
  %arrayidx239.2 = getelementptr i8, ptr %_match2215.sroa.0.0.copyload, i32 2
  %270 = ptrtoint ptr %arrayidx239.2 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %arrayidx239.2, align 1
  %and23512181224.2 = xor i8 %271, %265
  %and23812191223.2 = and i8 %269, %267
  %xor2471222.2 = and i8 %and23812191223.2, %and23512181224.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor2471222.2)
  %tobool248.not.2 = icmp eq i8 %xor2471222.2, 0
  br i1 %tobool248.not.2, label %for.cond227.2, label %for.cond227.1.check_failed.critedge1271_crit_edge

for.cond227.1.check_failed.critedge1271_crit_edge: ; preds = %for.cond227.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1271

for.cond227.2:                                    ; preds = %for.cond227.1
  %arrayidx231.3 = getelementptr i8, ptr %_match1214.sroa.0.0.copyload, i32 3
  %272 = ptrtoint ptr %arrayidx231.3 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %arrayidx231.3, align 1
  %arrayidx233.3 = getelementptr i8, ptr %_match1214.sroa.5.0.copyload, i32 3
  %274 = ptrtoint ptr %arrayidx233.3 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %arrayidx233.3, align 1
  %arrayidx236.3 = getelementptr i8, ptr %_match2215.sroa.5.0.copyload, i32 3
  %276 = ptrtoint ptr %arrayidx236.3 to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %arrayidx236.3, align 1
  %arrayidx239.3 = getelementptr i8, ptr %_match2215.sroa.0.0.copyload, i32 3
  %278 = ptrtoint ptr %arrayidx239.3 to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %arrayidx239.3, align 1
  %and23512181224.3 = xor i8 %279, %273
  %and23812191223.3 = and i8 %277, %275
  %xor2471222.3 = and i8 %and23812191223.3, %and23512181224.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor2471222.3)
  %tobool248.not.3 = icmp eq i8 %xor2471222.3, 0
  br i1 %tobool248.not.3, label %for.cond227.3, label %for.cond227.2.check_failed.critedge1271_crit_edge

for.cond227.2.check_failed.critedge1271_crit_edge: ; preds = %for.cond227.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1271

for.cond227.3:                                    ; preds = %for.cond227.2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2210) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1209) #12
  br label %if.end263

if.end263:                                        ; preds = %for.cond227.3, %if.end205.if.end263_crit_edge
  %and264 = and i32 %and, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and264)
  %tobool265.not = icmp eq i32 %and264, 0
  br i1 %tobool265.not, label %if.end263.if.end321_crit_edge, label %if.then266

if.end263.if.end321_crit_edge:                    ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end321

if.then266:                                       ; preds = %if.end263
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match1267) #12
  %280 = ptrtoint ptr %match1267 to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr inttoptr (i32 -1 to ptr), ptr %match1267, align 4, !annotation !85
  %281 = getelementptr inbounds %struct.flow_match_eth_addrs, ptr %match1267, i32 0, i32 1
  %282 = ptrtoint ptr %281 to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr inttoptr (i32 -1 to ptr), ptr %281, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match2268) #12
  %283 = ptrtoint ptr %match2268 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr inttoptr (i32 -1 to ptr), ptr %match2268, align 4, !annotation !85
  %284 = getelementptr inbounds %struct.flow_match_eth_addrs, ptr %match2268, i32 0, i32 1
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr inttoptr (i32 -1 to ptr), ptr %284, align 4, !annotation !85
  %286 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %rule, align 4
  call void @flow_rule_match_eth_addrs(ptr noundef %287, ptr noundef nonnull %match1267) #12
  %288 = ptrtoint ptr %rule1 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %rule1, align 4
  call void @flow_rule_match_eth_addrs(ptr noundef %289, ptr noundef nonnull %match2268) #12
  %290 = ptrtoint ptr %match1267 to i32
  call void @__asan_load4_noabort(i32 %290)
  %_match1272.sroa.0.0.copyload = load ptr, ptr %match1267, align 4
  %291 = ptrtoint ptr %281 to i32
  call void @__asan_load4_noabort(i32 %291)
  %_match1272.sroa.5.0.copyload = load ptr, ptr %281, align 4
  %292 = ptrtoint ptr %match2268 to i32
  call void @__asan_load4_noabort(i32 %292)
  %_match2273.sroa.0.0.copyload = load ptr, ptr %match2268, align 4
  %293 = ptrtoint ptr %284 to i32
  call void @__asan_load4_noabort(i32 %293)
  %_match2273.sroa.5.0.copyload = load ptr, ptr %284, align 4
  %294 = ptrtoint ptr %_match1272.sroa.0.0.copyload to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %_match1272.sroa.0.0.copyload, align 1
  %296 = ptrtoint ptr %_match1272.sroa.5.0.copyload to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %_match1272.sroa.5.0.copyload, align 1
  %298 = ptrtoint ptr %_match2273.sroa.5.0.copyload to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %_match2273.sroa.5.0.copyload, align 1
  %300 = ptrtoint ptr %_match2273.sroa.0.0.copyload to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %_match2273.sroa.0.0.copyload, align 1
  %and29312111217 = xor i8 %301, %295
  %and29612121216 = and i8 %299, %297
  %xor3051215 = and i8 %and29612121216, %and29312111217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor3051215)
  %tobool306.not = icmp eq i8 %xor3051215, 0
  br i1 %tobool306.not, label %for.cond285, label %if.then266.check_failed.critedge1272_crit_edge

if.then266.check_failed.critedge1272_crit_edge:   ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1272

for.cond285:                                      ; preds = %if.then266
  %arrayidx289.1 = getelementptr i8, ptr %_match1272.sroa.0.0.copyload, i32 1
  %302 = ptrtoint ptr %arrayidx289.1 to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %arrayidx289.1, align 1
  %arrayidx291.1 = getelementptr i8, ptr %_match1272.sroa.5.0.copyload, i32 1
  %304 = ptrtoint ptr %arrayidx291.1 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %arrayidx291.1, align 1
  %arrayidx294.1 = getelementptr i8, ptr %_match2273.sroa.5.0.copyload, i32 1
  %306 = ptrtoint ptr %arrayidx294.1 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %arrayidx294.1, align 1
  %arrayidx297.1 = getelementptr i8, ptr %_match2273.sroa.0.0.copyload, i32 1
  %308 = ptrtoint ptr %arrayidx297.1 to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %arrayidx297.1, align 1
  %and29312111217.1 = xor i8 %309, %303
  %and29612121216.1 = and i8 %307, %305
  %xor3051215.1 = and i8 %and29612121216.1, %and29312111217.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor3051215.1)
  %tobool306.not.1 = icmp eq i8 %xor3051215.1, 0
  br i1 %tobool306.not.1, label %for.cond285.1, label %for.cond285.check_failed.critedge1272_crit_edge

for.cond285.check_failed.critedge1272_crit_edge:  ; preds = %for.cond285
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1272

for.cond285.1:                                    ; preds = %for.cond285
  %arrayidx289.2 = getelementptr i8, ptr %_match1272.sroa.0.0.copyload, i32 2
  %310 = ptrtoint ptr %arrayidx289.2 to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %arrayidx289.2, align 1
  %arrayidx291.2 = getelementptr i8, ptr %_match1272.sroa.5.0.copyload, i32 2
  %312 = ptrtoint ptr %arrayidx291.2 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %arrayidx291.2, align 1
  %arrayidx294.2 = getelementptr i8, ptr %_match2273.sroa.5.0.copyload, i32 2
  %314 = ptrtoint ptr %arrayidx294.2 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %arrayidx294.2, align 1
  %arrayidx297.2 = getelementptr i8, ptr %_match2273.sroa.0.0.copyload, i32 2
  %316 = ptrtoint ptr %arrayidx297.2 to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %arrayidx297.2, align 1
  %and29312111217.2 = xor i8 %317, %311
  %and29612121216.2 = and i8 %315, %313
  %xor3051215.2 = and i8 %and29612121216.2, %and29312111217.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor3051215.2)
  %tobool306.not.2 = icmp eq i8 %xor3051215.2, 0
  br i1 %tobool306.not.2, label %for.cond285.2, label %for.cond285.1.check_failed.critedge1272_crit_edge

for.cond285.1.check_failed.critedge1272_crit_edge: ; preds = %for.cond285.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1272

for.cond285.2:                                    ; preds = %for.cond285.1
  %arrayidx289.3 = getelementptr i8, ptr %_match1272.sroa.0.0.copyload, i32 3
  %318 = ptrtoint ptr %arrayidx289.3 to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %arrayidx289.3, align 1
  %arrayidx291.3 = getelementptr i8, ptr %_match1272.sroa.5.0.copyload, i32 3
  %320 = ptrtoint ptr %arrayidx291.3 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %arrayidx291.3, align 1
  %arrayidx294.3 = getelementptr i8, ptr %_match2273.sroa.5.0.copyload, i32 3
  %322 = ptrtoint ptr %arrayidx294.3 to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx294.3, align 1
  %arrayidx297.3 = getelementptr i8, ptr %_match2273.sroa.0.0.copyload, i32 3
  %324 = ptrtoint ptr %arrayidx297.3 to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %arrayidx297.3, align 1
  %and29312111217.3 = xor i8 %325, %319
  %and29612121216.3 = and i8 %323, %321
  %xor3051215.3 = and i8 %and29612121216.3, %and29312111217.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor3051215.3)
  %tobool306.not.3 = icmp eq i8 %xor3051215.3, 0
  br i1 %tobool306.not.3, label %for.cond285.3, label %for.cond285.2.check_failed.critedge1272_crit_edge

for.cond285.2.check_failed.critedge1272_crit_edge: ; preds = %for.cond285.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1272

for.cond285.3:                                    ; preds = %for.cond285.2
  %arrayidx289.4 = getelementptr i8, ptr %_match1272.sroa.0.0.copyload, i32 4
  %326 = ptrtoint ptr %arrayidx289.4 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %arrayidx289.4, align 1
  %arrayidx291.4 = getelementptr i8, ptr %_match1272.sroa.5.0.copyload, i32 4
  %328 = ptrtoint ptr %arrayidx291.4 to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %arrayidx291.4, align 1
  %arrayidx294.4 = getelementptr i8, ptr %_match2273.sroa.5.0.copyload, i32 4
  %330 = ptrtoint ptr %arrayidx294.4 to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %arrayidx294.4, align 1
  %arrayidx297.4 = getelementptr i8, ptr %_match2273.sroa.0.0.copyload, i32 4
  %332 = ptrtoint ptr %arrayidx297.4 to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %arrayidx297.4, align 1
  %and29312111217.4 = xor i8 %333, %327
  %and29612121216.4 = and i8 %331, %329
  %xor3051215.4 = and i8 %and29612121216.4, %and29312111217.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor3051215.4)
  %tobool306.not.4 = icmp eq i8 %xor3051215.4, 0
  br i1 %tobool306.not.4, label %for.cond285.4, label %for.cond285.3.check_failed.critedge1272_crit_edge

for.cond285.3.check_failed.critedge1272_crit_edge: ; preds = %for.cond285.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1272

for.cond285.4:                                    ; preds = %for.cond285.3
  %arrayidx289.5 = getelementptr i8, ptr %_match1272.sroa.0.0.copyload, i32 5
  %334 = ptrtoint ptr %arrayidx289.5 to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %arrayidx289.5, align 1
  %arrayidx291.5 = getelementptr i8, ptr %_match1272.sroa.5.0.copyload, i32 5
  %336 = ptrtoint ptr %arrayidx291.5 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %arrayidx291.5, align 1
  %arrayidx294.5 = getelementptr i8, ptr %_match2273.sroa.5.0.copyload, i32 5
  %338 = ptrtoint ptr %arrayidx294.5 to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %arrayidx294.5, align 1
  %arrayidx297.5 = getelementptr i8, ptr %_match2273.sroa.0.0.copyload, i32 5
  %340 = ptrtoint ptr %arrayidx297.5 to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %arrayidx297.5, align 1
  %and29312111217.5 = xor i8 %341, %335
  %and29612121216.5 = and i8 %339, %337
  %xor3051215.5 = and i8 %and29612121216.5, %and29312111217.5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor3051215.5)
  %tobool306.not.5 = icmp eq i8 %xor3051215.5, 0
  br i1 %tobool306.not.5, label %for.cond285.5, label %for.cond285.4.check_failed.critedge1272_crit_edge

for.cond285.4.check_failed.critedge1272_crit_edge: ; preds = %for.cond285.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1272

for.cond285.5:                                    ; preds = %for.cond285.4
  %arrayidx289.6 = getelementptr i8, ptr %_match1272.sroa.0.0.copyload, i32 6
  %342 = ptrtoint ptr %arrayidx289.6 to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %arrayidx289.6, align 1
  %arrayidx291.6 = getelementptr i8, ptr %_match1272.sroa.5.0.copyload, i32 6
  %344 = ptrtoint ptr %arrayidx291.6 to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %arrayidx291.6, align 1
  %arrayidx294.6 = getelementptr i8, ptr %_match2273.sroa.5.0.copyload, i32 6
  %346 = ptrtoint ptr %arrayidx294.6 to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %arrayidx294.6, align 1
  %arrayidx297.6 = getelementptr i8, ptr %_match2273.sroa.0.0.copyload, i32 6
  %348 = ptrtoint ptr %arrayidx297.6 to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %arrayidx297.6, align 1
  %and29312111217.6 = xor i8 %349, %343
  %and29612121216.6 = and i8 %347, %345
  %xor3051215.6 = and i8 %and29612121216.6, %and29312111217.6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor3051215.6)
  %tobool306.not.6 = icmp eq i8 %xor3051215.6, 0
  br i1 %tobool306.not.6, label %for.cond285.6, label %for.cond285.5.check_failed.critedge1272_crit_edge

for.cond285.5.check_failed.critedge1272_crit_edge: ; preds = %for.cond285.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1272

for.cond285.6:                                    ; preds = %for.cond285.5
  %arrayidx289.7 = getelementptr i8, ptr %_match1272.sroa.0.0.copyload, i32 7
  %350 = ptrtoint ptr %arrayidx289.7 to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %arrayidx289.7, align 1
  %arrayidx291.7 = getelementptr i8, ptr %_match1272.sroa.5.0.copyload, i32 7
  %352 = ptrtoint ptr %arrayidx291.7 to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %arrayidx291.7, align 1
  %arrayidx294.7 = getelementptr i8, ptr %_match2273.sroa.5.0.copyload, i32 7
  %354 = ptrtoint ptr %arrayidx294.7 to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %arrayidx294.7, align 1
  %arrayidx297.7 = getelementptr i8, ptr %_match2273.sroa.0.0.copyload, i32 7
  %356 = ptrtoint ptr %arrayidx297.7 to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %arrayidx297.7, align 1
  %and29312111217.7 = xor i8 %357, %351
  %and29612121216.7 = and i8 %355, %353
  %xor3051215.7 = and i8 %and29612121216.7, %and29312111217.7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor3051215.7)
  %tobool306.not.7 = icmp eq i8 %xor3051215.7, 0
  br i1 %tobool306.not.7, label %for.cond285.7, label %for.cond285.6.check_failed.critedge1272_crit_edge

for.cond285.6.check_failed.critedge1272_crit_edge: ; preds = %for.cond285.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1272

for.cond285.7:                                    ; preds = %for.cond285.6
  %arrayidx289.8 = getelementptr i8, ptr %_match1272.sroa.0.0.copyload, i32 8
  %358 = ptrtoint ptr %arrayidx289.8 to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %arrayidx289.8, align 1
  %arrayidx291.8 = getelementptr i8, ptr %_match1272.sroa.5.0.copyload, i32 8
  %360 = ptrtoint ptr %arrayidx291.8 to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %arrayidx291.8, align 1
  %arrayidx294.8 = getelementptr i8, ptr %_match2273.sroa.5.0.copyload, i32 8
  %362 = ptrtoint ptr %arrayidx294.8 to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %arrayidx294.8, align 1
  %arrayidx297.8 = getelementptr i8, ptr %_match2273.sroa.0.0.copyload, i32 8
  %364 = ptrtoint ptr %arrayidx297.8 to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %arrayidx297.8, align 1
  %and29312111217.8 = xor i8 %365, %359
  %and29612121216.8 = and i8 %363, %361
  %xor3051215.8 = and i8 %and29612121216.8, %and29312111217.8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor3051215.8)
  %tobool306.not.8 = icmp eq i8 %xor3051215.8, 0
  br i1 %tobool306.not.8, label %for.cond285.8, label %for.cond285.7.check_failed.critedge1272_crit_edge

for.cond285.7.check_failed.critedge1272_crit_edge: ; preds = %for.cond285.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1272

for.cond285.8:                                    ; preds = %for.cond285.7
  %arrayidx289.9 = getelementptr i8, ptr %_match1272.sroa.0.0.copyload, i32 9
  %366 = ptrtoint ptr %arrayidx289.9 to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %arrayidx289.9, align 1
  %arrayidx291.9 = getelementptr i8, ptr %_match1272.sroa.5.0.copyload, i32 9
  %368 = ptrtoint ptr %arrayidx291.9 to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %arrayidx291.9, align 1
  %arrayidx294.9 = getelementptr i8, ptr %_match2273.sroa.5.0.copyload, i32 9
  %370 = ptrtoint ptr %arrayidx294.9 to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %arrayidx294.9, align 1
  %arrayidx297.9 = getelementptr i8, ptr %_match2273.sroa.0.0.copyload, i32 9
  %372 = ptrtoint ptr %arrayidx297.9 to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %arrayidx297.9, align 1
  %and29312111217.9 = xor i8 %373, %367
  %and29612121216.9 = and i8 %371, %369
  %xor3051215.9 = and i8 %and29612121216.9, %and29312111217.9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor3051215.9)
  %tobool306.not.9 = icmp eq i8 %xor3051215.9, 0
  br i1 %tobool306.not.9, label %for.cond285.9, label %for.cond285.8.check_failed.critedge1272_crit_edge

for.cond285.8.check_failed.critedge1272_crit_edge: ; preds = %for.cond285.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1272

for.cond285.9:                                    ; preds = %for.cond285.8
  %arrayidx289.10 = getelementptr i8, ptr %_match1272.sroa.0.0.copyload, i32 10
  %374 = ptrtoint ptr %arrayidx289.10 to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %arrayidx289.10, align 1
  %arrayidx291.10 = getelementptr i8, ptr %_match1272.sroa.5.0.copyload, i32 10
  %376 = ptrtoint ptr %arrayidx291.10 to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %arrayidx291.10, align 1
  %arrayidx294.10 = getelementptr i8, ptr %_match2273.sroa.5.0.copyload, i32 10
  %378 = ptrtoint ptr %arrayidx294.10 to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %arrayidx294.10, align 1
  %arrayidx297.10 = getelementptr i8, ptr %_match2273.sroa.0.0.copyload, i32 10
  %380 = ptrtoint ptr %arrayidx297.10 to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %arrayidx297.10, align 1
  %and29312111217.10 = xor i8 %381, %375
  %and29612121216.10 = and i8 %379, %377
  %xor3051215.10 = and i8 %and29612121216.10, %and29312111217.10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor3051215.10)
  %tobool306.not.10 = icmp eq i8 %xor3051215.10, 0
  br i1 %tobool306.not.10, label %for.cond285.10, label %for.cond285.9.check_failed.critedge1272_crit_edge

for.cond285.9.check_failed.critedge1272_crit_edge: ; preds = %for.cond285.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1272

for.cond285.10:                                   ; preds = %for.cond285.9
  %arrayidx289.11 = getelementptr i8, ptr %_match1272.sroa.0.0.copyload, i32 11
  %382 = ptrtoint ptr %arrayidx289.11 to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %arrayidx289.11, align 1
  %arrayidx291.11 = getelementptr i8, ptr %_match1272.sroa.5.0.copyload, i32 11
  %384 = ptrtoint ptr %arrayidx291.11 to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %arrayidx291.11, align 1
  %arrayidx294.11 = getelementptr i8, ptr %_match2273.sroa.5.0.copyload, i32 11
  %386 = ptrtoint ptr %arrayidx294.11 to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %arrayidx294.11, align 1
  %arrayidx297.11 = getelementptr i8, ptr %_match2273.sroa.0.0.copyload, i32 11
  %388 = ptrtoint ptr %arrayidx297.11 to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %arrayidx297.11, align 1
  %and29312111217.11 = xor i8 %389, %383
  %and29612121216.11 = and i8 %387, %385
  %xor3051215.11 = and i8 %and29612121216.11, %and29312111217.11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor3051215.11)
  %tobool306.not.11 = icmp eq i8 %xor3051215.11, 0
  br i1 %tobool306.not.11, label %for.cond285.11, label %for.cond285.10.check_failed.critedge1272_crit_edge

for.cond285.10.check_failed.critedge1272_crit_edge: ; preds = %for.cond285.10
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1272

for.cond285.11:                                   ; preds = %for.cond285.10
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2268) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1267) #12
  br label %if.end321

if.end321:                                        ; preds = %for.cond285.11, %if.end263.if.end321_crit_edge
  %and322 = and i32 %and, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and322)
  %tobool323.not = icmp eq i32 %and322, 0
  br i1 %tobool323.not, label %if.end321.if.end379_crit_edge, label %if.then324

if.end321.if.end379_crit_edge:                    ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end379

if.then324:                                       ; preds = %if.end321
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match1325) #12
  %390 = ptrtoint ptr %match1325 to i32
  call void @__asan_store4_noabort(i32 %390)
  store ptr inttoptr (i32 -1 to ptr), ptr %match1325, align 4, !annotation !85
  %391 = getelementptr inbounds %struct.flow_match_vlan, ptr %match1325, i32 0, i32 1
  %392 = ptrtoint ptr %391 to i32
  call void @__asan_store4_noabort(i32 %392)
  store ptr inttoptr (i32 -1 to ptr), ptr %391, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match2326) #12
  %393 = ptrtoint ptr %match2326 to i32
  call void @__asan_store4_noabort(i32 %393)
  store ptr inttoptr (i32 -1 to ptr), ptr %match2326, align 4, !annotation !85
  %394 = getelementptr inbounds %struct.flow_match_vlan, ptr %match2326, i32 0, i32 1
  %395 = ptrtoint ptr %394 to i32
  call void @__asan_store4_noabort(i32 %395)
  store ptr inttoptr (i32 -1 to ptr), ptr %394, align 4, !annotation !85
  %396 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %rule, align 4
  call void @flow_rule_match_vlan(ptr noundef %397, ptr noundef nonnull %match1325) #12
  %398 = ptrtoint ptr %rule1 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %rule1, align 4
  call void @flow_rule_match_vlan(ptr noundef %399, ptr noundef nonnull %match2326) #12
  %400 = ptrtoint ptr %match1325 to i32
  call void @__asan_load4_noabort(i32 %400)
  %_match1330.sroa.0.0.copyload = load ptr, ptr %match1325, align 4
  %401 = ptrtoint ptr %391 to i32
  call void @__asan_load4_noabort(i32 %401)
  %_match1330.sroa.5.0.copyload = load ptr, ptr %391, align 4
  %402 = ptrtoint ptr %match2326 to i32
  call void @__asan_load4_noabort(i32 %402)
  %_match2331.sroa.0.0.copyload = load ptr, ptr %match2326, align 4
  %403 = ptrtoint ptr %394 to i32
  call void @__asan_load4_noabort(i32 %403)
  %_match2331.sroa.5.0.copyload = load ptr, ptr %394, align 4
  %404 = ptrtoint ptr %_match1330.sroa.0.0.copyload to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %_match1330.sroa.0.0.copyload, align 1
  %406 = ptrtoint ptr %_match1330.sroa.5.0.copyload to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %_match1330.sroa.5.0.copyload, align 1
  %408 = ptrtoint ptr %_match2331.sroa.5.0.copyload to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %_match2331.sroa.5.0.copyload, align 1
  %410 = ptrtoint ptr %_match2331.sroa.0.0.copyload to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %_match2331.sroa.0.0.copyload, align 1
  %and35112041210 = xor i8 %411, %405
  %and35412051209 = and i8 %409, %407
  %xor3631208 = and i8 %and35412051209, %and35112041210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor3631208)
  %tobool364.not = icmp eq i8 %xor3631208, 0
  br i1 %tobool364.not, label %for.cond343, label %if.then324.check_failed.critedge1273_crit_edge

if.then324.check_failed.critedge1273_crit_edge:   ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1273

for.cond343:                                      ; preds = %if.then324
  %arrayidx347.1 = getelementptr i8, ptr %_match1330.sroa.0.0.copyload, i32 1
  %412 = ptrtoint ptr %arrayidx347.1 to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %arrayidx347.1, align 1
  %arrayidx349.1 = getelementptr i8, ptr %_match1330.sroa.5.0.copyload, i32 1
  %414 = ptrtoint ptr %arrayidx349.1 to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %arrayidx349.1, align 1
  %arrayidx352.1 = getelementptr i8, ptr %_match2331.sroa.5.0.copyload, i32 1
  %416 = ptrtoint ptr %arrayidx352.1 to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %arrayidx352.1, align 1
  %arrayidx355.1 = getelementptr i8, ptr %_match2331.sroa.0.0.copyload, i32 1
  %418 = ptrtoint ptr %arrayidx355.1 to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %arrayidx355.1, align 1
  %and35112041210.1 = xor i8 %419, %413
  %and35412051209.1 = and i8 %417, %415
  %xor3631208.1 = and i8 %and35412051209.1, %and35112041210.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor3631208.1)
  %tobool364.not.1 = icmp eq i8 %xor3631208.1, 0
  br i1 %tobool364.not.1, label %for.cond343.1, label %for.cond343.check_failed.critedge1273_crit_edge

for.cond343.check_failed.critedge1273_crit_edge:  ; preds = %for.cond343
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1273

for.cond343.1:                                    ; preds = %for.cond343
  %arrayidx347.2 = getelementptr i8, ptr %_match1330.sroa.0.0.copyload, i32 2
  %420 = ptrtoint ptr %arrayidx347.2 to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %arrayidx347.2, align 1
  %arrayidx349.2 = getelementptr i8, ptr %_match1330.sroa.5.0.copyload, i32 2
  %422 = ptrtoint ptr %arrayidx349.2 to i32
  call void @__asan_load1_noabort(i32 %422)
  %423 = load i8, ptr %arrayidx349.2, align 1
  %arrayidx352.2 = getelementptr i8, ptr %_match2331.sroa.5.0.copyload, i32 2
  %424 = ptrtoint ptr %arrayidx352.2 to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %arrayidx352.2, align 1
  %arrayidx355.2 = getelementptr i8, ptr %_match2331.sroa.0.0.copyload, i32 2
  %426 = ptrtoint ptr %arrayidx355.2 to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %arrayidx355.2, align 1
  %and35112041210.2 = xor i8 %427, %421
  %and35412051209.2 = and i8 %425, %423
  %xor3631208.2 = and i8 %and35412051209.2, %and35112041210.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor3631208.2)
  %tobool364.not.2 = icmp eq i8 %xor3631208.2, 0
  br i1 %tobool364.not.2, label %for.cond343.2, label %for.cond343.1.check_failed.critedge1273_crit_edge

for.cond343.1.check_failed.critedge1273_crit_edge: ; preds = %for.cond343.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1273

for.cond343.2:                                    ; preds = %for.cond343.1
  %arrayidx347.3 = getelementptr i8, ptr %_match1330.sroa.0.0.copyload, i32 3
  %428 = ptrtoint ptr %arrayidx347.3 to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %arrayidx347.3, align 1
  %arrayidx349.3 = getelementptr i8, ptr %_match1330.sroa.5.0.copyload, i32 3
  %430 = ptrtoint ptr %arrayidx349.3 to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %arrayidx349.3, align 1
  %arrayidx352.3 = getelementptr i8, ptr %_match2331.sroa.5.0.copyload, i32 3
  %432 = ptrtoint ptr %arrayidx352.3 to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %arrayidx352.3, align 1
  %arrayidx355.3 = getelementptr i8, ptr %_match2331.sroa.0.0.copyload, i32 3
  %434 = ptrtoint ptr %arrayidx355.3 to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %arrayidx355.3, align 1
  %and35112041210.3 = xor i8 %435, %429
  %and35412051209.3 = and i8 %433, %431
  %xor3631208.3 = and i8 %and35412051209.3, %and35112041210.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor3631208.3)
  %tobool364.not.3 = icmp eq i8 %xor3631208.3, 0
  br i1 %tobool364.not.3, label %for.cond343.3, label %for.cond343.2.check_failed.critedge1273_crit_edge

for.cond343.2.check_failed.critedge1273_crit_edge: ; preds = %for.cond343.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1273

for.cond343.3:                                    ; preds = %for.cond343.2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2326) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1325) #12
  br label %if.end379

if.end379:                                        ; preds = %for.cond343.3, %if.end321.if.end379_crit_edge
  %and380 = and i32 %and, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and380)
  %tobool381.not = icmp eq i32 %and380, 0
  br i1 %tobool381.not, label %if.end379.if.end437_crit_edge, label %if.then382

if.end379.if.end437_crit_edge:                    ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end437

if.then382:                                       ; preds = %if.end379
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match1383) #12
  %436 = ptrtoint ptr %match1383 to i32
  call void @__asan_store4_noabort(i32 %436)
  store ptr inttoptr (i32 -1 to ptr), ptr %match1383, align 4, !annotation !85
  %437 = getelementptr inbounds %struct.flow_match_mpls, ptr %match1383, i32 0, i32 1
  %438 = ptrtoint ptr %437 to i32
  call void @__asan_store4_noabort(i32 %438)
  store ptr inttoptr (i32 -1 to ptr), ptr %437, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match2384) #12
  %439 = ptrtoint ptr %match2384 to i32
  call void @__asan_store4_noabort(i32 %439)
  store ptr inttoptr (i32 -1 to ptr), ptr %match2384, align 4, !annotation !85
  %440 = getelementptr inbounds %struct.flow_match_mpls, ptr %match2384, i32 0, i32 1
  %441 = ptrtoint ptr %440 to i32
  call void @__asan_store4_noabort(i32 %441)
  store ptr inttoptr (i32 -1 to ptr), ptr %440, align 4, !annotation !85
  %442 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %rule, align 4
  call void @flow_rule_match_mpls(ptr noundef %443, ptr noundef nonnull %match1383) #12
  %444 = ptrtoint ptr %rule1 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %rule1, align 4
  call void @flow_rule_match_mpls(ptr noundef %445, ptr noundef nonnull %match2384) #12
  %446 = ptrtoint ptr %match1383 to i32
  call void @__asan_load4_noabort(i32 %446)
  %_match1388.sroa.0.0.copyload = load ptr, ptr %match1383, align 4
  %447 = ptrtoint ptr %437 to i32
  call void @__asan_load4_noabort(i32 %447)
  %_match1388.sroa.5.0.copyload = load ptr, ptr %437, align 4
  %448 = ptrtoint ptr %match2384 to i32
  call void @__asan_load4_noabort(i32 %448)
  %_match2389.sroa.0.0.copyload = load ptr, ptr %match2384, align 4
  %449 = ptrtoint ptr %440 to i32
  call void @__asan_load4_noabort(i32 %449)
  %_match2389.sroa.5.0.copyload = load ptr, ptr %440, align 4
  br label %for.body404

for.cond401:                                      ; preds = %for.body404
  %inc426 = add nuw nsw i32 %i391.01290, 1
  %exitcond1302.not = icmp eq i32 %inc426, 32
  br i1 %exitcond1302.not, label %if.end437.critedge, label %for.cond401.for.body404_crit_edge

for.cond401.for.body404_crit_edge:                ; preds = %for.cond401
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body404

for.body404:                                      ; preds = %for.cond401.for.body404_crit_edge, %if.then382
  %i391.01290 = phi i32 [ 0, %if.then382 ], [ %inc426, %for.cond401.for.body404_crit_edge ]
  %arrayidx405 = getelementptr i8, ptr %_match1388.sroa.0.0.copyload, i32 %i391.01290
  %450 = ptrtoint ptr %arrayidx405 to i32
  call void @__asan_load1_noabort(i32 %450)
  %451 = load i8, ptr %arrayidx405, align 1
  %arrayidx407 = getelementptr i8, ptr %_match1388.sroa.5.0.copyload, i32 %i391.01290
  %452 = ptrtoint ptr %arrayidx407 to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %arrayidx407, align 1
  %arrayidx410 = getelementptr i8, ptr %_match2389.sroa.5.0.copyload, i32 %i391.01290
  %454 = ptrtoint ptr %arrayidx410 to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %arrayidx410, align 1
  %arrayidx413 = getelementptr i8, ptr %_match2389.sroa.0.0.copyload, i32 %i391.01290
  %456 = ptrtoint ptr %arrayidx413 to i32
  call void @__asan_load1_noabort(i32 %456)
  %457 = load i8, ptr %arrayidx413, align 1
  %and40911971203 = xor i8 %457, %451
  %and41211981202 = and i8 %455, %453
  %xor4211201 = and i8 %and41211981202, %and40911971203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor4211201)
  %tobool422.not = icmp eq i8 %xor4211201, 0
  br i1 %tobool422.not, label %for.cond401, label %check_failed.critedge1274

if.end437.critedge:                               ; preds = %for.cond401
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2384) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1383) #12
  br label %if.end437

if.end437:                                        ; preds = %if.end437.critedge, %if.end379.if.end437_crit_edge
  %and438 = and i32 %and, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and438)
  %tobool439.not = icmp eq i32 %and438, 0
  br i1 %tobool439.not, label %if.end437.if.end495_crit_edge, label %if.then440

if.end437.if.end495_crit_edge:                    ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end495

if.then440:                                       ; preds = %if.end437
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match1441) #12
  %458 = ptrtoint ptr %match1441 to i32
  call void @__asan_store4_noabort(i32 %458)
  store ptr inttoptr (i32 -1 to ptr), ptr %match1441, align 4, !annotation !85
  %459 = getelementptr inbounds %struct.flow_match_tcp, ptr %match1441, i32 0, i32 1
  %460 = ptrtoint ptr %459 to i32
  call void @__asan_store4_noabort(i32 %460)
  store ptr inttoptr (i32 -1 to ptr), ptr %459, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match2442) #12
  %461 = ptrtoint ptr %match2442 to i32
  call void @__asan_store4_noabort(i32 %461)
  store ptr inttoptr (i32 -1 to ptr), ptr %match2442, align 4, !annotation !85
  %462 = getelementptr inbounds %struct.flow_match_tcp, ptr %match2442, i32 0, i32 1
  %463 = ptrtoint ptr %462 to i32
  call void @__asan_store4_noabort(i32 %463)
  store ptr inttoptr (i32 -1 to ptr), ptr %462, align 4, !annotation !85
  %464 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %rule, align 4
  call void @flow_rule_match_tcp(ptr noundef %465, ptr noundef nonnull %match1441) #12
  %466 = ptrtoint ptr %rule1 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %rule1, align 4
  call void @flow_rule_match_tcp(ptr noundef %467, ptr noundef nonnull %match2442) #12
  %468 = ptrtoint ptr %match1441 to i32
  call void @__asan_load4_noabort(i32 %468)
  %_match1446.sroa.0.0.copyload = load ptr, ptr %match1441, align 4
  %469 = ptrtoint ptr %459 to i32
  call void @__asan_load4_noabort(i32 %469)
  %_match1446.sroa.5.0.copyload = load ptr, ptr %459, align 4
  %470 = ptrtoint ptr %match2442 to i32
  call void @__asan_load4_noabort(i32 %470)
  %_match2447.sroa.0.0.copyload = load ptr, ptr %match2442, align 4
  %471 = ptrtoint ptr %462 to i32
  call void @__asan_load4_noabort(i32 %471)
  %_match2447.sroa.5.0.copyload = load ptr, ptr %462, align 4
  %472 = ptrtoint ptr %_match1446.sroa.0.0.copyload to i32
  call void @__asan_load1_noabort(i32 %472)
  %473 = load i8, ptr %_match1446.sroa.0.0.copyload, align 1
  %474 = ptrtoint ptr %_match1446.sroa.5.0.copyload to i32
  call void @__asan_load1_noabort(i32 %474)
  %475 = load i8, ptr %_match1446.sroa.5.0.copyload, align 1
  %476 = ptrtoint ptr %_match2447.sroa.5.0.copyload to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %_match2447.sroa.5.0.copyload, align 1
  %478 = ptrtoint ptr %_match2447.sroa.0.0.copyload to i32
  call void @__asan_load1_noabort(i32 %478)
  %479 = load i8, ptr %_match2447.sroa.0.0.copyload, align 1
  %and46711901196 = xor i8 %479, %473
  %and47011911195 = and i8 %477, %475
  %xor4791194 = and i8 %and47011911195, %and46711901196
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor4791194)
  %tobool480.not = icmp eq i8 %xor4791194, 0
  br i1 %tobool480.not, label %for.cond459, label %if.then440.check_failed.critedge1275_crit_edge

if.then440.check_failed.critedge1275_crit_edge:   ; preds = %if.then440
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1275

for.cond459:                                      ; preds = %if.then440
  %arrayidx463.1 = getelementptr i8, ptr %_match1446.sroa.0.0.copyload, i32 1
  %480 = ptrtoint ptr %arrayidx463.1 to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %arrayidx463.1, align 1
  %arrayidx465.1 = getelementptr i8, ptr %_match1446.sroa.5.0.copyload, i32 1
  %482 = ptrtoint ptr %arrayidx465.1 to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %arrayidx465.1, align 1
  %arrayidx468.1 = getelementptr i8, ptr %_match2447.sroa.5.0.copyload, i32 1
  %484 = ptrtoint ptr %arrayidx468.1 to i32
  call void @__asan_load1_noabort(i32 %484)
  %485 = load i8, ptr %arrayidx468.1, align 1
  %arrayidx471.1 = getelementptr i8, ptr %_match2447.sroa.0.0.copyload, i32 1
  %486 = ptrtoint ptr %arrayidx471.1 to i32
  call void @__asan_load1_noabort(i32 %486)
  %487 = load i8, ptr %arrayidx471.1, align 1
  %and46711901196.1 = xor i8 %487, %481
  %and47011911195.1 = and i8 %485, %483
  %xor4791194.1 = and i8 %and47011911195.1, %and46711901196.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor4791194.1)
  %tobool480.not.1 = icmp eq i8 %xor4791194.1, 0
  br i1 %tobool480.not.1, label %for.cond459.1, label %for.cond459.check_failed.critedge1275_crit_edge

for.cond459.check_failed.critedge1275_crit_edge:  ; preds = %for.cond459
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1275

for.cond459.1:                                    ; preds = %for.cond459
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2442) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1441) #12
  br label %if.end495

if.end495:                                        ; preds = %for.cond459.1, %if.end437.if.end495_crit_edge
  %and496 = and i32 %and, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and496)
  %tobool497.not = icmp eq i32 %and496, 0
  br i1 %tobool497.not, label %if.end495.if.end553_crit_edge, label %if.then498

if.end495.if.end553_crit_edge:                    ; preds = %if.end495
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end553

if.then498:                                       ; preds = %if.end495
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match1499) #12
  %488 = ptrtoint ptr %match1499 to i32
  call void @__asan_store4_noabort(i32 %488)
  store ptr inttoptr (i32 -1 to ptr), ptr %match1499, align 4, !annotation !85
  %489 = getelementptr inbounds %struct.flow_match_ip, ptr %match1499, i32 0, i32 1
  %490 = ptrtoint ptr %489 to i32
  call void @__asan_store4_noabort(i32 %490)
  store ptr inttoptr (i32 -1 to ptr), ptr %489, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match2500) #12
  %491 = ptrtoint ptr %match2500 to i32
  call void @__asan_store4_noabort(i32 %491)
  store ptr inttoptr (i32 -1 to ptr), ptr %match2500, align 4, !annotation !85
  %492 = getelementptr inbounds %struct.flow_match_ip, ptr %match2500, i32 0, i32 1
  %493 = ptrtoint ptr %492 to i32
  call void @__asan_store4_noabort(i32 %493)
  store ptr inttoptr (i32 -1 to ptr), ptr %492, align 4, !annotation !85
  %494 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %rule, align 4
  call void @flow_rule_match_ip(ptr noundef %495, ptr noundef nonnull %match1499) #12
  %496 = ptrtoint ptr %rule1 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %rule1, align 4
  call void @flow_rule_match_ip(ptr noundef %497, ptr noundef nonnull %match2500) #12
  %498 = ptrtoint ptr %match1499 to i32
  call void @__asan_load4_noabort(i32 %498)
  %_match1504.sroa.0.0.copyload = load ptr, ptr %match1499, align 4
  %499 = ptrtoint ptr %489 to i32
  call void @__asan_load4_noabort(i32 %499)
  %_match1504.sroa.5.0.copyload = load ptr, ptr %489, align 4
  %500 = ptrtoint ptr %match2500 to i32
  call void @__asan_load4_noabort(i32 %500)
  %_match2505.sroa.0.0.copyload = load ptr, ptr %match2500, align 4
  %501 = ptrtoint ptr %492 to i32
  call void @__asan_load4_noabort(i32 %501)
  %_match2505.sroa.5.0.copyload = load ptr, ptr %492, align 4
  %502 = ptrtoint ptr %_match1504.sroa.0.0.copyload to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %_match1504.sroa.0.0.copyload, align 1
  %504 = ptrtoint ptr %_match1504.sroa.5.0.copyload to i32
  call void @__asan_load1_noabort(i32 %504)
  %505 = load i8, ptr %_match1504.sroa.5.0.copyload, align 1
  %506 = ptrtoint ptr %_match2505.sroa.5.0.copyload to i32
  call void @__asan_load1_noabort(i32 %506)
  %507 = load i8, ptr %_match2505.sroa.5.0.copyload, align 1
  %508 = ptrtoint ptr %_match2505.sroa.0.0.copyload to i32
  call void @__asan_load1_noabort(i32 %508)
  %509 = load i8, ptr %_match2505.sroa.0.0.copyload, align 1
  %and52511831189 = xor i8 %509, %503
  %and52811841188 = and i8 %507, %505
  %xor5371187 = and i8 %and52811841188, %and52511831189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor5371187)
  %tobool538.not = icmp eq i8 %xor5371187, 0
  br i1 %tobool538.not, label %for.cond517, label %if.then498.check_failed.critedge1276_crit_edge

if.then498.check_failed.critedge1276_crit_edge:   ; preds = %if.then498
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1276

for.cond517:                                      ; preds = %if.then498
  %arrayidx521.1 = getelementptr i8, ptr %_match1504.sroa.0.0.copyload, i32 1
  %510 = ptrtoint ptr %arrayidx521.1 to i32
  call void @__asan_load1_noabort(i32 %510)
  %511 = load i8, ptr %arrayidx521.1, align 1
  %arrayidx523.1 = getelementptr i8, ptr %_match1504.sroa.5.0.copyload, i32 1
  %512 = ptrtoint ptr %arrayidx523.1 to i32
  call void @__asan_load1_noabort(i32 %512)
  %513 = load i8, ptr %arrayidx523.1, align 1
  %arrayidx526.1 = getelementptr i8, ptr %_match2505.sroa.5.0.copyload, i32 1
  %514 = ptrtoint ptr %arrayidx526.1 to i32
  call void @__asan_load1_noabort(i32 %514)
  %515 = load i8, ptr %arrayidx526.1, align 1
  %arrayidx529.1 = getelementptr i8, ptr %_match2505.sroa.0.0.copyload, i32 1
  %516 = ptrtoint ptr %arrayidx529.1 to i32
  call void @__asan_load1_noabort(i32 %516)
  %517 = load i8, ptr %arrayidx529.1, align 1
  %and52511831189.1 = xor i8 %517, %511
  %and52811841188.1 = and i8 %515, %513
  %xor5371187.1 = and i8 %and52811841188.1, %and52511831189.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor5371187.1)
  %tobool538.not.1 = icmp eq i8 %xor5371187.1, 0
  br i1 %tobool538.not.1, label %for.cond517.1, label %for.cond517.check_failed.critedge1276_crit_edge

for.cond517.check_failed.critedge1276_crit_edge:  ; preds = %for.cond517
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1276

for.cond517.1:                                    ; preds = %for.cond517
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2500) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1499) #12
  br label %if.end553

if.end553:                                        ; preds = %for.cond517.1, %if.end495.if.end553_crit_edge
  %and554 = and i32 %and, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and554)
  %tobool555.not = icmp eq i32 %and554, 0
  br i1 %tobool555.not, label %if.end553.if.end611_crit_edge, label %if.then556

if.end553.if.end611_crit_edge:                    ; preds = %if.end553
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end611

if.then556:                                       ; preds = %if.end553
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match1557) #12
  %518 = ptrtoint ptr %match1557 to i32
  call void @__asan_store4_noabort(i32 %518)
  store ptr inttoptr (i32 -1 to ptr), ptr %match1557, align 4, !annotation !85
  %519 = getelementptr inbounds %struct.flow_match_enc_keyid, ptr %match1557, i32 0, i32 1
  %520 = ptrtoint ptr %519 to i32
  call void @__asan_store4_noabort(i32 %520)
  store ptr inttoptr (i32 -1 to ptr), ptr %519, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match2558) #12
  %521 = ptrtoint ptr %match2558 to i32
  call void @__asan_store4_noabort(i32 %521)
  store ptr inttoptr (i32 -1 to ptr), ptr %match2558, align 4, !annotation !85
  %522 = getelementptr inbounds %struct.flow_match_enc_keyid, ptr %match2558, i32 0, i32 1
  %523 = ptrtoint ptr %522 to i32
  call void @__asan_store4_noabort(i32 %523)
  store ptr inttoptr (i32 -1 to ptr), ptr %522, align 4, !annotation !85
  %524 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %rule, align 4
  call void @flow_rule_match_enc_keyid(ptr noundef %525, ptr noundef nonnull %match1557) #12
  %526 = ptrtoint ptr %rule1 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %rule1, align 4
  call void @flow_rule_match_enc_keyid(ptr noundef %527, ptr noundef nonnull %match2558) #12
  %528 = ptrtoint ptr %match1557 to i32
  call void @__asan_load4_noabort(i32 %528)
  %_match1562.sroa.0.0.copyload = load ptr, ptr %match1557, align 4
  %529 = ptrtoint ptr %519 to i32
  call void @__asan_load4_noabort(i32 %529)
  %_match1562.sroa.5.0.copyload = load ptr, ptr %519, align 4
  %530 = ptrtoint ptr %match2558 to i32
  call void @__asan_load4_noabort(i32 %530)
  %_match2563.sroa.0.0.copyload = load ptr, ptr %match2558, align 4
  %531 = ptrtoint ptr %522 to i32
  call void @__asan_load4_noabort(i32 %531)
  %_match2563.sroa.5.0.copyload = load ptr, ptr %522, align 4
  %532 = ptrtoint ptr %_match1562.sroa.0.0.copyload to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %_match1562.sroa.0.0.copyload, align 1
  %534 = ptrtoint ptr %_match1562.sroa.5.0.copyload to i32
  call void @__asan_load1_noabort(i32 %534)
  %535 = load i8, ptr %_match1562.sroa.5.0.copyload, align 1
  %536 = ptrtoint ptr %_match2563.sroa.5.0.copyload to i32
  call void @__asan_load1_noabort(i32 %536)
  %537 = load i8, ptr %_match2563.sroa.5.0.copyload, align 1
  %538 = ptrtoint ptr %_match2563.sroa.0.0.copyload to i32
  call void @__asan_load1_noabort(i32 %538)
  %539 = load i8, ptr %_match2563.sroa.0.0.copyload, align 1
  %and58311761182 = xor i8 %539, %533
  %and58611771181 = and i8 %537, %535
  %xor5951180 = and i8 %and58611771181, %and58311761182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor5951180)
  %tobool596.not = icmp eq i8 %xor5951180, 0
  br i1 %tobool596.not, label %for.cond575, label %if.then556.check_failed.critedge1277_crit_edge

if.then556.check_failed.critedge1277_crit_edge:   ; preds = %if.then556
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1277

for.cond575:                                      ; preds = %if.then556
  %arrayidx579.1 = getelementptr i8, ptr %_match1562.sroa.0.0.copyload, i32 1
  %540 = ptrtoint ptr %arrayidx579.1 to i32
  call void @__asan_load1_noabort(i32 %540)
  %541 = load i8, ptr %arrayidx579.1, align 1
  %arrayidx581.1 = getelementptr i8, ptr %_match1562.sroa.5.0.copyload, i32 1
  %542 = ptrtoint ptr %arrayidx581.1 to i32
  call void @__asan_load1_noabort(i32 %542)
  %543 = load i8, ptr %arrayidx581.1, align 1
  %arrayidx584.1 = getelementptr i8, ptr %_match2563.sroa.5.0.copyload, i32 1
  %544 = ptrtoint ptr %arrayidx584.1 to i32
  call void @__asan_load1_noabort(i32 %544)
  %545 = load i8, ptr %arrayidx584.1, align 1
  %arrayidx587.1 = getelementptr i8, ptr %_match2563.sroa.0.0.copyload, i32 1
  %546 = ptrtoint ptr %arrayidx587.1 to i32
  call void @__asan_load1_noabort(i32 %546)
  %547 = load i8, ptr %arrayidx587.1, align 1
  %and58311761182.1 = xor i8 %547, %541
  %and58611771181.1 = and i8 %545, %543
  %xor5951180.1 = and i8 %and58611771181.1, %and58311761182.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor5951180.1)
  %tobool596.not.1 = icmp eq i8 %xor5951180.1, 0
  br i1 %tobool596.not.1, label %for.cond575.1, label %for.cond575.check_failed.critedge1277_crit_edge

for.cond575.check_failed.critedge1277_crit_edge:  ; preds = %for.cond575
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1277

for.cond575.1:                                    ; preds = %for.cond575
  %arrayidx579.2 = getelementptr i8, ptr %_match1562.sroa.0.0.copyload, i32 2
  %548 = ptrtoint ptr %arrayidx579.2 to i32
  call void @__asan_load1_noabort(i32 %548)
  %549 = load i8, ptr %arrayidx579.2, align 1
  %arrayidx581.2 = getelementptr i8, ptr %_match1562.sroa.5.0.copyload, i32 2
  %550 = ptrtoint ptr %arrayidx581.2 to i32
  call void @__asan_load1_noabort(i32 %550)
  %551 = load i8, ptr %arrayidx581.2, align 1
  %arrayidx584.2 = getelementptr i8, ptr %_match2563.sroa.5.0.copyload, i32 2
  %552 = ptrtoint ptr %arrayidx584.2 to i32
  call void @__asan_load1_noabort(i32 %552)
  %553 = load i8, ptr %arrayidx584.2, align 1
  %arrayidx587.2 = getelementptr i8, ptr %_match2563.sroa.0.0.copyload, i32 2
  %554 = ptrtoint ptr %arrayidx587.2 to i32
  call void @__asan_load1_noabort(i32 %554)
  %555 = load i8, ptr %arrayidx587.2, align 1
  %and58311761182.2 = xor i8 %555, %549
  %and58611771181.2 = and i8 %553, %551
  %xor5951180.2 = and i8 %and58611771181.2, %and58311761182.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor5951180.2)
  %tobool596.not.2 = icmp eq i8 %xor5951180.2, 0
  br i1 %tobool596.not.2, label %for.cond575.2, label %for.cond575.1.check_failed.critedge1277_crit_edge

for.cond575.1.check_failed.critedge1277_crit_edge: ; preds = %for.cond575.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1277

for.cond575.2:                                    ; preds = %for.cond575.1
  %arrayidx579.3 = getelementptr i8, ptr %_match1562.sroa.0.0.copyload, i32 3
  %556 = ptrtoint ptr %arrayidx579.3 to i32
  call void @__asan_load1_noabort(i32 %556)
  %557 = load i8, ptr %arrayidx579.3, align 1
  %arrayidx581.3 = getelementptr i8, ptr %_match1562.sroa.5.0.copyload, i32 3
  %558 = ptrtoint ptr %arrayidx581.3 to i32
  call void @__asan_load1_noabort(i32 %558)
  %559 = load i8, ptr %arrayidx581.3, align 1
  %arrayidx584.3 = getelementptr i8, ptr %_match2563.sroa.5.0.copyload, i32 3
  %560 = ptrtoint ptr %arrayidx584.3 to i32
  call void @__asan_load1_noabort(i32 %560)
  %561 = load i8, ptr %arrayidx584.3, align 1
  %arrayidx587.3 = getelementptr i8, ptr %_match2563.sroa.0.0.copyload, i32 3
  %562 = ptrtoint ptr %arrayidx587.3 to i32
  call void @__asan_load1_noabort(i32 %562)
  %563 = load i8, ptr %arrayidx587.3, align 1
  %and58311761182.3 = xor i8 %563, %557
  %and58611771181.3 = and i8 %561, %559
  %xor5951180.3 = and i8 %and58611771181.3, %and58311761182.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor5951180.3)
  %tobool596.not.3 = icmp eq i8 %xor5951180.3, 0
  br i1 %tobool596.not.3, label %for.cond575.3, label %for.cond575.2.check_failed.critedge1277_crit_edge

for.cond575.2.check_failed.critedge1277_crit_edge: ; preds = %for.cond575.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1277

for.cond575.3:                                    ; preds = %for.cond575.2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2558) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1557) #12
  br label %if.end611

if.end611:                                        ; preds = %for.cond575.3, %if.end553.if.end611_crit_edge
  %and612 = and i32 %and, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and612)
  %tobool613.not = icmp eq i32 %and612, 0
  br i1 %tobool613.not, label %if.end611.if.end669_crit_edge, label %if.then614

if.end611.if.end669_crit_edge:                    ; preds = %if.end611
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end669

if.then614:                                       ; preds = %if.end611
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match1615) #12
  %564 = ptrtoint ptr %match1615 to i32
  call void @__asan_store4_noabort(i32 %564)
  store ptr inttoptr (i32 -1 to ptr), ptr %match1615, align 4, !annotation !85
  %565 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %match1615, i32 0, i32 1
  %566 = ptrtoint ptr %565 to i32
  call void @__asan_store4_noabort(i32 %566)
  store ptr inttoptr (i32 -1 to ptr), ptr %565, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match2616) #12
  %567 = ptrtoint ptr %match2616 to i32
  call void @__asan_store4_noabort(i32 %567)
  store ptr inttoptr (i32 -1 to ptr), ptr %match2616, align 4, !annotation !85
  %568 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %match2616, i32 0, i32 1
  %569 = ptrtoint ptr %568 to i32
  call void @__asan_store4_noabort(i32 %569)
  store ptr inttoptr (i32 -1 to ptr), ptr %568, align 4, !annotation !85
  %570 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %rule, align 4
  call void @flow_rule_match_enc_ipv4_addrs(ptr noundef %571, ptr noundef nonnull %match1615) #12
  %572 = ptrtoint ptr %rule1 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %rule1, align 4
  call void @flow_rule_match_enc_ipv4_addrs(ptr noundef %573, ptr noundef nonnull %match2616) #12
  %574 = ptrtoint ptr %match1615 to i32
  call void @__asan_load4_noabort(i32 %574)
  %_match1620.sroa.0.0.copyload = load ptr, ptr %match1615, align 4
  %575 = ptrtoint ptr %565 to i32
  call void @__asan_load4_noabort(i32 %575)
  %_match1620.sroa.5.0.copyload = load ptr, ptr %565, align 4
  %576 = ptrtoint ptr %match2616 to i32
  call void @__asan_load4_noabort(i32 %576)
  %_match2621.sroa.0.0.copyload = load ptr, ptr %match2616, align 4
  %577 = ptrtoint ptr %568 to i32
  call void @__asan_load4_noabort(i32 %577)
  %_match2621.sroa.5.0.copyload = load ptr, ptr %568, align 4
  %578 = ptrtoint ptr %_match1620.sroa.0.0.copyload to i32
  call void @__asan_load1_noabort(i32 %578)
  %579 = load i8, ptr %_match1620.sroa.0.0.copyload, align 1
  %580 = ptrtoint ptr %_match1620.sroa.5.0.copyload to i32
  call void @__asan_load1_noabort(i32 %580)
  %581 = load i8, ptr %_match1620.sroa.5.0.copyload, align 1
  %582 = ptrtoint ptr %_match2621.sroa.5.0.copyload to i32
  call void @__asan_load1_noabort(i32 %582)
  %583 = load i8, ptr %_match2621.sroa.5.0.copyload, align 1
  %584 = ptrtoint ptr %_match2621.sroa.0.0.copyload to i32
  call void @__asan_load1_noabort(i32 %584)
  %585 = load i8, ptr %_match2621.sroa.0.0.copyload, align 1
  %and64111691175 = xor i8 %585, %579
  %and64411701174 = and i8 %583, %581
  %xor6531173 = and i8 %and64411701174, %and64111691175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor6531173)
  %tobool654.not = icmp eq i8 %xor6531173, 0
  br i1 %tobool654.not, label %for.cond633, label %if.then614.check_failed.critedge1278_crit_edge

if.then614.check_failed.critedge1278_crit_edge:   ; preds = %if.then614
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1278

for.cond633:                                      ; preds = %if.then614
  %arrayidx637.1 = getelementptr i8, ptr %_match1620.sroa.0.0.copyload, i32 1
  %586 = ptrtoint ptr %arrayidx637.1 to i32
  call void @__asan_load1_noabort(i32 %586)
  %587 = load i8, ptr %arrayidx637.1, align 1
  %arrayidx639.1 = getelementptr i8, ptr %_match1620.sroa.5.0.copyload, i32 1
  %588 = ptrtoint ptr %arrayidx639.1 to i32
  call void @__asan_load1_noabort(i32 %588)
  %589 = load i8, ptr %arrayidx639.1, align 1
  %arrayidx642.1 = getelementptr i8, ptr %_match2621.sroa.5.0.copyload, i32 1
  %590 = ptrtoint ptr %arrayidx642.1 to i32
  call void @__asan_load1_noabort(i32 %590)
  %591 = load i8, ptr %arrayidx642.1, align 1
  %arrayidx645.1 = getelementptr i8, ptr %_match2621.sroa.0.0.copyload, i32 1
  %592 = ptrtoint ptr %arrayidx645.1 to i32
  call void @__asan_load1_noabort(i32 %592)
  %593 = load i8, ptr %arrayidx645.1, align 1
  %and64111691175.1 = xor i8 %593, %587
  %and64411701174.1 = and i8 %591, %589
  %xor6531173.1 = and i8 %and64411701174.1, %and64111691175.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor6531173.1)
  %tobool654.not.1 = icmp eq i8 %xor6531173.1, 0
  br i1 %tobool654.not.1, label %for.cond633.1, label %for.cond633.check_failed.critedge1278_crit_edge

for.cond633.check_failed.critedge1278_crit_edge:  ; preds = %for.cond633
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1278

for.cond633.1:                                    ; preds = %for.cond633
  %arrayidx637.2 = getelementptr i8, ptr %_match1620.sroa.0.0.copyload, i32 2
  %594 = ptrtoint ptr %arrayidx637.2 to i32
  call void @__asan_load1_noabort(i32 %594)
  %595 = load i8, ptr %arrayidx637.2, align 1
  %arrayidx639.2 = getelementptr i8, ptr %_match1620.sroa.5.0.copyload, i32 2
  %596 = ptrtoint ptr %arrayidx639.2 to i32
  call void @__asan_load1_noabort(i32 %596)
  %597 = load i8, ptr %arrayidx639.2, align 1
  %arrayidx642.2 = getelementptr i8, ptr %_match2621.sroa.5.0.copyload, i32 2
  %598 = ptrtoint ptr %arrayidx642.2 to i32
  call void @__asan_load1_noabort(i32 %598)
  %599 = load i8, ptr %arrayidx642.2, align 1
  %arrayidx645.2 = getelementptr i8, ptr %_match2621.sroa.0.0.copyload, i32 2
  %600 = ptrtoint ptr %arrayidx645.2 to i32
  call void @__asan_load1_noabort(i32 %600)
  %601 = load i8, ptr %arrayidx645.2, align 1
  %and64111691175.2 = xor i8 %601, %595
  %and64411701174.2 = and i8 %599, %597
  %xor6531173.2 = and i8 %and64411701174.2, %and64111691175.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor6531173.2)
  %tobool654.not.2 = icmp eq i8 %xor6531173.2, 0
  br i1 %tobool654.not.2, label %for.cond633.2, label %for.cond633.1.check_failed.critedge1278_crit_edge

for.cond633.1.check_failed.critedge1278_crit_edge: ; preds = %for.cond633.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1278

for.cond633.2:                                    ; preds = %for.cond633.1
  %arrayidx637.3 = getelementptr i8, ptr %_match1620.sroa.0.0.copyload, i32 3
  %602 = ptrtoint ptr %arrayidx637.3 to i32
  call void @__asan_load1_noabort(i32 %602)
  %603 = load i8, ptr %arrayidx637.3, align 1
  %arrayidx639.3 = getelementptr i8, ptr %_match1620.sroa.5.0.copyload, i32 3
  %604 = ptrtoint ptr %arrayidx639.3 to i32
  call void @__asan_load1_noabort(i32 %604)
  %605 = load i8, ptr %arrayidx639.3, align 1
  %arrayidx642.3 = getelementptr i8, ptr %_match2621.sroa.5.0.copyload, i32 3
  %606 = ptrtoint ptr %arrayidx642.3 to i32
  call void @__asan_load1_noabort(i32 %606)
  %607 = load i8, ptr %arrayidx642.3, align 1
  %arrayidx645.3 = getelementptr i8, ptr %_match2621.sroa.0.0.copyload, i32 3
  %608 = ptrtoint ptr %arrayidx645.3 to i32
  call void @__asan_load1_noabort(i32 %608)
  %609 = load i8, ptr %arrayidx645.3, align 1
  %and64111691175.3 = xor i8 %609, %603
  %and64411701174.3 = and i8 %607, %605
  %xor6531173.3 = and i8 %and64411701174.3, %and64111691175.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor6531173.3)
  %tobool654.not.3 = icmp eq i8 %xor6531173.3, 0
  br i1 %tobool654.not.3, label %for.cond633.3, label %for.cond633.2.check_failed.critedge1278_crit_edge

for.cond633.2.check_failed.critedge1278_crit_edge: ; preds = %for.cond633.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1278

for.cond633.3:                                    ; preds = %for.cond633.2
  %arrayidx637.4 = getelementptr i8, ptr %_match1620.sroa.0.0.copyload, i32 4
  %610 = ptrtoint ptr %arrayidx637.4 to i32
  call void @__asan_load1_noabort(i32 %610)
  %611 = load i8, ptr %arrayidx637.4, align 1
  %arrayidx639.4 = getelementptr i8, ptr %_match1620.sroa.5.0.copyload, i32 4
  %612 = ptrtoint ptr %arrayidx639.4 to i32
  call void @__asan_load1_noabort(i32 %612)
  %613 = load i8, ptr %arrayidx639.4, align 1
  %arrayidx642.4 = getelementptr i8, ptr %_match2621.sroa.5.0.copyload, i32 4
  %614 = ptrtoint ptr %arrayidx642.4 to i32
  call void @__asan_load1_noabort(i32 %614)
  %615 = load i8, ptr %arrayidx642.4, align 1
  %arrayidx645.4 = getelementptr i8, ptr %_match2621.sroa.0.0.copyload, i32 4
  %616 = ptrtoint ptr %arrayidx645.4 to i32
  call void @__asan_load1_noabort(i32 %616)
  %617 = load i8, ptr %arrayidx645.4, align 1
  %and64111691175.4 = xor i8 %617, %611
  %and64411701174.4 = and i8 %615, %613
  %xor6531173.4 = and i8 %and64411701174.4, %and64111691175.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor6531173.4)
  %tobool654.not.4 = icmp eq i8 %xor6531173.4, 0
  br i1 %tobool654.not.4, label %for.cond633.4, label %for.cond633.3.check_failed.critedge1278_crit_edge

for.cond633.3.check_failed.critedge1278_crit_edge: ; preds = %for.cond633.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1278

for.cond633.4:                                    ; preds = %for.cond633.3
  %arrayidx637.5 = getelementptr i8, ptr %_match1620.sroa.0.0.copyload, i32 5
  %618 = ptrtoint ptr %arrayidx637.5 to i32
  call void @__asan_load1_noabort(i32 %618)
  %619 = load i8, ptr %arrayidx637.5, align 1
  %arrayidx639.5 = getelementptr i8, ptr %_match1620.sroa.5.0.copyload, i32 5
  %620 = ptrtoint ptr %arrayidx639.5 to i32
  call void @__asan_load1_noabort(i32 %620)
  %621 = load i8, ptr %arrayidx639.5, align 1
  %arrayidx642.5 = getelementptr i8, ptr %_match2621.sroa.5.0.copyload, i32 5
  %622 = ptrtoint ptr %arrayidx642.5 to i32
  call void @__asan_load1_noabort(i32 %622)
  %623 = load i8, ptr %arrayidx642.5, align 1
  %arrayidx645.5 = getelementptr i8, ptr %_match2621.sroa.0.0.copyload, i32 5
  %624 = ptrtoint ptr %arrayidx645.5 to i32
  call void @__asan_load1_noabort(i32 %624)
  %625 = load i8, ptr %arrayidx645.5, align 1
  %and64111691175.5 = xor i8 %625, %619
  %and64411701174.5 = and i8 %623, %621
  %xor6531173.5 = and i8 %and64411701174.5, %and64111691175.5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor6531173.5)
  %tobool654.not.5 = icmp eq i8 %xor6531173.5, 0
  br i1 %tobool654.not.5, label %for.cond633.5, label %for.cond633.4.check_failed.critedge1278_crit_edge

for.cond633.4.check_failed.critedge1278_crit_edge: ; preds = %for.cond633.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1278

for.cond633.5:                                    ; preds = %for.cond633.4
  %arrayidx637.6 = getelementptr i8, ptr %_match1620.sroa.0.0.copyload, i32 6
  %626 = ptrtoint ptr %arrayidx637.6 to i32
  call void @__asan_load1_noabort(i32 %626)
  %627 = load i8, ptr %arrayidx637.6, align 1
  %arrayidx639.6 = getelementptr i8, ptr %_match1620.sroa.5.0.copyload, i32 6
  %628 = ptrtoint ptr %arrayidx639.6 to i32
  call void @__asan_load1_noabort(i32 %628)
  %629 = load i8, ptr %arrayidx639.6, align 1
  %arrayidx642.6 = getelementptr i8, ptr %_match2621.sroa.5.0.copyload, i32 6
  %630 = ptrtoint ptr %arrayidx642.6 to i32
  call void @__asan_load1_noabort(i32 %630)
  %631 = load i8, ptr %arrayidx642.6, align 1
  %arrayidx645.6 = getelementptr i8, ptr %_match2621.sroa.0.0.copyload, i32 6
  %632 = ptrtoint ptr %arrayidx645.6 to i32
  call void @__asan_load1_noabort(i32 %632)
  %633 = load i8, ptr %arrayidx645.6, align 1
  %and64111691175.6 = xor i8 %633, %627
  %and64411701174.6 = and i8 %631, %629
  %xor6531173.6 = and i8 %and64411701174.6, %and64111691175.6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor6531173.6)
  %tobool654.not.6 = icmp eq i8 %xor6531173.6, 0
  br i1 %tobool654.not.6, label %for.cond633.6, label %for.cond633.5.check_failed.critedge1278_crit_edge

for.cond633.5.check_failed.critedge1278_crit_edge: ; preds = %for.cond633.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1278

for.cond633.6:                                    ; preds = %for.cond633.5
  %arrayidx637.7 = getelementptr i8, ptr %_match1620.sroa.0.0.copyload, i32 7
  %634 = ptrtoint ptr %arrayidx637.7 to i32
  call void @__asan_load1_noabort(i32 %634)
  %635 = load i8, ptr %arrayidx637.7, align 1
  %arrayidx639.7 = getelementptr i8, ptr %_match1620.sroa.5.0.copyload, i32 7
  %636 = ptrtoint ptr %arrayidx639.7 to i32
  call void @__asan_load1_noabort(i32 %636)
  %637 = load i8, ptr %arrayidx639.7, align 1
  %arrayidx642.7 = getelementptr i8, ptr %_match2621.sroa.5.0.copyload, i32 7
  %638 = ptrtoint ptr %arrayidx642.7 to i32
  call void @__asan_load1_noabort(i32 %638)
  %639 = load i8, ptr %arrayidx642.7, align 1
  %arrayidx645.7 = getelementptr i8, ptr %_match2621.sroa.0.0.copyload, i32 7
  %640 = ptrtoint ptr %arrayidx645.7 to i32
  call void @__asan_load1_noabort(i32 %640)
  %641 = load i8, ptr %arrayidx645.7, align 1
  %and64111691175.7 = xor i8 %641, %635
  %and64411701174.7 = and i8 %639, %637
  %xor6531173.7 = and i8 %and64411701174.7, %and64111691175.7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor6531173.7)
  %tobool654.not.7 = icmp eq i8 %xor6531173.7, 0
  br i1 %tobool654.not.7, label %for.cond633.7, label %for.cond633.6.check_failed.critedge1278_crit_edge

for.cond633.6.check_failed.critedge1278_crit_edge: ; preds = %for.cond633.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1278

for.cond633.7:                                    ; preds = %for.cond633.6
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2616) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1615) #12
  br label %if.end669

if.end669:                                        ; preds = %for.cond633.7, %if.end611.if.end669_crit_edge
  %and670 = and i32 %and, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and670)
  %tobool671.not = icmp eq i32 %and670, 0
  br i1 %tobool671.not, label %if.end669.if.end727_crit_edge, label %if.then672

if.end669.if.end727_crit_edge:                    ; preds = %if.end669
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end727

if.then672:                                       ; preds = %if.end669
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match1673) #12
  %642 = ptrtoint ptr %match1673 to i32
  call void @__asan_store4_noabort(i32 %642)
  store ptr inttoptr (i32 -1 to ptr), ptr %match1673, align 4, !annotation !85
  %643 = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %match1673, i32 0, i32 1
  %644 = ptrtoint ptr %643 to i32
  call void @__asan_store4_noabort(i32 %644)
  store ptr inttoptr (i32 -1 to ptr), ptr %643, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match2674) #12
  %645 = ptrtoint ptr %match2674 to i32
  call void @__asan_store4_noabort(i32 %645)
  store ptr inttoptr (i32 -1 to ptr), ptr %match2674, align 4, !annotation !85
  %646 = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %match2674, i32 0, i32 1
  %647 = ptrtoint ptr %646 to i32
  call void @__asan_store4_noabort(i32 %647)
  store ptr inttoptr (i32 -1 to ptr), ptr %646, align 4, !annotation !85
  %648 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %rule, align 4
  call void @flow_rule_match_enc_ipv6_addrs(ptr noundef %649, ptr noundef nonnull %match1673) #12
  %650 = ptrtoint ptr %rule1 to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %rule1, align 4
  call void @flow_rule_match_enc_ipv6_addrs(ptr noundef %651, ptr noundef nonnull %match2674) #12
  %652 = ptrtoint ptr %match1673 to i32
  call void @__asan_load4_noabort(i32 %652)
  %_match1678.sroa.0.0.copyload = load ptr, ptr %match1673, align 4
  %653 = ptrtoint ptr %643 to i32
  call void @__asan_load4_noabort(i32 %653)
  %_match1678.sroa.5.0.copyload = load ptr, ptr %643, align 4
  %654 = ptrtoint ptr %match2674 to i32
  call void @__asan_load4_noabort(i32 %654)
  %_match2679.sroa.0.0.copyload = load ptr, ptr %match2674, align 4
  %655 = ptrtoint ptr %646 to i32
  call void @__asan_load4_noabort(i32 %655)
  %_match2679.sroa.5.0.copyload = load ptr, ptr %646, align 4
  br label %for.body694

for.cond691:                                      ; preds = %for.body694
  %inc716 = add nuw nsw i32 %i681.01295, 1
  %exitcond1305.not = icmp eq i32 %inc716, 32
  br i1 %exitcond1305.not, label %if.end727.critedge, label %for.cond691.for.body694_crit_edge

for.cond691.for.body694_crit_edge:                ; preds = %for.cond691
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body694

for.body694:                                      ; preds = %for.cond691.for.body694_crit_edge, %if.then672
  %i681.01295 = phi i32 [ 0, %if.then672 ], [ %inc716, %for.cond691.for.body694_crit_edge ]
  %arrayidx695 = getelementptr i8, ptr %_match1678.sroa.0.0.copyload, i32 %i681.01295
  %656 = ptrtoint ptr %arrayidx695 to i32
  call void @__asan_load1_noabort(i32 %656)
  %657 = load i8, ptr %arrayidx695, align 1
  %arrayidx697 = getelementptr i8, ptr %_match1678.sroa.5.0.copyload, i32 %i681.01295
  %658 = ptrtoint ptr %arrayidx697 to i32
  call void @__asan_load1_noabort(i32 %658)
  %659 = load i8, ptr %arrayidx697, align 1
  %arrayidx700 = getelementptr i8, ptr %_match2679.sroa.5.0.copyload, i32 %i681.01295
  %660 = ptrtoint ptr %arrayidx700 to i32
  call void @__asan_load1_noabort(i32 %660)
  %661 = load i8, ptr %arrayidx700, align 1
  %arrayidx703 = getelementptr i8, ptr %_match2679.sroa.0.0.copyload, i32 %i681.01295
  %662 = ptrtoint ptr %arrayidx703 to i32
  call void @__asan_load1_noabort(i32 %662)
  %663 = load i8, ptr %arrayidx703, align 1
  %and69911621168 = xor i8 %663, %657
  %and70211631167 = and i8 %661, %659
  %xor7111166 = and i8 %and70211631167, %and69911621168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor7111166)
  %tobool712.not = icmp eq i8 %xor7111166, 0
  br i1 %tobool712.not, label %for.cond691, label %check_failed.critedge1279

if.end727.critedge:                               ; preds = %for.cond691
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2674) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1673) #12
  br label %if.end727

if.end727:                                        ; preds = %if.end727.critedge, %if.end669.if.end727_crit_edge
  %and728 = and i32 %and, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and728)
  %tobool729.not = icmp eq i32 %and728, 0
  br i1 %tobool729.not, label %if.end727.if.end785_crit_edge, label %if.then730

if.end727.if.end785_crit_edge:                    ; preds = %if.end727
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end785

if.then730:                                       ; preds = %if.end727
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match1731) #12
  %664 = ptrtoint ptr %match1731 to i32
  call void @__asan_store4_noabort(i32 %664)
  store ptr inttoptr (i32 -1 to ptr), ptr %match1731, align 4, !annotation !85
  %665 = getelementptr inbounds %struct.flow_match_control, ptr %match1731, i32 0, i32 1
  %666 = ptrtoint ptr %665 to i32
  call void @__asan_store4_noabort(i32 %666)
  store ptr inttoptr (i32 -1 to ptr), ptr %665, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match2732) #12
  %667 = ptrtoint ptr %match2732 to i32
  call void @__asan_store4_noabort(i32 %667)
  store ptr inttoptr (i32 -1 to ptr), ptr %match2732, align 4, !annotation !85
  %668 = getelementptr inbounds %struct.flow_match_control, ptr %match2732, i32 0, i32 1
  %669 = ptrtoint ptr %668 to i32
  call void @__asan_store4_noabort(i32 %669)
  store ptr inttoptr (i32 -1 to ptr), ptr %668, align 4, !annotation !85
  %670 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %rule, align 4
  call void @flow_rule_match_enc_control(ptr noundef %671, ptr noundef nonnull %match1731) #12
  %672 = ptrtoint ptr %rule1 to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %rule1, align 4
  call void @flow_rule_match_enc_control(ptr noundef %673, ptr noundef nonnull %match2732) #12
  %674 = ptrtoint ptr %match1731 to i32
  call void @__asan_load4_noabort(i32 %674)
  %_match1736.sroa.0.0.copyload = load ptr, ptr %match1731, align 4
  %675 = ptrtoint ptr %665 to i32
  call void @__asan_load4_noabort(i32 %675)
  %_match1736.sroa.5.0.copyload = load ptr, ptr %665, align 4
  %676 = ptrtoint ptr %match2732 to i32
  call void @__asan_load4_noabort(i32 %676)
  %_match2737.sroa.0.0.copyload = load ptr, ptr %match2732, align 4
  %677 = ptrtoint ptr %668 to i32
  call void @__asan_load4_noabort(i32 %677)
  %_match2737.sroa.5.0.copyload = load ptr, ptr %668, align 4
  %678 = ptrtoint ptr %_match1736.sroa.0.0.copyload to i32
  call void @__asan_load1_noabort(i32 %678)
  %679 = load i8, ptr %_match1736.sroa.0.0.copyload, align 1
  %680 = ptrtoint ptr %_match1736.sroa.5.0.copyload to i32
  call void @__asan_load1_noabort(i32 %680)
  %681 = load i8, ptr %_match1736.sroa.5.0.copyload, align 1
  %682 = ptrtoint ptr %_match2737.sroa.5.0.copyload to i32
  call void @__asan_load1_noabort(i32 %682)
  %683 = load i8, ptr %_match2737.sroa.5.0.copyload, align 1
  %684 = ptrtoint ptr %_match2737.sroa.0.0.copyload to i32
  call void @__asan_load1_noabort(i32 %684)
  %685 = load i8, ptr %_match2737.sroa.0.0.copyload, align 1
  %and75711551161 = xor i8 %685, %679
  %and76011561160 = and i8 %683, %681
  %xor7691159 = and i8 %and76011561160, %and75711551161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor7691159)
  %tobool770.not = icmp eq i8 %xor7691159, 0
  br i1 %tobool770.not, label %for.cond749, label %if.then730.check_failed.critedge1280_crit_edge

if.then730.check_failed.critedge1280_crit_edge:   ; preds = %if.then730
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1280

for.cond749:                                      ; preds = %if.then730
  %arrayidx753.1 = getelementptr i8, ptr %_match1736.sroa.0.0.copyload, i32 1
  %686 = ptrtoint ptr %arrayidx753.1 to i32
  call void @__asan_load1_noabort(i32 %686)
  %687 = load i8, ptr %arrayidx753.1, align 1
  %arrayidx755.1 = getelementptr i8, ptr %_match1736.sroa.5.0.copyload, i32 1
  %688 = ptrtoint ptr %arrayidx755.1 to i32
  call void @__asan_load1_noabort(i32 %688)
  %689 = load i8, ptr %arrayidx755.1, align 1
  %arrayidx758.1 = getelementptr i8, ptr %_match2737.sroa.5.0.copyload, i32 1
  %690 = ptrtoint ptr %arrayidx758.1 to i32
  call void @__asan_load1_noabort(i32 %690)
  %691 = load i8, ptr %arrayidx758.1, align 1
  %arrayidx761.1 = getelementptr i8, ptr %_match2737.sroa.0.0.copyload, i32 1
  %692 = ptrtoint ptr %arrayidx761.1 to i32
  call void @__asan_load1_noabort(i32 %692)
  %693 = load i8, ptr %arrayidx761.1, align 1
  %and75711551161.1 = xor i8 %693, %687
  %and76011561160.1 = and i8 %691, %689
  %xor7691159.1 = and i8 %and76011561160.1, %and75711551161.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor7691159.1)
  %tobool770.not.1 = icmp eq i8 %xor7691159.1, 0
  br i1 %tobool770.not.1, label %for.cond749.1, label %for.cond749.check_failed.critedge1280_crit_edge

for.cond749.check_failed.critedge1280_crit_edge:  ; preds = %for.cond749
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1280

for.cond749.1:                                    ; preds = %for.cond749
  %arrayidx753.2 = getelementptr i8, ptr %_match1736.sroa.0.0.copyload, i32 2
  %694 = ptrtoint ptr %arrayidx753.2 to i32
  call void @__asan_load1_noabort(i32 %694)
  %695 = load i8, ptr %arrayidx753.2, align 1
  %arrayidx755.2 = getelementptr i8, ptr %_match1736.sroa.5.0.copyload, i32 2
  %696 = ptrtoint ptr %arrayidx755.2 to i32
  call void @__asan_load1_noabort(i32 %696)
  %697 = load i8, ptr %arrayidx755.2, align 1
  %arrayidx758.2 = getelementptr i8, ptr %_match2737.sroa.5.0.copyload, i32 2
  %698 = ptrtoint ptr %arrayidx758.2 to i32
  call void @__asan_load1_noabort(i32 %698)
  %699 = load i8, ptr %arrayidx758.2, align 1
  %arrayidx761.2 = getelementptr i8, ptr %_match2737.sroa.0.0.copyload, i32 2
  %700 = ptrtoint ptr %arrayidx761.2 to i32
  call void @__asan_load1_noabort(i32 %700)
  %701 = load i8, ptr %arrayidx761.2, align 1
  %and75711551161.2 = xor i8 %701, %695
  %and76011561160.2 = and i8 %699, %697
  %xor7691159.2 = and i8 %and76011561160.2, %and75711551161.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor7691159.2)
  %tobool770.not.2 = icmp eq i8 %xor7691159.2, 0
  br i1 %tobool770.not.2, label %for.cond749.2, label %for.cond749.1.check_failed.critedge1280_crit_edge

for.cond749.1.check_failed.critedge1280_crit_edge: ; preds = %for.cond749.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1280

for.cond749.2:                                    ; preds = %for.cond749.1
  %arrayidx753.3 = getelementptr i8, ptr %_match1736.sroa.0.0.copyload, i32 3
  %702 = ptrtoint ptr %arrayidx753.3 to i32
  call void @__asan_load1_noabort(i32 %702)
  %703 = load i8, ptr %arrayidx753.3, align 1
  %arrayidx755.3 = getelementptr i8, ptr %_match1736.sroa.5.0.copyload, i32 3
  %704 = ptrtoint ptr %arrayidx755.3 to i32
  call void @__asan_load1_noabort(i32 %704)
  %705 = load i8, ptr %arrayidx755.3, align 1
  %arrayidx758.3 = getelementptr i8, ptr %_match2737.sroa.5.0.copyload, i32 3
  %706 = ptrtoint ptr %arrayidx758.3 to i32
  call void @__asan_load1_noabort(i32 %706)
  %707 = load i8, ptr %arrayidx758.3, align 1
  %arrayidx761.3 = getelementptr i8, ptr %_match2737.sroa.0.0.copyload, i32 3
  %708 = ptrtoint ptr %arrayidx761.3 to i32
  call void @__asan_load1_noabort(i32 %708)
  %709 = load i8, ptr %arrayidx761.3, align 1
  %and75711551161.3 = xor i8 %709, %703
  %and76011561160.3 = and i8 %707, %705
  %xor7691159.3 = and i8 %and76011561160.3, %and75711551161.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor7691159.3)
  %tobool770.not.3 = icmp eq i8 %xor7691159.3, 0
  br i1 %tobool770.not.3, label %for.cond749.3, label %for.cond749.2.check_failed.critedge1280_crit_edge

for.cond749.2.check_failed.critedge1280_crit_edge: ; preds = %for.cond749.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1280

for.cond749.3:                                    ; preds = %for.cond749.2
  %arrayidx753.4 = getelementptr i8, ptr %_match1736.sroa.0.0.copyload, i32 4
  %710 = ptrtoint ptr %arrayidx753.4 to i32
  call void @__asan_load1_noabort(i32 %710)
  %711 = load i8, ptr %arrayidx753.4, align 1
  %arrayidx755.4 = getelementptr i8, ptr %_match1736.sroa.5.0.copyload, i32 4
  %712 = ptrtoint ptr %arrayidx755.4 to i32
  call void @__asan_load1_noabort(i32 %712)
  %713 = load i8, ptr %arrayidx755.4, align 1
  %arrayidx758.4 = getelementptr i8, ptr %_match2737.sroa.5.0.copyload, i32 4
  %714 = ptrtoint ptr %arrayidx758.4 to i32
  call void @__asan_load1_noabort(i32 %714)
  %715 = load i8, ptr %arrayidx758.4, align 1
  %arrayidx761.4 = getelementptr i8, ptr %_match2737.sroa.0.0.copyload, i32 4
  %716 = ptrtoint ptr %arrayidx761.4 to i32
  call void @__asan_load1_noabort(i32 %716)
  %717 = load i8, ptr %arrayidx761.4, align 1
  %and75711551161.4 = xor i8 %717, %711
  %and76011561160.4 = and i8 %715, %713
  %xor7691159.4 = and i8 %and76011561160.4, %and75711551161.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor7691159.4)
  %tobool770.not.4 = icmp eq i8 %xor7691159.4, 0
  br i1 %tobool770.not.4, label %for.cond749.4, label %for.cond749.3.check_failed.critedge1280_crit_edge

for.cond749.3.check_failed.critedge1280_crit_edge: ; preds = %for.cond749.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1280

for.cond749.4:                                    ; preds = %for.cond749.3
  %arrayidx753.5 = getelementptr i8, ptr %_match1736.sroa.0.0.copyload, i32 5
  %718 = ptrtoint ptr %arrayidx753.5 to i32
  call void @__asan_load1_noabort(i32 %718)
  %719 = load i8, ptr %arrayidx753.5, align 1
  %arrayidx755.5 = getelementptr i8, ptr %_match1736.sroa.5.0.copyload, i32 5
  %720 = ptrtoint ptr %arrayidx755.5 to i32
  call void @__asan_load1_noabort(i32 %720)
  %721 = load i8, ptr %arrayidx755.5, align 1
  %arrayidx758.5 = getelementptr i8, ptr %_match2737.sroa.5.0.copyload, i32 5
  %722 = ptrtoint ptr %arrayidx758.5 to i32
  call void @__asan_load1_noabort(i32 %722)
  %723 = load i8, ptr %arrayidx758.5, align 1
  %arrayidx761.5 = getelementptr i8, ptr %_match2737.sroa.0.0.copyload, i32 5
  %724 = ptrtoint ptr %arrayidx761.5 to i32
  call void @__asan_load1_noabort(i32 %724)
  %725 = load i8, ptr %arrayidx761.5, align 1
  %and75711551161.5 = xor i8 %725, %719
  %and76011561160.5 = and i8 %723, %721
  %xor7691159.5 = and i8 %and76011561160.5, %and75711551161.5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor7691159.5)
  %tobool770.not.5 = icmp eq i8 %xor7691159.5, 0
  br i1 %tobool770.not.5, label %for.cond749.5, label %for.cond749.4.check_failed.critedge1280_crit_edge

for.cond749.4.check_failed.critedge1280_crit_edge: ; preds = %for.cond749.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1280

for.cond749.5:                                    ; preds = %for.cond749.4
  %arrayidx753.6 = getelementptr i8, ptr %_match1736.sroa.0.0.copyload, i32 6
  %726 = ptrtoint ptr %arrayidx753.6 to i32
  call void @__asan_load1_noabort(i32 %726)
  %727 = load i8, ptr %arrayidx753.6, align 1
  %arrayidx755.6 = getelementptr i8, ptr %_match1736.sroa.5.0.copyload, i32 6
  %728 = ptrtoint ptr %arrayidx755.6 to i32
  call void @__asan_load1_noabort(i32 %728)
  %729 = load i8, ptr %arrayidx755.6, align 1
  %arrayidx758.6 = getelementptr i8, ptr %_match2737.sroa.5.0.copyload, i32 6
  %730 = ptrtoint ptr %arrayidx758.6 to i32
  call void @__asan_load1_noabort(i32 %730)
  %731 = load i8, ptr %arrayidx758.6, align 1
  %arrayidx761.6 = getelementptr i8, ptr %_match2737.sroa.0.0.copyload, i32 6
  %732 = ptrtoint ptr %arrayidx761.6 to i32
  call void @__asan_load1_noabort(i32 %732)
  %733 = load i8, ptr %arrayidx761.6, align 1
  %and75711551161.6 = xor i8 %733, %727
  %and76011561160.6 = and i8 %731, %729
  %xor7691159.6 = and i8 %and76011561160.6, %and75711551161.6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor7691159.6)
  %tobool770.not.6 = icmp eq i8 %xor7691159.6, 0
  br i1 %tobool770.not.6, label %for.cond749.6, label %for.cond749.5.check_failed.critedge1280_crit_edge

for.cond749.5.check_failed.critedge1280_crit_edge: ; preds = %for.cond749.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1280

for.cond749.6:                                    ; preds = %for.cond749.5
  %arrayidx753.7 = getelementptr i8, ptr %_match1736.sroa.0.0.copyload, i32 7
  %734 = ptrtoint ptr %arrayidx753.7 to i32
  call void @__asan_load1_noabort(i32 %734)
  %735 = load i8, ptr %arrayidx753.7, align 1
  %arrayidx755.7 = getelementptr i8, ptr %_match1736.sroa.5.0.copyload, i32 7
  %736 = ptrtoint ptr %arrayidx755.7 to i32
  call void @__asan_load1_noabort(i32 %736)
  %737 = load i8, ptr %arrayidx755.7, align 1
  %arrayidx758.7 = getelementptr i8, ptr %_match2737.sroa.5.0.copyload, i32 7
  %738 = ptrtoint ptr %arrayidx758.7 to i32
  call void @__asan_load1_noabort(i32 %738)
  %739 = load i8, ptr %arrayidx758.7, align 1
  %arrayidx761.7 = getelementptr i8, ptr %_match2737.sroa.0.0.copyload, i32 7
  %740 = ptrtoint ptr %arrayidx761.7 to i32
  call void @__asan_load1_noabort(i32 %740)
  %741 = load i8, ptr %arrayidx761.7, align 1
  %and75711551161.7 = xor i8 %741, %735
  %and76011561160.7 = and i8 %739, %737
  %xor7691159.7 = and i8 %and76011561160.7, %and75711551161.7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor7691159.7)
  %tobool770.not.7 = icmp eq i8 %xor7691159.7, 0
  br i1 %tobool770.not.7, label %for.cond749.7, label %for.cond749.6.check_failed.critedge1280_crit_edge

for.cond749.6.check_failed.critedge1280_crit_edge: ; preds = %for.cond749.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1280

for.cond749.7:                                    ; preds = %for.cond749.6
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2732) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1731) #12
  br label %if.end785

if.end785:                                        ; preds = %for.cond749.7, %if.end727.if.end785_crit_edge
  %and786 = and i32 %and, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and786)
  %tobool787.not = icmp eq i32 %and786, 0
  br i1 %tobool787.not, label %if.end785.if.end843_crit_edge, label %if.then788

if.end785.if.end843_crit_edge:                    ; preds = %if.end785
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end843

if.then788:                                       ; preds = %if.end785
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match1789) #12
  %742 = ptrtoint ptr %match1789 to i32
  call void @__asan_store4_noabort(i32 %742)
  store ptr inttoptr (i32 -1 to ptr), ptr %match1789, align 4, !annotation !85
  %743 = getelementptr inbounds %struct.flow_match_ip, ptr %match1789, i32 0, i32 1
  %744 = ptrtoint ptr %743 to i32
  call void @__asan_store4_noabort(i32 %744)
  store ptr inttoptr (i32 -1 to ptr), ptr %743, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match2790) #12
  %745 = ptrtoint ptr %match2790 to i32
  call void @__asan_store4_noabort(i32 %745)
  store ptr inttoptr (i32 -1 to ptr), ptr %match2790, align 4, !annotation !85
  %746 = getelementptr inbounds %struct.flow_match_ip, ptr %match2790, i32 0, i32 1
  %747 = ptrtoint ptr %746 to i32
  call void @__asan_store4_noabort(i32 %747)
  store ptr inttoptr (i32 -1 to ptr), ptr %746, align 4, !annotation !85
  %748 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %rule, align 4
  call void @flow_rule_match_enc_ip(ptr noundef %749, ptr noundef nonnull %match1789) #12
  %750 = ptrtoint ptr %rule1 to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %rule1, align 4
  call void @flow_rule_match_enc_ip(ptr noundef %751, ptr noundef nonnull %match2790) #12
  %752 = ptrtoint ptr %match1789 to i32
  call void @__asan_load4_noabort(i32 %752)
  %_match1794.sroa.0.0.copyload = load ptr, ptr %match1789, align 4
  %753 = ptrtoint ptr %743 to i32
  call void @__asan_load4_noabort(i32 %753)
  %_match1794.sroa.5.0.copyload = load ptr, ptr %743, align 4
  %754 = ptrtoint ptr %match2790 to i32
  call void @__asan_load4_noabort(i32 %754)
  %_match2795.sroa.0.0.copyload = load ptr, ptr %match2790, align 4
  %755 = ptrtoint ptr %746 to i32
  call void @__asan_load4_noabort(i32 %755)
  %_match2795.sroa.5.0.copyload = load ptr, ptr %746, align 4
  %756 = ptrtoint ptr %_match1794.sroa.0.0.copyload to i32
  call void @__asan_load1_noabort(i32 %756)
  %757 = load i8, ptr %_match1794.sroa.0.0.copyload, align 1
  %758 = ptrtoint ptr %_match1794.sroa.5.0.copyload to i32
  call void @__asan_load1_noabort(i32 %758)
  %759 = load i8, ptr %_match1794.sroa.5.0.copyload, align 1
  %760 = ptrtoint ptr %_match2795.sroa.5.0.copyload to i32
  call void @__asan_load1_noabort(i32 %760)
  %761 = load i8, ptr %_match2795.sroa.5.0.copyload, align 1
  %762 = ptrtoint ptr %_match2795.sroa.0.0.copyload to i32
  call void @__asan_load1_noabort(i32 %762)
  %763 = load i8, ptr %_match2795.sroa.0.0.copyload, align 1
  %and81511481154 = xor i8 %763, %757
  %and81811491153 = and i8 %761, %759
  %xor8271152 = and i8 %and81811491153, %and81511481154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor8271152)
  %tobool828.not = icmp eq i8 %xor8271152, 0
  br i1 %tobool828.not, label %for.cond807, label %if.then788.check_failed.critedge1281_crit_edge

if.then788.check_failed.critedge1281_crit_edge:   ; preds = %if.then788
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1281

for.cond807:                                      ; preds = %if.then788
  %arrayidx811.1 = getelementptr i8, ptr %_match1794.sroa.0.0.copyload, i32 1
  %764 = ptrtoint ptr %arrayidx811.1 to i32
  call void @__asan_load1_noabort(i32 %764)
  %765 = load i8, ptr %arrayidx811.1, align 1
  %arrayidx813.1 = getelementptr i8, ptr %_match1794.sroa.5.0.copyload, i32 1
  %766 = ptrtoint ptr %arrayidx813.1 to i32
  call void @__asan_load1_noabort(i32 %766)
  %767 = load i8, ptr %arrayidx813.1, align 1
  %arrayidx816.1 = getelementptr i8, ptr %_match2795.sroa.5.0.copyload, i32 1
  %768 = ptrtoint ptr %arrayidx816.1 to i32
  call void @__asan_load1_noabort(i32 %768)
  %769 = load i8, ptr %arrayidx816.1, align 1
  %arrayidx819.1 = getelementptr i8, ptr %_match2795.sroa.0.0.copyload, i32 1
  %770 = ptrtoint ptr %arrayidx819.1 to i32
  call void @__asan_load1_noabort(i32 %770)
  %771 = load i8, ptr %arrayidx819.1, align 1
  %and81511481154.1 = xor i8 %771, %765
  %and81811491153.1 = and i8 %769, %767
  %xor8271152.1 = and i8 %and81811491153.1, %and81511481154.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor8271152.1)
  %tobool828.not.1 = icmp eq i8 %xor8271152.1, 0
  br i1 %tobool828.not.1, label %for.cond807.1, label %for.cond807.check_failed.critedge1281_crit_edge

for.cond807.check_failed.critedge1281_crit_edge:  ; preds = %for.cond807
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_failed.critedge1281

for.cond807.1:                                    ; preds = %for.cond807
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2790) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1789) #12
  br label %if.end843

if.end843:                                        ; preds = %for.cond807.1, %if.end785.if.end843_crit_edge
  %and844 = and i32 %and, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and844)
  %tobool845.not = icmp eq i32 %and844, 0
  br i1 %tobool845.not, label %if.end843.cleanup902_crit_edge, label %if.then846

if.end843.cleanup902_crit_edge:                   ; preds = %if.end843
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup902

if.then846:                                       ; preds = %if.end843
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match1847) #12
  %772 = ptrtoint ptr %match1847 to i32
  call void @__asan_store4_noabort(i32 %772)
  store ptr inttoptr (i32 -1 to ptr), ptr %match1847, align 4, !annotation !85
  %773 = getelementptr inbounds %struct.flow_match_enc_opts, ptr %match1847, i32 0, i32 1
  %774 = ptrtoint ptr %773 to i32
  call void @__asan_store4_noabort(i32 %774)
  store ptr inttoptr (i32 -1 to ptr), ptr %773, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match2848) #12
  %775 = ptrtoint ptr %match2848 to i32
  call void @__asan_store4_noabort(i32 %775)
  store ptr inttoptr (i32 -1 to ptr), ptr %match2848, align 4, !annotation !85
  %776 = getelementptr inbounds %struct.flow_match_enc_opts, ptr %match2848, i32 0, i32 1
  %777 = ptrtoint ptr %776 to i32
  call void @__asan_store4_noabort(i32 %777)
  store ptr inttoptr (i32 -1 to ptr), ptr %776, align 4, !annotation !85
  %778 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load ptr, ptr %rule, align 4
  call void @flow_rule_match_enc_opts(ptr noundef %779, ptr noundef nonnull %match1847) #12
  %780 = ptrtoint ptr %rule1 to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load ptr, ptr %rule1, align 4
  call void @flow_rule_match_enc_opts(ptr noundef %781, ptr noundef nonnull %match2848) #12
  %782 = ptrtoint ptr %match1847 to i32
  call void @__asan_load4_noabort(i32 %782)
  %_match1852.sroa.0.0.copyload = load ptr, ptr %match1847, align 4
  %783 = ptrtoint ptr %773 to i32
  call void @__asan_load4_noabort(i32 %783)
  %_match1852.sroa.5.0.copyload = load ptr, ptr %773, align 4
  %784 = ptrtoint ptr %match2848 to i32
  call void @__asan_load4_noabort(i32 %784)
  %_match2853.sroa.0.0.copyload = load ptr, ptr %match2848, align 4
  %785 = ptrtoint ptr %776 to i32
  call void @__asan_load4_noabort(i32 %785)
  %_match2853.sroa.5.0.copyload = load ptr, ptr %776, align 4
  br label %for.body868

for.cond865:                                      ; preds = %for.body868
  %inc890 = add nuw nsw i32 %i855.01298, 1
  %exitcond1307.not = icmp eq i32 %inc890, 258
  br i1 %exitcond1307.not, label %for.end891, label %for.cond865.for.body868_crit_edge

for.cond865.for.body868_crit_edge:                ; preds = %for.cond865
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body868

for.body868:                                      ; preds = %for.cond865.for.body868_crit_edge, %if.then846
  %i855.01298 = phi i32 [ 0, %if.then846 ], [ %inc890, %for.cond865.for.body868_crit_edge ]
  %arrayidx869 = getelementptr i8, ptr %_match1852.sroa.0.0.copyload, i32 %i855.01298
  %786 = ptrtoint ptr %arrayidx869 to i32
  call void @__asan_load1_noabort(i32 %786)
  %787 = load i8, ptr %arrayidx869, align 1
  %arrayidx871 = getelementptr i8, ptr %_match1852.sroa.5.0.copyload, i32 %i855.01298
  %788 = ptrtoint ptr %arrayidx871 to i32
  call void @__asan_load1_noabort(i32 %788)
  %789 = load i8, ptr %arrayidx871, align 1
  %arrayidx874 = getelementptr i8, ptr %_match2853.sroa.5.0.copyload, i32 %i855.01298
  %790 = ptrtoint ptr %arrayidx874 to i32
  call void @__asan_load1_noabort(i32 %790)
  %791 = load i8, ptr %arrayidx874, align 1
  %arrayidx877 = getelementptr i8, ptr %_match2853.sroa.0.0.copyload, i32 %i855.01298
  %792 = ptrtoint ptr %arrayidx877 to i32
  call void @__asan_load1_noabort(i32 %792)
  %793 = load i8, ptr %arrayidx877, align 1
  %and87311411147 = xor i8 %793, %787
  %and87611421146 = and i8 %791, %789
  %xor8851145 = and i8 %and87611421146, %and87311411147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor8851145)
  %tobool886.not = icmp eq i8 %xor8851145, 0
  br i1 %tobool886.not, label %for.cond865, label %for.end891.thread

for.end891.thread:                                ; preds = %for.body868
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2848) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1847) #12
  br label %cleanup902

for.end891:                                       ; preds = %for.cond865
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2848) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1847) #12
  br label %cleanup902

check_failed.critedge:                            ; preds = %for.cond.6.check_failed.critedge_crit_edge, %for.cond.5.check_failed.critedge_crit_edge, %for.cond.4.check_failed.critedge_crit_edge, %for.cond.3.check_failed.critedge_crit_edge, %for.cond.2.check_failed.critedge_crit_edge, %for.cond.1.check_failed.critedge_crit_edge, %for.cond.check_failed.critedge_crit_edge, %if.then.check_failed.critedge_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match26) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1) #12
  br label %cleanup902

check_failed.critedge1268:                        ; preds = %for.cond53.2.check_failed.critedge1268_crit_edge, %for.cond53.1.check_failed.critedge1268_crit_edge, %for.cond53.check_failed.critedge1268_crit_edge, %if.then34.check_failed.critedge1268_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match236) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match135) #12
  br label %cleanup902

check_failed.critedge1269:                        ; preds = %for.cond111.6.check_failed.critedge1269_crit_edge, %for.cond111.5.check_failed.critedge1269_crit_edge, %for.cond111.4.check_failed.critedge1269_crit_edge, %for.cond111.3.check_failed.critedge1269_crit_edge, %for.cond111.2.check_failed.critedge1269_crit_edge, %for.cond111.1.check_failed.critedge1269_crit_edge, %for.cond111.check_failed.critedge1269_crit_edge, %if.then92.check_failed.critedge1269_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match294) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match193) #12
  br label %cleanup902

check_failed.critedge1270:                        ; preds = %for.body172
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2152) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1151) #12
  br label %cleanup902

check_failed.critedge1271:                        ; preds = %for.cond227.2.check_failed.critedge1271_crit_edge, %for.cond227.1.check_failed.critedge1271_crit_edge, %for.cond227.check_failed.critedge1271_crit_edge, %if.then208.check_failed.critedge1271_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2210) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1209) #12
  br label %cleanup902

check_failed.critedge1272:                        ; preds = %for.cond285.10.check_failed.critedge1272_crit_edge, %for.cond285.9.check_failed.critedge1272_crit_edge, %for.cond285.8.check_failed.critedge1272_crit_edge, %for.cond285.7.check_failed.critedge1272_crit_edge, %for.cond285.6.check_failed.critedge1272_crit_edge, %for.cond285.5.check_failed.critedge1272_crit_edge, %for.cond285.4.check_failed.critedge1272_crit_edge, %for.cond285.3.check_failed.critedge1272_crit_edge, %for.cond285.2.check_failed.critedge1272_crit_edge, %for.cond285.1.check_failed.critedge1272_crit_edge, %for.cond285.check_failed.critedge1272_crit_edge, %if.then266.check_failed.critedge1272_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2268) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1267) #12
  br label %cleanup902

check_failed.critedge1273:                        ; preds = %for.cond343.2.check_failed.critedge1273_crit_edge, %for.cond343.1.check_failed.critedge1273_crit_edge, %for.cond343.check_failed.critedge1273_crit_edge, %if.then324.check_failed.critedge1273_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2326) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1325) #12
  br label %cleanup902

check_failed.critedge1274:                        ; preds = %for.body404
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2384) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1383) #12
  br label %cleanup902

check_failed.critedge1275:                        ; preds = %for.cond459.check_failed.critedge1275_crit_edge, %if.then440.check_failed.critedge1275_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2442) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1441) #12
  br label %cleanup902

check_failed.critedge1276:                        ; preds = %for.cond517.check_failed.critedge1276_crit_edge, %if.then498.check_failed.critedge1276_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2500) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1499) #12
  br label %cleanup902

check_failed.critedge1277:                        ; preds = %for.cond575.2.check_failed.critedge1277_crit_edge, %for.cond575.1.check_failed.critedge1277_crit_edge, %for.cond575.check_failed.critedge1277_crit_edge, %if.then556.check_failed.critedge1277_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2558) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1557) #12
  br label %cleanup902

check_failed.critedge1278:                        ; preds = %for.cond633.6.check_failed.critedge1278_crit_edge, %for.cond633.5.check_failed.critedge1278_crit_edge, %for.cond633.4.check_failed.critedge1278_crit_edge, %for.cond633.3.check_failed.critedge1278_crit_edge, %for.cond633.2.check_failed.critedge1278_crit_edge, %for.cond633.1.check_failed.critedge1278_crit_edge, %for.cond633.check_failed.critedge1278_crit_edge, %if.then614.check_failed.critedge1278_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2616) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1615) #12
  br label %cleanup902

check_failed.critedge1279:                        ; preds = %for.body694
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2674) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1673) #12
  br label %cleanup902

check_failed.critedge1280:                        ; preds = %for.cond749.6.check_failed.critedge1280_crit_edge, %for.cond749.5.check_failed.critedge1280_crit_edge, %for.cond749.4.check_failed.critedge1280_crit_edge, %for.cond749.3.check_failed.critedge1280_crit_edge, %for.cond749.2.check_failed.critedge1280_crit_edge, %for.cond749.1.check_failed.critedge1280_crit_edge, %for.cond749.check_failed.critedge1280_crit_edge, %if.then730.check_failed.critedge1280_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2732) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1731) #12
  br label %cleanup902

check_failed.critedge1281:                        ; preds = %for.cond807.check_failed.critedge1281_crit_edge, %if.then788.check_failed.critedge1281_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2790) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1789) #12
  br label %cleanup902

cleanup902:                                       ; preds = %check_failed.critedge1281, %check_failed.critedge1280, %check_failed.critedge1279, %check_failed.critedge1278, %check_failed.critedge1277, %check_failed.critedge1276, %check_failed.critedge1275, %check_failed.critedge1274, %check_failed.critedge1273, %check_failed.critedge1272, %check_failed.critedge1271, %check_failed.critedge1270, %check_failed.critedge1269, %check_failed.critedge1268, %check_failed.critedge, %for.end891, %for.end891.thread, %if.end843.cleanup902_crit_edge
  %retval.0 = phi i32 [ 0, %for.end891 ], [ 0, %if.end843.cleanup902_crit_edge ], [ -22, %for.end891.thread ], [ -22, %check_failed.critedge1281 ], [ -22, %check_failed.critedge1280 ], [ -22, %check_failed.critedge1279 ], [ -22, %check_failed.critedge1278 ], [ -22, %check_failed.critedge1277 ], [ -22, %check_failed.critedge1276 ], [ -22, %check_failed.critedge1275 ], [ -22, %check_failed.critedge1274 ], [ -22, %check_failed.critedge1273 ], [ -22, %check_failed.critedge1272 ], [ -22, %check_failed.critedge1271 ], [ -22, %check_failed.critedge1270 ], [ -22, %check_failed.critedge1269 ], [ -22, %check_failed.critedge1268 ], [ -22, %check_failed.critedge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_ct_do_nft_merge(ptr noundef %zt, ptr noundef %nft_entry, ptr noundef %tc_m_entry) unnamed_addr #2 align 64 {
entry:
  %ct.i = alloca %struct.flow_match_ct, align 4
  %new_cookie = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %new_cookie) #12
  %0 = getelementptr inbounds [3 x i32], ptr %new_cookie, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i32], ptr %new_cookie, i32 0, i32 2
  %pre_ct_parent = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %tc_m_entry, i32 0, i32 5
  %2 = ptrtoint ptr %pre_ct_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pre_ct_parent, align 4
  %post_ct_parent = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %tc_m_entry, i32 0, i32 6
  %4 = ptrtoint ptr %post_ct_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %post_ct_parent, align 4
  %rule.i = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rule.i, align 4
  %action263.i = getelementptr inbounds %struct.flow_rule, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %action263.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %action263.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp64.not.i = icmp eq i32 %9, 0
  br i1 %cmp64.not.i, label %entry.for.end.i_crit_edge, label %for.body.lr.ph.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %entries.i = getelementptr inbounds %struct.flow_rule, ptr %7, i32 1
  %rule3.i = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %nft_entry, i32 0, i32 7
  %rule4.i = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %5, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.066.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %act.065.i = phi ptr [ %entries.i, %for.body.lr.ph.i ], [ %arrayidx13.i, %for.inc.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %act.065.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %act.065.i, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %11, label %for.body.i.for.inc.i_crit_edge [
    i32 13, label %sw.bb.i
    i32 8, label %for.body.i.cleanup_crit_edge
    i32 9, label %for.body.i.cleanup_crit_edge44
    i32 10, label %for.body.i.cleanup_crit_edge45
    i32 25, label %for.body.i.cleanup_crit_edge46
    i32 26, label %for.body.i.cleanup_crit_edge47
    i32 27, label %for.body.i.cleanup_crit_edge48
  ]

for.body.i.cleanup_crit_edge48:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i.cleanup_crit_edge47:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i.cleanup_crit_edge46:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i.cleanup_crit_edge45:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i.cleanup_crit_edge44:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i
  %13 = ptrtoint ptr %rule3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rule3.i, align 4
  %call.i = tail call fastcc i32 @nfp_ct_check_mangle_merge(ptr noundef %act.065.i, ptr noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb.i
  %15 = ptrtoint ptr %rule4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rule4.i, align 4
  %call5.i = tail call fastcc i32 @nfp_ct_check_mangle_merge(ptr noundef %act.065.i, ptr noundef %16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %17 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rule.i, align 4
  %entries12.i = getelementptr inbounds %struct.flow_rule, ptr %18, i32 1
  %inc.i = add nuw i32 %i.066.i, 1
  %arrayidx13.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries12.i, i32 0, i32 %inc.i
  %action2.i = getelementptr inbounds %struct.flow_rule, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %action2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %action2.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %20
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %rule14.i = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %nft_entry, i32 0, i32 7
  %21 = ptrtoint ptr %rule14.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rule14.i, align 4
  %rule26.i = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %5, i32 0, i32 7
  %action2067.i = getelementptr inbounds %struct.flow_rule, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %action2067.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %action2067.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp2268.not.i = icmp eq i32 %24, 0
  br i1 %cmp2268.not.i, label %for.end.i.if.end_crit_edge, label %for.body23.preheader.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body23.preheader.i:                           ; preds = %for.end.i
  %entries16.i = getelementptr inbounds %struct.flow_rule, ptr %22, i32 1
  br label %for.body23.i

for.body23.i:                                     ; preds = %for.inc34.i.for.body23.i_crit_edge, %for.body23.preheader.i
  %i.170.i = phi i32 [ %inc38.i, %for.inc34.i.for.body23.i_crit_edge ], [ 0, %for.body23.preheader.i ]
  %act.169.i = phi ptr [ %arrayidx39.i, %for.inc34.i.for.body23.i_crit_edge ], [ %entries16.i, %for.body23.preheader.i ]
  %25 = ptrtoint ptr %act.169.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %act.169.i, align 8
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %26, label %for.body23.i.for.inc34.i_crit_edge [
    i32 13, label %sw.bb25.i
    i32 8, label %for.body23.i.cleanup_crit_edge
    i32 9, label %for.body23.i.cleanup_crit_edge49
    i32 10, label %for.body23.i.cleanup_crit_edge50
    i32 25, label %for.body23.i.cleanup_crit_edge51
    i32 26, label %for.body23.i.cleanup_crit_edge52
    i32 27, label %for.body23.i.cleanup_crit_edge53
  ]

for.body23.i.cleanup_crit_edge53:                 ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body23.i.cleanup_crit_edge52:                 ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body23.i.cleanup_crit_edge51:                 ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body23.i.cleanup_crit_edge50:                 ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body23.i.cleanup_crit_edge49:                 ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body23.i.cleanup_crit_edge:                   ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body23.i.for.inc34.i_crit_edge:               ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc34.i

sw.bb25.i:                                        ; preds = %for.body23.i
  %28 = ptrtoint ptr %rule26.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rule26.i, align 4
  %call27.i = tail call fastcc i32 @nfp_ct_check_mangle_merge(ptr noundef %act.169.i, ptr noundef %29) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %sw.bb25.i.for.inc34.i_crit_edge, label %sw.bb25.i.cleanup_crit_edge

sw.bb25.i.cleanup_crit_edge:                      ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb25.i.for.inc34.i_crit_edge:                  ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc34.i

for.inc34.i:                                      ; preds = %sw.bb25.i.for.inc34.i_crit_edge, %for.body23.i.for.inc34.i_crit_edge
  %30 = ptrtoint ptr %rule14.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rule14.i, align 4
  %entries37.i = getelementptr inbounds %struct.flow_rule, ptr %31, i32 1
  %inc38.i = add nuw i32 %i.170.i, 1
  %arrayidx39.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries37.i, i32 0, i32 %inc38.i
  %action20.i = getelementptr inbounds %struct.flow_rule, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %action20.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %action20.i, align 8
  %cmp22.i = icmp ult i32 %inc38.i, %33
  br i1 %cmp22.i, label %for.inc34.i.for.body23.i_crit_edge, label %for.inc34.i.if.end_crit_edge

for.inc34.i.if.end_crit_edge:                     ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.inc34.i.for.body23.i_crit_edge:               ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body23.i

if.end:                                           ; preds = %for.inc34.i.if.end_crit_edge, %for.end.i.if.end_crit_edge
  %call1 = tail call fastcc i32 @nfp_ct_merge_check(ptr noundef %3, ptr noundef %nft_entry)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @nfp_ct_merge_check(ptr noundef %5, ptr noundef %nft_entry)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %34 = ptrtoint ptr %rule26.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rule26.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ct.i) #12
  %38 = ptrtoint ptr %ct.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 -1 to ptr), ptr %ct.i, align 4, !annotation !85
  %39 = getelementptr inbounds %struct.flow_match_ct, ptr %ct.i, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 -1 to ptr), ptr %39, align 4, !annotation !85
  %41 = ptrtoint ptr %rule14.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rule14.i, align 4
  %action.i.i = getelementptr inbounds %struct.flow_rule, ptr %42, i32 0, i32 1
  %entries.i.i = getelementptr inbounds %struct.flow_rule, ptr %42, i32 1
  %43 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %action.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp11.not.i.i = icmp eq i32 %44, 0
  br i1 %cmp11.not.i.i, label %if.end8.nfp_ct_check_meta.exit.thread_crit_edge, label %if.end8.for.body.i.i_crit_edge

if.end8.for.body.i.i_crit_edge:                   ; preds = %if.end8
  br label %for.body.i.i

if.end8.nfp_ct_check_meta.exit.thread_crit_edge:  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_ct_check_meta.exit.thread

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end8.for.body.i.i_crit_edge
  %i.013.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end8.for.body.i.i_crit_edge ]
  %act.012.i.i = phi ptr [ %arrayidx5.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %entries.i.i, %if.end8.for.body.i.i_crit_edge ]
  %45 = ptrtoint ptr %act.012.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %act.012.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %46)
  %cmp2.i.i = icmp eq i32 %46, 24
  br i1 %cmp2.i.i, label %get_flow_act.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.013.i.i, 1
  %arrayidx5.i.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.i, i32 0, i32 %inc.i.i
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %44
  br i1 %exitcond.not.i.i, label %for.inc.i.i.nfp_ct_check_meta.exit.thread_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.nfp_ct_check_meta.exit.thread_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_ct_check_meta.exit.thread

get_flow_act.exit.i:                              ; preds = %for.body.i.i
  %tobool.not.i14 = icmp eq ptr %act.012.i.i, null
  br i1 %tobool.not.i14, label %get_flow_act.exit.i.nfp_ct_check_meta.exit.thread_crit_edge, label %land.lhs.true.i

get_flow_act.exit.i.nfp_ct_check_meta.exit.thread_crit_edge: ; preds = %get_flow_act.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_ct_check_meta.exit.thread

land.lhs.true.i:                                  ; preds = %get_flow_act.exit.i
  %47 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %37, align 4
  %and.i = and i32 %48, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.nfp_ct_check_meta.exit.thread_crit_edge, label %if.then.i

land.lhs.true.i.nfp_ct_check_meta.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_ct_check_meta.exit.thread

if.then.i:                                        ; preds = %land.lhs.true.i
  %49 = getelementptr inbounds %struct.flow_action_entry, ptr %act.012.i.i, i32 0, i32 5
  %labels.i = getelementptr inbounds %struct.flow_action_entry, ptr %act.012.i.i, i32 0, i32 5, i32 0, i32 1
  call void @flow_rule_match_ct(ptr noundef %35, ptr noundef nonnull %ct.i) #12
  %50 = ptrtoint ptr %ct.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ct.i, align 4
  %52 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %39, align 4
  %arrayidx.i = getelementptr %struct.flow_dissector_key_ct, ptr %51, i32 0, i32 3, i32 0
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i, align 4
  %arrayidx6.i = getelementptr %struct.flow_dissector_key_ct, ptr %53, i32 0, i32 3, i32 0
  %56 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx6.i, align 4
  %58 = ptrtoint ptr %labels.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %labels.i, align 4
  %and740.i = xor i32 %59, %55
  %xor.i = and i32 %and740.i, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i)
  %tobool13.not.i = icmp eq i32 %xor.i, 0
  br i1 %tobool13.not.i, label %for.cond.i, label %if.then.i.nfp_ct_check_meta.exit.thread_crit_edge

if.then.i.nfp_ct_check_meta.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_ct_check_meta.exit.thread

for.cond.i:                                       ; preds = %if.then.i
  %arrayidx.1.i = getelementptr %struct.flow_dissector_key_ct, ptr %51, i32 0, i32 3, i32 1
  %60 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.1.i, align 4
  %arrayidx6.1.i = getelementptr %struct.flow_dissector_key_ct, ptr %53, i32 0, i32 3, i32 1
  %62 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx6.1.i, align 4
  %arrayidx8.1.i = getelementptr i32, ptr %labels.i, i32 1
  %64 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx8.1.i, align 4
  %and740.1.i = xor i32 %65, %61
  %xor.1.i = and i32 %and740.1.i, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.1.i)
  %tobool13.not.1.i = icmp eq i32 %xor.1.i, 0
  br i1 %tobool13.not.1.i, label %for.cond.1.i, label %for.cond.i.nfp_ct_check_meta.exit.thread_crit_edge

for.cond.i.nfp_ct_check_meta.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_ct_check_meta.exit.thread

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.flow_dissector_key_ct, ptr %51, i32 0, i32 3, i32 2
  %66 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.2.i, align 4
  %arrayidx6.2.i = getelementptr %struct.flow_dissector_key_ct, ptr %53, i32 0, i32 3, i32 2
  %68 = ptrtoint ptr %arrayidx6.2.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx6.2.i, align 4
  %arrayidx8.2.i = getelementptr %struct.flow_action_entry, ptr %act.012.i.i, i32 0, i32 5, i32 0, i32 2
  %70 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx8.2.i, align 4
  %and740.2.i = xor i32 %71, %67
  %xor.2.i = and i32 %and740.2.i, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.2.i)
  %tobool13.not.2.i = icmp eq i32 %xor.2.i, 0
  br i1 %tobool13.not.2.i, label %for.cond.2.i, label %for.cond.1.i.nfp_ct_check_meta.exit.thread_crit_edge

for.cond.1.i.nfp_ct_check_meta.exit.thread_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_ct_check_meta.exit.thread

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr %struct.flow_dissector_key_ct, ptr %51, i32 0, i32 3, i32 3
  %72 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.3.i, align 4
  %arrayidx6.3.i = getelementptr %struct.flow_dissector_key_ct, ptr %53, i32 0, i32 3, i32 3
  %74 = ptrtoint ptr %arrayidx6.3.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx6.3.i, align 4
  %arrayidx8.3.i = getelementptr i32, ptr %labels.i, i32 3
  %76 = ptrtoint ptr %arrayidx8.3.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx8.3.i, align 4
  %and740.3.i = xor i32 %77, %73
  %xor.3.i = and i32 %and740.3.i, %75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.3.i)
  %tobool13.not.3.i = icmp eq i32 %xor.3.i, 0
  br i1 %tobool13.not.3.i, label %for.cond.3.i, label %for.cond.2.i.nfp_ct_check_meta.exit.thread_crit_edge

for.cond.2.i.nfp_ct_check_meta.exit.thread_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_ct_check_meta.exit.thread

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %ct_mark.i = getelementptr inbounds %struct.flow_dissector_key_ct, ptr %51, i32 0, i32 2
  %78 = ptrtoint ptr %ct_mark.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ct_mark.i, align 4
  %ct_mark17.i = getelementptr inbounds %struct.flow_dissector_key_ct, ptr %53, i32 0, i32 2
  %80 = ptrtoint ptr %ct_mark17.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ct_mark17.i, align 4
  %mark.i = getelementptr inbounds %struct.anon.222, ptr %49, i32 0, i32 1
  %82 = ptrtoint ptr %mark.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mark.i, align 4
  %and1839.i = xor i32 %83, %79
  %xor22.i = and i32 %and1839.i, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor22.i)
  %tobool23.not.i = icmp eq i32 %xor22.i, 0
  br i1 %tobool23.not.i, label %if.end12, label %for.cond.3.i.nfp_ct_check_meta.exit.thread_crit_edge

for.cond.3.i.nfp_ct_check_meta.exit.thread_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_ct_check_meta.exit.thread

nfp_ct_check_meta.exit.thread:                    ; preds = %for.cond.3.i.nfp_ct_check_meta.exit.thread_crit_edge, %for.cond.2.i.nfp_ct_check_meta.exit.thread_crit_edge, %for.cond.1.i.nfp_ct_check_meta.exit.thread_crit_edge, %for.cond.i.nfp_ct_check_meta.exit.thread_crit_edge, %if.then.i.nfp_ct_check_meta.exit.thread_crit_edge, %land.lhs.true.i.nfp_ct_check_meta.exit.thread_crit_edge, %get_flow_act.exit.i.nfp_ct_check_meta.exit.thread_crit_edge, %for.inc.i.i.nfp_ct_check_meta.exit.thread_crit_edge, %if.end8.nfp_ct_check_meta.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ct.i) #12
  br label %cleanup

if.end12:                                         ; preds = %for.cond.3.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ct.i) #12
  %84 = ptrtoint ptr %tc_m_entry to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tc_m_entry, align 4
  %86 = ptrtoint ptr %new_cookie to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %new_cookie, align 4
  %arrayidx15 = getelementptr [2 x i32], ptr %tc_m_entry, i32 0, i32 1
  %87 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx15, align 4
  %89 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %0, align 4
  %90 = ptrtoint ptr %nft_entry to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %nft_entry, align 8
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %1, align 4
  %nft_merge_tb = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt, i32 0, i32 12
  %call19 = call fastcc ptr @get_hashentry(ptr noundef %nft_merge_tb, ptr noundef nonnull %new_cookie, [7 x i32] [i32 12, i32 262160, i32 0, i32 256, i32 0, i32 0, i32 0], i32 noundef 56)
  %cmp.i15 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i15, label %if.end12.cleanup_crit_edge, label %if.end23

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  %cookie24 = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %call19, i32 0, i32 1
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %new_cookie, ptr noundef dereferenceable(12) %cookie24, i32 12) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool26.not = icmp eq i32 %bcmp, 0
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %93 = call ptr @memcpy(ptr %cookie24, ptr %new_cookie, i32 12)
  %zt30 = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %call19, i32 0, i32 3
  %94 = ptrtoint ptr %zt30 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %zt, ptr %zt30, align 4
  %tc_m_parent = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %call19, i32 0, i32 6
  %95 = ptrtoint ptr %tc_m_parent to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %tc_m_entry, ptr %tc_m_parent, align 4
  %nft_parent = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %call19, i32 0, i32 7
  %96 = ptrtoint ptr %nft_parent to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %nft_entry, ptr %nft_parent, align 4
  %tc_flower_cookie = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %call19, i32 0, i32 8
  %97 = ptrtoint ptr %tc_flower_cookie to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %tc_flower_cookie, align 4
  %netdev = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %3, i32 0, i32 4
  %98 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %netdev, align 4
  %100 = ptrtoint ptr %call19 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %call19, align 4
  %tc_merge_list = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %call19, i32 0, i32 5
  %children = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %tc_m_entry, i32 0, i32 7
  %101 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %children, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %tc_merge_list, ptr noundef %children, ptr noundef %102) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end28.list_add.exit_crit_edge

if.end28.list_add.exit_crit_edge:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %tc_merge_list, ptr %prev1.i.i, align 4
  %104 = ptrtoint ptr %tc_merge_list to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %102, ptr %tc_merge_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %call19, i32 0, i32 5, i32 1
  %105 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %children, ptr %prev3.i.i, align 4
  %106 = ptrtoint ptr %children to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %tc_merge_list, ptr %children, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end28.list_add.exit_crit_edge
  %nft_flow_list = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %call19, i32 0, i32 4
  %children32 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %nft_entry, i32 0, i32 6
  %107 = ptrtoint ptr %children32 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %children32, align 4
  %call.i.i16 = call zeroext i1 @__list_add_valid(ptr noundef %nft_flow_list, ptr noundef %children32, ptr noundef %108) #12
  br i1 %call.i.i16, label %if.end.i.i19, label %list_add.exit.list_add.exit20_crit_edge

list_add.exit.list_add.exit20_crit_edge:          ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit20

if.end.i.i19:                                     ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i17 = getelementptr inbounds %struct.list_head, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %prev1.i.i17 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %nft_flow_list, ptr %prev1.i.i17, align 4
  %110 = ptrtoint ptr %nft_flow_list to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %108, ptr %nft_flow_list, align 4
  %prev3.i.i18 = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %call19, i32 0, i32 4, i32 1
  %111 = ptrtoint ptr %prev3.i.i18 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %children32, ptr %prev3.i.i18, align 4
  %112 = ptrtoint ptr %children32 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %nft_flow_list, ptr %children32, align 4
  br label %list_add.exit20

list_add.exit20:                                  ; preds = %if.end.i.i19, %list_add.exit.list_add.exit20_crit_edge
  %call33 = call fastcc i32 @nfp_fl_ct_add_offload(ptr noundef %call19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %list_add.exit20.err_nft_ct_offload_crit_edge

list_add.exit20.err_nft_ct_offload_crit_edge:     ; preds = %list_add.exit20
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_nft_ct_offload

if.end36:                                         ; preds = %list_add.exit20
  %hash_node = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %call19, i32 0, i32 2
  %call38 = call fastcc i32 @rhashtable_insert_fast(ptr noundef %nft_merge_tb, ptr noundef %hash_node, [7 x i32] [i32 12, i32 262160, i32 0, i32 256, i32 0, i32 0, i32 0])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %err_nft_ct_merge_insert

if.end41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %nft_merge_count = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt, i32 0, i32 13
  %113 = ptrtoint ptr %nft_merge_count to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %nft_merge_count, align 4
  %inc = add i32 %114, 1
  store i32 %inc, ptr %nft_merge_count, align 4
  br label %cleanup

err_nft_ct_merge_insert:                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %priv = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt, i32 0, i32 2
  %115 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %priv, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 8
  %119 = ptrtoint ptr %tc_flower_cookie to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %tc_flower_cookie, align 4
  %121 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %call19, align 4
  %call44 = call fastcc i32 @nfp_fl_ct_del_offload(ptr noundef %118, i32 noundef %120, ptr noundef %122)
  br label %err_nft_ct_offload

err_nft_ct_offload:                               ; preds = %err_nft_ct_merge_insert, %list_add.exit20.err_nft_ct_offload_crit_edge
  %call.i.i21 = call zeroext i1 @__list_del_entry_valid(ptr noundef %tc_merge_list) #12
  br i1 %call.i.i21, label %if.end.i.i22, label %err_nft_ct_offload.list_del.exit_crit_edge

err_nft_ct_offload.list_del.exit_crit_edge:       ; preds = %err_nft_ct_offload
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i22:                                     ; preds = %err_nft_ct_offload
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %call19, i32 0, i32 5, i32 1
  %123 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %prev.i.i, align 4
  %125 = ptrtoint ptr %tc_merge_list to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %tc_merge_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %124, ptr %prev1.i.i.i, align 4
  %128 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %126, ptr %124, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i22, %err_nft_ct_offload.list_del.exit_crit_edge
  %129 = ptrtoint ptr %tc_merge_list to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr inttoptr (i32 256 to ptr), ptr %tc_merge_list, align 4
  %prev.i = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %call19, i32 0, i32 5, i32 1
  %130 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %call.i.i23 = call zeroext i1 @__list_del_entry_valid(ptr noundef %nft_flow_list) #12
  br i1 %call.i.i23, label %if.end.i.i26, label %list_del.exit.list_del.exit28_crit_edge

list_del.exit.list_del.exit28_crit_edge:          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit28

if.end.i.i26:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i24 = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %call19, i32 0, i32 4, i32 1
  %131 = ptrtoint ptr %prev.i.i24 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %prev.i.i24, align 4
  %133 = ptrtoint ptr %nft_flow_list to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %nft_flow_list, align 4
  %prev1.i.i.i25 = getelementptr inbounds %struct.list_head, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %prev1.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %132, ptr %prev1.i.i.i25, align 4
  %136 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile ptr %134, ptr %132, align 4
  br label %list_del.exit28

list_del.exit28:                                  ; preds = %if.end.i.i26, %list_del.exit.list_del.exit28_crit_edge
  %137 = ptrtoint ptr %nft_flow_list to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr inttoptr (i32 256 to ptr), ptr %nft_flow_list, align 4
  %prev.i27 = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %call19, i32 0, i32 4, i32 1
  %138 = ptrtoint ptr %prev.i27 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i27, align 4
  call void @kfree(ptr noundef %call19) #12
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit28, %if.end41, %if.end23.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %nfp_ct_check_meta.exit.thread, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb25.i.cleanup_crit_edge, %for.body23.i.cleanup_crit_edge, %for.body23.i.cleanup_crit_edge49, %for.body23.i.cleanup_crit_edge50, %for.body23.i.cleanup_crit_edge51, %for.body23.i.cleanup_crit_edge52, %for.body23.i.cleanup_crit_edge53, %if.end.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge44, %for.body.i.cleanup_crit_edge45, %for.body.i.cleanup_crit_edge46, %for.body.i.cleanup_crit_edge47, %for.body.i.cleanup_crit_edge48
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %new_cookie) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_control(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_basic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv4_addrs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv6_addrs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ports(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_eth_addrs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_vlan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_mpls(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_tcp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ip(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_keyid(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_ipv4_addrs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_ipv6_addrs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_control(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_ip(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_opts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_fl_ct_add_offload(ptr nocapture noundef %m_entry) unnamed_addr #2 align 64 {
entry:
  %match13.i = alloca %struct.flow_match_basic, align 4
  %tun_type = alloca i32, align 4
  %key_layer = alloca %struct.nfp_fl_key_ls, align 4
  %tmp_layer = alloca %struct.nfp_fl_key_ls, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tun_type) #12
  %0 = ptrtoint ptr %tun_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tun_type, align 4
  %zt1 = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %m_entry, i32 0, i32 3
  %1 = ptrtoint ptr %zt1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %zt1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %key_layer) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp_layer) #12
  %3 = call ptr @memset(ptr %tmp_layer, i32 255, i32 12)
  %priv2 = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %2, i32 0, i32 2
  %4 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv2, align 4
  %6 = ptrtoint ptr %m_entry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m_entry, align 4
  %flower_ext_feats = getelementptr inbounds %struct.nfp_flower_priv, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %flower_ext_feats to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %flower_ext_feats, align 8
  %and = and i64 %9, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %tc_m_parent = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %m_entry, i32 0, i32 6
  %10 = ptrtoint ptr %tc_m_parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tc_m_parent, align 4
  %pre_ct_parent = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %pre_ct_parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pre_ct_parent, align 4
  %rule = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rule, align 4
  %nft_parent = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %m_entry, i32 0, i32 7
  %16 = ptrtoint ptr %nft_parent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nft_parent, align 4
  %rule5 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %rule5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rule5, align 4
  %post_ct_parent = getelementptr inbounds %struct.nfp_fl_ct_tc_merge, ptr %11, i32 0, i32 6
  %20 = ptrtoint ptr %post_ct_parent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %post_ct_parent, align 4
  %rule8 = getelementptr inbounds %struct.nfp_fl_ct_flow_entry, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %rule8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rule8, align 4
  %24 = call ptr @memset(ptr %key_layer, i32 0, i32 12)
  %key_layer13 = getelementptr inbounds %struct.nfp_fl_key_ls, ptr %tmp_layer, i32 0, i32 1
  %key_layer14 = getelementptr inbounds %struct.nfp_fl_key_ls, ptr %key_layer, i32 0, i32 1
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %5, align 8
  %call = call i32 @nfp_flower_calculate_key_layers(ptr noundef %26, ptr noundef %7, ptr noundef nonnull %tmp_layer, ptr noundef %15, ptr noundef nonnull %tun_type, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.end, label %entry.cleanup385_crit_edge

entry.cleanup385_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup385

if.end:                                           ; preds = %entry
  %27 = ptrtoint ptr %key_layer13 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %key_layer13, align 4
  %29 = ptrtoint ptr %key_layer14 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %key_layer14, align 4
  %or603 = or i8 %30, %28
  store i8 %or603, ptr %key_layer14, align 4
  %31 = ptrtoint ptr %tmp_layer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tmp_layer, align 4
  %33 = ptrtoint ptr %key_layer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %key_layer, align 4
  %or18 = or i32 %34, %32
  store i32 %or18, ptr %key_layer, align 4
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %5, align 8
  %37 = ptrtoint ptr %m_entry to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %m_entry, align 4
  %call.1 = call i32 @nfp_flower_calculate_key_layers(ptr noundef %36, ptr noundef %38, ptr noundef nonnull %tmp_layer, ptr noundef %19, ptr noundef nonnull %tun_type, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool12.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool12.not.1, label %if.end.1, label %if.end.cleanup385_crit_edge

if.end.cleanup385_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup385

if.end.1:                                         ; preds = %if.end
  %39 = ptrtoint ptr %key_layer13 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %key_layer13, align 4
  %41 = ptrtoint ptr %key_layer14 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %key_layer14, align 4
  %or603.1 = or i8 %42, %40
  store i8 %or603.1, ptr %key_layer14, align 4
  %43 = ptrtoint ptr %tmp_layer to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tmp_layer, align 4
  %45 = ptrtoint ptr %key_layer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %key_layer, align 4
  %or18.1 = or i32 %46, %44
  store i32 %or18.1, ptr %key_layer, align 4
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %5, align 8
  %49 = ptrtoint ptr %m_entry to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %m_entry, align 4
  %call.2 = call i32 @nfp_flower_calculate_key_layers(ptr noundef %48, ptr noundef %50, ptr noundef nonnull %tmp_layer, ptr noundef %23, ptr noundef nonnull %tun_type, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool12.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool12.not.2, label %if.end.2, label %if.end.1.cleanup385_crit_edge

if.end.1.cleanup385_crit_edge:                    ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup385

if.end.2:                                         ; preds = %if.end.1
  %51 = ptrtoint ptr %key_layer13 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %key_layer13, align 4
  %53 = ptrtoint ptr %key_layer14 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %key_layer14, align 4
  %or603.2 = or i8 %54, %52
  store i8 %or603.2, ptr %key_layer14, align 4
  %55 = ptrtoint ptr %tmp_layer to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tmp_layer, align 4
  %57 = ptrtoint ptr %key_layer to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %key_layer, align 4
  %or18.2 = or i32 %58, %56
  store i32 %or18.2, ptr %key_layer, align 4
  %.fca.1.load = load i32, ptr %key_layer14, align 4
  %59 = and i32 %.fca.1.load, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i = icmp eq i32 %59, 0
  %60 = lshr exact i32 %59, 22
  %spec.select617 = select i1 %tobool.not.i, i32 4, i32 8
  %61 = and i32 %.fca.1.load, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool6.not.i = icmp eq i32 %61, 0
  %add10.i = add nuw nsw i32 %spec.select617, 4
  %key_size.1.i = select i1 %tobool6.not.i, i32 %spec.select617, i32 %add10.i
  %62 = and i32 %.fca.1.load, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool15.not.i = icmp eq i32 %62, 0
  %add19.i = add nuw nsw i32 %key_size.1.i, 16
  %key_size.2.i = select i1 %tobool15.not.i, i32 %key_size.1.i, i32 %add19.i
  %63 = and i32 %.fca.1.load, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool24.not.i = icmp eq i32 %63, 0
  %add28.i = add nuw nsw i32 %key_size.2.i, 4
  %key_size.3.i = select i1 %tobool24.not.i, i32 %key_size.2.i, i32 %add28.i
  %64 = and i32 %.fca.1.load, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool33.not.i = icmp eq i32 %64, 0
  %add37.i = add nuw nsw i32 %key_size.3.i, 12
  %key_size.4.i = select i1 %tobool33.not.i, i32 %key_size.3.i, i32 %add37.i
  %65 = and i32 %.fca.1.load, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool42.not.i = icmp eq i32 %65, 0
  %add46.i = add nuw nsw i32 %key_size.4.i, 40
  %key_size.5.i = select i1 %tobool42.not.i, i32 %key_size.4.i, i32 %add46.i
  %and48.i = and i32 %or18.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %if.end.2.if.end60.i_crit_edge, label %if.then50.i

if.end.2.if.end60.i_crit_edge:                    ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.i

if.then50.i:                                      ; preds = %if.end.2
  %and54.i = and i32 %or18.2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.else.i, label %if.then56.i

if.then56.i:                                      ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #14
  %add57.i = add nuw nsw i32 %key_size.5.i, 48
  br label %if.end60.i

if.else.i:                                        ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #14
  %add58.i = add nuw nsw i32 %key_size.5.i, 24
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.else.i, %if.then56.i, %if.end.2.if.end60.i_crit_edge
  %key_map.sroa.26.0 = phi i32 [ 0, %if.end.2.if.end60.i_crit_edge ], [ %key_size.5.i, %if.else.i ], [ %key_size.5.i, %if.then56.i ]
  %key_size.6.i = phi i32 [ %key_size.5.i, %if.end.2.if.end60.i_crit_edge ], [ %add58.i, %if.else.i ], [ %add57.i, %if.then56.i ]
  %and62.i = and i32 %or18.2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  %add67.i = add nuw nsw i32 %key_size.6.i, 8
  %key_size.7.i = select i1 %tobool63.not.i, i32 %key_size.6.i, i32 %add67.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.fca.1.load)
  %tobool72.not.i = icmp sgt i32 %.fca.1.load, -1
  %and74.i = and i32 %or18.2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  %or.cond.i = select i1 %tobool72.not.i, i1 %tobool75.not.i, i1 false
  br i1 %or.cond.i, label %if.end60.i.if.end87.i_crit_edge, label %if.then76.i

if.end60.i.if.end87.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87.i

if.then76.i:                                      ; preds = %if.end60.i
  %and80.i = and i32 %or18.2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.not.i, label %if.else84.i, label %if.then82.i

if.then82.i:                                      ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #14
  %add83.i = add nuw nsw i32 %key_size.7.i, 44
  br label %if.end87.i

if.else84.i:                                      ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #14
  %add85.i = add nuw nsw i32 %key_size.7.i, 20
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.else84.i, %if.then82.i, %if.end60.i.if.end87.i_crit_edge
  %key_map.sroa.32.0 = phi i32 [ 0, %if.end60.i.if.end87.i_crit_edge ], [ %key_size.7.i, %if.else84.i ], [ %key_size.7.i, %if.then82.i ]
  %key_size.8.i = phi i32 [ %key_size.7.i, %if.end60.i.if.end87.i_crit_edge ], [ %add85.i, %if.else84.i ], [ %add83.i, %if.then82.i ]
  %and89.i = and i32 %or18.2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %tobool90.not.i = icmp eq i32 %and89.i, 0
  %add94.i = add nuw nsw i32 %key_size.8.i, 32
  %key_size.9.i = select i1 %tobool90.not.i, i32 %key_size.8.i, i32 %add94.i
  %key_size = getelementptr inbounds %struct.nfp_fl_key_ls, ptr %key_layer, i32 0, i32 2
  %66 = ptrtoint ptr %key_size to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %key_size.9.i, ptr %key_size, align 4
  %call20 = call ptr @nfp_flower_allocate_new(ptr noundef nonnull %key_layer) #12
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end87.i.cleanup385_crit_edge, label %if.end23

if.end87.i.cleanup385_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup385

if.end23:                                         ; preds = %if.end87.i
  %unmasked_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %call20, i32 0, i32 7
  %67 = ptrtoint ptr %unmasked_data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %unmasked_data, align 4
  %69 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %key_size, align 4
  %71 = call ptr @memset(ptr %68, i32 0, i32 %70)
  %mask_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %call20, i32 0, i32 8
  %72 = ptrtoint ptr %mask_data to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mask_data, align 4
  %74 = load i32, ptr %key_size, align 4
  %75 = call ptr @memset(ptr %73, i32 0, i32 %74)
  %76 = load ptr, ptr %unmasked_data, align 4
  %77 = load ptr, ptr %mask_data, align 4
  %78 = ptrtoint ptr %key_layer14 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %key_layer14, align 4
  call void @nfp_flower_compile_meta(ptr noundef %76, ptr noundef %77, i8 noundef zeroext %79) #12
  %80 = ptrtoint ptr %key_layer14 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %key_layer14, align 4
  %82 = and i8 %81, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool36.not = icmp eq i8 %82, 0
  br i1 %tobool36.not, label %if.end23.if.end45_crit_edge, label %if.then37

if.end23.if.end45_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then37:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr40 = getelementptr i8, ptr %76, i32 %60
  %add.ptr42 = getelementptr i8, ptr %77, i32 %60
  %83 = ptrtoint ptr %key_layer to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %key_layer, align 4
  call void @nfp_flower_compile_ext_meta(ptr noundef %add.ptr40, i32 noundef %84) #12
  %85 = ptrtoint ptr %key_layer to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %key_layer, align 4
  call void @nfp_flower_compile_ext_meta(ptr noundef %add.ptr42, i32 noundef %86) #12
  br label %if.end45

if.end45:                                         ; preds = %if.then37, %if.end23.if.end45_crit_edge
  %87 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %5, align 8
  %call47 = call i32 @nfp_flower_get_port_id_from_netdev(ptr noundef %88, ptr noundef %7) #12
  %conv49 = select i1 %tobool6.not.i, i32 0, i32 %spec.select617
  %add.ptr50 = getelementptr i8, ptr %76, i32 %conv49
  %89 = ptrtoint ptr %tun_type to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tun_type, align 4
  %call53 = call i32 @nfp_flower_compile_port(ptr noundef %add.ptr50, i32 noundef %call47, i1 noundef zeroext false, i32 noundef %90, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end45.ct_offload_err_crit_edge

if.end45.ct_offload_err_crit_edge:                ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %ct_offload_err

if.end56:                                         ; preds = %if.end45
  %add.ptr52 = getelementptr i8, ptr %77, i32 %conv49
  %91 = ptrtoint ptr %tun_type to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tun_type, align 4
  %call57 = call i32 @nfp_flower_compile_port(ptr noundef %add.ptr52, i32 noundef %call47, i1 noundef zeroext true, i32 noundef %92, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end56.ct_offload_err_crit_edge

if.end56.ct_offload_err_crit_edge:                ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %ct_offload_err

if.end60:                                         ; preds = %if.end56
  br i1 %tobool.not, label %for.body66.preheader, label %if.end60.if.end76_crit_edge

if.end60.if.end76_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

for.body66.preheader:                             ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  call void @nfp_flower_compile_tci(ptr noundef %76, ptr noundef %77, ptr noundef %15) #12
  call void @nfp_flower_compile_tci(ptr noundef %76, ptr noundef %77, ptr noundef %19) #12
  call void @nfp_flower_compile_tci(ptr noundef %76, ptr noundef %77, ptr noundef %23) #12
  br label %if.end76

if.end76:                                         ; preds = %for.body66.preheader, %if.end60.if.end76_crit_edge
  %93 = ptrtoint ptr %key_layer14 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %key_layer14, align 4
  %95 = and i8 %94, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool80.not = icmp eq i8 %95, 0
  br i1 %tobool80.not, label %if.end76.if.end100_crit_edge, label %if.then81

if.end76.if.end100_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

if.then81:                                        ; preds = %if.end76
  %conv83 = select i1 %tobool15.not.i, i32 0, i32 %key_size.1.i
  %add.ptr84 = getelementptr i8, ptr %76, i32 %conv83
  %add.ptr86 = getelementptr i8, ptr %77, i32 %conv83
  call void @nfp_flower_compile_mac(ptr noundef %add.ptr84, ptr noundef %add.ptr86, ptr noundef %15) #12
  %call93 = call i32 @nfp_flower_compile_mpls(ptr noundef %add.ptr84, ptr noundef %add.ptr86, ptr noundef %15, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %for.cond87, label %if.then81.ct_offload_err_crit_edge

if.then81.ct_offload_err_crit_edge:               ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  br label %ct_offload_err

for.cond87:                                       ; preds = %if.then81
  call void @nfp_flower_compile_mac(ptr noundef %add.ptr84, ptr noundef %add.ptr86, ptr noundef %19) #12
  %call93.1 = call i32 @nfp_flower_compile_mpls(ptr noundef %add.ptr84, ptr noundef %add.ptr86, ptr noundef %19, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.1)
  %tobool94.not.1 = icmp eq i32 %call93.1, 0
  br i1 %tobool94.not.1, label %for.cond87.1, label %for.cond87.ct_offload_err_crit_edge

for.cond87.ct_offload_err_crit_edge:              ; preds = %for.cond87
  call void @__sanitizer_cov_trace_pc() #14
  br label %ct_offload_err

for.cond87.1:                                     ; preds = %for.cond87
  call void @nfp_flower_compile_mac(ptr noundef %add.ptr84, ptr noundef %add.ptr86, ptr noundef %23) #12
  %call93.2 = call i32 @nfp_flower_compile_mpls(ptr noundef %add.ptr84, ptr noundef %add.ptr86, ptr noundef %23, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.2)
  %tobool94.not.2 = icmp eq i32 %call93.2, 0
  br i1 %tobool94.not.2, label %for.cond87.1.if.end100_crit_edge, label %for.cond87.1.ct_offload_err_crit_edge

for.cond87.1.ct_offload_err_crit_edge:            ; preds = %for.cond87.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %ct_offload_err

for.cond87.1.if.end100_crit_edge:                 ; preds = %for.cond87.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

if.end100:                                        ; preds = %for.cond87.1.if.end100_crit_edge, %if.end76.if.end100_crit_edge
  %96 = ptrtoint ptr %key_layer14 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %key_layer14, align 4
  %98 = and i8 %97, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool104.not = icmp eq i8 %98, 0
  br i1 %tobool104.not, label %if.end100.if.end119_crit_edge, label %if.then105

if.end100.if.end119_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

if.then105:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  %conv107 = select i1 %tobool33.not.i, i32 0, i32 %key_size.3.i
  %add.ptr108 = getelementptr i8, ptr %76, i32 %conv107
  %add.ptr110 = getelementptr i8, ptr %77, i32 %conv107
  call void @nfp_flower_compile_ipv4(ptr noundef %add.ptr108, ptr noundef %add.ptr110, ptr noundef %15) #12
  call void @nfp_flower_compile_ipv4(ptr noundef %add.ptr108, ptr noundef %add.ptr110, ptr noundef %19) #12
  call void @nfp_flower_compile_ipv4(ptr noundef %add.ptr108, ptr noundef %add.ptr110, ptr noundef %23) #12
  br label %if.end119

if.end119:                                        ; preds = %if.then105, %if.end100.if.end119_crit_edge
  %99 = ptrtoint ptr %key_layer14 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %key_layer14, align 4
  %101 = and i8 %100, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool123.not = icmp eq i8 %101, 0
  br i1 %tobool123.not, label %if.end119.if.end138_crit_edge, label %if.then124

if.end119.if.end138_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138

if.then124:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #14
  %conv126 = select i1 %tobool42.not.i, i32 0, i32 %key_size.4.i
  %add.ptr127 = getelementptr i8, ptr %76, i32 %conv126
  %add.ptr129 = getelementptr i8, ptr %77, i32 %conv126
  call void @nfp_flower_compile_ipv6(ptr noundef %add.ptr127, ptr noundef %add.ptr129, ptr noundef %15) #12
  call void @nfp_flower_compile_ipv6(ptr noundef %add.ptr127, ptr noundef %add.ptr129, ptr noundef %19) #12
  call void @nfp_flower_compile_ipv6(ptr noundef %add.ptr127, ptr noundef %add.ptr129, ptr noundef %23) #12
  br label %if.end138

if.end138:                                        ; preds = %if.then124, %if.end119.if.end138_crit_edge
  %102 = ptrtoint ptr %key_layer14 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %key_layer14, align 4
  %104 = and i8 %103, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool142.not = icmp eq i8 %104, 0
  br i1 %tobool142.not, label %if.end138.if.end157_crit_edge, label %if.then143

if.end138.if.end157_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end157

if.then143:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #14
  %conv145 = select i1 %tobool24.not.i, i32 0, i32 %key_size.2.i
  %add.ptr146 = getelementptr i8, ptr %76, i32 %conv145
  %add.ptr148 = getelementptr i8, ptr %77, i32 %conv145
  call void @nfp_flower_compile_tport(ptr noundef %add.ptr146, ptr noundef %add.ptr148, ptr noundef %15) #12
  call void @nfp_flower_compile_tport(ptr noundef %add.ptr146, ptr noundef %add.ptr148, ptr noundef %19) #12
  call void @nfp_flower_compile_tport(ptr noundef %add.ptr146, ptr noundef %add.ptr148, ptr noundef %23) #12
  br label %if.end157

if.end157:                                        ; preds = %if.then143, %if.end138.if.end157_crit_edge
  %105 = ptrtoint ptr %key_layer to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %key_layer, align 4
  %and159 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %if.end157.if.end200_crit_edge, label %if.then161

if.end157.if.end200_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end200

if.then161:                                       ; preds = %if.end157
  %add.ptr164 = getelementptr i8, ptr %76, i32 %key_map.sroa.26.0
  %add.ptr166 = getelementptr i8, ptr %77, i32 %key_map.sroa.26.0
  %and168 = and i32 %106, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %for.body192.preheader, label %for.body175.preheader

for.body175.preheader:                            ; preds = %if.then161
  call void @nfp_flower_compile_ipv6_gre_tun(ptr noundef %add.ptr164, ptr noundef %add.ptr166, ptr noundef %15) #12
  call void @nfp_flower_compile_ipv6_gre_tun(ptr noundef %add.ptr164, ptr noundef %add.ptr166, ptr noundef %19) #12
  call void @nfp_flower_compile_ipv6_gre_tun(ptr noundef %add.ptr164, ptr noundef %add.ptr166, ptr noundef %23) #12
  %dst180 = getelementptr inbounds %struct.nfp_flower_tun_ipv6, ptr %add.ptr164, i32 0, i32 1
  %107 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %5, align 8
  %call182 = call ptr @nfp_tunnel_add_ipv6_off(ptr noundef %108, ptr noundef %dst180) #12
  %tobool183.not = icmp eq ptr %call182, null
  br i1 %tobool183.not, label %for.body175.preheader.ct_offload_err_crit_edge, label %cleanup.thread

for.body175.preheader.ct_offload_err_crit_edge:   ; preds = %for.body175.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %ct_offload_err

for.body192.preheader:                            ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #14
  call void @nfp_flower_compile_ipv4_gre_tun(ptr noundef %add.ptr164, ptr noundef %add.ptr166, ptr noundef %15) #12
  call void @nfp_flower_compile_ipv4_gre_tun(ptr noundef %add.ptr164, ptr noundef %add.ptr166, ptr noundef %19) #12
  call void @nfp_flower_compile_ipv4_gre_tun(ptr noundef %add.ptr164, ptr noundef %add.ptr166, ptr noundef %23) #12
  %dst197 = getelementptr inbounds %struct.nfp_flower_tun_ipv4, ptr %add.ptr164, i32 0, i32 1
  %109 = ptrtoint ptr %dst197 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dst197, align 4
  %nfp_tun_ipv4_addr = getelementptr inbounds %struct.nfp_fl_payload, ptr %call20, i32 0, i32 4
  %111 = ptrtoint ptr %nfp_tun_ipv4_addr to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %nfp_tun_ipv4_addr, align 4
  %112 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %5, align 8
  call void @nfp_tunnel_add_ipv4_off(ptr noundef %113, i32 noundef %110) #12
  br label %if.end200

cleanup.thread:                                   ; preds = %for.body175.preheader
  call void @__sanitizer_cov_trace_pc() #14
  %nfp_tun_ipv6 = getelementptr inbounds %struct.nfp_fl_payload, ptr %call20, i32 0, i32 5
  %114 = ptrtoint ptr %nfp_tun_ipv6 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call182, ptr %nfp_tun_ipv6, align 4
  br label %if.end200

if.end200:                                        ; preds = %cleanup.thread, %for.body192.preheader, %if.end157.if.end200_crit_edge
  %115 = ptrtoint ptr %key_layer to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %key_layer, align 4
  %and202 = and i32 %116, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and202)
  %tobool203.not = icmp eq i32 %and202, 0
  br i1 %tobool203.not, label %if.end200.if.end218_crit_edge, label %if.then204

if.end200.if.end218_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end218

if.then204:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #14
  %conv206 = select i1 %tobool63.not.i, i32 0, i32 %key_size.6.i
  %add.ptr207 = getelementptr i8, ptr %76, i32 %conv206
  %add.ptr209 = getelementptr i8, ptr %77, i32 %conv206
  call void @nfp_flower_compile_vlan(ptr noundef %add.ptr207, ptr noundef %add.ptr209, ptr noundef %15) #12
  call void @nfp_flower_compile_vlan(ptr noundef %add.ptr207, ptr noundef %add.ptr209, ptr noundef %19) #12
  call void @nfp_flower_compile_vlan(ptr noundef %add.ptr207, ptr noundef %add.ptr209, ptr noundef %23) #12
  br label %if.end218

if.end218:                                        ; preds = %if.then204, %if.end200.if.end218_crit_edge
  %117 = ptrtoint ptr %key_layer14 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %key_layer14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %118)
  %tobool222.not = icmp sgt i8 %118, -1
  br i1 %tobool222.not, label %lor.lhs.false, label %if.end218.if.then226_crit_edge

if.end218.if.then226_crit_edge:                   ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then226

lor.lhs.false:                                    ; preds = %if.end218
  %119 = ptrtoint ptr %key_layer to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %key_layer, align 4
  %and224 = and i32 %120, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and224)
  %tobool225.not = icmp eq i32 %and224, 0
  br i1 %tobool225.not, label %lor.lhs.false.if.end292_crit_edge, label %lor.lhs.false.if.then226_crit_edge

lor.lhs.false.if.then226_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then226

lor.lhs.false.if.end292_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end292

if.then226:                                       ; preds = %lor.lhs.false.if.then226_crit_edge, %if.end218.if.then226_crit_edge
  %add.ptr229 = getelementptr i8, ptr %76, i32 %key_map.sroa.32.0
  %add.ptr231 = getelementptr i8, ptr %77, i32 %key_map.sroa.32.0
  %121 = ptrtoint ptr %key_layer to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %key_layer, align 4
  %and233 = and i32 %122, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and233)
  %tobool234.not = icmp eq i32 %and233, 0
  br i1 %tobool234.not, label %for.body264.preheader, label %for.body241.preheader

for.body241.preheader:                            ; preds = %if.then226
  call void @nfp_flower_compile_ipv6_udp_tun(ptr noundef %add.ptr229, ptr noundef %add.ptr231, ptr noundef %15) #12
  call void @nfp_flower_compile_ipv6_udp_tun(ptr noundef %add.ptr229, ptr noundef %add.ptr231, ptr noundef %19) #12
  call void @nfp_flower_compile_ipv6_udp_tun(ptr noundef %add.ptr229, ptr noundef %add.ptr231, ptr noundef %23) #12
  %dst247 = getelementptr inbounds %struct.nfp_flower_tun_ipv6, ptr %add.ptr229, i32 0, i32 1
  %123 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %5, align 8
  %call249 = call ptr @nfp_tunnel_add_ipv6_off(ptr noundef %124, ptr noundef %dst247) #12
  %tobool250.not = icmp eq ptr %call249, null
  br i1 %tobool250.not, label %for.body241.preheader.ct_offload_err_crit_edge, label %cleanup254.thread

for.body241.preheader.ct_offload_err_crit_edge:   ; preds = %for.body241.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %ct_offload_err

for.body264.preheader:                            ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #14
  call void @nfp_flower_compile_ipv4_udp_tun(ptr noundef %add.ptr229, ptr noundef %add.ptr231, ptr noundef %15) #12
  call void @nfp_flower_compile_ipv4_udp_tun(ptr noundef %add.ptr229, ptr noundef %add.ptr231, ptr noundef %19) #12
  call void @nfp_flower_compile_ipv4_udp_tun(ptr noundef %add.ptr229, ptr noundef %add.ptr231, ptr noundef %23) #12
  %dst270 = getelementptr inbounds %struct.nfp_flower_tun_ipv4, ptr %add.ptr229, i32 0, i32 1
  %125 = ptrtoint ptr %dst270 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dst270, align 4
  %nfp_tun_ipv4_addr271 = getelementptr inbounds %struct.nfp_fl_payload, ptr %call20, i32 0, i32 4
  %127 = ptrtoint ptr %nfp_tun_ipv4_addr271 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %nfp_tun_ipv4_addr271, align 4
  %128 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %5, align 8
  call void @nfp_tunnel_add_ipv4_off(ptr noundef %129, i32 noundef %126) #12
  br label %if.end273

cleanup254.thread:                                ; preds = %for.body241.preheader
  call void @__sanitizer_cov_trace_pc() #14
  %nfp_tun_ipv6253 = getelementptr inbounds %struct.nfp_fl_payload, ptr %call20, i32 0, i32 5
  %130 = ptrtoint ptr %nfp_tun_ipv6253 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call249, ptr %nfp_tun_ipv6253, align 4
  br label %if.end273

if.end273:                                        ; preds = %cleanup254.thread, %for.body264.preheader
  %131 = ptrtoint ptr %key_layer to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %key_layer, align 4
  %and275 = and i32 %132, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and275)
  %tobool276.not = icmp eq i32 %and275, 0
  br i1 %tobool276.not, label %if.end273.if.end292_crit_edge, label %if.then277

if.end273.if.end292_crit_edge:                    ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end292

if.then277:                                       ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #14
  %conv279 = select i1 %tobool90.not.i, i32 0, i32 %key_size.8.i
  %add.ptr280 = getelementptr i8, ptr %76, i32 %conv279
  %add.ptr282 = getelementptr i8, ptr %77, i32 %conv279
  call void @nfp_flower_compile_geneve_opt(ptr noundef %add.ptr280, ptr noundef %add.ptr282, ptr noundef %15) #12
  call void @nfp_flower_compile_geneve_opt(ptr noundef %add.ptr280, ptr noundef %add.ptr282, ptr noundef %19) #12
  call void @nfp_flower_compile_geneve_opt(ptr noundef %add.ptr280, ptr noundef %add.ptr282, ptr noundef %23) #12
  br label %if.end292

if.end292:                                        ; preds = %if.then277, %if.end273.if.end292_crit_edge, %lor.lhs.false.if.end292_crit_edge
  %action.i = getelementptr inbounds %struct.flow_rule, ptr %15, i32 0, i32 1
  %133 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %action.i, align 8
  %action2.i = getelementptr inbounds %struct.flow_rule, ptr %19, i32 0, i32 1
  %135 = ptrtoint ptr %action2.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %action2.i, align 8
  %add.i = add i32 %136, %134
  %action5.i = getelementptr inbounds %struct.flow_rule, ptr %23, i32 0, i32 1
  %137 = ptrtoint ptr %action5.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %action5.i, align 8
  %add7.i = add i32 %add.i, %138
  %call.i = call ptr @flow_rule_alloc(i32 noundef %add7.i) #12
  %tobool.not.i604 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i604, label %if.end292.ct_offload_err_crit_edge, label %if.end.i605

if.end292.ct_offload_err_crit_edge:               ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #14
  br label %ct_offload_err

if.end.i605:                                      ; preds = %if.end292
  %139 = call ptr @memcpy(ptr %call.i, ptr %15, i32 12)
  %140 = getelementptr inbounds %struct.flow_match_basic, ptr %match13.i, i32 0, i32 1
  %entries33.i = getelementptr inbounds %struct.flow_rule, ptr %call.i, i32 1
  %141 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %15, align 8
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %142, align 4
  %and.i.i.i = and i32 %144, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.end.i605.if.end21.i_crit_edge, label %if.then12.i

if.end.i605.if.end21.i_crit_edge:                 ; preds = %if.end.i605
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

if.then12.i:                                      ; preds = %if.end.i605
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match13.i) #12
  %145 = ptrtoint ptr %match13.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr inttoptr (i32 -1 to ptr), ptr %match13.i, align 4, !annotation !85
  %146 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr inttoptr (i32 -1 to ptr), ptr %140, align 4, !annotation !85
  call void @flow_rule_match_basic(ptr noundef %15, ptr noundef nonnull %match13.i) #12
  %147 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %140, align 4
  %ip_proto.i = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %ip_proto.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool15.not.i606 = icmp eq i8 %150, 0
  br i1 %tobool15.not.i606, label %if.then12.i.if.end20.i608_crit_edge, label %if.then16.i607

if.then12.i.if.end20.i608_crit_edge:              ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i608

if.then16.i607:                                   ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  %151 = call ptr @memcpy(ptr %call.i, ptr %15, i32 12)
  br label %if.end20.i608

if.end20.i608:                                    ; preds = %if.then16.i607, %if.then12.i.if.end20.i608_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match13.i) #12
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end20.i608, %if.end.i605.if.end21.i_crit_edge
  %152 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %action.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp2674.not.i = icmp eq i32 %153, 0
  br i1 %cmp2674.not.i, label %if.end21.i.for.inc36.i_crit_edge, label %for.body27.i.preheader

if.end21.i.for.inc36.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc36.i

for.body27.i.preheader:                           ; preds = %if.end21.i
  %entries.i = getelementptr inbounds %struct.flow_rule, ptr %15, i32 1
  br label %for.body27.i

for.body27.i:                                     ; preds = %for.inc.i.for.body27.i_crit_edge, %for.body27.i.preheader
  %offset.176.i = phi i32 [ %offset.2.i, %for.inc.i.for.body27.i_crit_edge ], [ 0, %for.body27.i.preheader ]
  %i.075.i = phi i32 [ %inc35.i, %for.inc.i.for.body27.i_crit_edge ], [ 0, %for.body27.i.preheader ]
  %arrayidx30.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i, i32 0, i32 %i.075.i
  %154 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx30.i, align 8
  %156 = zext i32 %155 to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %155, label %sw.default.i [
    i32 23, label %for.body27.i.for.inc.i_crit_edge
    i32 3, label %for.body27.i.for.inc.i_crit_edge681
    i32 24, label %for.body27.i.for.inc.i_crit_edge682
  ]

for.body27.i.for.inc.i_crit_edge682:              ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.body27.i.for.inc.i_crit_edge681:              ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.body27.i.for.inc.i_crit_edge:                 ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

sw.default.i:                                     ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc.i = add i32 %offset.176.i, 1
  %arrayidx34.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries33.i, i32 0, i32 %offset.176.i
  %157 = call ptr @memcpy(ptr %arrayidx34.i, ptr %arrayidx30.i, i32 72)
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.default.i, %for.body27.i.for.inc.i_crit_edge, %for.body27.i.for.inc.i_crit_edge681, %for.body27.i.for.inc.i_crit_edge682
  %offset.2.i = phi i32 [ %inc.i, %sw.default.i ], [ %offset.176.i, %for.body27.i.for.inc.i_crit_edge ], [ %offset.176.i, %for.body27.i.for.inc.i_crit_edge681 ], [ %offset.176.i, %for.body27.i.for.inc.i_crit_edge682 ]
  %inc35.i = add nuw i32 %i.075.i, 1
  %158 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %action.i, align 8
  %cmp26.i = icmp ult i32 %inc35.i, %159
  br i1 %cmp26.i, label %for.inc.i.for.body27.i_crit_edge, label %for.inc.i.for.inc36.i_crit_edge

for.inc.i.for.inc36.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc36.i

for.inc.i.for.body27.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body27.i

for.inc36.i:                                      ; preds = %for.inc.i.for.inc36.i_crit_edge, %if.end21.i.for.inc36.i_crit_edge
  %offset.1.lcssa.i = phi i32 [ 0, %if.end21.i.for.inc36.i_crit_edge ], [ %offset.2.i, %for.inc.i.for.inc36.i_crit_edge ]
  %160 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %19, align 8
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %161, align 4
  %and.i.i.1.i = and i32 %163, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.1.i)
  %tobool.i.i.not.1.i = icmp eq i32 %and.i.i.1.i, 0
  br i1 %tobool.i.i.not.1.i, label %for.inc36.i.if.end21.1.i_crit_edge, label %if.then12.1.i

for.inc36.i.if.end21.1.i_crit_edge:               ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.1.i

if.then12.1.i:                                    ; preds = %for.inc36.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match13.i) #12
  %164 = ptrtoint ptr %match13.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr inttoptr (i32 -1 to ptr), ptr %match13.i, align 4, !annotation !85
  %165 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr inttoptr (i32 -1 to ptr), ptr %140, align 4, !annotation !85
  call void @flow_rule_match_basic(ptr noundef %19, ptr noundef nonnull %match13.i) #12
  %166 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %140, align 4
  %ip_proto.1.i = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %ip_proto.1.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %ip_proto.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool15.not.1.i = icmp eq i8 %169, 0
  br i1 %tobool15.not.1.i, label %if.then12.1.i.if.end20.1.i_crit_edge, label %if.then16.1.i

if.then12.1.i.if.end20.1.i_crit_edge:             ; preds = %if.then12.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.1.i

if.then16.1.i:                                    ; preds = %if.then12.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %170 = call ptr @memcpy(ptr %call.i, ptr %19, i32 12)
  br label %if.end20.1.i

if.end20.1.i:                                     ; preds = %if.then16.1.i, %if.then12.1.i.if.end20.1.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match13.i) #12
  br label %if.end21.1.i

if.end21.1.i:                                     ; preds = %if.end20.1.i, %for.inc36.i.if.end21.1.i_crit_edge
  %171 = ptrtoint ptr %action2.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %action2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp2674.not.1.i = icmp eq i32 %172, 0
  br i1 %cmp2674.not.1.i, label %if.end21.1.i.for.inc36.1.i_crit_edge, label %for.body27.1.i.preheader

if.end21.1.i.for.inc36.1.i_crit_edge:             ; preds = %if.end21.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc36.1.i

for.body27.1.i.preheader:                         ; preds = %if.end21.1.i
  %entries.1.i = getelementptr inbounds %struct.flow_rule, ptr %19, i32 1
  br label %for.body27.1.i

for.body27.1.i:                                   ; preds = %for.inc.1.i.for.body27.1.i_crit_edge, %for.body27.1.i.preheader
  %offset.176.1.i = phi i32 [ %offset.2.1.i, %for.inc.1.i.for.body27.1.i_crit_edge ], [ %offset.1.lcssa.i, %for.body27.1.i.preheader ]
  %i.075.1.i = phi i32 [ %inc35.1.i, %for.inc.1.i.for.body27.1.i_crit_edge ], [ 0, %for.body27.1.i.preheader ]
  %arrayidx30.1.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.1.i, i32 0, i32 %i.075.1.i
  %173 = ptrtoint ptr %arrayidx30.1.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx30.1.i, align 8
  %175 = zext i32 %174 to i64
  call void @__sanitizer_cov_trace_switch(i64 %175, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %174, label %sw.default.1.i [
    i32 23, label %for.body27.1.i.for.inc.1.i_crit_edge
    i32 3, label %for.body27.1.i.for.inc.1.i_crit_edge683
    i32 24, label %for.body27.1.i.for.inc.1.i_crit_edge684
  ]

for.body27.1.i.for.inc.1.i_crit_edge684:          ; preds = %for.body27.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i

for.body27.1.i.for.inc.1.i_crit_edge683:          ; preds = %for.body27.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i

for.body27.1.i.for.inc.1.i_crit_edge:             ; preds = %for.body27.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i

sw.default.1.i:                                   ; preds = %for.body27.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc.1.i = add i32 %offset.176.1.i, 1
  %arrayidx34.1.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries33.i, i32 0, i32 %offset.176.1.i
  %176 = call ptr @memcpy(ptr %arrayidx34.1.i, ptr %arrayidx30.1.i, i32 72)
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %sw.default.1.i, %for.body27.1.i.for.inc.1.i_crit_edge, %for.body27.1.i.for.inc.1.i_crit_edge683, %for.body27.1.i.for.inc.1.i_crit_edge684
  %offset.2.1.i = phi i32 [ %inc.1.i, %sw.default.1.i ], [ %offset.176.1.i, %for.body27.1.i.for.inc.1.i_crit_edge ], [ %offset.176.1.i, %for.body27.1.i.for.inc.1.i_crit_edge683 ], [ %offset.176.1.i, %for.body27.1.i.for.inc.1.i_crit_edge684 ]
  %inc35.1.i = add nuw i32 %i.075.1.i, 1
  %177 = ptrtoint ptr %action2.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %action2.i, align 8
  %cmp26.1.i = icmp ult i32 %inc35.1.i, %178
  br i1 %cmp26.1.i, label %for.inc.1.i.for.body27.1.i_crit_edge, label %for.inc.1.i.for.inc36.1.i_crit_edge

for.inc.1.i.for.inc36.1.i_crit_edge:              ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc36.1.i

for.inc.1.i.for.body27.1.i_crit_edge:             ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body27.1.i

for.inc36.1.i:                                    ; preds = %for.inc.1.i.for.inc36.1.i_crit_edge, %if.end21.1.i.for.inc36.1.i_crit_edge
  %offset.1.lcssa.1.i = phi i32 [ %offset.1.lcssa.i, %if.end21.1.i.for.inc36.1.i_crit_edge ], [ %offset.2.1.i, %for.inc.1.i.for.inc36.1.i_crit_edge ]
  %179 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %23, align 8
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %180, align 4
  %and.i.i.2.i = and i32 %182, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.2.i)
  %tobool.i.i.not.2.i = icmp eq i32 %and.i.i.2.i, 0
  br i1 %tobool.i.i.not.2.i, label %for.inc36.1.i.if.end21.2.i_crit_edge, label %if.then12.2.i

for.inc36.1.i.if.end21.2.i_crit_edge:             ; preds = %for.inc36.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.2.i

if.then12.2.i:                                    ; preds = %for.inc36.1.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match13.i) #12
  %183 = ptrtoint ptr %match13.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr inttoptr (i32 -1 to ptr), ptr %match13.i, align 4, !annotation !85
  %184 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr inttoptr (i32 -1 to ptr), ptr %140, align 4, !annotation !85
  call void @flow_rule_match_basic(ptr noundef %23, ptr noundef nonnull %match13.i) #12
  %185 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %140, align 4
  %ip_proto.2.i = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %ip_proto.2.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %ip_proto.2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool15.not.2.i = icmp eq i8 %188, 0
  br i1 %tobool15.not.2.i, label %if.then12.2.i.if.end20.2.i_crit_edge, label %if.then16.2.i

if.then12.2.i.if.end20.2.i_crit_edge:             ; preds = %if.then12.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.2.i

if.then16.2.i:                                    ; preds = %if.then12.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %189 = call ptr @memcpy(ptr %call.i, ptr %23, i32 12)
  br label %if.end20.2.i

if.end20.2.i:                                     ; preds = %if.then16.2.i, %if.then12.2.i.if.end20.2.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match13.i) #12
  br label %if.end21.2.i

if.end21.2.i:                                     ; preds = %if.end20.2.i, %for.inc36.1.i.if.end21.2.i_crit_edge
  %190 = ptrtoint ptr %action5.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %action5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %cmp2674.not.2.i = icmp eq i32 %191, 0
  br i1 %cmp2674.not.2.i, label %if.end21.2.i.nfp_fl_merge_actions_offload.exit_crit_edge, label %for.body27.2.i.preheader

if.end21.2.i.nfp_fl_merge_actions_offload.exit_crit_edge: ; preds = %if.end21.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_fl_merge_actions_offload.exit

for.body27.2.i.preheader:                         ; preds = %if.end21.2.i
  %entries.2.i = getelementptr inbounds %struct.flow_rule, ptr %23, i32 1
  br label %for.body27.2.i

for.body27.2.i:                                   ; preds = %for.inc.2.i.for.body27.2.i_crit_edge, %for.body27.2.i.preheader
  %offset.176.2.i = phi i32 [ %offset.2.2.i, %for.inc.2.i.for.body27.2.i_crit_edge ], [ %offset.1.lcssa.1.i, %for.body27.2.i.preheader ]
  %i.075.2.i = phi i32 [ %inc35.2.i, %for.inc.2.i.for.body27.2.i_crit_edge ], [ 0, %for.body27.2.i.preheader ]
  %arrayidx30.2.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.2.i, i32 0, i32 %i.075.2.i
  %192 = ptrtoint ptr %arrayidx30.2.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx30.2.i, align 8
  %194 = zext i32 %193 to i64
  call void @__sanitizer_cov_trace_switch(i64 %194, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %193, label %sw.default.2.i [
    i32 23, label %for.body27.2.i.for.inc.2.i_crit_edge
    i32 3, label %for.body27.2.i.for.inc.2.i_crit_edge685
    i32 24, label %for.body27.2.i.for.inc.2.i_crit_edge686
  ]

for.body27.2.i.for.inc.2.i_crit_edge686:          ; preds = %for.body27.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2.i

for.body27.2.i.for.inc.2.i_crit_edge685:          ; preds = %for.body27.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2.i

for.body27.2.i.for.inc.2.i_crit_edge:             ; preds = %for.body27.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2.i

sw.default.2.i:                                   ; preds = %for.body27.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc.2.i = add i32 %offset.176.2.i, 1
  %arrayidx34.2.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries33.i, i32 0, i32 %offset.176.2.i
  %195 = call ptr @memcpy(ptr %arrayidx34.2.i, ptr %arrayidx30.2.i, i32 72)
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %sw.default.2.i, %for.body27.2.i.for.inc.2.i_crit_edge, %for.body27.2.i.for.inc.2.i_crit_edge685, %for.body27.2.i.for.inc.2.i_crit_edge686
  %offset.2.2.i = phi i32 [ %inc.2.i, %sw.default.2.i ], [ %offset.176.2.i, %for.body27.2.i.for.inc.2.i_crit_edge ], [ %offset.176.2.i, %for.body27.2.i.for.inc.2.i_crit_edge685 ], [ %offset.176.2.i, %for.body27.2.i.for.inc.2.i_crit_edge686 ]
  %inc35.2.i = add nuw i32 %i.075.2.i, 1
  %196 = ptrtoint ptr %action5.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %action5.i, align 8
  %cmp26.2.i = icmp ult i32 %inc35.2.i, %197
  br i1 %cmp26.2.i, label %for.inc.2.i.for.body27.2.i_crit_edge, label %for.inc.2.i.nfp_fl_merge_actions_offload.exit_crit_edge

for.inc.2.i.nfp_fl_merge_actions_offload.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_fl_merge_actions_offload.exit

for.inc.2.i.for.body27.2.i_crit_edge:             ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body27.2.i

nfp_fl_merge_actions_offload.exit:                ; preds = %for.inc.2.i.nfp_fl_merge_actions_offload.exit_crit_edge, %if.end21.2.i.nfp_fl_merge_actions_offload.exit_crit_edge
  %offset.1.lcssa.2.i = phi i32 [ %offset.1.lcssa.1.i, %if.end21.2.i.nfp_fl_merge_actions_offload.exit_crit_edge ], [ %offset.2.2.i, %for.inc.2.i.nfp_fl_merge_actions_offload.exit_crit_edge ]
  %action39.i = getelementptr inbounds %struct.flow_rule, ptr %call.i, i32 0, i32 1
  %198 = ptrtoint ptr %action39.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %offset.1.lcssa.2.i, ptr %action39.i, align 8
  %199 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %5, align 8
  %call41.i = call i32 @nfp_flower_compile_action(ptr noundef %200, ptr noundef nonnull %call.i, ptr noundef %7, ptr noundef nonnull %call20, ptr noundef null) #12
  call void @kfree(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool295.not = icmp eq i32 %call41.i, 0
  br i1 %tobool295.not, label %if.end297, label %nfp_fl_merge_actions_offload.exit.ct_offload_err_crit_edge

nfp_fl_merge_actions_offload.exit.ct_offload_err_crit_edge: ; preds = %nfp_fl_merge_actions_offload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ct_offload_err

if.end297:                                        ; preds = %nfp_fl_merge_actions_offload.exit
  %201 = ptrtoint ptr %call20 to i32
  %or298 = or i32 %201, 1
  %tc_flower_cookie = getelementptr inbounds %struct.nfp_fl_payload, ptr %call20, i32 0, i32 1
  %202 = ptrtoint ptr %tc_flower_cookie to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %or298, ptr %tc_flower_cookie, align 4
  %203 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %5, align 8
  %call301 = call i32 @nfp_compile_flow_metadata(ptr noundef %204, i32 noundef %or298, ptr noundef nonnull %call20, ptr noundef %7, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call301)
  %tobool302.not = icmp eq i32 %call301, 0
  br i1 %tobool302.not, label %if.end304, label %if.end297.ct_offload_err_crit_edge

if.end297.ct_offload_err_crit_edge:               ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #14
  br label %ct_offload_err

if.end304:                                        ; preds = %if.end297
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 16
  %205 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp eq ptr %206, @nfp_repr_netdev_ops
  br i1 %cmp.i, label %if.then306, label %if.end304.if.end308_crit_edge

if.end304.if.end308_crit_edge:                    ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end308

if.then306:                                       ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #14
  %call307 = call ptr @nfp_port_from_netdev(ptr noundef %7) #12
  br label %if.end308

if.end308:                                        ; preds = %if.then306, %if.end304.if.end308_crit_edge
  %port.0 = phi ptr [ %call307, %if.then306 ], [ null, %if.end304.if.end308_crit_edge ]
  %flow_table = getelementptr inbounds %struct.nfp_flower_priv, ptr %5, i32 0, i32 10
  %fl_node = getelementptr inbounds %struct.nfp_fl_payload, ptr %call20, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfp_flower_table_params to i32))
  %.unpack = load i32, ptr @nfp_flower_table_params, align 4
  %207 = insertvalue [7 x i32] undef, i32 %.unpack, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 2) to i32))
  %.unpack589 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 2), align 4
  %208 = insertvalue [7 x i32] %207, i32 %.unpack589, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 4) to i32))
  %.unpack590 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 4), align 4
  %209 = insertvalue [7 x i32] %208, i32 %.unpack590, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 5) to i32))
  %.unpack591 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 5), align 4
  %210 = insertvalue [7 x i32] %209, i32 %.unpack591, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 7) to i32))
  %.unpack592 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 7), align 4
  %211 = insertvalue [7 x i32] %210, i32 %.unpack592, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 8) to i32))
  %.unpack593 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 8), align 4
  %212 = insertvalue [7 x i32] %211, i32 %.unpack593, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 9) to i32))
  %.unpack594 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 9), align 4
  %213 = insertvalue [7 x i32] %212, i32 %.unpack594, 6
  %call309 = call fastcc i32 @rhashtable_insert_fast(ptr noundef %flow_table, ptr noundef %fl_node, [7 x i32] %213)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call309)
  %tobool310.not = icmp eq i32 %call309, 0
  br i1 %tobool310.not, label %if.end312, label %if.end308.ct_release_offload_meta_err_crit_edge

if.end308.ct_release_offload_meta_err_crit_edge:  ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #14
  br label %ct_release_offload_meta_err

if.end312:                                        ; preds = %if.end308
  %214 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %5, align 8
  %call314 = call i32 @nfp_flower_xmit_flow(ptr noundef %215, ptr noundef nonnull %call20, i8 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call314)
  %tobool315.not = icmp eq i32 %call314, 0
  br i1 %tobool315.not, label %if.end317, label %ct_remove_rhash_err

if.end317:                                        ; preds = %if.end312
  %216 = ptrtoint ptr %tc_flower_cookie to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %tc_flower_cookie, align 4
  %tc_flower_cookie319 = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %m_entry, i32 0, i32 8
  %218 = ptrtoint ptr %tc_flower_cookie319 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %217, ptr %tc_flower_cookie319, align 4
  %flow_pay320 = getelementptr inbounds %struct.nfp_fl_nft_tc_merge, ptr %m_entry, i32 0, i32 9
  %219 = ptrtoint ptr %flow_pay320 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %call20, ptr %flow_pay320, align 4
  %tobool321.not = icmp eq ptr %port.0, null
  br i1 %tobool321.not, label %if.end317.cleanup385_crit_edge, label %if.then322

if.end317.cleanup385_crit_edge:                   ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup385

if.then322:                                       ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #14
  %tc_offload_cnt = getelementptr inbounds %struct.nfp_port, ptr %port.0, i32 0, i32 3
  %220 = ptrtoint ptr %tc_offload_cnt to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %tc_offload_cnt, align 4
  %inc323 = add i32 %221, 1
  store i32 %inc323, ptr %tc_offload_cnt, align 4
  br label %cleanup385

ct_remove_rhash_err:                              ; preds = %if.end312
  %call327 = call fastcc i32 @rhashtable_remove_fast(ptr noundef %flow_table, ptr noundef %fl_node, [7 x i32] %213)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call327)
  %tobool328.not = icmp eq i32 %call327, 0
  br i1 %tobool328.not, label %ct_remove_rhash_err.ct_release_offload_meta_err_crit_edge, label %land.rhs

ct_remove_rhash_err.ct_release_offload_meta_err_crit_edge: ; preds = %ct_remove_rhash_err
  call void @__sanitizer_cov_trace_pc() #14
  br label %ct_release_offload_meta_err

land.rhs:                                         ; preds = %ct_remove_rhash_err
  %.b602 = load i1, ptr @nfp_fl_ct_add_offload.__already_done, align 1
  br i1 %.b602, label %land.rhs.ct_release_offload_meta_err_crit_edge, label %if.then339, !prof !86

land.rhs.ct_release_offload_meta_err_crit_edge:   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %ct_release_offload_meta_err

if.then339:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nfp_fl_ct_add_offload.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 836, i32 noundef 9, ptr noundef null) #12
  br label %ct_release_offload_meta_err

ct_release_offload_meta_err:                      ; preds = %if.then339, %land.rhs.ct_release_offload_meta_err_crit_edge, %ct_remove_rhash_err.ct_release_offload_meta_err_crit_edge, %if.end308.ct_release_offload_meta_err_crit_edge
  %err.5 = phi i32 [ %call309, %if.end308.ct_release_offload_meta_err_crit_edge ], [ %call314, %ct_remove_rhash_err.ct_release_offload_meta_err_crit_edge ], [ %call314, %if.then339 ], [ %call314, %land.rhs.ct_release_offload_meta_err_crit_edge ]
  %222 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %5, align 8
  %call370 = call i32 @nfp_modify_flow_metadata(ptr noundef %223, ptr noundef nonnull %call20) #12
  br label %ct_offload_err

ct_offload_err:                                   ; preds = %ct_release_offload_meta_err, %if.end297.ct_offload_err_crit_edge, %nfp_fl_merge_actions_offload.exit.ct_offload_err_crit_edge, %if.end292.ct_offload_err_crit_edge, %for.body241.preheader.ct_offload_err_crit_edge, %for.body175.preheader.ct_offload_err_crit_edge, %for.cond87.1.ct_offload_err_crit_edge, %for.cond87.ct_offload_err_crit_edge, %if.then81.ct_offload_err_crit_edge, %if.end56.ct_offload_err_crit_edge, %if.end45.ct_offload_err_crit_edge
  %err.6 = phi i32 [ %call53, %if.end45.ct_offload_err_crit_edge ], [ %call57, %if.end56.ct_offload_err_crit_edge ], [ %call41.i, %nfp_fl_merge_actions_offload.exit.ct_offload_err_crit_edge ], [ %call301, %if.end297.ct_offload_err_crit_edge ], [ %err.5, %ct_release_offload_meta_err ], [ -12, %for.body175.preheader.ct_offload_err_crit_edge ], [ -12, %for.body241.preheader.ct_offload_err_crit_edge ], [ -12, %if.end292.ct_offload_err_crit_edge ], [ %call93, %if.then81.ct_offload_err_crit_edge ], [ %call93.1, %for.cond87.ct_offload_err_crit_edge ], [ %call93.2, %for.cond87.1.ct_offload_err_crit_edge ]
  %nfp_tun_ipv4_addr371 = getelementptr inbounds %struct.nfp_fl_payload, ptr %call20, i32 0, i32 4
  %224 = ptrtoint ptr %nfp_tun_ipv4_addr371 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %nfp_tun_ipv4_addr371, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool372.not = icmp eq i32 %225, 0
  br i1 %tobool372.not, label %ct_offload_err.if.end376_crit_edge, label %if.then373

ct_offload_err.if.end376_crit_edge:               ; preds = %ct_offload_err
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end376

if.then373:                                       ; preds = %ct_offload_err
  call void @__sanitizer_cov_trace_pc() #14
  %226 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %5, align 8
  call void @nfp_tunnel_del_ipv4_off(ptr noundef %227, i32 noundef %225) #12
  br label %if.end376

if.end376:                                        ; preds = %if.then373, %ct_offload_err.if.end376_crit_edge
  %nfp_tun_ipv6377 = getelementptr inbounds %struct.nfp_fl_payload, ptr %call20, i32 0, i32 5
  %228 = ptrtoint ptr %nfp_tun_ipv6377 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %nfp_tun_ipv6377, align 4
  %tobool378.not = icmp eq ptr %229, null
  br i1 %tobool378.not, label %if.end376.if.end382_crit_edge, label %if.then379

if.end376.if.end382_crit_edge:                    ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end382

if.then379:                                       ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #14
  %230 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %5, align 8
  call void @nfp_tunnel_put_ipv6_off(ptr noundef %231, ptr noundef nonnull %229) #12
  br label %if.end382

if.end382:                                        ; preds = %if.then379, %if.end376.if.end382_crit_edge
  %action_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %call20, i32 0, i32 9
  %232 = ptrtoint ptr %action_data to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %action_data, align 4
  call void @kfree(ptr noundef %233) #12
  %234 = ptrtoint ptr %mask_data to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %mask_data, align 4
  call void @kfree(ptr noundef %235) #12
  %236 = ptrtoint ptr %unmasked_data to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %unmasked_data, align 4
  call void @kfree(ptr noundef %237) #12
  call void @kfree(ptr noundef nonnull %call20) #12
  br label %cleanup385

cleanup385:                                       ; preds = %if.end382, %if.then322, %if.end317.cleanup385_crit_edge, %if.end87.i.cleanup385_crit_edge, %if.end.1.cleanup385_crit_edge, %if.end.cleanup385_crit_edge, %entry.cleanup385_crit_edge
  %retval.0 = phi i32 [ %err.6, %if.end382 ], [ -12, %if.end87.i.cleanup385_crit_edge ], [ 0, %if.then322 ], [ 0, %if.end317.cleanup385_crit_edge ], [ %call, %entry.cleanup385_crit_edge ], [ %call.1, %if.end.cleanup385_crit_edge ], [ %call.2, %if.end.1.cleanup385_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp_layer) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key_layer) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tun_type) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_ct_check_mangle_merge(ptr nocapture noundef readonly %a_in, ptr noundef %rule) unnamed_addr #2 align 64 {
entry:
  %match = alloca %struct.flow_match_ip, align 4
  %match19 = alloca %struct.flow_match_ipv4_addrs, align 4
  %match41 = alloca %struct.flow_match_ip, align 4
  %match66 = alloca %struct.flow_match_ipv6_addrs, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.flow_action_entry, ptr %a_in, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %offset2 = getelementptr inbounds %struct.anon.199, ptr %0, i32 0, i32 1
  %3 = ptrtoint ptr %offset2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset2, align 4
  %5 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %2, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb38
    i32 4, label %entry.sw.bb95_crit_edge
    i32 5, label %entry.sw.bb95_crit_edge141
  ]

entry.sw.bb95_crit_edge141:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb95

entry.sw.bb95_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb95

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %6 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rule, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and.i.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup99_crit_edge

sw.bb.cleanup99_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup99

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %10 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rule, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %and.i.i128 = and i32 %13, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i128)
  %tobool.i.i129.not = icmp eq i32 %and.i.i128, 0
  br i1 %tobool.i.i129.not, label %sw.bb3.if.end16_crit_edge, label %if.then5

sw.bb3.if.end16_crit_edge:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then5:                                         ; preds = %sw.bb3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match) #12
  %14 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !85
  %15 = getelementptr inbounds %struct.flow_match_ip, ptr %match, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %15, align 4, !annotation !85
  call void @flow_rule_match_ip(ptr noundef %rule, ptr noundef nonnull %match) #12
  %17 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %4, label %if.then5.if.end16.critedge_crit_edge [
    i32 8, label %land.lhs.true
    i32 0, label %land.lhs.true10
  ]

if.then5.if.end16.critedge_crit_edge:             ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.critedge

land.lhs.true:                                    ; preds = %if.then5
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %ttl = getelementptr inbounds %struct.flow_dissector_key_ip, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ttl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %land.lhs.true.if.end16.critedge_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end16.critedge_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.critedge

land.lhs.true10:                                  ; preds = %if.then5
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %15, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool13.not = icmp eq i8 %25, 0
  br i1 %tobool13.not, label %land.lhs.true10.if.end16.critedge_crit_edge, label %land.lhs.true10.cleanup_crit_edge

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true10.if.end16.critedge_crit_edge:      ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.critedge

cleanup:                                          ; preds = %land.lhs.true10.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match) #12
  br label %cleanup99

if.end16.critedge:                                ; preds = %land.lhs.true10.if.end16.critedge_crit_edge, %land.lhs.true.if.end16.critedge_crit_edge, %if.then5.if.end16.critedge_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match) #12
  br label %if.end16

if.end16:                                         ; preds = %if.end16.critedge, %sw.bb3.if.end16_crit_edge
  %26 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rule, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %and.i.i130 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i130)
  %tobool.i.i131.not = icmp eq i32 %and.i.i130, 0
  br i1 %tobool.i.i131.not, label %if.end16.sw.epilog_crit_edge, label %if.then18

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then18:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match19) #12
  %30 = ptrtoint ptr %match19 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -1 to ptr), ptr %match19, align 4, !annotation !85
  %31 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %match19, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 -1 to ptr), ptr %31, align 4, !annotation !85
  call void @flow_rule_match_ipv4_addrs(ptr noundef %rule, ptr noundef nonnull %match19) #12
  %33 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %4, label %if.then18.if.end33_crit_edge [
    i32 12, label %land.lhs.true22
    i32 16, label %land.lhs.true29
  ]

if.then18.if.end33_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.lhs.true22:                                  ; preds = %if.then18
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool24.not = icmp eq i32 %37, 0
  br i1 %tobool24.not, label %land.lhs.true22.if.end33_crit_edge, label %land.lhs.true22.cleanup34_crit_edge

land.lhs.true22.cleanup34_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup34

land.lhs.true22.if.end33_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.lhs.true29:                                  ; preds = %if.then18
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %31, align 4
  %dst = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool31.not = icmp eq i32 %41, 0
  br i1 %tobool31.not, label %land.lhs.true29.if.end33_crit_edge, label %land.lhs.true29.cleanup34_crit_edge

land.lhs.true29.cleanup34_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup34

land.lhs.true29.if.end33_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true29.if.end33_crit_edge, %land.lhs.true22.if.end33_crit_edge, %if.then18.if.end33_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match19) #12
  br label %sw.epilog

cleanup34:                                        ; preds = %land.lhs.true29.cleanup34_crit_edge, %land.lhs.true22.cleanup34_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match19) #12
  br label %cleanup99

sw.bb38:                                          ; preds = %entry
  %42 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rule, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %and.i.i132 = and i32 %45, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i132)
  %tobool.i.i133.not = icmp eq i32 %and.i.i132, 0
  br i1 %tobool.i.i133.not, label %sw.bb38.if.end63_crit_edge, label %if.then40

sw.bb38.if.end63_crit_edge:                       ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then40:                                        ; preds = %sw.bb38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match41) #12
  %46 = ptrtoint ptr %match41 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 -1 to ptr), ptr %match41, align 4, !annotation !85
  %47 = getelementptr inbounds %struct.flow_match_ip, ptr %match41, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 -1 to ptr), ptr %47, align 4, !annotation !85
  call void @flow_rule_match_ip(ptr noundef %rule, ptr noundef nonnull %match41) #12
  %49 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %4, label %if.then40.if.end63.critedge_crit_edge [
    i32 4, label %land.lhs.true44
    i32 0, label %land.lhs.true53
  ]

if.then40.if.end63.critedge_crit_edge:            ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63.critedge

land.lhs.true44:                                  ; preds = %if.then40
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %47, align 4
  %ttl46 = getelementptr inbounds %struct.flow_dissector_key_ip, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %ttl46 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ttl46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool48.not = icmp eq i8 %53, 0
  br i1 %tobool48.not, label %land.lhs.true44.if.end63.critedge_crit_edge, label %land.lhs.true44.cleanup60_crit_edge

land.lhs.true44.cleanup60_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup60

land.lhs.true44.if.end63.critedge_crit_edge:      ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63.critedge

land.lhs.true53:                                  ; preds = %if.then40
  %54 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %47, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %55, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool57.not = icmp eq i8 %57, 0
  br i1 %tobool57.not, label %land.lhs.true53.if.end63.critedge_crit_edge, label %land.lhs.true53.cleanup60_crit_edge

land.lhs.true53.cleanup60_crit_edge:              ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup60

land.lhs.true53.if.end63.critedge_crit_edge:      ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63.critedge

cleanup60:                                        ; preds = %land.lhs.true53.cleanup60_crit_edge, %land.lhs.true44.cleanup60_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match41) #12
  br label %cleanup99

if.end63.critedge:                                ; preds = %land.lhs.true53.if.end63.critedge_crit_edge, %land.lhs.true44.if.end63.critedge_crit_edge, %if.then40.if.end63.critedge_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match41) #12
  br label %if.end63

if.end63:                                         ; preds = %if.end63.critedge, %sw.bb38.if.end63_crit_edge
  %58 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rule, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %and.i.i134 = and i32 %61, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i134)
  %tobool.i.i135.not = icmp eq i32 %and.i.i134, 0
  br i1 %tobool.i.i135.not, label %if.end63.sw.epilog_crit_edge, label %if.then65

if.end63.sw.epilog_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then65:                                        ; preds = %if.end63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match66) #12
  %62 = ptrtoint ptr %match66 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 -1 to ptr), ptr %match66, align 4, !annotation !85
  %63 = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %match66, i32 0, i32 1
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 -1 to ptr), ptr %63, align 4, !annotation !85
  call void @flow_rule_match_ipv6_addrs(ptr noundef %rule, ptr noundef nonnull %match66) #12
  %65 = add i32 %4, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %65)
  %66 = icmp ult i32 %65, 16
  br i1 %66, label %land.lhs.true72, label %if.end78

land.lhs.true72:                                  ; preds = %if.then65
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %63, align 4
  %call75 = call ptr @memchr_inv(ptr noundef %68, i32 noundef 0, i32 noundef 16) #12
  %tobool76.not = icmp eq ptr %call75, null
  br i1 %tobool76.not, label %land.lhs.true72.if.end90_crit_edge, label %land.lhs.true72.cleanup91_crit_edge

land.lhs.true72.cleanup91_crit_edge:              ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup91

land.lhs.true72.if.end90_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

if.end78:                                         ; preds = %if.then65
  %69 = add i32 %4, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %69)
  %70 = icmp ult i32 %69, 16
  br i1 %70, label %land.lhs.true84, label %if.end78.if.end90_crit_edge

if.end78.if.end90_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

land.lhs.true84:                                  ; preds = %if.end78
  %71 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %63, align 4
  %dst86 = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %72, i32 0, i32 1
  %call87 = call ptr @memchr_inv(ptr noundef %dst86, i32 noundef 0, i32 noundef 16) #12
  %tobool88.not = icmp eq ptr %call87, null
  br i1 %tobool88.not, label %land.lhs.true84.if.end90_crit_edge, label %land.lhs.true84.cleanup91_crit_edge

land.lhs.true84.cleanup91_crit_edge:              ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup91

land.lhs.true84.if.end90_crit_edge:               ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

if.end90:                                         ; preds = %land.lhs.true84.if.end90_crit_edge, %if.end78.if.end90_crit_edge, %land.lhs.true72.if.end90_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match66) #12
  br label %sw.epilog

cleanup91:                                        ; preds = %land.lhs.true84.cleanup91_crit_edge, %land.lhs.true72.cleanup91_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match66) #12
  br label %cleanup99

sw.bb95:                                          ; preds = %entry.sw.bb95_crit_edge, %entry.sw.bb95_crit_edge141
  %73 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rule, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  %and.i.i136 = and i32 %76, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i136)
  %tobool.i.i137.not = icmp eq i32 %and.i.i136, 0
  br i1 %tobool.i.i137.not, label %sw.bb95.sw.epilog_crit_edge, label %sw.bb95.cleanup99_crit_edge

sw.bb95.cleanup99_crit_edge:                      ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup99

sw.bb95.sw.epilog_crit_edge:                      ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb95.sw.epilog_crit_edge, %if.end90, %if.end63.sw.epilog_crit_edge, %if.end33, %if.end16.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %cleanup99

cleanup99:                                        ; preds = %sw.epilog, %sw.bb95.cleanup99_crit_edge, %cleanup91, %cleanup60, %cleanup34, %cleanup, %sw.bb.cleanup99_crit_edge
  %retval.6 = phi i32 [ 0, %sw.epilog ], [ -95, %cleanup91 ], [ -95, %cleanup60 ], [ -95, %cleanup34 ], [ -95, %cleanup ], [ -95, %sw.bb.cleanup99_crit_edge ], [ -95, %sw.bb95.cleanup99_crit_edge ]
  ret i32 %retval.6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_flower_calculate_key_layers(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_flower_allocate_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_compile_meta(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_compile_ext_meta(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_flower_get_port_id_from_netdev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_flower_compile_port(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_compile_tci(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_compile_mac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_flower_compile_mpls(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_compile_ipv4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_compile_ipv6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_compile_tport(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_compile_ipv6_gre_tun(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_tunnel_add_ipv6_off(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_compile_ipv4_gre_tun(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_tunnel_add_ipv4_off(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_compile_vlan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_compile_ipv6_udp_tun(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_compile_ipv4_udp_tun(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_compile_geneve_opt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_compile_flow_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_flower_compile_action(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_walk_start_check(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_update_merge_stats(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !41, !43, !45, !46, !48, !50, !52, !54, !56, !58, !60, !61, !63, !65, !67, !69, !71, !73}
!llvm.named.register.sp = !{!75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @nfp_tc_ct_merge_params, !1, !"nfp_tc_ct_merge_params", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/flower/conntrack.c", i32 7, i32 32}
!2 = !{ptr @nfp_nft_ct_merge_params, !3, !"nfp_nft_ct_merge_params", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/netronome/nfp/flower/conntrack.c", i32 15, i32 32}
!4 = !{ptr @nfp_fl_ct_handle_pre_ct.__msg, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/netronome/nfp/flower/conntrack.c", i32 1419, i32 3}
!6 = !{ptr @nfp_fl_ct_handle_pre_ct.__msg.1, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/netronome/nfp/flower/conntrack.c", i32 1426, i32 3}
!8 = !{ptr @nfp_fl_ct_handle_pre_ct.__msg.2, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/flower/conntrack.c", i32 1433, i32 3}
!10 = !{ptr @nfp_fl_ct_handle_pre_ct.__msg.3, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/netronome/nfp/flower/conntrack.c", i32 1442, i32 4}
!12 = !{ptr @nfp_fl_ct_handle_post_ct.__msg, !13, !"__msg", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/netronome/nfp/flower/conntrack.c", i32 1481, i32 3}
!14 = !{ptr @nfp_fl_ct_handle_post_ct.__msg.4, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/netronome/nfp/flower/conntrack.c", i32 1488, i32 3}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/netronome/nfp/flower/conntrack.c", i32 1249, i32 2}
!18 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/netronome/nfp/flower/conntrack.c", i32 891, i32 2}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/netronome/nfp/flower/conntrack.c", i32 1297, i32 3}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nfp_del_tc_merge_entry._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @nfp_del_tc_merge_entry._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!50 = !{ptr @nfp_fl_ct_add_flow.__msg, !51, !"__msg", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/netronome/nfp/flower/conntrack.c", i32 1202, i32 3}
!52 = !{ptr @nfp_fl_ct_add_flow.__msg.16, !53, !"__msg", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/netronome/nfp/flower/conntrack.c", i32 1213, i32 3}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/netronome/nfp/flower/conntrack.c", i32 834, i32 2}
!56 = distinct !{null, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/net/flow_offload.h", i32 418, i32 2}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/netronome/nfp/flower/conntrack.c", i32 1668, i32 2}
!60 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!75 = !{!"sp"}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{!"auto-init"}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{i64 2149409870}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{i64 2159482117}
!90 = !{i64 2148336034, i64 2148336060, i64 2148336089, i64 2148336123, i64 2148336154, i64 2148336177}
!91 = !{i8 0, i8 2}
!92 = !{i64 2149410136}
!93 = !{i64 2148333569, i64 2148333595, i64 2148333624, i64 2148333658, i64 2148333689, i64 2148333712}
!94 = !{i64 2159414741}
!95 = !{i64 2159418175}
!96 = !{i64 2152694948}
!97 = !{!"branch_weights", i32 2146410443, i32 1073205}
!98 = !{i64 2148342427, i64 2148342459, i64 2148342488, i64 2148342522, i64 2148342553, i64 2148342576}
!99 = !{i64 2148431508}
!100 = !{i64 2152695108}
!101 = !{i64 2152695385}
!102 = !{i64 2152695227}
!103 = !{i64 2152695590}
!104 = !{i64 2152696653, i64 2152697145, i64 2152696690, i64 2152696746, i64 2152696780, i64 2152696804, i64 2152696845, i64 2152696866, i64 2152696894, i64 2152696928}
!105 = !{i64 2148430395}
!106 = !{i64 2148340814, i64 2148340846, i64 2148340875, i64 2148340909, i64 2148340940, i64 2148340963}
!107 = !{i64 2152698048}
!108 = !{i64 2159407814}
!109 = !{i64 2159410113}
