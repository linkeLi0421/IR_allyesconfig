; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfp_tun_active_tuns = type { i32, i32, i32, [0 x %struct.route_ip_info] }
%struct.route_ip_info = type { i32, i32, [2 x i32] }
%struct.nfp_app_type = type { i32, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.nfp_tun_active_tuns_v6 = type { i32, i32, i32, [0 x %struct.route_ip_info_v6] }
%struct.route_ip_info_v6 = type { %struct.in6_addr, i32, [2 x i32] }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.177, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.198, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.177 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.198 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.nfp_tun_neigh = type { i32, i32, [6 x i8], [6 x i8], i32 }
%struct.nfp_flower_priv = type { ptr, ptr, i32, i64, i64, i8, %struct.nfp_fl_stats_id, %struct.nfp_fl_mask_id, [1024 x %struct.hlist_head], i32, %struct.rhashtable, ptr, %struct.spinlock, %struct.rhashtable, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.nfp_fl_tunnel_offloads, %struct.atomic_t, %struct.wait_queue_head, %struct.nfp_mtu_conf, %struct.nfp_fl_lag, %struct.list_head, %struct.list_head, i32, i32, %struct.nfp_fl_internal_ports, %struct.delayed_work, i32, %struct.spinlock, i32, %struct.rhashtable, %struct.rhashtable, ptr, %struct.rhashtable }
%struct.nfp_fl_stats_id = type { %struct.circ_buf, i32, i8 }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.nfp_fl_mask_id = type { %struct.circ_buf, ptr, i8 }
%struct.nfp_fl_tunnel_offloads = type { %struct.rhashtable, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.ida, %struct.notifier_block }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.nfp_mtu_conf = type { i32, i32, i8, %struct.wait_queue_head, %struct.spinlock }
%struct.nfp_fl_lag = type { %struct.delayed_work, %struct.mutex, %struct.list_head, %struct.ida, i32, i32, i8, i8, %struct.sk_buff_head }
%struct.nfp_fl_internal_ports = type { %struct.idr, %struct.spinlock }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.nfp_offloaded_route = type { %struct.list_head, [0 x i8] }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfp_tun_neigh_v6 = type { %struct.in6_addr, %struct.in6_addr, [6 x i8], [6 x i8], i32 }
%struct.nfp_ipv4_addr_entry = type { i32, i32, %struct.list_head }
%struct.nfp_tun_ipv4_addr = type { i32, [32 x i32] }
%struct.nfp_ipv6_addr_entry = type { %struct.in6_addr, i32, %struct.list_head }
%struct.nfp_tun_ipv6_addr = type { i32, [4 x %struct.in6_addr] }
%struct.netdev_notifier_changeupper_info = type { %struct.netdev_notifier_info, ptr, i8, i8, ptr }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.nfp_flower_repr_priv = type { ptr, i32, i8, [6 x i8], i8, %struct.list_head, %struct.nfp_fl_qos, i8 }
%struct.nfp_fl_qos = type { i32, %struct.nfp_stat_pair, %struct.nfp_stat_pair, i64 }
%struct.nfp_stat_pair = type { i64, i64 }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.211 }
%union.anon.211 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.212, i16, i8, i8, i32, i16, i16 }
%union.anon.212 = type { %struct.anon.214 }
%struct.anon.214 = type { %struct.in6_addr, %struct.in6_addr }
%struct.dst_cache = type { ptr, i32 }
%struct.hw_port_info = type { ptr, i32 }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfp_flower_non_repr_priv = type { %struct.list_head, ptr, i32, i8, [6 x i8] }
%struct.nfp_tun_pre_tun_rule = type { i32, i16, i16, i32 }
%struct.nfp_fl_payload = type { %struct.nfp_fl_rule_metadata, i32, %struct.rhash_head, %struct.callback_head, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i8, %struct.anon.219 }
%struct.nfp_fl_rule_metadata = type <{ i8, i8, i8, i8, i32, i64, i64, i32 }>
%struct.rhash_head = type { ptr }
%struct.anon.219 = type { ptr, i16, i16 }
%struct.nfp_tun_offloaded_mac = type { %struct.rhash_head, [6 x i8], i16, i32, %struct.list_head, i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.netevent_redirect = type { ptr, ptr, ptr, ptr }
%struct.nfp_tun_mac_addr_offload = type { i16, i16, i16, [6 x i8] }

@nfp_tunnel_keep_alive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 240, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"nfp: Tunnel keep-alive request exceeds max routes.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfp_tunnel_keep_alive\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_tunnel_keep_alive._entry_ptr = internal global ptr @nfp_tunnel_keep_alive._entry, section ".printk_index", align 4
@nfp_tunnel_keep_alive._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 246, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"nfp: Corruption in tunnel keep-alive message.\0A\00", [49 x i8] zeroinitializer }, align 32
@nfp_tunnel_keep_alive._entry_ptr.7 = internal global ptr @nfp_tunnel_keep_alive._entry.5, section ".printk_index", align 4
@arp_tbl = external dso_local global %struct.neigh_table, align 4
@nfp_tunnel_keep_alive_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 282, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"nfp: IPv6 tunnel keep-alive request exceeds max routes.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfp_tunnel_keep_alive_v6\00", [39 x i8] zeroinitializer }, align 32
@nfp_tunnel_keep_alive_v6._entry_ptr = internal global ptr @nfp_tunnel_keep_alive_v6._entry, section ".printk_index", align 4
@nfp_tunnel_keep_alive_v6._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.9, ptr @.str.2, i32 288, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@nfp_tunnel_keep_alive_v6._entry_ptr.11 = internal global ptr @nfp_tunnel_keep_alive_v6._entry.10, section ".printk_index", align 4
@nd_tbl = external dso_local global %struct.neigh_table, align 4
@nfp_tunnel_request_route_v4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 641, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nfp: Requested route not found.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nfp_tunnel_request_route_v4\00", [36 x i8] zeroinitializer }, align 32
@nfp_tunnel_request_route_v4._entry_ptr = internal global ptr @nfp_tunnel_request_route_v4._entry, section ".printk_index", align 4
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@nfp_tunnel_request_route_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 683, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nfp: Requested IPv6 route not found.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nfp_tunnel_request_route_v6\00", [36 x i8] zeroinitializer }, align 32
@nfp_tunnel_request_route_v6._entry_ptr = internal global ptr @nfp_tunnel_request_route_v6._entry, section ".printk_index", align 4
@nfp_tunnel_add_ipv4_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 733, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nfp: Mem error when offloading IP address.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfp_tunnel_add_ipv4_off\00", [40 x i8] zeroinitializer }, align 32
@nfp_tunnel_add_ipv4_off._entry_ptr = internal global ptr @nfp_tunnel_add_ipv4_off._entry, section ".printk_index", align 4
@nfp_tunnel_add_ipv6_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.18, ptr @.str.2, i32 808, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfp_tunnel_add_ipv6_off\00", [40 x i8] zeroinitializer }, align 32
@nfp_tunnel_add_ipv6_off._entry_ptr = internal global ptr @nfp_tunnel_add_ipv6_off._entry, section ".printk_index", align 4
@nfp_tunnel_mac_event_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 1211, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nfp: Failed to delete offload MAC on %s.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nfp_tunnel_mac_event_handler\00", [35 x i8] zeroinitializer }, align 32
@nfp_tunnel_mac_event_handler._entry_ptr = internal global ptr @nfp_tunnel_mac_event_handler._entry, section ".printk_index", align 4
@nfp_tunnel_mac_event_handler._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 1217, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nfp: Failed to offload MAC on %s.\0A\00", [61 x i8] zeroinitializer }, align 32
@nfp_tunnel_mac_event_handler._entry_ptr.23 = internal global ptr @nfp_tunnel_mac_event_handler._entry.21, section ".printk_index", align 4
@nfp_tunnel_mac_event_handler._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 1227, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nfp: Failed to offload MAC change on %s.\0A\00", [54 x i8] zeroinitializer }, align 32
@nfp_tunnel_mac_event_handler._entry_ptr.26 = internal global ptr @nfp_tunnel_mac_event_handler._entry.24, section ".printk_index", align 4
@nfp_tunnel_mac_event_handler._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.2, i32 1254, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nfp: Failed to delete offloaded MAC on %s.\0A\00", [52 x i8] zeroinitializer }, align 32
@nfp_tunnel_mac_event_handler._entry_ptr.29 = internal global ptr @nfp_tunnel_mac_event_handler._entry.27, section ".printk_index", align 4
@nfp_tunnel_mac_event_handler._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 1265, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@nfp_tunnel_mac_event_handler._entry_ptr.31 = internal global ptr @nfp_tunnel_mac_event_handler._entry.30, section ".printk_index", align 4
@offloaded_macs_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 6, i16 4, i16 0, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@nfp_tunnel_config_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&priv->tun.ipv4_off_lock\00", [39 x i8] zeroinitializer }, align 32
@nfp_tunnel_config_start.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&priv->tun.ipv6_off_lock\00", [39 x i8] zeroinitializer }, align 32
@nfp_tunnel_config_start.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&priv->tun.neigh_off_lock_v4\00", [35 x i8] zeroinitializer }, align 32
@nfp_tunnel_config_start.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&priv->tun.neigh_off_lock_v6\00", [35 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfp_tun_write_ipv4_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 700, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nfp: IPv4 offload exceeds limit.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfp_tun_write_ipv4_list\00", [40 x i8] zeroinitializer }, align 32
@nfp_tun_write_ipv4_list._entry_ptr = internal global ptr @nfp_tun_write_ipv4_list._entry, section ".printk_index", align 4
@nfp_tun_write_ipv6_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 778, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"nfp: Too many IPv6 tunnel endpoint addresses, some cannot be offloaded.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfp_tun_write_ipv6_list\00", [40 x i8] zeroinitializer }, align 32
@nfp_tun_write_ipv6_list._entry_ptr = internal global ptr @nfp_tun_write_ipv6_list._entry, section ".printk_index", align 4
@nfp_tunnel_offload_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 1179, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"nfp: Failed to remove offload of replaced MAC addr on %s.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfp_tunnel_offload_mac\00", [41 x i8] zeroinitializer }, align 32
@nfp_tunnel_offload_mac._entry_ptr = internal global ptr @nfp_tunnel_offload_mac._entry, section ".printk_index", align 4
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"openvswitch\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vxlan\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"geneve\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gretap\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ip6gretap\00", [22 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.57 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.58 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.60 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.62 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfp_tunnel_del_shared_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 1037, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"nfp: MAC offload index revert failed on %s.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nfp_tunnel_del_shared_mac\00", [38 x i8] zeroinitializer }, align 32
@nfp_tunnel_del_shared_mac._entry_ptr = internal global ptr @nfp_tunnel_del_shared_mac._entry, section ".printk_index", align 4
@nfp_tunnel_del_shared_mac._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 1059, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@nfp_tunnel_del_shared_mac._entry_ptr.66 = internal global ptr @nfp_tunnel_del_shared_mac._entry.65, section ".printk_index", align 4
@nfp_tunnel_del_shared_mac.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@nfp_repr_netdev_ops = external dso_local constant %struct.net_device_ops, align 4
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_lookup.__warned.68 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 8, i64 21]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 240, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 246, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 282, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 288, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 641, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 683, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 733, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 808, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1210, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1216, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1226, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1253, i32 5 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1264, i32 5 }
@___asan_gen_.173 = private unnamed_addr constant [22 x i8] c"offloaded_macs_params\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 221, i32 39 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1365, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1367, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1371, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1373, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 695, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 723, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 700, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 778, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1178, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant [52 x i8] c"../drivers/net/ethernet/netronome/nfp/flower/cmsg.h\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 718, i32 43 }
@___asan_gen_.240 = private unnamed_addr constant [23 x i8] c"../include/net/vxlan.h\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 420, i32 43 }
@___asan_gen_.243 = private unnamed_addr constant [24 x i8] c"../include/net/geneve.h\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 68, i32 43 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 43, i32 43 }
@___asan_gen_.249 = private unnamed_addr constant [21 x i8] c"../include/net/gre.h\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 49, i32 43 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 715, i32 8 }
@___asan_gen_.258 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 755, i32 10 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1036, i32 5 }
@___asan_gen_.269 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.270 = private constant [59 x i8] c"../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1058, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 4963, i32 10 }
@___asan_gen_.275 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 378, i32 2 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @nfp_tun_write_ipv4_list._entry, ptr @nfp_tun_write_ipv4_list._entry_ptr, ptr @nfp_tun_write_ipv6_list._entry, ptr @nfp_tun_write_ipv6_list._entry_ptr, ptr @nfp_tunnel_add_ipv4_off._entry, ptr @nfp_tunnel_add_ipv4_off._entry_ptr, ptr @nfp_tunnel_add_ipv6_off._entry, ptr @nfp_tunnel_add_ipv6_off._entry_ptr, ptr @nfp_tunnel_del_shared_mac._entry, ptr @nfp_tunnel_del_shared_mac._entry.65, ptr @nfp_tunnel_del_shared_mac._entry_ptr, ptr @nfp_tunnel_del_shared_mac._entry_ptr.66, ptr @nfp_tunnel_keep_alive._entry, ptr @nfp_tunnel_keep_alive._entry.5, ptr @nfp_tunnel_keep_alive._entry_ptr, ptr @nfp_tunnel_keep_alive._entry_ptr.7, ptr @nfp_tunnel_keep_alive_v6._entry, ptr @nfp_tunnel_keep_alive_v6._entry.10, ptr @nfp_tunnel_keep_alive_v6._entry_ptr, ptr @nfp_tunnel_keep_alive_v6._entry_ptr.11, ptr @nfp_tunnel_mac_event_handler._entry, ptr @nfp_tunnel_mac_event_handler._entry.21, ptr @nfp_tunnel_mac_event_handler._entry.24, ptr @nfp_tunnel_mac_event_handler._entry.27, ptr @nfp_tunnel_mac_event_handler._entry.30, ptr @nfp_tunnel_mac_event_handler._entry_ptr, ptr @nfp_tunnel_mac_event_handler._entry_ptr.23, ptr @nfp_tunnel_mac_event_handler._entry_ptr.26, ptr @nfp_tunnel_mac_event_handler._entry_ptr.29, ptr @nfp_tunnel_mac_event_handler._entry_ptr.31, ptr @nfp_tunnel_offload_mac._entry, ptr @nfp_tunnel_offload_mac._entry_ptr, ptr @nfp_tunnel_request_route_v4._entry, ptr @nfp_tunnel_request_route_v4._entry_ptr, ptr @nfp_tunnel_request_route_v6._entry, ptr @nfp_tunnel_request_route_v6._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @offloaded_macs_params, ptr @nfp_tunnel_config_start.__key, ptr @.str.32, ptr @nfp_tunnel_config_start.__key.33, ptr @.str.34, ptr @nfp_tunnel_config_start.__key.35, ptr @.str.36, ptr @nfp_tunnel_config_start.__key.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.63, ptr @.str.64, ptr @.str.67, ptr @xa_init_flags.__key, ptr @.str.69], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_tunnel_keep_alive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_tunnel_keep_alive._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_tunnel_keep_alive_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_tunnel_keep_alive_v6._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_tunnel_request_route_v4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_tunnel_request_route_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_tunnel_add_ipv4_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_tunnel_add_ipv6_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_tunnel_mac_event_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_tunnel_mac_event_handler._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_tunnel_mac_event_handler._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_tunnel_mac_event_handler._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_tunnel_mac_event_handler._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @offloaded_macs_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_tunnel_config_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_tunnel_config_start.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_tunnel_config_start.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_tunnel_config_start.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_tun_write_ipv4_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_tun_write_ipv6_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_tunnel_offload_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_tunnel_del_shared_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_tunnel_del_shared_mac._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_tunnel_keep_alive(ptr noundef %app, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  %ipv4_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ipv4_addr) #13
  %0 = ptrtoint ptr %ipv4_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ipv4_addr, align 4, !annotation !161
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 4
  %count1 = getelementptr i8, ptr %2, i32 8
  %3 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %4)
  %cmp = icmp sgt i32 %4, 32
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  %call2 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %5 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cpp, align 4
  %call5 = tail call ptr @nfp_cpp_device(ptr noundef %6) #13
  %parent = getelementptr inbounds %struct.device, ptr %call5, i32 0, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str) #16
  br label %cleanup

if.end8:                                          ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %10, -4
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 16) #13
  %12 = extractvalue { i32, i1 } %11, 1
  %13 = extractvalue { i32, i1 } %11, 0
  %spec.select.i = or i32 %13, 12
  %retval.0.i = select i1 %12, i32 -1, i32 %spec.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %retval.0.i)
  %cmp11.not = icmp eq i32 %sub.i, %retval.0.i
  br i1 %cmp11.not, label %if.end26, label %do.body13

do.body13:                                        ; preds = %if.end8
  %call14 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body13.cleanup_crit_edge, label %do.end19

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end19:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #15
  %cpp20 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %14 = ptrtoint ptr %cpp20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cpp20, align 4
  %call21 = tail call ptr @nfp_cpp_device(ptr noundef %15) #13
  %parent22 = getelementptr inbounds %struct.device, ptr %call21, i32 0, i32 1
  %16 = ptrtoint ptr %parent22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent22, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.6) #16
  br label %cleanup

if.end26:                                         ; preds = %if.end8
  %18 = tail call i32 @llvm.read_register.i32(metadata !151) #13
  %and.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !162
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.end26.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end26.rcu_read_lock.exit_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end26
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 696, ptr noundef nonnull @.str.40) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end26.rcu_read_lock.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2775 = icmp sgt i32 %4, 0
  br i1 %cmp2775, label %for.body.lr.ph, label %rcu_read_lock.exit.for.end_crit_edge

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %tobool.not.i59 = icmp eq ptr %app, null
  %type.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.076 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nfp_tun_active_tuns, ptr %add.ptr.i, i32 0, i32 3, i32 %i.076
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %24 = ptrtoint ptr %ipv4_addr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %ipv4_addr, align 4
  %egress_port = getelementptr %struct.nfp_tun_active_tuns, ptr %add.ptr.i, i32 0, i32 3, i32 %i.076, i32 1
  %25 = ptrtoint ptr %egress_port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %egress_port, align 4
  br i1 %tobool.not.i59, label %for.body.for.inc_crit_edge, label %lor.rhs.i, !prof !163

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.rhs.i:                                        ; preds = %for.body
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %type.i, align 4
  %dev_get.i = getelementptr inbounds %struct.nfp_app_type, ptr %28, i32 0, i32 35
  %29 = ptrtoint ptr %dev_get.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_get.i, align 4
  %tobool1.not.i = icmp eq ptr %30, null
  br i1 %tobool1.not.i, label %lor.rhs.i.for.inc_crit_edge, label %nfp_app_dev_get.exit, !prof !163

lor.rhs.i.for.inc_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

nfp_app_dev_get.exit:                             ; preds = %lor.rhs.i
  %call.i60 = call ptr %30(ptr noundef nonnull %app, i32 noundef %26, ptr noundef null) #13
  %tobool31.not = icmp eq ptr %call.i60, null
  br i1 %tobool31.not, label %nfp_app_dev_get.exit.for.inc_crit_edge, label %if.end33

nfp_app_dev_get.exit.for.inc_crit_edge:           ; preds = %nfp_app_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end33:                                         ; preds = %nfp_app_dev_get.exit
  %call34 = call ptr @neigh_lookup(ptr noundef nonnull @arp_tbl, ptr noundef nonnull %ipv4_addr, ptr noundef nonnull %call.i60) #13
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end33.for.inc_crit_edge, label %if.end37

if.end33.for.inc_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end37:                                         ; preds = %if.end33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %used.i.i = getelementptr inbounds %struct.neighbour, ptr %call34, i32 0, i32 10
  %32 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %used.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %31)
  %cmp.not.i.i = icmp eq i32 %33, %31
  br i1 %cmp.not.i.i, label %if.end37.if.end.i.i_crit_edge, label %do.body5.i.i

if.end37.if.end.i.i_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

do.body5.i.i:                                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %used.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 %31, ptr %used.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body5.i.i, %if.end37.if.end.i.i_crit_edge
  %nud_state.i.i = getelementptr inbounds %struct.neighbour, ptr %call34, i32 0, i32 12
  %35 = ptrtoint ptr %nud_state.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %nud_state.i.i, align 8
  %37 = and i8 %36, -38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i.i, label %if.then11.i.i, label %if.end.i.i.neigh_event_send.exit_crit_edge

if.end.i.i.neigh_event_send.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %neigh_event_send.exit

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = call i32 @__neigh_event_send(ptr noundef nonnull %call34, ptr noundef null, i1 noundef zeroext true) #13
  br label %neigh_event_send.exit

neigh_event_send.exit:                            ; preds = %if.then11.i.i, %if.end.i.i.neigh_event_send.exit_crit_edge
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %call34, i32 0, i32 6
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !164
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %38 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !165
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i62, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %neigh_event_send.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i, !prof !166

if.end5.i.i.i.i.for.inc_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #13
  br label %for.inc

if.then.i62:                                      ; preds = %neigh_event_send.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !167
  call void @neigh_destroy(ptr noundef nonnull %call34) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then.i62, %if.then10.i.i.i.i, %if.end5.i.i.i.i.for.inc_crit_edge, %if.end33.for.inc_crit_edge, %nfp_app_dev_get.exit.for.inc_crit_edge, %lor.rhs.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i64 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i64, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i67

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i67:                                ; preds = %for.end
  %call1.i65 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i65)
  %tobool.not.i66 = icmp eq i32 %call1.i65, 0
  br i1 %tobool.not.i66, label %land.lhs.true.i67.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i69

land.lhs.true.i67.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i69:                               ; preds = %land.lhs.true.i67
  %.b4.i68 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i68, label %land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge, label %if.then.i70

land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i69
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i70:                                      ; preds = %land.lhs.true2.i69
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 724, ptr noundef nonnull @.str.41) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i70, %land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i67.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %39 = call i32 @llvm.read_register.i32(metadata !151) #13
  %and.i.i.i.i.i71 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i71 to ptr
  %preempt_count.i.i.i.i72 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i72, align 4
  %sub.i.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i72, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %do.end19, %do.body13.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ipv4_addr) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_tunnel_keep_alive_v6(ptr noundef %app, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %count1 = getelementptr i8, ptr %1, i32 8
  %2 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp sgt i32 %3, 4
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  %call2 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %4 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpp, align 4
  %call5 = tail call ptr @nfp_cpp_device(ptr noundef %5) #13
  %parent = getelementptr inbounds %struct.device, ptr %call5, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.8) #16
  br label %cleanup

if.end8:                                          ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %9, -4
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 28) #13
  %11 = extractvalue { i32, i1 } %10, 1
  %12 = extractvalue { i32, i1 } %10, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %12, i32 12) #13
  %retval.0.i = select i1 %11, i32 -1, i32 %spec.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %retval.0.i)
  %cmp11.not = icmp eq i32 %sub.i, %retval.0.i
  br i1 %cmp11.not, label %if.end26, label %do.body13

do.body13:                                        ; preds = %if.end8
  %call14 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body13.cleanup_crit_edge, label %do.end19

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end19:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #15
  %cpp20 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %13 = ptrtoint ptr %cpp20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpp20, align 4
  %call21 = tail call ptr @nfp_cpp_device(ptr noundef %14) #13
  %parent22 = getelementptr inbounds %struct.device, ptr %call21, i32 0, i32 1
  %15 = ptrtoint ptr %parent22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent22, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.6) #16
  br label %cleanup

if.end26:                                         ; preds = %if.end8
  %17 = tail call i32 @llvm.read_register.i32(metadata !151) #13
  %and.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !162
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.end26.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end26.rcu_read_lock.exit_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end26
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 696, ptr noundef nonnull @.str.40) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end26.rcu_read_lock.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2775 = icmp sgt i32 %3, 0
  br i1 %cmp2775, label %for.body.lr.ph, label %rcu_read_lock.exit.for.end_crit_edge

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %tobool.not.i59 = icmp eq ptr %app, null
  %type.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.076 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %egress_port = getelementptr %struct.nfp_tun_active_tuns_v6, ptr %add.ptr.i, i32 0, i32 3, i32 %i.076, i32 1
  %21 = ptrtoint ptr %egress_port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %egress_port, align 4
  br i1 %tobool.not.i59, label %for.body.for.inc_crit_edge, label %lor.rhs.i, !prof !163

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.rhs.i:                                        ; preds = %for.body
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %type.i, align 4
  %dev_get.i = getelementptr inbounds %struct.nfp_app_type, ptr %24, i32 0, i32 35
  %25 = ptrtoint ptr %dev_get.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_get.i, align 4
  %tobool1.not.i = icmp eq ptr %26, null
  br i1 %tobool1.not.i, label %lor.rhs.i.for.inc_crit_edge, label %nfp_app_dev_get.exit, !prof !163

lor.rhs.i.for.inc_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

nfp_app_dev_get.exit:                             ; preds = %lor.rhs.i
  %call.i60 = tail call ptr %26(ptr noundef nonnull %app, i32 noundef %22, ptr noundef null) #13
  %tobool31.not = icmp eq ptr %call.i60, null
  br i1 %tobool31.not, label %nfp_app_dev_get.exit.for.inc_crit_edge, label %if.end33

nfp_app_dev_get.exit.for.inc_crit_edge:           ; preds = %nfp_app_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end33:                                         ; preds = %nfp_app_dev_get.exit
  %arrayidx = getelementptr %struct.nfp_tun_active_tuns_v6, ptr %add.ptr.i, i32 0, i32 3, i32 %i.076
  %call34 = tail call ptr @neigh_lookup(ptr noundef nonnull @nd_tbl, ptr noundef %arrayidx, ptr noundef nonnull %call.i60) #13
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end33.for.inc_crit_edge, label %if.end37

if.end33.for.inc_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end37:                                         ; preds = %if.end33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %used.i.i = getelementptr inbounds %struct.neighbour, ptr %call34, i32 0, i32 10
  %28 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %used.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %27)
  %cmp.not.i.i = icmp eq i32 %29, %27
  br i1 %cmp.not.i.i, label %if.end37.if.end.i.i_crit_edge, label %do.body5.i.i

if.end37.if.end.i.i_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

do.body5.i.i:                                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %used.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %27, ptr %used.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body5.i.i, %if.end37.if.end.i.i_crit_edge
  %nud_state.i.i = getelementptr inbounds %struct.neighbour, ptr %call34, i32 0, i32 12
  %31 = ptrtoint ptr %nud_state.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %nud_state.i.i, align 8
  %33 = and i8 %32, -38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i.i, label %if.then11.i.i, label %if.end.i.i.neigh_event_send.exit_crit_edge

if.end.i.i.neigh_event_send.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %neigh_event_send.exit

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = tail call i32 @__neigh_event_send(ptr noundef nonnull %call34, ptr noundef null, i1 noundef zeroext true) #13
  br label %neigh_event_send.exit

neigh_event_send.exit:                            ; preds = %if.then11.i.i, %if.end.i.i.neigh_event_send.exit_crit_edge
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %call34, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !164
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !165
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i62, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %neigh_event_send.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i, !prof !166

if.end5.i.i.i.i.for.inc_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #13
  br label %for.inc

