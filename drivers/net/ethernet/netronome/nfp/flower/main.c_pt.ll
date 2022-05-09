; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/flower/main.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/flower/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nfp_app_type = type { i32, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.177, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.201, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.177 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.201 = type { ptr }
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
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.217 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%union.anon.217 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.218, i16, i8, i8, i32, i16, i16 }
%union.anon.218 = type { %struct.anon.220 }
%struct.anon.220 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.dst_cache = type { ptr, i32 }
%struct.hw_port_info = type { ptr, i32 }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nfp_flower_priv = type { ptr, ptr, i32, i64, i64, i8, %struct.nfp_fl_stats_id, %struct.nfp_fl_mask_id, [1024 x %struct.hlist_head], i32, %struct.rhashtable, ptr, %struct.spinlock, %struct.rhashtable, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.nfp_fl_tunnel_offloads, %struct.atomic_t, %struct.wait_queue_head, %struct.nfp_mtu_conf, %struct.nfp_fl_lag, %struct.list_head, %struct.list_head, i32, i32, %struct.nfp_fl_internal_ports, %struct.delayed_work, i32, %struct.spinlock, i32, %struct.rhashtable, %struct.rhashtable, ptr, %struct.rhashtable }
%struct.nfp_fl_stats_id = type { %struct.circ_buf, i32, i8 }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.nfp_fl_mask_id = type { %struct.circ_buf, ptr, i8 }
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
%struct.nfp_fl_tunnel_offloads = type { %struct.rhashtable, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.ida, %struct.notifier_block }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.nfp_mtu_conf = type { i32, i32, i8, %struct.wait_queue_head, %struct.spinlock }
%struct.nfp_fl_lag = type { %struct.delayed_work, %struct.mutex, %struct.list_head, %struct.ida, i32, i32, i8, i8, %struct.sk_buff_head }
%struct.nfp_fl_internal_ports = type { %struct.idr, %struct.spinlock }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfp_flower_non_repr_priv = type { %struct.list_head, ptr, i32, i8, [6 x i8] }
%struct.nfp_pf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i32, %struct.mutex }
%struct.nfp_net_dp = type { ptr, ptr, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.nfp_net = type { %struct.nfp_net_dp, %struct.nfp_net_fw_version, i32, i32, i32, i8, i32, [40 x i8], [128 x i8], %struct.xdp_attachment_info, %struct.xdp_attachment_info, i32, i32, i32, i32, i32, [88 x i8], [64 x %struct.nfp_net_r_vector], [66 x %struct.msix_entry], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], i8, %struct.spinlock, %struct.spinlock, i32, i8, i8, %struct.timer_list, i32, %struct.semaphore, i8, i8, i32, i32, i32, i32, ptr, ptr, ptr, %struct.nfp_net_tlv_caps, i32, i32, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.213, ptr, %struct.list_head, ptr, ptr, i8, ptr, ptr, [116 x i8] }
%struct.nfp_net_fw_version = type { i8, i8, i8, i8 }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.nfp_net_r_vector = type { ptr, %union.anon.202, ptr, ptr, i16, i16, %struct.dim, %struct.dim, %struct.u64_stats_sync, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, %struct.u64_stats_sync, i64, i64, [104 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, ptr, [24 x i8], %struct.cpumask, [20 x i8] }
%union.anon.202 = type { %struct.napi_struct }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.cpumask = type { [1 x i32] }
%struct.msix_entry = type { i32, i16 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.nfp_net_tlv_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.atomic64_t = type { i64 }
%struct.anon.213 = type { %struct.sk_buff_head, %struct.wait_queue_head, ptr, %struct.work_struct, %struct.work_struct, i16 }
%struct.nfp_eth_table = type { i32, i32, [0 x %struct.nfp_eth_table_port] }
%struct.nfp_eth_table_port = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i32, i8, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.176, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.176 = type { ptr }
%struct.nfp_reprs = type { i32, [0 x ptr] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.nfp_port = type { ptr, i32, i32, i32, ptr, %struct.devlink_port, %union.anon.214, %struct.list_head }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.186 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.186 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%union.anon.214 = type { %struct.anon.216 }
%struct.anon.216 = type { i32, i32, i8, i32, ptr }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"flower\00", [25 x i8] zeroinitializer }, align 32
@app_flower = dso_local constant { %struct.nfp_app_type, [48 x i8] } { %struct.nfp_app_type { i32 3, ptr @.str, i32 -1, i8 1, ptr @nfp_flower_init, ptr @nfp_flower_clean, ptr @nfp_flower_extra_cap, ptr null, ptr null, ptr @nfp_flower_vnic_alloc, ptr null, ptr @nfp_flower_vnic_init, ptr @nfp_flower_vnic_clean, ptr null, ptr @nfp_flower_repr_netdev_preclean, ptr @nfp_flower_repr_netdev_clean, ptr @nfp_flower_repr_netdev_open, ptr @nfp_flower_repr_netdev_stop, ptr null, ptr @nfp_flower_repr_change_mtu, ptr null, ptr null, ptr null, ptr @nfp_flower_start, ptr @nfp_flower_stop, ptr @nfp_flower_netdev_event, ptr @nfp_flower_cmsg_rx, ptr null, ptr @nfp_flower_setup_tc, ptr null, ptr null, ptr @nfp_flower_sriov_enable, ptr @nfp_flower_sriov_disable, ptr @eswitch_mode_get, ptr null, ptr @nfp_flower_dev_get }, [48 x i8] zeroinitializer }, align 32
@nfp_repr_netdev_ops = external dso_local constant %struct.net_device_ops, align 4
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"openvswitch\00", [20 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@nfp_flower_non_repr_priv_lookup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/netronome/nfp/flower/main.c\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfp_flower_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.8, i32 747, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nfp: FlowerNIC requires eth table\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfp_flower_init\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_flower_init._entry_ptr = internal global ptr @nfp_flower_init._entry, section ".printk_index", align 4
@nfp_flower_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.8, i32 752, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nfp: FlowerNIC requires mac_stats BAR\0A\00", [57 x i8] zeroinitializer }, align 32
@nfp_flower_init._entry_ptr.16 = internal global ptr @nfp_flower_init._entry.14, section ".printk_index", align 4
@nfp_flower_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.8, i32 757, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nfp: FlowerNIC requires vf_cfg BAR\0A\00", [60 x i8] zeroinitializer }, align 32
@nfp_flower_init._entry_ptr.19 = internal global ptr @nfp_flower_init._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hw_flower_version\00", [46 x i8] zeroinitializer }, align 32
@nfp_flower_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.8, i32 763, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"nfp: FlowerNIC requires hw_flower_version memory symbol\0A\00", [39 x i8] zeroinitializer }, align 32
@nfp_flower_init._entry_ptr.23 = internal global ptr @nfp_flower_init._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CONFIG_FC_HOST_CTX_SPLIT\00", [39 x i8] zeroinitializer }, align 32
@nfp_flower_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.11, ptr @.str.8, i32 772, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"nfp: FlowerNIC: unsupported host context memory: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@nfp_flower_init._entry_ptr.27 = internal global ptr @nfp_flower_init._entry.25, section ".printk_index", align 4
@nfp_flower_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.11, ptr @.str.8, i32 780, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"nfp: FlowerNIC: invalid host context memory: %llu\0A\00", [45 x i8] zeroinitializer }, align 32
@nfp_flower_init._entry_ptr.30 = internal global ptr @nfp_flower_init._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CONFIG_FC_HOST_CTX_COUNT\00", [39 x i8] zeroinitializer }, align 32
@nfp_flower_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.11, ptr @.str.8, i32 789, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"nfp: FlowerNIC: unsupported host context count: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@nfp_flower_init._entry_ptr.34 = internal global ptr @nfp_flower_init._entry.32, section ".printk_index", align 4
@nfp_flower_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.11, ptr @.str.8, i32 796, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"nfp: FlowerNIC: unsupported firmware version\0A\00", [50 x i8] zeroinitializer }, align 32
@nfp_flower_init._entry_ptr.37 = internal global ptr @nfp_flower_init._entry.35, section ".printk_index", align 4
@nfp_flower_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&app_priv->cmsg_work)\00", [56 x i8] zeroinitializer }, align 32
@nfp_flower_init.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&app_priv->reify_wait_queue\00", [36 x i8] zeroinitializer }, align 32
@nfp_flower_init.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&app_priv->mtu_conf.wait_q\00", [37 x i8] zeroinitializer }, align 32
@nfp_flower_init.__key.43 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&app_priv->mtu_conf.lock\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"_abi_flower_extra_features\00", [37 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_abi_flower_host_mask\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"_abi_flower_balance_sync_enable\00", [32 x i8] zeroinitializer }, align 32
@nfp_flower_sync_feature_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.8, i32 714, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nfp: LAG not supported by FW.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nfp_flower_sync_feature_bits\00", [35 x i8] zeroinitializer }, align 32
@nfp_flower_sync_feature_bits._entry_ptr = internal global ptr @nfp_flower_sync_feature_bits._entry, section ".printk_index", align 4
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"_abi_flower_merge_hint_enable\00", [34 x i8] zeroinitializer }, align 32
@nfp_flower_sync_feature_bits._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.50, ptr @.str.8, i32 728, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nfp: Flow merge not supported by FW.\0A\00", [58 x i8] zeroinitializer }, align 32
@nfp_flower_sync_feature_bits._entry_ptr.54 = internal global ptr @nfp_flower_sync_feature_bits._entry.52, section ".printk_index", align 4
@nfp_flower_sync_feature_bits._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.50, ptr @.str.8, i32 733, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nfp: Flow mod/merge not supported by FW.\0A\00", [54 x i8] zeroinitializer }, align 32
@nfp_flower_sync_feature_bits._entry_ptr.57 = internal global ptr @nfp_flower_sync_feature_bits._entry.55, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"_abi_flower_combined_features_global\00", [59 x i8] zeroinitializer }, align 32
@nfp_flower_wait_host_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.8, i32 682, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"nfp: HOST_ACK bit not propagated in FW.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfp_flower_wait_host_bit\00", [39 x i8] zeroinitializer }, align 32
@nfp_flower_wait_host_bit._entry_ptr = internal global ptr @nfp_flower_wait_host_bit._entry, section ".printk_index", align 4
@nfp_flower_wait_host_bit._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.8, i32 690, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"nfp: Could not read global features entry from FW\0A\00", [45 x i8] zeroinitializer }, align 32
@nfp_flower_wait_host_bit._entry_ptr.63 = internal global ptr @nfp_flower_wait_host_bit._entry.61, section ".printk_index", align 4
@nfp_flower_internal_port_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&priv->internal_ports.lock\00", [37 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FLOWER\00", [25 x i8] zeroinitializer }, align 32
@nfp_flower_vnic_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.8, i32 604, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"nfp: FlowerNIC doesn't support more than one data vNIC\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfp_flower_vnic_alloc\00", [42 x i8] zeroinitializer }, align 32
@nfp_flower_vnic_alloc._entry_ptr = internal global ptr @nfp_flower_vnic_alloc._entry, section ".printk_index", align 4
@nfp_flower_spawn_phy_reprs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.8, i32 564, ptr @.str.71, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"nfp: Phys Port %d Representor(%s) created\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfp_flower_spawn_phy_reprs\00", [37 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nfp_flower_spawn_phy_reprs._entry_ptr = internal global ptr @nfp_flower_spawn_phy_reprs._entry, section ".printk_index", align 4
@nfp_flower_spawn_phy_reprs._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.70, ptr @.str.8, i32 580, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"nfp: Failed to notify firmware about repr creation\0A\00", [44 x i8] zeroinitializer }, align 32
@nfp_flower_spawn_phy_reprs._entry_ptr.74 = internal global ptr @nfp_flower_spawn_phy_reprs._entry.72, section ".printk_index", align 4
@nfp_flower_reprs_reify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.75 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@nfp_flower_wait_repr_reify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.8, i32 302, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nfp: Not all reprs responded to reify\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfp_flower_wait_repr_reify\00", [37 x i8] zeroinitializer }, align 32
@nfp_flower_wait_repr_reify._entry_ptr = internal global ptr @nfp_flower_wait_repr_reify._entry, section ".printk_index", align 4
@nfp_flower_spawn_vnic_reprs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.8, i32 447, ptr @.str.71, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nfp: %s%d Representor(%s) created\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nfp_flower_spawn_vnic_reprs\00", [36 x i8] zeroinitializer }, align 32
@nfp_flower_spawn_vnic_reprs._entry_ptr = internal global ptr @nfp_flower_spawn_vnic_reprs._entry, section ".printk_index", align 4
@.str.80 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PF\00", [29 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VF\00", [29 x i8] zeroinitializer }, align 32
@nfp_flower_spawn_vnic_reprs._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.79, ptr @.str.8, i32 456, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@nfp_flower_spawn_vnic_reprs._entry_ptr.83 = internal global ptr @nfp_flower_spawn_vnic_reprs._entry.82, section ".printk_index", align 4
@nfp_flower_repr_netdev_preclean._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.8, i32 350, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"nfp: Failed to notify firmware about repr destruction\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nfp_flower_repr_netdev_preclean\00", [32 x i8] zeroinitializer }, align 32
@nfp_flower_repr_netdev_preclean._entry_ptr = internal global ptr @nfp_flower_repr_netdev_preclean._entry, section ".printk_index", align 4
@nfp_flower_repr_change_mtu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.8, i32 897, ptr @.str.88, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"nfp: Physical port MTU setting not supported\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfp_flower_repr_change_mtu\00", [37 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nfp_flower_repr_change_mtu._entry_ptr = internal global ptr @nfp_flower_repr_change_mtu._entry, section ".printk_index", align 4
@nfp_flower_repr_change_mtu._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.87, ptr @.str.8, i32 923, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nfp: MTU change not verified with fw\0A\00", [58 x i8] zeroinitializer }, align 32
@nfp_flower_repr_change_mtu._entry_ptr.91 = internal global ptr @nfp_flower_repr_change_mtu._entry.89, section ".printk_index", align 4
@nfp_flower_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.92 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nfp_flower_dev_get.__warned.93 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 987, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant [11 x i8] c"app_flower\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 985, i32 27 }
@___asan_gen_.104 = private unnamed_addr constant [52 x i8] c"../drivers/net/ethernet/netronome/nfp/flower/main.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 387, i32 43 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 695, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 723, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 36, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 151, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 747, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 752, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 757, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 761, i32 45 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 763, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 767, i32 46 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 770, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 778, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 784, i32 47 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 787, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 796, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 811, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 812, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 814, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 815, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 823, i32 10 }
@___asan_gen_.227 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1984, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 699, i32 42 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 709, i32 6 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 714, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 722, i32 7 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 727, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 733, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 678, i32 7 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 681, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 689, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 136, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 378, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 30, i32 9 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 604, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 563, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 580, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 268, i32 10 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 302, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 445, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 456, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 350, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 897, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 923, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.377 = private constant [52 x i8] c"../drivers/net/ethernet/netronome/nfp/flower/main.c\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 251, i32 10 }
@llvm.compiler.used = appending global [116 x ptr] [ptr @nfp_flower_init._entry, ptr @nfp_flower_init._entry.14, ptr @nfp_flower_init._entry.17, ptr @nfp_flower_init._entry.21, ptr @nfp_flower_init._entry.25, ptr @nfp_flower_init._entry.28, ptr @nfp_flower_init._entry.32, ptr @nfp_flower_init._entry.35, ptr @nfp_flower_init._entry_ptr, ptr @nfp_flower_init._entry_ptr.16, ptr @nfp_flower_init._entry_ptr.19, ptr @nfp_flower_init._entry_ptr.23, ptr @nfp_flower_init._entry_ptr.27, ptr @nfp_flower_init._entry_ptr.30, ptr @nfp_flower_init._entry_ptr.34, ptr @nfp_flower_init._entry_ptr.37, ptr @nfp_flower_repr_change_mtu._entry, ptr @nfp_flower_repr_change_mtu._entry.89, ptr @nfp_flower_repr_change_mtu._entry_ptr, ptr @nfp_flower_repr_change_mtu._entry_ptr.91, ptr @nfp_flower_repr_netdev_preclean._entry, ptr @nfp_flower_repr_netdev_preclean._entry_ptr, ptr @nfp_flower_spawn_phy_reprs._entry, ptr @nfp_flower_spawn_phy_reprs._entry.72, ptr @nfp_flower_spawn_phy_reprs._entry_ptr, ptr @nfp_flower_spawn_phy_reprs._entry_ptr.74, ptr @nfp_flower_spawn_vnic_reprs._entry, ptr @nfp_flower_spawn_vnic_reprs._entry.82, ptr @nfp_flower_spawn_vnic_reprs._entry_ptr, ptr @nfp_flower_spawn_vnic_reprs._entry_ptr.83, ptr @nfp_flower_sync_feature_bits._entry, ptr @nfp_flower_sync_feature_bits._entry.52, ptr @nfp_flower_sync_feature_bits._entry.55, ptr @nfp_flower_sync_feature_bits._entry_ptr, ptr @nfp_flower_sync_feature_bits._entry_ptr.54, ptr @nfp_flower_sync_feature_bits._entry_ptr.57, ptr @nfp_flower_vnic_alloc._entry, ptr @nfp_flower_vnic_alloc._entry_ptr, ptr @nfp_flower_wait_host_bit._entry, ptr @nfp_flower_wait_host_bit._entry.61, ptr @nfp_flower_wait_host_bit._entry_ptr, ptr @nfp_flower_wait_host_bit._entry_ptr.63, ptr @nfp_flower_wait_repr_reify._entry, ptr @nfp_flower_wait_repr_reify._entry_ptr, ptr @.str, ptr @app_flower, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @nfp_flower_init.__key, ptr @.str.38, ptr @nfp_flower_init.__key.39, ptr @.str.40, ptr @nfp_flower_init.__key.41, ptr @.str.42, ptr @nfp_flower_init.__key.43, ptr @.str.44, ptr @.str.45, ptr @skb_queue_head_init.__key, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @nfp_flower_internal_port_init.__key, ptr @.str.64, ptr @xa_init_flags.__key, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @app_flower to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_init.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_init.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_init.__key.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_sync_feature_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_sync_feature_bits._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_sync_feature_bits._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_wait_host_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_wait_host_bit._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_internal_port_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_vnic_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_spawn_phy_reprs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_spawn_phy_reprs._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_wait_repr_reify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_spawn_vnic_reprs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_spawn_vnic_reprs._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_repr_netdev_preclean._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_repr_change_mtu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_repr_change_mtu._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_flower_get_port_id_from_netdev(ptr nocapture noundef readonly %app, ptr noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp eq ptr %1, @nfp_repr_netdev_ops
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dst.i = getelementptr i8, ptr %netdev, i32 2308
  %2 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst.i, align 4
  %u.i = getelementptr inbounds %struct.metadata_dst, ptr %3, i32 0, i32 2
  %port_id.i = getelementptr inbounds %struct.hw_port_info, ptr %u.i, i32 0, i32 1
  %4 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_id.i, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 4
  %flower_en_feats.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %flower_en_feats.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flower_en_feats.i, align 8
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.else.cleanup_crit_edge, label %if.end.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %rtnl_link_ops.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 136
  %11 = ptrtoint ptr %rtnl_link_ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rtnl_link_ops.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %nfp_flower_internal_port_can_offload.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

nfp_flower_internal_port_can_offload.exit:        ; preds = %if.end.i
  %kind.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %kind.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(12) @.str.1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.then3, label %nfp_flower_internal_port_can_offload.exit.cleanup_crit_edge

nfp_flower_internal_port_can_offload.exit.cleanup_crit_edge: ; preds = %nfp_flower_internal_port_can_offload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %nfp_flower_internal_port_can_offload.exit
  %call.i14 = tail call fastcc i32 @nfp_flower_lookup_internal_port_id(ptr noundef %7, ptr noundef %netdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %cmp.i15 = icmp sgt i32 %call.i14, 0
  br i1 %cmp.i15, label %if.then3.if.end_crit_edge, label %nfp_flower_get_internal_port_id.exit

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

nfp_flower_get_internal_port_id.exit:             ; preds = %if.then3
  tail call void @idr_preload(i32 noundef 2592) #12
  %internal_ports.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %7, i32 0, i32 26
  %lock.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %7, i32 0, i32 26, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  %call3.i = tail call i32 @idr_alloc(ptr noundef %internal_ports.i, ptr noundef %netdev, i32 noundef 1, i32 noundef 256, i32 noundef 2592) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  %15 = tail call i32 @llvm.read_register.i32(metadata !170) #12
  %and.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %20, ptrtoint (ptr @radix_tree_preloads to i32)
  %21 = inttoptr i32 %add.i.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %21) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !180
  %22 = tail call i32 @llvm.read_register.i32(metadata !170) #12
  %and.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp slt i32 %call3.i, 0
  br i1 %cmp, label %nfp_flower_get_internal_port_id.exit.cleanup_crit_edge, label %nfp_flower_get_internal_port_id.exit.if.end_crit_edge

nfp_flower_get_internal_port_id.exit.if.end_crit_edge: ; preds = %nfp_flower_get_internal_port_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

nfp_flower_get_internal_port_id.exit.cleanup_crit_edge: ; preds = %nfp_flower_get_internal_port_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %nfp_flower_get_internal_port_id.exit.if.end_crit_edge, %if.then3.if.end_crit_edge
  %retval.0.i1721 = phi i32 [ %call3.i, %nfp_flower_get_internal_port_id.exit.if.end_crit_edge ], [ %call.i14, %if.then3.if.end_crit_edge ]
  %conv9.i = and i32 %retval.0.i1721, 255
  %or.i = or i32 %conv9.i, 805306368
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nfp_flower_get_internal_port_id.exit.cleanup_crit_edge, %nfp_flower_internal_port_can_offload.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %or.i, %if.end ], [ 0, %nfp_flower_get_internal_port_id.exit.cleanup_crit_edge ], [ 0, %nfp_flower_internal_port_can_offload.exit.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__nfp_flower_non_repr_priv_get(ptr nocapture noundef %non_repr_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ref_count = getelementptr inbounds %struct.nfp_flower_non_repr_priv, ptr %non_repr_priv, i32 0, i32 2
  %0 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref_count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %ref_count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_flower_non_repr_priv_get(ptr nocapture noundef readonly %app, ptr noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %call.i = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.if.end31.i_crit_edge

entry.if.end31.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

land.rhs.i:                                       ; preds = %entry
  %.b59.i = load i1, ptr @nfp_flower_non_repr_priv_lookup.__already_done, align 1
  br i1 %.b59.i, label %land.rhs.i.if.end31.i_crit_edge, label %if.then.i, !prof !181

land.rhs.i.if.end31.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nfp_flower_non_repr_priv_lookup.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 151, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 151) #12
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end31.i_crit_edge, %entry.if.end31.i_crit_edge
  %non_repr_priv.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 23
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end31.i
  %entry2.0.in.i = phi ptr [ %non_repr_priv.i, %if.end31.i ], [ %entry2.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %entry2.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %entry2.0.i = load ptr, ptr %entry2.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %entry2.0.i, %non_repr_priv.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %netdev43.i = getelementptr inbounds %struct.nfp_flower_non_repr_priv, ptr %entry2.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %netdev43.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev43.i, align 4
  %cmp44.i = icmp eq ptr %4, %netdev
  br i1 %cmp44.i, label %nfp_flower_non_repr_priv_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

nfp_flower_non_repr_priv_lookup.exit:             ; preds = %for.body.i
  %tobool.not = icmp eq ptr %entry2.0.i, null
  br i1 %tobool.not, label %nfp_flower_non_repr_priv_lookup.exit.if.end_crit_edge, label %nfp_flower_non_repr_priv_lookup.exit.inc_ref_crit_edge

nfp_flower_non_repr_priv_lookup.exit.inc_ref_crit_edge: ; preds = %nfp_flower_non_repr_priv_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %inc_ref

nfp_flower_non_repr_priv_lookup.exit.if.end_crit_edge: ; preds = %nfp_flower_non_repr_priv_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %nfp_flower_non_repr_priv_lookup.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 24) #16
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %netdev7 = getelementptr inbounds %struct.nfp_flower_non_repr_priv, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %netdev7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %netdev, ptr %netdev7, align 8
  %7 = ptrtoint ptr %non_repr_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %non_repr_priv.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %non_repr_priv.i, ptr noundef %8) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end6.inc_ref_crit_edge

if.end6.inc_ref_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %inc_ref

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %non_repr_priv.i, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %non_repr_priv.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call7.i.i, ptr %non_repr_priv.i, align 4
  br label %inc_ref

inc_ref:                                          ; preds = %if.end.i.i, %if.end6.inc_ref_crit_edge, %nfp_flower_non_repr_priv_lookup.exit.inc_ref_crit_edge
  %entry2.0 = phi ptr [ %entry2.0.i, %nfp_flower_non_repr_priv_lookup.exit.inc_ref_crit_edge ], [ %call7.i.i, %if.end6.inc_ref_crit_edge ], [ %call7.i.i, %if.end.i.i ]
  %ref_count.i = getelementptr inbounds %struct.nfp_flower_non_repr_priv, ptr %entry2.0, i32 0, i32 2
  %13 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ref_count.i, align 4
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %ref_count.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %inc_ref, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %entry2.0, %inc_ref ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__nfp_flower_non_repr_priv_put(ptr noundef %non_repr_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ref_count = getelementptr inbounds %struct.nfp_flower_non_repr_priv, ptr %non_repr_priv, i32 0, i32 2
  %0 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref_count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %non_repr_priv) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %non_repr_priv, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %non_repr_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %non_repr_priv, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %non_repr_priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %non_repr_priv, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %non_repr_priv, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %non_repr_priv) #12
  br label %return

return:                                           ; preds = %list_del.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_flower_non_repr_priv_put(ptr nocapture noundef readonly %app, ptr noundef readnone %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 4
  %call.i = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.if.end31.i_crit_edge

entry.if.end31.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

land.rhs.i:                                       ; preds = %entry
  %.b59.i = load i1, ptr @nfp_flower_non_repr_priv_lookup.__already_done, align 1
  br i1 %.b59.i, label %land.rhs.i.if.end31.i_crit_edge, label %if.then.i, !prof !181

land.rhs.i.if.end31.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nfp_flower_non_repr_priv_lookup.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 151, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 151) #12
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end31.i_crit_edge, %entry.if.end31.i_crit_edge
  %non_repr_priv.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 23
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end31.i
  %entry2.0.in.i = phi ptr [ %non_repr_priv.i, %if.end31.i ], [ %entry2.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %entry2.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %entry2.0.i = load ptr, ptr %entry2.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %entry2.0.i, %non_repr_priv.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %netdev43.i = getelementptr inbounds %struct.nfp_flower_non_repr_priv, ptr %entry2.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %netdev43.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev43.i, align 4
  %cmp44.i = icmp eq ptr %4, %netdev
  br i1 %cmp44.i, label %nfp_flower_non_repr_priv_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

nfp_flower_non_repr_priv_lookup.exit:             ; preds = %for.body.i
  %tobool.not = icmp eq ptr %entry2.0.i, null
  br i1 %tobool.not, label %nfp_flower_non_repr_priv_lookup.exit.cleanup_crit_edge, label %if.end

nfp_flower_non_repr_priv_lookup.exit.cleanup_crit_edge: ; preds = %nfp_flower_non_repr_priv_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %nfp_flower_non_repr_priv_lookup.exit
  %ref_count.i = getelementptr inbounds %struct.nfp_flower_non_repr_priv, ptr %entry2.0.i, i32 0, i32 2
  %5 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ref_count.i, align 4
  %dec.i = add i32 %6, -1
  store i32 %dec.i, ptr %ref_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i3 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i3, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %entry2.0.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry2.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %entry2.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entry2.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %13 = ptrtoint ptr %entry2.0.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %entry2.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry2.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %entry2.0.i) #12
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i, %if.end.cleanup_crit_edge, %nfp_flower_non_repr_priv_lookup.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_flower_init(ptr noundef %app) #0 align 64 {
entry:
  %err.i.i = alloca i32, align 4
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pf1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 1
  %0 = ptrtoint ptr %pf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #12
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %err, align 4, !annotation !182
  %eth_tbl = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %eth_tbl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %eth_tbl, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %5 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cpp, align 4
  %call = tail call ptr @nfp_cpp_device(ptr noundef %6) #12
  %parent = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.10) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac_stats_bar = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %mac_stats_bar to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mac_stats_bar, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %do.end6, label %if.end10

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %cpp7 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %11 = ptrtoint ptr %cpp7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpp7, align 4
  %call8 = tail call ptr @nfp_cpp_device(ptr noundef %12) #12
  %parent9 = getelementptr inbounds %struct.device, ptr %call8, i32 0, i32 1
  %13 = ptrtoint ptr %parent9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent9, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.15) #17
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %vf_cfg_bar = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %vf_cfg_bar to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vf_cfg_bar, align 4
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %do.end15, label %if.end19

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %cpp16 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %17 = ptrtoint ptr %cpp16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cpp16, align 4
  %call17 = tail call ptr @nfp_cpp_device(ptr noundef %18) #12
  %parent18 = getelementptr inbounds %struct.device, ptr %call17, i32 0, i32 1
  %19 = ptrtoint ptr %parent18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent18, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.18) #17
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %rtbl = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 20
  %21 = ptrtoint ptr %rtbl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rtbl, align 4
  %call21 = call i64 @nfp_rtsym_read_le(ptr noundef %22, ptr noundef nonnull @.str.20, ptr noundef nonnull %err) #12
  %23 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool22.not = icmp eq i32 %24, 0
  br i1 %tobool22.not, label %if.end30, label %do.end26

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %cpp27 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %25 = ptrtoint ptr %cpp27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cpp27, align 4
  %call28 = call ptr @nfp_cpp_device(ptr noundef %26) #12
  %parent29 = getelementptr inbounds %struct.device, ptr %call28, i32 0, i32 1
  %27 = ptrtoint ptr %parent29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent29, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.22) #17
  %29 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %err, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.end19
  %31 = ptrtoint ptr %pf1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pf1, align 4
  %rtbl32 = getelementptr inbounds %struct.nfp_pf, ptr %32, i32 0, i32 20
  %33 = ptrtoint ptr %rtbl32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rtbl32, align 4
  %call33 = call i64 @nfp_rtsym_read_le(ptr noundef %34, ptr noundef nonnull @.str.24, ptr noundef nonnull %err) #12
  %35 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool34.not = icmp eq i32 %36, 0
  br i1 %tobool34.not, label %do.end57, label %do.end57.thread