if.then.i62:                                      ; preds = %neigh_event_send.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !167
  tail call void @neigh_destroy(ptr noundef nonnull %call34) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then.i62, %if.then10.i.i.i.i, %if.end5.i.i.i.i.for.inc_crit_edge, %if.end33.for.inc_crit_edge, %nfp_app_dev_get.exit.for.inc_crit_edge, %lor.rhs.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i64 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i64, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i67

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i67:                                ; preds = %for.end
  %call1.i65 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i65)
  %tobool.not.i66 = icmp eq i32 %call1.i65, 0
  br i1 %tobool.not.i66, label %land.lhs.true.i67.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i69

land.lhs.true.i67.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i69:                               ; preds = %land.lhs.true.i67
  %.b4.i68 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i68, label %land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge, label %if.then.i70

land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i69
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i70:                                      ; preds = %land.lhs.true2.i69
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 724, ptr noundef nonnull @.str.41) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i70, %land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i67.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %35 = tail call i32 @llvm.read_register.i32(metadata !151) #13
  %and.i.i.i.i.i71 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i71 to ptr
  %preempt_count.i.i.i.i72 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i72, align 4
  %sub.i.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i72, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %do.end19, %do.body13.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_tunnel_request_route_v4(ptr noundef %app, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  %flow = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %flow) #13
  %0 = call ptr @memset(ptr %flow, i32 0, i32 56)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !151) #13
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !162
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 696, ptr noundef nonnull @.str.40) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  %tobool.not.i35 = icmp eq ptr %app, null
  br i1 %tobool.not.i35, label %rcu_read_lock.exit.fail_rcu_unlock_crit_edge, label %lor.rhs.i, !prof !163

rcu_read_lock.exit.fail_rcu_unlock_crit_edge:     ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail_rcu_unlock

lor.rhs.i:                                        ; preds = %rcu_read_lock.exit
  %type.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 5
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %type.i, align 4
  %dev_get.i = getelementptr inbounds %struct.nfp_app_type, ptr %10, i32 0, i32 35
  %11 = ptrtoint ptr %dev_get.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_get.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %lor.rhs.i.fail_rcu_unlock_crit_edge, label %nfp_app_dev_get.exit, !prof !163

lor.rhs.i.fail_rcu_unlock_crit_edge:              ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail_rcu_unlock

nfp_app_dev_get.exit:                             ; preds = %lor.rhs.i
  %call.i36 = tail call ptr %12(ptr noundef nonnull %app, i32 noundef %8, ptr noundef null) #13
  %tobool.not = icmp eq ptr %call.i36, null
  br i1 %tobool.not, label %nfp_app_dev_get.exit.fail_rcu_unlock_crit_edge, label %if.end

nfp_app_dev_get.exit.fail_rcu_unlock_crit_edge:   ; preds = %nfp_app_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail_rcu_unlock

if.end:                                           ; preds = %nfp_app_dev_get.exit
  %ipv4_addr = getelementptr i8, ptr %2, i32 8
  %13 = ptrtoint ptr %ipv4_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ipv4_addr, align 4
  %daddr = getelementptr inbounds %struct.flowi4, ptr %flow, i32 0, i32 2
  %15 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %daddr, align 4
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %flow, i32 0, i32 5
  %16 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 17, ptr %flowic_proto, align 2
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %call.i36, i32 0, i32 127
  %17 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nd_net.i, align 4
  %call.i37 = call ptr @ip_route_output_flow(ptr noundef %18, ptr noundef nonnull %flow, ptr noundef null) #13
  %cmp.i.i.not = icmp ugt ptr %call.i37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %if.end.fail_rcu_unlock_crit_edge, label %if.end7

if.end.fail_rcu_unlock_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail_rcu_unlock

if.end7:                                          ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %call.i37, i32 0, i32 1
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %neigh_lookup.i = getelementptr inbounds %struct.dst_ops, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %neigh_lookup.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %neigh_lookup.i, align 8
  %call.i38 = call ptr %22(ptr noundef %call.i37, ptr noundef null, ptr noundef %daddr) #13
  %cmp.i.i39 = icmp ugt ptr %call.i38, inttoptr (i32 -4096 to ptr)
  call void @dst_release(ptr noundef %call.i37) #13
  %tobool10.not66 = icmp eq ptr %call.i38, null
  %tobool10.not = or i1 %cmp.i.i39, %tobool10.not66
  br i1 %tobool10.not, label %if.end7.fail_rcu_unlock_crit_edge, label %if.end12

if.end7.fail_rcu_unlock_crit_edge:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail_rcu_unlock

if.end12:                                         ; preds = %if.end7
  %dev = getelementptr inbounds %struct.neighbour, ptr %call.i38, i32 0, i32 25
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  call fastcc void @nfp_tun_write_neigh_v4(ptr noundef %24, ptr noundef nonnull %app, ptr noundef nonnull %flow, ptr noundef nonnull %call.i38)
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %call.i38, i32 0, i32 6
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !164
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %25 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !165
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i41, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.neigh_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !166

if.end5.i.i.i.i.neigh_release.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %neigh_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #13
  br label %neigh_release.exit

if.then.i41:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !167
  call void @neigh_destroy(ptr noundef nonnull %call.i38) #13
  br label %neigh_release.exit

neigh_release.exit:                               ; preds = %if.then.i41, %if.then10.i.i.i.i, %if.end5.i.i.i.i.neigh_release.exit_crit_edge
  %call.i43 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i43, label %neigh_release.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i46

neigh_release.exit.rcu_read_unlock.exit_crit_edge: ; preds = %neigh_release.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i46:                                ; preds = %neigh_release.exit
  %call1.i44 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44)
  %tobool.not.i45 = icmp eq i32 %call1.i44, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i48

land.lhs.true.i46.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i48:                               ; preds = %land.lhs.true.i46
  %.b4.i47 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i47, label %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, label %if.then.i49

land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i49:                                      ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 724, ptr noundef nonnull @.str.41) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i49, %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, %neigh_release.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %26 = call i32 @llvm.read_register.i32(metadata !151) #13
  %and.i.i.i.i.i50 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i50 to ptr
  %preempt_count.i.i.i.i51 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i51, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i51, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

fail_rcu_unlock:                                  ; preds = %if.end7.fail_rcu_unlock_crit_edge, %if.end.fail_rcu_unlock_crit_edge, %nfp_app_dev_get.exit.fail_rcu_unlock_crit_edge, %lor.rhs.i.fail_rcu_unlock_crit_edge, %rcu_read_lock.exit.fail_rcu_unlock_crit_edge
  %call.i52 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i52, label %fail_rcu_unlock.rcu_read_unlock.exit62_crit_edge, label %land.lhs.true.i55

fail_rcu_unlock.rcu_read_unlock.exit62_crit_edge: ; preds = %fail_rcu_unlock
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit62

land.lhs.true.i55:                                ; preds = %fail_rcu_unlock
  %call1.i53 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53)
  %tobool.not.i54 = icmp eq i32 %call1.i53, 0
  br i1 %tobool.not.i54, label %land.lhs.true.i55.rcu_read_unlock.exit62_crit_edge, label %land.lhs.true2.i57

land.lhs.true.i55.rcu_read_unlock.exit62_crit_edge: ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit62

land.lhs.true2.i57:                               ; preds = %land.lhs.true.i55
  %.b4.i56 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56, label %land.lhs.true2.i57.rcu_read_unlock.exit62_crit_edge, label %if.then.i58

land.lhs.true2.i57.rcu_read_unlock.exit62_crit_edge: ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit62

if.then.i58:                                      ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 724, ptr noundef nonnull @.str.41) #13
  br label %rcu_read_unlock.exit62

rcu_read_unlock.exit62:                           ; preds = %if.then.i58, %land.lhs.true2.i57.rcu_read_unlock.exit62_crit_edge, %land.lhs.true.i55.rcu_read_unlock.exit62_crit_edge, %fail_rcu_unlock.rcu_read_unlock.exit62_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %30 = call i32 @llvm.read_register.i32(metadata !151) #13
  %and.i.i.i.i.i59 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i59 to ptr
  %preempt_count.i.i.i.i60 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i60, align 4
  %sub.i.i.i61 = add i32 %33, -1
  store volatile i32 %sub.i.i.i61, ptr %preempt_count.i.i.i.i60, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %call13 = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %rcu_read_unlock.exit62.cleanup_crit_edge, label %do.end

rcu_read_unlock.exit62.cleanup_crit_edge:         ; preds = %rcu_read_unlock.exit62
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %rcu_read_unlock.exit62
  call void @__sanitizer_cov_trace_pc() #15
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %34 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cpp, align 4
  %call17 = call ptr @nfp_cpp_device(ptr noundef %35) #13
  %parent = getelementptr inbounds %struct.device, ptr %call17, i32 0, i32 1
  %36 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.12) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %rcu_read_unlock.exit62.cleanup_crit_edge, %rcu_read_unlock.exit
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %flow) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_tun_write_neigh_v4(ptr noundef %netdev, ptr noundef %app, ptr nocapture noundef readonly %flow, ptr noundef %neigh) unnamed_addr #0 align 64 {
entry:
  %payload = alloca %struct.nfp_tun_neigh, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %payload) #13
  %0 = getelementptr inbounds %struct.nfp_tun_neigh, ptr %payload, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nfp_tun_neigh, ptr %payload, i32 0, i32 2
  %2 = getelementptr inbounds %struct.nfp_tun_neigh, ptr %payload, i32 0, i32 3
  %3 = getelementptr inbounds %struct.nfp_tun_neigh, ptr %payload, i32 0, i32 3, i32 4
  %4 = getelementptr inbounds %struct.nfp_tun_neigh, ptr %payload, i32 0, i32 4
  %call = tail call i32 @nfp_flower_get_port_id_from_netdev(ptr noundef %app, ptr noundef %netdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds i8, ptr %payload, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 20)
  %daddr = getelementptr inbounds %struct.flowi4, ptr %flow, i32 0, i32 2
  %7 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %daddr, align 4
  %9 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %payload, align 4
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 12
  %10 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nud_state, align 8
  %12 = and i8 %11, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not = icmp eq i8 %12, 0
  br i1 %tobool1.not, label %if.end.if.then4_crit_edge, label %lor.lhs.false

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %dead = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 14
  %13 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dead, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool3.not = icmp eq i8 %14, 0
  br i1 %tobool3.not, label %if.end7, label %lor.lhs.false.if.then4_crit_edge

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %priv1.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %15 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv1.i, align 4
  %neigh_off_list_v4.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %16, i32 0, i32 17, i32 3
  %neigh_off_lock_v4.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %16, i32 0, i32 17, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %neigh_off_lock_v4.i) #13
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then4
  %entry1.0.in.i.i = phi ptr [ %neigh_off_list_v4.i, %if.then4 ], [ %entry1.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %17 = ptrtoint ptr %entry1.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %entry1.0.i.i = load ptr, ptr %entry1.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %entry1.0.i.i, %neigh_off_list_v4.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.nfp_tun_del_route_from_cache_v4.exit_crit_edge, label %for.body.i.i

for.cond.i.i.nfp_tun_del_route_from_cache_v4.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfp_tun_del_route_from_cache_v4.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %ip_add.i.i = getelementptr inbounds %struct.nfp_offloaded_route, ptr %entry1.0.i.i, i32 0, i32 1
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(4) %ip_add.i.i, ptr noundef nonnull dereferenceable(4) %payload, i32 4) #17
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.0.i.i) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.list_del.exit.i.i_crit_edge

if.then.i.i.list_del.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.0.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i.i, align 4
  %20 = ptrtoint ptr %entry1.0.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %entry1.0.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then.i.i.list_del.exit.i.i_crit_edge
  %24 = ptrtoint ptr %entry1.0.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.0.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.0.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef %entry1.0.i.i) #13
  br label %nfp_tun_del_route_from_cache_v4.exit

nfp_tun_del_route_from_cache_v4.exit:             ; preds = %list_del.exit.i.i, %for.cond.i.i.nfp_tun_del_route_from_cache_v4.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %neigh_off_lock_v4.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %used.i.i = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 10
  %27 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %used.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %26)
  %cmp.not.i.i1 = icmp eq i32 %28, %26
  br i1 %cmp.not.i.i1, label %nfp_tun_del_route_from_cache_v4.exit.if.end.i.i_crit_edge, label %do.body5.i.i

nfp_tun_del_route_from_cache_v4.exit.if.end.i.i_crit_edge: ; preds = %nfp_tun_del_route_from_cache_v4.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

do.body5.i.i:                                     ; preds = %nfp_tun_del_route_from_cache_v4.exit
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %used.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 %26, ptr %used.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body5.i.i, %nfp_tun_del_route_from_cache_v4.exit.if.end.i.i_crit_edge
  %30 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %nud_state, align 8
  %32 = and i8 %31, -38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i2 = icmp eq i8 %32, 0
  br i1 %tobool.not.i.i2, label %if.then11.i.i, label %if.end.i.i.send_msg_crit_edge

if.end.i.i.send_msg_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %send_msg

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = tail call i32 @__neigh_event_send(ptr noundef %neigh, ptr noundef null, i1 noundef zeroext true) #13
  br label %send_msg

if.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %saddr = getelementptr inbounds %struct.flowi4, ptr %flow, i32 0, i32 1
  %33 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %saddr, align 8
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %0, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %36 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_addr, align 64
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %2, align 4
  %add.ptr.i = getelementptr i8, ptr %37, i32 4
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %add.ptr.i, align 2
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %3, align 2
  call fastcc void @neigh_ha_snapshot(ptr noundef %1, ptr noundef %neigh, ptr noundef %netdev)
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call, ptr %4, align 4
  %priv1.i3 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %45 = ptrtoint ptr %priv1.i3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv1.i3, align 4
  %neigh_off_list_v4.i4 = getelementptr inbounds %struct.nfp_flower_priv, ptr %46, i32 0, i32 17, i32 3
  %neigh_off_lock_v4.i5 = getelementptr inbounds %struct.nfp_flower_priv, ptr %46, i32 0, i32 17, i32 7
  call fastcc void @__nfp_tun_add_route_to_cache(ptr noundef %neigh_off_list_v4.i4, ptr noundef %neigh_off_lock_v4.i5, ptr noundef nonnull %payload, i32 noundef 4) #13
  br label %send_msg

send_msg:                                         ; preds = %if.end7, %if.then11.i.i, %if.end.i.i.send_msg_crit_edge
  %call.i = tail call ptr @nfp_flower_cmsg_alloc(ptr noundef %app, i32 noundef 24, i32 noundef 13, i32 noundef 2592) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %send_msg.cleanup_crit_edge, label %if.end.i

send_msg.cleanup_crit_edge:                       ; preds = %send_msg
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %send_msg
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %47 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %48, i32 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %49 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len.i.i, align 4
  %sub.i.i = add i32 %50, -4
  %51 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %payload, i32 %sub.i.i)
  %ctrl.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 3
  %52 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctrl.i, align 4
  %call4.i = tail call zeroext i1 @nfp_ctrl_tx(ptr noundef %53, ptr noundef nonnull %call.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %send_msg.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %payload) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_tunnel_request_route_v6(ptr noundef %app, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  %flow = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %flow) #13
  %0 = call ptr @memset(ptr %flow, i32 0, i32 88)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !151) #13
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !162
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 696, ptr noundef nonnull @.str.40) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  %tobool.not.i33 = icmp eq ptr %app, null
  br i1 %tobool.not.i33, label %rcu_read_lock.exit.fail_rcu_unlock_crit_edge, label %lor.rhs.i, !prof !163

rcu_read_lock.exit.fail_rcu_unlock_crit_edge:     ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail_rcu_unlock

lor.rhs.i:                                        ; preds = %rcu_read_lock.exit
  %type.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 5
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %type.i, align 4
  %dev_get.i = getelementptr inbounds %struct.nfp_app_type, ptr %10, i32 0, i32 35
  %11 = ptrtoint ptr %dev_get.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_get.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %lor.rhs.i.fail_rcu_unlock_crit_edge, label %nfp_app_dev_get.exit, !prof !163

lor.rhs.i.fail_rcu_unlock_crit_edge:              ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail_rcu_unlock

nfp_app_dev_get.exit:                             ; preds = %lor.rhs.i
  %call.i34 = tail call ptr %12(ptr noundef nonnull %app, i32 noundef %8, ptr noundef null) #13
  %tobool.not = icmp eq ptr %call.i34, null
  br i1 %tobool.not, label %nfp_app_dev_get.exit.fail_rcu_unlock_crit_edge, label %if.end

nfp_app_dev_get.exit.fail_rcu_unlock_crit_edge:   ; preds = %nfp_app_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail_rcu_unlock

if.end:                                           ; preds = %nfp_app_dev_get.exit
  %daddr = getelementptr inbounds %struct.flowi6, ptr %flow, i32 0, i32 1
  %ipv6_addr = getelementptr i8, ptr %2, i32 8
  %13 = call ptr @memcpy(ptr %daddr, ptr %ipv6_addr, i32 16)
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %flow, i32 0, i32 5
  %14 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 17, ptr %flowic_proto, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %15 = load ptr, ptr @ipv6_stub, align 4
  %ipv6_dst_lookup_flow = getelementptr inbounds %struct.ipv6_stub, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ipv6_dst_lookup_flow to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ipv6_dst_lookup_flow, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %call.i34, i32 0, i32 127
  %18 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nd_net.i, align 4
  %call3 = call ptr %17(ptr noundef %19, ptr noundef null, ptr noundef nonnull %flow, ptr noundef null) #13
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.fail_rcu_unlock_crit_edge, label %if.end6

if.end.fail_rcu_unlock_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail_rcu_unlock

if.end6:                                          ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %call3, i32 0, i32 1
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %neigh_lookup.i = getelementptr inbounds %struct.dst_ops, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %neigh_lookup.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %neigh_lookup.i, align 8
  %call.i35 = call ptr %23(ptr noundef %call3, ptr noundef null, ptr noundef %daddr) #13
  %cmp.i.i = icmp ugt ptr %call.i35, inttoptr (i32 -4096 to ptr)
  call void @dst_release(ptr noundef %call3) #13
  %tobool9.not60 = icmp eq ptr %call.i35, null
  %tobool9.not = or i1 %cmp.i.i, %tobool9.not60
  br i1 %tobool9.not, label %if.end6.fail_rcu_unlock_crit_edge, label %if.end11

if.end6.fail_rcu_unlock_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail_rcu_unlock

if.end11:                                         ; preds = %if.end6
  %dev = getelementptr inbounds %struct.neighbour, ptr %call.i35, i32 0, i32 25
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  call fastcc void @nfp_tun_write_neigh_v6(ptr noundef %25, ptr noundef nonnull %app, ptr noundef nonnull %flow, ptr noundef nonnull %call.i35)
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %call.i35, i32 0, i32 6
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !164
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %26 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !165
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i36, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.neigh_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !166

if.end5.i.i.i.i.neigh_release.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %neigh_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #13
  br label %neigh_release.exit

if.then.i36:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !167
  call void @neigh_destroy(ptr noundef nonnull %call.i35) #13
  br label %neigh_release.exit

neigh_release.exit:                               ; preds = %if.then.i36, %if.then10.i.i.i.i, %if.end5.i.i.i.i.neigh_release.exit_crit_edge
  %call.i38 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i38, label %neigh_release.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i41

neigh_release.exit.rcu_read_unlock.exit_crit_edge: ; preds = %neigh_release.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i41:                                ; preds = %neigh_release.exit
  %call1.i39 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i39)
  %tobool.not.i40 = icmp eq i32 %call1.i39, 0
  br i1 %tobool.not.i40, label %land.lhs.true.i41.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i43

land.lhs.true.i41.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i43:                               ; preds = %land.lhs.true.i41
  %.b4.i42 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i42, label %land.lhs.true2.i43.rcu_read_unlock.exit_crit_edge, label %if.then.i44

land.lhs.true2.i43.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i43
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i44:                                      ; preds = %land.lhs.true2.i43
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 724, ptr noundef nonnull @.str.41) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i44, %land.lhs.true2.i43.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i41.rcu_read_unlock.exit_crit_edge, %neigh_release.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %27 = call i32 @llvm.read_register.i32(metadata !151) #13
  %and.i.i.i.i.i45 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i45 to ptr
  %preempt_count.i.i.i.i46 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i46, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i46, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

fail_rcu_unlock:                                  ; preds = %if.end6.fail_rcu_unlock_crit_edge, %if.end.fail_rcu_unlock_crit_edge, %nfp_app_dev_get.exit.fail_rcu_unlock_crit_edge, %lor.rhs.i.fail_rcu_unlock_crit_edge, %rcu_read_lock.exit.fail_rcu_unlock_crit_edge
  %call.i47 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i47, label %fail_rcu_unlock.rcu_read_unlock.exit57_crit_edge, label %land.lhs.true.i50

fail_rcu_unlock.rcu_read_unlock.exit57_crit_edge: ; preds = %fail_rcu_unlock
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit57

land.lhs.true.i50:                                ; preds = %fail_rcu_unlock
  %call1.i48 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %tobool.not.i49 = icmp eq i32 %call1.i48, 0
  br i1 %tobool.not.i49, label %land.lhs.true.i50.rcu_read_unlock.exit57_crit_edge, label %land.lhs.true2.i52

land.lhs.true.i50.rcu_read_unlock.exit57_crit_edge: ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit57

land.lhs.true2.i52:                               ; preds = %land.lhs.true.i50
  %.b4.i51 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i51, label %land.lhs.true2.i52.rcu_read_unlock.exit57_crit_edge, label %if.then.i53

land.lhs.true2.i52.rcu_read_unlock.exit57_crit_edge: ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit57

if.then.i53:                                      ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 724, ptr noundef nonnull @.str.41) #13
  br label %rcu_read_unlock.exit57

rcu_read_unlock.exit57:                           ; preds = %if.then.i53, %land.lhs.true2.i52.rcu_read_unlock.exit57_crit_edge, %land.lhs.true.i50.rcu_read_unlock.exit57_crit_edge, %fail_rcu_unlock.rcu_read_unlock.exit57_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %31 = call i32 @llvm.read_register.i32(metadata !151) #13
  %and.i.i.i.i.i54 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i54 to ptr
  %preempt_count.i.i.i.i55 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i55, align 4
  %sub.i.i.i56 = add i32 %34, -1
  store volatile i32 %sub.i.i.i56, ptr %preempt_count.i.i.i.i55, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %call12 = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %rcu_read_unlock.exit57.cleanup_crit_edge, label %do.end

rcu_read_unlock.exit57.cleanup_crit_edge:         ; preds = %rcu_read_unlock.exit57
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %rcu_read_unlock.exit57
  call void @__sanitizer_cov_trace_pc() #15
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %35 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cpp, align 4
  %call16 = call ptr @nfp_cpp_device(ptr noundef %36) #13
  %parent = getelementptr inbounds %struct.device, ptr %call16, i32 0, i32 1
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.14) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %rcu_read_unlock.exit57.cleanup_crit_edge, %rcu_read_unlock.exit
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %flow) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_tun_write_neigh_v6(ptr noundef %netdev, ptr noundef %app, ptr nocapture noundef readonly %flow, ptr noundef %neigh) unnamed_addr #0 align 64 {
entry:
  %payload = alloca %struct.nfp_tun_neigh_v6, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %payload) #13
  %call = tail call i32 @nfp_flower_get_port_id_from_netdev(ptr noundef %app, ptr noundef %netdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %daddr = getelementptr inbounds %struct.flowi6, ptr %flow, i32 0, i32 1
  %0 = getelementptr inbounds i8, ptr %payload, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  %2 = call ptr @memcpy(ptr %payload, ptr %daddr, i32 16)
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 12
  %3 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %nud_state, align 8
  %5 = and i8 %4, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.end.if.then4_crit_edge, label %lor.lhs.false

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %dead = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 14
  %6 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dead, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end7, label %lor.lhs.false.if.then4_crit_edge

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %priv1.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %8 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv1.i, align 4
  %neigh_off_list_v6.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %9, i32 0, i32 17, i32 4
  %neigh_off_lock_v6.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %9, i32 0, i32 17, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %neigh_off_lock_v6.i) #13
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then4
  %entry1.0.in.i.i = phi ptr [ %neigh_off_list_v6.i, %if.then4 ], [ %entry1.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %10 = ptrtoint ptr %entry1.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %entry1.0.i.i = load ptr, ptr %entry1.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %entry1.0.i.i, %neigh_off_list_v6.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.nfp_tun_del_route_from_cache_v6.exit_crit_edge, label %for.body.i.i

for.cond.i.i.nfp_tun_del_route_from_cache_v6.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfp_tun_del_route_from_cache_v6.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %ip_add.i.i = getelementptr inbounds %struct.nfp_offloaded_route, ptr %entry1.0.i.i, i32 0, i32 1
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %ip_add.i.i, ptr noundef nonnull dereferenceable(16) %payload, i32 16) #17
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.0.i.i) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.list_del.exit.i.i_crit_edge

if.then.i.i.list_del.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.0.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i.i, align 4
  %13 = ptrtoint ptr %entry1.0.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %entry1.0.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then.i.i.list_del.exit.i.i_crit_edge
  %17 = ptrtoint ptr %entry1.0.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.0.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.0.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef %entry1.0.i.i) #13
  br label %nfp_tun_del_route_from_cache_v6.exit

nfp_tun_del_route_from_cache_v6.exit:             ; preds = %list_del.exit.i.i, %for.cond.i.i.nfp_tun_del_route_from_cache_v6.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %neigh_off_lock_v6.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %used.i.i = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 10
  %20 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %used.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %19)
  %cmp.not.i.i1 = icmp eq i32 %21, %19
  br i1 %cmp.not.i.i1, label %nfp_tun_del_route_from_cache_v6.exit.if.end.i.i_crit_edge, label %do.body5.i.i

nfp_tun_del_route_from_cache_v6.exit.if.end.i.i_crit_edge: ; preds = %nfp_tun_del_route_from_cache_v6.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

do.body5.i.i:                                     ; preds = %nfp_tun_del_route_from_cache_v6.exit
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %used.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %19, ptr %used.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body5.i.i, %nfp_tun_del_route_from_cache_v6.exit.if.end.i.i_crit_edge
  %23 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nud_state, align 8
  %25 = and i8 %24, -38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i2 = icmp eq i8 %25, 0
  br i1 %tobool.not.i.i2, label %if.then11.i.i, label %if.end.i.i.send_msg_crit_edge

if.end.i.i.send_msg_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %send_msg

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = tail call i32 @__neigh_event_send(ptr noundef %neigh, ptr noundef null, i1 noundef zeroext true) #13
  br label %send_msg