do.end57.thread:                                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %cpp39 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %37 = ptrtoint ptr %cpp39 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cpp39, align 4
  %call40 = call ptr @nfp_cpp_device(ptr noundef %38) #12
  %parent41 = getelementptr inbounds %struct.device, ptr %call40, i32 0, i32 1
  %39 = ptrtoint ptr %parent41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent41, align 8
  %41 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %err, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.26, i32 noundef %42) #17
  %43 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %err, align 4
  br label %if.end68

do.end57:                                         ; preds = %if.end30
  %conv = trunc i64 %call33 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call33)
  %tobool60.not = icmp eq i64 %call33, 0
  br i1 %tobool60.not, label %do.end64, label %do.end57.if.end68_crit_edge

do.end57.if.end68_crit_edge:                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

do.end64:                                         ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #14
  %cpp65 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %44 = ptrtoint ptr %cpp65 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cpp65, align 4
  %call66 = call ptr @nfp_cpp_device(ptr noundef %45) #12
  %parent67 = getelementptr inbounds %struct.device, ptr %call66, i32 0, i32 1
  %46 = ptrtoint ptr %parent67 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %parent67, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.29, i64 noundef 0) #17
  br label %cleanup

if.end68:                                         ; preds = %do.end57.if.end68_crit_edge, %do.end57.thread
  %conv239 = phi i32 [ 1, %do.end57.thread ], [ %conv, %do.end57.if.end68_crit_edge ]
  %48 = ptrtoint ptr %pf1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pf1, align 4
  %rtbl70 = getelementptr inbounds %struct.nfp_pf, ptr %49, i32 0, i32 20
  %50 = ptrtoint ptr %rtbl70 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rtbl70, align 4
  %call71 = call i64 @nfp_rtsym_read_le(ptr noundef %51, ptr noundef nonnull @.str.31, ptr noundef nonnull %err) #12
  %52 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool72.not = icmp eq i32 %53, 0
  br i1 %tobool72.not, label %if.end68.if.end80_crit_edge, label %do.end76