if.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %src_ipv6 = getelementptr inbounds %struct.nfp_tun_neigh_v6, ptr %payload, i32 0, i32 1
  %saddr = getelementptr inbounds %struct.flowi6, ptr %flow, i32 0, i32 2
  %26 = call ptr @memcpy(ptr %src_ipv6, ptr %saddr, i32 16)
  %src_addr = getelementptr inbounds %struct.nfp_tun_neigh_v6, ptr %payload, i32 0, i32 3
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %27 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_addr, align 64
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %31 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %src_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 4
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr inbounds %struct.nfp_tun_neigh_v6, ptr %payload, i32 0, i32 3, i32 4
  %34 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %add.ptr1.i, align 2
  %dst_addr = getelementptr inbounds %struct.nfp_tun_neigh_v6, ptr %payload, i32 0, i32 2
  call fastcc void @neigh_ha_snapshot(ptr noundef %dst_addr, ptr noundef %neigh, ptr noundef %netdev)
  %port_id9 = getelementptr inbounds %struct.nfp_tun_neigh_v6, ptr %payload, i32 0, i32 4
  %35 = ptrtoint ptr %port_id9 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call, ptr %port_id9, align 4
  %priv1.i3 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %36 = ptrtoint ptr %priv1.i3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv1.i3, align 4
  %neigh_off_list_v6.i4 = getelementptr inbounds %struct.nfp_flower_priv, ptr %37, i32 0, i32 17, i32 4
  %neigh_off_lock_v6.i5 = getelementptr inbounds %struct.nfp_flower_priv, ptr %37, i32 0, i32 17, i32 8
  call fastcc void @__nfp_tun_add_route_to_cache(ptr noundef %neigh_off_list_v6.i4, ptr noundef %neigh_off_lock_v6.i5, ptr noundef nonnull %payload, i32 noundef 16) #13
  br label %send_msg

send_msg:                                         ; preds = %if.end7, %if.then11.i.i, %if.end.i.i.send_msg_crit_edge
  %call.i = tail call ptr @nfp_flower_cmsg_alloc(ptr noundef %app, i32 noundef 48, i32 noundef 24, i32 noundef 2592) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %send_msg.cleanup_crit_edge, label %if.end.i

send_msg.cleanup_crit_edge:                       ; preds = %send_msg
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %send_msg
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %38 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %40 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i.i, align 4
  %sub.i.i = add i32 %41, -4
  %42 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %payload, i32 %sub.i.i)
  %ctrl.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 3
  %43 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctrl.i, align 4
  %call4.i = tail call zeroext i1 @nfp_ctrl_tx(ptr noundef %44, ptr noundef nonnull %call.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %send_msg.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %payload) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_tunnel_add_ipv4_off(ptr noundef %app, i32 noundef %ipv4) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %ipv4_off_lock = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 5
  tail call void @mutex_lock_nested(ptr noundef %ipv4_off_lock, i32 noundef 0) #13
  %ipv4_off_list = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %ptr.0.in = phi ptr [ %ipv4_off_list, %entry ], [ %ptr.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %ptr.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %ptr.0 = load ptr, ptr %ptr.0.in, align 4
  %cmp.i.not = icmp eq ptr %ptr.0, %ipv4_off_list
  br i1 %cmp.i.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr i8, ptr %ptr.0, i32 -8
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr, align 4
  %cmp = icmp eq i32 %4, %ipv4
  br i1 %cmp, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %ref_count = getelementptr i8, ptr %ptr.0, i32 -4
  %5 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ref_count, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %ref_count, align 4
  tail call void @mutex_unlock(ptr noundef %ipv4_off_lock) #13
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 16) #18
  %tobool11.not = icmp eq ptr %call7.i, null
  br i1 %tobool11.not, label %if.then12, label %if.end23

if.then12:                                        ; preds = %for.end
  tail call void @mutex_unlock(ptr noundef %ipv4_off_lock) #13
  %call15 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then12.cleanup_crit_edge, label %do.end

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %8 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpp, align 4
  %call19 = tail call ptr @nfp_cpp_device(ptr noundef %9) #13
  %parent = getelementptr inbounds %struct.device, ptr %call19, i32 0, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.16) #16
  br label %cleanup

if.end23:                                         ; preds = %for.end
  %12 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %ipv4, ptr %call7.i, align 8
  %ref_count25 = getelementptr inbounds %struct.nfp_ipv4_addr_entry, ptr %call7.i, i32 0, i32 1
  %13 = ptrtoint ptr %ref_count25 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %ref_count25, align 4
  %list = getelementptr inbounds %struct.nfp_ipv4_addr_entry, ptr %call7.i, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %15, ptr noundef %ipv4_off_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end23.list_add_tail.exit_crit_edge

if.end23.list_add_tail.exit_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %prev.i, align 4
  %17 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ipv4_off_list, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.nfp_ipv4_addr_entry, ptr %call7.i, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end23.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %ipv4_off_lock) #13
  tail call fastcc void @nfp_tun_write_ipv4_list(ptr noundef %app)
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end, %if.then12.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_tun_write_ipv4_list(ptr noundef %app) unnamed_addr #0 align 64 {
entry:
  %payload = alloca %struct.nfp_tun_ipv4_addr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %payload) #13
  %2 = getelementptr inbounds i8, ptr %payload, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 128)
  %ipv4_off_lock = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 5
  tail call void @mutex_lock_nested(ptr noundef %ipv4_off_lock, i32 noundef 0) #13
  %ipv4_off_list = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %ipv4_off_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipv4_off_list, align 4
  %cmp.i.not41 = icmp eq ptr %5, %ipv4_off_list
  br i1 %cmp.i.not41, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %entry.for.body_crit_edge
  %count.043 = phi i32 [ %inc, %if.end16.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %ptr.042 = phi ptr [ %storage.044, %if.end16.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %count.043)
  %exitcond = icmp eq i32 %count.043, 32
  br i1 %exitcond, label %if.then, label %if.end16

if.then:                                          ; preds = %for.body
  tail call void @mutex_unlock(ptr noundef %ipv4_off_lock) #13
  %call9 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %6 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpp, align 4
  %call13 = tail call ptr @nfp_cpp_device(ptr noundef %7) #13
  %parent = getelementptr inbounds %struct.device, ptr %call13, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.42) #16
  br label %cleanup

if.end16:                                         ; preds = %for.body
  %10 = ptrtoint ptr %ptr.042 to i32
  call void @__asan_load4_noabort(i32 %10)
  %storage.044 = load ptr, ptr %ptr.042, align 4
  %add.ptr = getelementptr i8, ptr %ptr.042, i32 -8
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr, align 4
  %inc = add nuw nsw i32 %count.043, 1
  %arrayidx = getelementptr %struct.nfp_tun_ipv4_addr, ptr %payload, i32 0, i32 1, i32 %count.043
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx, align 4
  %cmp.i.not = icmp eq ptr %storage.044, %ipv4_off_list
  br i1 %cmp.i.not, label %if.end16.for.end_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end16.for.end_crit_edge, %entry.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %if.end16.for.end_crit_edge ]
  %14 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %count.0.lcssa, ptr %payload, align 4
  tail call void @mutex_unlock(ptr noundef %ipv4_off_lock) #13
  %call.i = tail call ptr @nfp_flower_cmsg_alloc(ptr noundef %app, i32 noundef 132, i32 noundef 14, i32 noundef 3264) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.end.cleanup_crit_edge, label %if.end.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %15 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %17 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i.i, align 4
  %sub.i.i = add i32 %18, -4
  %19 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %payload, i32 %sub.i.i)
  %ctrl.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 3
  %20 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl.i, align 4
  %call4.i = tail call zeroext i1 @nfp_ctrl_tx(ptr noundef %21, ptr noundef nonnull %call.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %for.end.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %payload) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_tunnel_del_ipv4_off(ptr noundef %app, i32 noundef %ipv4) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %ipv4_off_lock = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 5
  tail call void @mutex_lock_nested(ptr noundef %ipv4_off_lock, i32 noundef 0) #13
  %ipv4_off_list = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %ptr.0.in = phi ptr [ %ipv4_off_list, %entry ], [ %ptr.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %ptr.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %ptr.0 = load ptr, ptr %ptr.0.in, align 4
  %cmp.i.not = icmp eq ptr %ptr.0, %ipv4_off_list
  br i1 %cmp.i.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr i8, ptr %ptr.0, i32 -8
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr, align 4
  %cmp = icmp eq i32 %4, %ipv4
  br i1 %cmp, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then:                                          ; preds = %for.body
  %add.ptr.le = getelementptr i8, ptr %ptr.0, i32 -8
  %ref_count = getelementptr i8, ptr %ptr.0, i32 -4
  %5 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ref_count, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool8.not = icmp eq i32 %dec, 0
  br i1 %tobool8.not, label %if.then9, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then9:                                         ; preds = %if.then
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ptr.0) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then9.list_del.exit_crit_edge

if.then9.list_del.exit_crit_edge:                 ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ptr.0, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ptr.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then9.list_del.exit_crit_edge
  %13 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %ptr.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ptr.0, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %add.ptr.le) #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %if.then.for.end_crit_edge, %for.cond.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %ipv4_off_lock) #13
  tail call fastcc void @nfp_tun_write_ipv4_list(ptr noundef %app)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_tunnel_add_ipv6_off(ptr noundef %app, ptr nocapture noundef readonly %ipv6) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %ipv6_off_lock = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 6
  tail call void @mutex_lock_nested(ptr noundef %ipv6_off_lock, i32 noundef 0) #13
  %ipv6_off_list = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %ipv6_off_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %ipv6_off_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %entry2.0 = getelementptr i8, ptr %.pn, i32 -20
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %entry2.0, ptr noundef dereferenceable(16) %ipv6, i32 16) #19
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %ref_count = getelementptr i8, ptr %.pn, i32 -4
  %3 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ref_count, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %ref_count, align 4
  tail call void @mutex_unlock(ptr noundef %ipv6_off_lock) #13
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 28) #18
  %tobool14.not = icmp eq ptr %call7.i, null
  br i1 %tobool14.not, label %if.then15, label %if.end26

if.then15:                                        ; preds = %for.end
  tail call void @mutex_unlock(ptr noundef %ipv6_off_lock) #13
  %call18 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then15.cleanup_crit_edge, label %do.end

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %6 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpp, align 4
  %call22 = tail call ptr @nfp_cpp_device(ptr noundef %7) #13
  %parent = getelementptr inbounds %struct.device, ptr %call22, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.16) #16
  br label %cleanup

if.end26:                                         ; preds = %for.end
  %10 = call ptr @memcpy(ptr %call7.i, ptr %ipv6, i32 16)
  %ref_count28 = getelementptr inbounds %struct.nfp_ipv6_addr_entry, ptr %call7.i, i32 0, i32 1
  %11 = ptrtoint ptr %ref_count28 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %ref_count28, align 8
  %list29 = getelementptr inbounds %struct.nfp_ipv6_addr_entry, ptr %call7.i, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 2, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list29, ptr noundef %13, ptr noundef %ipv6_off_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end26.list_add_tail.exit_crit_edge

if.end26.list_add_tail.exit_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list29, ptr %prev.i, align 4
  %15 = ptrtoint ptr %list29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ipv6_off_list, ptr %list29, align 4
  %prev3.i.i = getelementptr inbounds %struct.nfp_ipv6_addr_entry, ptr %call7.i, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 8
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %list29, ptr %13, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end26.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %ipv6_off_lock) #13
  tail call fastcc void @nfp_tun_write_ipv6_list(ptr noundef %app)
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end, %if.then15.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %entry2.0, %if.then ], [ %call7.i, %list_add_tail.exit ], [ null, %do.end ], [ null, %if.then15.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_tun_write_ipv6_list(ptr noundef %app) unnamed_addr #0 align 64 {
entry:
  %payload = alloca %struct.nfp_tun_ipv6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %payload)
  %2 = getelementptr inbounds i8, ptr %payload, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 64)
  %ipv6_off_lock = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 6
  tail call void @mutex_lock_nested(ptr noundef %ipv6_off_lock, i32 noundef 0) #13
  %ipv6_off_list = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 2
  %4 = ptrtoint ptr %ipv6_off_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn34 = load ptr, ptr %ipv6_off_list, align 4
  %cmp.not36 = icmp eq ptr %.pn34, %ipv6_off_list
  br i1 %cmp.not36, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %entry2.039 = getelementptr i8, ptr %.pn34, i32 -20
  %arrayidx = getelementptr inbounds %struct.nfp_tun_ipv6_addr, ptr %payload, i32 0, i32 1, i32 0
  %5 = call ptr @memcpy(ptr %arrayidx, ptr %entry2.039, i32 16)
  %6 = ptrtoint ptr %.pn34 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn34, align 4
  %cmp.not = icmp eq ptr %.pn, %ipv6_off_list
  br i1 %cmp.not, label %for.body.preheader.for.end_crit_edge, label %for.body.1

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body:                                          ; preds = %for.body.3
  %call = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.for.end_crit_edge, label %do.end

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %7 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpp, align 4
  %call9 = tail call ptr @nfp_cpp_device(ptr noundef %8) #13
  %parent = getelementptr inbounds %struct.device, ptr %call9, i32 0, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.44) #16
  br label %for.end

for.body.1:                                       ; preds = %for.body.preheader
  %entry2.039.1 = getelementptr i8, ptr %.pn, i32 -20
  %arrayidx.1 = getelementptr inbounds %struct.nfp_tun_ipv6_addr, ptr %payload, i32 0, i32 1, i32 1
  %11 = call ptr @memcpy(ptr %arrayidx.1, ptr %entry2.039.1, i32 16)
  %12 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.1 = load ptr, ptr %.pn, align 4
  %cmp.not.1 = icmp eq ptr %.pn.1, %ipv6_off_list
  br i1 %cmp.not.1, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %entry2.039.2 = getelementptr i8, ptr %.pn.1, i32 -20
  %arrayidx.2 = getelementptr inbounds %struct.nfp_tun_ipv6_addr, ptr %payload, i32 0, i32 1, i32 2
  %13 = call ptr @memcpy(ptr %arrayidx.2, ptr %entry2.039.2, i32 16)
  %14 = ptrtoint ptr %.pn.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.2 = load ptr, ptr %.pn.1, align 4
  %cmp.not.2 = icmp eq ptr %.pn.2, %ipv6_off_list
  br i1 %cmp.not.2, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %entry2.039.3 = getelementptr i8, ptr %.pn.2, i32 -20
  %arrayidx.3 = getelementptr inbounds %struct.nfp_tun_ipv6_addr, ptr %payload, i32 0, i32 1, i32 3
  %15 = call ptr @memcpy(ptr %arrayidx.3, ptr %entry2.039.3, i32 16)
  %16 = ptrtoint ptr %.pn.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.3 = load ptr, ptr %.pn.2, align 4
  %cmp.not.3 = icmp eq ptr %.pn.3, %ipv6_off_list
  br i1 %cmp.not.3, label %for.body.3.for.end_crit_edge, label %do.body

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %do.end, %do.body.for.end_crit_edge, %for.body.preheader.for.end_crit_edge, %entry.for.end_crit_edge
  %count.033 = phi i32 [ 4, %do.body.for.end_crit_edge ], [ 4, %do.end ], [ 0, %entry.for.end_crit_edge ], [ 1, %for.body.preheader.for.end_crit_edge ], [ 2, %for.body.1.for.end_crit_edge ], [ 3, %for.body.2.for.end_crit_edge ], [ 4, %for.body.3.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ipv6_off_lock) #13
  %17 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %count.033, ptr %payload, align 4
  %call.i = tail call ptr @nfp_flower_cmsg_alloc(ptr noundef %app, i32 noundef 68, i32 noundef 22, i32 noundef 3264) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.end.nfp_flower_xmit_tun_conf.exit_crit_edge, label %if.end.i

for.end.nfp_flower_xmit_tun_conf.exit_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfp_flower_xmit_tun_conf.exit

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i.i, align 4
  %sub.i.i = add i32 %21, -4
  %22 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %payload, i32 %sub.i.i)
  %ctrl.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 3
  %23 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctrl.i, align 4
  %call4.i = tail call zeroext i1 @nfp_ctrl_tx(ptr noundef %24, ptr noundef nonnull %call.i) #13
  br label %nfp_flower_xmit_tun_conf.exit

nfp_flower_xmit_tun_conf.exit:                    ; preds = %if.end.i, %for.end.nfp_flower_xmit_tun_conf.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %payload)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_tunnel_put_ipv6_off(ptr noundef %app, ptr noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv2 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv2, align 4
  %ipv6_off_lock = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 6
  tail call void @mutex_lock_nested(ptr noundef %ipv6_off_lock, i32 noundef 0) #13
  %ref_count = getelementptr inbounds %struct.nfp_ipv6_addr_entry, ptr %entry1, i32 0, i32 1
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_count, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %if.end7.critedge

if.then:                                          ; preds = %entry
  %list = getelementptr inbounds %struct.nfp_ipv6_addr_entry, ptr %entry1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.nfp_ipv6_addr_entry, ptr %entry1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.nfp_ipv6_addr_entry, ptr %entry1, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %entry1) #13
  tail call void @mutex_unlock(ptr noundef %ipv6_off_lock) #13
  tail call fastcc void @nfp_tun_write_ipv6_list(ptr noundef %app)
  br label %if.end7

if.end7.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %ipv6_off_lock) #13
  br label %if.end7

if.end7:                                          ; preds = %if.end7.critedge, %list_del.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_tunnel_mac_event_handler(ptr noundef %app, ptr noundef %netdev, i32 noundef %event, ptr nocapture noundef readonly %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.cleanup120_crit_edge [
    i32 2, label %if.then
    i32 1, label %if.then12
    i32 8, label %if.then33
    i32 21, label %if.then57
  ]

entry.cleanup120_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup120

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @nfp_tunnel_offload_mac(ptr noundef %app, ptr noundef %netdev, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup120_crit_edge, label %do.body

if.then.cleanup120_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup120

do.body:                                          ; preds = %if.then
  %call2 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body.cleanup120_crit_edge, label %do.end

do.body.cleanup120_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup120

do.end:                                           ; preds = %do.body
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %1 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cpp, align 4
  %call6 = tail call ptr @nfp_cpp_device(ptr noundef %2) #13
  %parent = getelementptr inbounds %struct.device, ptr %call6, i32 0, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %netdev, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %do.end.netdev_name.exit_crit_edge, label %lor.lhs.false.i

do.end.netdev_name.exit_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call ptr @strchr(ptr noundef %netdev, i32 noundef 37) #13
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %netdev, ptr @.str.67
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %do.end.netdev_name.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.67, %do.end.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.19, ptr noundef %retval.0.i) #16
  br label %cleanup120

if.then12:                                        ; preds = %entry
  %call13 = tail call fastcc i32 @nfp_tunnel_offload_mac(ptr noundef %app, ptr noundef %netdev, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.cleanup120_crit_edge, label %do.body16

if.then12.cleanup120_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup120

do.body16:                                        ; preds = %if.then12
  %call17 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.body16.cleanup120_crit_edge, label %do.end22

do.body16.cleanup120_crit_edge:                   ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup120

do.end22:                                         ; preds = %do.body16
  %cpp23 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %7 = ptrtoint ptr %cpp23 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpp23, align 4
  %call24 = tail call ptr @nfp_cpp_device(ptr noundef %8) #13
  %parent25 = getelementptr inbounds %struct.device, ptr %call24, i32 0, i32 1
  %9 = ptrtoint ptr %parent25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent25, align 8
  %11 = ptrtoint ptr %netdev to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %netdev, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i155 = icmp eq i8 %12, 0
  br i1 %tobool.not.i155, label %do.end22.netdev_name.exit161_crit_edge, label %lor.lhs.false.i159

do.end22.netdev_name.exit161_crit_edge:           ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %netdev_name.exit161

lor.lhs.false.i159:                               ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #15
  %call.i156 = tail call ptr @strchr(ptr noundef %netdev, i32 noundef 37) #13
  %tobool2.not.i157 = icmp eq ptr %call.i156, null
  %spec.select.i158 = select i1 %tobool2.not.i157, ptr %netdev, ptr @.str.67
  br label %netdev_name.exit161

netdev_name.exit161:                              ; preds = %lor.lhs.false.i159, %do.end22.netdev_name.exit161_crit_edge
  %retval.0.i160 = phi ptr [ @.str.67, %do.end22.netdev_name.exit161_crit_edge ], [ %spec.select.i158, %lor.lhs.false.i159 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.22, ptr noundef %retval.0.i160) #16
  br label %cleanup120

if.then33:                                        ; preds = %entry
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 8
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %if.then33.cleanup120_crit_edge, label %if.end36

if.then33.cleanup120_crit_edge:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup120

if.end36:                                         ; preds = %if.then33
  %call37 = tail call fastcc i32 @nfp_tunnel_offload_mac(ptr noundef %app, ptr noundef %netdev, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end36.cleanup120_crit_edge, label %do.body40

if.end36.cleanup120_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup120

do.body40:                                        ; preds = %if.end36
  %call41 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %do.body40.cleanup120_crit_edge, label %do.end46

do.body40.cleanup120_crit_edge:                   ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup120

do.end46:                                         ; preds = %do.body40
  %cpp47 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %15 = ptrtoint ptr %cpp47 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cpp47, align 4
  %call48 = tail call ptr @nfp_cpp_device(ptr noundef %16) #13
  %parent49 = getelementptr inbounds %struct.device, ptr %call48, i32 0, i32 1
  %17 = ptrtoint ptr %parent49 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent49, align 8
  %19 = ptrtoint ptr %netdev to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %netdev, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i162 = icmp eq i8 %20, 0
  br i1 %tobool.not.i162, label %do.end46.netdev_name.exit168_crit_edge, label %lor.lhs.false.i166

do.end46.netdev_name.exit168_crit_edge:           ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %netdev_name.exit168

lor.lhs.false.i166:                               ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #15
  %call.i163 = tail call ptr @strchr(ptr noundef %netdev, i32 noundef 37) #13
  %tobool2.not.i164 = icmp eq ptr %call.i163, null
  %spec.select.i165 = select i1 %tobool2.not.i164, ptr %netdev, ptr @.str.67
  br label %netdev_name.exit168

netdev_name.exit168:                              ; preds = %lor.lhs.false.i166, %do.end46.netdev_name.exit168_crit_edge
  %retval.0.i167 = phi ptr [ @.str.67, %do.end46.netdev_name.exit168_crit_edge ], [ %spec.select.i165, %lor.lhs.false.i166 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.25, ptr noundef %retval.0.i167) #16
  br label %cleanup120

if.then57:                                        ; preds = %entry
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %21 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp eq ptr %22, @nfp_repr_netdev_ops
  br i1 %cmp.i, label %lor.lhs.false, label %if.then57.cleanup120_crit_edge

if.then57.cleanup120_crit_edge:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup120

lor.lhs.false:                                    ; preds = %if.then57
  %upper_dev = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 1
  %23 = ptrtoint ptr %upper_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %upper_dev, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 15
  %25 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %26, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.i.not, label %lor.lhs.false.cleanup120_crit_edge, label %if.end61

lor.lhs.false.cleanup120_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup120

if.end61:                                         ; preds = %lor.lhs.false
  %app63 = getelementptr i8, ptr %netdev, i32 2316
  %27 = ptrtoint ptr %app63 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %app63, align 4
  %cmp64.not = icmp eq ptr %28, %app
  br i1 %cmp64.not, label %if.end66, label %if.end61.cleanup120_crit_edge

if.end61.cleanup120_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup120

if.end66:                                         ; preds = %if.end61
  %app_priv = getelementptr i8, ptr %netdev, i32 2324
  %29 = ptrtoint ptr %app_priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %app_priv, align 4
  %linking = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  %31 = ptrtoint ptr %linking to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %linking, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool67.not = icmp eq i8 %32, 0
  br i1 %tobool67.not, label %if.else87, label %if.then68

if.then68:                                        ; preds = %if.end66
  %call69 = tail call fastcc i32 @nfp_tunnel_offload_mac(ptr noundef %app, ptr noundef %netdev, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then68.if.end86_crit_edge, label %do.body72

if.then68.if.end86_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

do.body72:                                        ; preds = %if.then68
  %call73 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %do.body72.if.end86_crit_edge, label %do.end78

do.body72.if.end86_crit_edge:                     ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

do.end78:                                         ; preds = %do.body72
  %cpp79 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %33 = ptrtoint ptr %cpp79 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cpp79, align 4
  %call80 = tail call ptr @nfp_cpp_device(ptr noundef %34) #13
  %parent81 = getelementptr inbounds %struct.device, ptr %call80, i32 0, i32 1
  %35 = ptrtoint ptr %parent81 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent81, align 8
  %37 = ptrtoint ptr %netdev to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %netdev, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i169 = icmp eq i8 %38, 0
  br i1 %tobool.not.i169, label %do.end78.netdev_name.exit175_crit_edge, label %lor.lhs.false.i173

do.end78.netdev_name.exit175_crit_edge:           ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %netdev_name.exit175

lor.lhs.false.i173:                               ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #15
  %call.i170 = tail call ptr @strchr(ptr noundef %netdev, i32 noundef 37) #13
  %tobool2.not.i171 = icmp eq ptr %call.i170, null
  %spec.select.i172 = select i1 %tobool2.not.i171, ptr %netdev, ptr @.str.67
  br label %netdev_name.exit175

netdev_name.exit175:                              ; preds = %lor.lhs.false.i173, %do.end78.netdev_name.exit175_crit_edge
  %retval.0.i174 = phi ptr [ @.str.67, %do.end78.netdev_name.exit175_crit_edge ], [ %spec.select.i172, %lor.lhs.false.i173 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.28, ptr noundef %retval.0.i174) #16
  br label %if.end86

if.end86:                                         ; preds = %netdev_name.exit175, %do.body72.if.end86_crit_edge, %if.then68.if.end86_crit_edge
  %on_bridge = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %30, i32 0, i32 7
  %39 = ptrtoint ptr %on_bridge to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %on_bridge, align 8
  br label %cleanup120

if.else87:                                        ; preds = %if.end66
  %on_bridge88 = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %30, i32 0, i32 7
  %40 = ptrtoint ptr %on_bridge88 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %on_bridge88, align 8
  %flags89 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %41 = ptrtoint ptr %flags89 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags89, align 8
  %and90 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.else87.cleanup120_crit_edge, label %if.end93

if.else87.cleanup120_crit_edge:                   ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup120

if.end93:                                         ; preds = %if.else87
  %call94 = tail call fastcc i32 @nfp_tunnel_offload_mac(ptr noundef %app, ptr noundef %netdev, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end93.cleanup120_crit_edge, label %do.body97

if.end93.cleanup120_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup120

do.body97:                                        ; preds = %if.end93
  %call98 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %do.body97.cleanup120_crit_edge, label %do.end103

do.body97.cleanup120_crit_edge:                   ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup120

do.end103:                                        ; preds = %do.body97
  %cpp104 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %43 = ptrtoint ptr %cpp104 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cpp104, align 4
  %call105 = tail call ptr @nfp_cpp_device(ptr noundef %44) #13
  %parent106 = getelementptr inbounds %struct.device, ptr %call105, i32 0, i32 1
  %45 = ptrtoint ptr %parent106 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %parent106, align 8
  %47 = ptrtoint ptr %netdev to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %netdev, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i176 = icmp eq i8 %48, 0
  br i1 %tobool.not.i176, label %do.end103.netdev_name.exit182_crit_edge, label %lor.lhs.false.i180

do.end103.netdev_name.exit182_crit_edge:          ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #15
  br label %netdev_name.exit182

lor.lhs.false.i180:                               ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #15
  %call.i177 = tail call ptr @strchr(ptr noundef %netdev, i32 noundef 37) #13
  %tobool2.not.i178 = icmp eq ptr %call.i177, null
  %spec.select.i179 = select i1 %tobool2.not.i178, ptr %netdev, ptr @.str.67
  br label %netdev_name.exit182

netdev_name.exit182:                              ; preds = %lor.lhs.false.i180, %do.end103.netdev_name.exit182_crit_edge
  %retval.0.i181 = phi ptr [ @.str.67, %do.end103.netdev_name.exit182_crit_edge ], [ %spec.select.i179, %lor.lhs.false.i180 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.22, ptr noundef %retval.0.i181) #16
  br label %cleanup120

cleanup120:                                       ; preds = %netdev_name.exit182, %do.body97.cleanup120_crit_edge, %if.end93.cleanup120_crit_edge, %if.else87.cleanup120_crit_edge, %if.end86, %if.end61.cleanup120_crit_edge, %lor.lhs.false.cleanup120_crit_edge, %if.then57.cleanup120_crit_edge, %netdev_name.exit168, %do.body40.cleanup120_crit_edge, %if.end36.cleanup120_crit_edge, %if.then33.cleanup120_crit_edge, %netdev_name.exit161, %do.body16.cleanup120_crit_edge, %if.then12.cleanup120_crit_edge, %netdev_name.exit, %do.body.cleanup120_crit_edge, %if.then.cleanup120_crit_edge, %entry.cleanup120_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_tunnel_offload_mac(ptr noundef %app, ptr noundef %netdev, i32 noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp eq ptr %1, @nfp_repr_netdev_ops
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %app2 = getelementptr i8, ptr %netdev, i32 2316
  %2 = ptrtoint ptr %app2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %app2, align 4
  %cmp.not = icmp eq ptr %3, %app
  br i1 %cmp.not, label %if.end, label %if.then.cleanup80_crit_edge

if.then.cleanup80_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

if.end:                                           ; preds = %if.then
  %app_priv = getelementptr i8, ptr %netdev, i32 2324
  %4 = ptrtoint ptr %app_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %app_priv, align 4
  %on_bridge = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %on_bridge to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %on_bridge, align 8, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %cleanup, label %if.end.cleanup80_crit_edge

if.end.cleanup80_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

cleanup:                                          ; preds = %if.end
  %mac_offloaded6 = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %5, i32 0, i32 2
  %offloaded_mac_addr = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %5, i32 0, i32 3
  %dst.i = getelementptr i8, ptr %netdev, i32 2308
  %8 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dst.i, align 4
  %u.i = getelementptr inbounds %struct.metadata_dst, ptr %9, i32 0, i32 2
  %port_id.i = getelementptr inbounds %struct.hw_port_info, ptr %u.i, i32 0, i32 1
  %10 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_id.i, align 4
  %shr.mask.i = and i32 %11, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %shr.mask.i)
  %cmp.i131 = icmp eq i32 %shr.mask.i, 268435456
  br i1 %cmp.i131, label %cleanup.if.end23_crit_edge, label %cleanup.cleanup80_crit_edge

cleanup.cleanup80_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

cleanup.if.end23_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.else:                                          ; preds = %entry
  %rtnl_link_ops.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 136
  %12 = ptrtoint ptr %rtnl_link_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rtnl_link_ops.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.else.cleanup80_crit_edge, label %if.end.i

if.else.cleanup80_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

if.end.i:                                         ; preds = %if.else
  %kind.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kind.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(12) @.str.48) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.then13_crit_edge, label %netif_is_vxlan.exit.i

if.end.i.if.then13_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

netif_is_vxlan.exit.i:                            ; preds = %if.end.i
  %call.i.i = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(6) @.str.49) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %netif_is_vxlan.exit.i.if.then13_crit_edge, label %netif_is_geneve.exit.i

netif_is_vxlan.exit.i.if.then13_crit_edge:        ; preds = %netif_is_vxlan.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

netif_is_geneve.exit.i:                           ; preds = %netif_is_vxlan.exit.i
  %call.i25.i = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(7) @.str.50) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %tobool2.not.i26.i = icmp eq i32 %call.i25.i, 0
  br i1 %tobool2.not.i26.i, label %netif_is_geneve.exit.i.if.then13_crit_edge, label %netif_is_gretap.exit.i

netif_is_geneve.exit.i.if.then13_crit_edge:       ; preds = %netif_is_geneve.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

netif_is_gretap.exit.i:                           ; preds = %netif_is_geneve.exit.i
  %call.i31.i = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(7) @.str.51) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %tobool2.not.i32.i = icmp eq i32 %call.i31.i, 0
  br i1 %tobool2.not.i32.i, label %netif_is_gretap.exit.i.if.then13_crit_edge, label %nfp_fl_is_netdev_to_offload.exit

netif_is_gretap.exit.i.if.then13_crit_edge:       ; preds = %netif_is_gretap.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

nfp_fl_is_netdev_to_offload.exit:                 ; preds = %netif_is_gretap.exit.i
  %call.i37.i = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(10) @.str.52) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i)
  %tobool2.not.i38.i = icmp eq i32 %call.i37.i, 0
  br i1 %tobool2.not.i38.i, label %nfp_fl_is_netdev_to_offload.exit.if.then13_crit_edge, label %nfp_fl_is_netdev_to_offload.exit.cleanup80_crit_edge