if.end68.if.end80_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

do.end76:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  %cpp77 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %54 = ptrtoint ptr %cpp77 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cpp77, align 4
  %call78 = call ptr @nfp_cpp_device(ptr noundef %55) #12
  %parent79 = getelementptr inbounds %struct.device, ptr %call78, i32 0, i32 1
  %56 = ptrtoint ptr %parent79 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %parent79, align 8
  %58 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %err, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %57, ptr noundef nonnull @.str.33, i32 noundef %59) #17
  %60 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %err, align 4
  br label %if.end80

if.end80:                                         ; preds = %do.end76, %if.end68.if.end80_crit_edge
  %ctx_count.0 = phi i64 [ 131072, %do.end76 ], [ %call71, %if.end68.if.end80_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976776192, i64 %call21)
  %cmp.not = icmp eq i64 %call21, 281474976776192
  br i1 %cmp.not, label %if.end89, label %do.end85

do.end85:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  %cpp86 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %61 = ptrtoint ptr %cpp86 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cpp86, align 4
  %call87 = call ptr @nfp_cpp_device(ptr noundef %62) #12
  %parent88 = getelementptr inbounds %struct.device, ptr %call87, i32 0, i32 1
  %63 = ptrtoint ptr %parent88 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %parent88, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %64, ptr noundef nonnull @.str.36) #17
  br label %cleanup

if.end89:                                         ; preds = %if.end80
  %call90 = call noalias ptr @vzalloc(i32 noundef 6888) #18
  %tobool91.not = icmp eq ptr %call90, null
  br i1 %tobool91.not, label %if.end89.cleanup_crit_edge, label %if.end93

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end93:                                         ; preds = %if.end89
  %total_mem_units = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 25
  %65 = ptrtoint ptr %total_mem_units to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv239, ptr %total_mem_units, align 8
  %active_mem_unit = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 24
  %66 = ptrtoint ptr %active_mem_unit to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %active_mem_unit, align 4
  %conv115 = trunc i64 %ctx_count.0 to i32
  %sub.i228 = add i32 %conv115, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i228)
  %tobool.not.i.i.i = icmp eq i32 %sub.i228, 0
  %67 = call i32 @llvm.ctlz.i32(i32 %sub.i228, i1 true) #12, !range !183
  %sub.i.i.i = sub nuw nsw i32 32, %67
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  %stats_ring_size = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 9
  %68 = ptrtoint ptr %stats_ring_size to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %shl.i, ptr %stats_ring_size, align 4
  %priv = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %69 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call90, ptr %priv, align 4
  %70 = ptrtoint ptr %call90 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %app, ptr %call90, align 8
  %cmsg_skbs_high = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 15
  %lock.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 15, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #12
  %71 = ptrtoint ptr %cmsg_skbs_high to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %cmsg_skbs_high, ptr %cmsg_skbs_high, align 4
  %prev.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 15, i32 0, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %cmsg_skbs_high, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 15, i32 1
  %73 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %qlen.i.i, align 4
  %cmsg_skbs_low = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 16
  %lock.i229 = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 16, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i229, ptr noundef nonnull @.str.46, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #12
  %74 = ptrtoint ptr %cmsg_skbs_low to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %cmsg_skbs_low, ptr %cmsg_skbs_low, align 4
  %prev.i.i230 = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 16, i32 0, i32 0, i32 1
  %75 = ptrtoint ptr %prev.i.i230 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %cmsg_skbs_low, ptr %prev.i.i230, align 4
  %qlen.i.i231 = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 16, i32 1
  %76 = ptrtoint ptr %qlen.i.i231 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %qlen.i.i231, align 4
  %cmsg_work = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 14
  call void @__init_work(ptr noundef %cmsg_work, i32 noundef 0) #12
  %77 = ptrtoint ptr %cmsg_work to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -64, ptr %cmsg_work, align 8
  %lockdep_map = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 14, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @nfp_flower_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry124 = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 14, i32 1
  %78 = ptrtoint ptr %entry124 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %entry124, ptr %entry124, align 4
  %prev.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 14, i32 1, i32 1
  %79 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %entry124, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 14, i32 2
  %80 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @nfp_flower_cmsg_process_rx, ptr %func, align 4
  %reify_wait_queue = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 19
  call void @__init_waitqueue_head(ptr noundef %reify_wait_queue, ptr noundef nonnull @.str.40, ptr noundef nonnull @nfp_flower_init.__key.39) #12
  %wait_q = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 20, i32 3
  call void @__init_waitqueue_head(ptr noundef %wait_q, ptr noundef nonnull @.str.42, ptr noundef nonnull @nfp_flower_init.__key.41) #12
  %lock = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 20, i32 4
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.44, ptr noundef nonnull @nfp_flower_init.__key.43, i16 noundef signext 3) #12
  %call140 = call i32 @nfp_flower_metadata_init(ptr noundef %app, i64 noundef %ctx_count.0, i32 noundef %conv239) #12
  %81 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call140, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end143, label %if.end93.err_free_app_priv_crit_edge

if.end93.err_free_app_priv_crit_edge:             ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_app_priv

if.end143:                                        ; preds = %if.end93
  %82 = ptrtoint ptr %pf1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pf1, align 4
  %rtbl145 = getelementptr inbounds %struct.nfp_pf, ptr %83, i32 0, i32 20
  %84 = ptrtoint ptr %rtbl145 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rtbl145, align 4
  %call146 = call i64 @nfp_rtsym_read_le(ptr noundef %85, ptr noundef nonnull @.str.45, ptr noundef nonnull %err) #12
  %86 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool147.not = icmp eq i32 %87, 0
  %and149 = and i64 %call146, 1023
  %spec.select = select i1 %tobool147.not, i64 %and149, i64 0
  %88 = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %spec.select, ptr %88, align 8
  %90 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %priv, align 4
  %92 = ptrtoint ptr %pf1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pf1, align 4
  %rtbl.i = getelementptr inbounds %struct.nfp_pf, ptr %93, i32 0, i32 20
  %94 = ptrtoint ptr %rtbl.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rtbl.i, align 4
  %flower_ext_feats.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %91, i32 0, i32 4
  %96 = ptrtoint ptr %flower_ext_feats.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %flower_ext_feats.i, align 8
  %or.i = or i64 %97, 2147483648
  %call.i = call i32 @nfp_rtsym_write_le(ptr noundef %95, ptr noundef nonnull @.str.47, i64 noundef %or.i) #12
  %98 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %if.end143.nfp_flower_sync_feature_bits.exit_crit_edge [
    i32 0, label %if.then.i
    i32 -2, label %if.end143.if.end2.i_crit_edge
  ]

if.end143.if.end2.i_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i

if.end143.nfp_flower_sync_feature_bits.exit_crit_edge: ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_flower_sync_feature_bits.exit

if.then.i:                                        ; preds = %if.end143
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i.i) #12
  %99 = ptrtoint ptr %err.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %err.i.i, align 4, !annotation !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %100 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -10, %100
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i233.do.body.i.i_crit_edge, %if.then.i
  %101 = ptrtoint ptr %pf1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pf1, align 4
  %rtbl.i.i = getelementptr inbounds %struct.nfp_pf, ptr %102, i32 0, i32 20
  %103 = ptrtoint ptr %rtbl.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rtbl.i.i, align 4
  %call1.i.i = call i64 @nfp_rtsym_read_le(ptr noundef %104, ptr noundef nonnull @.str.58, ptr noundef nonnull %err.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %105 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %105
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i233

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %cpp.i.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %106 = ptrtoint ptr %cpp.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cpp.i.i, align 4
  %call3.i.i = call ptr @nfp_cpp_device(ptr noundef %107) #12
  %parent.i.i = getelementptr inbounds %struct.device, ptr %call3.i.i, i32 0, i32 1
  %108 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %parent.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %109, ptr noundef nonnull @.str.59) #17
  %110 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %.pr.i.i = load i32, ptr %err.i.i, align 4
  br label %do.end6.i.i

if.end.i.i233:                                    ; preds = %do.body.i.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  %111 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool.not.i.i232 = icmp eq i32 %112, 0
  %and.i.i = and i64 %call1.i.i, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool5.not.i.i = icmp eq i64 %and.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i232, i1 %tobool5.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i.i233.do.body.i.i_crit_edge, label %if.end.i.i233.do.end6.i.i_crit_edge

if.end.i.i233.do.end6.i.i_crit_edge:              ; preds = %if.end.i.i233
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6.i.i