nfp_fl_is_netdev_to_offload.exit.cleanup80_crit_edge: ; preds = %nfp_fl_is_netdev_to_offload.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

nfp_fl_is_netdev_to_offload.exit.if.then13_crit_edge: ; preds = %nfp_fl_is_netdev_to_offload.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

if.then13:                                        ; preds = %nfp_fl_is_netdev_to_offload.exit.if.then13_crit_edge, %netif_is_gretap.exit.i.if.then13_crit_edge, %netif_is_geneve.exit.i.if.then13_crit_edge, %netif_is_vxlan.exit.i.if.then13_crit_edge, %if.end.i.if.then13_crit_edge
  %call14 = tail call ptr @nfp_flower_non_repr_priv_get(ptr noundef %app, ptr noundef %netdev) #13
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then13.cleanup80_crit_edge, label %if.end17

if.then13.cleanup80_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

if.end17:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  %mac_offloaded18 = getelementptr inbounds %struct.nfp_flower_non_repr_priv, ptr %call14, i32 0, i32 3
  %offloaded_mac_addr19 = getelementptr inbounds %struct.nfp_flower_non_repr_priv, ptr %call14, i32 0, i32 4
  br label %if.end23

if.end23:                                         ; preds = %if.end17, %cleanup.if.end23_crit_edge
  %nr_priv.0 = phi ptr [ null, %cleanup.if.end23_crit_edge ], [ %call14, %if.end17 ]
  %mac_offloaded.1 = phi ptr [ %mac_offloaded6, %cleanup.if.end23_crit_edge ], [ %mac_offloaded18, %if.end17 ]
  %off_mac.1 = phi ptr [ %offloaded_mac_addr, %cleanup.if.end23_crit_edge ], [ %offloaded_mac_addr19, %if.end17 ]
  %port.1 = phi i32 [ %11, %cleanup.if.end23_crit_edge ], [ 0, %if.end17 ]
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %16 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_addr, align 64
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %20 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end23.err_put_non_repr_priv_crit_edge

if.end23.err_put_non_repr_priv_crit_edge:         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put_non_repr_priv

is_valid_ether_addr.exit:                         ; preds = %if.end23
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %22 to i32
  %or.i.i = or i32 %19, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.err_put_non_repr_priv_crit_edge, label %if.end26

is_valid_ether_addr.exit.err_put_non_repr_priv_crit_edge: ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put_non_repr_priv

if.end26:                                         ; preds = %is_valid_ether_addr.exit
  %23 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %cmd, label %if.end26.err_put_non_repr_priv_crit_edge [
    i32 2, label %land.lhs.true
    i32 0, label %if.end26.sw.bb_crit_edge
    i32 1, label %sw.bb39
  ]

if.end26.sw.bb_crit_edge:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end26.err_put_non_repr_priv_crit_edge:         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put_non_repr_priv

land.lhs.true:                                    ; preds = %if.end26
  %24 = ptrtoint ptr %mac_offloaded.1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mac_offloaded.1, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool28.not = icmp eq i8 %25, 0
  br i1 %tobool28.not, label %land.lhs.true.sw.bb_crit_edge, label %sw.bb51

land.lhs.true.sw.bb_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

sw.bb:                                            ; preds = %land.lhs.true.sw.bb_crit_edge, %if.end26.sw.bb_crit_edge
  %call31 = tail call fastcc i32 @nfp_tunnel_add_shared_mac(ptr noundef %app, ptr noundef %netdev, i32 noundef %port.1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %sw.bb.err_put_non_repr_priv_crit_edge

sw.bb.err_put_non_repr_priv_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put_non_repr_priv

if.end34:                                         ; preds = %sw.bb
  br i1 %cmp.i, label %if.end34.if.end37_crit_edge, label %if.then36

if.end34.if.end37_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__nfp_flower_non_repr_priv_get(ptr noundef %nr_priv.0) #13
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end34.if.end37_crit_edge
  %26 = ptrtoint ptr %mac_offloaded.1 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %mac_offloaded.1, align 1
  %27 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_addr, align 64
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %31 = ptrtoint ptr %off_mac.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %off_mac.1, align 4
  %add.ptr.i132 = getelementptr i8, ptr %28, i32 4
  %32 = ptrtoint ptr %add.ptr.i132 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr.i132, align 2
  %add.ptr1.i = getelementptr i8, ptr %off_mac.1, i32 4
  %34 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %add.ptr1.i, align 2
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end26
  %35 = ptrtoint ptr %mac_offloaded.1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %mac_offloaded.1, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool40.not = icmp eq i8 %36, 0
  br i1 %tobool40.not, label %sw.bb39.sw.epilog_crit_edge, label %if.end42

sw.bb39.sw.epilog_crit_edge:                      ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end42:                                         ; preds = %sw.bb39
  br i1 %cmp.i, label %if.end42.if.end45_crit_edge, label %if.then44

if.end42.if.end45_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__nfp_flower_non_repr_priv_put(ptr noundef %nr_priv.0) #13
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end42.if.end45_crit_edge
  %37 = ptrtoint ptr %mac_offloaded.1 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %mac_offloaded.1, align 1
  %38 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_addr, align 64
  %call47 = tail call fastcc i32 @nfp_tunnel_del_shared_mac(ptr noundef %app, ptr noundef %netdev, ptr noundef %39, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end45.sw.epilog_crit_edge, label %if.end45.err_put_non_repr_priv_crit_edge

if.end45.err_put_non_repr_priv_crit_edge:         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put_non_repr_priv

if.end45.sw.epilog_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb51:                                          ; preds = %land.lhs.true
  %40 = ptrtoint ptr %off_mac.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %off_mac.1, align 4
  %xor.i = xor i32 %41, %19
  %42 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i134 = getelementptr i8, ptr %off_mac.1, i32 4
  %44 = ptrtoint ptr %add.ptr1.i134 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr1.i134, align 2
  %xor37.i = xor i16 %45, %43
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i135 = icmp eq i32 %or.i, 0
  br i1 %cmp.i135, label %sw.bb51.sw.epilog_crit_edge, label %if.end55

sw.bb51.sw.epilog_crit_edge:                      ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end55:                                         ; preds = %sw.bb51
  %call56 = tail call fastcc i32 @nfp_tunnel_add_shared_mac(ptr noundef %app, ptr noundef %netdev, i32 noundef %port.1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end55.err_put_non_repr_priv_crit_edge

if.end55.err_put_non_repr_priv_crit_edge:         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put_non_repr_priv

if.end59:                                         ; preds = %if.end55
  %call60 = tail call fastcc i32 @nfp_tunnel_del_shared_mac(ptr noundef %app, ptr noundef %netdev, ptr noundef %off_mac.1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end59.if.end72_crit_edge, label %do.body

if.end59.if.end72_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

do.body:                                          ; preds = %if.end59
  %call63 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %do.body.if.end72_crit_edge, label %do.end

do.body.if.end72_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

do.end:                                           ; preds = %do.body
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %46 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cpp, align 4
  %call67 = tail call ptr @nfp_cpp_device(ptr noundef %47) #13
  %parent = getelementptr inbounds %struct.device, ptr %call67, i32 0, i32 1
  %48 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %parent, align 8
  %50 = ptrtoint ptr %netdev to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %netdev, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i136 = icmp eq i8 %51, 0
  br i1 %tobool.not.i136, label %do.end.netdev_name.exit_crit_edge, label %lor.lhs.false.i

do.end.netdev_name.exit_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call.i137 = tail call ptr @strchr(ptr noundef %netdev, i32 noundef 37) #13
  %tobool2.not.i138 = icmp eq ptr %call.i137, null
  %spec.select.i = select i1 %tobool2.not.i138, ptr %netdev, ptr @.str.67
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %do.end.netdev_name.exit_crit_edge
  %retval.0.i139 = phi ptr [ @.str.67, %do.end.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.46, ptr noundef %retval.0.i139) #16
  br label %if.end72

if.end72:                                         ; preds = %netdev_name.exit, %do.body.if.end72_crit_edge, %if.end59.if.end72_crit_edge
  %52 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_addr, align 64
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %56 = ptrtoint ptr %off_mac.1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %off_mac.1, align 4
  %add.ptr.i140 = getelementptr i8, ptr %53, i32 4
  %57 = ptrtoint ptr %add.ptr.i140 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %add.ptr.i140, align 2
  %59 = ptrtoint ptr %add.ptr1.i134 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %add.ptr1.i134, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end72, %sw.bb51.sw.epilog_crit_edge, %if.end45.sw.epilog_crit_edge, %sw.bb39.sw.epilog_crit_edge, %if.end37
  br i1 %cmp.i, label %sw.epilog.cleanup80_crit_edge, label %sw.epilog.cleanup80.sink.split_crit_edge

sw.epilog.cleanup80.sink.split_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80.sink.split

sw.epilog.cleanup80_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

err_put_non_repr_priv:                            ; preds = %if.end55.err_put_non_repr_priv_crit_edge, %if.end45.err_put_non_repr_priv_crit_edge, %sw.bb.err_put_non_repr_priv_crit_edge, %if.end26.err_put_non_repr_priv_crit_edge, %is_valid_ether_addr.exit.err_put_non_repr_priv_crit_edge, %if.end23.err_put_non_repr_priv_crit_edge
  %err.0 = phi i32 [ %call56, %if.end55.err_put_non_repr_priv_crit_edge ], [ %call47, %if.end45.err_put_non_repr_priv_crit_edge ], [ %call31, %sw.bb.err_put_non_repr_priv_crit_edge ], [ -22, %is_valid_ether_addr.exit.err_put_non_repr_priv_crit_edge ], [ -22, %if.end23.err_put_non_repr_priv_crit_edge ], [ -22, %if.end26.err_put_non_repr_priv_crit_edge ]
  br i1 %cmp.i, label %err_put_non_repr_priv.cleanup80_crit_edge, label %err_put_non_repr_priv.cleanup80.sink.split_crit_edge

err_put_non_repr_priv.cleanup80.sink.split_crit_edge: ; preds = %err_put_non_repr_priv
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80.sink.split

err_put_non_repr_priv.cleanup80_crit_edge:        ; preds = %err_put_non_repr_priv
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

cleanup80.sink.split:                             ; preds = %err_put_non_repr_priv.cleanup80.sink.split_crit_edge, %sw.epilog.cleanup80.sink.split_crit_edge
  %retval.1.ph = phi i32 [ 0, %sw.epilog.cleanup80.sink.split_crit_edge ], [ %err.0, %err_put_non_repr_priv.cleanup80.sink.split_crit_edge ]
  tail call void @__nfp_flower_non_repr_priv_put(ptr noundef %nr_priv.0) #13
  br label %cleanup80

cleanup80:                                        ; preds = %cleanup80.sink.split, %err_put_non_repr_priv.cleanup80_crit_edge, %sw.epilog.cleanup80_crit_edge, %if.then13.cleanup80_crit_edge, %nfp_fl_is_netdev_to_offload.exit.cleanup80_crit_edge, %if.else.cleanup80_crit_edge, %cleanup.cleanup80_crit_edge, %if.end.cleanup80_crit_edge, %if.then.cleanup80_crit_edge
  %retval.1 = phi i32 [ 0, %cleanup.cleanup80_crit_edge ], [ -12, %if.then13.cleanup80_crit_edge ], [ 0, %nfp_fl_is_netdev_to_offload.exit.cleanup80_crit_edge ], [ 0, %sw.epilog.cleanup80_crit_edge ], [ %err.0, %err_put_non_repr_priv.cleanup80_crit_edge ], [ 0, %if.then.cleanup80_crit_edge ], [ 0, %if.end.cleanup80_crit_edge ], [ 0, %if.else.cleanup80_crit_edge ], [ %retval.1.ph, %cleanup80.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_flower_xmit_pre_tun_flow(ptr noundef %app, ptr nocapture noundef %flow) local_unnamed_addr #0 align 64 {
entry:
  %payload = alloca %struct.nfp_tun_pre_tun_rule, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %payload)
  %payload.4.payload.4..sroa_idx = getelementptr inbounds i8, ptr %payload, i32 4
  %pre_tun_rule_cnt = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %pre_tun_rule_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pre_tun_rule_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp = icmp eq i32 %3, 32
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %payload.8.payload.8..sroa_idx = getelementptr inbounds i8, ptr %payload, i32 8
  %payload.6.payload.6..sroa_idx = getelementptr inbounds i8, ptr %payload, i32 6
  %4 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %payload, align 4
  %pre_tun_rule = getelementptr inbounds %struct.nfp_fl_payload, ptr %flow, i32 0, i32 12
  %5 = ptrtoint ptr %pre_tun_rule to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pre_tun_rule, align 4
  %vlan_tci = getelementptr inbounds %struct.nfp_fl_payload, ptr %flow, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vlan_tci, align 4
  %9 = ptrtoint ptr %payload.6.payload.6..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %payload.6.payload.6..sroa_idx, align 2
  %host_ctx_id = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %flow, i32 0, i32 4
  %10 = ptrtoint ptr %host_ctx_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %host_ctx_id, align 4
  %12 = ptrtoint ptr %payload.8.payload.8..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %payload.8.payload.8..sroa_idx, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 86
  %13 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_addr, align 64
  %call = tail call fastcc ptr @nfp_tunnel_lookup_offloaded_macs(ptr noundef %app, ptr noundef %14)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %unmasked_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %flow, i32 0, i32 7
  %15 = ptrtoint ptr %unmasked_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unmasked_data, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 2
  %index10 = getelementptr inbounds %struct.nfp_tun_offloaded_mac, ptr %call, i32 0, i32 2
  %19 = ptrtoint ptr %index10 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %index10, align 2
  %21 = and i16 %20, -129
  %22 = shl i8 %18, 2
  %23 = and i8 %22, -128
  %24 = zext i8 %23 to i16
  %.sink = or i16 %21, %24
  store i16 %.sink, ptr %index10, align 2
  %25 = ptrtoint ptr %payload.4.payload.4..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %.sink, ptr %payload.4.payload.4..sroa_idx, align 4
  %26 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %8, ptr %vlan_tci, align 4
  %port_idx21 = getelementptr inbounds %struct.nfp_fl_payload, ptr %flow, i32 0, i32 12, i32 2
  %27 = ptrtoint ptr %port_idx21 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %.sink, ptr %port_idx21, align 2
  %call.i = tail call ptr @nfp_flower_cmsg_alloc(ptr noundef %app, i32 noundef 12, i32 noundef 21, i32 noundef 3264) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end5.cleanup_crit_edge, label %if.end25

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end25:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %30 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i.i, align 4
  %sub.i.i = add i32 %31, -4
  %32 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %payload, i32 %sub.i.i)
  %ctrl.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 3
  %33 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctrl.i, align 4
  %call4.i = tail call zeroext i1 @nfp_ctrl_tx(ptr noundef %34, ptr noundef nonnull %call.i) #13
  %35 = ptrtoint ptr %pre_tun_rule_cnt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pre_tun_rule_cnt, align 8
  %inc = add i32 %36, 1
  store i32 %inc, ptr %pre_tun_rule_cnt, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -28, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfp_tunnel_lookup_offloaded_macs(ptr nocapture noundef readonly %app, ptr noundef %mac) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %tun = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17
  %2 = tail call i32 @llvm.read_register.i32(metadata !151) #13
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !162
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 696, ptr noundef nonnull @.str.40) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %6 = ptrtoint ptr %tun to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %tun, align 4
  %call.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %tun) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge

rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i
  %call5.i.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call7.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, label %land.lhs.true9.i.i.i

land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i.i

land.lhs.true9.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b92.i.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i.i, label %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge:    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 594, ptr noundef nonnull @.str.54) #13
  br label %do.end12.i.i.i

do.end12.i.i.i:                                   ; preds = %if.then.i.i.i, %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge
  %head_offset.i.i.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 0, i32 3, i32 3
  %arrayidx58.i = getelementptr i8, ptr %mac, i32 5
  %arrayidx63.i = getelementptr i8, ptr %mac, i32 4
  %arrayidx67.i = getelementptr i8, ptr %mac, i32 3
  %arrayidx72.i = getelementptr i8, ptr %mac, i32 2
  %arrayidx77.i = getelementptr i8, ptr %mac, i32 1
  %key_offset.i.i.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 0, i32 3, i32 2
  %key_len.i.i.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 0, i32 3, i32 1
  br label %restart.i.i.i

restart.i.i.i:                                    ; preds = %do.end60.i.i.i.restart.i.i.i_crit_edge, %do.end12.i.i.i
  %tbl.0.i.i.i = phi ptr [ %7, %do.end12.i.i.i ], [ %42, %do.end60.i.i.i.restart.i.i.i_crit_edge ]
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add1.i = add i32 %9, -559038731
  %10 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx58.i, align 1
  %conv59.i = zext i8 %11 to i32
  %shl60.i = shl nuw nsw i32 %conv59.i, 8
  %add61.i = add i32 %shl60.i, %add1.i
  %12 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx63.i, align 1
  %conv64.i = zext i8 %13 to i32
  %add65.i = add i32 %add61.i, %conv64.i
  %14 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx67.i, align 1
  %conv68.i = zext i8 %15 to i32
  %shl69.i = shl nuw i32 %conv68.i, 24
  %add70.i = add i32 %shl69.i, %add1.i
  %16 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx72.i, align 1
  %conv73.i = zext i8 %17 to i32
  %shl74.i = shl nuw nsw i32 %conv73.i, 16
  %add75.i = add i32 %add70.i, %shl74.i
  %18 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx77.i, align 1
  %conv78.i = zext i8 %19 to i32
  %shl79.i = shl nuw nsw i32 %conv78.i, 8
  %add80.i = add i32 %add75.i, %shl79.i
  %20 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mac, align 1
  %conv83.i = zext i8 %21 to i32
  %add84.i = add i32 %add80.i, %conv83.i
  %xor85.i = xor i32 %add65.i, %add1.i
  %or.i206.i = tail call i32 @llvm.fshl.i32(i32 %add65.i, i32 %add65.i, i32 14) #13
  %sub87.i = sub i32 %xor85.i, %or.i206.i
  %xor88.i = xor i32 %add84.i, %sub87.i
  %or.i207.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i, i32 %sub87.i, i32 11) #13
  %sub90.i = sub i32 %xor88.i, %or.i207.i
  %xor91.i = xor i32 %sub90.i, %add65.i
  %or.i208.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i, i32 %sub90.i, i32 25) #13
  %sub93.i = sub i32 %xor91.i, %or.i208.i
  %xor94.i = xor i32 %sub93.i, %sub87.i
  %or.i209.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i, i32 %sub93.i, i32 16) #13
  %sub96.i = sub i32 %xor94.i, %or.i209.i
  %xor97.i = xor i32 %sub96.i, %sub90.i
  %or.i210.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i, i32 %sub96.i, i32 4) #13
  %sub99.i = sub i32 %xor97.i, %or.i210.i
  %xor100.i = xor i32 %sub99.i, %sub93.i
  %or.i211.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i, i32 %sub99.i, i32 14) #13
  %sub102.i = sub i32 %xor100.i, %or.i211.i
  %xor103.i = xor i32 %sub102.i, %sub96.i
  %or.i212.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i, i32 %sub102.i, i32 24) #13
  %sub105.i = sub i32 %xor103.i, %or.i212.i
  %22 = ptrtoint ptr %tbl.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tbl.0.i.i.i, align 128
  %sub.i.i.i.i.i = add i32 %23, -1
  %and.i3.i.i.i.i = and i32 %sub105.i, %sub.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i.i.i, label %cond.false.i.i.i.i, label %cond.true.i.i.i.i, !prof !166

cond.true.i.i.i.i:                                ; preds = %restart.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = tail call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i) #13
  br label %rht_bucket.exit.i.i.i

cond.false.i.i.i.i:                               ; preds = %restart.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket.exit.i.i.i

rht_bucket.exit.i.i.i:                            ; preds = %cond.false.i.i.i.i, %cond.true.i.i.i.i
  %cond.i.i.i.i = phi ptr [ %call.i.i.i.i, %cond.true.i.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i.i.i.i ]
  %26 = ptrtoint ptr %cond.i.i.i.i to i32
  %or.i.i.i.i.i = or i32 %26, 1
  %27 = inttoptr i32 %or.i.i.i.i.i to ptr
  br label %do.body16.i.i.i

do.body16.i.i.i:                                  ; preds = %do.cond34.i.i.i.do.body16.i.i.i_crit_edge, %rht_bucket.exit.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !170
  %28 = ptrtoint ptr %cond.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %cond.i.i.i.i, align 4
  %call.i93.i.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i.i)
  %tobool.not.i94.i.i.i = icmp eq i32 %call.i93.i.i.i, 0
  br i1 %tobool.not.i94.i.i.i, label %land.lhs.true.i.i.i.i, label %do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge

do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %do.body16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr_rcu.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body16.i.i.i
  %call2.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, label %land.lhs.true4.i.i.i.i

land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr_rcu.exit.i.i.i

land.lhs.true4.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b11.i.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i.i, label %land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr_rcu.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 369, ptr noundef nonnull @.str.54) #13
  br label %rht_ptr_rcu.exit.i.i.i

rht_ptr_rcu.exit.i.i.i:                           ; preds = %if.then.i.i.i.i, %land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, %do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge
  %30 = ptrtoint ptr %29 to i32
  %and.i.i95.i.i.i = and i32 %30, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i.i)
  %tobool.not.i.i96.i.i.i = icmp eq i32 %and.i.i95.i.i.i, 0
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i96.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i95.i.i.i
  %31 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %and.i106.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i.i)
  %tobool.i.not107.i.i.i = icmp eq i32 %and.i106.i.i.i, 0
  br i1 %tobool.i.not107.i.i.i, label %for.body.i.i.i.preheader, label %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge

rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge: ; preds = %rht_ptr_rcu.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond34.i.i.i