if.end.i.i233.do.body.i.i_crit_edge:              ; preds = %if.end.i.i233
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

do.end6.i.i:                                      ; preds = %if.end.i.i233.do.end6.i.i_crit_edge, %do.end.i.i
  %113 = phi i32 [ %.pr.i.i, %do.end.i.i ], [ %112, %if.end.i.i233.do.end6.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool7.not.i.i = icmp eq i32 %113, 0
  br i1 %tobool7.not.i.i, label %do.end6.i.i.nfp_flower_wait_host_bit.exit.i_crit_edge, label %do.end11.i.i

do.end6.i.i.nfp_flower_wait_host_bit.exit.i_crit_edge: ; preds = %do.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_flower_wait_host_bit.exit.i

do.end11.i.i:                                     ; preds = %do.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %cpp12.i.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %114 = ptrtoint ptr %cpp12.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cpp12.i.i, align 4
  %call13.i.i = call ptr @nfp_cpp_device(ptr noundef %115) #12
  %parent14.i.i = getelementptr inbounds %struct.device, ptr %call13.i.i, i32 0, i32 1
  %116 = ptrtoint ptr %parent14.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %parent14.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %117, ptr noundef nonnull @.str.62) #17
  br label %nfp_flower_wait_host_bit.exit.i

nfp_flower_wait_host_bit.exit.i:                  ; preds = %do.end11.i.i, %do.end6.i.i.nfp_flower_wait_host_bit.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i.i) #12
  br label %if.end2.i

if.end2.i:                                        ; preds = %nfp_flower_wait_host_bit.exit.i, %if.end143.if.end2.i_crit_edge
  %118 = ptrtoint ptr %pf1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pf1, align 4
  %rtbl4.i = getelementptr inbounds %struct.nfp_pf, ptr %119, i32 0, i32 20
  %120 = ptrtoint ptr %rtbl4.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rtbl4.i, align 4
  %call5.i = call i32 @nfp_rtsym_write_le(ptr noundef %121, ptr noundef nonnull @.str.48, i64 noundef 1) #12
  %122 = zext i32 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %call5.i, label %if.end2.i.nfp_flower_sync_feature_bits.exit_crit_edge [
    i32 0, label %if.then7.i
    i32 -2, label %do.end.i
  ]

if.end2.i.nfp_flower_sync_feature_bits.exit_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_flower_sync_feature_bits.exit

if.then7.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  %flower_en_feats.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %91, i32 0, i32 5
  %123 = ptrtoint ptr %flower_en_feats.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %flower_en_feats.i, align 8
  %125 = or i8 %124, 2
  store i8 %125, ptr %flower_en_feats.i, align 8
  %nfp_lag.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %91, i32 0, i32 21
  call void @nfp_flower_lag_init(ptr noundef %nfp_lag.i) #12
  br label %if.end17.i

do.end.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  %cpp.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %126 = ptrtoint ptr %cpp.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cpp.i, align 4
  %call14.i = call ptr @nfp_cpp_device(ptr noundef %127) #12
  %parent.i = getelementptr inbounds %struct.device, ptr %call14.i, i32 0, i32 1
  %128 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %parent.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %129, ptr noundef nonnull @.str.49) #17
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end.i, %if.then7.i
  %130 = ptrtoint ptr %flower_ext_feats.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %flower_ext_feats.i, align 8
  %and.i = and i64 %131, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool19.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool19.not.i, label %do.end46.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end17.i
  %132 = ptrtoint ptr %pf1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pf1, align 4
  %rtbl22.i = getelementptr inbounds %struct.nfp_pf, ptr %133, i32 0, i32 20
  %134 = ptrtoint ptr %rtbl22.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rtbl22.i, align 4
  %call23.i = call i32 @nfp_rtsym_write_le(ptr noundef %135, ptr noundef nonnull @.str.51, i64 noundef 1) #12
  %136 = zext i32 %call23.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %call23.i, label %if.then20.i.nfp_flower_sync_feature_bits.exit_crit_edge [
    i32 0, label %if.then25.i
    i32 -2, label %do.end36.i
  ]

if.then20.i.nfp_flower_sync_feature_bits.exit_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_flower_sync_feature_bits.exit

if.then25.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #14
  %flower_en_feats26.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %91, i32 0, i32 5
  %137 = ptrtoint ptr %flower_en_feats26.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %flower_en_feats26.i, align 8
  %139 = or i8 %138, 1
  store i8 %139, ptr %flower_en_feats26.i, align 8
  %internal_ports.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %91, i32 0, i32 26
  %lock.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %91, i32 0, i32 26, i32 1
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.64, ptr noundef nonnull @nfp_flower_internal_port_init.__key, i16 noundef signext 3) #12
  call void @__raw_spin_lock_init(ptr noundef %internal_ports.i.i, ptr noundef nonnull @.str.65, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #12
  %xa_flags.i.i.i.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %91, i32 0, i32 26, i32 0, i32 0, i32 1
  %140 = ptrtoint ptr %xa_flags.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 67108868, ptr %xa_flags.i.i.i.i.i, align 4
  %xa_head.i.i.i.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %91, i32 0, i32 26, i32 0, i32 0, i32 2
  %141 = ptrtoint ptr %xa_head.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr null, ptr %xa_head.i.i.i.i.i, align 4
  %idr_base.i.i.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %91, i32 0, i32 26, i32 0, i32 1
  %142 = ptrtoint ptr %idr_base.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %idr_base.i.i.i.i, align 4
  %idr_next.i.i.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %91, i32 0, i32 26, i32 0, i32 2
  %143 = ptrtoint ptr %idr_next.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %idr_next.i.i.i.i, align 4
  br label %nfp_flower_sync_feature_bits.exit.thread

do.end36.i:                                       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #14
  %cpp37.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %144 = ptrtoint ptr %cpp37.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cpp37.i, align 4
  %call38.i = call ptr @nfp_cpp_device(ptr noundef %145) #12
  %parent39.i = getelementptr inbounds %struct.device, ptr %call38.i, i32 0, i32 1
  %146 = ptrtoint ptr %parent39.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %parent39.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %147, ptr noundef nonnull @.str.53) #17
  br label %nfp_flower_sync_feature_bits.exit.thread

do.end46.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  %cpp47.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %148 = ptrtoint ptr %cpp47.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %cpp47.i, align 4
  %call48.i = call ptr @nfp_cpp_device(ptr noundef %149) #12
  %parent49.i = getelementptr inbounds %struct.device, ptr %call48.i, i32 0, i32 1
  %150 = ptrtoint ptr %parent49.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %parent49.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %151, ptr noundef nonnull @.str.56) #17
  br label %nfp_flower_sync_feature_bits.exit.thread

nfp_flower_sync_feature_bits.exit.thread:         ; preds = %do.end46.i, %do.end36.i, %if.then25.i
  %152 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %err, align 4
  br label %if.end155

nfp_flower_sync_feature_bits.exit:                ; preds = %if.then20.i.nfp_flower_sync_feature_bits.exit_crit_edge, %if.end2.i.nfp_flower_sync_feature_bits.exit_crit_edge, %if.end143.nfp_flower_sync_feature_bits.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end143.nfp_flower_sync_feature_bits.exit_crit_edge ], [ %call5.i, %if.end2.i.nfp_flower_sync_feature_bits.exit_crit_edge ], [ %call23.i, %if.then20.i.nfp_flower_sync_feature_bits.exit_crit_edge ]
  %153 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %retval.0.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool153.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool153.not, label %nfp_flower_sync_feature_bits.exit.if.end155_crit_edge, label %err_cleanup

nfp_flower_sync_feature_bits.exit.if.end155_crit_edge: ; preds = %nfp_flower_sync_feature_bits.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end155

if.end155:                                        ; preds = %nfp_flower_sync_feature_bits.exit.if.end155_crit_edge, %nfp_flower_sync_feature_bits.exit.thread
  %154 = ptrtoint ptr %88 to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %88, align 8
  %and157 = and i64 %155, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and157)
  %tobool158.not = icmp eq i64 %and157, 0
  br i1 %tobool158.not, label %if.end155.if.end160_crit_edge, label %if.then159

if.end155.if.end160_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end160

if.then159:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #14
  call void @nfp_flower_qos_init(ptr noundef %app) #12
  br label %if.end160

if.end160:                                        ; preds = %if.then159, %if.end155.if.end160_crit_edge
  %indr_block_cb_priv = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 22
  %156 = ptrtoint ptr %indr_block_cb_priv to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile ptr %indr_block_cb_priv, ptr %indr_block_cb_priv, align 4
  %prev.i234 = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 22, i32 1
  %157 = ptrtoint ptr %prev.i234 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %indr_block_cb_priv, ptr %prev.i234, align 4
  %non_repr_priv = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 23
  %158 = ptrtoint ptr %non_repr_priv to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile ptr %non_repr_priv, ptr %non_repr_priv, align 4
  %prev.i235 = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 23, i32 1
  %159 = ptrtoint ptr %prev.i235 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %non_repr_priv, ptr %prev.i235, align 4
  %pre_tun_rule_cnt = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 30
  %160 = ptrtoint ptr %pre_tun_rule_cnt to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %pre_tun_rule_cnt, align 8
  br label %cleanup

err_cleanup:                                      ; preds = %nfp_flower_sync_feature_bits.exit
  %flower_en_feats = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 5
  %161 = ptrtoint ptr %flower_en_feats to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %flower_en_feats, align 8
  %163 = and i8 %162, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool163.not = icmp eq i8 %163, 0
  br i1 %tobool163.not, label %err_cleanup.if.end165_crit_edge, label %if.then164

err_cleanup.if.end165_crit_edge:                  ; preds = %err_cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end165

if.then164:                                       ; preds = %err_cleanup
  call void @__sanitizer_cov_trace_pc() #14
  %nfp_lag = getelementptr inbounds %struct.nfp_flower_priv, ptr %call90, i32 0, i32 21
  call void @nfp_flower_lag_cleanup(ptr noundef %nfp_lag) #12
  br label %if.end165

if.end165:                                        ; preds = %if.then164, %err_cleanup.if.end165_crit_edge
  call void @nfp_flower_metadata_cleanup(ptr noundef %app) #12
  br label %err_free_app_priv

err_free_app_priv:                                ; preds = %if.end165, %if.end93.err_free_app_priv_crit_edge
  %164 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %priv, align 4
  call void @vfree(ptr noundef %165) #12
  %166 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_free_app_priv, %if.end160, %if.end89.cleanup_crit_edge, %do.end85, %do.end64, %do.end26, %do.end15, %do.end6, %do.end
  %retval.0 = phi i32 [ %30, %do.end26 ], [ -22, %do.end85 ], [ %167, %err_free_app_priv ], [ 0, %if.end160 ], [ -22, %do.end64 ], [ -22, %do.end15 ], [ -22, %do.end6 ], [ -22, %do.end ], [ -12, %if.end89.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_flower_clean(ptr noundef %app) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %cmsg_skbs_high = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 15
  tail call void @skb_queue_purge(ptr noundef %cmsg_skbs_high) #12
  %cmsg_skbs_low = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 16
  tail call void @skb_queue_purge(ptr noundef %cmsg_skbs_low) #12
  %cmsg_work = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 14
  %call = tail call zeroext i1 @flush_work(ptr noundef %cmsg_work) #12
  %flower_ext_feats = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flower_ext_feats to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %flower_ext_feats, align 8
  %and = and i64 %3, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nfp_flower_qos_cleanup(ptr noundef %app) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flower_en_feats = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %flower_en_feats to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flower_en_feats, align 8
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %nfp_lag = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 21
  tail call void @nfp_flower_lag_cleanup(ptr noundef %nfp_lag) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %7 = ptrtoint ptr %flower_en_feats to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flower_en_feats, align 8
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not = icmp eq i8 %9, 0
  br i1 %tobool8.not, label %if.end4.if.end10_crit_edge, label %if.then9

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %internal_ports.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 26
  tail call void @idr_destroy(ptr noundef %internal_ports.i) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end4.if.end10_crit_edge
  tail call void @nfp_flower_metadata_cleanup(ptr noundef %app) #12
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  tail call void @vfree(ptr noundef %11) #12
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %priv, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @nfp_flower_extra_cap(ptr nocapture noundef readnone %app, ptr nocapture noundef readnone %nn) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.66
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_flower_vnic_alloc(ptr noundef %app, ptr nocapture noundef %nn, i32 noundef %id) #0 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp.not = icmp eq i32 %id, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %0 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpp, align 4
  %call = tail call ptr @nfp_cpp_device(ptr noundef %1) #12
  %parent = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.67) #17
  %netdev4 = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 1
  %4 = ptrtoint ptr %netdev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev4, align 4
  %call5 = tail call ptr @nfp_port_alloc(ptr noundef %app, i32 noundef 0, ptr noundef %5) #12
  %port = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 57
  %6 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %port, align 4
  %cmp.i.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  %7 = ptrtoint ptr %call5 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %7, i32 0
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %netdev = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 1
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #12
  %10 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #12
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %addr.i, align 1
  %13 = and i8 %12, -4
  %14 = or i8 %13, 2
  store i8 %14, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #12
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 55
  %15 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #12
  %16 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %19, -131105
  store i64 %and.i, ptr %priv_flags.i, align 16
  %vnic_no_name = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 56
  %20 = ptrtoint ptr %vnic_no_name to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %vnic_no_name, align 128
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %spec.select.i, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_flower_vnic_init(ptr noundef %app, ptr noundef %nn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %nn2 = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nn2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %nn, ptr %nn2, align 4
  %3 = load ptr, ptr %priv1, align 4
  %pf.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 1
  %4 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pf.i, align 4
  %eth_tbl1.i = getelementptr inbounds %struct.nfp_pf, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %eth_tbl1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eth_tbl1.i, align 4
  %reify_replies.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %call.i = tail call ptr @nfp_flower_cmsg_mac_repr_start(ptr noundef %app, i32 noundef %9) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.err_clear_nn_crit_edge, label %if.end.i

entry.err_clear_nn_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_clear_nn

if.end.i:                                         ; preds = %entry
  %max_index.i = getelementptr inbounds %struct.nfp_eth_table, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %max_index.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_index.i, align 4
  %add.i = add i32 %11, 1
  %call2.i = tail call ptr @nfp_reprs_alloc(i32 noundef %add.i) #12
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %nfp_flower_spawn_phy_reprs.exit.thread36, label %for.cond.preheader.i

nfp_flower_spawn_phy_reprs.exit.thread36:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #12
  br label %err_clear_nn

for.cond.preheader.i:                             ; preds = %if.end.i
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp163.not.i = icmp eq i32 %13, 0
  br i1 %cmp163.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %nn.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %3, i32 0, i32 1
  %cpp.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0164.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %index.i = getelementptr %struct.nfp_eth_table, ptr %7, i32 0, i32 2, i32 %i.0164.i, i32 1
  %14 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i, align 4
  %call.i.i = tail call ptr @nfp_repr_alloc_mqs(ptr noundef %app, i32 noundef 1, i32 noundef 1) #12
  %tobool8.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool8.not.i, label %for.body.i.nfp_flower_spawn_phy_reprs.exit_crit_edge, label %if.end10.i

for.body.i.nfp_flower_spawn_phy_reprs.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_flower_spawn_phy_reprs.exit

if.end10.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 80) #16
  %tobool12.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end14.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nfp_repr_free(ptr noundef nonnull %call.i.i) #12
  br label %nfp_flower_spawn_phy_reprs.exit