for.body.i.i.i.preheader:                         ; preds = %rht_ptr_rcu.exit.i.i.i
  %32 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i98.i.i.i = zext i16 %33 to i32
  %idx.neg.i99.i.i.i = sub nsw i32 0, %conv.i98.i.i.i
  %34 = ptrtoint ptr %key_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %key_offset.i.i.i.i, align 4
  %conv.i101.i.i.i = zext i16 %35 to i32
  %36 = ptrtoint ptr %key_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %key_len.i.i.i.i, align 2
  %conv3.i.i.i.i = zext i16 %37 to i32
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i.i.preheader
  %he.0108.i.i.i = phi ptr [ %39, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %31, %for.body.i.i.i.preheader ]
  %add.ptr.i100.i.i.i = getelementptr i8, ptr %he.0108.i.i.i, i32 %idx.neg.i99.i.i.i
  %add.ptr.i102.i.i.i = getelementptr i8, ptr %add.ptr.i100.i.i.i, i32 %conv.i101.i.i.i
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %add.ptr.i102.i.i.i, ptr %mac, i32 %conv3.i.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool26.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool26.not.i.i.i, label %__rhashtable_lookup.exit.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %38 = ptrtoint ptr %he.0108.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %he.0108.i.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  %and.i.i.i.i = and i32 %40, 1
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.do.cond34.i.i.i_crit_edge

for.inc.i.i.i.do.cond34.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond34.i.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

do.cond34.i.i.i:                                  ; preds = %for.inc.i.i.i.do.cond34.i.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge
  %he.0.lcssa.i.i.i = phi ptr [ %31, %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge ], [ %39, %for.inc.i.i.i.do.cond34.i.i.i_crit_edge ]
  %cmp.not.i.i.i = icmp eq ptr %he.0.lcssa.i.i.i, %27
  br i1 %cmp.not.i.i.i, label %do.end39.i.i.i, label %do.cond34.i.i.i.do.body16.i.i.i_crit_edge

do.cond34.i.i.i.do.body16.i.i.i_crit_edge:        ; preds = %do.cond34.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body16.i.i.i

do.end39.i.i.i:                                   ; preds = %do.cond34.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !171
  %future_tbl.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %future_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %future_tbl.i.i.i, align 4
  %call47.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %tun) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i.i)
  %tobool48.not.i.i.i = icmp eq i32 %call47.i.i.i, 0
  br i1 %tobool48.not.i.i.i, label %lor.lhs.false49.i.i.i, label %do.end39.i.i.i.do.end60.i.i.i_crit_edge

do.end39.i.i.i.do.end60.i.i.i_crit_edge:          ; preds = %do.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i.i.i

lor.lhs.false49.i.i.i:                            ; preds = %do.end39.i.i.i
  %call50.i.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i.i)
  %tobool51.not.i.i.i = icmp eq i32 %call50.i.i.i, 0
  br i1 %tobool51.not.i.i.i, label %land.lhs.true52.i.i.i, label %lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge

lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %lor.lhs.false49.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i.i.i

land.lhs.true52.i.i.i:                            ; preds = %lor.lhs.false49.i.i.i
  %call53.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i.i)
  %tobool54.not.i.i.i = icmp eq i32 %call53.i.i.i, 0
  br i1 %tobool54.not.i.i.i, label %land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge, label %land.lhs.true55.i.i.i

land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %land.lhs.true52.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i.i.i

land.lhs.true55.i.i.i:                            ; preds = %land.lhs.true52.i.i.i
  %.b9091.i.i.i = load i1, ptr @__rhashtable_lookup.__warned.68, align 1
  br i1 %.b9091.i.i.i, label %land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge, label %if.then57.i.i.i

land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i.i.i

if.then57.i.i.i:                                  ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_lookup.__warned.68, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 614, ptr noundef nonnull @.str.54) #13
  br label %do.end60.i.i.i

do.end60.i.i.i:                                   ; preds = %if.then57.i.i.i, %land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge, %land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge, %lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge, %do.end39.i.i.i.do.end60.i.i.i_crit_edge
  %tobool62.not.i.i.i = icmp eq ptr %42, null
  br i1 %tobool62.not.i.i.i, label %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge, label %do.end60.i.i.i.restart.i.i.i_crit_edge, !prof !166

do.end60.i.i.i.restart.i.i.i_crit_edge:           ; preds = %do.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %restart.i.i.i

do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge: ; preds = %do.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rhashtable_lookup.exit.i

__rhashtable_lookup.exit.i.i:                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not.i1.i = icmp eq ptr %he.0108.i.i.i, null
  %spec.select = select i1 %tobool.not.i1.i, ptr null, ptr %add.ptr.i100.i.i.i
  br label %rhashtable_lookup.exit.i

rhashtable_lookup.exit.i:                         ; preds = %__rhashtable_lookup.exit.i.i, %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge
  %cond.i.i = phi ptr [ %spec.select, %__rhashtable_lookup.exit.i.i ], [ null, %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge ]
  %call.i2.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i2.i, label %rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge, label %land.lhs.true.i5.i

rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rhashtable_lookup_fast.exit

land.lhs.true.i5.i:                               ; preds = %rhashtable_lookup.exit.i
  %call1.i3.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rhashtable_lookup_fast.exit

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rhashtable_lookup_fast.exit

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 724, ptr noundef nonnull @.str.41) #13
  br label %rhashtable_lookup_fast.exit

rhashtable_lookup_fast.exit:                      ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge, %land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge, %rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %43 = tail call i32 @llvm.read_register.i32(metadata !151) #13
  %and.i.i.i.i.i9.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret ptr %cond.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_flower_xmit_pre_tun_del_flow(ptr noundef %app, ptr nocapture noundef readonly %flow) local_unnamed_addr #0 align 64 {
entry:
  %payload = alloca %struct.nfp_tun_pre_tun_rule, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %payload)
  %payload.4.payload.4..sroa_idx = getelementptr inbounds i8, ptr %payload, i32 4
  %payload.6.payload.6..sroa_idx = getelementptr inbounds i8, ptr %payload, i32 6
  %2 = getelementptr inbounds i8, ptr %payload, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %2, align 4
  %4 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %payload, align 4
  %vlan_tci = getelementptr inbounds %struct.nfp_fl_payload, ptr %flow, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vlan_tci, align 4
  %7 = ptrtoint ptr %payload.6.payload.6..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %payload.6.payload.6..sroa_idx, align 2
  %port_idx = getelementptr inbounds %struct.nfp_fl_payload, ptr %flow, i32 0, i32 12, i32 2
  %8 = ptrtoint ptr %port_idx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %port_idx, align 2
  %10 = ptrtoint ptr %payload.4.payload.4..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %payload.4.payload.4..sroa_idx, align 4
  %call.i = tail call ptr @nfp_flower_cmsg_alloc(ptr noundef %app, i32 noundef 12, i32 noundef 21, i32 noundef 3264) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i.i, align 4
  %sub.i.i = add i32 %14, -4
  %15 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %payload, i32 %sub.i.i)
  %ctrl.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 3
  %16 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl.i, align 4
  %call4.i = tail call zeroext i1 @nfp_ctrl_tx(ptr noundef %17, ptr noundef nonnull %call.i) #13
  %pre_tun_rule_cnt = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 30
  %18 = ptrtoint ptr %pre_tun_rule_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pre_tun_rule_cnt, align 8
  %dec = add i32 %19, -1
  store i32 %dec, ptr %pre_tun_rule_cnt, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_tunnel_config_start(ptr nocapture noundef readonly %app) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %tun = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17
  %call = tail call i32 @rhashtable_init(ptr noundef %tun, ptr noundef nonnull @offloaded_macs_params) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac_off_ids = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %mac_off_ids, ptr noundef nonnull @.str.69, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #13
  %xa_flags.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 9, i32 0, i32 1
  %2 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 67108869, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 9, i32 0, i32 2
  %3 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %xa_head.i.i, align 4
  %ipv4_off_lock = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 5
  tail call void @__mutex_init(ptr noundef %ipv4_off_lock, ptr noundef nonnull @.str.32, ptr noundef nonnull @nfp_tunnel_config_start.__key) #13
  %ipv4_off_list = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %ipv4_off_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %ipv4_off_list, ptr %ipv4_off_list, align 4
  %prev.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ipv4_off_list, ptr %prev.i, align 4
  %ipv6_off_lock = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 6
  tail call void @__mutex_init(ptr noundef %ipv6_off_lock, ptr noundef nonnull @.str.34, ptr noundef nonnull @nfp_tunnel_config_start.__key.33) #13
  %ipv6_off_list = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 2
  %6 = ptrtoint ptr %ipv6_off_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %ipv6_off_list, ptr %ipv6_off_list, align 4
  %prev.i47 = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i47 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ipv6_off_list, ptr %prev.i47, align 4
  %neigh_off_lock_v4 = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %neigh_off_lock_v4, ptr noundef nonnull @.str.36, ptr noundef nonnull @nfp_tunnel_config_start.__key.35, i16 noundef signext 3) #13
  %neigh_off_list_v4 = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 3
  %8 = ptrtoint ptr %neigh_off_list_v4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %neigh_off_list_v4, ptr %neigh_off_list_v4, align 4
  %prev.i48 = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %neigh_off_list_v4, ptr %prev.i48, align 4
  %neigh_off_lock_v6 = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %neigh_off_lock_v6, ptr noundef nonnull @.str.38, ptr noundef nonnull @nfp_tunnel_config_start.__key.37, i16 noundef signext 3) #13
  %neigh_off_list_v6 = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 4
  %10 = ptrtoint ptr %neigh_off_list_v6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %neigh_off_list_v6, ptr %neigh_off_list_v6, align 4
  %prev.i49 = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 4, i32 1
  %11 = ptrtoint ptr %prev.i49 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %neigh_off_list_v6, ptr %prev.i49, align 4
  %neigh_nb = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 10
  %12 = ptrtoint ptr %neigh_nb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @nfp_tun_neigh_event_handler, ptr %neigh_nb, align 4
  %call25 = tail call i32 @register_netevent_notifier(ptr noundef %neigh_nb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end.cleanup_crit_edge, label %if.then27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rhashtable_free_and_destroy(ptr noundef %tun, ptr noundef nonnull @nfp_check_rhashtable_empty, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.then27 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_tun_neigh_event_handler(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr noundef %ptr) #0 align 64 {
entry:
  %flow4 = alloca %struct.flowi4, align 8
  %flow6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %flow4) #13
  %0 = call ptr @memset(ptr %flow4, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %flow6) #13
  %1 = call ptr @memset(ptr %flow6, i32 0, i32 88)
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %event, label %entry.cleanup43_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.cleanup43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup43

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %neigh = getelementptr inbounds %struct.netevent_redirect, ptr %ptr, i32 0, i32 2
  %3 = ptrtoint ptr %neigh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %neigh, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %n.0 = phi ptr [ %4, %sw.bb ], [ %ptr, %entry.sw.epilog_crit_edge ]
  %tbl = getelementptr inbounds %struct.neighbour, ptr %n.0, i32 0, i32 1
  %5 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tbl, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %8)
  %cmp = icmp eq i32 %8, 10
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %daddr = getelementptr inbounds %struct.flowi6, ptr %flow6, i32 0, i32 1
  %primary_key = getelementptr inbounds %struct.neighbour, ptr %n.0, i32 0, i32 27
  %9 = call ptr @memcpy(ptr %daddr, ptr %primary_key, i32 16)
  br label %if.end6

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %primary_key3 = getelementptr inbounds %struct.neighbour, ptr %n.0, i32 0, i32 27
  %10 = ptrtoint ptr %primary_key3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %primary_key3, align 4
  %daddr5 = getelementptr inbounds %struct.flowi4, ptr %flow4, i32 0, i32 2
  %12 = ptrtoint ptr %daddr5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %daddr5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  %add.ptr = getelementptr i8, ptr %nb, i32 -5420
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.neighbour, ptr %n.0, i32 0, i32 25
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp eq ptr %18, @nfp_repr_netdev_ops
  br i1 %cmp.i, label %if.end6.if.end11_crit_edge, label %land.lhs.true

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end6
  %priv.i = getelementptr inbounds %struct.nfp_app, ptr %14, i32 0, i32 8
  %19 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i, align 4
  %flower_en_feats.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %flower_en_feats.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flower_en_feats.i, align 8
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %land.lhs.true.cleanup43_crit_edge, label %if.end.i

land.lhs.true.cleanup43_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup43

if.end.i:                                         ; preds = %land.lhs.true
  %rtnl_link_ops.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 136
  %24 = ptrtoint ptr %rtnl_link_ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rtnl_link_ops.i, align 4
  %tobool1.not.i = icmp eq ptr %25, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup43_crit_edge, label %nfp_flower_internal_port_can_offload.exit

if.end.i.cleanup43_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup43

nfp_flower_internal_port_can_offload.exit:        ; preds = %if.end.i
  %kind.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %kind.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %27, ptr noundef nonnull dereferenceable(12) @.str.48) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %nfp_flower_internal_port_can_offload.exit.if.end11_crit_edge, label %nfp_flower_internal_port_can_offload.exit.cleanup43_crit_edge

nfp_flower_internal_port_can_offload.exit.cleanup43_crit_edge: ; preds = %nfp_flower_internal_port_can_offload.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup43

nfp_flower_internal_port_can_offload.exit.if.end11_crit_edge: ; preds = %nfp_flower_internal_port_can_offload.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.end11:                                         ; preds = %nfp_flower_internal_port_can_offload.exit.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  br i1 %cmp, label %land.lhs.true13, label %land.lhs.true17.critedge

land.lhs.true13:                                  ; preds = %if.end11
  %daddr14 = getelementptr inbounds %struct.flowi6, ptr %flow6, i32 0, i32 1
  %priv1.i = getelementptr inbounds %struct.nfp_app, ptr %14, i32 0, i32 8
  %28 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv1.i, align 4
  %neigh_off_list_v6.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %29, i32 0, i32 17, i32 4
  %neigh_off_lock_v6.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %29, i32 0, i32 17, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %neigh_off_lock_v6.i) #13
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %land.lhs.true13
  %entry1.0.in.i.i = phi ptr [ %neigh_off_list_v6.i, %land.lhs.true13 ], [ %entry1.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %30 = ptrtoint ptr %entry1.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %entry1.0.i.i = load ptr, ptr %entry1.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %entry1.0.i.i, %neigh_off_list_v6.i
  br i1 %cmp.not.i.i, label %nfp_tun_has_route_v6.exit, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %ip_add.i.i = getelementptr inbounds %struct.nfp_offloaded_route, ptr %entry1.0.i.i, i32 0, i32 1
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %ip_add.i.i, ptr noundef dereferenceable(16) %daddr14, i32 16) #17
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %if.then23.critedge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i

nfp_tun_has_route_v6.exit:                        ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %neigh_off_lock_v6.i) #13
  br label %cleanup43

land.lhs.true17.critedge:                         ; preds = %if.end11
  %daddr18 = getelementptr inbounds %struct.flowi4, ptr %flow4, i32 0, i32 2
  %priv1.i72 = getelementptr inbounds %struct.nfp_app, ptr %14, i32 0, i32 8
  %31 = ptrtoint ptr %priv1.i72 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv1.i72, align 4
  %neigh_off_list_v4.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %32, i32 0, i32 17, i32 3
  %neigh_off_lock_v4.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %32, i32 0, i32 17, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %neigh_off_lock_v4.i) #13
  br label %for.cond.i.i76

for.cond.i.i76:                                   ; preds = %for.body.i.i80.for.cond.i.i76_crit_edge, %land.lhs.true17.critedge
  %entry1.0.in.i.i73 = phi ptr [ %neigh_off_list_v4.i, %land.lhs.true17.critedge ], [ %entry1.0.i.i74, %for.body.i.i80.for.cond.i.i76_crit_edge ]
  %33 = ptrtoint ptr %entry1.0.in.i.i73 to i32
  call void @__asan_load4_noabort(i32 %33)
  %entry1.0.i.i74 = load ptr, ptr %entry1.0.in.i.i73, align 4
  %cmp.not.i.i75 = icmp eq ptr %entry1.0.i.i74, %neigh_off_list_v4.i
  br i1 %cmp.not.i.i75, label %nfp_tun_has_route_v4.exit, label %for.body.i.i80

for.body.i.i80:                                   ; preds = %for.cond.i.i76
  %ip_add.i.i77 = getelementptr inbounds %struct.nfp_offloaded_route, ptr %entry1.0.i.i74, i32 0, i32 1
  %bcmp.i.i78 = call i32 @bcmp(ptr noundef dereferenceable(4) %ip_add.i.i77, ptr noundef dereferenceable(4) %daddr18, i32 4) #17
  %tobool.not.i.i79 = icmp eq i32 %bcmp.i.i78, 0
  br i1 %tobool.not.i.i79, label %if.else31, label %for.body.i.i80.for.cond.i.i76_crit_edge

for.body.i.i80.for.cond.i.i76_crit_edge:          ; preds = %for.body.i.i80
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i76

nfp_tun_has_route_v4.exit:                        ; preds = %for.cond.i.i76
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %neigh_off_lock_v4.i) #13
  br label %cleanup43

if.then23.critedge:                               ; preds = %for.body.i.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %neigh_off_lock_v6.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %34 = load ptr, ptr @ipv6_stub, align 4
  %ipv6_dst_lookup_flow = getelementptr inbounds %struct.ipv6_stub, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %ipv6_dst_lookup_flow to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ipv6_dst_lookup_flow, align 4
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 127
  %39 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %nd_net.i, align 4
  %call26 = call ptr %36(ptr noundef %40, ptr noundef null, ptr noundef nonnull %flow6, ptr noundef null) #13
  %cmp.i81 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81, label %if.then23.critedge.cleanup43_crit_edge, label %if.end29

if.then23.critedge.cleanup43_crit_edge:           ; preds = %if.then23.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup43

if.end29:                                         ; preds = %if.then23.critedge
  call void @__sanitizer_cov_trace_pc() #15
  call void @dst_release(ptr noundef %call26) #13
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %flow6, i32 0, i32 5
  %41 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 17, ptr %flowic_proto, align 2
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  call fastcc void @nfp_tun_write_neigh_v6(ptr noundef %43, ptr noundef %14, ptr noundef nonnull %flow6, ptr noundef %n.0)
  br label %cleanup43

if.else31:                                        ; preds = %for.body.i.i80
  tail call void @_raw_spin_unlock_bh(ptr noundef %neigh_off_lock_v4.i) #13
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  %nd_net.i82 = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 127
  %46 = ptrtoint ptr %nd_net.i82 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %nd_net.i82, align 4
  %call.i83 = call ptr @ip_route_output_flow(ptr noundef %47, ptr noundef nonnull %flow4, ptr noundef null) #13
  %cmp.i.i.not = icmp ugt ptr %call.i83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %if.else31.cleanup43_crit_edge, label %if.end38

if.else31.cleanup43_crit_edge:                    ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup43

if.end38:                                         ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #15
  call void @dst_release(ptr noundef %call.i83) #13
  %flowic_proto40 = getelementptr inbounds %struct.flowi_common, ptr %flow4, i32 0, i32 5
  %48 = ptrtoint ptr %flowic_proto40 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 17, ptr %flowic_proto40, align 2
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  call fastcc void @nfp_tun_write_neigh_v4(ptr noundef %50, ptr noundef %14, ptr noundef nonnull %flow4, ptr noundef %n.0)
  br label %cleanup43

cleanup43:                                        ; preds = %if.end38, %if.else31.cleanup43_crit_edge, %if.end29, %if.then23.critedge.cleanup43_crit_edge, %nfp_tun_has_route_v4.exit, %nfp_tun_has_route_v6.exit, %nfp_flower_internal_port_can_offload.exit.cleanup43_crit_edge, %if.end.i.cleanup43_crit_edge, %land.lhs.true.cleanup43_crit_edge, %entry.cleanup43_crit_edge
  %retval.1 = phi i32 [ 0, %entry.cleanup43_crit_edge ], [ 0, %nfp_flower_internal_port_can_offload.exit.cleanup43_crit_edge ], [ 0, %nfp_tun_has_route_v4.exit ], [ 0, %nfp_tun_has_route_v6.exit ], [ 0, %if.else31.cleanup43_crit_edge ], [ 1, %if.end29 ], [ 1, %if.end38 ], [ 0, %if.then23.critedge.cleanup43_crit_edge ], [ 0, %land.lhs.true.cleanup43_crit_edge ], [ 0, %if.end.i.cleanup43_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %flow6) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %flow4) #13
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netevent_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_free_and_destroy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_check_rhashtable_empty(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_tunnel_config_stop(ptr noundef %app) local_unnamed_addr #0 align 64 {
entry:
  %ipv6_route = alloca %struct.nfp_tun_neigh_v6, align 4
  %ipv4_route = alloca %struct.nfp_tun_neigh, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ipv6_route)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ipv4_route)
  %neigh_nb = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 10
  %call = tail call i32 @unregister_netevent_notifier(ptr noundef %neigh_nb) #13
  %mac_off_ids = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 9
  tail call void @ida_destroy(ptr noundef %mac_off_ids) #13
  %ipv4_off_list = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %ipv4_off_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipv4_off_list, align 4
  %cmp.i.not114 = icmp eq ptr %3, %ipv4_off_list
  br i1 %cmp.i.not114, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %ptr.0115 = phi ptr [ %storage.0117, %list_del.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %ptr.0115 to i32
  call void @__asan_load4_noabort(i32 %4)
  %storage.0117 = load ptr, ptr %ptr.0115, align 4
  %add.ptr = getelementptr i8, ptr %ptr.0115, i32 -8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ptr.0115) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ptr.0115, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %ptr.0115 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptr.0115, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %ptr.0115 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %ptr.0115, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ptr.0115, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %add.ptr) #13
  %cmp.i.not = icmp eq ptr %storage.0117, %ipv4_off_list
  br i1 %cmp.i.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %ipv6_off_lock = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 6
  tail call void @mutex_destroy(ptr noundef %ipv6_off_lock) #13
  %neigh_off_list_v4 = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 3
  %13 = ptrtoint ptr %neigh_off_list_v4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %neigh_off_list_v4, align 4
  %cmp.not118 = icmp eq ptr %14, %neigh_off_list_v4
  br i1 %cmp.not118, label %for.end.for.end34_crit_edge, label %for.body25.lr.ph

for.end.for.end34_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end34

for.body25.lr.ph:                                 ; preds = %for.end
  %ctrl.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 3
  %15 = getelementptr inbounds i8, ptr %ipv4_route, i32 4
  br label %for.body25

for.body25:                                       ; preds = %nfp_flower_xmit_tun_conf.exit.for.body25_crit_edge, %for.body25.lr.ph
  %route_entry.0119 = phi ptr [ %14, %for.body25.lr.ph ], [ %temp.0, %nfp_flower_xmit_tun_conf.exit.for.body25_crit_edge ]
  %16 = ptrtoint ptr %route_entry.0119 to i32
  call void @__asan_load4_noabort(i32 %16)
  %temp.0 = load ptr, ptr %route_entry.0119, align 4
  %17 = call ptr @memset(ptr %15, i32 0, i32 20)
  %ip_add = getelementptr inbounds %struct.nfp_offloaded_route, ptr %route_entry.0119, i32 0, i32 1
  %18 = ptrtoint ptr %ip_add to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ip_add, align 4
  %20 = ptrtoint ptr %ipv4_route to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ipv4_route, align 4
  %call.i.i90 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %route_entry.0119) #13
  br i1 %call.i.i90, label %if.end.i.i93, label %for.body25.list_del.exit95_crit_edge

for.body25.list_del.exit95_crit_edge:             ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit95

if.end.i.i93:                                     ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i91 = getelementptr inbounds %struct.list_head, ptr %route_entry.0119, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i91 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i91, align 4
  %23 = ptrtoint ptr %route_entry.0119 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %route_entry.0119, align 4
  %prev1.i.i.i92 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i92 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i92, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit95

list_del.exit95:                                  ; preds = %if.end.i.i93, %for.body25.list_del.exit95_crit_edge
  %27 = ptrtoint ptr %route_entry.0119 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %route_entry.0119, align 4
  %prev.i94 = getelementptr inbounds %struct.list_head, ptr %route_entry.0119, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i94 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i94, align 4
  tail call void @kfree(ptr noundef %route_entry.0119) #13
  %call.i = tail call ptr @nfp_flower_cmsg_alloc(ptr noundef %app, i32 noundef 24, i32 noundef 13, i32 noundef 3264) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %list_del.exit95.nfp_flower_xmit_tun_conf.exit_crit_edge, label %if.end.i

list_del.exit95.nfp_flower_xmit_tun_conf.exit_crit_edge: ; preds = %list_del.exit95
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfp_flower_xmit_tun_conf.exit

if.end.i:                                         ; preds = %list_del.exit95
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %31 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i.i, align 4
  %sub.i.i = add i32 %32, -4
  %33 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %ipv4_route, i32 %sub.i.i)
  %34 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctrl.i, align 4
  %call4.i = tail call zeroext i1 @nfp_ctrl_tx(ptr noundef %35, ptr noundef nonnull %call.i) #13
  br label %nfp_flower_xmit_tun_conf.exit

nfp_flower_xmit_tun_conf.exit:                    ; preds = %if.end.i, %list_del.exit95.nfp_flower_xmit_tun_conf.exit_crit_edge
  %cmp.not = icmp eq ptr %temp.0, %neigh_off_list_v4
  br i1 %cmp.not, label %nfp_flower_xmit_tun_conf.exit.for.end34_crit_edge, label %nfp_flower_xmit_tun_conf.exit.for.body25_crit_edge

nfp_flower_xmit_tun_conf.exit.for.body25_crit_edge: ; preds = %nfp_flower_xmit_tun_conf.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body25

nfp_flower_xmit_tun_conf.exit.for.end34_crit_edge: ; preds = %nfp_flower_xmit_tun_conf.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end34

for.end34:                                        ; preds = %nfp_flower_xmit_tun_conf.exit.for.end34_crit_edge, %for.end.for.end34_crit_edge
  %neigh_off_list_v6 = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 4
  %36 = ptrtoint ptr %neigh_off_list_v6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %neigh_off_list_v6, align 4
  %cmp49.not121 = icmp eq ptr %37, %neigh_off_list_v6
  br i1 %cmp49.not121, label %for.end34.for.end61_crit_edge, label %for.body51.lr.ph

for.end34.for.end61_crit_edge:                    ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end61

for.body51.lr.ph:                                 ; preds = %for.end34
  %ctrl.i108 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 3
  %38 = getelementptr inbounds i8, ptr %ipv6_route, i32 16
  br label %for.body51

for.body51:                                       ; preds = %nfp_flower_xmit_tun_conf.exit112.for.body51_crit_edge, %for.body51.lr.ph
  %route_entry.1122 = phi ptr [ %37, %for.body51.lr.ph ], [ %temp.1, %nfp_flower_xmit_tun_conf.exit112.for.body51_crit_edge ]
  %39 = ptrtoint ptr %route_entry.1122 to i32
  call void @__asan_load4_noabort(i32 %39)
  %temp.1 = load ptr, ptr %route_entry.1122, align 4
  %ip_add52 = getelementptr inbounds %struct.nfp_offloaded_route, ptr %route_entry.1122, i32 0, i32 1
  %40 = call ptr @memset(ptr %38, i32 0, i32 32)
  %41 = call ptr @memcpy(ptr %ipv6_route, ptr %ip_add52, i32 16)
  %call.i.i96 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %route_entry.1122) #13
  br i1 %call.i.i96, label %if.end.i.i99, label %for.body51.list_del.exit101_crit_edge

for.body51.list_del.exit101_crit_edge:            ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit101

if.end.i.i99:                                     ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i97 = getelementptr inbounds %struct.list_head, ptr %route_entry.1122, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i97 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i97, align 4
  %44 = ptrtoint ptr %route_entry.1122 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %route_entry.1122, align 4
  %prev1.i.i.i98 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i98 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i98, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %list_del.exit101

list_del.exit101:                                 ; preds = %if.end.i.i99, %for.body51.list_del.exit101_crit_edge
  %48 = ptrtoint ptr %route_entry.1122 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 256 to ptr), ptr %route_entry.1122, align 4
  %prev.i100 = getelementptr inbounds %struct.list_head, ptr %route_entry.1122, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i100 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i100, align 4
  tail call void @kfree(ptr noundef %route_entry.1122) #13
  %call.i102 = tail call ptr @nfp_flower_cmsg_alloc(ptr noundef %app, i32 noundef 24, i32 noundef 24, i32 noundef 3264) #13
  %tobool.not.i103 = icmp eq ptr %call.i102, null
  br i1 %tobool.not.i103, label %list_del.exit101.nfp_flower_xmit_tun_conf.exit112_crit_edge, label %if.end.i110

list_del.exit101.nfp_flower_xmit_tun_conf.exit112_crit_edge: ; preds = %list_del.exit101
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfp_flower_xmit_tun_conf.exit112

if.end.i110:                                      ; preds = %list_del.exit101
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i104 = getelementptr inbounds %struct.sk_buff, ptr %call.i102, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i104 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i104, align 4
  %add.ptr.i.i105 = getelementptr i8, ptr %51, i32 4
  %len.i.i106 = getelementptr inbounds %struct.sk_buff, ptr %call.i102, i32 0, i32 6
  %52 = ptrtoint ptr %len.i.i106 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len.i.i106, align 4
  %sub.i.i107 = add i32 %53, -4
  %54 = call ptr @memcpy(ptr %add.ptr.i.i105, ptr %ipv6_route, i32 %sub.i.i107)
  %55 = ptrtoint ptr %ctrl.i108 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ctrl.i108, align 4
  %call4.i109 = tail call zeroext i1 @nfp_ctrl_tx(ptr noundef %56, ptr noundef nonnull %call.i102) #13
  br label %nfp_flower_xmit_tun_conf.exit112

nfp_flower_xmit_tun_conf.exit112:                 ; preds = %if.end.i110, %list_del.exit101.nfp_flower_xmit_tun_conf.exit112_crit_edge
  %cmp49.not = icmp eq ptr %temp.1, %neigh_off_list_v6
  br i1 %cmp49.not, label %nfp_flower_xmit_tun_conf.exit112.for.end61_crit_edge, label %nfp_flower_xmit_tun_conf.exit112.for.body51_crit_edge

nfp_flower_xmit_tun_conf.exit112.for.body51_crit_edge: ; preds = %nfp_flower_xmit_tun_conf.exit112
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body51

nfp_flower_xmit_tun_conf.exit112.for.end61_crit_edge: ; preds = %nfp_flower_xmit_tun_conf.exit112
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end61

for.end61:                                        ; preds = %nfp_flower_xmit_tun_conf.exit112.for.end61_crit_edge, %for.end34.for.end61_crit_edge
  %tun = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17
  tail call void @rhashtable_free_and_destroy(ptr noundef %tun, ptr noundef nonnull @nfp_check_rhashtable_empty, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ipv4_route)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ipv6_route)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netevent_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__neigh_event_send(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_flower_get_port_id_from_netdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @neigh_ha_snapshot(ptr nocapture noundef writeonly %dst, ptr noundef %n, ptr nocapture noundef readonly %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %ha_lock = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 17
  %dep_map.c48.i.i = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 17, i32 0, i32 0, i32 1
  %ha = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 18
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  br label %do.body

do.body:                                          ; preds = %read_seqbegin.exit.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !172
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  %1 = tail call ptr @llvm.returnaddress(i32 0) #13
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #13
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %2) #13
  tail call void @trace_hardirqs_on() #13
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %3 = tail call ptr @llvm.returnaddress(i32 0) #13
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #13
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #13
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !173
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !163

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #13, !srcloc !174
  %6 = ptrtoint ptr %ha_lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %ha_lock, align 4
  %and18.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %read_seqbegin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !175
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !176
  %8 = ptrtoint ptr %ha_lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %ha_lock, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.read_seqbegin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i.read_seqbegin.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %read_seqbegin.exit

read_seqbegin.exit:                               ; preds = %do.end.i.read_seqbegin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge ], [ %9, %do.end.i.read_seqbegin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !177
  %10 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %11 to i32
  %12 = call ptr @memcpy(ptr %dst, ptr %ha, i32 %conv)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !178
  %13 = ptrtoint ptr %ha_lock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %ha_lock, align 4
  %cmp.i.i.i.not = icmp eq i32 %14, %.lcssa.i
  br i1 %cmp.i.i.i.not, label %do.end, label %read_seqbegin.exit.do.body_crit_edge

read_seqbegin.exit.do.body_crit_edge:             ; preds = %read_seqbegin.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end:                                           ; preds = %read_seqbegin.exit
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__nfp_tun_add_route_to_cache(ptr noundef %route_list, ptr noundef %list_lock, ptr nocapture noundef readonly %add, i32 noundef %add_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock) #13
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %entry1.0.in = phi ptr [ %route_list, %entry ], [ %entry1.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %cmp.not = icmp eq ptr %entry1.0, %route_list
  br i1 %cmp.not, label %if.end8.i, label %for.body

for.body:                                         ; preds = %for.cond
  %ip_add = getelementptr inbounds %struct.nfp_offloaded_route, ptr %entry1.0, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr %ip_add, ptr %add, i32 %add_len) #19
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i:                                        ; preds = %for.cond
  %add7 = add i32 %add_len, 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add7, i32 noundef 2592) #20
  %tobool9.not = icmp eq ptr %call9.i, null
  br i1 %tobool9.not, label %if.end8.i.cleanup_crit_edge, label %if.end11

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end8.i
  %ip_add12 = getelementptr inbounds %struct.nfp_offloaded_route, ptr %call9.i, i32 0, i32 1
  %1 = call ptr @memcpy(ptr %ip_add12, ptr %add, i32 %add_len)
  %prev.i = getelementptr inbounds %struct.list_head, ptr %route_list, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i, ptr noundef %3, ptr noundef %route_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i, ptr %prev.i, align 4
  %5 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %route_list, ptr %call9.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call9.i, ptr %3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end11.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %for.body.cleanup_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_flower_non_repr_priv_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_tunnel_add_shared_mac(ptr noundef %app, ptr nocapture noundef readonly %netdev, i32 noundef %port, i1 noundef zeroext %mod) unnamed_addr #0 align 64 {
entry:
  %payload.i = alloca %struct.nfp_tun_mac_addr_offload, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %call = tail call fastcc ptr @nfp_tunnel_lookup_offloaded_macs(ptr noundef %app, ptr noundef %3)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then12, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.nfp_tun_offloaded_mac, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 2
  %6 = and i16 %5, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %6)
  %cmp.i = icmp eq i16 %6, 3
  br i1 %cmp.i, label %if.then, label %land.lhs.true.if.then16_crit_edge

land.lhs.true.if.then16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then16

if.then:                                          ; preds = %land.lhs.true
  %bridge_count = getelementptr inbounds %struct.nfp_tun_offloaded_mac, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %bridge_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bridge_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.then.if.then6_crit_edge

if.then.if.then6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.then
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 15
  %9 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %10, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.i.not, label %lor.lhs.false.if.then6_crit_edge, label %if.end10

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.then.if.then6_crit_edge
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %11 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev_ops.i.i, align 8
  %cmp.i.i = icmp eq ptr %12, @nfp_repr_netdev_ops
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then6
  %app_priv.i = getelementptr i8, ptr %netdev, i32 2324
  %13 = ptrtoint ptr %app_priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %app_priv.i, align 4
  br i1 %mod, label %if.then3.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  %mac_list.i = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %14, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mac_list.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then3.i.list_del.exit.i_crit_edge

if.then3.i.list_del.exit.i_crit_edge:             ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %14, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %mac_list.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mac_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then3.i.list_del.exit.i_crit_edge
  %21 = ptrtoint ptr %mac_list.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %mac_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %14, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %list_del.exit.i, %if.then.i.if.end.i_crit_edge
  %mac_list4.i = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %14, i32 0, i32 5
  %repr_list.i = getelementptr inbounds %struct.nfp_tun_offloaded_mac, ptr %call, i32 0, i32 4
  %prev.i15.i = getelementptr inbounds %struct.nfp_tun_offloaded_mac, ptr %call, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %prev.i15.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i15.i, align 4
  %call.i.i16.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mac_list4.i, ptr noundef %24, ptr noundef %repr_list.i) #13
  br i1 %call.i.i16.i, label %if.end.i.i17.i, label %if.end.i.nfp_tunnel_offloaded_macs_inc_ref_and_link.exit_crit_edge

if.end.i.nfp_tunnel_offloaded_macs_inc_ref_and_link.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfp_tunnel_offloaded_macs_inc_ref_and_link.exit

if.end.i.i17.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %prev.i15.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %mac_list4.i, ptr %prev.i15.i, align 4
  %26 = ptrtoint ptr %mac_list4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %repr_list.i, ptr %mac_list4.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %14, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %mac_list4.i, ptr %24, align 4
  br label %nfp_tunnel_offloaded_macs_inc_ref_and_link.exit

if.else.i:                                        ; preds = %if.then6
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 15
  %29 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %priv_flags.i.i.i, align 16
  %and.i.i.i = and i64 %30, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.else.i.nfp_tunnel_offloaded_macs_inc_ref_and_link.exit_crit_edge, label %if.then6.i

if.else.i.nfp_tunnel_offloaded_macs_inc_ref_and_link.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfp_tunnel_offloaded_macs_inc_ref_and_link.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %inc.i = add i32 %8, 1
  %31 = ptrtoint ptr %bridge_count to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %inc.i, ptr %bridge_count, align 4
  br label %nfp_tunnel_offloaded_macs_inc_ref_and_link.exit

nfp_tunnel_offloaded_macs_inc_ref_and_link.exit:  ; preds = %if.then6.i, %if.else.i.nfp_tunnel_offloaded_macs_inc_ref_and_link.exit_crit_edge, %if.end.i.i17.i, %if.end.i.nfp_tunnel_offloaded_macs_inc_ref_and_link.exit_crit_edge
  %ref_count.i = getelementptr inbounds %struct.nfp_tun_offloaded_mac, ptr %call, i32 0, i32 3
  %32 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ref_count.i, align 4
  %inc9.i = add i32 %33, 1
  store i32 %inc9.i, ptr %ref_count.i, align 4
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %34 = or i16 %5, 8
  br label %if.end43

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %tobool15.not.not = icmp eq i32 %port, 0
  br i1 %tobool15.not.not, label %if.then12.if.then16_crit_edge, label %if.end30.thread

if.then12.if.then16_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then16

if.then16:                                        ; preds = %if.then12.if.then16_crit_edge, %land.lhs.true.if.then16_crit_edge
  %mac_off_ids = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 9
  %call17 = tail call i32 @ida_alloc_range(ptr noundef %mac_off_ids, i32 noundef 0, i32 noundef 254, i32 noundef 3264) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.then16.cleanup_crit_edge, label %if.end30

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end30.thread:                                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  %port.tr.i = trunc i32 %port to i16
  %35 = shl i16 %port.tr.i, 8
  %conv.i119 = or i16 %35, 1
  br label %if.then32

if.end30:                                         ; preds = %if.then16
  %id.tr.i = trunc i32 %call17 to i16
  %36 = shl i16 %id.tr.i, 8
  %priv_flags.i.i116 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 15
  %37 = ptrtoint ptr %priv_flags.i.i116 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %priv_flags.i.i116, align 16
  %and.i.i117 = and i64 %38, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i117)
  %tobool.i.i118.not = icmp eq i64 %and.i.i117, 0
  %spec.select.v = select i1 %tobool.i.i118.not, i16 3, i16 11
  %spec.select = or i16 %spec.select.v, %36
  br i1 %tobool.not, label %if.end30.if.then32_crit_edge, label %if.end30.if.end43_crit_edge

if.end30.if.end43_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.end30.if.then32_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then32

if.then32:                                        ; preds = %if.end30.if.then32_crit_edge, %if.end30.thread
  %nfp_mac_idx.1176 = phi i16 [ %conv.i119, %if.end30.thread ], [ %spec.select, %if.end30.if.then32_crit_edge ]
  %ida_idx.0174 = phi i32 [ -1, %if.end30.thread ], [ %call17, %if.end30.if.then32_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 28) #18
  %tobool34.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool34.not, label %if.then32.err_free_ida_crit_edge, label %if.end36

if.then32.err_free_ida_crit_edge:                 ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_ida

if.end36:                                         ; preds = %if.then32
  %addr = getelementptr inbounds %struct.nfp_tun_offloaded_mac, ptr %call7.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_addr, align 64
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %44 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %addr, align 4
  %add.ptr.i = getelementptr i8, ptr %41, i32 4
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.nfp_tun_offloaded_mac, ptr %call7.i.i, i32 0, i32 1, i32 4
  %47 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %add.ptr1.i, align 8
  %repr_list = getelementptr inbounds %struct.nfp_tun_offloaded_mac, ptr %call7.i.i, i32 0, i32 4
  %48 = ptrtoint ptr %repr_list to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %repr_list, ptr %repr_list, align 8
  %prev.i = getelementptr inbounds %struct.nfp_tun_offloaded_mac, ptr %call7.i.i, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %repr_list, ptr %prev.i, align 4
  %tun38 = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17
  %50 = tail call i32 @llvm.read_register.i32(metadata !151) #13
  %and.i.i.i.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %53, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !162
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i.i120 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i.i120, label %if.end36.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end36.rcu_read_lock.exit.i.i_crit_edge:        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end36
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 696, ptr noundef nonnull @.str.40) #13
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end36.rcu_read_lock.exit.i.i_crit_edge
  %54 = ptrtoint ptr %tun38 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %tun38, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %tun38) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call5.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i121 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i121)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i121, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 715, ptr noundef nonnull @.str.54) #13
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge
  %head_offset.i.i.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 0, i32 3, i32 3
  %56 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %57 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call7.i.i, i32 %idx.neg.i.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 4
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %55, i32 0, i32 2
  %58 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add1.i = add i32 %59, -559038731
  %arrayidx58.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 5
  %60 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx58.i, align 1
  %conv59.i = zext i8 %61 to i32
  %shl60.i = shl nuw nsw i32 %conv59.i, 8
  %add61.i = add i32 %shl60.i, %add1.i
  %arrayidx63.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 4
  %62 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx63.i, align 1
  %conv64.i = zext i8 %63 to i32
  %add65.i = add i32 %add61.i, %conv64.i
  %arrayidx67.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 3
  %64 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx67.i, align 1
  %conv68.i = zext i8 %65 to i32
  %shl69.i = shl nuw i32 %conv68.i, 24
  %add70.i = add i32 %shl69.i, %add1.i
  %arrayidx72.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 2
  %66 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx72.i, align 1
  %conv73.i = zext i8 %67 to i32
  %shl74.i = shl nuw nsw i32 %conv73.i, 16
  %add75.i = add i32 %add70.i, %shl74.i
  %arrayidx77.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 1
  %68 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx77.i, align 1
  %conv78.i = zext i8 %69 to i32
  %shl79.i = shl nuw nsw i32 %conv78.i, 8
  %add80.i = add i32 %add75.i, %shl79.i
  %70 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %add.ptr.i.i.i, align 1
  %conv83.i = zext i8 %71 to i32
  %add84.i = add i32 %add80.i, %conv83.i
  %xor85.i = xor i32 %add65.i, %add1.i
  %or.i206.i = tail call i32 @llvm.fshl.i32(i32 %add65.i, i32 %add65.i, i32 14) #13
  %sub87.i = sub i32 %xor85.i, %or.i206.i
  %xor88.i = xor i32 %add84.i, %sub87.i
  %or.i207.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i, i32 %sub87.i, i32 11) #13
  %sub90.i = sub i32 %xor88.i, %or.i207.i
  %xor91.i = xor i32 %sub90.i, %add65.i
  %or.i208.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i, i32 %sub90.i, i32 25) #13
  %sub93.i = sub i32 %xor91.i, %or.i208.i
  %xor94.i = xor i32 %sub93.i, %sub87.i
  %or.i209.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i, i32 %sub93.i, i32 16) #13
  %sub96.i = sub i32 %xor94.i, %or.i209.i
  %xor97.i = xor i32 %sub96.i, %sub90.i
  %or.i210.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i, i32 %sub96.i, i32 4) #13
  %sub99.i = sub i32 %xor97.i, %or.i210.i
  %xor100.i = xor i32 %sub99.i, %sub93.i
  %or.i211.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i, i32 %sub99.i, i32 14) #13
  %sub102.i = sub i32 %xor100.i, %or.i211.i
  %xor103.i = xor i32 %sub102.i, %sub96.i
  %or.i212.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i, i32 %sub102.i, i32 24) #13
  %sub105.i = sub i32 %xor103.i, %or.i212.i
  %72 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %55, align 128
  %sub.i.i.i.i.i = add i32 %73, -1
  %and.i3.i.i.i.i = and i32 %sub105.i, %sub.i.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %55, i32 0, i32 1
  %74 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i4.i.i = icmp eq i32 %75, 0
  br i1 %tobool.not.i4.i.i, label %cond.false.i7.i.i, label %cond.true.i6.i.i, !prof !166

cond.true.i6.i.i:                                 ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i5.i.i = tail call ptr @rht_bucket_nested_insert(ptr noundef %tun38, ptr noundef %55, i32 noundef %and.i3.i.i.i.i) #13
  br label %rht_bucket_insert.exit.i.i

cond.false.i7.i.i:                                ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %55, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_insert.exit.i.i

rht_bucket_insert.exit.i.i:                       ; preds = %cond.false.i7.i.i, %cond.true.i6.i.i
  %cond.i8.i.i = phi ptr [ %call.i5.i.i, %cond.true.i6.i.i ], [ %arrayidx.i.i.i, %cond.false.i7.i.i ]
  %tobool17.not.i.i = icmp eq ptr %cond.i8.i.i, null
  br i1 %tobool17.not.i.i, label %rht_bucket_insert.exit.i.i.out.i.i_crit_edge, label %if.end19.i.i

rht_bucket_insert.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_bucket_insert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i.i

if.end19.i.i:                                     ; preds = %rht_bucket_insert.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %55, ptr noundef nonnull %cond.i8.i.i) #13
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %55, i32 0, i32 5
  %76 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %77, null
  br i1 %tobool25.not.i.i, label %if.end30.i.i, label %if.end19.i.i.slow_path.i.i_crit_edge, !prof !166

if.end19.i.i.slow_path.i.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %slow_path.i.i

slow_path.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, %for.end.i.i.slow_path.i.i_crit_edge, %if.end19.i.i.slow_path.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %55, ptr noundef nonnull %cond.i8.i.i) #13
  %call.i10.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i10.i.i, label %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i13.i.i

slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %slow_path.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i13.i.i:                            ; preds = %slow_path.i.i
  %call1.i11.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %call1.i11.i.i, 0
  br i1 %tobool.not.i12.i.i, label %land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i15.i.i

land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i15.i.i:                           ; preds = %land.lhs.true.i13.i.i
  %.b4.i14.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i, label %land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i16.i.i

land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i.i

if.then.i16.i.i:                                  ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 724, ptr noundef nonnull @.str.41) #13
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i16.i.i, %land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge, %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %78 = tail call i32 @llvm.read_register.i32(metadata !151) #13
  %and.i.i.i.i.i17.i.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i.i.i17.i.i to ptr
  %preempt_count.i.i.i.i18.i.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i, align 4
  %sub.i.i.i19.i.i = add i32 %81, -1
  store volatile i32 %sub.i.i.i19.i.i, ptr %preempt_count.i.i.i.i18.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %call29.i.i = tail call ptr @rhashtable_insert_slow(ptr noundef %tun38, ptr noundef null, ptr noundef nonnull %call7.i.i) #13
  br label %rhashtable_insert_fast.exit

if.end30.i.i:                                     ; preds = %if.end19.i.i
  %call.i20.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %55, i32 noundef %and.i3.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i)
  %tobool.not.i21.i.i = icmp eq i32 %call.i20.i.i, 0
  br i1 %tobool.not.i21.i.i, label %land.lhs.true.i23.i.i, label %if.end30.i.i.rht_ptr.exit.i.i_crit_edge

if.end30.i.i.rht_ptr.exit.i.i_crit_edge:          ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i

land.lhs.true.i23.i.i:                            ; preds = %if.end30.i.i
  %call1.i22.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i22.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge: ; preds = %land.lhs.true.i23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i23.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i24.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i

if.then.i24.i.i:                                  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 377, ptr noundef nonnull @.str.56) #13
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i24.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge, %if.end30.i.i.rht_ptr.exit.i.i_crit_edge
  %82 = ptrtoint ptr %cond.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cond.i8.i.i, align 4
  %84 = ptrtoint ptr %83 to i32
  %and.i.i.i.i = and i32 %84, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %85 = ptrtoint ptr %cond.i8.i.i to i32
  %or.i.i.i.i = or i32 %85, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i63.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63.i.i)
  %tobool.i.not64.i.i = icmp eq i32 %and.i63.i.i, 0
  br i1 %tobool.i.not64.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.if.end152.i.i_crit_edge

rht_ptr.exit.i.i.if.end152.i.i_crit_edge:         ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %86 = inttoptr i32 %cond.i.i.i.i to ptr
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %do.end147.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %head.066.i.i = phi ptr [ %88, %do.end147.i.i.for.body.i.i_crit_edge ], [ %86, %for.body.preheader.i.i ]
  %elasticity.065.i.i = phi i32 [ %dec.i.i, %do.end147.i.i.for.body.i.i_crit_edge ], [ 16, %for.body.preheader.i.i ]
  %dec.i.i = add i32 %elasticity.065.i.i, -1
  %call137.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %55, i32 noundef %and.i3.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i.i)
  %tobool138.not.i.i = icmp eq i32 %call137.i.i, 0
  br i1 %tobool138.not.i.i, label %land.lhs.true139.i.i, label %for.body.i.i.do.end147.i.i_crit_edge

for.body.i.i.do.end147.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end147.i.i

land.lhs.true139.i.i:                             ; preds = %for.body.i.i
  %call140.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i.i)
  %tobool141.not.i.i = icmp eq i32 %call140.i.i, 0
  br i1 %tobool141.not.i.i, label %land.lhs.true139.i.i.do.end147.i.i_crit_edge, label %land.lhs.true142.i.i

land.lhs.true139.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true139.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end147.i.i

land.lhs.true142.i.i:                             ; preds = %land.lhs.true139.i.i
  %.b2811.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.57, align 1
  br i1 %.b2811.i.i, label %land.lhs.true142.i.i.do.end147.i.i_crit_edge, label %if.then144.i.i

land.lhs.true142.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end147.i.i

if.then144.i.i:                                   ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_insert_fast.__warned.57, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 732, ptr noundef nonnull @.str.56) #13
  br label %do.end147.i.i

do.end147.i.i:                                    ; preds = %if.then144.i.i, %land.lhs.true142.i.i.do.end147.i.i_crit_edge, %land.lhs.true139.i.i.do.end147.i.i_crit_edge, %for.body.i.i.do.end147.i.i_crit_edge
  %87 = ptrtoint ptr %head.066.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %head.066.i.i, align 4
  %89 = ptrtoint ptr %88 to i32
  %and.i.i.i122 = and i32 %89, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i122, 0
  br i1 %tobool.i.not.i.i, label %do.end147.i.i.for.body.i.i_crit_edge, label %for.end.i.i

do.end147.i.i.for.body.i.i_crit_edge:             ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i)
  %phi.cmp.i.i = icmp slt i32 %dec.i.i, 1
  br i1 %phi.cmp.i.i, label %for.end.i.i.slow_path.i.i_crit_edge, label %for.end.i.i.if.end152.i.i_crit_edge

for.end.i.i.if.end152.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152.i.i

for.end.i.i.slow_path.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %slow_path.i.i

if.end152.i.i:                                    ; preds = %for.end.i.i.if.end152.i.i_crit_edge, %rht_ptr.exit.i.i.if.end152.i.i_crit_edge
  %nelems.i.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 0, i32 8
  %call.i.i.i25.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #13
  %90 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %nelems.i.i.i, align 4
  %max_elems.i.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 0, i32 2
  %92 = ptrtoint ptr %max_elems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %max_elems.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %93)
  %cmp.i.not.i.i = icmp ult i32 %91, %93
  br i1 %cmp.i.not.i.i, label %if.end162.i.i, label %out_unlock.i.i, !prof !166

if.end162.i.i:                                    ; preds = %if.end152.i.i
  %call.i.i.i27.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #13
  %94 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %nelems.i.i.i, align 4
  %96 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %55, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %97)
  %cmp.i28.i.i = icmp ugt i32 %95, %97
  br i1 %cmp.i28.i.i, label %rht_grow_above_100.exit.i.i, label %if.end162.i.i.if.end171.i.i_crit_edge

if.end162.i.i.if.end171.i.i_crit_edge:            ; preds = %if.end162.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i:                      ; preds = %if.end162.i.i
  %max_size.i.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 0, i32 3, i32 4
  %98 = ptrtoint ptr %max_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %max_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not.i29.i.i = icmp eq i32 %99, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %99)
  %cmp4.i.i.i = icmp ult i32 %97, %99
  %spec.select.i.i.i = select i1 %tobool.not.i29.i.i, i1 true, i1 %cmp4.i.i.i
  br i1 %spec.select.i.i.i, label %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, label %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, !prof !163

rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %slow_path.i.i

if.end171.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, %if.end162.i.i.if.end171.i.i_crit_edge
  %call.i30.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %55, i32 noundef %and.i3.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i.i)
  %tobool.not.i31.i.i = icmp eq i32 %call.i30.i.i, 0
  br i1 %tobool.not.i31.i.i, label %land.lhs.true.i34.i.i, label %if.end171.i.i.rht_ptr.exit42.i.i_crit_edge

if.end171.i.i.rht_ptr.exit42.i.i_crit_edge:       ; preds = %if.end171.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit42.i.i

land.lhs.true.i34.i.i:                            ; preds = %if.end171.i.i
  %call1.i32.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i.i)
  %tobool2.not.i33.i.i = icmp eq i32 %call1.i32.i.i, 0
  br i1 %tobool2.not.i33.i.i, label %land.lhs.true.i34.i.i.rht_ptr.exit42.i.i_crit_edge, label %land.lhs.true3.i36.i.i

land.lhs.true.i34.i.i.rht_ptr.exit42.i.i_crit_edge: ; preds = %land.lhs.true.i34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit42.i.i

land.lhs.true3.i36.i.i:                           ; preds = %land.lhs.true.i34.i.i
  %.b7.i35.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i35.i.i, label %land.lhs.true3.i36.i.i.rht_ptr.exit42.i.i_crit_edge, label %if.then.i37.i.i

land.lhs.true3.i36.i.i.rht_ptr.exit42.i.i_crit_edge: ; preds = %land.lhs.true3.i36.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit42.i.i

if.then.i37.i.i:                                  ; preds = %land.lhs.true3.i36.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 377, ptr noundef nonnull @.str.56) #13
  br label %rht_ptr.exit42.i.i