if.end14.i:                                       ; preds = %if.end10.i
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 2304
  %app_priv.i = getelementptr i8, ptr %call.i.i, i32 2324
  %17 = ptrtoint ptr %app_priv.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i.i, ptr %app_priv.i, align 4
  %18 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i.i, ptr %call7.i.i.i, align 8
  %call17.i = tail call ptr @nfp_port_alloc(ptr noundef %app, i32 noundef 1, ptr noundef nonnull %call.i.i) #12
  %cmp.i.i = icmp ugt ptr %call17.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then19.i, label %if.end21.i

if.then19.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %call17.i to i32
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  tail call void @nfp_repr_free(ptr noundef nonnull %call.i.i) #12
  br label %nfp_flower_spawn_phy_reprs.exit

if.end21.i:                                       ; preds = %if.end14.i
  %20 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pf.i, align 4
  %call23.i = tail call i32 @nfp_port_init_phy_port(ptr noundef %21, ptr noundef %app, ptr noundef %call17.i, i32 noundef %i.0164.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  tail call void @nfp_port_free(ptr noundef %call17.i) #12
  tail call void @nfp_repr_free(ptr noundef nonnull %call.i.i) #12
  br label %nfp_flower_spawn_phy_reprs.exit

if.end26.i:                                       ; preds = %if.end21.i
  %22 = ptrtoint ptr %nn.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nn.i, align 4
  %pdev.i = getelementptr inbounds %struct.nfp_net, ptr %23, i32 0, i32 54
  %24 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %parent.i = getelementptr inbounds %struct.net_device, ptr %call.i.i, i32 0, i32 133, i32 1
  %26 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev.i, ptr %parent.i, align 8
  %27 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pf.i, align 4
  tail call void @nfp_net_get_mac_addr(ptr noundef %28, ptr noundef nonnull %call.i.i, ptr noundef %call17.i) #12
  %conv9.i.i = and i32 %15, 255
  %or.i.i = or i32 %conv9.i.i, 268435456
  %29 = ptrtoint ptr %nn.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nn.i, align 4
  %netdev.i = getelementptr inbounds %struct.nfp_net_dp, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %netdev.i, align 4
  %call31.i = tail call i32 @nfp_repr_init(ptr noundef %app, ptr noundef nonnull %call.i.i, i32 noundef %or.i.i, ptr noundef %call17.i, ptr noundef %32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %for.inc.i, label %if.then33.i

if.then33.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  tail call void @nfp_port_free(ptr noundef %call17.i) #12
  tail call void @nfp_repr_free(ptr noundef nonnull %call.i.i) #12
  br label %nfp_flower_spawn_phy_reprs.exit

for.inc.i:                                        ; preds = %if.end26.i
  %nbi.i = getelementptr %struct.nfp_eth_table, ptr %7, i32 0, i32 2, i32 %i.0164.i, i32 2
  %33 = ptrtoint ptr %nbi.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nbi.i, align 4
  %base.i = getelementptr %struct.nfp_eth_table, ptr %7, i32 0, i32 2, i32 %i.0164.i, i32 3
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %base.i, align 4
  tail call void @nfp_flower_cmsg_mac_repr_add(ptr noundef nonnull %call.i, i32 noundef %i.0164.i, i32 noundef %34, i32 noundef %36, i32 noundef %15) #12
  %arrayidx43.i = getelementptr %struct.nfp_reprs, ptr %call2.i, i32 0, i32 1, i32 %15
  %37 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %call.i.i, ptr %arrayidx43.i, align 4
  %38 = ptrtoint ptr %cpp.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cpp.i, align 4
  %call53.i = tail call ptr @nfp_cpp_device(ptr noundef %39) #12
  %parent54.i = getelementptr inbounds %struct.device, ptr %call53.i, i32 0, i32 1
  %40 = ptrtoint ptr %parent54.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parent54.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.69, i32 noundef %15, ptr noundef nonnull %call.i.i) #17
  %inc.i = add nuw i32 %i.0164.i, 1
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %7, align 4
  %cmp.i = icmp ult i32 %inc.i, %43
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %call58.i = tail call ptr @nfp_app_reprs_set(ptr noundef %app, i32 noundef 0, ptr noundef nonnull %call2.i) #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %reify_replies.i, i32 noundef 4) #12
  %44 = ptrtoint ptr %reify_replies.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 0, ptr %reify_replies.i, align 4
  %call59.i = tail call fastcc i32 @nfp_flower_reprs_reify(ptr noundef %app, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %cmp60.i = icmp slt i32 %call59.i, 0
  br i1 %cmp60.i, label %if.then62.i, label %if.end69.i

if.then62.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %cpp66.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %45 = ptrtoint ptr %cpp66.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cpp66.i, align 4
  %call67.i = tail call ptr @nfp_cpp_device(ptr noundef %46) #12
  %parent68.i = getelementptr inbounds %struct.device, ptr %call67.i, i32 0, i32 1
  %47 = ptrtoint ptr %parent68.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %parent68.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.73) #17
  br label %err_reprs_remove.i

if.end69.i:                                       ; preds = %for.end.i
  %call70.i = tail call fastcc i32 @nfp_flower_wait_repr_reify(ptr noundef %app, ptr noundef %reify_replies.i, i32 noundef %call59.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %nfp_flower_spawn_phy_reprs.exit.thread, label %if.end69.i.err_reprs_remove.i_crit_edge

if.end69.i.err_reprs_remove.i_crit_edge:          ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_reprs_remove.i

nfp_flower_spawn_phy_reprs.exit.thread:           ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #14
  %ctrl.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 3
  %49 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctrl.i, align 4
  %call74.i = tail call zeroext i1 @nfp_ctrl_tx(ptr noundef %50, ptr noundef nonnull %call.i) #12
  br label %if.end

err_reprs_remove.i:                               ; preds = %if.end69.i.err_reprs_remove.i_crit_edge, %if.then62.i
  %err.1.i = phi i32 [ %call59.i, %if.then62.i ], [ %call70.i, %if.end69.i.err_reprs_remove.i_crit_edge ]
  %call75.i = tail call ptr @nfp_app_reprs_set(ptr noundef %app, i32 noundef 0, ptr noundef null) #12
  br label %nfp_flower_spawn_phy_reprs.exit

nfp_flower_spawn_phy_reprs.exit:                  ; preds = %err_reprs_remove.i, %if.then33.i, %if.then25.i, %if.then19.i, %if.then13.i, %for.body.i.nfp_flower_spawn_phy_reprs.exit_crit_edge
  %reprs.0.i = phi ptr [ %call75.i, %err_reprs_remove.i ], [ %call2.i, %if.then19.i ], [ %call2.i, %if.then25.i ], [ %call2.i, %if.then33.i ], [ %call2.i, %if.then13.i ], [ %call2.i, %for.body.i.nfp_flower_spawn_phy_reprs.exit_crit_edge ]
  %err.2.i = phi i32 [ %err.1.i, %err_reprs_remove.i ], [ %19, %if.then19.i ], [ %call23.i, %if.then25.i ], [ %call31.i, %if.then33.i ], [ -12, %if.then13.i ], [ -12, %for.body.i.nfp_flower_spawn_phy_reprs.exit_crit_edge ]
  tail call void @nfp_reprs_clean_and_free(ptr noundef %app, ptr noundef %reprs.0.i) #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i)
  %tobool.not = icmp eq i32 %err.2.i, 0
  br i1 %tobool.not, label %nfp_flower_spawn_phy_reprs.exit.if.end_crit_edge, label %nfp_flower_spawn_phy_reprs.exit.err_clear_nn_crit_edge

nfp_flower_spawn_phy_reprs.exit.err_clear_nn_crit_edge: ; preds = %nfp_flower_spawn_phy_reprs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_clear_nn

nfp_flower_spawn_phy_reprs.exit.if.end_crit_edge: ; preds = %nfp_flower_spawn_phy_reprs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %nfp_flower_spawn_phy_reprs.exit.if.end_crit_edge, %nfp_flower_spawn_phy_reprs.exit.thread
  %call4 = tail call fastcc i32 @nfp_flower_spawn_vnic_reprs(ptr noundef %app, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.err_destroy_reprs_phy_crit_edge

if.end.err_destroy_reprs_phy_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_destroy_reprs_phy

if.end7:                                          ; preds = %if.end
  %51 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pf.i, align 4
  %num_vfs = getelementptr inbounds %struct.nfp_pf, ptr %52, i32 0, i32 15
  %53 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool8.not = icmp eq i32 %54, 0
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  %call12 = tail call fastcc i32 @nfp_flower_spawn_vnic_reprs(ptr noundef %app, i32 noundef 0, i32 noundef 2, i32 noundef %54)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then9.cleanup_crit_edge, label %err_destroy_reprs_pf

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_destroy_reprs_pf:                             ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nfp_reprs_clean_and_free_by_type(ptr noundef %app, i32 noundef 1) #12
  br label %err_destroy_reprs_phy

err_destroy_reprs_phy:                            ; preds = %err_destroy_reprs_pf, %if.end.err_destroy_reprs_phy_crit_edge
  %err.0 = phi i32 [ %call4, %if.end.err_destroy_reprs_phy_crit_edge ], [ %call12, %err_destroy_reprs_pf ]
  tail call void @nfp_reprs_clean_and_free_by_type(ptr noundef %app, i32 noundef 0) #12
  br label %err_clear_nn

err_clear_nn:                                     ; preds = %err_destroy_reprs_phy, %nfp_flower_spawn_phy_reprs.exit.err_clear_nn_crit_edge, %nfp_flower_spawn_phy_reprs.exit.thread36, %entry.err_clear_nn_crit_edge
  %err.1 = phi i32 [ %err.2.i, %nfp_flower_spawn_phy_reprs.exit.err_clear_nn_crit_edge ], [ %err.0, %err_destroy_reprs_phy ], [ -12, %nfp_flower_spawn_phy_reprs.exit.thread36 ], [ -12, %entry.err_clear_nn_crit_edge ]
  %55 = ptrtoint ptr %nn2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %nn2, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_clear_nn, %if.then9.cleanup_crit_edge, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_clear_nn ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_flower_vnic_clean(ptr noundef %app, ptr nocapture noundef readnone %nn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %pf = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 1
  %2 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pf, align 4
  %num_vfs = getelementptr inbounds %struct.nfp_pf, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nfp_reprs_clean_and_free_by_type(ptr noundef %app, i32 noundef 2) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @nfp_reprs_clean_and_free_by_type(ptr noundef %app, i32 noundef 1) #12
  tail call void @nfp_reprs_clean_and_free_by_type(ptr noundef %app, i32 noundef 0) #12
  %nn2 = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %nn2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %nn2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_flower_repr_netdev_preclean(ptr nocapture noundef readonly %app, ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %reify_replies = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %reify_replies, i32 noundef 4) #12
  %2 = ptrtoint ptr %reify_replies to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %reify_replies, align 4
  %call2 = tail call i32 @nfp_flower_cmsg_portreify(ptr noundef %add.ptr.i, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %3 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cpp, align 4
  %call3 = tail call ptr @nfp_cpp_device(ptr noundef %4) #12
  %parent = getelementptr inbounds %struct.device, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.84) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call fastcc i32 @nfp_flower_wait_repr_reify(ptr noundef %app, ptr noundef %reify_replies, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_flower_repr_netdev_clean(ptr nocapture noundef readnone %app, ptr nocapture noundef readonly %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %app_priv = getelementptr i8, ptr %netdev, i32 2324
  %0 = ptrtoint ptr %app_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app_priv, align 4
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_flower_repr_netdev_open(ptr nocapture noundef readnone %app, ptr noundef %repr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %repr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %repr, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mtu, align 4
  %call = tail call i32 @nfp_flower_cmsg_portmod(ptr noundef %repr, i1 noundef zeroext true, i32 noundef %3, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %repr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %repr, align 4
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 104
  %6 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.not.i = icmp eq i32 %7, 0
  br i1 %cmp4.not.i, label %if.end.cleanup_crit_edge, label %for.body.lr.ph.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %i.05.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #12
  %inc.i = add nuw i32 %i.05.i, 1
  %10 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_flower_repr_netdev_stop(ptr nocapture noundef readnone %app, ptr noundef %repr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %repr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %repr, align 4
  tail call fastcc void @local_bh_disable() #12
  %2 = tail call i32 @llvm.read_register.i32(metadata !170) #12
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #12
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 104
  %6 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13.not.i = icmp eq i32 %7, 0
  br i1 %cmp13.not.i, label %entry.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

entry.netif_tx_disable.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #12
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %i.014.i, i32 11
  %10 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %5, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  %11 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #12
  %inc.i = add nuw i32 %i.014.i, 1
  %12 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %13
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %entry.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #12
  tail call fastcc void @local_bh_enable() #12
  %14 = ptrtoint ptr %repr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %repr, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 20
  %16 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mtu, align 4
  %call = tail call i32 @nfp_flower_cmsg_portmod(ptr noundef %repr, i1 noundef zeroext false, i32 noundef %17, i1 noundef zeroext false) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_flower_repr_change_mtu(ptr nocapture noundef readonly %app, ptr noundef %netdev, i32 noundef %new_mtu) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %port = getelementptr i8, ptr %netdev, i32 2312
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %type = getelementptr inbounds %struct.nfp_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup79_crit_edge

entry.cleanup79_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup79

if.end:                                           ; preds = %entry
  %flower_ext_feats = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %flower_ext_feats to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %flower_ext_feats, align 8
  %and = and i64 %7, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %8 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpp, align 4
  %call2 = tail call ptr @nfp_cpp_device(ptr noundef %9) #12
  %parent = getelementptr inbounds %struct.device, ptr %call2, i32 0, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.86) #17
  br label %cleanup79

if.end3:                                          ; preds = %if.end
  %mtu_conf = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 20
  %lock = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 20, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %ack = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 20, i32 2
  %12 = ptrtoint ptr %ack to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %ack, align 8
  %requested_val = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 20, i32 1
  %13 = ptrtoint ptr %requested_val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %new_mtu, ptr %requested_val, align 4
  %dst = getelementptr i8, ptr %netdev, i32 2308
  %14 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dst, align 4
  %u = getelementptr inbounds %struct.metadata_dst, ptr %15, i32 0, i32 2
  %port_id = getelementptr inbounds %struct.hw_port_info, ptr %u, i32 0, i32 1
  %16 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_id, align 4
  %18 = ptrtoint ptr %mtu_conf to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %mtu_conf, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  %call10 = tail call i32 @nfp_flower_cmsg_portmod(ptr noundef %add.ptr.i, i1 noundef zeroext %tobool.not.i, i32 noundef %new_mtu, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end19, label %if.then12

if.then12:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %22 = ptrtoint ptr %requested_val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %requested_val, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %cleanup79

if.end19:                                         ; preds = %if.end3
  tail call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 919) #12
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %23 = ptrtoint ptr %ack to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ack, align 8, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.i.not = icmp eq i8 %24, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br i1 %tobool.i.not, label %if.then35, label %if.end19.cleanup79_crit_edge

if.end19.cleanup79_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup79

if.then35:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %25 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %wait_q = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 20, i32 3
  %call39121 = call i32 @prepare_to_wait_event(ptr noundef %wait_q, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %26 = ptrtoint ptr %ack to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ack, align 8, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.i114122.not = icmp eq i8 %27, 0
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br i1 %tobool.i114122.not, label %if.then35.cleanup_crit_edge, label %if.end62.thread

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  br label %cleanup

if.end62.thread:                                  ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  call void @finish_wait(ptr noundef %wait_q, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %cleanup79

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then35.cleanup_crit_edge
  %__ret36.1123 = phi i32 [ %__ret36.1, %cleanup.cleanup_crit_edge ], [ 4, %if.then35.cleanup_crit_edge ]
  %call58 = call i32 @schedule_timeout(i32 noundef %__ret36.1123) #12
  %call39 = call i32 @prepare_to_wait_event(ptr noundef %wait_q, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %28 = ptrtoint ptr %ack to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ack, align 8, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.i114 = icmp ne i8 %29, 0
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool45.not = icmp eq i32 %call58, 0
  %30 = select i1 %tobool.i114, i1 %tobool45.not, i1 false
  %__ret36.1 = select i1 %30, i32 1, i32 %call58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret36.1)
  %tobool51.not = icmp eq i32 %__ret36.1, 0
  %31 = select i1 %tobool.i114, i1 true, i1 %tobool51.not
  br i1 %31, label %if.end62, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end62:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret36.1)
  %phi.cmp = icmp eq i32 %__ret36.1, 0
  call void @finish_wait(ptr noundef %wait_q, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br i1 %phi.cmp, label %if.then65, label %if.end62.cleanup79_crit_edge

if.end62.cleanup79_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup79

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %32 = ptrtoint ptr %requested_val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %requested_val, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %cpp75 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %33 = ptrtoint ptr %cpp75 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cpp75, align 4
  %call76 = call ptr @nfp_cpp_device(ptr noundef %34) #12
  %parent77 = getelementptr inbounds %struct.device, ptr %call76, i32 0, i32 1
  %35 = ptrtoint ptr %parent77 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent77, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.90) #17
  br label %cleanup79

cleanup79:                                        ; preds = %if.then65, %if.end62.cleanup79_crit_edge, %if.end62.thread, %if.end19.cleanup79_crit_edge, %if.then12, %do.end, %entry.cleanup79_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then12 ], [ -5, %if.then65 ], [ -22, %do.end ], [ 0, %entry.cleanup79_crit_edge ], [ 0, %if.end62.cleanup79_crit_edge ], [ 0, %if.end19.cleanup79_crit_edge ], [ 0, %if.end62.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_flower_start(ptr noundef %app) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %flower_en_feats = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %flower_en_feats to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flower_en_feats, align 8
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then:                                          ; preds = %entry
  %nfp_lag = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 21
  %call = tail call i32 @nfp_flower_lag_reset(ptr noundef %nfp_lag) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %call4 = tail call i32 @flow_indr_dev_register(ptr noundef nonnull @nfp_flower_indr_setup_tc_cb, ptr noundef %app) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call8 = tail call i32 @nfp_tunnel_config_start(ptr noundef %app) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %err_tunnel_config

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_tunnel_config:                                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @flow_indr_dev_unregister(ptr noundef nonnull @nfp_flower_indr_setup_tc_cb, ptr noundef %app, ptr noundef nonnull @nfp_flower_setup_indr_tc_release) #12
  br label %cleanup

cleanup:                                          ; preds = %err_tunnel_config, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %err_tunnel_config ], [ %call, %if.then.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_flower_stop(ptr noundef %app) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nfp_tunnel_config_stop(ptr noundef %app) #12
  tail call void @flow_indr_dev_unregister(ptr noundef nonnull @nfp_flower_indr_setup_tc_cb, ptr noundef %app, ptr noundef nonnull @nfp_flower_setup_indr_tc_release) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_flower_netdev_event(ptr noundef %app, ptr noundef %netdev, i32 noundef %event, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %flower_en_feats = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %flower_en_feats to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flower_en_feats, align 8
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call i32 @nfp_flower_lag_netdev_event(ptr noundef %1, ptr noundef %netdev, i32 noundef %event, ptr noundef %ptr) #12
  %and1 = and i32 %call, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %event)
  %cmp.i = icmp eq i32 %event, 6
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end4.nfp_flower_internal_port_event_handler.exit_crit_edge

if.end4.nfp_flower_internal_port_event_handler.exit_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_flower_internal_port_event_handler.exit

land.lhs.true.i:                                  ; preds = %if.end4
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %flower_en_feats.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %flower_en_feats.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flower_en_feats.i.i, align 8
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.nfp_flower_internal_port_event_handler.exit_crit_edge, label %if.end.i.i

land.lhs.true.i.nfp_flower_internal_port_event_handler.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_flower_internal_port_event_handler.exit

if.end.i.i:                                       ; preds = %land.lhs.true.i
  %rtnl_link_ops.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 136
  %10 = ptrtoint ptr %rtnl_link_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rtnl_link_ops.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.nfp_flower_internal_port_event_handler.exit_crit_edge, label %nfp_flower_internal_port_can_offload.exit.i

if.end.i.i.nfp_flower_internal_port_event_handler.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_flower_internal_port_event_handler.exit

nfp_flower_internal_port_can_offload.exit.i:      ; preds = %if.end.i.i
  %kind.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %kind.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kind.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(12) @.str.1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i.i, label %if.then.i, label %nfp_flower_internal_port_can_offload.exit.i.nfp_flower_internal_port_event_handler.exit_crit_edge

nfp_flower_internal_port_can_offload.exit.i.nfp_flower_internal_port_event_handler.exit_crit_edge: ; preds = %nfp_flower_internal_port_can_offload.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_flower_internal_port_event_handler.exit

if.then.i:                                        ; preds = %nfp_flower_internal_port_can_offload.exit.i
  %call.i1.i = tail call fastcc i32 @nfp_flower_lookup_internal_port_id(ptr noundef %6, ptr noundef %netdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool.not.i2.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool.not.i2.i, label %if.then.i.nfp_flower_internal_port_event_handler.exit_crit_edge, label %if.end.i3.i

if.then.i.nfp_flower_internal_port_event_handler.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_flower_internal_port_event_handler.exit

if.end.i3.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %internal_ports.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %6, i32 0, i32 26
  %lock.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %6, i32 0, i32 26, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #12
  %call3.i.i = tail call ptr @idr_remove(ptr noundef %internal_ports.i.i, i32 noundef %call.i1.i) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #12
  br label %nfp_flower_internal_port_event_handler.exit

nfp_flower_internal_port_event_handler.exit:      ; preds = %if.end.i3.i, %if.then.i.nfp_flower_internal_port_event_handler.exit_crit_edge, %nfp_flower_internal_port_can_offload.exit.i.nfp_flower_internal_port_event_handler.exit_crit_edge, %if.end.i.i.nfp_flower_internal_port_event_handler.exit_crit_edge, %land.lhs.true.i.nfp_flower_internal_port_event_handler.exit_crit_edge, %if.end4.nfp_flower_internal_port_event_handler.exit_crit_edge
  %call10 = tail call i32 @nfp_tunnel_mac_event_handler(ptr noundef %app, ptr noundef %netdev, i32 noundef %event, ptr noundef %ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %nfp_flower_internal_port_event_handler.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %nfp_flower_internal_port_event_handler.exit ], [ %call, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_cmsg_rx(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_flower_setup_tc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_flower_sriov_enable(ptr noundef %app, i32 noundef %num_vfs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %nn = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nn, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc i32 @nfp_flower_spawn_vnic_reprs(ptr noundef %app, i32 noundef 0, i32 noundef 2, i32 noundef %num_vfs)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_flower_sriov_disable(ptr noundef %app) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %nn = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nn, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nfp_reprs_clean_and_free_by_type(ptr noundef %app, i32 noundef 2) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @eswitch_mode_get(ptr nocapture noundef readnone %app) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nfp_flower_dev_get(ptr noundef %app, i32 noundef %port_id, ptr noundef writeonly %redir_egress) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.mask = and i32 %port_id, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %shr.mask)
  %cmp = icmp eq i32 %shr.mask, 805306368
  br i1 %cmp, label %if.then, label %if.end33

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %redir_egress, null
  br i1 %tobool.not, label %if.then.do.end28_crit_edge, label %if.then13

if.then.do.end28_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %redir_egress to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %redir_egress, align 1
  br label %do.end28

do.end28:                                         ; preds = %if.then13, %if.then.do.end28_crit_edge
  %conv32 = and i32 %port_id, 255
  %priv1.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %1 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1.i, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !170) #12
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !185
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %do.end28.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

do.end28.rcu_read_lock.exit.i_crit_edge:          ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %do.end28
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %do.end28.rcu_read_lock.exit.i_crit_edge
  %internal_ports.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %2, i32 0, i32 26
  %call.i = tail call ptr @idr_find(ptr noundef %internal_ports.i, i32 noundef %conv32) #12
  %call.i2.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i2.i, label %rcu_read_lock.exit.i.nfp_flower_get_netdev_from_internal_port_id.exit_crit_edge, label %land.lhs.true.i5.i

rcu_read_lock.exit.i.nfp_flower_get_netdev_from_internal_port_id.exit_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_flower_get_netdev_from_internal_port_id.exit

land.lhs.true.i5.i:                               ; preds = %rcu_read_lock.exit.i
  %call1.i3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.nfp_flower_get_netdev_from_internal_port_id.exit_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.nfp_flower_get_netdev_from_internal_port_id.exit_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_flower_get_netdev_from_internal_port_id.exit

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.nfp_flower_get_netdev_from_internal_port_id.exit_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.nfp_flower_get_netdev_from_internal_port_id.exit_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_flower_get_netdev_from_internal_port_id.exit

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #12
  br label %nfp_flower_get_netdev_from_internal_port_id.exit

nfp_flower_get_netdev_from_internal_port_id.exit: ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.nfp_flower_get_netdev_from_internal_port_id.exit_crit_edge, %land.lhs.true.i5.i.nfp_flower_get_netdev_from_internal_port_id.exit_crit_edge, %rcu_read_lock.exit.i.nfp_flower_get_netdev_from_internal_port_id.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !186
  %7 = tail call i32 @llvm.read_register.i32(metadata !170) #12
  %and.i.i.i.i.i9.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

if.end33:                                         ; preds = %entry
  %shr.i = lshr i32 %port_id, 28
  %11 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %shr.i, label %if.end33.cleanup_crit_edge [
    i32 1, label %if.end33.if.end38_crit_edge
    i32 2, label %do.end32.i
  ]

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end32.i:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %and34.i = lshr i32 %port_id, 6
  %conv36.i = and i32 %and34.i, 63
  %12 = and i32 %port_id, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %12)
  %cmp.i = icmp eq i32 %12, 4096
  %..i = select i1 %cmp.i, i32 1, i32 2
  br label %if.end38

if.end38:                                         ; preds = %do.end32.i, %if.end33.if.end38_crit_edge
  %port.0.ph = phi i32 [ %conv36.i, %do.end32.i ], [ %port_id, %if.end33.if.end38_crit_edge ]
  %retval.0.i.ph = phi i32 [ %..i, %do.end32.i ], [ 0, %if.end33.if.end38_crit_edge ]
  %arrayidx = getelementptr %struct.nfp_app, ptr %app, i32 0, i32 4, i32 %retval.0.i.ph
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %arrayidx, align 4
  %call45 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.lhs.true, label %if.end38.do.end54_crit_edge

if.end38.do.end54_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end54

land.lhs.true:                                    ; preds = %if.end38
  %call47 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true.do.end54_crit_edge, label %land.lhs.true49

land.lhs.true.do.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end54

land.lhs.true49:                                  ; preds = %land.lhs.true
  %.b95 = load i1, ptr @nfp_flower_dev_get.__warned, align 1
  br i1 %.b95, label %land.lhs.true49.do.end54_crit_edge, label %if.then51

land.lhs.true49.do.end54_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end54

if.then51:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nfp_flower_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 251, ptr noundef nonnull @.str.92) #12
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %land.lhs.true49.do.end54_crit_edge, %land.lhs.true.do.end54_crit_edge, %if.end38.do.end54_crit_edge
  %tobool56.not = icmp eq ptr %14, null
  br i1 %tobool56.not, label %do.end54.cleanup_crit_edge, label %if.end58

do.end54.cleanup_crit_edge:                       ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end58:                                         ; preds = %do.end54
  %conv59 = and i32 %port.0.ph, 255
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv59)
  %cmp60.not = icmp ugt i32 %16, %conv59
  br i1 %cmp60.not, label %if.end63, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end63:                                         ; preds = %if.end58
  %arrayidx69 = getelementptr %struct.nfp_reprs, ptr %14, i32 0, i32 1, i32 %conv59
  %17 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %arrayidx69, align 4
  %call71 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %land.lhs.true73, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true73:                                  ; preds = %if.end63
  %call74 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %land.lhs.true73.cleanup_crit_edge, label %land.lhs.true76

land.lhs.true73.cleanup_crit_edge:                ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true76:                                  ; preds = %land.lhs.true73
  %.b9394 = load i1, ptr @nfp_flower_dev_get.__warned.93, align 1
  br i1 %.b9394, label %land.lhs.true76.cleanup_crit_edge, label %if.then78

land.lhs.true76.cleanup_crit_edge:                ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then78:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nfp_flower_dev_get.__warned.93, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 258, ptr noundef nonnull @.str.92) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %land.lhs.true76.cleanup_crit_edge, %land.lhs.true73.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %do.end54.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %nfp_flower_get_netdev_from_internal_port_id.exit
  %retval.0 = phi ptr [ %call.i, %nfp_flower_get_netdev_from_internal_port_id.exit ], [ null, %do.end54.cleanup_crit_edge ], [ null, %if.end58.cleanup_crit_edge ], [ %18, %if.then78 ], [ %18, %land.lhs.true76.cleanup_crit_edge ], [ %18, %land.lhs.true73.cleanup_crit_edge ], [ %18, %if.end63.cleanup_crit_edge ], [ null, %if.end33.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_flower_lookup_internal_port_id(ptr noundef %priv, ptr noundef readnone %netdev) unnamed_addr #0 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !170) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !185
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %internal_ports = getelementptr inbounds %struct.nfp_flower_priv, ptr %priv, i32 0, i32 26
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %i, align 4
  %call12 = call ptr @idr_get_next(ptr noundef %internal_ports, ptr noundef nonnull %i) #12
  %cmp.not13 = icmp eq ptr %call12, null
  br i1 %cmp.not13, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %call14 = phi ptr [ %call, %for.inc.for.body_crit_edge ], [ %call12, %rcu_read_lock.exit.for.body_crit_edge ]
  %cmp2 = icmp eq ptr %call14, %netdev
  %5 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i, align 4
  br i1 %cmp2, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %for.body
  %add = add i32 %6, 1
  %7 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %i, align 4
  %call = call ptr @idr_get_next(ptr noundef %internal_ports, ptr noundef nonnull %i) #12
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %id.0 = phi i32 [ 0, %rcu_read_lock.exit.for.end_crit_edge ], [ %6, %for.body.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %call.i3 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i3, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i6

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i6:                                 ; preds = %for.end
  %call1.i4 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4)
  %tobool.not.i5 = icmp eq i32 %call1.i4, 0
  br i1 %tobool.not.i5, label %land.lhs.true.i6.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i8

land.lhs.true.i6.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i8:                                ; preds = %land.lhs.true.i6
  %.b4.i7 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7, label %land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge, label %if.then.i9

land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i9:                                       ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i9, %land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i6.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !186
  %8 = call i32 @llvm.read_register.i32(metadata !170) #12
  %and.i.i.i.i.i10 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i10 to ptr
  %preempt_count.i.i.i.i11 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i11, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i11, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #12
  ret i32 %id.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
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
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !170) #12
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !181

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #12
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nfp_rtsym_read_le(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_cmsg_process_rx(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_flower_metadata_init(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_qos_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_lag_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_metadata_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_rtsym_write_le(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_lag_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_qos_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_port_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_flower_spawn_vnic_reprs(ptr noundef %app, i32 noundef %vnic_type, i32 noundef %repr_type, i32 noundef %cnt) unnamed_addr #0 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pf = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 1
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 4
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpp, align 4
  %call.i = tail call zeroext i16 @nfp_cpp_interface(ptr noundef %3) #12
  %4 = lshr i16 %call.i, 8
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %5 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv1, align 4
  %reify_replies = getelementptr inbounds %struct.nfp_flower_priv, ptr %6, i32 0, i32 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %repr_type)
  %cmp = icmp eq i32 %repr_type, 1
  %cond = select i1 %cmp, i32 2, i32 3
  %call2 = tail call ptr @nfp_reprs_alloc(i32 noundef %cnt) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup95_crit_edge, label %for.cond.preheader

entry.cleanup95_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup95

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %cmp3184.not = icmp eq i32 %cnt, 0
  br i1 %cmp3184.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %nn = getelementptr inbounds %struct.nfp_flower_priv, ptr %6, i32 0, i32 1
  %conv9.i = zext i16 %4 to i32
  %shl.i = shl nuw nsw i32 %conv9.i, 14
  %and10.i = and i32 %shl.i, 49152
  %shl28.i = shl i32 %vnic_type, 12
  %and29.i = and i32 %shl28.i, 12288
  %or.i = or i32 %and29.i, %and10.i
  %cpp71 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %cond75 = select i1 %cmp, ptr @.str.80, ptr @.str.81
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0185 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call.i166 = call ptr @nfp_repr_alloc_mqs(ptr noundef %app, i32 noundef 1, i32 noundef 1) #12
  %tobool5.not = icmp eq ptr %call.i166, null
  br i1 %tobool5.not, label %for.body.err_reprs_clean_crit_edge, label %if.end7

for.body.err_reprs_clean_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_reprs_clean

if.end7:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 80) #16
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  call void @nfp_repr_free(ptr noundef nonnull %call.i166) #12
  br label %err_reprs_clean

if.end11:                                         ; preds = %if.end7
  %add.ptr.i = getelementptr i8, ptr %call.i166, i32 2304
  %app_priv = getelementptr i8, ptr %call.i166, i32 2324
  %8 = ptrtoint ptr %app_priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %app_priv, align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0185)
  %tobool15 = icmp ne i32 %i.0185, 0
  %spec.select = select i1 %cmp, i1 %tobool15, i1 false
  br i1 %spec.select, label %do.end, label %if.end11.if.end30_crit_edge, !prof !187

if.end11.if.end30_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 412, i32 noundef 9, ptr noundef null) #12
  br label %if.end30

if.end30:                                         ; preds = %do.end, %if.end11.if.end30_crit_edge
  %call37 = call ptr @nfp_port_alloc(ptr noundef %app, i32 noundef %cond, ptr noundef nonnull %call.i166) #12
  %cmp.i = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %call37 to i32
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  call void @nfp_repr_free(ptr noundef nonnull %call.i166) #12
  br label %err_reprs_clean

if.end41:                                         ; preds = %if.end30
  %11 = getelementptr inbounds %struct.nfp_port, ptr %call37, i32 0, i32 6
  br i1 %cmp, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %i.0185, ptr %11, align 4
  %13 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nn, align 4
  %ctrl_bar = getelementptr inbounds %struct.nfp_net_dp, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %ctrl_bar to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrl_bar, align 4
  br label %if.end47

if.else:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %11, align 4
  %vf_id = getelementptr inbounds %struct.nfp_port, ptr %call37, i32 0, i32 6, i32 0, i32 1
  %18 = ptrtoint ptr %vf_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %i.0185, ptr %vf_id, align 4
  %19 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pf, align 4
  %vf_cfg_mem = getelementptr inbounds %struct.nfp_pf, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %vf_cfg_mem to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vf_cfg_mem, align 4
  %mul = shl i32 %i.0185, 15
  %add.ptr = getelementptr i8, ptr %22, i32 %mul
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then43
  %add.ptr.sink = phi ptr [ %16, %if.then43 ], [ %add.ptr, %if.else ]
  %23 = getelementptr inbounds %struct.nfp_port, ptr %call37, i32 0, i32 6, i32 0, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.sink, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #12
  %25 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #12
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %addr.i, align 1
  %28 = and i8 %27, -4
  %29 = or i8 %28, 2
  store i8 %29, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call.i166, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #12
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %call.i166, i32 0, i32 55
  %30 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #12
  %conv48.i = shl i32 %i.0185, 6
  %and50.i = and i32 %conv48.i, 4032
  %or51.i = or i32 %or.i, %and50.i
  %or85.i = or i32 %or51.i, 536870912
  %31 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nn, align 4
  %netdev = getelementptr inbounds %struct.nfp_net_dp, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %netdev, align 4
  %call51 = call i32 @nfp_repr_init(ptr noundef %app, ptr noundef nonnull %call.i166, i32 noundef %or85.i, ptr noundef %call37, ptr noundef %34) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %for.inc, label %if.then53

if.then53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  call void @nfp_port_free(ptr noundef %call37) #12
  call void @nfp_repr_free(ptr noundef nonnull %call.i166) #12
  br label %err_reprs_clean

for.inc:                                          ; preds = %if.end47
  %arrayidx = getelementptr %struct.nfp_reprs, ptr %call2, i32 0, i32 1, i32 %i.0185
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %call.i166, ptr %arrayidx, align 4
  %36 = ptrtoint ptr %cpp71 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cpp71, align 4
  %call72 = call ptr @nfp_cpp_device(ptr noundef %37) #12
  %parent = getelementptr inbounds %struct.device, ptr %call72, i32 0, i32 1
  %38 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.78, ptr noundef nonnull %cond75, i32 noundef %i.0185, ptr noundef nonnull %call.i166) #17
  %inc = add nuw i32 %i.0185, 1
  %exitcond.not = icmp eq i32 %inc, %cnt
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call78 = call ptr @nfp_app_reprs_set(ptr noundef %app, i32 noundef %repr_type, ptr noundef nonnull %call2) #12
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %reify_replies, i32 noundef 4) #12
  %40 = ptrtoint ptr %reify_replies to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 0, ptr %reify_replies, align 4
  %call79 = call fastcc i32 @nfp_flower_reprs_reify(ptr noundef %app, i32 noundef %repr_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.then82, label %if.end89

if.then82:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %cpp86 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %41 = ptrtoint ptr %cpp86 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cpp86, align 4
  %call87 = call ptr @nfp_cpp_device(ptr noundef %42) #12
  %parent88 = getelementptr inbounds %struct.device, ptr %call87, i32 0, i32 1
  %43 = ptrtoint ptr %parent88 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %parent88, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.73) #17
  br label %err_reprs_remove

if.end89:                                         ; preds = %for.end
  %call90 = call fastcc i32 @nfp_flower_wait_repr_reify(ptr noundef %app, ptr noundef %reify_replies, i32 noundef %call79)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end89.cleanup95_crit_edge, label %if.end89.err_reprs_remove_crit_edge

if.end89.err_reprs_remove_crit_edge:              ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_reprs_remove

if.end89.cleanup95_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup95

err_reprs_remove:                                 ; preds = %if.end89.err_reprs_remove_crit_edge, %if.then82
  %err.1 = phi i32 [ %call79, %if.then82 ], [ %call90, %if.end89.err_reprs_remove_crit_edge ]
  %call94 = call ptr @nfp_app_reprs_set(ptr noundef %app, i32 noundef %repr_type, ptr noundef null) #12
  br label %err_reprs_clean

err_reprs_clean:                                  ; preds = %err_reprs_remove, %if.then53, %if.then39, %if.then10, %for.body.err_reprs_clean_crit_edge
  %reprs.0 = phi ptr [ %call94, %err_reprs_remove ], [ %call2, %if.then39 ], [ %call2, %if.then53 ], [ %call2, %if.then10 ], [ %call2, %for.body.err_reprs_clean_crit_edge ]
  %err.2 = phi i32 [ %err.1, %err_reprs_remove ], [ %10, %if.then39 ], [ %call51, %if.then53 ], [ -12, %if.then10 ], [ -12, %for.body.err_reprs_clean_crit_edge ]
  call void @nfp_reprs_clean_and_free(ptr noundef %app, ptr noundef %reprs.0) #12
  br label %cleanup95

cleanup95:                                        ; preds = %err_reprs_clean, %if.end89.cleanup95_crit_edge, %entry.cleanup95_crit_edge
  %retval.0 = phi i32 [ %err.2, %err_reprs_clean ], [ -12, %entry.cleanup95_crit_edge ], [ 0, %if.end89.cleanup95_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_reprs_clean_and_free_by_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_flower_cmsg_mac_repr_start(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_reprs_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_repr_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_port_init_phy_port(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_port_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_net_get_mac_addr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_repr_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_cmsg_mac_repr_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_app_reprs_set(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_flower_reprs_reify(ptr noundef %app, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pf = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 1
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 4
  %dep_map = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 37, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b1 = load i1, ptr @nfp_flower_reprs_reify.__warned, align 1
  br i1 %.b1, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nfp_flower_reprs_reify.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 269, ptr noundef nonnull @.str.75) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %arrayidx = getelementptr %struct.nfp_app, ptr %app, i32 0, i32 4, i32 %type
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %do.end.cleanup23_crit_edge, label %for.cond.preheader

do.end.cleanup23_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup23

for.cond.preheader:                               ; preds = %do.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7.not = icmp eq i32 %5, 0
  br i1 %cmp7.not, label %for.cond.preheader.cleanup23_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup23_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup23

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %count.09 = phi i32 [ %count.2, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.08 = phi i32 [ %inc22, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call9 = tail call ptr @nfp_repr_get_locked(ptr noundef %app, ptr noundef nonnull %3, i32 noundef %i.08) #12
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %if.then11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then11:                                        ; preds = %for.body
  %add.ptr.i = getelementptr i8, ptr %call9, i32 2304
  %call14 = tail call i32 @nfp_flower_cmsg_portreify(ptr noundef %add.ptr.i, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  %inc = add i32 %count.09, 1
  br i1 %tobool15.not, label %if.then11.for.inc_crit_edge, label %if.then11.cleanup23_crit_edge

if.then11.cleanup23_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup23

if.then11.for.inc_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.then11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %count.2 = phi i32 [ %inc, %if.then11.for.inc_crit_edge ], [ %count.09, %for.body.for.inc_crit_edge ]
  %inc22 = add nuw i32 %i.08, 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %cmp = icmp ult i32 %inc22, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup23_crit_edge

for.inc.cleanup23_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup23

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup23:                                        ; preds = %for.inc.cleanup23_crit_edge, %if.then11.cleanup23_crit_edge, %for.cond.preheader.cleanup23_crit_edge, %do.end.cleanup23_crit_edge
  %retval.4 = phi i32 [ 0, %do.end.cleanup23_crit_edge ], [ 0, %for.cond.preheader.cleanup23_crit_edge ], [ %count.2, %for.inc.cleanup23_crit_edge ], [ %call14, %if.then11.cleanup23_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_flower_wait_repr_reify(ptr nocapture noundef readonly %app, ptr noundef %replies, i32 noundef %tot_repl) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tot_repl)
  %tobool.not = icmp eq i32 %tot_repl, 0
  br i1 %tobool.not, label %entry.cleanup83_crit_edge, label %do.body

entry.cleanup83_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup83

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %do.body.if.end19_crit_edge, label %land.rhs

do.body.if.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

land.rhs:                                         ; preds = %do.body
  %pf = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 1
  %3 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pf, align 4
  %dep_map = getelementptr inbounds %struct.nfp_pf, ptr %4, i32 0, i32 37, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end19_crit_edge, !prof !187

land.rhs.if.end19_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 298, i32 noundef 9, ptr noundef null) #12
  br label %if.end19

if.end19:                                         ; preds = %do.end, %land.rhs.if.end19_crit_edge, %do.body.if.end19_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 301) #12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %replies, i32 noundef 4) #12
  %5 = ptrtoint ptr %replies to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %replies, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %tot_repl)
  %cmp36.not.not = icmp slt i32 %6, %tot_repl
  br i1 %cmp36.not.not, label %if.then47, label %if.end19.cleanup83_crit_edge

if.end19.cleanup83_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup83

if.then47:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %7 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %reify_wait_queue = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 19
  %call50106 = call i32 @prepare_to_wait_event(ptr noundef %reify_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %call.i.i99107 = call zeroext i1 @__kasan_check_read(ptr noundef %replies, i32 noundef 4) #12
  %8 = ptrtoint ptr %replies to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %replies, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %tot_repl)
  %cmp53.not108.not = icmp slt i32 %9, %tot_repl
  br i1 %cmp53.not108.not, label %if.then47.cleanup_crit_edge, label %if.end74.thread

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  br label %cleanup

if.end74.thread:                                  ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  call void @finish_wait(ptr noundef %reify_wait_queue, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %cleanup83

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then47.cleanup_crit_edge
  %__ret48.1110 = phi i32 [ %__ret48.1, %cleanup.cleanup_crit_edge ], [ 4, %if.then47.cleanup_crit_edge ]
  %call71 = call i32 @schedule_timeout(i32 noundef %__ret48.1110) #12
  %call50 = call i32 @prepare_to_wait_event(ptr noundef %reify_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %call.i.i99 = call zeroext i1 @__kasan_check_read(ptr noundef %replies, i32 noundef 4) #12
  %10 = ptrtoint ptr %replies to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %replies, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %tot_repl)
  %cmp53.not = icmp slt i32 %11, %tot_repl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool57.not = icmp eq i32 %call71, 0
  %spec.store.select84 = select i1 %tobool57.not, i32 1, i32 %call71
  %__ret48.1 = select i1 %cmp53.not, i32 %call71, i32 %spec.store.select84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret48.1)
  %tobool63.not = icmp eq i32 %__ret48.1, 0
  %not.cmp53.not = xor i1 %cmp53.not, true
  %12 = select i1 %not.cmp53.not, i1 true, i1 %tobool63.not
  br i1 %12, label %if.end74, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end74:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret48.1)
  %phi.cmp = icmp eq i32 %__ret48.1, 0
  call void @finish_wait(ptr noundef %reify_wait_queue, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br i1 %phi.cmp, label %do.end80, label %if.end74.cleanup83_crit_edge

if.end74.cleanup83_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup83

do.end80:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %13 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpp, align 4
  %call81 = call ptr @nfp_cpp_device(ptr noundef %14) #12
  %parent = getelementptr inbounds %struct.device, ptr %call81, i32 0, i32 1
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.76) #17
  br label %cleanup83

cleanup83:                                        ; preds = %do.end80, %if.end74.cleanup83_crit_edge, %if.end74.thread, %if.end19.cleanup83_crit_edge, %entry.cleanup83_crit_edge
  %retval.0 = phi i32 [ -5, %do.end80 ], [ 0, %entry.cleanup83_crit_edge ], [ 0, %if.end74.cleanup83_crit_edge ], [ 0, %if.end19.cleanup83_crit_edge ], [ 0, %if.end74.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfp_ctrl_tx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_reprs_clean_and_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_repr_alloc_mqs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_repr_get_locked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_flower_cmsg_portreify(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nfp_cpp_interface(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_flower_cmsg_portmod(ptr noundef, i1 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_flower_lag_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_indr_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_flower_indr_setup_tc_cb(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_tunnel_config_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_indr_dev_unregister(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_flower_setup_indr_tc_release(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_tunnel_config_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_flower_lag_netdev_event(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_tunnel_mac_event_handler(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58, !60, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !78, !79, !81, !83, !85, !86, !87, !88, !90, !92, !93, !94, !96, !97, !98, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !114, !115, !117, !119, !120, !121, !122, !124, !125, !126, !127, !128, !130, !131, !132, !134, !135, !137, !138, !139, !140, !142, !143, !144, !145, !146, !147, !149, !150, !152, !153, !154, !155, !157, !158, !159, !160, !161, !163, !164, !165, !167, !168}
!llvm.named.register.sp = !{!170}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 987, i32 11}
!2 = !{ptr @app_flower, !3, !"app_flower", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 985, i32 27}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.h", i32 387, i32 43}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 151, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 747, i32 3}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @nfp_flower_init._entry, !22, !"_entry", i1 false, i1 false}
!27 = !{ptr @nfp_flower_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 752, i32 3}
!30 = !{ptr @nfp_flower_init._entry.14, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @nfp_flower_init._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 757, i32 3}
!34 = !{ptr @nfp_flower_init._entry.17, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @nfp_flower_init._entry_ptr.19, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 761, i32 45}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 763, i32 3}
!40 = !{ptr @nfp_flower_init._entry.21, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @nfp_flower_init._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 767, i32 46}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 770, i32 3}
!46 = !{ptr @nfp_flower_init._entry.25, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @nfp_flower_init._entry_ptr.27, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 778, i32 3}
!50 = !{ptr @nfp_flower_init._entry.28, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @nfp_flower_init._entry_ptr.30, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 784, i32 47}
!54 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 787, i32 3}
!56 = !{ptr @nfp_flower_init._entry.32, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @nfp_flower_init._entry_ptr.34, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.36, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 796, i32 3}
!60 = !{ptr @nfp_flower_init._entry.35, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @nfp_flower_init._entry_ptr.37, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @nfp_flower_init.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 811, i32 2}
!64 = !{ptr @.str.38, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @nfp_flower_init.__key.39, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 812, i32 2}
!67 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @nfp_flower_init.__key.41, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 814, i32 2}
!70 = !{ptr @.str.42, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @nfp_flower_init.__key.43, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 815, i32 2}
!73 = !{ptr @.str.44, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.45, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 823, i32 10}
!76 = !{ptr @skb_queue_head_init.__key, !77, !"__key", i1 false, i1 false}
!77 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!78 = !{ptr @.str.46, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 699, i32 42}
!81 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 709, i32 6}
!83 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 714, i32 3}
!85 = !{ptr @.str.50, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @nfp_flower_sync_feature_bits._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @nfp_flower_sync_feature_bits._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.51, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 722, i32 7}
!90 = !{ptr @.str.53, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 727, i32 4}
!92 = !{ptr @nfp_flower_sync_feature_bits._entry.52, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @nfp_flower_sync_feature_bits._entry_ptr.54, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.56, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 733, i32 3}
!96 = !{ptr @nfp_flower_sync_feature_bits._entry.55, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @nfp_flower_sync_feature_bits._entry_ptr.57, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.58, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 678, i32 7}
!100 = !{ptr @.str.59, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 681, i32 4}
!102 = !{ptr @.str.60, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @nfp_flower_wait_host_bit._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @nfp_flower_wait_host_bit._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.62, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 689, i32 3}
!107 = !{ptr @nfp_flower_wait_host_bit._entry.61, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @nfp_flower_wait_host_bit._entry_ptr.63, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @nfp_flower_internal_port_init.__key, !110, !"__key", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 136, i32 2}
!111 = !{ptr @.str.64, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @xa_init_flags.__key, !113, !"__key", i1 false, i1 false}
!113 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!114 = !{ptr @.str.65, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.66, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 30, i32 9}
!117 = !{ptr @.str.67, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 604, i32 3}
!119 = !{ptr @.str.68, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @nfp_flower_vnic_alloc._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @nfp_flower_vnic_alloc._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.69, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 563, i32 3}
!124 = !{ptr @.str.70, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.71, !123, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @nfp_flower_spawn_phy_reprs._entry, !123, !"_entry", i1 false, i1 false}
!127 = !{ptr @nfp_flower_spawn_phy_reprs._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.73, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 580, i32 3}
!130 = !{ptr @nfp_flower_spawn_phy_reprs._entry.72, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @nfp_flower_spawn_phy_reprs._entry_ptr.74, !129, !"_entry_ptr", i1 false, i1 false}
!132 = distinct !{null, !133, !"__warned", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 268, i32 10}
!134 = !{ptr @.str.75, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.76, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 302, i32 3}
!137 = !{ptr @.str.77, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @nfp_flower_wait_repr_reify._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @nfp_flower_wait_repr_reify._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.78, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 445, i32 3}
!142 = !{ptr @.str.79, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @nfp_flower_spawn_vnic_reprs._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @nfp_flower_spawn_vnic_reprs._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.80, !141, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.81, !141, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @nfp_flower_spawn_vnic_reprs._entry.82, !148, !"_entry", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 456, i32 3}
!149 = !{ptr @nfp_flower_spawn_vnic_reprs._entry_ptr.83, !148, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.84, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 350, i32 3}
!152 = !{ptr @.str.85, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @nfp_flower_repr_netdev_preclean._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @nfp_flower_repr_netdev_preclean._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.86, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 897, i32 3}
!157 = !{ptr @.str.87, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.88, !156, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @nfp_flower_repr_change_mtu._entry, !156, !"_entry", i1 false, i1 false}
!160 = !{ptr @nfp_flower_repr_change_mtu._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.90, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 923, i32 3}
!163 = !{ptr @nfp_flower_repr_change_mtu._entry.89, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @nfp_flower_repr_change_mtu._entry_ptr.91, !162, !"_entry_ptr", i1 false, i1 false}
!165 = distinct !{null, !166, !"__warned", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 251, i32 10}
!167 = !{ptr @.str.92, !166, !"<string literal>", i1 false, i1 false}
!168 = distinct !{null, !169, !"__warned", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.c", i32 258, i32 9}
!170 = !{!"sp"}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{i64 2153765073}
!181 = !{!"branch_weights", i32 2000, i32 1}
!182 = !{!"auto-init"}
!183 = !{i32 0, i32 33}
!184 = !{i8 0, i8 2}
!185 = !{i64 2149687456}
!186 = !{i64 2149687722}
!187 = !{!"branch_weights", i32 1, i32 2000}