rht_ptr.exit42.i.i:                               ; preds = %if.then.i37.i.i, %land.lhs.true3.i36.i.i.rht_ptr.exit42.i.i_crit_edge, %land.lhs.true.i34.i.i.rht_ptr.exit42.i.i_crit_edge, %if.end171.i.i.rht_ptr.exit42.i.i_crit_edge
  %100 = ptrtoint ptr %cond.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cond.i8.i.i, align 4
  %102 = ptrtoint ptr %101 to i32
  %and.i.i38.i.i = and i32 %102, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38.i.i)
  %tobool.not.i.i39.i.i = icmp eq i32 %and.i.i38.i.i, 0
  %cond.i.i41.i.i = select i1 %tobool.not.i.i39.i.i, i32 %or.i.i.i.i, i32 %and.i.i38.i.i
  %103 = inttoptr i32 %cond.i.i41.i.i to ptr
  %104 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %103, ptr %call7.i.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i.i, i32 1, i32 3, i32 1) #13
  %105 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i, ptr %nelems.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i) #13, !srcloc !179
  tail call fastcc void @rht_assign_unlock(ptr noundef %55, ptr noundef nonnull %cond.i8.i.i, ptr noundef nonnull %call7.i.i) #13
  %call.i.i.i44.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #13
  %106 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %nelems.i.i.i, align 4
  %108 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %55, align 128
  %div8.i.i.i = lshr i32 %109, 2
  %mul.i.i.i = mul nuw i32 %div8.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %mul.i.i.i)
  %cmp.i45.i.i = icmp ugt i32 %107, %mul.i.i.i
  br i1 %cmp.i45.i.i, label %rht_grow_above_75.exit.i.i, label %rht_ptr.exit42.i.i.out.i.i_crit_edge

rht_ptr.exit42.i.i.out.i.i_crit_edge:             ; preds = %rht_ptr.exit42.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i.i

rht_grow_above_75.exit.i.i:                       ; preds = %rht_ptr.exit42.i.i
  %max_size.i46.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 0, i32 3, i32 4
  %110 = ptrtoint ptr %max_size.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %max_size.i46.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i47.i.i = icmp eq i32 %111, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %111)
  %cmp4.i48.i.i = icmp ult i32 %109, %111
  %spec.select.i49.i.i = select i1 %tobool.not.i47.i.i, i1 true, i1 %cmp4.i48.i.i
  br i1 %spec.select.i49.i.i, label %if.then207.i.i, label %rht_grow_above_75.exit.i.i.out.i.i_crit_edge

rht_grow_above_75.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i.i

if.then207.i.i:                                   ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %run_work.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %112 = load ptr, ptr @system_wq, align 4
  %call.i.i51.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %112, ptr noundef %run_work.i.i) #13
  br label %out.i.i

out.i.i:                                          ; preds = %out_unlock.i.i, %if.then207.i.i, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge, %rht_ptr.exit42.i.i.out.i.i_crit_edge, %rht_bucket_insert.exit.i.i.out.i.i_crit_edge
  %data.2.i.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.i.out.i.i_crit_edge ], [ null, %if.then207.i.i ], [ null, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge ], [ null, %rht_ptr.exit42.i.i.out.i.i_crit_edge ]
  %call.i52.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i52.i.i, label %out.i.i.rcu_read_unlock.exit62.i.i_crit_edge, label %land.lhs.true.i55.i.i

out.i.i.rcu_read_unlock.exit62.i.i_crit_edge:     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit62.i.i

land.lhs.true.i55.i.i:                            ; preds = %out.i.i
  %call1.i53.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i.i)
  %tobool.not.i54.i.i = icmp eq i32 %call1.i53.i.i, 0
  br i1 %tobool.not.i54.i.i, label %land.lhs.true.i55.i.i.rcu_read_unlock.exit62.i.i_crit_edge, label %land.lhs.true2.i57.i.i

land.lhs.true.i55.i.i.rcu_read_unlock.exit62.i.i_crit_edge: ; preds = %land.lhs.true.i55.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit62.i.i

land.lhs.true2.i57.i.i:                           ; preds = %land.lhs.true.i55.i.i
  %.b4.i56.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56.i.i, label %land.lhs.true2.i57.i.i.rcu_read_unlock.exit62.i.i_crit_edge, label %if.then.i58.i.i

land.lhs.true2.i57.i.i.rcu_read_unlock.exit62.i.i_crit_edge: ; preds = %land.lhs.true2.i57.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit62.i.i

if.then.i58.i.i:                                  ; preds = %land.lhs.true2.i57.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 724, ptr noundef nonnull @.str.41) #13
  br label %rcu_read_unlock.exit62.i.i

rcu_read_unlock.exit62.i.i:                       ; preds = %if.then.i58.i.i, %land.lhs.true2.i57.i.i.rcu_read_unlock.exit62.i.i_crit_edge, %land.lhs.true.i55.i.i.rcu_read_unlock.exit62.i.i_crit_edge, %out.i.i.rcu_read_unlock.exit62.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %113 = tail call i32 @llvm.read_register.i32(metadata !151) #13
  %and.i.i.i.i.i59.i.i = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i.i.i.i59.i.i to ptr
  %preempt_count.i.i.i.i60.i.i = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %preempt_count.i.i.i.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %preempt_count.i.i.i.i60.i.i, align 4
  %sub.i.i.i61.i.i = add i32 %116, -1
  store volatile i32 %sub.i.i.i61.i.i, ptr %preempt_count.i.i.i.i60.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %rhashtable_insert_fast.exit

out_unlock.i.i:                                   ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @rht_unlock(ptr noundef %55, ptr noundef nonnull %cond.i8.i.i) #13
  br label %out.i.i

rhashtable_insert_fast.exit:                      ; preds = %rcu_read_unlock.exit62.i.i, %rcu_read_unlock.exit.i.i
  %retval.0.i.i = phi ptr [ %call29.i.i, %rcu_read_unlock.exit.i.i ], [ %data.2.i.i, %rcu_read_unlock.exit62.i.i ]
  %cmp.i124 = icmp eq ptr %retval.0.i.i, null
  br i1 %cmp.i124, label %rhashtable_insert_fast.exit.if.end43_crit_edge, label %rhashtable_insert_fast.exit.err_free_entry_crit_edge

rhashtable_insert_fast.exit.err_free_entry_crit_edge: ; preds = %rhashtable_insert_fast.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_entry

rhashtable_insert_fast.exit.if.end43_crit_edge:   ; preds = %rhashtable_insert_fast.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.end43:                                         ; preds = %rhashtable_insert_fast.exit.if.end43_crit_edge, %if.end30.if.end43_crit_edge, %if.end10
  %nfp_mac_idx.1175 = phi i16 [ %spec.select, %if.end30.if.end43_crit_edge ], [ %nfp_mac_idx.1176, %rhashtable_insert_fast.exit.if.end43_crit_edge ], [ %34, %if.end10 ]
  %ida_idx.0172 = phi i32 [ %call17, %if.end30.if.end43_crit_edge ], [ %ida_idx.0174, %rhashtable_insert_fast.exit.if.end43_crit_edge ], [ -1, %if.end10 ]
  %entry2.0 = phi ptr [ %call, %if.end30.if.end43_crit_edge ], [ %call7.i.i, %rhashtable_insert_fast.exit.if.end43_crit_edge ], [ %call, %if.end10 ]
  %117 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev_addr, align 64
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %payload.i)
  %119 = ptrtoint ptr %payload.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 0, ptr %payload.i, align 2
  %payload.i.2.payload.i.2.payload.2.payload.2..sroa_idx = getelementptr inbounds i8, ptr %payload.i, i32 2
  %120 = ptrtoint ptr %payload.i.2.payload.i.2.payload.2.payload.2..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 1, ptr %payload.i.2.payload.i.2.payload.2.payload.2..sroa_idx, align 2
  %payload.i.4.payload.i.4.payload.4.payload.4..sroa_idx = getelementptr inbounds i8, ptr %payload.i, i32 4
  %121 = ptrtoint ptr %payload.i.4.payload.i.4.payload.4.payload.4..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %nfp_mac_idx.1175, ptr %payload.i.4.payload.i.4.payload.4.payload.4..sroa_idx, align 2
  %122 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %118, align 4
  %payload.i.6.payload.i.6.payload.6.payload.6..sroa_idx = getelementptr inbounds i8, ptr %payload.i, i32 6
  %124 = ptrtoint ptr %payload.i.6.payload.i.6.payload.6.payload.6..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %124, i32 4)
  store i32 %123, ptr %payload.i.6.payload.i.6.payload.6.payload.6..sroa_idx, align 2
  %add.ptr.i.i = getelementptr i8, ptr %118, i32 4
  %125 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %add.ptr.i.i, align 2
  %payload.i.10.payload.i.10.payload.10.payload.10..sroa_idx = getelementptr inbounds i8, ptr %payload.i, i32 10
  %127 = ptrtoint ptr %payload.i.10.payload.i.10.payload.10.payload.10..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %payload.i.10.payload.i.10.payload.10.payload.10..sroa_idx, align 2
  %call.i.i125 = tail call ptr @nfp_flower_cmsg_alloc(ptr noundef %app, i32 noundef 12, i32 noundef 11, i32 noundef 3264) #13
  %tobool.not.i.i126 = icmp eq ptr %call.i.i125, null
  br i1 %tobool.not.i.i126, label %if.then47, label %if.end51

if.then47:                                        ; preds = %if.end43
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload.i)
  %ref_count = getelementptr inbounds %struct.nfp_tun_offloaded_mac, ptr %entry2.0, i32 0, i32 3
  %128 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool48.not = icmp eq i32 %129, 0
  br i1 %tobool48.not, label %err_remove_hash, label %if.then47.err_free_ida_crit_edge

if.then47.err_free_ida_crit_edge:                 ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_ida

if.end51:                                         ; preds = %if.end43
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i125, i32 0, i32 19
  %130 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i128 = getelementptr i8, ptr %131, i32 4
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i125, i32 0, i32 6
  %132 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %len.i.i.i, align 4
  %sub.i.i.i = add i32 %133, -4
  %134 = call ptr @memcpy(ptr %add.ptr.i.i.i128, ptr %payload.i, i32 %sub.i.i.i)
  %ctrl.i.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 3
  %135 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ctrl.i.i, align 4
  %call4.i.i = tail call zeroext i1 @nfp_ctrl_tx(ptr noundef %136, ptr noundef nonnull %call.i.i125) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload.i)
  %index52 = getelementptr inbounds %struct.nfp_tun_offloaded_mac, ptr %entry2.0, i32 0, i32 2
  %137 = ptrtoint ptr %index52 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %nfp_mac_idx.1175, ptr %index52, align 2
  %netdev_ops.i.i130 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %138 = ptrtoint ptr %netdev_ops.i.i130 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %netdev_ops.i.i130, align 8
  %cmp.i.i131 = icmp eq ptr %139, @nfp_repr_netdev_ops
  br i1 %cmp.i.i131, label %if.then.i133, label %if.else.i152

if.then.i133:                                     ; preds = %if.end51
  %app_priv.i132 = getelementptr i8, ptr %netdev, i32 2324
  %140 = ptrtoint ptr %app_priv.i132 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %app_priv.i132, align 4
  br i1 %mod, label %if.then3.i136, label %if.then.i133.if.end.i146_crit_edge

if.then.i133.if.end.i146_crit_edge:               ; preds = %if.then.i133
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i146

if.then3.i136:                                    ; preds = %if.then.i133
  %mac_list.i134 = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %141, i32 0, i32 5
  %call.i.i.i135 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mac_list.i134) #13
  br i1 %call.i.i.i135, label %if.end.i.i.i139, label %if.then3.i136.list_del.exit.i141_crit_edge

if.then3.i136.list_del.exit.i141_crit_edge:       ; preds = %if.then3.i136
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i141

if.end.i.i.i139:                                  ; preds = %if.then3.i136
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i137 = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %141, i32 0, i32 5, i32 1
  %142 = ptrtoint ptr %prev.i.i.i137 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %prev.i.i.i137, align 4
  %144 = ptrtoint ptr %mac_list.i134 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mac_list.i134, align 4
  %prev1.i.i.i.i138 = getelementptr inbounds %struct.list_head, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %prev1.i.i.i.i138 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %143, ptr %prev1.i.i.i.i138, align 4
  %147 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %145, ptr %143, align 4
  br label %list_del.exit.i141

list_del.exit.i141:                               ; preds = %if.end.i.i.i139, %if.then3.i136.list_del.exit.i141_crit_edge
  %148 = ptrtoint ptr %mac_list.i134 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr inttoptr (i32 256 to ptr), ptr %mac_list.i134, align 4
  %prev.i.i140 = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %141, i32 0, i32 5, i32 1
  %149 = ptrtoint ptr %prev.i.i140 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i140, align 4
  br label %if.end.i146

if.end.i146:                                      ; preds = %list_del.exit.i141, %if.then.i133.if.end.i146_crit_edge
  %mac_list4.i142 = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %141, i32 0, i32 5
  %repr_list.i143 = getelementptr inbounds %struct.nfp_tun_offloaded_mac, ptr %entry2.0, i32 0, i32 4
  %prev.i15.i144 = getelementptr inbounds %struct.nfp_tun_offloaded_mac, ptr %entry2.0, i32 0, i32 4, i32 1
  %150 = ptrtoint ptr %prev.i15.i144 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %prev.i15.i144, align 4
  %call.i.i16.i145 = tail call zeroext i1 @__list_add_valid(ptr noundef %mac_list4.i142, ptr noundef %151, ptr noundef %repr_list.i143) #13
  br i1 %call.i.i16.i145, label %if.end.i.i17.i148, label %if.end.i146.nfp_tunnel_offloaded_macs_inc_ref_and_link.exit158_crit_edge

if.end.i146.nfp_tunnel_offloaded_macs_inc_ref_and_link.exit158_crit_edge: ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfp_tunnel_offloaded_macs_inc_ref_and_link.exit158

if.end.i.i17.i148:                                ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #15
  %152 = ptrtoint ptr %prev.i15.i144 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %mac_list4.i142, ptr %prev.i15.i144, align 4
  %153 = ptrtoint ptr %mac_list4.i142 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %repr_list.i143, ptr %mac_list4.i142, align 4
  %prev3.i.i.i147 = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %141, i32 0, i32 5, i32 1
  %154 = ptrtoint ptr %prev3.i.i.i147 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %151, ptr %prev3.i.i.i147, align 4
  %155 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile ptr %mac_list4.i142, ptr %151, align 4
  br label %nfp_tunnel_offloaded_macs_inc_ref_and_link.exit158

if.else.i152:                                     ; preds = %if.end51
  %priv_flags.i.i.i149 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 15
  %156 = ptrtoint ptr %priv_flags.i.i.i149 to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %priv_flags.i.i.i149, align 16
  %and.i.i.i150 = and i64 %157, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i150)
  %tobool.i.i.not.i151 = icmp eq i64 %and.i.i.i150, 0
  br i1 %tobool.i.i.not.i151, label %if.else.i152.nfp_tunnel_offloaded_macs_inc_ref_and_link.exit158_crit_edge, label %if.then6.i155

if.else.i152.nfp_tunnel_offloaded_macs_inc_ref_and_link.exit158_crit_edge: ; preds = %if.else.i152
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfp_tunnel_offloaded_macs_inc_ref_and_link.exit158

if.then6.i155:                                    ; preds = %if.else.i152
  call void @__sanitizer_cov_trace_pc() #15
  %bridge_count.i153 = getelementptr inbounds %struct.nfp_tun_offloaded_mac, ptr %entry2.0, i32 0, i32 5
  %158 = ptrtoint ptr %bridge_count.i153 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %bridge_count.i153, align 4
  %inc.i154 = add i32 %159, 1
  store i32 %inc.i154, ptr %bridge_count.i153, align 4
  br label %nfp_tunnel_offloaded_macs_inc_ref_and_link.exit158

nfp_tunnel_offloaded_macs_inc_ref_and_link.exit158: ; preds = %if.then6.i155, %if.else.i152.nfp_tunnel_offloaded_macs_inc_ref_and_link.exit158_crit_edge, %if.end.i.i17.i148, %if.end.i146.nfp_tunnel_offloaded_macs_inc_ref_and_link.exit158_crit_edge
  %ref_count.i156 = getelementptr inbounds %struct.nfp_tun_offloaded_mac, ptr %entry2.0, i32 0, i32 3
  %160 = ptrtoint ptr %ref_count.i156 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %ref_count.i156, align 4
  %inc9.i157 = add i32 %161, 1
  store i32 %inc9.i157, ptr %ref_count.i156, align 4
  br label %cleanup

err_remove_hash:                                  ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  %tun54 = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17
  %call57 = tail call fastcc i32 @rhashtable_remove_fast(ptr noundef %tun54, ptr noundef %entry2.0, [7 x i32] [i32 6, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0])
  br label %err_free_entry

err_free_entry:                                   ; preds = %err_remove_hash, %rhashtable_insert_fast.exit.err_free_entry_crit_edge
  %ida_idx.0171 = phi i32 [ %ida_idx.0172, %err_remove_hash ], [ %ida_idx.0174, %rhashtable_insert_fast.exit.err_free_entry_crit_edge ]
  %entry2.1 = phi ptr [ %entry2.0, %err_remove_hash ], [ %call7.i.i, %rhashtable_insert_fast.exit.err_free_entry_crit_edge ]
  tail call void @kfree(ptr noundef %entry2.1) #13
  br label %err_free_ida

err_free_ida:                                     ; preds = %err_free_entry, %if.then47.err_free_ida_crit_edge, %if.then32.err_free_ida_crit_edge
  %ida_idx.0173 = phi i32 [ %ida_idx.0172, %if.then47.err_free_ida_crit_edge ], [ %ida_idx.0171, %err_free_entry ], [ %ida_idx.0174, %if.then32.err_free_ida_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ida_idx.0173)
  %cmp58.not = icmp eq i32 %ida_idx.0173, -1
  br i1 %cmp58.not, label %err_free_ida.cleanup_crit_edge, label %if.then60

err_free_ida.cleanup_crit_edge:                   ; preds = %err_free_ida
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then60:                                        ; preds = %err_free_ida
  call void @__sanitizer_cov_trace_pc() #15
  %mac_off_ids62 = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 9
  tail call void @ida_free(ptr noundef %mac_off_ids62, i32 noundef %ida_idx.0173) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %err_free_ida.cleanup_crit_edge, %nfp_tunnel_offloaded_macs_inc_ref_and_link.exit158, %if.then16.cleanup_crit_edge, %nfp_tunnel_offloaded_macs_inc_ref_and_link.exit
  %retval.0 = phi i32 [ 0, %nfp_tunnel_offloaded_macs_inc_ref_and_link.exit ], [ 0, %nfp_tunnel_offloaded_macs_inc_ref_and_link.exit158 ], [ %call17, %if.then16.cleanup_crit_edge ], [ -12, %if.then60 ], [ -12, %err_free_ida.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nfp_flower_non_repr_priv_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nfp_flower_non_repr_priv_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_tunnel_del_shared_mac(ptr noundef %app, ptr noundef %netdev, ptr noundef %mac, i1 noundef zeroext %mod) unnamed_addr #0 align 64 {
entry:
  %payload.i220 = alloca %struct.nfp_tun_mac_addr_offload, align 2
  %payload.i192 = alloca %struct.nfp_tun_mac_addr_offload, align 2
  %payload.i = alloca %struct.nfp_tun_mac_addr_offload, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %call = tail call fastcc ptr @nfp_tunnel_lookup_offloaded_macs(ptr noundef %app, ptr noundef %mac)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup133_crit_edge, label %if.end

entry.cleanup133_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup133

if.end:                                           ; preds = %entry
  %ref_count = getelementptr inbounds %struct.nfp_tun_offloaded_mac, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_count, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %ref_count, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp ne ptr %5, @nfp_repr_netdev_ops
  %brmerge = or i1 %cmp.i, %mod
  br i1 %brmerge, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then5:                                         ; preds = %if.end
  %app_priv = getelementptr i8, ptr %netdev, i32 2324
  %6 = ptrtoint ptr %app_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %app_priv, align 4
  %mac_list = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %7, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mac_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then5.list_del.exit_crit_edge

if.then5.list_del.exit_crit_edge:                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %7, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %mac_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mac_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then5.list_del.exit_crit_edge
  %14 = ptrtoint ptr %mac_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %mac_list, align 4
  %prev.i = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %7, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %list_del.exit, %if.end.if.end7_crit_edge
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 15
  %16 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %17, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.i.not, label %if.end7.if.end33_crit_edge, label %if.then9

if.end7.if.end33_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then9:                                         ; preds = %if.end7
  %bridge_count = getelementptr inbounds %struct.nfp_tun_offloaded_mac, ptr %call, i32 0, i32 5
  %18 = ptrtoint ptr %bridge_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bridge_count, align 4
  %dec10 = add i32 %19, -1
  store i32 %dec10, ptr %bridge_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec10)
  %tobool12.not = icmp eq i32 %dec10, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %if.then9.if.end33_crit_edge

if.then9.if.end33_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

land.lhs.true13:                                  ; preds = %if.then9
  %20 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool15.not = icmp eq i32 %21, 0
  br i1 %tobool15.not, label %land.lhs.true13.if.end70_crit_edge, label %if.then16

land.lhs.true13.if.end70_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.then16:                                        ; preds = %land.lhs.true13
  %index = getelementptr inbounds %struct.nfp_tun_offloaded_mac, ptr %call, i32 0, i32 2
  %22 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %index, align 2
  %24 = and i16 %23, -9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %payload.i)
  %25 = ptrtoint ptr %payload.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %payload.i, align 2
  %payload.i.2.payload.i.2.payload.2.payload.2..sroa_idx = getelementptr inbounds i8, ptr %payload.i, i32 2
  %26 = ptrtoint ptr %payload.i.2.payload.i.2.payload.2.payload.2..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %payload.i.2.payload.i.2.payload.2.payload.2..sroa_idx, align 2
  %payload.i.4.payload.i.4.payload.4.payload.4..sroa_idx = getelementptr inbounds i8, ptr %payload.i, i32 4
  %27 = ptrtoint ptr %payload.i.4.payload.i.4.payload.4.payload.4..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %24, ptr %payload.i.4.payload.i.4.payload.4.payload.4..sroa_idx, align 2
  %28 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mac, align 4
  %payload.i.6.payload.i.6.payload.6.payload.6..sroa_idx = getelementptr inbounds i8, ptr %payload.i, i32 6
  %30 = ptrtoint ptr %payload.i.6.payload.i.6.payload.6.payload.6..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %payload.i.6.payload.i.6.payload.6.payload.6..sroa_idx, align 2
  %add.ptr.i.i = getelementptr i8, ptr %mac, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i.i, align 2
  %payload.i.10.payload.i.10.payload.10.payload.10..sroa_idx = getelementptr inbounds i8, ptr %payload.i, i32 10
  %33 = ptrtoint ptr %payload.i.10.payload.i.10.payload.10.payload.10..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %payload.i.10.payload.i.10.payload.10.payload.10..sroa_idx, align 2
  %call.i.i188 = tail call ptr @nfp_flower_cmsg_alloc(ptr noundef %app, i32 noundef 12, i32 noundef 11, i32 noundef 3264) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i188, null
  br i1 %tobool.not.i.i, label %do.body, label %if.end30

do.body:                                          ; preds = %if.then16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload.i)
  %call21 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.body.cleanup133_crit_edge, label %do.end

do.body.cleanup133_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup133

do.end:                                           ; preds = %do.body
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %34 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cpp, align 4
  %call25 = tail call ptr @nfp_cpp_device(ptr noundef %35) #13
  %parent = getelementptr inbounds %struct.device, ptr %call25, i32 0, i32 1
  %36 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent, align 8
  %38 = ptrtoint ptr %netdev to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %netdev, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i, label %do.end.netdev_name.exit_crit_edge, label %lor.lhs.false.i

do.end.netdev_name.exit_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call ptr @strchr(ptr noundef %netdev, i32 noundef 37) #13
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %netdev, ptr @.str.67
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %do.end.netdev_name.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.67, %do.end.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.63, ptr noundef %retval.0.i) #16
  br label %cleanup133

if.end30:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i188, i32 0, i32 19
  %40 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %41, i32 4
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i188, i32 0, i32 6
  %42 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len.i.i.i, align 4
  %sub.i.i.i = add i32 %43, -4
  %44 = call ptr @memcpy(ptr %add.ptr.i.i.i, ptr %payload.i, i32 %sub.i.i.i)
  %ctrl.i.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 3
  %45 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctrl.i.i, align 4
  %call4.i.i = tail call zeroext i1 @nfp_ctrl_tx(ptr noundef %46, ptr noundef nonnull %call.i.i188) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload.i)
  %47 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %24, ptr %index, align 2
  br label %cleanup133

if.end33:                                         ; preds = %if.then9.if.end33_crit_edge, %if.end7.if.end33_crit_edge
  %48 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr = load i32, ptr %ref_count, align 4
  %49 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %.pr, label %if.end33.cleanup133_crit_edge [
    i32 1, label %land.lhs.true36
    i32 0, label %if.end33.if.end70_crit_edge
  ]

if.end33.if.end70_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.end33.cleanup133_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup133

land.lhs.true36:                                  ; preds = %if.end33
  %repr_list = getelementptr inbounds %struct.nfp_tun_offloaded_mac, ptr %call, i32 0, i32 4
  %50 = ptrtoint ptr %repr_list to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %repr_list, align 4
  %cmp.i.not.i = icmp eq ptr %51, %repr_list
  br i1 %cmp.i.not.i, label %land.lhs.true36.cleanup133_crit_edge, label %list_is_singular.exit

land.lhs.true36.cleanup133_crit_edge:             ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup133

list_is_singular.exit:                            ; preds = %land.lhs.true36
  %prev.i190 = getelementptr inbounds %struct.nfp_tun_offloaded_mac, ptr %call, i32 0, i32 4, i32 1
  %52 = ptrtoint ptr %prev.i190 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i190, align 4
  %cmp.i191.not = icmp eq ptr %51, %53
  br i1 %cmp.i191.not, label %if.then39, label %list_is_singular.exit.cleanup133_crit_edge

list_is_singular.exit.cleanup133_crit_edge:       ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup133

if.then39:                                        ; preds = %list_is_singular.exit
  %add.ptr = getelementptr i8, ptr %51, i32 -16
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %dst.i = getelementptr i8, ptr %57, i32 2308
  %58 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dst.i, align 4
  %u.i = getelementptr inbounds %struct.metadata_dst, ptr %59, i32 0, i32 2
  %port_id.i = getelementptr inbounds %struct.hw_port_info, ptr %u.i, i32 0, i32 1
  %60 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port_id.i, align 4
  %port.tr.i = trunc i32 %61 to i16
  %62 = shl i16 %port.tr.i, 8
  %conv.i = or i16 %62, 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %payload.i192)
  %63 = ptrtoint ptr %payload.i192 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %payload.i192, align 2
  %payload.i192.2.payload.i192.2.payload.2.payload.2..sroa_idx = getelementptr inbounds i8, ptr %payload.i192, i32 2
  %64 = ptrtoint ptr %payload.i192.2.payload.i192.2.payload.2.payload.2..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 1, ptr %payload.i192.2.payload.i192.2.payload.2.payload.2..sroa_idx, align 2
  %payload.i192.4.payload.i192.4.payload.4.payload.4..sroa_idx = getelementptr inbounds i8, ptr %payload.i192, i32 4
  %65 = ptrtoint ptr %payload.i192.4.payload.i192.4.payload.4.payload.4..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i, ptr %payload.i192.4.payload.i192.4.payload.4.payload.4..sroa_idx, align 2
  %66 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mac, align 4
  %payload.i192.6.payload.i192.6.payload.6.payload.6..sroa_idx = getelementptr inbounds i8, ptr %payload.i192, i32 6
  %68 = ptrtoint ptr %payload.i192.6.payload.i192.6.payload.6.payload.6..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %67, ptr %payload.i192.6.payload.i192.6.payload.6.payload.6..sroa_idx, align 2
  %add.ptr.i.i197 = getelementptr i8, ptr %mac, i32 4
  %69 = ptrtoint ptr %add.ptr.i.i197 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %add.ptr.i.i197, align 2
  %payload.i192.10.payload.i192.10.payload.10.payload.10..sroa_idx = getelementptr inbounds i8, ptr %payload.i192, i32 10
  %71 = ptrtoint ptr %payload.i192.10.payload.i192.10.payload.10.payload.10..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %payload.i192.10.payload.i192.10.payload.10.payload.10..sroa_idx, align 2
  %call.i.i198 = tail call ptr @nfp_flower_cmsg_alloc(ptr noundef %app, i32 noundef 12, i32 noundef 11, i32 noundef 3264) #13
  %tobool.not.i.i199 = icmp eq ptr %call.i.i198, null
  br i1 %tobool.not.i.i199, label %do.body47, label %if.end61

do.body47:                                        ; preds = %if.then39
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload.i192)
  %call48 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %do.body47.cleanup133_crit_edge, label %do.end53

do.body47.cleanup133_crit_edge:                   ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup133

do.end53:                                         ; preds = %do.body47
  %cpp54 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %72 = ptrtoint ptr %cpp54 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cpp54, align 4
  %call55 = tail call ptr @nfp_cpp_device(ptr noundef %73) #13
  %parent56 = getelementptr inbounds %struct.device, ptr %call55, i32 0, i32 1
  %74 = ptrtoint ptr %parent56 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %parent56, align 8
  %76 = ptrtoint ptr %netdev to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %netdev, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i209 = icmp eq i8 %77, 0
  br i1 %tobool.not.i209, label %do.end53.netdev_name.exit215_crit_edge, label %lor.lhs.false.i213

do.end53.netdev_name.exit215_crit_edge:           ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %netdev_name.exit215

lor.lhs.false.i213:                               ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #15
  %call.i210 = tail call ptr @strchr(ptr noundef %netdev, i32 noundef 37) #13
  %tobool2.not.i211 = icmp eq ptr %call.i210, null
  %spec.select.i212 = select i1 %tobool2.not.i211, ptr %netdev, ptr @.str.67
  br label %netdev_name.exit215

netdev_name.exit215:                              ; preds = %lor.lhs.false.i213, %do.end53.netdev_name.exit215_crit_edge
  %retval.0.i214 = phi ptr [ @.str.67, %do.end53.netdev_name.exit215_crit_edge ], [ %spec.select.i212, %lor.lhs.false.i213 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %75, ptr noundef nonnull @.str.63, ptr noundef %retval.0.i214) #16
  br label %cleanup133

if.end61:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i.i200 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i198, i32 0, i32 19
  %78 = ptrtoint ptr %data.i.i.i200 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i.i.i200, align 4
  %add.ptr.i.i.i201 = getelementptr i8, ptr %79, i32 4
  %len.i.i.i202 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i198, i32 0, i32 6
  %80 = ptrtoint ptr %len.i.i.i202 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len.i.i.i202, align 4
  %sub.i.i.i203 = add i32 %81, -4
  %82 = call ptr @memcpy(ptr %add.ptr.i.i.i201, ptr %payload.i192, i32 %sub.i.i.i203)
  %ctrl.i.i204 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 3
  %83 = ptrtoint ptr %ctrl.i.i204 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ctrl.i.i204, align 4
  %call4.i.i205 = tail call zeroext i1 @nfp_ctrl_tx(ptr noundef %84, ptr noundef nonnull %call.i.i198) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload.i192)
  %index62 = getelementptr inbounds %struct.nfp_tun_offloaded_mac, ptr %call, i32 0, i32 2
  %85 = ptrtoint ptr %index62 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %index62, align 2
  %87 = lshr i16 %86, 8
  %88 = zext i16 %87 to i32
  %mac_off_ids = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 9
  tail call void @ida_free(ptr noundef %mac_off_ids, i32 noundef %88) #13
  %89 = ptrtoint ptr %index62 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv.i, ptr %index62, align 2
  br label %cleanup133

if.end70:                                         ; preds = %if.end33.if.end70_crit_edge, %land.lhs.true13.if.end70_crit_edge
  %tun71 = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17
  %call72 = tail call fastcc i32 @rhashtable_remove_fast(ptr noundef %tun71, ptr noundef nonnull %call, [7 x i32] [i32 6, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end70.if.end109_crit_edge, label %land.rhs

if.end70.if.end109_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109

land.rhs:                                         ; preds = %if.end70
  %.b187 = load i1, ptr @nfp_tunnel_del_shared_mac.__already_done, align 1
  br i1 %.b187, label %land.rhs.if.end109_crit_edge, label %if.then83, !prof !166

land.rhs.if.end109_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109

if.then83:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @nfp_tunnel_del_shared_mac.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1074, i32 noundef 9, ptr noundef null) #13
  br label %if.end109

if.end109:                                        ; preds = %if.then83, %land.rhs.if.end109_crit_edge, %if.end70.if.end109_crit_edge
  %90 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i217 = and i64 %91, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i217)
  %tobool.i.i218.not = icmp eq i64 %and.i.i217, 0
  %index123 = getelementptr inbounds %struct.nfp_tun_offloaded_mac, ptr %call, i32 0, i32 2
  %92 = ptrtoint ptr %index123 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %index123, align 2
  %94 = and i16 %93, 247
  %nfp_mac_idx.0 = select i1 %tobool.i.i218.not, i16 %93, i16 %94
  %95 = and i16 %nfp_mac_idx.0, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %95)
  %cmp.i219 = icmp eq i16 %95, 3
  br i1 %cmp.i219, label %if.then126, label %if.end109.if.end131_crit_edge

if.end109.if.end131_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end131

if.then126:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #15
  %index127 = getelementptr inbounds %struct.nfp_tun_offloaded_mac, ptr %call, i32 0, i32 2
  %96 = ptrtoint ptr %index127 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %index127, align 2
  %98 = lshr i16 %97, 8
  %99 = zext i16 %98 to i32
  %mac_off_ids130 = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 17, i32 9
  tail call void @ida_free(ptr noundef %mac_off_ids130, i32 noundef %99) #13
  br label %if.end131

if.end131:                                        ; preds = %if.then126, %if.end109.if.end131_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %payload.i220)
  %100 = ptrtoint ptr %payload.i220 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 2, ptr %payload.i220, align 2
  %payload.i220.2.payload.i220.2.payload.2.payload.2..sroa_idx = getelementptr inbounds i8, ptr %payload.i220, i32 2
  %101 = ptrtoint ptr %payload.i220.2.payload.i220.2.payload.2.payload.2..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 1, ptr %payload.i220.2.payload.i220.2.payload.2.payload.2..sroa_idx, align 2
  %payload.i220.4.payload.i220.4.payload.4.payload.4..sroa_idx = getelementptr inbounds i8, ptr %payload.i220, i32 4
  %102 = ptrtoint ptr %payload.i220.4.payload.i220.4.payload.4.payload.4..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 0, ptr %payload.i220.4.payload.i220.4.payload.4.payload.4..sroa_idx, align 2
  %103 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %mac, align 4
  %payload.i220.6.payload.i220.6.payload.6.payload.6..sroa_idx = getelementptr inbounds i8, ptr %payload.i220, i32 6
  %105 = ptrtoint ptr %payload.i220.6.payload.i220.6.payload.6.payload.6..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %105, i32 4)
  store i32 %104, ptr %payload.i220.6.payload.i220.6.payload.6.payload.6..sroa_idx, align 2
  %add.ptr.i.i225 = getelementptr i8, ptr %mac, i32 4
  %106 = ptrtoint ptr %add.ptr.i.i225 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %add.ptr.i.i225, align 2
  %payload.i220.10.payload.i220.10.payload.10.payload.10..sroa_idx = getelementptr inbounds i8, ptr %payload.i220, i32 10
  %108 = ptrtoint ptr %payload.i220.10.payload.i220.10.payload.10.payload.10..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %payload.i220.10.payload.i220.10.payload.10.payload.10..sroa_idx, align 2
  %call.i.i226 = tail call ptr @nfp_flower_cmsg_alloc(ptr noundef %app, i32 noundef 12, i32 noundef 11, i32 noundef 3264) #13
  %tobool.not.i.i227 = icmp eq ptr %call.i.i226, null
  br i1 %tobool.not.i.i227, label %if.end131.__nfp_tunnel_offload_mac.exit236_crit_edge, label %if.end.i.i234

if.end131.__nfp_tunnel_offload_mac.exit236_crit_edge: ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #15
  br label %__nfp_tunnel_offload_mac.exit236

if.end.i.i234:                                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i.i228 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i226, i32 0, i32 19
  %109 = ptrtoint ptr %data.i.i.i228 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %data.i.i.i228, align 4
  %add.ptr.i.i.i229 = getelementptr i8, ptr %110, i32 4
  %len.i.i.i230 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i226, i32 0, i32 6
  %111 = ptrtoint ptr %len.i.i.i230 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %len.i.i.i230, align 4
  %sub.i.i.i231 = add i32 %112, -4
  %113 = call ptr @memcpy(ptr %add.ptr.i.i.i229, ptr %payload.i220, i32 %sub.i.i.i231)
  %ctrl.i.i232 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 3
  %114 = ptrtoint ptr %ctrl.i.i232 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ctrl.i.i232, align 4
  %call4.i.i233 = tail call zeroext i1 @nfp_ctrl_tx(ptr noundef %115, ptr noundef nonnull %call.i.i226) #13
  br label %__nfp_tunnel_offload_mac.exit236

__nfp_tunnel_offload_mac.exit236:                 ; preds = %if.end.i.i234, %if.end131.__nfp_tunnel_offload_mac.exit236_crit_edge
  %retval.0.i.i235 = phi i32 [ 0, %if.end.i.i234 ], [ -12, %if.end131.__nfp_tunnel_offload_mac.exit236_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %payload.i220)
  br label %cleanup133

cleanup133:                                       ; preds = %__nfp_tunnel_offload_mac.exit236, %if.end61, %netdev_name.exit215, %do.body47.cleanup133_crit_edge, %list_is_singular.exit.cleanup133_crit_edge, %land.lhs.true36.cleanup133_crit_edge, %if.end33.cleanup133_crit_edge, %if.end30, %netdev_name.exit, %do.body.cleanup133_crit_edge, %entry.cleanup133_crit_edge
  %retval.1 = phi i32 [ %retval.0.i.i235, %__nfp_tunnel_offload_mac.exit236 ], [ 0, %if.end30 ], [ 0, %entry.cleanup133_crit_edge ], [ 0, %netdev_name.exit ], [ 0, %do.body.cleanup133_crit_edge ], [ 0, %do.body47.cleanup133_crit_edge ], [ 0, %netdev_name.exit215 ], [ 0, %if.end61 ], [ 0, %list_is_singular.exit.cleanup133_crit_edge ], [ 0, %land.lhs.true36.cleanup133_crit_edge ], [ 0, %if.end33.cleanup133_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_remove_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !151) #13
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !162
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 696, ptr noundef nonnull @.str.40) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 1076, ptr noundef nonnull @.str.54) #13
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
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !163

cond.true.i.i.i:                                  ; preds = %while.cond.i
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
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
  %call8.i.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %12) #13
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
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
  %call.i.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i.i, i32 noundef %18, i32 noundef %14) #13
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
  br i1 %tobool.not.i3.i.i, label %cond.false.i5.i.i, label %cond.true.i4.i.i, !prof !166

cond.true.i4.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #13
  br label %rht_bucket_var.exit.i.i

cond.false.i5.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_var.exit.i.i

rht_bucket_var.exit.i.i:                          ; preds = %cond.false.i5.i.i, %cond.true.i4.i.i
  %cond.i6.i.i = phi ptr [ %call.i.i.i, %cond.true.i4.i.i ], [ %arrayidx.i.i.i, %cond.false.i5.i.i ]
  %tobool.not.i3.i = icmp eq ptr %cond.i6.i.i, null
  br i1 %tobool.not.i3.i, label %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge, label %if.end.i.i

rht_bucket_var.exit.i.i.land.rhs.i_crit_edge:     ; preds = %rht_bucket_var.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %rht_bucket_var.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #13
  %call.i8.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %call.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.rht_ptr.exit.i.i_crit_edge

if.end.i.i.rht_ptr.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 377, ptr noundef nonnull @.str.56) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlocked.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %27 = inttoptr i32 %cond.i.i.i.i to ptr
  %cmp.not.i21.i = icmp eq ptr %27, %obj
  br i1 %cmp.not.i21.i, label %for.body.preheader.i.i.do.body54.i.i_crit_edge, label %for.body.preheader.i.i.do.body145.i.i_crit_edge

for.body.preheader.i.i.do.body145.i.i_crit_edge:  ; preds = %for.body.preheader.i.i
  br label %do.body145.i.i

for.body.preheader.i.i.do.body54.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body54.i.i

for.body.i.i:                                     ; preds = %do.end156.i.i
  %cmp.not.i.i = icmp eq ptr %32, %obj
  br i1 %cmp.not.i.i, label %for.body.i.i.do.body54.i.i_crit_edge, label %for.body.i.i.do.body145.i.i_crit_edge

for.body.i.i.do.body145.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body145.i.i

for.body.i.i.do.body54.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body54.i.i

do.body54.i.i:                                    ; preds = %for.body.i.i.do.body54.i.i_crit_edge, %for.body.preheader.i.i.do.body54.i.i_crit_edge
  %pprev.023.i.lcssa.i = phi ptr [ %he.022.i22.i, %for.body.i.i.do.body54.i.i_crit_edge ], [ null, %for.body.preheader.i.i.do.body54.i.i_crit_edge ]
  %call55.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %land.lhs.true57.i.i, label %do.body54.i.i.do.end65.i.i_crit_edge

do.body54.i.i.do.end65.i.i_crit_edge:             ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end65.i.i

land.lhs.true57.i.i:                              ; preds = %do.body54.i.i
  %call58.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %land.lhs.true57.i.i.do.end65.i.i_crit_edge, label %land.lhs.true60.i.i

land.lhs.true57.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end65.i.i

land.lhs.true60.i.i:                              ; preds = %land.lhs.true57.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.60, align 1
  br i1 %.b2.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.60, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 1032, ptr noundef nonnull @.str.56) #13
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %28 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %obj, align 4
  %tobool103.not.i.i = icmp eq ptr %pprev.023.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !180
  %30 = ptrtoint ptr %pprev.023.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %pprev.023.i.lcssa.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #13
  br label %if.then160.i.i

if.else142.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i, ptr noundef %29) #13
  br label %if.then160.i.i

do.body145.i.i:                                   ; preds = %for.body.i.i.do.body145.i.i_crit_edge, %for.body.preheader.i.i.do.body145.i.i_crit_edge
  %he.022.i22.i = phi ptr [ %32, %for.body.i.i.do.body145.i.i_crit_edge ], [ %27, %for.body.preheader.i.i.do.body145.i.i_crit_edge ]
  %call146.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i)
  %tobool147.not.i.i = icmp eq i32 %call146.i.i, 0
  br i1 %tobool147.not.i.i, label %land.lhs.true148.i.i, label %do.body145.i.i.do.end156.i.i_crit_edge

do.body145.i.i.do.end156.i.i_crit_edge:           ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end156.i.i

land.lhs.true148.i.i:                             ; preds = %do.body145.i.i
  %call149.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %tobool150.not.i.i = icmp eq i32 %call149.i.i, 0
  br i1 %tobool150.not.i.i, label %land.lhs.true148.i.i.do.end156.i.i_crit_edge, label %land.lhs.true151.i.i

land.lhs.true148.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end156.i.i

land.lhs.true151.i.i:                             ; preds = %land.lhs.true148.i.i
  %.b2281.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.62, align 1
  br i1 %.b2281.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.62, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 1004, ptr noundef nonnull @.str.56) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlocked.i.i

unlocked.i.i:                                     ; preds = %do.end156.i.i.unlocked.i.i_crit_edge, %rht_ptr.exit.i.i.unlocked.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #13
  br label %land.rhs.i

if.then160.i.i:                                   ; preds = %if.else142.i.i, %do.body105.i.i
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #13
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #13, !srcloc !181
  %automatic_shrinking.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %automatic_shrinking.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %automatic_shrinking.i.i, align 2, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool161.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool161.not.i.i, label %if.then160.i.i.while.end.i_crit_edge, label %land.rhs162.i.i

if.then160.i.i.while.end.i_crit_edge:             ; preds = %if.then160.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

land.rhs162.i.i:                                  ; preds = %if.then160.i.i
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

rht_shrink_below_30.exit.i.i:                     ; preds = %land.rhs162.i.i
  %min_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 5
  %41 = ptrtoint ptr %min_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %min_size.i.i.i, align 4
  %conv.i11.i.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i11.i.i)
  %cmp2.i.i.i = icmp ugt i32 %40, %conv.i11.i.i
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !163

rht_shrink_below_30.exit.i.i.while.end.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

if.then168.i.i:                                   ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %run_work.i.i) #13
  br label %while.end.i

land.rhs.i:                                       ; preds = %unlocked.i.i, %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %44 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %future_tbl.i, align 4
  %call20.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %land.rhs.i.do.end33.i_crit_edge

land.rhs.i.do.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33.i

lor.lhs.false22.i:                                ; preds = %land.rhs.i
  %call23.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %lor.lhs.false22.i.do.end33.i_crit_edge

lor.lhs.false22.i.do.end33.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33.i

land.lhs.true25.i:                                ; preds = %lor.lhs.false22.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.58, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_remove_fast.__warned.58, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 1085, ptr noundef nonnull @.str.54) #13
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %lor.lhs.false22.i.do.end33.i_crit_edge, %land.rhs.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %45, null
  br i1 %tobool35.not.i, label %do.end33.i.while.end.i_crit_edge, label %do.end33.i.while.cond.i_crit_edge

do.end33.i.while.cond.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

do.end33.i.while.end.i_crit_edge:                 ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %do.end33.i.while.end.i_crit_edge, %if.then168.i.i, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, %land.rhs162.i.i.while.end.i_crit_edge, %if.then160.i.i.while.end.i_crit_edge
  %retval.0.i15.i = phi i32 [ 0, %if.then160.i.i.while.end.i_crit_edge ], [ 0, %if.then168.i.i ], [ 0, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge ], [ 0, %land.rhs162.i.i.while.end.i_crit_edge ], [ -2, %do.end33.i.while.end.i_crit_edge ]
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i4.i, label %while.end.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i

while.end.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__rhashtable_remove_fast.exit

land.lhs.true.i7.i:                               ; preds = %while.end.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__rhashtable_remove_fast.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__rhashtable_remove_fast.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 724, ptr noundef nonnull @.str.41) #13
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %46 = tail call i32 @llvm.read_register.i32(metadata !151) #13
  %and.i.i.i.i.i11.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret i32 %retval.0.i15.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !151) #13
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !182
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #13
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !183

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #13, !srcloc !184
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !185
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !166

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !186
  %7 = tail call i32 @llvm.read_register.i32(metadata !151) #13
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !187
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !188
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  %13 = tail call i32 @llvm.read_register.i32(metadata !151) #13
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !189
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #13
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !163

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #13, !srcloc !190
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !191
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #13, !srcloc !192
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !193
  %3 = tail call i32 @llvm.read_register.i32(metadata !151) #13
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
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !194
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !195
  %2 = tail call i32 @llvm.read_register.i32(metadata !151) #13
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
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_flower_cmsg_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfp_ctrl_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !75, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !97, !99, !101, !103, !105, !106, !107, !109, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !131, !132, !133, !135, !136, !138, !140, !142, !144, !146, !148, !150}
!llvm.named.register.sp = !{!151}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c", i32 240, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nfp_tunnel_keep_alive._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nfp_tunnel_keep_alive._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c", i32 246, i32 3}
!10 = !{ptr @nfp_tunnel_keep_alive._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nfp_tunnel_keep_alive._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c", i32 282, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @nfp_tunnel_keep_alive_v6._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @nfp_tunnel_keep_alive_v6._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @nfp_tunnel_keep_alive_v6._entry.10, !18, !"_entry", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c", i32 288, i32 3}
!19 = !{ptr @nfp_tunnel_keep_alive_v6._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c", i32 641, i32 2}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @nfp_tunnel_request_route_v4._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @nfp_tunnel_request_route_v4._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c", i32 683, i32 2}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @nfp_tunnel_request_route_v6._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @nfp_tunnel_request_route_v6._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c", i32 733, i32 3}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @nfp_tunnel_add_ipv4_off._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @nfp_tunnel_add_ipv4_off._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c", i32 808, i32 3}
!37 = !{ptr @nfp_tunnel_add_ipv6_off._entry, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @nfp_tunnel_add_ipv6_off._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c", i32 1210, i32 4}
!41 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @nfp_tunnel_mac_event_handler._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @nfp_tunnel_mac_event_handler._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c", i32 1216, i32 4}
!46 = !{ptr @nfp_tunnel_mac_event_handler._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @nfp_tunnel_mac_event_handler._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c", i32 1226, i32 4}
!50 = !{ptr @nfp_tunnel_mac_event_handler._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @nfp_tunnel_mac_event_handler._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c", i32 1253, i32 5}
!54 = !{ptr @nfp_tunnel_mac_event_handler._entry.27, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @nfp_tunnel_mac_event_handler._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @nfp_tunnel_mac_event_handler._entry.30, !57, !"_entry", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c", i32 1264, i32 5}
!58 = !{ptr @nfp_tunnel_mac_event_handler._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @nfp_tunnel_config_start.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c", i32 1365, i32 2}
!61 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @nfp_tunnel_config_start.__key.33, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c", i32 1367, i32 2}
!64 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @nfp_tunnel_config_start.__key.35, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c", i32 1371, i32 2}
!67 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @nfp_tunnel_config_start.__key.37, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c", i32 1373, i32 2}
!70 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!73 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!77 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c", i32 700, i32 4}
!80 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @nfp_tun_write_ipv4_list._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @nfp_tun_write_ipv4_list._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c", i32 778, i32 4}
!85 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @nfp_tun_write_ipv6_list._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @nfp_tun_write_ipv6_list._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c", i32 1178, i32 4}
!90 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @nfp_tunnel_offload_mac._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @nfp_tunnel_offload_mac._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/netronome/nfp/flower/cmsg.h", i32 718, i32 43}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/net/vxlan.h", i32 420, i32 43}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../include/net/geneve.h", i32 68, i32 43}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../include/net/gre.h", i32 43, i32 43}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../include/net/gre.h", i32 49, i32 43}
!103 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!104 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!105 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!107 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!108 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!109 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!110 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!111 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!112 = distinct !{null, !113, !"__warned", i1 false, i1 false}
!113 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!114 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!115 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!116 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!117 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!118 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!119 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!120 = distinct !{null, !121, !"__warned", i1 false, i1 false}
!121 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!122 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!123 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!124 = distinct !{null, !125, !"__warned", i1 false, i1 false}
!125 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!126 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!127 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c", i32 1036, i32 5}
!130 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @nfp_tunnel_del_shared_mac._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @nfp_tunnel_del_shared_mac._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @nfp_tunnel_del_shared_mac._entry.65, !134, !"_entry", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c", i32 1058, i32 4}
!135 = !{ptr @nfp_tunnel_del_shared_mac._entry_ptr.66, !134, !"_entry_ptr", i1 false, i1 false}
!136 = distinct !{null, !137, !"__already_done", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c", i32 1072, i32 2}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!140 = distinct !{null, !141, !"__warned", i1 false, i1 false}
!141 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!142 = distinct !{null, !143, !"__warned", i1 false, i1 false}
!143 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!144 = distinct !{null, !145, !"__warned", i1 false, i1 false}
!145 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!146 = !{ptr @offloaded_macs_params, !147, !"offloaded_macs_params", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/netronome/nfp/flower/tunnel_conf.c", i32 221, i32 39}
!148 = !{ptr @xa_init_flags.__key, !149, !"__key", i1 false, i1 false}
!149 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!150 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!151 = !{!"sp"}
!152 = !{i32 1, !"wchar_size", i32 2}
!153 = !{i32 1, !"min_enum_size", i32 4}
!154 = !{i32 8, !"branch-target-enforcement", i32 0}
!155 = !{i32 8, !"sign-return-address", i32 0}
!156 = !{i32 8, !"sign-return-address-all", i32 0}
!157 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!161 = !{!"auto-init"}
!162 = !{i64 2149701029}
!163 = !{!"branch_weights", i32 1, i32 2000}
!164 = !{i64 2148493923}
!165 = !{i64 2148408387, i64 2148408419, i64 2148408448, i64 2148408482, i64 2148408513, i64 2148408536}
!166 = !{!"branch_weights", i32 2000, i32 1}
!167 = !{i64 2150575576}
!168 = !{i64 2149701295}
!169 = !{i8 0, i8 2}
!170 = !{i64 2159350337}
!171 = !{i64 2159353771}
!172 = !{i64 796873, i64 796934}
!173 = !{i64 799605}
!174 = !{i64 799890}
!175 = !{i64 2150332157}
!176 = !{i64 2150331999}
!177 = !{i64 2150332327}
!178 = !{i64 2150317398}
!179 = !{i64 2148404392, i64 2148404418, i64 2148404447, i64 2148404481, i64 2148404512, i64 2148404535}
!180 = !{i64 2159417713}
!181 = !{i64 2148406857, i64 2148406883, i64 2148406912, i64 2148406946, i64 2148406977, i64 2148407000}
!182 = !{i64 2149866151}
!183 = !{!"branch_weights", i32 2146410443, i32 1073205}
!184 = !{i64 2148413250, i64 2148413282, i64 2148413311, i64 2148413345, i64 2148413376, i64 2148413399}
!185 = !{i64 2148502331}
!186 = !{i64 2149866311}
!187 = !{i64 2149866588}
!188 = !{i64 2149866430}
!189 = !{i64 2149866793}
!190 = !{i64 2149867856, i64 2149868348, i64 2149867893, i64 2149867949, i64 2149867983, i64 2149868007, i64 2149868048, i64 2149868069, i64 2149868097, i64 2149868131}
!191 = !{i64 2148501218}
!192 = !{i64 2148411637, i64 2148411669, i64 2148411698, i64 2148411732, i64 2148411763, i64 2148411786}
!193 = !{i64 2149869251}
!194 = !{i64 2159343410}
!195 = !{i64 2159345709}
