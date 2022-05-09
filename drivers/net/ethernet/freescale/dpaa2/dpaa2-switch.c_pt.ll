; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_mc_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fsl_mc_device_id = type { i16, [16 x i8] }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.switchdev_obj_port_vlan = type { %struct.switchdev_obj, i16, i16 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.151, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.151 = type { ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.dpsw_vlan_cfg = type { i16 }
%struct.ethsw_core = type { ptr, ptr, i16, %struct.dpsw_attr, i16, i16, i32, i32, ptr, ptr, [4096 x i8], ptr, [2 x %struct.dpaa2_switch_fq], ptr, i32, i16, i32, ptr, ptr, i16 }
%struct.dpsw_attr = type { i32, i64, i16, i8, i8, i16, i16, i16, i16, i16, i16, i8, i32, i32, i32 }
%struct.dpaa2_switch_fq = type { ptr, i32, ptr, %struct.dpaa2_io_notification_ctx, %struct.napi_struct, i32 }
%struct.dpaa2_io_notification_ctx = type { ptr, i32, i32, i32, i32, i64, %struct.list_head, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ethsw_port_priv = type { ptr, i16, ptr, i8, i8, [4096 x i8], i16, i16, ptr, i8, i8, i8, ptr, ptr }
%struct.dpaa2_switch_fdb = type { ptr, i16, i8 }
%struct.dpsw_vlan_if_cfg = type { i16, i16, [64 x i16], i16 }
%struct.dpaa2_mac = type { ptr, %struct.dpmac_link_state, ptr, ptr, %struct.dpmac_attr, %struct.phylink_config, ptr, i32, i32, ptr, ptr }
%struct.dpmac_link_state = type { i32, i64, i32, i32, i64, i64 }
%struct.dpmac_attr = type { i16, i32, i32, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.dpaa2_fd = type { %union.anon.158 }
%union.anon.158 = type { %struct.dpaa2_fd_simple }
%struct.dpaa2_fd_simple = type { i64, i32, i16, i16, i32, i32, i64 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.115, [48 x i8], %union.anon.116, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.118, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.115 = type { i64 }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type { i32, ptr }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.120, i32, i32, i32, i16, i16, %union.anon.122, i32, %union.anon.123, %union.anon.124, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.120 = type { i32 }
%union.anon.122 = type { i32 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.10, %union.anon.100, %struct.atomic_t, i32 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.100 = type { %struct.atomic_t }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.dpsw_acl_if_cfg = type { i16, [64 x i16] }
%struct.flow_block_offload = type { i32, i32, i8, i8, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.dpaa2_switch_filter_block = type { ptr, i64, i8, %struct.list_head, i16, i8, %struct.list_head }
%struct.flow_block_cb = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.flow_block_indr, i32 }
%struct.flow_block_indr = type { %struct.list_head, ptr, ptr, i32, ptr, ptr, ptr }
%struct.ethsw_dump_ctx = type { ptr, ptr, ptr, i32 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.tc_cls_matchall_offload = type { %struct.flow_cls_common_offload, i32, ptr, %struct.flow_stats, i32 }
%struct.fdb_dump_entry = type { [6 x i8], i8, i8, [8 x i8] }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.134 }
%union.anon.134 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.dpsw_link_state = type { i32, i64, i8 }
%struct.dpsw_tci_cfg = type { i8, i8, i16 }
%struct.dpsw_fdb_multicast_cfg = type { i32, [6 x i8], i16, [64 x i16] }
%struct.switchdev_notifier_port_obj_info = type { %struct.switchdev_notifier_info, ptr, i8 }
%struct.switchdev_notifier_info = type { ptr, ptr, ptr }
%struct.switchdev_obj_port_mdb = type { %struct.switchdev_obj, [6 x i8], i16 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.dpsw_stp_cfg = type { i16, i32 }
%struct.switchdev_attr = type { ptr, i32, i32, ptr, ptr, %union.anon.172 }
%union.anon.172 = type { %struct.switchdev_brport_flags }
%struct.switchdev_brport_flags = type { i32, i32 }
%struct.dpsw_fdb_unicast_cfg = type { i32, [6 x i8], i16 }
%struct.dpsw_egress_flood_cfg = type { i16, i32, i16, [64 x i16] }
%struct.ethsw_switchdev_event_work = type { %struct.work_struct, %struct.switchdev_notifier_fdb_info, ptr, i32 }
%struct.switchdev_notifier_fdb_info = type { %struct.switchdev_notifier_info, ptr, i16, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.netdev_notifier_changeupper_info = type { %struct.netdev_notifier_info, ptr, i8, i8, ptr }
%struct.dpaa2_switch_acl_entry = type { %struct.list_head, i16, i32, %struct.dpsw_acl_entry_cfg, %struct.dpsw_acl_key }
%struct.dpsw_acl_entry_cfg = type { i64, %struct.dpsw_acl_result, i32 }
%struct.dpsw_acl_result = type { i32, i16 }
%struct.dpsw_acl_key = type { %struct.dpsw_acl_fields, %struct.dpsw_acl_fields }
%struct.dpsw_acl_fields = type { [6 x i8], [6 x i8], i16, i8, i16, i16, i8, i8, i32, i32, i16, i16 }
%struct.dpsw_fdb_cfg = type { i16, i16 }
%struct.dpsw_if_attr = type { i8, i32, i32, i32, i32, i32, i16 }
%struct.dpsw_acl_cfg = type { i16 }
%struct.dpsw_ctrl_if_queue_cfg = type { i32, i64, %struct.dpsw_ctrl_if_dest_cfg }
%struct.dpsw_ctrl_if_dest_cfg = type { i32, i32, i8 }
%struct.dpsw_ctrl_if_pools_cfg = type { i8, [8 x %struct.anon.173] }
%struct.anon.173 = type { i32, i16, i32 }
%struct.dpbp_attr = type { i32, i16 }
%struct.dpsw_ctrl_if_attr = type { i32, i32, i32 }
%struct.fsl_mc_device = type { %struct.device, i64, i16, i32, i16, ptr, %struct.fsl_mc_obj_desc, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_mc_obj_desc = type { [16 x i8], i32, i16, i16, i16, i8, i8, i32, [16 x i8], i16 }
%struct.dq = type { i8, i8, i16, i16, i8, i8, i32, i32, i32, i32, i64, [32 x i8] }
%struct.vlan_ethhdr = type { %union.anon.176, i16, i16, i16 }
%union.anon.176 = type { %struct.anon.177 }
%struct.anon.177 = type { [6 x i8], [6 x i8] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@dpaa2_switch_port_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @dpaa2_switch_port_open, ptr @dpaa2_switch_port_stop, ptr @dpaa2_switch_port_tx, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dpaa2_switch_port_change_mtu, ptr null, ptr null, ptr @dpaa2_switch_port_get_stats, ptr @dpaa2_switch_port_has_offload_stats, ptr @dpaa2_switch_port_get_offload_stats, ptr null, ptr @dpaa2_switch_port_vlan_add, ptr @dpaa2_switch_port_vlan_kill, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dpaa2_switch_port_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dpaa2_switch_port_fdb_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dpaa2_switch_port_parent_id, ptr @dpaa2_switch_port_get_phys_name, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dpsw_get_attributes err %d\0A\00", [36 x i8] zeroinitializer }, align 32
@dpaa2_switch_drv = internal global { %struct.fsl_mc_driver, [60 x i8] } { %struct.fsl_mc_driver { %struct.device_driver { ptr @.str.65, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @dpaa2_switch_match_id_table, ptr @dpaa2_switch_probe, ptr @dpaa2_switch_remove, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_fsl_dpaa2_switch__523_3532_dpaa2_switch_driver_init6 = internal global ptr @dpaa2_switch_driver_init, section ".initcall6.init", align 4
@__exitcall_dpaa2_switch_driver_exit = internal global ptr @dpaa2_switch_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file524 = internal constant [76 x i8] c"fsl_dpaa2_switch.file=drivers/net/ethernet/freescale/dpaa2/fsl-dpaa2-switch\00", section ".modinfo", align 1
@__UNIQUE_ID_license525 = internal constant [32 x i8] c"fsl_dpaa2_switch.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description526 = internal constant [58 x i8] c"fsl_dpaa2_switch.description=DPAA2 Ethernet Switch Driver\00", section ".modinfo", align 1
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dpsw_if_enable err %d\0A\00", [41 x i8] zeroinitializer }, align 32
@dpaa2_switch_enable_ctrl_if_napi.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dpsw_if_disable err %d\0A\00", [40 x i8] zeroinitializer }, align 32
@dpaa2_switch_disable_ctrl_if_napi.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dpaa2_switch_port_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Error reallocating skb headroom\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dpaa2_switch_port_tx\00", [43 x i8] zeroinitializer }, align 32
@dpaa2_switch_port_tx._entry_ptr = internal global ptr @dpaa2_switch_port_tx._entry, section ".printk_index", align 4
@dpaa2_switch_port_tx._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 1095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Error copying the socket buffer\0A\00", [57 x i8] zeroinitializer }, align 32
@dpaa2_switch_port_tx._entry_ptr.9 = internal global ptr @dpaa2_switch_port_tx._entry.7, section ".printk_index", align 4
@dpaa2_switch_port_tx._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 1104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: skb_linearize error (%d)!\0A\00", [63 x i8] zeroinitializer }, align 32
@dpaa2_switch_port_tx._entry_ptr.12 = internal global ptr @dpaa2_switch_port_tx._entry.10, section ".printk_index", align 4
@dpaa2_switch_port_tx._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 1110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: ethsw_build_*_fd() %d\0A\00", [35 x i8] zeroinitializer }, align 32
@dpaa2_switch_port_tx._entry_ptr.15 = internal global ptr @dpaa2_switch_port_tx._entry.13, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dpsw_if_set_max_frame_length() err %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dpsw_if_get_counter err %d\0A\00", [36 x i8] zeroinitializer }, align 32
@dpaa2_switch_block_cb_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @dpaa2_switch_block_cb_list, ptr @dpaa2_switch_block_cb_list }, [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dpsw_acl_add_if err %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dma_map_single() failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dpsw_fdb_dump() = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"p%d\00", [28 x i8] zeroinitializer }, align 32
@dpaa2_switch_add_vlan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 202, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dpsw_vlan_add err %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dpaa2_switch_add_vlan\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dpaa2_switch_add_vlan._entry_ptr = internal global ptr @dpaa2_switch_add_vlan._entry, section ".printk_index", align 4
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"VLAN %d already configured\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dpsw_vlan_add_if err %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dpsw_vlan_add_if_untagged err %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dpsw_if_get_tci err %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dpsw_if_set_tci err %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dpsw_if_get_link_state() err %d\0A\00", [63 x i8] zeroinitializer }, align 32
@dpaa2_switch_port_is_up.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Garbage read into link_state\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dpsw_vlan_remove_if_untagged err %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dpsw_vlan_remove_if err %d\0A\00", [36 x i8] zeroinitializer }, align 32
@dpaa2_switch_dellink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 390, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dpsw_vlan_remove err %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dpaa2_switch_dellink\00", [43 x i8] zeroinitializer }, align 32
@dpaa2_switch_dellink._entry_ptr = internal global ptr @dpaa2_switch_dellink._entry, section ".printk_index", align 4
@dpaa2_switch_port_switchdev_blocking_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @dpaa2_switch_port_blocking_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@dpaa2_switch_unregister_notifiers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 3498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013dpaa2-switch: failed to unregister switchdev blocking notifier (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dpaa2_switch_unregister_notifiers\00", [62 x i8] zeroinitializer }, align 32
@dpaa2_switch_unregister_notifiers._entry_ptr = internal global ptr @dpaa2_switch_unregister_notifiers._entry, section ".printk_index", align 4
@dpaa2_switch_port_switchdev_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @dpaa2_switch_port_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@dpaa2_switch_unregister_notifiers._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 3502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013dpaa2-switch: failed to unregister switchdev notifier (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@dpaa2_switch_unregister_notifiers._entry_ptr.45 = internal global ptr @dpaa2_switch_unregister_notifiers._entry.43, section ".printk_index", align 4
@dpaa2_switch_port_nb = internal global %struct.notifier_block { ptr @dpaa2_switch_port_netdevice_event, ptr null, i32 0 }, section ".data..read_mostly", align 4
@dpaa2_switch_unregister_notifiers._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.2, i32 3506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013dpaa2-switch: failed to unregister net_device notifier (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@dpaa2_switch_unregister_notifiers._entry_ptr.48 = internal global ptr @dpaa2_switch_unregister_notifiers._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dev_mc_add err %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dpsw_fdb_add_multicast err %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dpsw_fdb_remove_multicast err %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dev_mc_del err %d\0A\00", [45 x i8] zeroinitializer }, align 32
@dpaa2_switch_port_attr_set.__msg = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"fsl_dpaa2_switch: The DPAA2 switch does not support VLAN-unaware operation\00", [53 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dpsw_if_set_stp err %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dpsw_if_set_learning_mode err %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dpsw_fdb_remove_unicast err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@dpaa2_switch_port_pre_bridge_flags.__msg = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"fsl_dpaa2_switch: Cannot configure multicast flooding independently of unicast\00", [49 x i8] zeroinitializer }, align 32
@dpaa2_switch_fdb_set_egress_flood._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 166, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dpsw_set_egress_flood() = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dpaa2_switch_fdb_set_egress_flood\00", [62 x i8] zeroinitializer }, align 32
@dpaa2_switch_fdb_set_egress_flood._entry_ptr = internal global ptr @dpaa2_switch_fdb_set_egress_flood._entry, section ".printk_index", align 4
@dpaa2_switch_fdb_set_egress_flood._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 175, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@dpaa2_switch_fdb_set_egress_flood._entry_ptr.59 = internal global ptr @dpaa2_switch_fdb_set_egress_flood._entry.58, section ".printk_index", align 4
@dpaa2_switch_port_event.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&switchdev_work->work)\00", [55 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dpsw_fdb_add_unicast err %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@dpaa2_switch_prechangeupper_sanity_checks.__msg = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"fsl_dpaa2_switch: Cannot join a VLAN-unaware bridge\00", [44 x i8] zeroinitializer }, align 32
@dpaa2_switch_prechangeupper_sanity_checks.__msg.62 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"fsl_dpaa2_switch: Cannot join a bridge while VLAN uppers are present\00", [59 x i8] zeroinitializer }, align 32
@dpaa2_switch_port_bridge_join.__msg = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"fsl_dpaa2_switch: Interface from a different DPSW is in the bridge already\00", [53 x i8] zeroinitializer }, align 32
@dpaa2_switch_port_set_fdb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.63 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Unable to clear RX VLANs from old FDB table, err (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Unable to restore RX VLANs to the new FDB, err (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl_dpaa2_switch\00", [47 x i8] zeroinitializer }, align 32
@dpaa2_switch_match_id_table = internal constant { [2 x %struct.fsl_mc_device_id], [60 x i8] } { [2 x %struct.fsl_mc_device_id] [%struct.fsl_mc_device_id { i16 6487, [16 x i8] c"dpsw\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.fsl_mc_device_id zeroinitializer], [60 x i8] zeroinitializer }, align 32
@dpaa2_switch_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 3332, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fsl_mc_portal_allocate err %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dpaa2_switch_probe\00", [45 x i8] zeroinitializer }, align 32
@dpaa2_switch_probe._entry_ptr = internal global ptr @dpaa2_switch_probe._entry, section ".printk_index", align 4
@dpaa2_switch_probe._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 3393, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"register_netdev error %d\0A\00", [38 x i8] zeroinitializer }, align 32
@dpaa2_switch_probe._entry_ptr.70 = internal global ptr @dpaa2_switch_probe._entry.68, section ".printk_index", align 4
@dpaa2_switch_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 2956, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dpsw_open err %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dpaa2_switch_init\00", [46 x i8] zeroinitializer }, align 32
@dpaa2_switch_init._entry_ptr = internal global ptr @dpaa2_switch_init._entry, section ".printk_index", align 4
@dpaa2_switch_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.72, ptr @.str.2, i32 2963, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@dpaa2_switch_init._entry_ptr.74 = internal global ptr @dpaa2_switch_init._entry.73, section ".printk_index", align 4
@dpaa2_switch_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.72, ptr @.str.2, i32 2971, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dpsw_get_api_version err %d\0A\00", [35 x i8] zeroinitializer }, align 32
@dpaa2_switch_init._entry_ptr.77 = internal global ptr @dpaa2_switch_init._entry.75, section ".printk_index", align 4
@dpaa2_switch_init._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.72, ptr @.str.2, i32 2980, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"DPSW version %d:%d not supported. Use firmware 10.28.0 or greater.\0A\00", [60 x i8] zeroinitializer }, align 32
@dpaa2_switch_init._entry_ptr.80 = internal global ptr @dpaa2_switch_init._entry.78, section ".printk_index", align 4
@dpaa2_switch_init._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.72, ptr @.str.2, i32 2994, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dpsw_reset err %d\0A\00", [45 x i8] zeroinitializer }, align 32
@dpaa2_switch_init._entry_ptr.83 = internal global ptr @dpaa2_switch_init._entry.81, section ".printk_index", align 4
@dpaa2_switch_init._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.72, ptr @.str.2, i32 3004, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@dpaa2_switch_init._entry_ptr.85 = internal global ptr @dpaa2_switch_init._entry.84, section ".printk_index", align 4
@dpaa2_switch_init._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.72, ptr @.str.2, i32 3012, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dpsw_if_set_stp err %d for port %d\0A\00", [60 x i8] zeroinitializer }, align 32
@dpaa2_switch_init._entry_ptr.88 = internal global ptr @dpaa2_switch_init._entry.86, section ".printk_index", align 4
@dpaa2_switch_init._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.72, ptr @.str.2, i32 3025, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@dpaa2_switch_init._entry_ptr.90 = internal global ptr @dpaa2_switch_init._entry.89, section ".printk_index", align 4
@dpaa2_switch_init._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.72, ptr @.str.2, i32 3032, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@dpaa2_switch_init._entry_ptr.92 = internal global ptr @dpaa2_switch_init._entry.91, section ".printk_index", align 4
@dpaa2_switch_init._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.72, ptr @.str.2, i32 3039, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@dpaa2_switch_init._entry_ptr.94 = internal global ptr @dpaa2_switch_init._entry.93, section ".printk_index", align 4
@dpaa2_switch_init._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.72, ptr @.str.2, i32 3046, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@dpaa2_switch_init._entry_ptr.96 = internal global ptr @dpaa2_switch_init._entry.95, section ".printk_index", align 4
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s_%d_ordered\00", [18 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ethsw\00", [26 x i8] zeroinitializer }, align 32
@dpaa2_switch_supports_cpu_traffic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.101, i32 208, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Control Interface is disabled, cannot probe\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dpaa2_switch_supports_cpu_traffic\00", [62 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.h\00", [44 x i8] zeroinitializer }, align 32
@dpaa2_switch_supports_cpu_traffic._entry_ptr = internal global ptr @dpaa2_switch_supports_cpu_traffic._entry, section ".printk_index", align 4
@dpaa2_switch_supports_cpu_traffic._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.100, ptr @.str.101, i32 213, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Flooding domain is not per FDB, cannot probe\0A\00", [50 x i8] zeroinitializer }, align 32
@dpaa2_switch_supports_cpu_traffic._entry_ptr.104 = internal global ptr @dpaa2_switch_supports_cpu_traffic._entry.102, section ".printk_index", align 4
@dpaa2_switch_supports_cpu_traffic._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.100, ptr @.str.101, i32 218, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Broadcast domain is not per FDB, cannot probe\0A\00", [49 x i8] zeroinitializer }, align 32
@dpaa2_switch_supports_cpu_traffic._entry_ptr.107 = internal global ptr @dpaa2_switch_supports_cpu_traffic._entry.105, section ".printk_index", align 4
@dpaa2_switch_supports_cpu_traffic._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.100, ptr @.str.101, i32 223, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"The number of FDBs is lower than the number of ports, cannot probe\0A\00", [60 x i8] zeroinitializer }, align 32
@dpaa2_switch_supports_cpu_traffic._entry_ptr.110 = internal global ptr @dpaa2_switch_supports_cpu_traffic._entry.108, section ".printk_index", align 4
@dpaa2_switch_ctrl_if_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 2912, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dpsw_ctrl_if_enable err %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dpaa2_switch_ctrl_if_setup\00", [37 x i8] zeroinitializer }, align 32
@dpaa2_switch_ctrl_if_setup._entry_ptr = internal global ptr @dpaa2_switch_ctrl_if_setup._entry, section ".printk_index", align 4
@dpaa2_switch_setup_fqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 2466, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dpsw_ctrl_if_get_attributes() = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dpaa2_switch_setup_fqs\00", [41 x i8] zeroinitializer }, align 32
@dpaa2_switch_setup_fqs._entry_ptr = internal global ptr @dpaa2_switch_setup_fqs._entry, section ".printk_index", align 4
@dpaa2_switch_setup_dpbp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 2635, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DPBP device allocation failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dpaa2_switch_setup_dpbp\00", [40 x i8] zeroinitializer }, align 32
@dpaa2_switch_setup_dpbp._entry_ptr = internal global ptr @dpaa2_switch_setup_dpbp._entry, section ".printk_index", align 4
@dpaa2_switch_setup_dpbp._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.2, i32 2643, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dpbp_open() failed\0A\00", [44 x i8] zeroinitializer }, align 32
@dpaa2_switch_setup_dpbp._entry_ptr.119 = internal global ptr @dpaa2_switch_setup_dpbp._entry.117, section ".printk_index", align 4
@dpaa2_switch_setup_dpbp._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.2, i32 2649, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dpbp_reset() failed\0A\00", [43 x i8] zeroinitializer }, align 32
@dpaa2_switch_setup_dpbp._entry_ptr.122 = internal global ptr @dpaa2_switch_setup_dpbp._entry.120, section ".printk_index", align 4
@dpaa2_switch_setup_dpbp._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.116, ptr @.str.2, i32 2655, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dpbp_enable() failed\0A\00", [42 x i8] zeroinitializer }, align 32
@dpaa2_switch_setup_dpbp._entry_ptr.125 = internal global ptr @dpaa2_switch_setup_dpbp._entry.123, section ".printk_index", align 4
@dpaa2_switch_setup_dpbp._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.116, ptr @.str.2, i32 2662, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dpbp_get_attributes() failed\0A\00", [34 x i8] zeroinitializer }, align 32
@dpaa2_switch_setup_dpbp._entry_ptr.128 = internal global ptr @dpaa2_switch_setup_dpbp._entry.126, section ".printk_index", align 4
@dpaa2_switch_setup_dpbp._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.116, ptr @.str.2, i32 2674, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dpsw_ctrl_if_set_pools() failed\0A\00", [63 x i8] zeroinitializer }, align 32
@dpaa2_switch_setup_dpbp._entry_ptr.131 = internal global ptr @dpaa2_switch_setup_dpbp._entry.129, section ".printk_index", align 4
@dpaa2_switch_alloc_rings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.2, i32 2707, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dpaa2_io_store_create failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dpaa2_switch_alloc_rings\00", [39 x i8] zeroinitializer }, align 32
@dpaa2_switch_alloc_rings._entry_ptr = internal global ptr @dpaa2_switch_alloc_rings._entry, section ".printk_index", align 4
@dpaa2_switch_add_bufs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.2, i32 2518, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"buffer allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dpaa2_switch_add_bufs\00", [42 x i8] zeroinitializer }, align 32
@dpaa2_switch_add_bufs._entry_ptr = internal global ptr @dpaa2_switch_add_bufs._entry, section ".printk_index", align 4
@dpaa2_switch_add_bufs._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.135, ptr @.str.2, i32 2525, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@dpaa2_switch_add_bufs._entry_ptr.137 = internal global ptr @dpaa2_switch_add_bufs._entry.136, section ".printk_index", align 4
@dpaa2_switch_drain_bp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 2613, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dpaa2_io_service_acquire() = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dpaa2_switch_drain_bp\00", [42 x i8] zeroinitializer }, align 32
@dpaa2_switch_drain_bp._entry_ptr = internal global ptr @dpaa2_switch_drain_bp._entry, section ".printk_index", align 4
@dpaa2_switch_probe_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.2, i32 3248, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"alloc_etherdev error\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dpaa2_switch_probe_port\00", [40 x i8] zeroinitializer }, align 32
@dpaa2_switch_probe_port._entry_ptr = internal global ptr @dpaa2_switch_probe_port._entry, section ".printk_index", align 4
@dpaa2_switch_port_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@__const.dpaa2_switch_port_init.vlan = private unnamed_addr constant %struct.switchdev_obj_port_vlan { %struct.switchdev_obj { %struct.list_head zeroinitializer, ptr null, i32 1, i32 0, ptr null, ptr null }, i16 6, i16 1 }, align 4
@.str.143 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dpsw_if_get_attributes err %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dpsw_fdb_add err %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dpsw_acl_add err %d\0A\00", [43 x i8] zeroinitializer }, align 32
@dpaa2_switch_port_set_mac_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.2, i32 978, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dpsw_if_get_port_mac_addr() failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dpaa2_switch_port_set_mac_addr\00", [33 x i8] zeroinitializer }, align 32
@dpaa2_switch_port_set_mac_addr._entry_ptr = internal global ptr @dpaa2_switch_port_set_mac_addr._entry, section ".printk_index", align 4
@dpaa2_switch_port_set_mac_addr.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@dpaa2_switch_port_set_mac_addr.__UNIQUE_ID_ddebug520 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.65, ptr @.str.147, ptr @.str.2, ptr @.str.148, i8 0, i8 -9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"device(s) have all-zero hwaddr, replaced with random\0A\00", [42 x i8] zeroinitializer }, align 32
@fsl_mc_bus_dpmac_type = external dso_local global %struct.device_type, align 4
@.str.149 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Error connecting to the MAC endpoint %pe\0A\00", [54 x i8] zeroinitializer }, align 32
@dpaa2_switch_pull_fq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.2, i32 2738, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dpaa2_io_service_pull err %d\00", [35 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dpaa2_switch_pull_fq\00", [43 x i8] zeroinitializer }, align 32
@dpaa2_switch_pull_fq._entry_ptr = internal global ptr @dpaa2_switch_pull_fq._entry, section ".printk_index", align 4
@dpaa2_switch_store_consume.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@dpaa2_switch_store_consume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.2, i32 2757, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No valid dequeue response\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dpaa2_switch_store_consume\00", [37 x i8] zeroinitializer }, align 32
@dpaa2_switch_store_consume._entry_ptr = internal global ptr @dpaa2_switch_store_consume._entry, section ".printk_index", align 4
@dpaa2_switch_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.2, i32 2398, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Frame received from unknown interface!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dpaa2_switch_rx\00", [16 x i8] zeroinitializer }, align 32
@dpaa2_switch_rx._entry_ptr = internal global ptr @dpaa2_switch_rx._entry, section ".printk_index", align 4
@.str.156 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Received invalid frame format\0A\00", [33 x i8] zeroinitializer }, align 32
@dpaa2_switch_rx._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.155, ptr @.str.2, i32 2429, ptr @.str.159, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"__skb_vlan_pop() returned %d\00", [35 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dpaa2_switch_rx._entry_ptr.160 = internal global ptr @dpaa2_switch_rx._entry.157, section ".printk_index", align 4
@dpaa2_switch_build_linear_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.2, i32 2365, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"build_skb() failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dpaa2_switch_build_linear_skb\00", [34 x i8] zeroinitializer }, align 32
@dpaa2_switch_build_linear_skb._entry_ptr = internal global ptr @dpaa2_switch_build_linear_skb._entry, section ".printk_index", align 4
@dpaa2_switch_setup_irqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.164, ptr @.str.2, i32 1539, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MC irqs allocation failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dpaa2_switch_setup_irqs\00", [40 x i8] zeroinitializer }, align 32
@dpaa2_switch_setup_irqs._entry_ptr = internal global ptr @dpaa2_switch_setup_irqs._entry, section ".printk_index", align 4
@dpaa2_switch_setup_irqs._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.164, ptr @.str.2, i32 1551, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dpsw_set_irq_enable err %d\0A\00", [36 x i8] zeroinitializer }, align 32
@dpaa2_switch_setup_irqs._entry_ptr.167 = internal global ptr @dpaa2_switch_setup_irqs._entry.165, section ".printk_index", align 4
@dpaa2_switch_setup_irqs._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.164, ptr @.str.2, i32 1562, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"devm_request_threaded_irq(): %d\0A\00", [63 x i8] zeroinitializer }, align 32
@dpaa2_switch_setup_irqs._entry_ptr.170 = internal global ptr @dpaa2_switch_setup_irqs._entry.168, section ".printk_index", align 4
@dpaa2_switch_setup_irqs._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.164, ptr @.str.2, i32 1569, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dpsw_set_irq_mask(): %d\0A\00", [39 x i8] zeroinitializer }, align 32
@dpaa2_switch_setup_irqs._entry_ptr.173 = internal global ptr @dpaa2_switch_setup_irqs._entry.171, section ".printk_index", align 4
@dpaa2_switch_setup_irqs._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.164, ptr @.str.2, i32 1576, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dpsw_set_irq_enable(): %d\0A\00", [37 x i8] zeroinitializer }, align 32
@dpaa2_switch_setup_irqs._entry_ptr.176 = internal global ptr @dpaa2_switch_setup_irqs._entry.174, section ".printk_index", align 4
@dpaa2_switch_irq0_handler_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.2, i32 1499, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Can't get irq status (err %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dpaa2_switch_irq0_handler_thread\00", [63 x i8] zeroinitializer }, align 32
@dpaa2_switch_irq0_handler_thread._entry_ptr = internal global ptr @dpaa2_switch_irq0_handler_thread._entry, section ".printk_index", align 4
@dpaa2_switch_irq0_handler_thread._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.178, ptr @.str.2, i32 1524, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can't clear irq status (err %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@dpaa2_switch_irq0_handler_thread._entry_ptr.181 = internal global ptr @dpaa2_switch_irq0_handler_thread._entry.179, section ".printk_index", align 4
@dpaa2_switch_port_link_state_update.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dpaa2_switch_teardown_irqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.182, ptr @.str.2, i32 1598, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dpaa2_switch_teardown_irqs\00", [37 x i8] zeroinitializer }, align 32
@dpaa2_switch_teardown_irqs._entry_ptr = internal global ptr @dpaa2_switch_teardown_irqs._entry, section ".printk_index", align 4
@dpaa2_switch_teardown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.184, ptr @.str.2, i32 3200, ptr @.str.185, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dpsw_close err %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dpaa2_switch_teardown\00", [42 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dpaa2_switch_teardown._entry_ptr = internal global ptr @dpaa2_switch_teardown._entry, section ".printk_index", align 4
@dpaa2_switch_register_notifiers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.187, ptr @.str.2, i32 3465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013dpaa2-switch: failed to register net_device notifier (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dpaa2_switch_register_notifiers\00", [32 x i8] zeroinitializer }, align 32
@dpaa2_switch_register_notifiers._entry_ptr = internal global ptr @dpaa2_switch_register_notifiers._entry, section ".printk_index", align 4
@dpaa2_switch_register_notifiers._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.187, ptr @.str.2, i32 3471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013dpaa2-switch: failed to register switchdev notifier (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@dpaa2_switch_register_notifiers._entry_ptr.190 = internal global ptr @dpaa2_switch_register_notifiers._entry.188, section ".printk_index", align 4
@dpaa2_switch_register_notifiers._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.187, ptr @.str.2, i32 3477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013dpaa2-switch: failed to register switchdev blocking notifier (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@dpaa2_switch_register_notifiers._entry_ptr.193 = internal global ptr @dpaa2_switch_register_notifiers._entry.191, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.194 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.195 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.196 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.197 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.199 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.200 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967290]
@__sancov_gen_cov_switch_values.201 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967177]
@__sancov_gen_cov_switch_values.202 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.203 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967177]
@__sancov_gen_cov_switch_values.204 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 6]
@__sancov_gen_cov_switch_values.205 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.206 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967290]
@__sancov_gen_cov_switch_values.207 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967177]
@__sancov_gen_cov_switch_values.208 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.209 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967290]
@__sancov_gen_cov_switch_values.210 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967290]
@__sancov_gen_cov_switch_values.211 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967177]
@__sancov_gen_cov_switch_values.212 = internal global [4 x i64] [i64 2, i64 32, i64 21, i64 26]
@__sancov_gen_cov_switch_values.213 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967290]
@__sancov_gen_cov_switch_values.214 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967290]
@___asan_gen_.215 = private unnamed_addr constant [22 x i8] c"dpaa2_switch_port_ops\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 1403, i32 36 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 1762, i32 22 }
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"dpaa2_switch_drv\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 3437, i32 29 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 700, i32 22 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 652, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 729, i32 22 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 1084, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 1095, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 1104, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 1110, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 326, i32 6 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 590, i32 7 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 556, i32 21 }
@___asan_gen_.275 = private unnamed_addr constant [27 x i8] c"dpaa2_switch_block_cb_list\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 1176, i32 8 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 1222, i32 22 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 846, i32 23 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 855, i32 23 }
@___asan_gen_.288 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 991, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 755, i32 28 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 202, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 293, i32 23 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 306, i32 22 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 318, i32 8 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 240, i32 22 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 261, i32 22 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 220, i32 22 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 224, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 1880, i32 8 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 1891, i32 8 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 390, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant [40 x i8] c"dpaa2_switch_port_switchdev_blocking_nb\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 3455, i32 30 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 3497, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant [31 x i8] c"dpaa2_switch_port_switchdev_nb\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 3451, i32 30 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 3502, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 3506, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 1823, i32 22 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 465, i32 33 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 489, i32 7 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 1941, i32 22 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 1725, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 369, i32 9 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 1617, i32 33 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 443, i32 7 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 1678, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 166, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 175, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2276, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 421, i32 7 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2145, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2151, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 1999, i32 4 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2080, i32 22 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2087, i32 22 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 3439, i32 11 }
@___asan_gen_.437 = private unnamed_addr constant [28 x i8] c"dpaa2_switch_match_id_table\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 3428, i32 38 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 3332, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 3393, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2956, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2963, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2971, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2979, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2994, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 3004, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 3011, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 3024, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 3032, i32 4 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 3039, i32 4 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 3046, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 3050, i32 21 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 208, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 213, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 218, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant [55 x i8] c"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.h\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 223, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2912, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2466, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2635, i32 4 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2643, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2649, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2655, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2662, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2674, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2707, i32 4 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2518, i32 4 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2525, i32 4 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2612, i32 4 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 3248, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 3117, i32 22 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 3127, i32 22 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 3156, i32 22 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 978, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 990, i32 3 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 1459, i32 8 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2738, i32 3 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2756, i32 5 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2398, i32 3 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2407, i32 23 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2429, i32 4 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 2365, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 1539, i32 3 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 1551, i32 3 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 1562, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 1569, i32 3 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 1576, i32 3 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 1499, i32 3 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 1524, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 1598, i32 3 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 3200, i32 3 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 3465, i32 3 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 3471, i32 3 }
@___asan_gen_.791 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.794 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.795 = private constant [55 x i8] c"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c\00", align 1
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.795, i32 3477, i32 3 }
@llvm.compiler.used = appending global [259 x ptr] [ptr @__UNIQUE_ID_description526, ptr @__UNIQUE_ID_file524, ptr @__UNIQUE_ID_license525, ptr @__exitcall_dpaa2_switch_driver_exit, ptr @__initcall__kmod_fsl_dpaa2_switch__523_3532_dpaa2_switch_driver_init6, ptr @dpaa2_switch_add_bufs._entry, ptr @dpaa2_switch_add_bufs._entry.136, ptr @dpaa2_switch_add_bufs._entry_ptr, ptr @dpaa2_switch_add_bufs._entry_ptr.137, ptr @dpaa2_switch_add_vlan._entry, ptr @dpaa2_switch_add_vlan._entry_ptr, ptr @dpaa2_switch_alloc_rings._entry, ptr @dpaa2_switch_alloc_rings._entry_ptr, ptr @dpaa2_switch_build_linear_skb._entry, ptr @dpaa2_switch_build_linear_skb._entry_ptr, ptr @dpaa2_switch_ctrl_if_setup._entry, ptr @dpaa2_switch_ctrl_if_setup._entry_ptr, ptr @dpaa2_switch_dellink._entry, ptr @dpaa2_switch_dellink._entry_ptr, ptr @dpaa2_switch_drain_bp._entry, ptr @dpaa2_switch_drain_bp._entry_ptr, ptr @dpaa2_switch_driver_exit, ptr @dpaa2_switch_fdb_set_egress_flood._entry, ptr @dpaa2_switch_fdb_set_egress_flood._entry.58, ptr @dpaa2_switch_fdb_set_egress_flood._entry_ptr, ptr @dpaa2_switch_fdb_set_egress_flood._entry_ptr.59, ptr @dpaa2_switch_init._entry, ptr @dpaa2_switch_init._entry.73, ptr @dpaa2_switch_init._entry.75, ptr @dpaa2_switch_init._entry.78, ptr @dpaa2_switch_init._entry.81, ptr @dpaa2_switch_init._entry.84, ptr @dpaa2_switch_init._entry.86, ptr @dpaa2_switch_init._entry.89, ptr @dpaa2_switch_init._entry.91, ptr @dpaa2_switch_init._entry.93, ptr @dpaa2_switch_init._entry.95, ptr @dpaa2_switch_init._entry_ptr, ptr @dpaa2_switch_init._entry_ptr.74, ptr @dpaa2_switch_init._entry_ptr.77, ptr @dpaa2_switch_init._entry_ptr.80, ptr @dpaa2_switch_init._entry_ptr.83, ptr @dpaa2_switch_init._entry_ptr.85, ptr @dpaa2_switch_init._entry_ptr.88, ptr @dpaa2_switch_init._entry_ptr.90, ptr @dpaa2_switch_init._entry_ptr.92, ptr @dpaa2_switch_init._entry_ptr.94, ptr @dpaa2_switch_init._entry_ptr.96, ptr @dpaa2_switch_irq0_handler_thread._entry, ptr @dpaa2_switch_irq0_handler_thread._entry.179, ptr @dpaa2_switch_irq0_handler_thread._entry_ptr, ptr @dpaa2_switch_irq0_handler_thread._entry_ptr.181, ptr @dpaa2_switch_port_set_mac_addr._entry, ptr @dpaa2_switch_port_set_mac_addr._entry_ptr, ptr @dpaa2_switch_port_tx._entry, ptr @dpaa2_switch_port_tx._entry.10, ptr @dpaa2_switch_port_tx._entry.13, ptr @dpaa2_switch_port_tx._entry.7, ptr @dpaa2_switch_port_tx._entry_ptr, ptr @dpaa2_switch_port_tx._entry_ptr.12, ptr @dpaa2_switch_port_tx._entry_ptr.15, ptr @dpaa2_switch_port_tx._entry_ptr.9, ptr @dpaa2_switch_probe._entry, ptr @dpaa2_switch_probe._entry.68, ptr @dpaa2_switch_probe._entry_ptr, ptr @dpaa2_switch_probe._entry_ptr.70, ptr @dpaa2_switch_probe_port._entry, ptr @dpaa2_switch_probe_port._entry_ptr, ptr @dpaa2_switch_pull_fq._entry, ptr @dpaa2_switch_pull_fq._entry_ptr, ptr @dpaa2_switch_register_notifiers._entry, ptr @dpaa2_switch_register_notifiers._entry.188, ptr @dpaa2_switch_register_notifiers._entry.191, ptr @dpaa2_switch_register_notifiers._entry_ptr, ptr @dpaa2_switch_register_notifiers._entry_ptr.190, ptr @dpaa2_switch_register_notifiers._entry_ptr.193, ptr @dpaa2_switch_rx._entry, ptr @dpaa2_switch_rx._entry.157, ptr @dpaa2_switch_rx._entry_ptr, ptr @dpaa2_switch_rx._entry_ptr.160, ptr @dpaa2_switch_setup_dpbp._entry, ptr @dpaa2_switch_setup_dpbp._entry.117, ptr @dpaa2_switch_setup_dpbp._entry.120, ptr @dpaa2_switch_setup_dpbp._entry.123, ptr @dpaa2_switch_setup_dpbp._entry.126, ptr @dpaa2_switch_setup_dpbp._entry.129, ptr @dpaa2_switch_setup_dpbp._entry_ptr, ptr @dpaa2_switch_setup_dpbp._entry_ptr.119, ptr @dpaa2_switch_setup_dpbp._entry_ptr.122, ptr @dpaa2_switch_setup_dpbp._entry_ptr.125, ptr @dpaa2_switch_setup_dpbp._entry_ptr.128, ptr @dpaa2_switch_setup_dpbp._entry_ptr.131, ptr @dpaa2_switch_setup_fqs._entry, ptr @dpaa2_switch_setup_fqs._entry_ptr, ptr @dpaa2_switch_setup_irqs._entry, ptr @dpaa2_switch_setup_irqs._entry.165, ptr @dpaa2_switch_setup_irqs._entry.168, ptr @dpaa2_switch_setup_irqs._entry.171, ptr @dpaa2_switch_setup_irqs._entry.174, ptr @dpaa2_switch_setup_irqs._entry_ptr, ptr @dpaa2_switch_setup_irqs._entry_ptr.167, ptr @dpaa2_switch_setup_irqs._entry_ptr.170, ptr @dpaa2_switch_setup_irqs._entry_ptr.173, ptr @dpaa2_switch_setup_irqs._entry_ptr.176, ptr @dpaa2_switch_store_consume._entry, ptr @dpaa2_switch_store_consume._entry_ptr, ptr @dpaa2_switch_supports_cpu_traffic._entry, ptr @dpaa2_switch_supports_cpu_traffic._entry.102, ptr @dpaa2_switch_supports_cpu_traffic._entry.105, ptr @dpaa2_switch_supports_cpu_traffic._entry.108, ptr @dpaa2_switch_supports_cpu_traffic._entry_ptr, ptr @dpaa2_switch_supports_cpu_traffic._entry_ptr.104, ptr @dpaa2_switch_supports_cpu_traffic._entry_ptr.107, ptr @dpaa2_switch_supports_cpu_traffic._entry_ptr.110, ptr @dpaa2_switch_teardown._entry, ptr @dpaa2_switch_teardown._entry_ptr, ptr @dpaa2_switch_teardown_irqs._entry, ptr @dpaa2_switch_teardown_irqs._entry_ptr, ptr @dpaa2_switch_unregister_notifiers._entry, ptr @dpaa2_switch_unregister_notifiers._entry.43, ptr @dpaa2_switch_unregister_notifiers._entry.46, ptr @dpaa2_switch_unregister_notifiers._entry_ptr, ptr @dpaa2_switch_unregister_notifiers._entry_ptr.45, ptr @dpaa2_switch_unregister_notifiers._entry_ptr.48, ptr @dpaa2_switch_port_ops, ptr @.str, ptr @dpaa2_switch_drv, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @dpaa2_switch_block_cb_list, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @dpaa2_switch_port_switchdev_blocking_nb, ptr @.str.41, ptr @.str.42, ptr @dpaa2_switch_port_switchdev_nb, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @dpaa2_switch_port_attr_set.__msg, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @dpaa2_switch_port_pre_bridge_flags.__msg, ptr @.str.56, ptr @.str.57, ptr @dpaa2_switch_port_event.__key, ptr @.str.60, ptr @.str.61, ptr @dpaa2_switch_prechangeupper_sanity_checks.__msg, ptr @dpaa2_switch_prechangeupper_sanity_checks.__msg.62, ptr @dpaa2_switch_port_bridge_join.__msg, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @dpaa2_switch_match_id_table, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.87, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.158, ptr @.str.159, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.166, ptr @.str.169, ptr @.str.172, ptr @.str.175, ptr @.str.177, ptr @.str.178, ptr @.str.180, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.189, ptr @.str.192], section "llvm.metadata"
@0 = internal global [194 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_port_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_drv to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_port_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_port_tx._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_port_tx._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_port_tx._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_block_cb_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_add_vlan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_dellink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_port_switchdev_blocking_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_unregister_notifiers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_port_switchdev_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_unregister_notifiers._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_unregister_notifiers._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_port_attr_set.__msg to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_port_pre_bridge_flags.__msg to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_fdb_set_egress_flood._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_fdb_set_egress_flood._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_port_event.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_prechangeupper_sanity_checks.__msg to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_prechangeupper_sanity_checks.__msg.62 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_port_bridge_join.__msg to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_match_id_table to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_probe._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_init._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_init._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_init._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_init._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_init._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_init._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_init._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_init._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_supports_cpu_traffic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_supports_cpu_traffic._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_supports_cpu_traffic._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_supports_cpu_traffic._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_ctrl_if_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_setup_fqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_setup_dpbp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_setup_dpbp._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_setup_dpbp._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_setup_dpbp._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_setup_dpbp._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_setup_dpbp._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_alloc_rings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_add_bufs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_add_bufs._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_drain_bp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_probe_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_port_set_mac_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_pull_fq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_store_consume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_rx._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_build_linear_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_setup_irqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_setup_irqs._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_setup_irqs._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_setup_irqs._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_setup_irqs._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_irq0_handler_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_irq0_handler_thread._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_teardown_irqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_teardown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_register_notifiers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_register_notifiers._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_register_notifiers._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dpaa2_switch_port_dev_check(ptr nocapture noundef readonly %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops, align 8
  %cmp = icmp eq ptr %1, @dpaa2_switch_port_ops
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpaa2_switch_port_vlans_add(ptr noundef %netdev, ptr nocapture noundef readonly %vlan) local_unnamed_addr #1 align 64 {
entry:
  %vcfg.i = alloca %struct.dpsw_vlan_cfg, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ethsw_data = getelementptr i8, ptr %netdev, i32 2312
  %0 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethsw_data, align 4
  %sw_attr = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 3
  %vid = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %2 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vid, align 2
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr %struct.ethsw_port_priv, ptr %add.ptr.i, i32 0, i32 5, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mc_io, align 4
  %dpsw_handle = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %dpsw_handle, align 8
  %call2 = tail call i32 @dpsw_get_attributes(ptr noundef %8, i32 noundef 0, i16 noundef zeroext %10, ptr noundef %sw_attr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str, i32 noundef %call2) #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %max_vlans = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %max_vlans to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %max_vlans, align 8
  %num_vlans = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 3, i32 10
  %13 = ptrtoint ptr %num_vlans to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_vlans, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp.not = icmp ugt i16 %12, %14
  br i1 %cmp.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %15 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mc_io, align 4
  %17 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %dpsw_handle, align 8
  %call14 = tail call i32 @dpsw_get_attributes(ptr noundef %16, i32 noundef 0, i16 noundef zeroext %18, ptr noundef %sw_attr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str, i32 noundef %call14) #18
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %19 = ptrtoint ptr %max_vlans to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %max_vlans, align 8
  %21 = ptrtoint ptr %num_vlans to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_vlans, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %22)
  %cmp23.not = icmp ugt i16 %20, %22
  br i1 %cmp23.not, label %if.end26, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  %23 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ethsw_data, align 4
  %25 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vid, align 2
  %idxprom30 = zext i16 %26 to i32
  %arrayidx31 = getelementptr %struct.ethsw_core, ptr %24, i32 0, i32 10, i32 %idxprom30
  %27 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool32.not = icmp eq i8 %28, 0
  br i1 %tobool32.not, label %if.then33, label %if.end26.if.end46_crit_edge

if.end26.if.end46_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

if.then33:                                        ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vcfg.i) #15
  %fdb.i.i = getelementptr i8, ptr %netdev, i32 6420
  %29 = ptrtoint ptr %fdb.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fdb.i.i, align 4
  %fdb_id.i.i = getelementptr inbounds %struct.dpaa2_switch_fdb, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %fdb_id.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %fdb_id.i.i, align 4
  %33 = ptrtoint ptr %vcfg.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %vcfg.i, align 2
  %mc_io.i = getelementptr inbounds %struct.ethsw_core, ptr %24, i32 0, i32 1
  %34 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mc_io.i, align 4
  %dpsw_handle.i = getelementptr inbounds %struct.ethsw_core, ptr %24, i32 0, i32 2
  %36 = ptrtoint ptr %dpsw_handle.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %dpsw_handle.i, align 8
  %call1.i = call i32 @dpsw_vlan_add(ptr noundef %35, i32 noundef 0, i16 noundef zeroext %37, i16 noundef zeroext %26, ptr noundef nonnull %vcfg.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end38, label %dpaa2_switch_add_vlan.exit

dpaa2_switch_add_vlan.exit:                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  %38 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %24, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.26, i32 noundef %call1.i) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vcfg.i) #15
  br label %cleanup

if.end38:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  %40 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %arrayidx31, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vcfg.i) #15
  %41 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ethsw_data, align 4
  %43 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vid, align 2
  %idxprom42 = zext i16 %44 to i32
  %arrayidx43 = getelementptr %struct.ethsw_core, ptr %42, i32 0, i32 10, i32 %idxprom42
  %45 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx43, align 1
  %47 = or i8 %46, 8
  store i8 %47, ptr %arrayidx43, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.end38, %if.end26.if.end46_crit_edge
  %48 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %vid, align 2
  %flags = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 1
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %flags, align 4
  %call48 = call fastcc i32 @dpaa2_switch_port_add_vlan(ptr noundef %add.ptr.i, i16 noundef zeroext %49, i16 noundef zeroext %51)
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %dpaa2_switch_add_vlan.exit, %if.end17.cleanup_crit_edge, %if.then16, %if.end5.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ %call14, %if.then16 ], [ %call48, %if.end46 ], [ -17, %entry.cleanup_crit_edge ], [ -28, %if.end5.cleanup_crit_edge ], [ -28, %if.end17.cleanup_crit_edge ], [ %call1.i, %dpaa2_switch_add_vlan.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_get_attributes(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpaa2_switch_port_add_vlan(ptr nocapture noundef %port_priv, i16 noundef zeroext %vid, i16 noundef zeroext %flags) unnamed_addr #1 align 64 {
entry:
  %vcfg = alloca %struct.dpsw_vlan_if_cfg, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ethsw_data = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 2
  %0 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethsw_data, align 4
  %2 = ptrtoint ptr %port_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_priv, align 4
  call void @llvm.lifetime.start.p0(i64 134, ptr nonnull %vcfg) #15
  %4 = getelementptr inbounds i8, ptr %vcfg, i32 2
  %5 = call ptr @memset(ptr %4, i32 0, i32 130)
  %idxprom = zext i16 %vid to i32
  %arrayidx = getelementptr %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 5, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.30, i32 noundef %idxprom) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %vcfg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %vcfg, align 2
  %idx = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 1
  %9 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %idx, align 4
  %if_id = getelementptr inbounds %struct.dpsw_vlan_if_cfg, ptr %vcfg, i32 0, i32 2
  %11 = ptrtoint ptr %if_id to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %if_id, align 2
  %fdb.i = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 8
  %12 = ptrtoint ptr %fdb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fdb.i, align 4
  %fdb_id.i = getelementptr inbounds %struct.dpaa2_switch_fdb, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %fdb_id.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %fdb_id.i, align 4
  %fdb_id = getelementptr inbounds %struct.dpsw_vlan_if_cfg, ptr %vcfg, i32 0, i32 3
  %16 = ptrtoint ptr %fdb_id to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %fdb_id, align 2
  %options = getelementptr inbounds %struct.dpsw_vlan_if_cfg, ptr %vcfg, i32 0, i32 1
  %17 = ptrtoint ptr %options to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %options, align 2
  %19 = or i16 %18, 1
  store i16 %19, ptr %options, align 2
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mc_io, align 4
  %dpsw_handle = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %dpsw_handle, align 8
  %call5 = call i32 @dpsw_vlan_add_if(ptr noundef %21, i32 noundef 0, i16 noundef zeroext %23, i16 noundef zeroext %vid, ptr noundef nonnull %vcfg) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.31, i32 noundef %call5) #18
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %arrayidx, align 1
  %conv12 = zext i16 %flags to i32
  %and = and i32 %conv12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end8.if.end27_crit_edge, label %if.then14

if.end8.if.end27_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.then14:                                        ; preds = %if.end8
  %25 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mc_io, align 4
  %27 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %dpsw_handle, align 8
  %call17 = call i32 @dpsw_vlan_add_if_untagged(ptr noundef %26, i32 noundef 0, i16 noundef zeroext %28, i16 noundef zeroext %vid, ptr noundef nonnull %vcfg) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.32, i32 noundef %call17) #18
  br label %cleanup

if.end20:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx, align 1
  %31 = or i8 %30, 2
  store i8 %31, ptr %arrayidx, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.end20, %if.end8.if.end27_crit_edge
  %and29 = and i32 %conv12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.if.end36_crit_edge, label %if.then31

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then31:                                        ; preds = %if.end27
  %call32 = call fastcc i32 @dpaa2_switch_port_set_pvid(ptr noundef %port_priv, i16 noundef zeroext %vid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then31.if.end36_crit_edge, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then31.if.end36_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.end36:                                         ; preds = %if.then31.if.end36_crit_edge, %if.end27.if.end36_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then31.cleanup_crit_edge, %if.then19, %if.then7, %if.then
  %retval.0 = phi i32 [ -17, %if.then ], [ %call5, %if.then7 ], [ %call17, %if.then19 ], [ 0, %if.end36 ], [ %call32, %if.then31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 134, ptr nonnull %vcfg) #15
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpaa2_switch_port_vlans_del(ptr nocapture noundef %netdev, ptr nocapture noundef readonly %vlan) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %orig_dev = getelementptr inbounds %struct.switchdev_obj, ptr %vlan, i32 0, i32 1
  %0 = ptrtoint ptr %orig_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %orig_dev, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %3, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %vid = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %4 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vid, align 2
  %call2 = tail call fastcc i32 @dpaa2_switch_port_del_vlan(ptr noundef %add.ptr.i, i16 noundef zeroext %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpaa2_switch_port_del_vlan(ptr nocapture noundef %port_priv, i16 noundef zeroext %vid) unnamed_addr #1 align 64 {
entry:
  %vcfg = alloca %struct.dpsw_vlan_if_cfg, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ethsw_data = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 2
  %0 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethsw_data, align 4
  %2 = ptrtoint ptr %port_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_priv, align 4
  call void @llvm.lifetime.start.p0(i64 134, ptr nonnull %vcfg) #15
  %4 = getelementptr inbounds i8, ptr %vcfg, i32 2
  %5 = call ptr @memset(ptr %4, i32 255, i32 132)
  %idxprom = zext i16 %vid to i32
  %arrayidx = getelementptr %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 5, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = and i8 %7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then6:                                         ; preds = %if.end
  %call = tail call fastcc i32 @dpaa2_switch_port_set_pvid(ptr noundef %port_priv, i16 noundef zeroext 4095)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.then6.if.end10_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.end10:                                         ; preds = %if.then6.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %9 = ptrtoint ptr %vcfg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %vcfg, align 2
  %idx = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 1
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %idx, align 4
  %if_id = getelementptr inbounds %struct.dpsw_vlan_if_cfg, ptr %vcfg, i32 0, i32 2
  %12 = ptrtoint ptr %if_id to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %if_id, align 2
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %15 = and i8 %14, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool17.not = icmp eq i8 %15, 0
  br i1 %tobool17.not, label %if.end10.if.end29_crit_edge, label %if.then18

if.end10.if.end29_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then18:                                        ; preds = %if.end10
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mc_io, align 4
  %dpsw_handle = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %dpsw_handle, align 8
  %call19 = call i32 @dpsw_vlan_remove_if_untagged(ptr noundef %17, i32 noundef 0, i16 noundef zeroext %19, i16 noundef zeroext %vid, ptr noundef nonnull %vcfg) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.if.end22_crit_edge, label %if.then21

if.then18.if.end22_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.37, i32 noundef %call19) #18
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.then18.if.end22_crit_edge
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %22 = and i8 %21, -3
  store i8 %22, ptr %arrayidx, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.end22, %if.end10.if.end29_crit_edge
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 1
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool35.not = icmp eq i8 %25, 0
  br i1 %tobool35.not, label %if.end29.cleanup_crit_edge, label %if.then36

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then36:                                        ; preds = %if.end29
  %mc_io37 = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %mc_io37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mc_io37, align 4
  %dpsw_handle38 = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %dpsw_handle38 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %dpsw_handle38, align 8
  %call39 = call i32 @dpsw_vlan_remove_if(ptr noundef %27, i32 noundef 0, i16 noundef zeroext %29, i16 noundef zeroext %vid, ptr noundef nonnull %vcfg) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.38, i32 noundef %call39) #18
  br label %cleanup

if.end42:                                         ; preds = %if.then36
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  %32 = and i8 %31, -2
  store i8 %32, ptr %arrayidx, align 1
  %num_ifs49 = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 3, i32 8
  %33 = ptrtoint ptr %num_ifs49 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %num_ifs49, align 2
  %conv50 = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp123.not = icmp eq i16 %34, 0
  br i1 %cmp123.not, label %if.end42.for.end_crit_edge, label %for.body.lr.ph

if.end42.for.end_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end42
  %ports = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 8
  %35 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ports, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0124 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx52 = getelementptr ptr, ptr %36, i32 %i.0124
  %37 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx52, align 4
  %tobool53.not = icmp eq ptr %38, null
  br i1 %tobool53.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx58 = getelementptr %struct.ethsw_port_priv, ptr %38, i32 0, i32 5, i32 %idxprom
  %39 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx58, align 1
  %41 = and i8 %40, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool61.not = icmp eq i8 %41, 0
  br i1 %tobool61.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0124, 1
  %exitcond.not = icmp eq i32 %inc, %conv50
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end42.for.end_crit_edge
  %arrayidx66 = getelementptr %struct.ethsw_core, ptr %1, i32 0, i32 10, i32 %idxprom
  %42 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx66, align 1
  %44 = and i8 %43, -9
  store i8 %44, ptr %arrayidx66, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i, label %for.end.cleanup_crit_edge, label %if.end.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %for.end
  %45 = ptrtoint ptr %mc_io37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mc_io37, align 4
  %47 = ptrtoint ptr %dpsw_handle38 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %dpsw_handle38, align 8
  %call.i = call i32 @dpsw_vlan_remove(ptr noundef %46, i32 noundef 0, i16 noundef zeroext %48, i16 noundef zeroext %vid) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.39, i32 noundef %call.i) #18
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %51 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %arrayidx66, align 1
  %52 = ptrtoint ptr %num_ifs49 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %num_ifs49, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp32.not.i = icmp eq i16 %53, 0
  br i1 %cmp32.not.i, label %if.end3.i.cleanup_crit_edge, label %for.body.lr.ph.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end3.i
  %ports.i = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %54 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ports.i, align 4
  %arrayidx8.i = getelementptr ptr, ptr %55, i32 %i.033.i
  %56 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx8.i, align 4
  %tobool9.not.i = icmp eq ptr %57, null
  br i1 %tobool9.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then10.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then10.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx13.i = getelementptr %struct.ethsw_port_priv, ptr %57, i32 0, i32 5, i32 %idxprom
  %58 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %arrayidx13.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then10.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %59 = ptrtoint ptr %num_ifs49 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %num_ifs49, align 2
  %conv.i = zext i16 %60 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %do.end.i, %for.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then41, %if.end29.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call39, %if.then41 ], [ -2, %entry.cleanup_crit_edge ], [ %call, %if.then6.cleanup_crit_edge ], [ %call.i, %do.end.i ], [ -2, %for.end.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ], [ 0, %if.end3.i.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 134, ptr nonnull %vcfg) #15
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dpaa2_switch_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 @unregister_switchdev_blocking_notifier(ptr noundef nonnull @dpaa2_switch_port_switchdev_blocking_nb) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %do.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %call.i) #18
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %call2.i = tail call i32 @unregister_switchdev_notifier(ptr noundef nonnull @dpaa2_switch_port_switchdev_nb) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end10.i_crit_edge, label %do.end7.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %call2.i) #18
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end7.i, %if.end.i.if.end10.i_crit_edge
  %call11.i = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @dpaa2_switch_port_nb) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.dpaa2_switch_unregister_notifiers.exit_crit_edge, label %do.end16.i

if.end10.i.dpaa2_switch_unregister_notifiers.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_unregister_notifiers.exit

do.end16.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %call11.i) #18
  br label %dpaa2_switch_unregister_notifiers.exit

dpaa2_switch_unregister_notifiers.exit:           ; preds = %do.end16.i, %if.end10.i.dpaa2_switch_unregister_notifiers.exit_crit_edge
  tail call void @fsl_mc_driver_unregister(ptr noundef nonnull @dpaa2_switch_drv) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_mc_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__fsl_mc_driver_register(ptr noundef nonnull @dpaa2_switch_drv, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @dpaa2_switch_port_nb) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, i32 noundef %call.i) #18
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %call2.i = tail call i32 @register_switchdev_notifier(ptr noundef nonnull @dpaa2_switch_port_switchdev_nb) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end10.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, i32 noundef %call2.i) #18
  br label %err_switchdev_nb.i

if.end10.i:                                       ; preds = %if.end.i
  %call11.i = tail call i32 @register_switchdev_blocking_notifier(ptr noundef nonnull @dpaa2_switch_port_switchdev_blocking_nb) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.cleanup_crit_edge, label %do.end16.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end16.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, i32 noundef %call11.i) #18
  %call20.i = tail call i32 @unregister_switchdev_notifier(ptr noundef nonnull @dpaa2_switch_port_switchdev_nb) #15
  br label %err_switchdev_nb.i

err_switchdev_nb.i:                               ; preds = %do.end16.i, %do.end7.i
  %err.0.i = phi i32 [ %call2.i, %do.end7.i ], [ %call11.i, %do.end16.i ]
  %call21.i = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @dpaa2_switch_port_nb) #15
  br label %if.then3

if.then3:                                         ; preds = %err_switchdev_nb.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %err.0.i, %err_switchdev_nb.i ], [ %call.i, %do.end.i ]
  tail call void @fsl_mc_driver_unregister(ptr noundef nonnull @dpaa2_switch_drv) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end10.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end10.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_port_open(ptr noundef %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ethsw_data = getelementptr i8, ptr %netdev, i32 2312
  %0 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethsw_data, align 4
  %mac.i = getelementptr i8, ptr %netdev, i32 6432
  %2 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %land.lhs.true.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i:                                  ; preds = %entry
  %link_type.i = getelementptr inbounds %struct.dpaa2_mac, ptr %3, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %link_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_type.i, align 4
  %6 = and i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %switch.i = icmp eq i32 %6, 2
  br i1 %switch.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.if.then_crit_edge

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @netif_carrier_off(ptr noundef %netdev) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.i.if.end_crit_edge
  %7 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ethsw_data, align 4
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mc_io, align 4
  %dpsw_handle = getelementptr inbounds %struct.ethsw_core, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dpsw_handle, align 8
  %idx = getelementptr i8, ptr %netdev, i32 2308
  %13 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %idx, align 4
  %call4 = tail call i32 @dpsw_if_enable(ptr noundef %10, i32 noundef 0, i16 noundef zeroext %12, i16 noundef zeroext %14) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.1, i32 noundef %call4) #18
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i = tail call i32 @rtnl_is_locked() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i22 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i22, label %land.rhs.i, label %if.end6.if.end29.i_crit_edge

if.end6.if.end29.i_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i

land.rhs.i:                                       ; preds = %if.end6
  %.b48.i = load i1, ptr @dpaa2_switch_enable_ctrl_if_napi.__already_done, align 1
  br i1 %.b48.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !400

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @dpaa2_switch_enable_ctrl_if_napi.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 652, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 652) #15
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %if.end6.if.end29.i_crit_edge
  %napi_users.i = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 16
  %15 = ptrtoint ptr %napi_users.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %napi_users.i, align 4
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %napi_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc.i)
  %cmp.i = icmp sgt i32 %inc.i, 1
  br i1 %cmp.i, label %if.end29.i.dpaa2_switch_enable_ctrl_if_napi.exit_crit_edge, label %for.body.preheader.i

if.end29.i.dpaa2_switch_enable_ctrl_if_napi.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_enable_ctrl_if_napi.exit

for.body.preheader.i:                             ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #17
  %napi.i = getelementptr %struct.ethsw_core, ptr %1, i32 0, i32 12, i32 0, i32 4
  tail call void @napi_enable(ptr noundef %napi.i) #15
  %napi.1.i = getelementptr %struct.ethsw_core, ptr %1, i32 0, i32 12, i32 1, i32 4
  tail call void @napi_enable(ptr noundef %napi.1.i) #15
  br label %dpaa2_switch_enable_ctrl_if_napi.exit

dpaa2_switch_enable_ctrl_if_napi.exit:            ; preds = %for.body.preheader.i, %if.end29.i.dpaa2_switch_enable_ctrl_if_napi.exit_crit_edge
  %17 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mac.i, align 4
  %tobool.not.i24 = icmp eq ptr %18, null
  br i1 %tobool.not.i24, label %dpaa2_switch_enable_ctrl_if_napi.exit.cleanup_crit_edge, label %land.lhs.true.i27

dpaa2_switch_enable_ctrl_if_napi.exit.cleanup_crit_edge: ; preds = %dpaa2_switch_enable_ctrl_if_napi.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.i27:                                ; preds = %dpaa2_switch_enable_ctrl_if_napi.exit
  %link_type.i25 = getelementptr inbounds %struct.dpaa2_mac, ptr %18, i32 0, i32 4, i32 3
  %19 = ptrtoint ptr %link_type.i25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %link_type.i25, align 4
  %21 = and i32 %20, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %switch.i26 = icmp eq i32 %21, 2
  br i1 %switch.i26, label %if.then8, label %land.lhs.true.i27.cleanup_crit_edge

land.lhs.true.i27.cleanup_crit_edge:              ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #17
  %phylink = getelementptr inbounds %struct.dpaa2_mac, ptr %18, i32 0, i32 6
  %22 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phylink, align 8
  tail call void @phylink_start(ptr noundef %23) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %land.lhs.true.i27.cleanup_crit_edge, %dpaa2_switch_enable_ctrl_if_napi.exit.cleanup_crit_edge, %if.then5
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_port_stop(ptr noundef %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ethsw_data = getelementptr i8, ptr %netdev, i32 2312
  %0 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethsw_data, align 4
  %mac.i = getelementptr i8, ptr %netdev, i32 6432
  %2 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %land.lhs.true.i

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true.i:                                  ; preds = %entry
  %link_type.i = getelementptr inbounds %struct.dpaa2_mac, ptr %3, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %link_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_type.i, align 4
  %6 = and i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %switch.i = icmp eq i32 %6, 2
  br i1 %switch.i, label %if.then, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %phylink = getelementptr inbounds %struct.dpaa2_mac, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phylink, align 8
  tail call void @phylink_stop(ptr noundef %8) #15
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.i.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @netif_tx_stop_all_queues(ptr noundef %netdev) #15
  tail call void @netif_carrier_off(ptr noundef %netdev) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ethsw_data, align 4
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mc_io, align 4
  %dpsw_handle = getelementptr inbounds %struct.ethsw_core, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %dpsw_handle, align 8
  %idx = getelementptr i8, ptr %netdev, i32 2308
  %15 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %idx, align 4
  %call4 = tail call i32 @dpsw_if_disable(ptr noundef %12, i32 noundef 0, i16 noundef zeroext %14, i16 noundef zeroext %16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.4, i32 noundef %call4) #18
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i = tail call i32 @rtnl_is_locked() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i19 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i19, label %land.rhs.i, label %if.end6.if.end29.i_crit_edge

if.end6.if.end29.i_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i

land.rhs.i:                                       ; preds = %if.end6
  %.b47.i = load i1, ptr @dpaa2_switch_disable_ctrl_if_napi.__already_done, align 1
  br i1 %.b47.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !400

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @dpaa2_switch_disable_ctrl_if_napi.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 670, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 670) #15
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %if.end6.if.end29.i_crit_edge
  %napi_users.i = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 16
  %17 = ptrtoint ptr %napi_users.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %napi_users.i, align 4
  %dec.i = add i32 %18, -1
  store i32 %dec.i, ptr %napi_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool38.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool38.not.i, label %for.body.preheader.i, label %if.end29.i.cleanup_crit_edge

if.end29.i.cleanup_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #17
  %napi.i = getelementptr %struct.ethsw_core, ptr %1, i32 0, i32 12, i32 0, i32 4
  tail call void @napi_disable(ptr noundef %napi.i) #15
  %napi.1.i = getelementptr %struct.ethsw_core, ptr %1, i32 0, i32 12, i32 1, i32 4
  tail call void @napi_disable(ptr noundef %napi.1.i) #15
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader.i, %if.end29.i.cleanup_crit_edge, %if.then5
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_port_tx(ptr noundef %skb, ptr noundef %net_dev) #1 align 64 {
entry:
  %fd = alloca %struct.dpaa2_fd, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ethsw_data = getelementptr i8, ptr %net_dev, i32 2312
  %0 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethsw_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fd) #15
  %2 = getelementptr inbounds %struct.dpaa2_fd_simple, ptr %fd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.dpaa2_fd_simple, ptr %fd, i32 0, i32 3
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = call ptr @memset(ptr %fd, i32 255, i32 32)
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %sub.ptr.sub.i)
  %cmp = icmp ult i32 %sub.ptr.sub.i, 192
  br i1 %cmp, label %if.then, label %entry.if.end22_crit_edge, !prof !401

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.then:                                          ; preds = %entry
  %call3 = tail call ptr @skb_realloc_headroom(ptr noundef %skb, i32 noundef 192) #15
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.body, label %cleanup, !prof !401

do.body:                                          ; preds = %if.then
  %call14 = tail call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body.err_free_skb_crit_edge, label %do.end

do.body.err_free_skb_crit_edge:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_free_skb

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %net_dev) #18
  br label %err_free_skb

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #15
  br label %if.end22

if.end22:                                         ; preds = %cleanup, %entry.if.end22_crit_edge
  %skb.addr.1 = phi ptr [ %call3, %cleanup ], [ %skb, %entry.if.end22_crit_edge ]
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 12
  %9 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end22.skb_unshare.exit_crit_edge, label %skb_cloned.exit.i

if.end22.skb_unshare.exit_crit_edge:              ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_unshare.exit

skb_cloned.exit.i:                                ; preds = %if.end22
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 17
  %10 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #15
  %12 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %13, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.skb_unshare.exit_crit_edge, label %if.then6.i

skb_cloned.exit.i.skb_unshare.exit_crit_edge:     ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_unshare.exit

if.then6.i:                                       ; preds = %skb_cloned.exit.i
  %call7.i = tail call ptr @skb_copy(ptr noundef %skb.addr.1, i32 noundef 2592) #15
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_unshare.exit.thread, label %skb_unshare.exit.thread145, !prof !401

skb_unshare.exit.thread145:                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @consume_skb(ptr noundef %skb.addr.1) #15
  br label %if.end48

skb_unshare.exit.thread:                          ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.1, i32 noundef 0) #15
  br label %do.body34

skb_unshare.exit:                                 ; preds = %skb_cloned.exit.i.skb_unshare.exit_crit_edge, %if.end22.skb_unshare.exit_crit_edge
  %tobool24.not = icmp eq ptr %skb.addr.1, null
  br i1 %tobool24.not, label %skb_unshare.exit.do.body34_crit_edge, label %skb_unshare.exit.if.end48_crit_edge, !prof !401

skb_unshare.exit.if.end48_crit_edge:              ; preds = %skb_unshare.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

skb_unshare.exit.do.body34_crit_edge:             ; preds = %skb_unshare.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body34

do.body34:                                        ; preds = %skb_unshare.exit.do.body34_crit_edge, %skb_unshare.exit.thread
  %call35 = tail call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %do.body34.cleanup108_crit_edge, label %do.end40

do.body34.cleanup108_crit_edge:                   ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup108

do.end40:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #17
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %net_dev) #18
  br label %cleanup108

if.end48:                                         ; preds = %skb_unshare.exit.if.end48_crit_edge, %skb_unshare.exit.thread145
  %skb.addr.0.i148 = phi ptr [ %call7.i, %skb_unshare.exit.thread145 ], [ %skb.addr.1, %skb_unshare.exit.if.end48_crit_edge ]
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i148, i32 0, i32 7
  %14 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i, label %if.end48.if.end66_crit_edge, label %cond.true.i

if.end48.if.end66_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end66

cond.true.i:                                      ; preds = %if.end48
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i148, i32 noundef %15) #15
  %tobool.not.i.i133 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i133, label %do.body52, label %cond.true.i.if.end66_crit_edge

cond.true.i.if.end66_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end66

do.body52:                                        ; preds = %cond.true.i
  %call53 = tail call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %do.body52.err_free_skb_crit_edge, label %do.end58

do.body52.err_free_skb_crit_edge:                 ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_free_skb

do.end58:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #17
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %net_dev, i32 noundef -12) #18
  br label %err_free_skb

if.end66:                                         ; preds = %cond.true.i.if.end66_crit_edge, %if.end48.if.end66_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %data.i134 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i148, i32 0, i32 19
  %18 = ptrtoint ptr %data.i134 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i134, align 4
  %add.ptr2.i = getelementptr i8, ptr %19, i32 -192
  %20 = ptrtoint ptr %add.ptr2.i to i32
  %add.i = add i32 %20, 63
  %and.i = and i32 %add.i, -64
  %21 = inttoptr i32 %and.i to ptr
  %add.ptr3.i = getelementptr i8, ptr %21, i32 64
  %22 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %add.ptr3.i, align 64
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %skb.addr.0.i148, ptr %21, align 64
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i148, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i.i, align 8
  %call.i.i135 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %21) #15
  br i1 %call.i.i135, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end66
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !400

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %17) #15
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %26 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %17, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %29, %if.end.i.i.i ], [ %27, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #15
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %17, i32 noundef -1) #15
  br label %do.body76

dma_map_single_attrs.exit.i:                      ; preds = %if.end66
  %sub.ptr.lhs.cast.i136 = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i137 = sub i32 %sub.ptr.lhs.cast.i136, %and.i
  tail call void @debug_dma_map_single(ptr noundef %17, ptr noundef %21, i32 noundef %sub.ptr.sub.i137) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %30 = load ptr, ptr @mem_map, align 4
  %sub.i.i = add i32 %and.i, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %30, i32 %shr.i.i
  %and.i.i138 = and i32 %add.i, 4032
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %17, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i138, i32 noundef %sub.ptr.sub.i137, i32 noundef 1, i32 noundef 0) #15
  tail call void @debug_dma_mapping_error(ptr noundef %17, i32 noundef %call41.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.do.body76_crit_edge, label %dpaa2_switch_build_single_fd.exit

dma_map_single_attrs.exit.i.do.body76_crit_edge:  ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body76

dpaa2_switch_build_single_fd.exit:                ; preds = %dma_map_single_attrs.exit.i
  %31 = call ptr @memset(ptr %2, i32 0, i32 24)
  %conv.i.i = zext i32 %call41.i.i to i64
  %32 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i) #15
  %33 = ptrtoint ptr %fd to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %fd, align 8
  %34 = ptrtoint ptr %data.i134 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i134, align 4
  %sub.ptr.lhs.cast9.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub11.i = sub i32 %sub.ptr.lhs.cast9.i, %and.i
  %conv.i = trunc i32 %sub.ptr.sub11.i to i16
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i148, i32 0, i32 6
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #15
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %2, align 8
  %40 = and i16 %conv.i, -12289
  %41 = call i16 @llvm.bswap.i16(i16 %40)
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %3, align 2
  %tx_qdid = getelementptr i8, ptr %net_dev, i32 6416
  br label %do.body91

do.body76:                                        ; preds = %dma_map_single_attrs.exit.i.do.body76_crit_edge, %dma_map_single_attrs.exit.thread.i
  %call77 = tail call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %do.body76.err_free_skb_crit_edge, label %do.end82

do.body76.err_free_skb_crit_edge:                 ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_free_skb

do.end82:                                         ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #17
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %net_dev, i32 noundef -12) #18
  br label %err_free_skb

do.body91:                                        ; preds = %do.body91.do.body91_crit_edge, %dpaa2_switch_build_single_fd.exit
  %retries.0 = phi i32 [ 1000, %dpaa2_switch_build_single_fd.exit ], [ %dec, %do.body91.do.body91_crit_edge ]
  %43 = ptrtoint ptr %tx_qdid to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %tx_qdid, align 4
  %conv = zext i16 %44 to i32
  %call92 = call i32 @dpaa2_io_service_enqueue_qd(ptr noundef null, i32 noundef %conv, i8 noundef zeroext 8, i16 noundef zeroext 0, ptr noundef nonnull %fd) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call92)
  %cmp94 = icmp ne i32 %call92, -16
  %dec = add nsw i32 %retries.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool96.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp94, i1 true, i1 %tobool96.not
  br i1 %or.cond, label %do.end97, label %do.body91.do.body91_crit_edge

do.body91.do.body91_crit_edge:                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body91

do.end97:                                         ; preds = %do.body91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp98 = icmp slt i32 %call92, 0
  br i1 %cmp98, label %if.then106, label %do.end97.cleanup108_crit_edge, !prof !401

do.end97.cleanup108_crit_edge:                    ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup108

if.then106:                                       ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @dpaa2_switch_free_fd(ptr noundef %1, ptr noundef nonnull %fd)
  br label %cleanup108

err_free_skb:                                     ; preds = %do.end82, %do.body76.err_free_skb_crit_edge, %do.end58, %do.body52.err_free_skb_crit_edge, %do.end, %do.body.err_free_skb_crit_edge
  %skb.addr.2 = phi ptr [ %skb.addr.0.i148, %do.end58 ], [ %skb.addr.0.i148, %do.body52.err_free_skb_crit_edge ], [ %skb.addr.0.i148, %do.end82 ], [ %skb.addr.0.i148, %do.body76.err_free_skb_crit_edge ], [ %skb, %do.end ], [ %skb, %do.body.err_free_skb_crit_edge ]
  tail call void @consume_skb(ptr noundef %skb.addr.2) #15
  br label %cleanup108

cleanup108:                                       ; preds = %err_free_skb, %if.then106, %do.end97.cleanup108_crit_edge, %do.end40, %do.body34.cleanup108_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fd) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_port_change_mtu(ptr noundef %netdev, i32 noundef %mtu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ethsw_data = getelementptr i8, ptr %netdev, i32 2312
  %0 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethsw_data, align 4
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_io, align 4
  %dpsw_handle = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dpsw_handle, align 8
  %idx = getelementptr i8, ptr %netdev, i32 2308
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %idx, align 4
  %8 = trunc i32 %mtu to i16
  %conv = add i16 %8, 22
  %call3 = tail call i32 @dpsw_if_set_max_frame_length(ptr noundef %3, i32 noundef 0, i16 noundef zeroext %5, i16 noundef zeroext %7, i16 noundef zeroext %conv) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.19, i32 noundef %call3) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %mtu4 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %9 = ptrtoint ptr %mtu4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mtu, ptr %mtu4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpaa2_switch_port_get_stats(ptr noundef %netdev, ptr noundef %stats) #1 align 64 {
entry:
  %tmp = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #15
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %tmp, align 8, !annotation !402
  %ethsw_data = getelementptr i8, ptr %netdev, i32 2312
  %1 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ethsw_data, align 4
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mc_io, align 4
  %dpsw_handle = getelementptr inbounds %struct.ethsw_core, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %dpsw_handle, align 8
  %idx = getelementptr i8, ptr %netdev, i32 2308
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %idx, align 4
  %call2 = tail call i32 @dpsw_if_get_counter(ptr noundef %4, i32 noundef 0, i16 noundef zeroext %6, i16 noundef zeroext %8, i32 noundef 0, ptr noundef %stats) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.error_crit_edge

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ethsw_data, align 4
  %mc_io4 = getelementptr inbounds %struct.ethsw_core, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %mc_io4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mc_io4, align 4
  %dpsw_handle6 = getelementptr inbounds %struct.ethsw_core, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %dpsw_handle6 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %dpsw_handle6, align 8
  %15 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %idx, align 4
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %call8 = tail call i32 @dpsw_if_get_counter(ptr noundef %12, i32 noundef 0, i16 noundef zeroext %14, i16 noundef zeroext %16, i32 noundef 8, ptr noundef %tx_packets) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end11:                                         ; preds = %if.end
  %17 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ethsw_data, align 4
  %mc_io13 = getelementptr inbounds %struct.ethsw_core, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %mc_io13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mc_io13, align 4
  %dpsw_handle15 = getelementptr inbounds %struct.ethsw_core, ptr %18, i32 0, i32 2
  %21 = ptrtoint ptr %dpsw_handle15 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %dpsw_handle15, align 8
  %23 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %idx, align 4
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %call17 = tail call i32 @dpsw_if_get_counter(ptr noundef %20, i32 noundef 0, i16 noundef zeroext %22, i16 noundef zeroext %24, i32 noundef 1, ptr noundef %rx_bytes) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end11.error_crit_edge

if.end11.error_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end20:                                         ; preds = %if.end11
  %25 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ethsw_data, align 4
  %mc_io22 = getelementptr inbounds %struct.ethsw_core, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %mc_io22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mc_io22, align 4
  %dpsw_handle24 = getelementptr inbounds %struct.ethsw_core, ptr %26, i32 0, i32 2
  %29 = ptrtoint ptr %dpsw_handle24 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %dpsw_handle24, align 8
  %31 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %idx, align 4
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %call26 = tail call i32 @dpsw_if_get_counter(ptr noundef %28, i32 noundef 0, i16 noundef zeroext %30, i16 noundef zeroext %32, i32 noundef 9, ptr noundef %tx_bytes) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end20.error_crit_edge

if.end20.error_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end29:                                         ; preds = %if.end20
  %33 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ethsw_data, align 4
  %mc_io31 = getelementptr inbounds %struct.ethsw_core, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %mc_io31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mc_io31, align 4
  %dpsw_handle33 = getelementptr inbounds %struct.ethsw_core, ptr %34, i32 0, i32 2
  %37 = ptrtoint ptr %dpsw_handle33 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %dpsw_handle33, align 8
  %39 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %idx, align 4
  %rx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 6
  %call35 = tail call i32 @dpsw_if_get_counter(ptr noundef %36, i32 noundef 0, i16 noundef zeroext %38, i16 noundef zeroext %40, i32 noundef 3, ptr noundef %rx_dropped) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end29.error_crit_edge

if.end29.error_crit_edge:                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end38:                                         ; preds = %if.end29
  %41 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ethsw_data, align 4
  %mc_io40 = getelementptr inbounds %struct.ethsw_core, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %mc_io40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mc_io40, align 4
  %dpsw_handle42 = getelementptr inbounds %struct.ethsw_core, ptr %42, i32 0, i32 2
  %45 = ptrtoint ptr %dpsw_handle42 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %dpsw_handle42, align 8
  %47 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %idx, align 4
  %call44 = call i32 @dpsw_if_get_counter(ptr noundef %44, i32 noundef 0, i16 noundef zeroext %46, i16 noundef zeroext %48, i32 noundef 2, ptr noundef nonnull %tmp) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end38.error_crit_edge

if.end38.error_crit_edge:                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end47:                                         ; preds = %if.end38
  %49 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %tmp, align 8
  %51 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %rx_dropped, align 8
  %add = add i64 %52, %50
  store i64 %add, ptr %rx_dropped, align 8
  %53 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ethsw_data, align 4
  %mc_io50 = getelementptr inbounds %struct.ethsw_core, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %mc_io50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mc_io50, align 4
  %dpsw_handle52 = getelementptr inbounds %struct.ethsw_core, ptr %54, i32 0, i32 2
  %57 = ptrtoint ptr %dpsw_handle52 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %dpsw_handle52, align 8
  %59 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %idx, align 4
  %tx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  %call54 = call i32 @dpsw_if_get_counter(ptr noundef %56, i32 noundef 0, i16 noundef zeroext %58, i16 noundef zeroext %60, i32 noundef 10, ptr noundef %tx_dropped) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end47.cleanup_crit_edge, label %if.end47.error_crit_edge

if.end47.error_crit_edge:                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

error:                                            ; preds = %if.end47.error_crit_edge, %if.end38.error_crit_edge, %if.end29.error_crit_edge, %if.end20.error_crit_edge, %if.end11.error_crit_edge, %if.end.error_crit_edge, %entry.error_crit_edge
  %err.0 = phi i32 [ %call2, %entry.error_crit_edge ], [ %call8, %if.end.error_crit_edge ], [ %call17, %if.end11.error_crit_edge ], [ %call26, %if.end20.error_crit_edge ], [ %call35, %if.end29.error_crit_edge ], [ %call44, %if.end38.error_crit_edge ], [ %call54, %if.end47.error_crit_edge ]
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.20, i32 noundef %err.0) #18
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end47.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dpaa2_switch_port_has_offload_stats(ptr nocapture noundef readnone %netdev, i32 noundef %attr_id) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr_id)
  %cmp = icmp eq i32 %attr_id, 1
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_port_get_offload_stats(i32 noundef %attr_id, ptr noundef %netdev, ptr noundef %sp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr_id)
  %cond = icmp eq i32 %attr_id, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dpaa2_switch_port_get_stats(ptr noundef %netdev, ptr noundef %sp)
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_port_vlan_add(ptr noundef %netdev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #1 align 64 {
entry:
  %vlan = alloca %struct.switchdev_obj_port_vlan, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vlan) #15
  %0 = getelementptr inbounds %struct.switchdev_obj, ptr %vlan, i32 0, i32 1
  %1 = getelementptr inbounds %struct.switchdev_obj, ptr %vlan, i32 0, i32 2
  %2 = getelementptr inbounds %struct.switchdev_obj, ptr %vlan, i32 0, i32 3
  %3 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %4 = ptrtoint ptr %vlan to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %vlan, align 8
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %netdev, ptr %0, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %1, align 4
  %7 = call ptr @memset(ptr %2, i32 0, i32 14)
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %vid, ptr %3, align 2
  %call = call i32 @dpaa2_switch_port_vlans_add(ptr noundef %netdev, ptr noundef nonnull %vlan)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vlan) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_port_vlan_kill(ptr noundef %netdev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %1, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %entry.dpaa2_switch_port_vlans_del.exit_crit_edge

entry.dpaa2_switch_port_vlans_del.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_vlans_del.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %call2.i = tail call fastcc i32 @dpaa2_switch_port_del_vlan(ptr noundef %add.ptr.i.i, i16 noundef zeroext %vid) #15
  br label %dpaa2_switch_port_vlans_del.exit

dpaa2_switch_port_vlans_del.exit:                 ; preds = %if.end.i, %entry.dpaa2_switch_port_vlans_del.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ -95, %entry.dpaa2_switch_port_vlans_del.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_port_setup_tc(ptr noundef %netdev, i32 noundef %type, ptr noundef %type_data) #1 align 64 {
entry:
  %acl_if_cfg.i34.i.i.i = alloca %struct.dpsw_acl_if_cfg, align 2
  %acl_if_cfg.i.i.i7.i = alloca %struct.dpsw_acl_if_cfg, align 2
  %acl_if_cfg.i24.i.i.i = alloca %struct.dpsw_acl_if_cfg, align 2
  %acl_if_cfg.i.i.i.i = alloca %struct.dpsw_acl_if_cfg, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %type)
  %cond = icmp eq i32 %type, 5
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.bb:                                            ; preds = %entry
  %binder_type.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 1
  %0 = ptrtoint ptr %binder_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %binder_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 1
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %driver_block_list.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 7
  %2 = ptrtoint ptr %driver_block_list.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dpaa2_switch_block_cb_list, ptr %driver_block_list.i, align 4
  %3 = ptrtoint ptr %type_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type_data, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.end.i.return_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.bb.i:                                          ; preds = %if.end.i
  %add.ptr.i.i.i = getelementptr i8, ptr %netdev, i32 2304
  %ethsw_data.i.i = getelementptr i8, ptr %netdev, i32 2312
  %6 = ptrtoint ptr %ethsw_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ethsw_data.i.i, align 4
  %block.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 5
  %8 = ptrtoint ptr %block.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %block.i.i, align 4
  %call1.i.i = tail call ptr @flow_block_cb_lookup(ptr noundef %9, ptr noundef nonnull @dpaa2_switch_port_setup_tc_block_cb_ig, ptr noundef %7) #15
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %filter_block2.i.i = getelementptr i8, ptr %netdev, i32 6428
  %10 = ptrtoint ptr %filter_block2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %filter_block2.i.i, align 4
  %call3.i.i = tail call ptr @flow_block_cb_alloc(ptr noundef nonnull @dpaa2_switch_port_setup_tc_block_cb_ig, ptr noundef %7, ptr noundef %11, ptr noundef null) #15
  %cmp.i.i.i = icmp ugt ptr %call3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then5.i.i, label %if.then.i.i.if.end8.i.i_crit_edge

if.then.i.i.if.end8.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %call3.i.i to i32
  br label %return

if.else.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  %call7.i.i = tail call ptr @flow_block_cb_priv(ptr noundef nonnull %call1.i.i) #15
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.else.i.i, %if.then.i.i.if.end8.i.i_crit_edge
  %filter_block.0.i.i = phi ptr [ %call7.i.i, %if.else.i.i ], [ %11, %if.then.i.i.if.end8.i.i_crit_edge ]
  %block_cb.0.i.i = phi ptr [ %call1.i.i, %if.else.i.i ], [ %call3.i.i, %if.then.i.i.if.end8.i.i_crit_edge ]
  tail call void @flow_block_cb_incref(ptr noundef %block_cb.0.i.i) #15
  %filter_block.i.i.i = getelementptr i8, ptr %netdev, i32 6428
  %13 = ptrtoint ptr %filter_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %filter_block.i.i.i, align 4
  %call.i.i.i = tail call i32 @dpaa2_switch_block_offload_mirror(ptr noundef %filter_block.0.i.i, ptr noundef %add.ptr.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end8.i.i.err_block_bind.i.i_crit_edge

if.end8.i.i.err_block_bind.i.i_crit_edge:         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_block_bind.i.i

if.end.i.i.i:                                     ; preds = %if.end8.i.i
  %15 = ptrtoint ptr %filter_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %filter_block.i.i.i, align 4
  %cmp.i39.i.i = icmp eq ptr %16, %filter_block.0.i.i
  br i1 %cmp.i39.i.i, label %if.end.i.i.i.if.end12.i.i_crit_edge, label %if.end3.i.i.i

if.end.i.i.i.if.end12.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  %17 = ptrtoint ptr %ethsw_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ethsw_data.i.i, align 4
  %19 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %acl_if_cfg.i.i.i.i) #15
  %21 = getelementptr inbounds i8, ptr %acl_if_cfg.i.i.i.i, i32 4
  %22 = call ptr @memset(ptr %21, i32 255, i32 126)
  %cmp.not.i.i.i.i = icmp eq ptr %16, %14
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %if.end3.i.i.i.dpaa2_switch_port_acl_tbl_unbind.exit.thread.i.i.i_crit_edge

if.end3.i.i.i.dpaa2_switch_port_acl_tbl_unbind.exit.thread.i.i.i_crit_edge: ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_acl_tbl_unbind.exit.thread.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end3.i.i.i
  %idx.i.i.i.i = getelementptr i8, ptr %netdev, i32 2308
  %23 = ptrtoint ptr %idx.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %idx.i.i.i.i, align 4
  %if_id.i.i.i.i = getelementptr inbounds %struct.dpsw_acl_if_cfg, ptr %acl_if_cfg.i.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %if_id.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %if_id.i.i.i.i, align 2
  %26 = ptrtoint ptr %acl_if_cfg.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %acl_if_cfg.i.i.i.i, align 2
  %mc_io.i.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %18, i32 0, i32 1
  %27 = ptrtoint ptr %mc_io.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mc_io.i.i.i.i, align 4
  %dpsw_handle.i.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %18, i32 0, i32 2
  %29 = ptrtoint ptr %dpsw_handle.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %dpsw_handle.i.i.i.i, align 8
  %acl_id.i.i.i.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %14, i32 0, i32 4
  %31 = ptrtoint ptr %acl_id.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %acl_id.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @dpsw_acl_remove_if(ptr noundef %28, i32 noundef 0, i16 noundef zeroext %30, i16 noundef zeroext %32, ptr noundef nonnull %acl_if_cfg.i.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end7.i.i.i, label %if.then2.i.i.i.i

if.then2.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.21, i32 noundef %call.i.i.i.i) #18
  br label %dpaa2_switch_port_acl_tbl_unbind.exit.thread.i.i.i

dpaa2_switch_port_acl_tbl_unbind.exit.thread.i.i.i: ; preds = %if.then2.i.i.i.i, %if.end3.i.i.i.dpaa2_switch_port_acl_tbl_unbind.exit.thread.i.i.i_crit_edge
  %retval.0.i.ph.i.i.i = phi i32 [ -22, %if.end3.i.i.i.dpaa2_switch_port_acl_tbl_unbind.exit.thread.i.i.i_crit_edge ], [ %call.i.i.i.i, %if.then2.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %acl_if_cfg.i.i.i.i) #15
  br label %err_block_bind.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i.i.i
  %33 = ptrtoint ptr %idx.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %idx.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %34 to i32
  %shl.i.i.i.i = shl nuw i32 1, %conv.i.i.i.i
  %neg.i.i.i.i = xor i32 %shl.i.i.i.i, -1
  %conv5.i.i.i.i = zext i32 %neg.i.i.i.i to i64
  %ports.i.i.i.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %14, i32 0, i32 1
  %35 = ptrtoint ptr %ports.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %ports.i.i.i.i, align 8
  %and.i.i.i.i = and i64 %36, %conv5.i.i.i.i
  store i64 %and.i.i.i.i, ptr %ports.i.i.i.i, align 8
  %37 = ptrtoint ptr %filter_block.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %filter_block.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %acl_if_cfg.i.i.i.i) #15
  %38 = ptrtoint ptr %ports.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ports.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %cmp8.i.i.i = icmp eq i64 %39, 0
  br i1 %cmp8.i.i.i, label %if.end10.i.i.i, label %if.end10.thread.i.i.i

if.end10.thread.i.i.i:                            ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %40 = ptrtoint ptr %ethsw_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ethsw_data.i.i, align 4
  %42 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %acl_if_cfg.i24.i.i.i) #15
  %44 = getelementptr inbounds i8, ptr %acl_if_cfg.i24.i.i.i, i32 4
  %45 = call ptr @memset(ptr %44, i32 255, i32 126)
  br label %if.end.i34.i.i.i

if.end10.i.i.i:                                   ; preds = %if.end7.i.i.i
  %in_use.i.i.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %14, i32 0, i32 2
  %46 = ptrtoint ptr %in_use.i.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %in_use.i.i.i, align 8
  %47 = ptrtoint ptr %filter_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr.i.i.i = load ptr, ptr %filter_block.i.i.i, align 4
  %48 = ptrtoint ptr %ethsw_data.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ethsw_data.i.i, align 4
  %50 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %acl_if_cfg.i24.i.i.i) #15
  %52 = getelementptr inbounds i8, ptr %acl_if_cfg.i24.i.i.i, i32 4
  %53 = call ptr @memset(ptr %52, i32 255, i32 126)
  %tobool.not.i27.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %tobool.not.i27.i.i.i, label %if.end10.i.i.i.if.end.i34.i.i.i_crit_edge, label %if.end10.i.i.i.dpaa2_switch_port_block_bind.exit.thread49.i.i_crit_edge

if.end10.i.i.i.dpaa2_switch_port_block_bind.exit.thread49.i.i_crit_edge: ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_block_bind.exit.thread49.i.i

if.end10.i.i.i.if.end.i34.i.i.i_crit_edge:        ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i34.i.i.i

if.end.i34.i.i.i:                                 ; preds = %if.end10.i.i.i.if.end.i34.i.i.i_crit_edge, %if.end10.thread.i.i.i
  %54 = phi ptr [ %43, %if.end10.thread.i.i.i ], [ %51, %if.end10.i.i.i.if.end.i34.i.i.i_crit_edge ]
  %55 = phi ptr [ %41, %if.end10.thread.i.i.i ], [ %49, %if.end10.i.i.i.if.end.i34.i.i.i_crit_edge ]
  %56 = ptrtoint ptr %idx.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %idx.i.i.i.i, align 4
  %if_id.i29.i.i.i = getelementptr inbounds %struct.dpsw_acl_if_cfg, ptr %acl_if_cfg.i24.i.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %if_id.i29.i.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %if_id.i29.i.i.i, align 2
  %59 = ptrtoint ptr %acl_if_cfg.i24.i.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %acl_if_cfg.i24.i.i.i, align 2
  %mc_io.i30.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %55, i32 0, i32 1
  %60 = ptrtoint ptr %mc_io.i30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mc_io.i30.i.i.i, align 4
  %dpsw_handle.i31.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %55, i32 0, i32 2
  %62 = ptrtoint ptr %dpsw_handle.i31.i.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %dpsw_handle.i31.i.i.i, align 8
  %acl_id.i32.i.i.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %filter_block.0.i.i, i32 0, i32 4
  %64 = ptrtoint ptr %acl_id.i32.i.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %acl_id.i32.i.i.i, align 4
  %call.i33.i.i.i = call i32 @dpsw_acl_add_if(ptr noundef %61, i32 noundef 0, i16 noundef zeroext %63, i16 noundef zeroext %65, ptr noundef nonnull %acl_if_cfg.i24.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call.i33.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %dpaa2_switch_port_block_bind.exit.i.i, label %if.then3.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i34.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %54, ptr noundef nonnull @.str.21, i32 noundef %call.i33.i.i.i) #18
  br label %dpaa2_switch_port_block_bind.exit.thread49.i.i

dpaa2_switch_port_block_bind.exit.thread49.i.i:   ; preds = %if.then3.i.i.i.i, %if.end10.i.i.i.dpaa2_switch_port_block_bind.exit.thread49.i.i_crit_edge
  %retval.0.i38.i.ph.i.i = phi i32 [ -22, %if.end10.i.i.i.dpaa2_switch_port_block_bind.exit.thread49.i.i_crit_edge ], [ %call.i33.i.i.i, %if.then3.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %acl_if_cfg.i24.i.i.i) #15
  br label %err_block_bind.i.i

dpaa2_switch_port_block_bind.exit.i.i:            ; preds = %if.end.i34.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %66 = ptrtoint ptr %idx.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %idx.i.i.i.i, align 4
  %conv.i35.i.i.i = zext i16 %67 to i32
  %shl.i36.i.i.i = shl nuw i32 1, %conv.i35.i.i.i
  %conv6.i.i.i.i = zext i32 %shl.i36.i.i.i to i64
  %ports.i37.i.i.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %filter_block.0.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %ports.i37.i.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %ports.i37.i.i.i, align 8
  %or.i.i.i.i = or i64 %69, %conv6.i.i.i.i
  store i64 %or.i.i.i.i, ptr %ports.i37.i.i.i, align 8
  %70 = ptrtoint ptr %filter_block.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %filter_block.0.i.i, ptr %filter_block.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %acl_if_cfg.i24.i.i.i) #15
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %dpaa2_switch_port_block_bind.exit.i.i, %if.end.i.i.i.if.end12.i.i_crit_edge
  br i1 %tobool.not.i.i, label %if.then14.i.i, label %if.end12.i.i.return_crit_edge

if.end12.i.i.return_crit_edge:                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then14.i.i:                                    ; preds = %if.end12.i.i
  %list.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb.0.i.i, i32 0, i32 1
  %cb_list.i.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 6
  %prev.i.i.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 6, i32 1
  %71 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i.i, ptr noundef %72, ptr noundef %cb_list.i.i.i) #15
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then14.i.i.flow_block_cb_add.exit.i.i_crit_edge

if.then14.i.i.flow_block_cb_add.exit.i.i_crit_edge: ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %flow_block_cb_add.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %73 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %list.i.i.i, ptr %prev.i.i.i.i, align 4
  %74 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %cb_list.i.i.i, ptr %list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb.0.i.i, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev3.i.i.i.i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %list.i.i.i, ptr %72, align 4
  br label %flow_block_cb_add.exit.i.i

flow_block_cb_add.exit.i.i:                       ; preds = %if.end.i.i.i.i.i, %if.then14.i.i.flow_block_cb_add.exit.i.i_crit_edge
  %77 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dpaa2_switch_block_cb_list, i32 0, i32 1), align 4
  %call.i.i40.i.i = call zeroext i1 @__list_add_valid(ptr noundef %block_cb.0.i.i, ptr noundef %77, ptr noundef nonnull @dpaa2_switch_block_cb_list) #15
  br i1 %call.i.i40.i.i, label %if.end.i.i41.i.i, label %flow_block_cb_add.exit.i.i.return_crit_edge

flow_block_cb_add.exit.i.i.return_crit_edge:      ; preds = %flow_block_cb_add.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end.i.i41.i.i:                                 ; preds = %flow_block_cb_add.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store ptr %block_cb.0.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @dpaa2_switch_block_cb_list, i32 0, i32 1), align 4
  %78 = ptrtoint ptr %block_cb.0.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @dpaa2_switch_block_cb_list, ptr %block_cb.0.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %block_cb.0.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %77, ptr %prev3.i.i.i.i, align 4
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %block_cb.0.i.i, ptr %77, align 4
  br label %return

err_block_bind.i.i:                               ; preds = %dpaa2_switch_port_block_bind.exit.thread49.i.i, %dpaa2_switch_port_acl_tbl_unbind.exit.thread.i.i.i, %if.end8.i.i.err_block_bind.i.i_crit_edge
  %retval.0.i44.i.i = phi i32 [ %retval.0.i38.i.ph.i.i, %dpaa2_switch_port_block_bind.exit.thread49.i.i ], [ %retval.0.i.ph.i.i.i, %dpaa2_switch_port_acl_tbl_unbind.exit.thread.i.i.i ], [ %call.i.i.i, %if.end8.i.i.err_block_bind.i.i_crit_edge ]
  %call16.i.i = call i32 @flow_block_cb_decref(ptr noundef %block_cb.0.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.then18.i.i, label %err_block_bind.i.i.return_crit_edge

err_block_bind.i.i.return_crit_edge:              ; preds = %err_block_bind.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then18.i.i:                                    ; preds = %err_block_bind.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @flow_block_cb_free(ptr noundef %block_cb.0.i.i) #15
  br label %return

sw.bb1.i:                                         ; preds = %if.end.i
  %add.ptr.i.i8.i = getelementptr i8, ptr %netdev, i32 2304
  %ethsw_data.i9.i = getelementptr i8, ptr %netdev, i32 2312
  %81 = ptrtoint ptr %ethsw_data.i9.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ethsw_data.i9.i, align 4
  %block.i10.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 5
  %83 = ptrtoint ptr %block.i10.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %block.i10.i, align 4
  %call1.i11.i = tail call ptr @flow_block_cb_lookup(ptr noundef %84, ptr noundef nonnull @dpaa2_switch_port_setup_tc_block_cb_ig, ptr noundef %82) #15
  %tobool.not.i12.i = icmp eq ptr %call1.i11.i, null
  br i1 %tobool.not.i12.i, label %sw.bb1.i.return_crit_edge, label %if.end.i.i

sw.bb1.i.return_crit_edge:                        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end.i.i:                                       ; preds = %sw.bb1.i
  %call2.i.i = tail call ptr @flow_block_cb_priv(ptr noundef nonnull %call1.i11.i) #15
  %85 = ptrtoint ptr %ethsw_data.i9.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ethsw_data.i9.i, align 4
  %call.i.i13.i = tail call i32 @dpaa2_switch_block_unoffload_mirror(ptr noundef %call2.i.i, ptr noundef %add.ptr.i.i8.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i13.i)
  %tobool.not.i.i14.i = icmp eq i32 %call.i.i13.i, 0
  br i1 %tobool.not.i.i14.i, label %if.end.i.i16.i, label %if.end.i.i.return_crit_edge

if.end.i.i.return_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end.i.i16.i:                                   ; preds = %if.end.i.i
  %ports.i.i.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %call2.i.i, i32 0, i32 1
  %87 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %ports.i.i.i, align 8
  %idx.i.i.i = getelementptr i8, ptr %netdev, i32 2308
  %89 = ptrtoint ptr %idx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %idx.i.i.i, align 4
  %conv.i.i.i = zext i16 %90 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %conv1.i.i.i = zext i32 %shl.i.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %88, i64 %conv1.i.i.i)
  %cmp.i.i15.i = icmp eq i64 %88, %conv1.i.i.i
  br i1 %cmp.i.i15.i, label %if.end.i.i16.i.land.lhs.true.i.i_crit_edge, label %if.end4.i.i.i

if.end.i.i16.i.land.lhs.true.i.i_crit_edge:       ; preds = %if.end.i.i16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i16.i
  %91 = ptrtoint ptr %ethsw_data.i9.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ethsw_data.i9.i, align 4
  %93 = ptrtoint ptr %add.ptr.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %add.ptr.i.i8.i, align 4
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %acl_if_cfg.i.i.i7.i) #15
  %95 = getelementptr inbounds i8, ptr %acl_if_cfg.i.i.i7.i, i32 4
  %96 = call ptr @memset(ptr %95, i32 255, i32 126)
  %filter_block.i.i.i.i = getelementptr i8, ptr %netdev, i32 6428
  %97 = ptrtoint ptr %filter_block.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %filter_block.i.i.i.i, align 4
  %cmp.not.i.i.i17.i = icmp eq ptr %98, %call2.i.i
  br i1 %cmp.not.i.i.i17.i, label %if.end.i.i.i24.i, label %if.end4.i.i.i.dpaa2_switch_port_acl_tbl_unbind.exit.thread.i.i26.i_crit_edge

if.end4.i.i.i.dpaa2_switch_port_acl_tbl_unbind.exit.thread.i.i26.i_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_acl_tbl_unbind.exit.thread.i.i26.i

if.end.i.i.i24.i:                                 ; preds = %if.end4.i.i.i
  %if_id.i.i.i18.i = getelementptr inbounds %struct.dpsw_acl_if_cfg, ptr %acl_if_cfg.i.i.i7.i, i32 0, i32 1
  %99 = ptrtoint ptr %if_id.i.i.i18.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %90, ptr %if_id.i.i.i18.i, align 2
  %100 = ptrtoint ptr %acl_if_cfg.i.i.i7.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 1, ptr %acl_if_cfg.i.i.i7.i, align 2
  %mc_io.i.i.i19.i = getelementptr inbounds %struct.ethsw_core, ptr %92, i32 0, i32 1
  %101 = ptrtoint ptr %mc_io.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mc_io.i.i.i19.i, align 4
  %dpsw_handle.i.i.i20.i = getelementptr inbounds %struct.ethsw_core, ptr %92, i32 0, i32 2
  %103 = ptrtoint ptr %dpsw_handle.i.i.i20.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %dpsw_handle.i.i.i20.i, align 8
  %acl_id.i.i.i21.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %call2.i.i, i32 0, i32 4
  %105 = ptrtoint ptr %acl_id.i.i.i21.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %acl_id.i.i.i21.i, align 4
  %call.i.i.i22.i = call i32 @dpsw_acl_remove_if(ptr noundef %102, i32 noundef 0, i16 noundef zeroext %104, i16 noundef zeroext %106, ptr noundef nonnull %acl_if_cfg.i.i.i7.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i22.i)
  %tobool.not.i.i.i23.i = icmp eq i32 %call.i.i.i22.i, 0
  br i1 %tobool.not.i.i.i23.i, label %if.end8.i.i.i, label %if.then2.i.i.i25.i

if.then2.i.i.i25.i:                               ; preds = %if.end.i.i.i24.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %94, ptr noundef nonnull @.str.21, i32 noundef %call.i.i.i22.i) #18
  br label %dpaa2_switch_port_acl_tbl_unbind.exit.thread.i.i26.i

dpaa2_switch_port_acl_tbl_unbind.exit.thread.i.i26.i: ; preds = %if.then2.i.i.i25.i, %if.end4.i.i.i.dpaa2_switch_port_acl_tbl_unbind.exit.thread.i.i26.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %acl_if_cfg.i.i.i7.i) #15
  br label %return

if.end8.i.i.i:                                    ; preds = %if.end.i.i.i24.i
  %107 = ptrtoint ptr %idx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %idx.i.i.i, align 4
  %conv.i.i.i27.i = zext i16 %108 to i32
  %shl.i.i.i28.i = shl nuw i32 1, %conv.i.i.i27.i
  %neg.i.i.i29.i = xor i32 %shl.i.i.i28.i, -1
  %conv5.i.i.i30.i = zext i32 %neg.i.i.i29.i to i64
  %109 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %ports.i.i.i, align 8
  %and.i.i.i31.i = and i64 %110, %conv5.i.i.i30.i
  store i64 %and.i.i.i31.i, ptr %ports.i.i.i, align 8
  %111 = ptrtoint ptr %filter_block.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %filter_block.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %acl_if_cfg.i.i.i7.i) #15
  %112 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %ports.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %113)
  %cmp10.i.i.i = icmp eq i64 %113, 0
  br i1 %cmp10.i.i.i, label %if.then12.i.i.i, label %if.end8.i.i.i.if.end13.i.i.i_crit_edge

if.end8.i.i.i.if.end13.i.i.i_crit_edge:           ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.i.i.i

if.then12.i.i.i:                                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %in_use.i.i32.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %call2.i.i, i32 0, i32 2
  %114 = ptrtoint ptr %in_use.i.i32.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %in_use.i.i32.i, align 8
  br label %if.end13.i.i.i

if.end13.i.i.i:                                   ; preds = %if.then12.i.i.i, %if.end8.i.i.i.if.end13.i.i.i_crit_edge
  %num_ifs.i.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %86, i32 0, i32 3, i32 8
  %115 = ptrtoint ptr %num_ifs.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %num_ifs.i.i.i.i, align 2
  %conv.i31.i.i.i = zext i16 %116 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %cmp10.not.i.i.i.i = icmp eq i16 %116, 0
  br i1 %cmp10.not.i.i.i.i, label %if.end13.i.i.i.dpaa2_switch_filter_block_get_unused.exit.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i.i

if.end13.i.i.i.dpaa2_switch_filter_block_get_unused.exit.i.i.i_crit_edge: ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_filter_block_get_unused.exit.i.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %if.end13.i.i.i
  %filter_blocks.i.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %86, i32 0, i32 18
  %117 = ptrtoint ptr %filter_blocks.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %filter_blocks.i.i.i.i, align 4
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %i.011.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i ], [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %in_use.i.i.i.i = getelementptr %struct.dpaa2_switch_filter_block, ptr %118, i32 %i.011.i.i.i.i, i32 2
  %119 = ptrtoint ptr %in_use.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %in_use.i.i.i.i, align 8, !range !403
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool.not.i32.i.i.i = icmp eq i8 %120, 0
  br i1 %tobool.not.i32.i.i.i, label %if.then.i.i.i.i, label %for.inc.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i.i.i.i = getelementptr %struct.dpaa2_switch_filter_block, ptr %118, i32 %i.011.i.i.i.i
  br label %dpaa2_switch_filter_block_get_unused.exit.i.i.i

for.inc.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %inc.i.i.i.i = add nuw nsw i32 %i.011.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %conv.i31.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.dpaa2_switch_filter_block_get_unused.exit.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.dpaa2_switch_filter_block_get_unused.exit.i.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_filter_block_get_unused.exit.i.i.i

dpaa2_switch_filter_block_get_unused.exit.i.i.i:  ; preds = %for.inc.i.i.i.i.dpaa2_switch_filter_block_get_unused.exit.i.i.i_crit_edge, %if.then.i.i.i.i, %if.end13.i.i.i.dpaa2_switch_filter_block_get_unused.exit.i.i.i_crit_edge
  %retval.0.i33.i.i.i = phi ptr [ %arrayidx.i.i.i.i, %if.then.i.i.i.i ], [ null, %if.end13.i.i.i.dpaa2_switch_filter_block_get_unused.exit.i.i.i_crit_edge ], [ null, %for.inc.i.i.i.i.dpaa2_switch_filter_block_get_unused.exit.i.i.i_crit_edge ]
  %in_use15.i.i.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %retval.0.i33.i.i.i, i32 0, i32 2
  %121 = ptrtoint ptr %in_use15.i.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %in_use15.i.i.i, align 8
  %122 = ptrtoint ptr %ethsw_data.i9.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ethsw_data.i9.i, align 4
  %124 = ptrtoint ptr %add.ptr.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %add.ptr.i.i8.i, align 4
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %acl_if_cfg.i34.i.i.i) #15
  %126 = getelementptr inbounds i8, ptr %acl_if_cfg.i34.i.i.i, i32 4
  %127 = call ptr @memset(ptr %126, i32 255, i32 126)
  %128 = ptrtoint ptr %filter_block.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %filter_block.i.i.i.i, align 4
  %tobool.not.i37.i.i.i = icmp eq ptr %129, null
  br i1 %tobool.not.i37.i.i.i, label %if.end.i44.i.i.i, label %dpaa2_switch_filter_block_get_unused.exit.i.i.i.dpaa2_switch_port_block_unbind.exit.thread27.i.i_crit_edge

dpaa2_switch_filter_block_get_unused.exit.i.i.i.dpaa2_switch_port_block_unbind.exit.thread27.i.i_crit_edge: ; preds = %dpaa2_switch_filter_block_get_unused.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_block_unbind.exit.thread27.i.i

if.end.i44.i.i.i:                                 ; preds = %dpaa2_switch_filter_block_get_unused.exit.i.i.i
  %130 = ptrtoint ptr %idx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %idx.i.i.i, align 4
  %if_id.i39.i.i.i = getelementptr inbounds %struct.dpsw_acl_if_cfg, ptr %acl_if_cfg.i34.i.i.i, i32 0, i32 1
  %132 = ptrtoint ptr %if_id.i39.i.i.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %131, ptr %if_id.i39.i.i.i, align 2
  %133 = ptrtoint ptr %acl_if_cfg.i34.i.i.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 1, ptr %acl_if_cfg.i34.i.i.i, align 2
  %mc_io.i40.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %123, i32 0, i32 1
  %134 = ptrtoint ptr %mc_io.i40.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mc_io.i40.i.i.i, align 4
  %dpsw_handle.i41.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %123, i32 0, i32 2
  %136 = ptrtoint ptr %dpsw_handle.i41.i.i.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %dpsw_handle.i41.i.i.i, align 8
  %acl_id.i42.i.i.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %retval.0.i33.i.i.i, i32 0, i32 4
  %138 = ptrtoint ptr %acl_id.i42.i.i.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %acl_id.i42.i.i.i, align 4
  %call.i43.i.i.i = call i32 @dpsw_acl_add_if(ptr noundef %135, i32 noundef 0, i16 noundef zeroext %137, i16 noundef zeroext %139, ptr noundef nonnull %acl_if_cfg.i34.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i.i.i)
  %tobool2.not.i.i.i33.i = icmp eq i32 %call.i43.i.i.i, 0
  br i1 %tobool2.not.i.i.i33.i, label %dpaa2_switch_port_block_unbind.exit.i.i, label %if.then3.i.i.i34.i

if.then3.i.i.i34.i:                               ; preds = %if.end.i44.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %125, ptr noundef nonnull @.str.21, i32 noundef %call.i43.i.i.i) #18
  br label %dpaa2_switch_port_block_unbind.exit.thread27.i.i

dpaa2_switch_port_block_unbind.exit.thread27.i.i: ; preds = %if.then3.i.i.i34.i, %dpaa2_switch_filter_block_get_unused.exit.i.i.i.dpaa2_switch_port_block_unbind.exit.thread27.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %acl_if_cfg.i34.i.i.i) #15
  br label %return

dpaa2_switch_port_block_unbind.exit.i.i:          ; preds = %if.end.i44.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %140 = ptrtoint ptr %idx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %idx.i.i.i, align 4
  %conv.i45.i.i.i = zext i16 %141 to i32
  %shl.i46.i.i.i = shl nuw i32 1, %conv.i45.i.i.i
  %conv6.i.i.i35.i = zext i32 %shl.i46.i.i.i to i64
  %ports.i47.i.i.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %retval.0.i33.i.i.i, i32 0, i32 1
  %142 = ptrtoint ptr %ports.i47.i.i.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %ports.i47.i.i.i, align 8
  %or.i.i.i36.i = or i64 %143, %conv6.i.i.i35.i
  store i64 %or.i.i.i36.i, ptr %ports.i47.i.i.i, align 8
  %144 = ptrtoint ptr %filter_block.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %retval.0.i33.i.i.i, ptr %filter_block.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %acl_if_cfg.i34.i.i.i) #15
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %dpaa2_switch_port_block_unbind.exit.i.i, %if.end.i.i16.i.land.lhs.true.i.i_crit_edge
  %call5.i.i = call i32 @flow_block_cb_decref(ptr noundef nonnull %call1.i11.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %land.lhs.true.i.i.return_crit_edge

land.lhs.true.i.i.return_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then7.i.i:                                     ; preds = %land.lhs.true.i.i
  %list.i.i37.i = getelementptr inbounds %struct.flow_block_cb, ptr %call1.i11.i, i32 0, i32 1
  %cb_list.i.i38.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 6
  %call.i.i.i.i39.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i37.i) #15
  br i1 %call.i.i.i.i39.i, label %if.end.i.i.i.i40.i, label %if.then7.i.i.__list_del_entry.exit.i.i.i.i_crit_edge

if.then7.i.i.__list_del_entry.exit.i.i.i.i_crit_edge: ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__list_del_entry.exit.i.i.i.i

if.end.i.i.i.i40.i:                               ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call1.i11.i, i32 0, i32 1, i32 1
  %145 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %147 = ptrtoint ptr %list.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %list.i.i37.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %146, ptr %prev1.i.i.i.i.i.i, align 4
  %150 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %148, ptr %146, align 4
  br label %__list_del_entry.exit.i.i.i.i

__list_del_entry.exit.i.i.i.i:                    ; preds = %if.end.i.i.i.i40.i, %if.then7.i.i.__list_del_entry.exit.i.i.i.i_crit_edge
  %151 = ptrtoint ptr %cb_list.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cb_list.i.i38.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i37.i, ptr noundef %cb_list.i.i38.i, ptr noundef %152) #15
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.i.flow_block_cb_remove.exit.i.i_crit_edge

__list_del_entry.exit.i.i.i.i.flow_block_cb_remove.exit.i.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %flow_block_cb_remove.exit.i.i

if.end.i.i.i.i.i.i:                               ; preds = %__list_del_entry.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i2.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %prev1.i.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %list.i.i37.i, ptr %prev1.i.i2.i.i.i.i, align 4
  %154 = ptrtoint ptr %list.i.i37.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %152, ptr %list.i.i37.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call1.i11.i, i32 0, i32 1, i32 1
  %155 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %cb_list.i.i38.i, ptr %prev3.i.i.i.i.i.i, align 4
  %156 = ptrtoint ptr %cb_list.i.i38.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile ptr %list.i.i37.i, ptr %cb_list.i.i38.i, align 4
  br label %flow_block_cb_remove.exit.i.i

flow_block_cb_remove.exit.i.i:                    ; preds = %if.end.i.i.i.i.i.i, %__list_del_entry.exit.i.i.i.i.flow_block_cb_remove.exit.i.i_crit_edge
  %call.i.i19.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call1.i11.i) #15
  br i1 %call.i.i19.i.i, label %if.end.i.i20.i.i, label %flow_block_cb_remove.exit.i.i.list_del.exit.i.i_crit_edge

flow_block_cb_remove.exit.i.i.list_del.exit.i.i_crit_edge: ; preds = %flow_block_cb_remove.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i.i

if.end.i.i20.i.i:                                 ; preds = %flow_block_cb_remove.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i41.i = getelementptr inbounds %struct.list_head, ptr %call1.i11.i, i32 0, i32 1
  %157 = ptrtoint ptr %prev.i.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %prev.i.i.i41.i, align 4
  %159 = ptrtoint ptr %call1.i11.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %call1.i11.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %158, ptr %prev1.i.i.i.i.i, align 4
  %162 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %162)
  store volatile ptr %160, ptr %158, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i20.i.i, %flow_block_cb_remove.exit.i.i.list_del.exit.i.i_crit_edge
  %163 = ptrtoint ptr %call1.i11.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr inttoptr (i32 256 to ptr), ptr %call1.i11.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call1.i11.i, i32 0, i32 1
  %164 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  br label %return

return:                                           ; preds = %list_del.exit.i.i, %land.lhs.true.i.i.return_crit_edge, %dpaa2_switch_port_block_unbind.exit.thread27.i.i, %dpaa2_switch_port_acl_tbl_unbind.exit.thread.i.i26.i, %if.end.i.i.return_crit_edge, %sw.bb1.i.return_crit_edge, %if.then18.i.i, %err_block_bind.i.i.return_crit_edge, %if.end.i.i41.i.i, %flow_block_cb_add.exit.i.i.return_crit_edge, %if.end12.i.i.return_crit_edge, %if.then5.i.i, %if.end.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ -95, %sw.bb.return_crit_edge ], [ -95, %if.end.i.return_crit_edge ], [ %12, %if.then5.i.i ], [ 0, %if.end12.i.i.return_crit_edge ], [ %retval.0.i44.i.i, %if.then18.i.i ], [ %retval.0.i44.i.i, %err_block_bind.i.i.return_crit_edge ], [ 0, %flow_block_cb_add.exit.i.i.return_crit_edge ], [ 0, %if.end.i.i41.i.i ], [ 0, %sw.bb1.i.return_crit_edge ], [ 0, %if.end.i.i.return_crit_edge ], [ 0, %dpaa2_switch_port_acl_tbl_unbind.exit.thread.i.i26.i ], [ 0, %dpaa2_switch_port_block_unbind.exit.thread27.i.i ], [ 0, %land.lhs.true.i.i.return_crit_edge ], [ 0, %list_del.exit.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_port_fdb_dump(ptr noundef %skb, ptr noundef %cb, ptr noundef %net_dev, ptr nocapture noundef readnone %filter_dev, ptr nocapture noundef %idx) #1 align 64 {
entry:
  %dump = alloca %struct.ethsw_dump_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dump) #15
  %0 = getelementptr inbounds %struct.ethsw_dump_ctx, ptr %dump, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ethsw_dump_ctx, ptr %dump, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ethsw_dump_ctx, ptr %dump, i32 0, i32 3
  %3 = ptrtoint ptr %dump to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %net_dev, ptr %dump, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %skb, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cb, ptr %1, align 4
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %2, align 4
  %call4 = call fastcc i32 @dpaa2_switch_fdb_iterate(ptr noundef %add.ptr.i, ptr noundef nonnull @dpaa2_switch_fdb_entry_dump, ptr noundef nonnull %dump)
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %2, align 4
  %11 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %idx, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dump) #15
  ret i32 %call4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dpaa2_switch_port_parent_id(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ppid) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %id_len = getelementptr inbounds %struct.netdev_phys_item_id, ptr %ppid, i32 0, i32 1
  %0 = ptrtoint ptr %id_len to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %id_len, align 1
  %ethsw_data = getelementptr i8, ptr %dev, i32 2312
  %1 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ethsw_data, align 4
  %dev_id = getelementptr inbounds %struct.ethsw_core, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev_id, align 8
  %conv = trunc i32 %4 to i8
  %5 = ptrtoint ptr %ppid to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %ppid, align 1
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_port_get_phys_name(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %name, i32 noundef %len) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %idx, align 4
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef %len, ptr noundef nonnull @.str.25, i32 noundef %conv)
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %len)
  %cmp.not = icmp ult i32 %call1, %len
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_if_enable(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_if_disable(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_io_service_enqueue_qd(ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dpaa2_switch_free_fd(ptr nocapture noundef readonly %ethsw, ptr nocapture noundef readonly %fd) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ethsw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethsw, align 8
  %2 = ptrtoint ptr %fd to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %fd, align 8
  %4 = tail call i64 @llvm.bswap.i64(i64 %3) #15
  %conv.i = trunc i64 %4 to i32
  %iommu_domain = getelementptr inbounds %struct.ethsw_core, ptr %ethsw, i32 0, i32 9
  %5 = ptrtoint ptr %iommu_domain to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iommu_domain, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.dpaa2_iova_to_virt.exit_crit_edge, label %cond.true.i

entry.dpaa2_iova_to_virt.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_iova_to_virt.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 @iommu_iova_to_phys(ptr noundef nonnull %6, i32 noundef %conv.i) #15
  br label %dpaa2_iova_to_virt.exit

dpaa2_iova_to_virt.exit:                          ; preds = %cond.true.i, %entry.dpaa2_iova_to_virt.exit_crit_edge
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %conv.i, %entry.dpaa2_iova_to_virt.exit_crit_edge ]
  %7 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %cond.i, i32 -2130706432, i32 8454144) #19, !srcloc !404
  %8 = inttoptr i32 %7 to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %12 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %7
  tail call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %conv.i, i32 noundef %sub.ptr.sub, i32 noundef 1, i32 noundef 0) #15
  tail call void @consume_skb(ptr noundef %10) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_iova_to_phys(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_if_set_max_frame_length(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_if_get_counter(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_port_setup_tc_block_cb_ig(i32 noundef %type, ptr noundef %type_data, ptr noundef %cb_priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %type, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.bb:                                            ; preds = %entry
  %command.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 1
  %1 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %command.i, align 8
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %2, label %sw.bb.return_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 @dpaa2_switch_cls_flower_replace(ptr noundef %cb_priv, ptr noundef %type_data) #15
  br label %return

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %call2.i = tail call i32 @dpaa2_switch_cls_flower_destroy(ptr noundef %cb_priv, ptr noundef %type_data) #15
  br label %return

sw.bb1:                                           ; preds = %entry
  %command.i5 = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %type_data, i32 0, i32 1
  %4 = ptrtoint ptr %command.i5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %command.i5, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %5, label %sw.bb1.return_crit_edge [
    i32 0, label %sw.bb.i7
    i32 1, label %sw.bb1.i9
  ]

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.bb.i7:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  %call.i6 = tail call i32 @dpaa2_switch_cls_matchall_replace(ptr noundef %cb_priv, ptr noundef %type_data) #15
  br label %return

sw.bb1.i9:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  %call2.i8 = tail call i32 @dpaa2_switch_cls_matchall_destroy(ptr noundef %cb_priv, ptr noundef %type_data) #15
  br label %return

return:                                           ; preds = %sw.bb1.i9, %sw.bb.i7, %sw.bb1.return_crit_edge, %sw.bb1.i, %sw.bb.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %call2.i, %sw.bb1.i ], [ %call.i, %sw.bb.i ], [ -95, %sw.bb.return_crit_edge ], [ %call2.i8, %sw.bb1.i9 ], [ %call.i6, %sw.bb.i7 ], [ -95, %sw.bb1.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_priv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_block_cb_incref(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_block_cb_decref(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_block_cb_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_switch_cls_flower_replace(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_switch_cls_flower_destroy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_switch_cls_matchall_replace(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_switch_cls_matchall_destroy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_switch_block_offload_mirror(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_acl_remove_if(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_acl_add_if(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_switch_block_unoffload_mirror(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpaa2_switch_fdb_iterate(ptr noundef %port_priv, ptr nocapture noundef readonly %cb, ptr noundef %data) unnamed_addr #1 align 64 {
entry:
  %fdb_entry = alloca %struct.fdb_dump_entry, align 1
  %num_fdb_entries = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_priv, align 4
  %ethsw_data = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 2
  %2 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ethsw_data, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fdb_entry) #15
  %6 = call ptr @memset(ptr %fdb_entry, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num_fdb_entries) #15
  %7 = ptrtoint ptr %num_fdb_entries to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %num_fdb_entries, align 2, !annotation !402
  %max_fdb_entries = getelementptr inbounds %struct.ethsw_core, ptr %3, i32 0, i32 3, i32 5
  %8 = ptrtoint ptr %max_fdb_entries to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %max_fdb_entries, align 4
  %conv = zext i16 %9 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #20
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i) #15
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !400

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %5) #15
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i56, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i

if.end.i.i56:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i56, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i56 ], [ %11, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #15
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %5, i32 noundef -1) #15
  br label %if.then5

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %5, ptr noundef nonnull %call9.i.i, i32 noundef %mul) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %call9.i.i to i32
  %sub.i = add i32 %15, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %14, i32 %shr.i
  %and.i = and i32 %15, 3968
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %5, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %mul, i32 noundef 2, i32 noundef 0) #15
  tail call void @debug_dma_mapping_error(ptr noundef %5, i32 noundef %call41.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then5_crit_edge, label %if.end6

dma_map_single_attrs.exit.if.then5_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then5

if.then5:                                         ; preds = %dma_map_single_attrs.exit.if.then5_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.22) #18
  br label %cleanup.sink.split

if.end6:                                          ; preds = %dma_map_single_attrs.exit
  %fdb.i = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 8
  %16 = ptrtoint ptr %fdb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fdb.i, align 4
  %fdb_id.i = getelementptr inbounds %struct.dpaa2_switch_fdb, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %fdb_id.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %fdb_id.i, align 4
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mc_io, align 4
  %dpsw_handle = getelementptr inbounds %struct.ethsw_core, ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %dpsw_handle, align 8
  %conv8 = zext i32 %call41.i to i64
  %call9 = call i32 @dpsw_fdb_dump(ptr noundef %21, i32 noundef 0, i16 noundef zeroext %23, i16 noundef zeroext %19, i64 noundef %conv8, i32 noundef %mul, ptr noundef nonnull %num_fdb_entries) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %call9) #18
  call void @dma_unmap_page_attrs(ptr noundef %5, i32 noundef %call41.i, i32 noundef %mul, i32 noundef 1, i32 noundef 0) #15
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end6
  call void @dma_unmap_page_attrs(ptr noundef %5, i32 noundef %call41.i, i32 noundef %mul, i32 noundef 2, i32 noundef 0) #15
  %24 = ptrtoint ptr %num_fdb_entries to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %num_fdb_entries, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp69.not = icmp eq i16 %25, 0
  br i1 %cmp69.not, label %if.end12.cleanup.sink.split_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.070, 1
  %26 = ptrtoint ptr %num_fdb_entries to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_fdb_entries, align 2
  %conv13 = zext i16 %27 to i32
  %cmp = icmp ult i32 %inc, %conv13
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup.sink.split_crit_edge

for.cond.cleanup.sink.split_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end12.for.body_crit_edge
  %i.070 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fdb_dump_entry, ptr %call9.i.i, i32 %i.070
  %28 = call ptr @memcpy(ptr %fdb_entry, ptr %arrayidx, i32 16)
  %call15 = call i32 %cb(ptr noundef %port_priv, ptr noundef nonnull %fdb_entry, ptr noundef %data) #15, !callees !405
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %for.cond, label %for.body.cleanup.sink.split_crit_edge

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.body.cleanup.sink.split_crit_edge, %for.cond.cleanup.sink.split_crit_edge, %if.end12.cleanup.sink.split_crit_edge, %if.then11, %if.then5
  %retval.0.ph = phi i32 [ 0, %if.end12.cleanup.sink.split_crit_edge ], [ -12, %if.then5 ], [ %call9, %if.then11 ], [ 0, %for.body.cleanup.sink.split_crit_edge ], [ 0, %for.cond.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num_fdb_entries) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fdb_entry) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_fdb_entry_dump(ptr nocapture noundef readonly %port_priv, ptr noundef %fdb_entry, ptr nocapture noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %idx2.i = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 1
  %0 = ptrtoint ptr %idx2.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %idx2.i, align 4
  %type.i = getelementptr inbounds %struct.fdb_dump_entry, ptr %fdb_entry, i32 0, i32 1
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type.i, align 1
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %if_info.i = getelementptr inbounds %struct.fdb_dump_entry, ptr %fdb_entry, i32 0, i32 2
  %5 = ptrtoint ptr %if_info.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %if_info.i, align 1
  %7 = zext i8 %6 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %7)
  %cmp.i = icmp eq i16 %1, %7
  %conv7.i = zext i1 %cmp.i to i32
  br label %dpaa2_switch_port_fdb_valid_entry.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i = zext i16 %1 to i32
  %div14.i = lshr i32 %conv.i, 3
  %arrayidx.i = getelementptr %struct.fdb_dump_entry, ptr %fdb_entry, i32 0, i32 3, i32 %div14.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv8.i = zext i8 %9 to i32
  %rem.i = and i32 %conv.i, 7
  %shl.i = shl nuw nsw i32 1, %rem.i
  %and9.i = and i32 %shl.i, %conv8.i
  br label %dpaa2_switch_port_fdb_valid_entry.exit

dpaa2_switch_port_fdb_valid_entry.exit:           ; preds = %if.else.i, %if.then.i
  %valid.0.i = phi i32 [ %conv7.i, %if.then.i ], [ %and9.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %valid.0.i)
  %tobool.not = icmp eq i32 %valid.0.i, 0
  br i1 %tobool.not, label %dpaa2_switch_port_fdb_valid_entry.exit.return_crit_edge, label %if.end

dpaa2_switch_port_fdb_valid_entry.exit.return_crit_edge: ; preds = %dpaa2_switch_port_fdb_valid_entry.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %dpaa2_switch_port_fdb_valid_entry.exit
  %10 = and i8 %3, 1
  %cb.i = getelementptr inbounds %struct.ethsw_dump_ctx, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cb.i, align 4
  %idx.i = getelementptr inbounds %struct.ethsw_dump_ctx, ptr %data, i32 0, i32 3
  %13 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %idx.i, align 4
  %arrayidx.i4 = getelementptr %struct.netlink_callback, ptr %12, i32 0, i32 13, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx.i4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.i5 = icmp slt i32 %14, %16
  br i1 %cmp.i5, label %if.end.skip.i_crit_edge, label %if.end.i

if.end.skip.i_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %skip.i

if.end.i:                                         ; preds = %if.end
  %nlh.i = getelementptr inbounds %struct.netlink_callback, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %nlh.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nlh.i, align 4
  %nlmsg_seq.i = getelementptr inbounds %struct.nlmsghdr, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %nlmsg_seq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nlmsg_seq.i, align 4
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %12, align 4
  %portid3.i = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 3, i32 12
  %23 = ptrtoint ptr %portid3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %portid3.i, align 4
  %skb8.i = getelementptr inbounds %struct.ethsw_dump_ctx, ptr %data, i32 0, i32 1
  %25 = ptrtoint ptr %skb8.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb8.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

skb_tailroom.exit.i.i:                            ; preds = %if.end.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 17
  %29 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 16
  %31 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 28
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.return_crit_edge, label %nlmsg_put.exit.i, !prof !401

skb_tailroom.exit.i.i.return_crit_edge:           ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = tail call ptr @__nlmsg_put(ptr noundef %26, i32 noundef %24, i32 noundef %20, i32 noundef 28, i32 noundef 12, i32 noundef 2) #15
  %tobool.not.i6 = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i6, label %nlmsg_put.exit.i.return_crit_edge, label %if.end10.i

nlmsg_put.exit.i.return_crit_edge:                ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end10.i:                                       ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 7, ptr %add.ptr.i.i, align 4
  %ndm_pad1.i = getelementptr i8, ptr %call3.i.i, i32 17
  %34 = ptrtoint ptr %ndm_pad1.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %ndm_pad1.i, align 1
  %ndm_pad2.i = getelementptr i8, ptr %call3.i.i, i32 18
  %35 = ptrtoint ptr %ndm_pad2.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %ndm_pad2.i, align 2
  %ndm_flags.i = getelementptr i8, ptr %call3.i.i, i32 26
  %36 = ptrtoint ptr %ndm_flags.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 2, ptr %ndm_flags.i, align 2
  %ndm_type.i = getelementptr i8, ptr %call3.i.i, i32 27
  %37 = ptrtoint ptr %ndm_type.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %ndm_type.i, align 1
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 17
  %40 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ifindex.i, align 4
  %ndm_ifindex.i = getelementptr i8, ptr %call3.i.i, i32 20
  %42 = ptrtoint ptr %ndm_ifindex.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %ndm_ifindex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool12.not.i = icmp eq i8 %10, 0
  %conv13.i = select i1 %tobool12.not.i, i16 64, i16 2
  %ndm_state.i = getelementptr i8, ptr %call3.i.i, i32 24
  %43 = ptrtoint ptr %ndm_state.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv13.i, ptr %ndm_state.i, align 4
  %44 = ptrtoint ptr %skb8.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %skb8.i, align 4
  %call15.i = tail call i32 @nla_put(ptr noundef %45, i32 noundef 2, i32 noundef 6, ptr noundef %fdb_entry) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  %46 = ptrtoint ptr %skb8.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %skb8.i, align 4
  br i1 %tobool16.not.i, label %if.end18.i, label %if.then.i.i.i

if.end18.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %tail.i.i45.i = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %tail.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i.i45.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %49 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %50 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub.ptr.sub.i.i, ptr %call3.i.i, align 4
  br label %skip.i

skip.i:                                           ; preds = %if.end18.i, %if.end.skip.i_crit_edge
  %51 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %idx.i, align 4
  %inc.i = add i32 %52, 1
  store i32 %inc.i, ptr %idx.i, align 4
  br label %return

if.then.i.i.i:                                    ; preds = %if.end10.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 19
  %53 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %54, %call3.i.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge, !prof !401

if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nlmsg_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 991, i32 noundef 9, ptr noundef null) #15
  br label %nlmsg_cancel.exit.i

nlmsg_cancel.exit.i:                              ; preds = %do.end.i.i.i, %if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge
  %55 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i46.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i47.i = ptrtoint ptr %56 to i32
  %sub.ptr.sub.i.i48.i = sub i32 %sub.ptr.lhs.cast.i.i46.i, %sub.ptr.rhs.cast.i.i47.i
  tail call void @skb_trim(ptr noundef %47, i32 noundef %sub.ptr.sub.i.i48.i) #15
  br label %return

return:                                           ; preds = %nlmsg_cancel.exit.i, %skip.i, %nlmsg_put.exit.i.return_crit_edge, %skb_tailroom.exit.i.i.return_crit_edge, %if.end.i.return_crit_edge, %dpaa2_switch_port_fdb_valid_entry.exit.return_crit_edge
  %retval.0 = phi i32 [ 0, %dpaa2_switch_port_fdb_valid_entry.exit.return_crit_edge ], [ 0, %skip.i ], [ -90, %nlmsg_cancel.exit.i ], [ -90, %nlmsg_put.exit.i.return_crit_edge ], [ -90, %skb_tailroom.exit.i.i.return_crit_edge ], [ -90, %if.end.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_fdb_dump(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_vlan_add(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_vlan_add_if(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_vlan_add_if_untagged(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpaa2_switch_port_set_pvid(ptr nocapture noundef %port_priv, i16 noundef zeroext %pvid) unnamed_addr #1 align 64 {
entry:
  %state.i = alloca %struct.dpsw_link_state, align 8
  %tci_cfg = alloca %struct.dpsw_tci_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ethsw_data = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 2
  %0 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethsw_data, align 4
  %2 = ptrtoint ptr %port_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tci_cfg) #15
  %4 = ptrtoint ptr %tci_cfg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tci_cfg, align 4
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mc_io, align 4
  %dpsw_handle = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %dpsw_handle, align 8
  %idx = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 1
  %9 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %idx, align 4
  %call = call i32 @dpsw_if_get_tci(ptr noundef %6, i32 noundef 0, i16 noundef zeroext %8, i16 noundef zeroext %10, ptr noundef nonnull %tci_cfg) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.33, i32 noundef %call) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %vlan_id = getelementptr inbounds %struct.dpsw_tci_cfg, ptr %tci_cfg, i32 0, i32 2
  %11 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %pvid, ptr %vlan_id, align 2
  %12 = ptrtoint ptr %port_priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port_priv, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #15
  %14 = call ptr @memset(ptr %state.i, i32 255, i32 24)
  %15 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ethsw_data, align 4
  %mc_io.i = getelementptr inbounds %struct.ethsw_core, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mc_io.i, align 4
  %dpsw_handle.i = getelementptr inbounds %struct.ethsw_core, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %dpsw_handle.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %dpsw_handle.i, align 8
  %21 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %idx, align 4
  %call.i = call i32 @dpsw_if_get_link_state(ptr noundef %18, i32 noundef 0, i16 noundef zeroext %20, i16 noundef zeroext %22, ptr noundef nonnull %state.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dpaa2_switch_port_is_up.exit.thread

dpaa2_switch_port_is_up.exit.thread:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.35, i32 noundef %call.i) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #15
  br label %if.then4

if.end.i:                                         ; preds = %if.end
  %up.i = getelementptr inbounds %struct.dpsw_link_state, ptr %state.i, i32 0, i32 2
  %23 = ptrtoint ptr %up.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %up.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp.i = icmp ugt i8 %24, 1
  br i1 %cmp.i, label %land.rhs.i, label %if.end.i.dpaa2_switch_port_is_up.exit_crit_edge

if.end.i.dpaa2_switch_port_is_up.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_is_up.exit

land.rhs.i:                                       ; preds = %if.end.i
  %.b54.i = load i1, ptr @dpaa2_switch_port_is_up.__already_done, align 1
  br i1 %.b54.i, label %dpaa2_switch_port_is_up.exit.thread79, label %if.then12.i, !prof !400

dpaa2_switch_port_is_up.exit.thread79:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #15
  br label %if.then4

if.then12.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @dpaa2_switch_port_is_up.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 224, i32 noundef 9, ptr noundef nonnull @.str.36) #15
  %25 = ptrtoint ptr %up.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %.pr = load i8, ptr %up.i, align 8
  br label %dpaa2_switch_port_is_up.exit

dpaa2_switch_port_is_up.exit:                     ; preds = %if.then12.i, %if.end.i.dpaa2_switch_port_is_up.exit_crit_edge
  %26 = phi i8 [ %24, %if.end.i.dpaa2_switch_port_is_up.exit_crit_edge ], [ %.pr, %if.then12.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool44.i.not = icmp eq i8 %26, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #15
  br i1 %tobool44.i.not, label %dpaa2_switch_port_is_up.exit.if.end12_crit_edge, label %dpaa2_switch_port_is_up.exit.if.then4_crit_edge

dpaa2_switch_port_is_up.exit.if.then4_crit_edge:  ; preds = %dpaa2_switch_port_is_up.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4

dpaa2_switch_port_is_up.exit.if.end12_crit_edge:  ; preds = %dpaa2_switch_port_is_up.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then4:                                         ; preds = %dpaa2_switch_port_is_up.exit.if.then4_crit_edge, %dpaa2_switch_port_is_up.exit.thread79, %dpaa2_switch_port_is_up.exit.thread
  %27 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mc_io, align 4
  %29 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %dpsw_handle, align 8
  %31 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %idx, align 4
  %call8 = call i32 @dpsw_if_disable(ptr noundef %28, i32 noundef 0, i16 noundef zeroext %30, i16 noundef zeroext %32) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then4.if.end12_crit_edge, label %if.then10

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then10:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %call8) #18
  br label %cleanup

if.end12:                                         ; preds = %if.then4.if.end12_crit_edge, %dpaa2_switch_port_is_up.exit.if.end12_crit_edge
  %retval.0.i77 = phi i1 [ true, %if.then4.if.end12_crit_edge ], [ false, %dpaa2_switch_port_is_up.exit.if.end12_crit_edge ]
  %33 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mc_io, align 4
  %35 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %dpsw_handle, align 8
  %37 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %idx, align 4
  %call16 = call i32 @dpsw_if_set_tci(ptr noundef %34, i32 noundef 0, i16 noundef zeroext %36, i16 noundef zeroext %38, ptr noundef nonnull %tci_cfg) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.34, i32 noundef %call16) #18
  br label %set_tci_error

if.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  %pvid20 = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 6
  %39 = ptrtoint ptr %pvid20 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %pvid20, align 2
  %idxprom = zext i16 %40 to i32
  %arrayidx = getelementptr %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 5, i32 %idxprom
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx, align 1
  %43 = and i8 %42, -5
  store i8 %43, ptr %arrayidx, align 1
  %idxprom23 = zext i16 %pvid to i32
  %arrayidx24 = getelementptr %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 5, i32 %idxprom23
  %44 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx24, align 1
  %46 = or i8 %45, 4
  store i8 %46, ptr %arrayidx24, align 1
  store i16 %pvid, ptr %pvid20, align 2
  br label %set_tci_error

set_tci_error:                                    ; preds = %if.end19, %if.then18
  br i1 %retval.0.i77, label %if.then29, label %set_tci_error.cleanup_crit_edge

set_tci_error.cleanup_crit_edge:                  ; preds = %set_tci_error
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then29:                                        ; preds = %set_tci_error
  %47 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mc_io, align 4
  %49 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %dpsw_handle, align 8
  %51 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %idx, align 4
  %call33 = call i32 @dpsw_if_enable(ptr noundef %48, i32 noundef 0, i16 noundef zeroext %50, i16 noundef zeroext %52) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then29.cleanup_crit_edge, label %if.then35

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then35:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %call33) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.then29.cleanup_crit_edge, %set_tci_error.cleanup_crit_edge, %if.then10, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call8, %if.then10 ], [ %call33, %if.then35 ], [ %call16, %if.then29.cleanup_crit_edge ], [ %call16, %set_tci_error.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tci_cfg) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_if_get_tci(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_if_set_tci(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_if_get_link_state(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_vlan_remove_if_untagged(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_vlan_remove_if(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_vlan_remove(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_port_blocking_event(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr noundef %ptr) #1 align 64 {
entry:
  %entry1.i.i.i10.i = alloca %struct.dpsw_fdb_multicast_cfg, align 4
  %entry1.i.i.i = alloca %struct.dpsw_fdb_multicast_cfg, align 4
  %entry1.i.i.i.i = alloca %struct.dpsw_fdb_multicast_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 7, label %entry.sw.bb_crit_edge
    i32 8, label %entry.sw.bb_crit_edge11
    i32 9, label %sw.bb2
  ]

entry.sw.bb_crit_edge11:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge11
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %3 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev_ops.i.i, align 8
  %cmp.i.i = icmp eq ptr %4, @dpaa2_switch_port_ops
  br i1 %cmp.i.i, label %if.end.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %5 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %event, label %if.end.i.sw.epilog.thread.i_crit_edge [
    i32 7, label %sw.bb.i
    i32 8, label %sw.bb2.i
  ]

if.end.i.sw.epilog.thread.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.thread.i

sw.bb.i:                                          ; preds = %if.end.i
  %obj.i = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %ptr, i32 0, i32 1
  %6 = ptrtoint ptr %obj.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %obj.i, align 4
  %id.i.i = getelementptr inbounds %struct.switchdev_obj, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id.i.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %9, label %sw.bb.i.sw.epilog.thread.i_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb1.i.i
  ]

sw.bb.i.sw.epilog.thread.i_crit_edge:             ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.thread.i

sw.bb.i.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i = tail call i32 @dpaa2_switch_port_vlans_add(ptr noundef %1, ptr noundef %7) #15
  br label %sw.epilog.i

sw.bb1.i.i:                                       ; preds = %sw.bb.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %1, i32 2304
  %addr.i.i.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %7, i32 0, i32 1
  %mc.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 66
  %nested_level.i.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 73
  %11 = ptrtoint ptr %nested_level.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %nested_level.i.i.i.i.i, align 1
  tail call fastcc void @local_bh_disable() #15
  %addr_list_lock.i.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 63
  %conv.i.i.i.i.i = zext i8 %12 to i32
  tail call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i.i.i.i.i, i32 noundef %conv.i.i.i.i.i) #15
  %add.ptr1.i.i.i.i.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %7, i32 0, i32 1, i32 4
  br label %for.cond.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge, %sw.bb1.i.i
  %ha.0.in.i.i.i.i = phi ptr [ %mc.i.i.i.i, %sw.bb1.i.i ], [ %ha.0.i.i.i.i, %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge ]
  %13 = ptrtoint ptr %ha.0.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %ha.0.i.i.i.i = load ptr, ptr %ha.0.in.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %ha.0.i.i.i.i, %mc.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i, label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i
  %addr4.i.i.i.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0.i.i.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %addr4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr4.i.i.i.i, align 4
  %16 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i.i.i, align 4
  %xor.i.i.i.i.i = xor i32 %17, %15
  %add.ptr.i.i.i.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0.i.i.i.i, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i.i.i.i.i, align 2
  %20 = ptrtoint ptr %add.ptr1.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr1.i.i.i.i.i, align 2
  %xor37.i.i.i.i.i = xor i16 %21, %19
  %xor3.i.i.i.i.i = zext i16 %xor37.i.i.i.i.i to i32
  %or.i.i.i.i.i = or i32 %xor.i.i.i.i.i, %xor3.i.i.i.i.i
  %cmp.i.i.i.i.i = icmp eq i32 %or.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %dpaa2_switch_port_lookup_address.exit.i.i.i, label %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge

for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i.i.i

dpaa2_switch_port_lookup_address.exit.i.i.i:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i.i.i.i.i) #15
  br label %sw.epilog.thread.i

if.end.i.i.i:                                     ; preds = %for.cond.i.i.i.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i.i.i.i.i) #15
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %entry1.i.i.i.i) #15
  %22 = getelementptr inbounds i8, ptr %entry1.i.i.i.i, i32 12
  %23 = call ptr @memset(ptr %22, i32 0, i32 128)
  %mac_addr.i.i.i.i = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, ptr %entry1.i.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i.i.i, align 4
  %26 = ptrtoint ptr %mac_addr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %mac_addr.i.i.i.i, align 4
  %27 = ptrtoint ptr %add.ptr1.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr1.i.i.i.i.i, align 2
  %add.ptr1.i.i30.i.i.i = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, ptr %entry1.i.i.i.i, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %add.ptr1.i.i30.i.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %add.ptr1.i.i30.i.i.i, align 4
  %30 = ptrtoint ptr %entry1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %entry1.i.i.i.i, align 4
  %num_ifs.i.i.i.i = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, ptr %entry1.i.i.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %num_ifs.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %num_ifs.i.i.i.i, align 2
  %idx.i.i.i.i = getelementptr i8, ptr %1, i32 2308
  %32 = ptrtoint ptr %idx.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %idx.i.i.i.i, align 4
  %34 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %22, align 4
  %fdb.i.i.i.i.i = getelementptr i8, ptr %1, i32 6420
  %35 = ptrtoint ptr %fdb.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fdb.i.i.i.i.i, align 4
  %fdb_id.i.i.i.i.i = getelementptr inbounds %struct.dpaa2_switch_fdb, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %fdb_id.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %fdb_id.i.i.i.i.i, align 4
  %ethsw_data.i.i.i.i = getelementptr i8, ptr %1, i32 2312
  %39 = ptrtoint ptr %ethsw_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ethsw_data.i.i.i.i, align 4
  %mc_io.i.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %mc_io.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mc_io.i.i.i.i, align 4
  %dpsw_handle.i.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %40, i32 0, i32 2
  %43 = ptrtoint ptr %dpsw_handle.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %dpsw_handle.i.i.i.i, align 8
  %call3.i.i.i.i = call i32 @dpsw_fdb_add_multicast(ptr noundef %42, i32 noundef 0, i16 noundef zeroext %44, i16 noundef zeroext %38, ptr noundef nonnull %entry1.i.i.i.i) #15
  %45 = zext i32 %call3.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %call3.i.i.i.i, label %if.then.i.i.i.i [
    i32 0, label %if.end.i.i.i.dpaa2_switch_port_fdb_add_mc.exit.i.i.i_crit_edge
    i32 -6, label %if.end.i.i.i.dpaa2_switch_port_fdb_add_mc.exit.i.i.i_crit_edge12
  ]

if.end.i.i.i.dpaa2_switch_port_fdb_add_mc.exit.i.i.i_crit_edge12: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_fdb_add_mc.exit.i.i.i

if.end.i.i.i.dpaa2_switch_port_fdb_add_mc.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_fdb_add_mc.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %46 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %47, ptr noundef nonnull @.str.50, i32 noundef %call3.i.i.i.i) #18
  br label %dpaa2_switch_port_fdb_add_mc.exit.i.i.i

dpaa2_switch_port_fdb_add_mc.exit.i.i.i:          ; preds = %if.then.i.i.i.i, %if.end.i.i.i.dpaa2_switch_port_fdb_add_mc.exit.i.i.i_crit_edge, %if.end.i.i.i.dpaa2_switch_port_fdb_add_mc.exit.i.i.i_crit_edge12
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %entry1.i.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %call3.i.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.end7.i.i.i, label %dpaa2_switch_port_fdb_add_mc.exit.i.i.i.sw.epilog.thread.i_crit_edge

dpaa2_switch_port_fdb_add_mc.exit.i.i.i.sw.epilog.thread.i_crit_edge: ; preds = %dpaa2_switch_port_fdb_add_mc.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.thread.i

if.end7.i.i.i:                                    ; preds = %dpaa2_switch_port_fdb_add_mc.exit.i.i.i
  %call10.i.i.i = call i32 @dev_mc_add(ptr noundef %1, ptr noundef %addr.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %call10.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %if.end7.i.i.i.sw.epilog.thread56.i_crit_edge, label %if.then12.i.i.i

if.end7.i.i.i.sw.epilog.thread56.i_crit_edge:     ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.thread56.i

if.then12.i.i.i:                                  ; preds = %if.end7.i.i.i
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.49, i32 noundef %call10.i.i.i) #18
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %entry1.i.i.i) #15
  %48 = getelementptr inbounds i8, ptr %entry1.i.i.i, i32 12
  %49 = call ptr @memset(ptr %48, i32 0, i32 128)
  %mac_addr.i.i.i = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, ptr %entry1.i.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.i.i.i, align 4
  %52 = ptrtoint ptr %mac_addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %mac_addr.i.i.i, align 4
  %53 = ptrtoint ptr %add.ptr1.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %add.ptr1.i.i.i.i.i, align 2
  %add.ptr1.i.i.i.i = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, ptr %entry1.i.i.i, i32 0, i32 1, i32 4
  %55 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %add.ptr1.i.i.i.i, align 4
  %56 = ptrtoint ptr %entry1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %entry1.i.i.i, align 4
  %num_ifs.i.i.i = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, ptr %entry1.i.i.i, i32 0, i32 2
  %57 = ptrtoint ptr %num_ifs.i.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 1, ptr %num_ifs.i.i.i, align 2
  %58 = ptrtoint ptr %idx.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %idx.i.i.i.i, align 4
  %60 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %48, align 4
  %61 = ptrtoint ptr %fdb.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fdb.i.i.i.i.i, align 4
  %fdb_id.i.i.i.i = getelementptr inbounds %struct.dpaa2_switch_fdb, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %fdb_id.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %fdb_id.i.i.i.i, align 4
  %65 = ptrtoint ptr %ethsw_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ethsw_data.i.i.i.i, align 4
  %mc_io.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %mc_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mc_io.i.i.i, align 4
  %dpsw_handle.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %66, i32 0, i32 2
  %69 = ptrtoint ptr %dpsw_handle.i.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %dpsw_handle.i.i.i, align 8
  %call3.i.i.i = call i32 @dpsw_fdb_remove_multicast(ptr noundef %68, i32 noundef 0, i16 noundef zeroext %70, i16 noundef zeroext %64, ptr noundef nonnull %entry1.i.i.i) #15
  %71 = zext i32 %call3.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %call3.i.i.i, label %if.then.i.i.i [
    i32 0, label %if.then12.i.i.i.dpaa2_switch_port_fdb_del_mc.exit.i.i_crit_edge
    i32 -119, label %if.then12.i.i.i.dpaa2_switch_port_fdb_del_mc.exit.i.i_crit_edge13
  ]

if.then12.i.i.i.dpaa2_switch_port_fdb_del_mc.exit.i.i_crit_edge13: ; preds = %if.then12.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_fdb_del_mc.exit.i.i

if.then12.i.i.i.dpaa2_switch_port_fdb_del_mc.exit.i.i_crit_edge: ; preds = %if.then12.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_fdb_del_mc.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then12.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %72 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %73, ptr noundef nonnull @.str.51, i32 noundef %call3.i.i.i) #18
  br label %dpaa2_switch_port_fdb_del_mc.exit.i.i

dpaa2_switch_port_fdb_del_mc.exit.i.i:            ; preds = %if.then.i.i.i, %if.then12.i.i.i.dpaa2_switch_port_fdb_del_mc.exit.i.i_crit_edge, %if.then12.i.i.i.dpaa2_switch_port_fdb_del_mc.exit.i.i_crit_edge13
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %entry1.i.i.i) #15
  br label %sw.epilog.thread.i

sw.bb2.i:                                         ; preds = %if.end.i
  %obj3.i = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %ptr, i32 0, i32 1
  %74 = ptrtoint ptr %obj3.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %obj3.i, align 4
  %id.i11.i = getelementptr inbounds %struct.switchdev_obj, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %id.i11.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %id.i11.i, align 4
  %78 = zext i32 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %77, label %sw.bb2.i.sw.epilog.thread.i_crit_edge [
    i32 1, label %sw.bb.i12.i
    i32 2, label %sw.bb1.i21.i
  ]

sw.bb2.i.sw.epilog.thread.i_crit_edge:            ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.thread.i

sw.bb.i12.i:                                      ; preds = %sw.bb2.i
  %orig_dev.i.i.i = getelementptr inbounds %struct.switchdev_obj, ptr %75, i32 0, i32 1
  %79 = ptrtoint ptr %orig_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %orig_dev.i.i.i, align 4
  %priv_flags.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %80, i32 0, i32 15
  %81 = ptrtoint ptr %priv_flags.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %priv_flags.i.i.i.i, align 16
  %and.i.i.i.i = and i64 %82, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i64 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.end.i.i14.i, label %sw.bb.i12.i.sw.epilog.thread.i_crit_edge

sw.bb.i12.i.sw.epilog.thread.i_crit_edge:         ; preds = %sw.bb.i12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.thread.i

if.end.i.i14.i:                                   ; preds = %sw.bb.i12.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i.i13.i = getelementptr i8, ptr %1, i32 2304
  %vid.i.i.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %75, i32 0, i32 2
  %83 = ptrtoint ptr %vid.i.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %vid.i.i.i, align 2
  %call2.i.i.i = tail call fastcc i32 @dpaa2_switch_port_del_vlan(ptr noundef %add.ptr.i.i.i13.i, i16 noundef zeroext %84) #15
  br label %sw.epilog.i

sw.bb1.i21.i:                                     ; preds = %sw.bb2.i
  %add.ptr.i.i9.i.i = getelementptr i8, ptr %1, i32 2304
  %addr.i.i15.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %75, i32 0, i32 1
  %mc.i.i.i16.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 66
  %nested_level.i.i.i.i17.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 73
  %85 = ptrtoint ptr %nested_level.i.i.i.i17.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %nested_level.i.i.i.i17.i, align 1
  tail call fastcc void @local_bh_disable() #15
  %addr_list_lock.i.i.i.i18.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 63
  %conv.i.i.i.i19.i = zext i8 %86 to i32
  tail call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i.i.i.i18.i, i32 noundef %conv.i.i.i.i19.i) #15
  %add.ptr1.i.i.i.i20.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %75, i32 0, i32 1, i32 4
  br label %for.cond.i.i.i25.i

for.cond.i.i.i25.i:                               ; preds = %for.body.i.i.i33.i.for.cond.i.i.i25.i_crit_edge, %sw.bb1.i21.i
  %ha.0.in.i.i.i22.i = phi ptr [ %mc.i.i.i16.i, %sw.bb1.i21.i ], [ %ha.0.i.i.i23.i, %for.body.i.i.i33.i.for.cond.i.i.i25.i_crit_edge ]
  %87 = ptrtoint ptr %ha.0.in.i.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %ha.0.i.i.i23.i = load ptr, ptr %ha.0.in.i.i.i22.i, align 4
  %cmp.not.i.i.i24.i = icmp eq ptr %ha.0.i.i.i23.i, %mc.i.i.i16.i
  br i1 %cmp.not.i.i.i24.i, label %dpaa2_switch_port_lookup_address.exit.thread.i.i.i, label %for.body.i.i.i33.i

dpaa2_switch_port_lookup_address.exit.thread.i.i.i: ; preds = %for.cond.i.i.i25.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i.i.i.i18.i) #15
  br label %sw.epilog.thread.i

for.body.i.i.i33.i:                               ; preds = %for.cond.i.i.i25.i
  %addr4.i.i.i26.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0.i.i.i23.i, i32 0, i32 2
  %88 = ptrtoint ptr %addr4.i.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %addr4.i.i.i26.i, align 4
  %90 = ptrtoint ptr %addr.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %addr.i.i15.i, align 4
  %xor.i.i.i.i27.i = xor i32 %91, %89
  %add.ptr.i.i.i.i28.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0.i.i.i23.i, i32 0, i32 2, i32 4
  %92 = ptrtoint ptr %add.ptr.i.i.i.i28.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %add.ptr.i.i.i.i28.i, align 2
  %94 = ptrtoint ptr %add.ptr1.i.i.i.i20.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %add.ptr1.i.i.i.i20.i, align 2
  %xor37.i.i.i.i29.i = xor i16 %95, %93
  %xor3.i.i.i.i30.i = zext i16 %xor37.i.i.i.i29.i to i32
  %or.i.i.i.i31.i = or i32 %xor.i.i.i.i27.i, %xor3.i.i.i.i30.i
  %cmp.i.i.i.i32.i = icmp eq i32 %or.i.i.i.i31.i, 0
  br i1 %cmp.i.i.i.i32.i, label %if.end.i10.i.i, label %for.body.i.i.i33.i.for.cond.i.i.i25.i_crit_edge

for.body.i.i.i33.i.for.cond.i.i.i25.i_crit_edge:  ; preds = %for.body.i.i.i33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i.i25.i

if.end.i10.i.i:                                   ; preds = %for.body.i.i.i33.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i.i.i.i18.i) #15
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %entry1.i.i.i10.i) #15
  %96 = getelementptr inbounds i8, ptr %entry1.i.i.i10.i, i32 12
  %97 = call ptr @memset(ptr %96, i32 0, i32 128)
  %mac_addr.i.i.i34.i = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, ptr %entry1.i.i.i10.i, i32 0, i32 1
  %98 = ptrtoint ptr %addr.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %addr.i.i15.i, align 4
  %100 = ptrtoint ptr %mac_addr.i.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %mac_addr.i.i.i34.i, align 4
  %101 = ptrtoint ptr %add.ptr1.i.i.i.i20.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %add.ptr1.i.i.i.i20.i, align 2
  %add.ptr1.i.i26.i.i.i = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, ptr %entry1.i.i.i10.i, i32 0, i32 1, i32 4
  %103 = ptrtoint ptr %add.ptr1.i.i26.i.i.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %add.ptr1.i.i26.i.i.i, align 4
  %104 = ptrtoint ptr %entry1.i.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %entry1.i.i.i10.i, align 4
  %num_ifs.i.i.i35.i = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, ptr %entry1.i.i.i10.i, i32 0, i32 2
  %105 = ptrtoint ptr %num_ifs.i.i.i35.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 1, ptr %num_ifs.i.i.i35.i, align 2
  %idx.i.i.i36.i = getelementptr i8, ptr %1, i32 2308
  %106 = ptrtoint ptr %idx.i.i.i36.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %idx.i.i.i36.i, align 4
  %108 = ptrtoint ptr %96 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %96, align 4
  %fdb.i.i.i.i37.i = getelementptr i8, ptr %1, i32 6420
  %109 = ptrtoint ptr %fdb.i.i.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %fdb.i.i.i.i37.i, align 4
  %fdb_id.i.i.i.i38.i = getelementptr inbounds %struct.dpaa2_switch_fdb, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %fdb_id.i.i.i.i38.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %fdb_id.i.i.i.i38.i, align 4
  %ethsw_data.i.i.i39.i = getelementptr i8, ptr %1, i32 2312
  %113 = ptrtoint ptr %ethsw_data.i.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ethsw_data.i.i.i39.i, align 4
  %mc_io.i.i.i40.i = getelementptr inbounds %struct.ethsw_core, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %mc_io.i.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mc_io.i.i.i40.i, align 4
  %dpsw_handle.i.i.i41.i = getelementptr inbounds %struct.ethsw_core, ptr %114, i32 0, i32 2
  %117 = ptrtoint ptr %dpsw_handle.i.i.i41.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %dpsw_handle.i.i.i41.i, align 8
  %call3.i.i.i42.i = call i32 @dpsw_fdb_remove_multicast(ptr noundef %116, i32 noundef 0, i16 noundef zeroext %118, i16 noundef zeroext %112, ptr noundef nonnull %entry1.i.i.i10.i) #15
  %119 = zext i32 %call3.i.i.i42.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %call3.i.i.i42.i, label %if.then.i.i.i43.i [
    i32 0, label %if.end.i10.i.i.dpaa2_switch_port_fdb_del_mc.exit.i.i.i_crit_edge
    i32 -119, label %if.end.i10.i.i.dpaa2_switch_port_fdb_del_mc.exit.i.i.i_crit_edge14
  ]

if.end.i10.i.i.dpaa2_switch_port_fdb_del_mc.exit.i.i.i_crit_edge14: ; preds = %if.end.i10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_fdb_del_mc.exit.i.i.i

if.end.i10.i.i.dpaa2_switch_port_fdb_del_mc.exit.i.i.i_crit_edge: ; preds = %if.end.i10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_fdb_del_mc.exit.i.i.i

if.then.i.i.i43.i:                                ; preds = %if.end.i10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %120 = ptrtoint ptr %add.ptr.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %add.ptr.i.i9.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %121, ptr noundef nonnull @.str.51, i32 noundef %call3.i.i.i42.i) #18
  br label %dpaa2_switch_port_fdb_del_mc.exit.i.i.i

dpaa2_switch_port_fdb_del_mc.exit.i.i.i:          ; preds = %if.then.i.i.i43.i, %if.end.i10.i.i.dpaa2_switch_port_fdb_del_mc.exit.i.i.i_crit_edge, %if.end.i10.i.i.dpaa2_switch_port_fdb_del_mc.exit.i.i.i_crit_edge14
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %entry1.i.i.i10.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i42.i)
  %tobool5.not.i.i44.i = icmp eq i32 %call3.i.i.i42.i, 0
  br i1 %tobool5.not.i.i44.i, label %if.end7.i.i47.i, label %dpaa2_switch_port_fdb_del_mc.exit.i.i.i.sw.epilog.thread.i_crit_edge

dpaa2_switch_port_fdb_del_mc.exit.i.i.i.sw.epilog.thread.i_crit_edge: ; preds = %dpaa2_switch_port_fdb_del_mc.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.thread.i

if.end7.i.i47.i:                                  ; preds = %dpaa2_switch_port_fdb_del_mc.exit.i.i.i
  %call10.i.i45.i = call i32 @dev_mc_del(ptr noundef %1, ptr noundef %addr.i.i15.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i45.i)
  %tobool11.not.i.i46.i = icmp eq i32 %call10.i.i45.i, 0
  br i1 %tobool11.not.i.i46.i, label %if.end7.i.i47.i.sw.epilog.thread56.i_crit_edge, label %if.then12.i.i48.i

if.end7.i.i47.i.sw.epilog.thread56.i_crit_edge:   ; preds = %if.end7.i.i47.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.thread56.i

if.then12.i.i48.i:                                ; preds = %if.end7.i.i47.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.52, i32 noundef %call10.i.i45.i) #18
  br label %sw.epilog.thread.i

sw.epilog.thread.i:                               ; preds = %if.then12.i.i48.i, %dpaa2_switch_port_fdb_del_mc.exit.i.i.i.sw.epilog.thread.i_crit_edge, %dpaa2_switch_port_lookup_address.exit.thread.i.i.i, %sw.bb.i12.i.sw.epilog.thread.i_crit_edge, %sw.bb2.i.sw.epilog.thread.i_crit_edge, %dpaa2_switch_port_fdb_del_mc.exit.i.i, %dpaa2_switch_port_fdb_add_mc.exit.i.i.i.sw.epilog.thread.i_crit_edge, %dpaa2_switch_port_lookup_address.exit.i.i.i, %sw.bb.i.sw.epilog.thread.i_crit_edge, %if.end.i.sw.epilog.thread.i_crit_edge
  %err.0.ph.i = phi i32 [ -2, %dpaa2_switch_port_lookup_address.exit.thread.i.i.i ], [ %call3.i.i.i42.i, %dpaa2_switch_port_fdb_del_mc.exit.i.i.i.sw.epilog.thread.i_crit_edge ], [ %call10.i.i45.i, %if.then12.i.i48.i ], [ -95, %sw.bb.i12.i.sw.epilog.thread.i_crit_edge ], [ -95, %sw.bb2.i.sw.epilog.thread.i_crit_edge ], [ %call10.i.i.i, %dpaa2_switch_port_fdb_del_mc.exit.i.i ], [ %call3.i.i.i.i, %dpaa2_switch_port_fdb_add_mc.exit.i.i.i.sw.epilog.thread.i_crit_edge ], [ -17, %dpaa2_switch_port_lookup_address.exit.i.i.i ], [ -95, %sw.bb.i.sw.epilog.thread.i_crit_edge ], [ -95, %if.end.i.sw.epilog.thread.i_crit_edge ]
  %handled51.i = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %ptr, i32 0, i32 2
  %122 = ptrtoint ptr %handled51.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %handled51.i, align 4
  %sub.i53.i = sub i32 1, %err.0.ph.i
  %or.i54.i = or i32 %sub.i53.i, 32768
  br label %cleanup

sw.epilog.thread56.i:                             ; preds = %if.end7.i.i47.i.sw.epilog.thread56.i_crit_edge, %if.end7.i.i.i.sw.epilog.thread56.i_crit_edge
  %handled58.i = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %ptr, i32 0, i32 2
  %123 = ptrtoint ptr %handled58.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %handled58.i, align 4
  br label %125

sw.epilog.i:                                      ; preds = %if.end.i.i14.i, %sw.bb.i.i
  %err.0.i = phi i32 [ %call.i.i, %sw.bb.i.i ], [ %call2.i.i.i, %if.end.i.i14.i ]
  %handled.i = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %ptr, i32 0, i32 2
  %124 = ptrtoint ptr %handled.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 1, ptr %handled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool.not.i.i = icmp eq i32 %err.0.i, 0
  %sub.i.i = sub i32 1, %err.0.i
  %or.i.i = or i32 %sub.i.i, 32768
  br i1 %tobool.not.i.i, label %sw.epilog.i._crit_edge, label %sw.epilog.i.cleanup_crit_edge

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.epilog.i._crit_edge:                           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %125

125:                                              ; preds = %sw.epilog.i._crit_edge, %sw.epilog.thread56.i
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 @switchdev_handle_port_attr_set(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @dpaa2_switch_port_dev_check, ptr noundef nonnull @dpaa2_switch_port_attr_set) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.i8 = icmp eq i32 %call.i, 0
  %sub.i.i9 = sub i32 1, %call.i
  %or.i.i10 = or i32 %sub.i.i9, 32768
  %retval.0.i.i = select i1 %tobool.not.i.i8, i32 1, i32 %or.i.i10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %125, %sw.epilog.i.cleanup_crit_edge, %sw.epilog.thread.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i, %sw.bb2 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 1, %125 ], [ %or.i.i, %sw.epilog.i.cleanup_crit_edge ], [ %or.i54.i, %sw.epilog.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_fdb_add_multicast(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_fdb_remove_multicast(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_attr_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_port_attr_set(ptr noundef %netdev, ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %attr, ptr noundef writeonly %extack) #1 align 64 {
entry:
  %stp_cfg.i.i = alloca %struct.dpsw_stp_cfg, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.204)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 6, label %sw.bb1
    i32 3, label %sw.bb6
    i32 2, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %u = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %3 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %u, align 4
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stp_cfg.i.i) #15
  %5 = ptrtoint ptr %stp_cfg.i.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %stp_cfg.i.i, align 8
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i, align 4
  %state.i.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sw.bb.if.end.i_crit_edge, label %lor.lhs.false.i.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

lor.lhs.false.i.i:                                ; preds = %sw.bb
  %stp_state.i.i = getelementptr i8, ptr %netdev, i32 2317
  %10 = ptrtoint ptr %stp_state.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %stp_state.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %4)
  %cmp.i.i = icmp eq i8 %11, %4
  br i1 %cmp.i.i, label %lor.lhs.false.i.i.if.end.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %switch.tableidx = add i8 %4, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %12 = icmp ult i8 %switch.tableidx, 3
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %switch.offset = add nuw nsw i32 %switch.idx.cast, 1
  %retval.0.i.i.i = select i1 %12, i32 %switch.offset, i32 0
  %state4.i.i = getelementptr inbounds %struct.dpsw_stp_cfg, ptr %stp_cfg.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %state4.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i.i.i, ptr %state4.i.i, align 4
  %ethsw_data.i.i = getelementptr i8, ptr %netdev, i32 2312
  %idx.i.i = getelementptr i8, ptr %netdev, i32 2308
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i
  %indvars.iv.i.i = phi i32 [ 0, %if.end.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ethsw_port_priv, ptr %add.ptr.i.i, i32 0, i32 5, i32 %indvars.iv.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.i, align 1
  %16 = and i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then9.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.then9.i.i:                                     ; preds = %for.body.i.i
  %17 = trunc i32 %indvars.iv.i.i to i16
  %18 = ptrtoint ptr %stp_cfg.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %stp_cfg.i.i, align 8
  %19 = ptrtoint ptr %ethsw_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ethsw_data.i.i, align 4
  %mc_io.i.i = getelementptr inbounds %struct.ethsw_core, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %mc_io.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mc_io.i.i, align 4
  %dpsw_handle.i.i = getelementptr inbounds %struct.ethsw_core, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %dpsw_handle.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %dpsw_handle.i.i, align 8
  %25 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %idx.i.i, align 4
  %call11.i.i = call i32 @dpsw_if_set_stp(ptr noundef %22, i32 noundef 0, i16 noundef zeroext %24, i16 noundef zeroext %26, ptr noundef nonnull %stp_cfg.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.then9.i.i.for.inc.i.i_crit_edge, label %dpaa2_switch_port_set_stp_state.exit.i

if.then9.i.i.for.inc.i.i_crit_edge:               ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then9.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 4096
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %stp_state.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %4, ptr %stp_state.i.i, align 1
  br label %if.end.i

dpaa2_switch_port_set_stp_state.exit.i:           ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %29, ptr noundef nonnull @.str.53, i32 noundef %call11.i.i) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stp_cfg.i.i) #15
  br label %cleanup

if.end.i:                                         ; preds = %for.end.i.i, %lor.lhs.false.i.i.if.end.i_crit_edge, %sw.bb.if.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stp_cfg.i.i) #15
  %30 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.205)
  switch i8 %4, label %if.end.i.cleanup_crit_edge [
    i8 0, label %if.end.i.sw.bb.i_crit_edge
    i8 4, label %if.end.i.sw.bb.i_crit_edge45
    i8 1, label %if.end.i.sw.bb.i_crit_edge46
    i8 2, label %if.end.i.sw.bb3.i_crit_edge
    i8 3, label %if.end.i.sw.bb3.i_crit_edge47
  ]

if.end.i.sw.bb3.i_crit_edge47:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb3.i

if.end.i.sw.bb3.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb3.i

if.end.i.sw.bb.i_crit_edge46:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge45:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge45, %if.end.i.sw.bb.i_crit_edge46
  %ethsw_data.i13.i = getelementptr i8, ptr %netdev, i32 2312
  %31 = ptrtoint ptr %ethsw_data.i13.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ethsw_data.i13.i, align 4
  %mc_io.i14.i = getelementptr inbounds %struct.ethsw_core, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %mc_io.i14.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mc_io.i14.i, align 4
  %dpsw_handle.i15.i = getelementptr inbounds %struct.ethsw_core, ptr %32, i32 0, i32 2
  %35 = ptrtoint ptr %dpsw_handle.i15.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %dpsw_handle.i15.i, align 8
  %idx.i16.i = getelementptr i8, ptr %netdev, i32 2308
  %37 = ptrtoint ptr %idx.i16.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %idx.i16.i, align 4
  %call.i.i = call i32 @dpsw_if_set_learning_mode(ptr noundef %34, i32 noundef 0, i16 noundef zeroext %36, i16 noundef zeroext %38, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %sw.bb.i.dpaa2_switch_port_set_learning.exit.i_crit_edge, label %if.then2.i.i

sw.bb.i.dpaa2_switch_port_set_learning.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_set_learning.exit.i

if.then2.i.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %40, ptr noundef nonnull @.str.54, i32 noundef %call.i.i) #18
  br label %dpaa2_switch_port_set_learning.exit.i

dpaa2_switch_port_set_learning.exit.i:            ; preds = %if.then2.i.i, %sw.bb.i.dpaa2_switch_port_set_learning.exit.i_crit_edge
  %call.i.i.i = call fastcc i32 @dpaa2_switch_fdb_iterate(ptr noundef %add.ptr.i.i, ptr noundef nonnull @dpaa2_switch_fdb_entry_fast_age, ptr noundef null) #15
  br label %cleanup

sw.bb3.i:                                         ; preds = %if.end.i.sw.bb3.i_crit_edge, %if.end.i.sw.bb3.i_crit_edge47
  %learn_ena.i = getelementptr i8, ptr %netdev, i32 6426
  %41 = ptrtoint ptr %learn_ena.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %learn_ena.i, align 2, !range !403
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool4.not.i = icmp eq i8 %42, 0
  %ethsw_data.i17.i = getelementptr i8, ptr %netdev, i32 2312
  %43 = ptrtoint ptr %ethsw_data.i17.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ethsw_data.i17.i, align 4
  %45 = zext i8 %42 to i32
  %mc_io.i18.i = getelementptr inbounds %struct.ethsw_core, ptr %44, i32 0, i32 1
  %46 = ptrtoint ptr %mc_io.i18.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mc_io.i18.i, align 4
  %dpsw_handle.i19.i = getelementptr inbounds %struct.ethsw_core, ptr %44, i32 0, i32 2
  %48 = ptrtoint ptr %dpsw_handle.i19.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %dpsw_handle.i19.i, align 8
  %idx.i20.i = getelementptr i8, ptr %netdev, i32 2308
  %50 = ptrtoint ptr %idx.i20.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %idx.i20.i, align 4
  %call.i21.i = call i32 @dpsw_if_set_learning_mode(ptr noundef %47, i32 noundef 0, i16 noundef zeroext %49, i16 noundef zeroext %51, i32 noundef %45) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i)
  %tobool1.not.i22.i = icmp eq i32 %call.i21.i, 0
  br i1 %tobool1.not.i22.i, label %sw.bb3.i.if.end3.i.i_crit_edge, label %if.then2.i23.i

sw.bb3.i.if.end3.i.i_crit_edge:                   ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3.i.i

if.then2.i23.i:                                   ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #17
  %52 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %53, ptr noundef nonnull @.str.54, i32 noundef %call.i21.i) #18
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.then2.i23.i, %sw.bb3.i.if.end3.i.i_crit_edge
  br i1 %tobool4.not.i, label %if.then5.i.i, label %if.end3.i.i.cleanup_crit_edge

if.end3.i.i.cleanup_crit_edge:                    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then5.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i24.i = call fastcc i32 @dpaa2_switch_fdb_iterate(ptr noundef %add.ptr.i.i, ptr noundef nonnull @dpaa2_switch_fdb_entry_fast_age, ptr noundef null) #15
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %u2 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %54 = ptrtoint ptr %u2 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %u2, align 4, !range !403
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not = icmp eq i8 %55, 0
  br i1 %tobool.not, label %do.body, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %sw.bb1
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_port_attr_set.__msg) #15
  %tobool3.not = icmp eq ptr %extack, null
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %56 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @dpaa2_switch_port_attr_set.__msg, ptr %extack, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %u7 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %57 = ptrtoint ptr %u7 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.unpack23 = load i32, ptr %u7, align 4
  %.elt24 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5, i32 0, i32 1
  %58 = ptrtoint ptr %.elt24 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.unpack25 = load i32, ptr %.elt24, align 4
  %and.i = and i32 %.unpack25, -18529
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i26, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i26:                                       ; preds = %sw.bb6
  %and2.i = and i32 %.unpack25, 2112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i26.cleanup_crit_edge, label %if.then4.i

if.end.i26.cleanup_crit_edge:                     ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then4.i:                                       ; preds = %if.end.i26
  %and9.i = lshr i32 %.unpack23, 6
  %and5.i = lshr i32 %.unpack23, 11
  %59 = xor i32 %and9.i, %and5.i
  %60 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.not.i = icmp eq i32 %60, 0
  br i1 %cmp.not.i, label %if.then4.i.cleanup_crit_edge, label %do.body.i

if.then4.i.cleanup_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body.i:                                        ; preds = %if.then4.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_port_pre_bridge_flags.__msg) #15
  %tobool19.not.i = icmp eq ptr %extack, null
  br i1 %tobool19.not.i, label %do.body.i.cleanup_crit_edge, label %if.then20.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then20.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %61 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @dpaa2_switch_port_pre_bridge_flags.__msg, ptr %extack, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %u10 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %62 = ptrtoint ptr %u10 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.unpack = load i32, ptr %u10, align 4
  %.elt21 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5, i32 0, i32 1
  %63 = ptrtoint ptr %.elt21 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.unpack22 = load i32, ptr %.elt21, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %netdev, i32 2304
  %and.i28 = and i32 %.unpack22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28)
  %tobool.not.i29 = icmp eq i32 %and.i28, 0
  br i1 %tobool.not.i29, label %sw.bb9.if.end11.i_crit_edge, label %if.then.i

sw.bb9.if.end11.i_crit_edge:                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

if.then.i:                                        ; preds = %sw.bb9
  %and1.i = and i32 %.unpack, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %ethsw_data.i.i30 = getelementptr i8, ptr %netdev, i32 2312
  %64 = ptrtoint ptr %ethsw_data.i.i30 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ethsw_data.i.i30, align 4
  %and1.lobit3.i = lshr exact i32 %and1.i, 5
  %mc_io.i.i31 = getelementptr inbounds %struct.ethsw_core, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %mc_io.i.i31 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mc_io.i.i31, align 4
  %dpsw_handle.i.i32 = getelementptr inbounds %struct.ethsw_core, ptr %65, i32 0, i32 2
  %68 = ptrtoint ptr %dpsw_handle.i.i32 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %dpsw_handle.i.i32, align 8
  %idx.i.i33 = getelementptr i8, ptr %netdev, i32 2308
  %70 = ptrtoint ptr %idx.i.i33 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %idx.i.i33, align 4
  %call.i.i34 = tail call i32 @dpsw_if_set_learning_mode(ptr noundef %67, i32 noundef 0, i16 noundef zeroext %69, i16 noundef zeroext %71, i32 noundef %and1.lobit3.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %tobool1.not.i.i35 = icmp eq i32 %call.i.i34, 0
  br i1 %tobool1.not.i.i35, label %if.then.i.if.end3.i.i37_crit_edge, label %if.then2.i.i36

if.then.i.if.end3.i.i37_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3.i.i37

if.then2.i.i36:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %72 = ptrtoint ptr %add.ptr.i.i27 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr.i.i27, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %73, ptr noundef nonnull @.str.54, i32 noundef %call.i.i34) #18
  br label %if.end3.i.i37

if.end3.i.i37:                                    ; preds = %if.then2.i.i36, %if.then.i.if.end3.i.i37_crit_edge
  br i1 %tobool2.not.i, label %if.then5.i.i39, label %if.end3.i.i37.dpaa2_switch_port_set_learning.exit.i40_crit_edge

if.end3.i.i37.dpaa2_switch_port_set_learning.exit.i40_crit_edge: ; preds = %if.end3.i.i37
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_set_learning.exit.i40

if.then5.i.i39:                                   ; preds = %if.end3.i.i37
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i38 = tail call fastcc i32 @dpaa2_switch_fdb_iterate(ptr noundef %add.ptr.i.i27, ptr noundef nonnull @dpaa2_switch_fdb_entry_fast_age, ptr noundef null) #15
  br label %dpaa2_switch_port_set_learning.exit.i40

dpaa2_switch_port_set_learning.exit.i40:          ; preds = %if.then5.i.i39, %if.end3.i.i37.dpaa2_switch_port_set_learning.exit.i40_crit_edge
  br i1 %tobool1.not.i.i35, label %if.end.i41, label %dpaa2_switch_port_set_learning.exit.i40.cleanup_crit_edge

dpaa2_switch_port_set_learning.exit.i40.cleanup_crit_edge: ; preds = %dpaa2_switch_port_set_learning.exit.i40
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i41:                                       ; preds = %dpaa2_switch_port_set_learning.exit.i40
  call void @__sanitizer_cov_trace_pc() #17
  %74 = trunc i32 %and1.lobit3.i to i8
  %learn_ena9.i = getelementptr i8, ptr %netdev, i32 6426
  %75 = ptrtoint ptr %learn_ena9.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %learn_ena9.i, align 2
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i41, %sw.bb9.if.end11.i_crit_edge
  %and13.i = and i32 %.unpack22, 18496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end11.i.if.end20.i_crit_edge, label %if.then15.i

if.end11.i.if.end20.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

if.then15.i:                                      ; preds = %if.end11.i
  %ethsw_data.i1.i = getelementptr i8, ptr %netdev, i32 2312
  %76 = ptrtoint ptr %ethsw_data.i1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ethsw_data.i1.i, align 4
  %and.i.i = and i32 %.unpack22, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i42 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i42, label %if.then15.i.if.end.i.i43_crit_edge, label %if.then.i.i

if.then15.i.if.end.i.i43_crit_edge:               ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i43

if.then.i.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #17
  %bcast_flood.i.i = getelementptr i8, ptr %netdev, i32 6424
  %and1.i.i = lshr i32 %.unpack, 14
  %78 = trunc i32 %and1.i.i to i8
  %79 = and i8 %78, 1
  %80 = ptrtoint ptr %bcast_flood.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %bcast_flood.i.i, align 4
  br label %if.end.i.i43

if.end.i.i43:                                     ; preds = %if.then.i.i, %if.then15.i.if.end.i.i43_crit_edge
  %and5.i.i = and i32 %.unpack22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end.i.i43.dpaa2_switch_port_flood.exit.i_crit_edge, label %if.then7.i.i

if.end.i.i43.dpaa2_switch_port_flood.exit.i_crit_edge: ; preds = %if.end.i.i43
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_flood.exit.i

if.then7.i.i:                                     ; preds = %if.end.i.i43
  call void @__sanitizer_cov_trace_pc() #17
  %ucast_flood.i.i = getelementptr i8, ptr %netdev, i32 6425
  %81 = trunc i32 %.unpack to i8
  %82 = lshr i8 %81, 6
  %83 = and i8 %82, 1
  %84 = ptrtoint ptr %ucast_flood.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %ucast_flood.i.i, align 1
  br label %dpaa2_switch_port_flood.exit.i

dpaa2_switch_port_flood.exit.i:                   ; preds = %if.then7.i.i, %if.end.i.i43.dpaa2_switch_port_flood.exit.i_crit_edge
  %fdb.i.i = getelementptr i8, ptr %netdev, i32 6420
  %85 = ptrtoint ptr %fdb.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fdb.i.i, align 4
  %fdb_id.i.i = getelementptr inbounds %struct.dpaa2_switch_fdb, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %fdb_id.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %fdb_id.i.i, align 4
  %call.i2.i = tail call fastcc i32 @dpaa2_switch_fdb_set_egress_flood(ptr noundef %77, i16 noundef zeroext %88) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool17.not.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool17.not.i, label %dpaa2_switch_port_flood.exit.i.if.end20.i_crit_edge, label %dpaa2_switch_port_flood.exit.i.cleanup_crit_edge

dpaa2_switch_port_flood.exit.i.cleanup_crit_edge: ; preds = %dpaa2_switch_port_flood.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

dpaa2_switch_port_flood.exit.i.if.end20.i_crit_edge: ; preds = %dpaa2_switch_port_flood.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

if.end20.i:                                       ; preds = %dpaa2_switch_port_flood.exit.i.if.end20.i_crit_edge, %if.end11.i.if.end20.i_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end20.i, %dpaa2_switch_port_flood.exit.i.cleanup_crit_edge, %dpaa2_switch_port_set_learning.exit.i40.cleanup_crit_edge, %if.then20.i, %do.body.i.cleanup_crit_edge, %if.then4.i.cleanup_crit_edge, %if.end.i26.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %if.then4, %do.body.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %if.then5.i.i, %if.end3.i.i.cleanup_crit_edge, %dpaa2_switch_port_set_learning.exit.i, %if.end.i.cleanup_crit_edge, %dpaa2_switch_port_set_stp_state.exit.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then4 ], [ -95, %do.body.cleanup_crit_edge ], [ 0, %sw.bb1.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ %call11.i.i, %dpaa2_switch_port_set_stp_state.exit.i ], [ 0, %if.end.i.cleanup_crit_edge ], [ %call.i.i, %dpaa2_switch_port_set_learning.exit.i ], [ %call.i21.i, %if.end3.i.i.cleanup_crit_edge ], [ %call.i21.i, %if.then5.i.i ], [ -22, %sw.bb6.cleanup_crit_edge ], [ 0, %if.end.i26.cleanup_crit_edge ], [ -22, %do.body.i.cleanup_crit_edge ], [ -22, %if.then20.i ], [ 0, %if.then4.i.cleanup_crit_edge ], [ 0, %if.end20.i ], [ %call.i2.i, %dpaa2_switch_port_flood.exit.i.cleanup_crit_edge ], [ %call.i.i34, %dpaa2_switch_port_set_learning.exit.i40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_if_set_stp(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_if_set_learning_mode(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_fdb_entry_fast_age(ptr nocapture noundef readonly %port_priv, ptr nocapture noundef readonly %fdb_entry, ptr nocapture noundef readnone %data) #1 align 64 {
entry:
  %entry1.i21 = alloca %struct.dpsw_fdb_multicast_cfg, align 4
  %entry1.i = alloca %struct.dpsw_fdb_unicast_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %idx2.i = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 1
  %0 = ptrtoint ptr %idx2.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %idx2.i, align 4
  %type.i = getelementptr inbounds %struct.fdb_dump_entry, ptr %fdb_entry, i32 0, i32 1
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type.i, align 1
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %if_info.i = getelementptr inbounds %struct.fdb_dump_entry, ptr %fdb_entry, i32 0, i32 2
  %5 = ptrtoint ptr %if_info.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %if_info.i, align 1
  %7 = zext i8 %6 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %7)
  %cmp.i = icmp eq i16 %1, %7
  %conv7.i = zext i1 %cmp.i to i32
  br label %dpaa2_switch_port_fdb_valid_entry.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i = zext i16 %1 to i32
  %div14.i = lshr i32 %conv.i, 3
  %arrayidx.i = getelementptr %struct.fdb_dump_entry, ptr %fdb_entry, i32 0, i32 3, i32 %div14.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv8.i = zext i8 %9 to i32
  %rem.i = and i32 %conv.i, 7
  %shl.i = shl nuw nsw i32 1, %rem.i
  %and9.i = and i32 %shl.i, %conv8.i
  br label %dpaa2_switch_port_fdb_valid_entry.exit

dpaa2_switch_port_fdb_valid_entry.exit:           ; preds = %if.else.i, %if.then.i
  %valid.0.i = phi i32 [ %conv7.i, %if.then.i ], [ %and9.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %valid.0.i)
  %tobool.not = icmp eq i32 %valid.0.i, 0
  br i1 %tobool.not, label %dpaa2_switch_port_fdb_valid_entry.exit.return_crit_edge, label %if.end

dpaa2_switch_port_fdb_valid_entry.exit.return_crit_edge: ; preds = %dpaa2_switch_port_fdb_valid_entry.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %dpaa2_switch_port_fdb_valid_entry.exit
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end3:                                          ; preds = %if.end
  %and6 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %entry1.i) #15
  %if_egress.i = getelementptr inbounds %struct.dpsw_fdb_unicast_cfg, ptr %entry1.i, i32 0, i32 2
  %10 = ptrtoint ptr %if_egress.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %1, ptr %if_egress.i, align 2
  %11 = ptrtoint ptr %entry1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %entry1.i, align 4
  %mac_addr.i = getelementptr inbounds %struct.dpsw_fdb_unicast_cfg, ptr %entry1.i, i32 0, i32 1
  %12 = ptrtoint ptr %fdb_entry to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fdb_entry, align 4
  %14 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %mac_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %fdb_entry, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr inbounds %struct.dpsw_fdb_unicast_cfg, ptr %entry1.i, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %add.ptr1.i.i, align 4
  %fdb.i.i = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 8
  %18 = ptrtoint ptr %fdb.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fdb.i.i, align 4
  %fdb_id.i.i = getelementptr inbounds %struct.dpaa2_switch_fdb, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %fdb_id.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %fdb_id.i.i, align 4
  %ethsw_data.i = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 2
  %22 = ptrtoint ptr %ethsw_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ethsw_data.i, align 4
  %mc_io.i = getelementptr inbounds %struct.ethsw_core, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mc_io.i, align 4
  %dpsw_handle.i = getelementptr inbounds %struct.ethsw_core, ptr %23, i32 0, i32 2
  %26 = ptrtoint ptr %dpsw_handle.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %dpsw_handle.i, align 8
  %call3.i = call i32 @dpsw_fdb_remove_unicast(ptr noundef %25, i32 noundef 0, i16 noundef zeroext %27, i16 noundef zeroext %21, ptr noundef nonnull %entry1.i) #15
  %28 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %call3.i, label %if.then.i20 [
    i32 0, label %if.then8.dpaa2_switch_port_fdb_del_uc.exit_crit_edge
    i32 -6, label %if.then8.dpaa2_switch_port_fdb_del_uc.exit_crit_edge33
  ]

if.then8.dpaa2_switch_port_fdb_del_uc.exit_crit_edge33: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_fdb_del_uc.exit

if.then8.dpaa2_switch_port_fdb_del_uc.exit_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_fdb_del_uc.exit

if.then.i20:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %port_priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port_priv, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.55, i32 noundef %call3.i) #18
  br label %dpaa2_switch_port_fdb_del_uc.exit

dpaa2_switch_port_fdb_del_uc.exit:                ; preds = %if.then.i20, %if.then8.dpaa2_switch_port_fdb_del_uc.exit_crit_edge, %if.then8.dpaa2_switch_port_fdb_del_uc.exit_crit_edge33
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %entry1.i) #15
  br label %return

if.else:                                          ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %entry1.i21) #15
  %31 = getelementptr inbounds i8, ptr %entry1.i21, i32 12
  %32 = call ptr @memset(ptr %31, i32 0, i32 128)
  %mac_addr.i22 = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, ptr %entry1.i21, i32 0, i32 1
  %33 = ptrtoint ptr %fdb_entry to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fdb_entry, align 4
  %35 = ptrtoint ptr %mac_addr.i22 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %mac_addr.i22, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %fdb_entry, i32 4
  %36 = ptrtoint ptr %add.ptr.i.i23 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr.i.i23, align 2
  %add.ptr1.i.i24 = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, ptr %entry1.i21, i32 0, i32 1, i32 4
  %38 = ptrtoint ptr %add.ptr1.i.i24 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %add.ptr1.i.i24, align 4
  %39 = ptrtoint ptr %entry1.i21 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %entry1.i21, align 4
  %num_ifs.i = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, ptr %entry1.i21, i32 0, i32 2
  %40 = ptrtoint ptr %num_ifs.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %num_ifs.i, align 2
  %41 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %1, ptr %31, align 4
  %fdb.i.i26 = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 8
  %42 = ptrtoint ptr %fdb.i.i26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fdb.i.i26, align 4
  %fdb_id.i.i27 = getelementptr inbounds %struct.dpaa2_switch_fdb, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %fdb_id.i.i27 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %fdb_id.i.i27, align 4
  %ethsw_data.i28 = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 2
  %46 = ptrtoint ptr %ethsw_data.i28 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ethsw_data.i28, align 4
  %mc_io.i29 = getelementptr inbounds %struct.ethsw_core, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %mc_io.i29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mc_io.i29, align 4
  %dpsw_handle.i30 = getelementptr inbounds %struct.ethsw_core, ptr %47, i32 0, i32 2
  %50 = ptrtoint ptr %dpsw_handle.i30 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %dpsw_handle.i30, align 8
  %call3.i31 = call i32 @dpsw_fdb_remove_multicast(ptr noundef %49, i32 noundef 0, i16 noundef zeroext %51, i16 noundef zeroext %45, ptr noundef nonnull %entry1.i21) #15
  %52 = zext i32 %call3.i31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.207)
  switch i32 %call3.i31, label %if.then.i32 [
    i32 0, label %if.else.dpaa2_switch_port_fdb_del_mc.exit_crit_edge
    i32 -119, label %if.else.dpaa2_switch_port_fdb_del_mc.exit_crit_edge34
  ]

if.else.dpaa2_switch_port_fdb_del_mc.exit_crit_edge34: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_fdb_del_mc.exit

if.else.dpaa2_switch_port_fdb_del_mc.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_fdb_del_mc.exit

if.then.i32:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %53 = ptrtoint ptr %port_priv to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %port_priv, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %54, ptr noundef nonnull @.str.51, i32 noundef %call3.i31) #18
  br label %dpaa2_switch_port_fdb_del_mc.exit

dpaa2_switch_port_fdb_del_mc.exit:                ; preds = %if.then.i32, %if.else.dpaa2_switch_port_fdb_del_mc.exit_crit_edge, %if.else.dpaa2_switch_port_fdb_del_mc.exit_crit_edge34
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %entry1.i21) #15
  br label %return

return:                                           ; preds = %dpaa2_switch_port_fdb_del_mc.exit, %dpaa2_switch_port_fdb_del_uc.exit, %if.end.return_crit_edge, %dpaa2_switch_port_fdb_valid_entry.exit.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_fdb_remove_unicast(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpaa2_switch_fdb_set_egress_flood(ptr nocapture noundef readonly %ethsw, i16 noundef zeroext %fdb_id) unnamed_addr #1 align 64 {
entry:
  %flood_cfg = alloca %struct.dpsw_egress_flood_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %flood_cfg) #15
  %0 = call ptr @memset(ptr %flood_cfg, i32 0, i32 140)
  %num_ifs.i = getelementptr inbounds %struct.ethsw_core, ptr %ethsw, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %num_ifs.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %num_ifs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp73.not.i = icmp eq i16 %2, 0
  br i1 %cmp73.not.i, label %entry.dpaa2_switch_fdb_get_flood_cfg.exit_crit_edge, label %for.body.lr.ph.i

entry.dpaa2_switch_fdb_get_flood_cfg.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_fdb_get_flood_cfg.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %ports.i = getelementptr inbounds %struct.ethsw_core, ptr %ethsw, i32 0, i32 8
  %3 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ports.i, align 4
  %conv.i = zext i16 %2 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.075.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc37.i, %for.inc.i.for.body.i_crit_edge ]
  %i.074.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %i.1.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %4, i32 %j.075.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %fdb.i = getelementptr inbounds %struct.ethsw_port_priv, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %fdb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fdb.i, align 4
  %fdb_id4.i = getelementptr inbounds %struct.dpaa2_switch_fdb, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %fdb_id4.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %fdb_id4.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %fdb_id)
  %cmp7.not.i = icmp eq i16 %10, %fdb_id
  br i1 %cmp7.not.i, label %if.end10.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end10.i:                                       ; preds = %if.end.i
  %bcast_flood.i = getelementptr inbounds %struct.ethsw_port_priv, ptr %6, i32 0, i32 9
  %11 = ptrtoint ptr %bcast_flood.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bcast_flood.i, align 4, !range !403
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool15.not.i = icmp eq i8 %12, 0
  br i1 %tobool15.not.i, label %if.end10.i.for.inc.i_crit_edge, label %for.inc.sink.split.i

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.inc.sink.split.i:                             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %idx.i = getelementptr inbounds %struct.ethsw_port_priv, ptr %6, i32 0, i32 1
  %13 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %idx.i, align 4
  %inc.i = add i32 %i.074.i, 1
  %arrayidx20.i = getelementptr %struct.dpsw_egress_flood_cfg, ptr %flood_cfg, i32 0, i32 3, i32 %i.074.i
  %15 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx20.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.end10.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %i.1.i = phi i32 [ %i.074.i, %if.end.i.for.inc.i_crit_edge ], [ %i.074.i, %for.body.i.for.inc.i_crit_edge ], [ %i.074.i, %if.end10.i.for.inc.i_crit_edge ], [ %inc.i, %for.inc.sink.split.i ]
  %inc37.i = add nuw nsw i32 %j.075.i, 1
  %exitcond.not = icmp eq i32 %inc37.i, %conv.i
  br i1 %exitcond.not, label %for.inc.i.dpaa2_switch_fdb_get_flood_cfg.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.dpaa2_switch_fdb_get_flood_cfg.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_fdb_get_flood_cfg.exit

dpaa2_switch_fdb_get_flood_cfg.exit:              ; preds = %for.inc.i.dpaa2_switch_fdb_get_flood_cfg.exit_crit_edge, %entry.dpaa2_switch_fdb_get_flood_cfg.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.dpaa2_switch_fdb_get_flood_cfg.exit_crit_edge ], [ %i.1.i, %for.inc.i.dpaa2_switch_fdb_get_flood_cfg.exit_crit_edge ]
  %arrayidx42.i = getelementptr %struct.dpsw_egress_flood_cfg, ptr %flood_cfg, i32 0, i32 3, i32 %i.0.lcssa.i
  %16 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %2, ptr %arrayidx42.i, align 2
  %17 = ptrtoint ptr %flood_cfg to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %fdb_id, ptr %flood_cfg, align 4
  %flood_type.i = getelementptr inbounds %struct.dpsw_egress_flood_cfg, ptr %flood_cfg, i32 0, i32 1
  %18 = ptrtoint ptr %flood_type.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %flood_type.i, align 4
  %19 = trunc i32 %i.0.lcssa.i to i16
  %conv44.i = add i16 %19, 1
  %num_ifs45.i = getelementptr inbounds %struct.dpsw_egress_flood_cfg, ptr %flood_cfg, i32 0, i32 2
  %20 = ptrtoint ptr %num_ifs45.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv44.i, ptr %num_ifs45.i, align 4
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %ethsw, i32 0, i32 1
  %21 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mc_io, align 4
  %dpsw_handle = getelementptr inbounds %struct.ethsw_core, ptr %ethsw, i32 0, i32 2
  %23 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %dpsw_handle, align 8
  %call = call i32 @dpsw_set_egress_flood(ptr noundef %22, i32 noundef 0, i16 noundef zeroext %24, ptr noundef nonnull %flood_cfg) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %dpaa2_switch_fdb_get_flood_cfg.exit.cleanup.sink.split_crit_edge

dpaa2_switch_fdb_get_flood_cfg.exit.cleanup.sink.split_crit_edge: ; preds = %dpaa2_switch_fdb_get_flood_cfg.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end:                                           ; preds = %dpaa2_switch_fdb_get_flood_cfg.exit
  %25 = call ptr @memset(ptr %flood_cfg, i32 0, i32 140)
  %26 = ptrtoint ptr %num_ifs.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_ifs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp73.not.i26 = icmp eq i16 %27, 0
  br i1 %cmp73.not.i26, label %if.end.dpaa2_switch_fdb_get_flood_cfg.exit54_crit_edge, label %for.body.lr.ph.i28

if.end.dpaa2_switch_fdb_get_flood_cfg.exit54_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_fdb_get_flood_cfg.exit54

for.body.lr.ph.i28:                               ; preds = %if.end
  %ports.i27 = getelementptr inbounds %struct.ethsw_core, ptr %ethsw, i32 0, i32 8
  %28 = ptrtoint ptr %ports.i27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ports.i27, align 4
  %conv.i45 = zext i16 %27 to i32
  br label %for.body.i33

for.body.i33:                                     ; preds = %for.inc.i47.for.body.i33_crit_edge, %for.body.lr.ph.i28
  %j.075.i29 = phi i32 [ 0, %for.body.lr.ph.i28 ], [ %inc37.i44, %for.inc.i47.for.body.i33_crit_edge ]
  %i.074.i30 = phi i32 [ 0, %for.body.lr.ph.i28 ], [ %i.1.i43, %for.inc.i47.for.body.i33_crit_edge ]
  %arrayidx.i31 = getelementptr ptr, ptr %29, i32 %j.075.i29
  %30 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i31, align 4
  %tobool.not.i32 = icmp eq ptr %31, null
  br i1 %tobool.not.i32, label %for.body.i33.for.inc.i47_crit_edge, label %if.end.i37

for.body.i33.for.inc.i47_crit_edge:               ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i47

if.end.i37:                                       ; preds = %for.body.i33
  %fdb.i34 = getelementptr inbounds %struct.ethsw_port_priv, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %fdb.i34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fdb.i34, align 4
  %fdb_id4.i35 = getelementptr inbounds %struct.dpaa2_switch_fdb, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %fdb_id4.i35 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %fdb_id4.i35, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %fdb_id)
  %cmp7.not.i36 = icmp eq i16 %35, %fdb_id
  br i1 %cmp7.not.i36, label %if.end10.i38, label %if.end.i37.for.inc.i47_crit_edge

if.end.i37.for.inc.i47_crit_edge:                 ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i47

if.end10.i38:                                     ; preds = %if.end.i37
  %ucast_flood.i = getelementptr inbounds %struct.ethsw_port_priv, ptr %31, i32 0, i32 10
  %36 = ptrtoint ptr %ucast_flood.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ucast_flood.i, align 1, !range !403
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool26.not.i = icmp eq i8 %37, 0
  br i1 %tobool26.not.i, label %if.end10.i38.for.inc.i47_crit_edge, label %for.inc.sink.split.i42

if.end10.i38.for.inc.i47_crit_edge:               ; preds = %if.end10.i38
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i47

for.inc.sink.split.i42:                           ; preds = %if.end10.i38
  call void @__sanitizer_cov_trace_pc() #17
  %idx.i39 = getelementptr inbounds %struct.ethsw_port_priv, ptr %31, i32 0, i32 1
  %38 = ptrtoint ptr %idx.i39 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %idx.i39, align 4
  %inc.i40 = add i32 %i.074.i30, 1
  %arrayidx20.i41 = getelementptr %struct.dpsw_egress_flood_cfg, ptr %flood_cfg, i32 0, i32 3, i32 %i.074.i30
  %40 = ptrtoint ptr %arrayidx20.i41 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %arrayidx20.i41, align 2
  br label %for.inc.i47

for.inc.i47:                                      ; preds = %for.inc.sink.split.i42, %if.end10.i38.for.inc.i47_crit_edge, %if.end.i37.for.inc.i47_crit_edge, %for.body.i33.for.inc.i47_crit_edge
  %i.1.i43 = phi i32 [ %i.074.i30, %if.end.i37.for.inc.i47_crit_edge ], [ %i.074.i30, %if.end10.i38.for.inc.i47_crit_edge ], [ %i.074.i30, %for.body.i33.for.inc.i47_crit_edge ], [ %inc.i40, %for.inc.sink.split.i42 ]
  %inc37.i44 = add nuw nsw i32 %j.075.i29, 1
  %exitcond55.not = icmp eq i32 %inc37.i44, %conv.i45
  br i1 %exitcond55.not, label %for.inc.i47.dpaa2_switch_fdb_get_flood_cfg.exit54_crit_edge, label %for.inc.i47.for.body.i33_crit_edge

for.inc.i47.for.body.i33_crit_edge:               ; preds = %for.inc.i47
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i33

for.inc.i47.dpaa2_switch_fdb_get_flood_cfg.exit54_crit_edge: ; preds = %for.inc.i47
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_fdb_get_flood_cfg.exit54

dpaa2_switch_fdb_get_flood_cfg.exit54:            ; preds = %for.inc.i47.dpaa2_switch_fdb_get_flood_cfg.exit54_crit_edge, %if.end.dpaa2_switch_fdb_get_flood_cfg.exit54_crit_edge
  %i.0.lcssa.i48 = phi i32 [ 0, %if.end.dpaa2_switch_fdb_get_flood_cfg.exit54_crit_edge ], [ %i.1.i43, %for.inc.i47.dpaa2_switch_fdb_get_flood_cfg.exit54_crit_edge ]
  %arrayidx42.i50 = getelementptr %struct.dpsw_egress_flood_cfg, ptr %flood_cfg, i32 0, i32 3, i32 %i.0.lcssa.i48
  %41 = ptrtoint ptr %arrayidx42.i50 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %27, ptr %arrayidx42.i50, align 2
  %42 = ptrtoint ptr %flood_cfg to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %fdb_id, ptr %flood_cfg, align 4
  %43 = ptrtoint ptr %flood_type.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %flood_type.i, align 4
  %44 = trunc i32 %i.0.lcssa.i48 to i16
  %conv44.i52 = add i16 %44, 1
  %45 = ptrtoint ptr %num_ifs45.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv44.i52, ptr %num_ifs45.i, align 4
  %46 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mc_io, align 4
  %48 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %dpsw_handle, align 8
  %call3 = call i32 @dpsw_set_egress_flood(ptr noundef %47, i32 noundef 0, i16 noundef zeroext %49, ptr noundef nonnull %flood_cfg) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %dpaa2_switch_fdb_get_flood_cfg.exit54.cleanup_crit_edge, label %dpaa2_switch_fdb_get_flood_cfg.exit54.cleanup.sink.split_crit_edge

dpaa2_switch_fdb_get_flood_cfg.exit54.cleanup.sink.split_crit_edge: ; preds = %dpaa2_switch_fdb_get_flood_cfg.exit54
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

dpaa2_switch_fdb_get_flood_cfg.exit54.cleanup_crit_edge: ; preds = %dpaa2_switch_fdb_get_flood_cfg.exit54
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.sink.split:                               ; preds = %dpaa2_switch_fdb_get_flood_cfg.exit54.cleanup.sink.split_crit_edge, %dpaa2_switch_fdb_get_flood_cfg.exit.cleanup.sink.split_crit_edge
  %call3.sink = phi i32 [ %call, %dpaa2_switch_fdb_get_flood_cfg.exit.cleanup.sink.split_crit_edge ], [ %call3, %dpaa2_switch_fdb_get_flood_cfg.exit54.cleanup.sink.split_crit_edge ]
  %50 = ptrtoint ptr %ethsw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ethsw, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.56, i32 noundef %call3.sink) #18
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %dpaa2_switch_fdb_get_flood_cfg.exit54.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dpaa2_switch_fdb_get_flood_cfg.exit54.cleanup_crit_edge ], [ %call3.sink, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %flood_cfg) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_set_egress_flood(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_port_event(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr noundef %ptr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %ethsw_data = getelementptr i8, ptr %1, i32 2312
  %2 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ethsw_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %event)
  %cmp = icmp eq i32 %event, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 @switchdev_handle_port_attr_set(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @dpaa2_switch_port_dev_check, ptr noundef nonnull @dpaa2_switch_port_attr_set) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.i = icmp eq i32 %call.i, 0
  %sub.i.i = sub i32 1, %call.i
  %or.i.i = or i32 %sub.i.i, 32768
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 1, i32 %or.i.i
  br label %cleanup

if.end:                                           ; preds = %entry
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp eq ptr %5, @dpaa2_switch_port_ops
  br i1 %cmp.i, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2848, i32 noundef 72) #21
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %do.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %if.end5
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #15
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.60, ptr noundef nonnull @dpaa2_switch_port_event.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry12 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry12, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @dpaa2_switch_event_work, ptr %func, align 4
  %dev14 = getelementptr inbounds %struct.ethsw_switchdev_event_work, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %dev14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %dev14, align 8
  %event15 = getelementptr inbounds %struct.ethsw_switchdev_event_work, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %event15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %event, ptr %event15, align 4
  %event.off = add i32 %event, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event.off)
  %switch = icmp ult i32 %event.off, 2
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %do.body
  %fdb_info16 = getelementptr inbounds %struct.ethsw_switchdev_event_work, ptr %call7.i.i, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %fdb_info16, ptr %ptr, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i56 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 2848, i32 noundef 6) #21
  %addr = getelementptr inbounds %struct.ethsw_switchdev_event_work, ptr %call7.i.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i56, ptr %addr, align 8
  %tobool21.not = icmp eq ptr %call7.i.i56, null
  br i1 %tobool21.not, label %err_addr_alloc, label %if.end23

if.end23:                                         ; preds = %sw.bb
  %addr26 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %ptr, i32 0, i32 1
  %16 = ptrtoint ptr %addr26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addr26, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %20 = ptrtoint ptr %call7.i.i56 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %call7.i.i56, align 8
  %add.ptr.i57 = getelementptr i8, ptr %17, i32 4
  %21 = ptrtoint ptr %add.ptr.i57 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i57, align 2
  %add.ptr1.i = getelementptr i8, ptr %call7.i.i56, i32 4
  %23 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %add.ptr1.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end23.dev_hold.exit_crit_edge, label %do.body1.i

if.end23.dev_hold.exit_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %if.end23
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !406
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %25 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcpu_refcnt.i, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !390) #15
  %and.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %33, %27
  %34 = inttoptr i32 %add.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %add13.i = add i32 %36, 1
  store i32 %add13.i, ptr %34, align 4
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !407
  %and.i.i.i = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !401

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %24) #15, !srcloc !408
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %if.end23.dev_hold.exit_crit_edge
  %workqueue = getelementptr inbounds %struct.ethsw_core, ptr %3, i32 0, i32 11
  %38 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %workqueue, align 4
  %call.i58 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %39, ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

sw.default:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

err_addr_alloc:                                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %err_addr_alloc, %sw.default, %dev_hold.exit, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %retval.0.i.i, %if.then ], [ 0, %sw.default ], [ 0, %dev_hold.exit ], [ 32770, %err_addr_alloc ], [ 0, %if.end.cleanup_crit_edge ], [ 32770, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpaa2_switch_event_work(ptr noundef %work) #1 align 64 {
entry:
  %entry1.i97 = alloca %struct.dpsw_fdb_multicast_cfg, align 4
  %entry1.i83 = alloca %struct.dpsw_fdb_unicast_cfg, align 4
  %entry1.i69 = alloca %struct.dpsw_fdb_multicast_cfg, align 4
  %entry1.i = alloca %struct.dpsw_fdb_unicast_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ethsw_switchdev_event_work, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void @rtnl_lock() #15
  %fdb_info2 = getelementptr inbounds %struct.ethsw_switchdev_event_work, ptr %work, i32 0, i32 1
  %event = getelementptr inbounds %struct.ethsw_switchdev_event_work, ptr %work, i32 0, i32 3
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb20
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %added_by_user = getelementptr inbounds %struct.ethsw_switchdev_event_work, ptr %work, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %added_by_user to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %added_by_user, align 2
  %6 = and i8 %bf.load, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %6)
  %7 = icmp eq i8 %6, -128
  br i1 %7, label %if.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %addr = getelementptr inbounds %struct.ethsw_switchdev_event_work, ptr %work, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %entry1.i) #15
  %idx.i = getelementptr i8, ptr %1, i32 2308
  %13 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %idx.i, align 4
  %if_egress.i = getelementptr inbounds %struct.dpsw_fdb_unicast_cfg, ptr %entry1.i, i32 0, i32 2
  %15 = ptrtoint ptr %if_egress.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %if_egress.i, align 2
  %16 = ptrtoint ptr %entry1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %entry1.i, align 4
  %mac_addr.i = getelementptr inbounds %struct.dpsw_fdb_unicast_cfg, ptr %entry1.i, i32 0, i32 1
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %9, align 4
  %19 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %mac_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr inbounds %struct.dpsw_fdb_unicast_cfg, ptr %entry1.i, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %add.ptr1.i.i, align 4
  %fdb.i.i = getelementptr i8, ptr %1, i32 6420
  %23 = ptrtoint ptr %fdb.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fdb.i.i, align 4
  %fdb_id.i.i = getelementptr inbounds %struct.dpaa2_switch_fdb, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %fdb_id.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %fdb_id.i.i, align 4
  %ethsw_data.i = getelementptr i8, ptr %1, i32 2312
  %27 = ptrtoint ptr %ethsw_data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ethsw_data.i, align 4
  %mc_io.i = getelementptr inbounds %struct.ethsw_core, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mc_io.i, align 4
  %dpsw_handle.i = getelementptr inbounds %struct.ethsw_core, ptr %28, i32 0, i32 2
  %31 = ptrtoint ptr %dpsw_handle.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %dpsw_handle.i, align 8
  %call3.i = call i32 @dpsw_fdb_add_unicast(ptr noundef %30, i32 noundef 0, i16 noundef zeroext %32, i16 noundef zeroext %26, ptr noundef nonnull %entry1.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.then6.dpaa2_switch_port_fdb_add_uc.exit_crit_edge, label %if.then.i

if.then6.dpaa2_switch_port_fdb_add_uc.exit_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_fdb_add_uc.exit

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %34, ptr noundef nonnull @.str.61, i32 noundef %call3.i) #18
  br label %dpaa2_switch_port_fdb_add_uc.exit

dpaa2_switch_port_fdb_add_uc.exit:                ; preds = %if.then.i, %if.then6.dpaa2_switch_port_fdb_add_uc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %entry1.i) #15
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %entry1.i69) #15
  %35 = getelementptr inbounds i8, ptr %entry1.i69, i32 12
  %36 = call ptr @memset(ptr %35, i32 0, i32 128)
  %mac_addr.i70 = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, ptr %entry1.i69, i32 0, i32 1
  %37 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %9, align 4
  %39 = ptrtoint ptr %mac_addr.i70 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %mac_addr.i70, align 4
  %add.ptr.i.i71 = getelementptr i8, ptr %9, i32 4
  %40 = ptrtoint ptr %add.ptr.i.i71 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %add.ptr.i.i71, align 2
  %add.ptr1.i.i72 = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, ptr %entry1.i69, i32 0, i32 1, i32 4
  %42 = ptrtoint ptr %add.ptr1.i.i72 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %add.ptr1.i.i72, align 4
  %43 = ptrtoint ptr %entry1.i69 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %entry1.i69, align 4
  %num_ifs.i = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, ptr %entry1.i69, i32 0, i32 2
  %44 = ptrtoint ptr %num_ifs.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 1, ptr %num_ifs.i, align 2
  %idx.i73 = getelementptr i8, ptr %1, i32 2308
  %45 = ptrtoint ptr %idx.i73 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %idx.i73, align 4
  %47 = ptrtoint ptr %35 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %35, align 4
  %fdb.i.i74 = getelementptr i8, ptr %1, i32 6420
  %48 = ptrtoint ptr %fdb.i.i74 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fdb.i.i74, align 4
  %fdb_id.i.i75 = getelementptr inbounds %struct.dpaa2_switch_fdb, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %fdb_id.i.i75 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %fdb_id.i.i75, align 4
  %ethsw_data.i76 = getelementptr i8, ptr %1, i32 2312
  %52 = ptrtoint ptr %ethsw_data.i76 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ethsw_data.i76, align 4
  %mc_io.i77 = getelementptr inbounds %struct.ethsw_core, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %mc_io.i77 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mc_io.i77, align 4
  %dpsw_handle.i78 = getelementptr inbounds %struct.ethsw_core, ptr %53, i32 0, i32 2
  %56 = ptrtoint ptr %dpsw_handle.i78 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %dpsw_handle.i78, align 8
  %call3.i79 = call i32 @dpsw_fdb_add_multicast(ptr noundef %55, i32 noundef 0, i16 noundef zeroext %57, i16 noundef zeroext %51, ptr noundef nonnull %entry1.i69) #15
  %58 = zext i32 %call3.i79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %call3.i79, label %if.then.i80 [
    i32 0, label %if.else.dpaa2_switch_port_fdb_add_mc.exit_crit_edge
    i32 -6, label %if.else.dpaa2_switch_port_fdb_add_mc.exit_crit_edge112
  ]

if.else.dpaa2_switch_port_fdb_add_mc.exit_crit_edge112: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_fdb_add_mc.exit

if.else.dpaa2_switch_port_fdb_add_mc.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_fdb_add_mc.exit

if.then.i80:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i68 = getelementptr i8, ptr %1, i32 2304
  %59 = ptrtoint ptr %add.ptr.i68 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr.i68, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %60, ptr noundef nonnull @.str.50, i32 noundef %call3.i79) #18
  br label %dpaa2_switch_port_fdb_add_mc.exit

dpaa2_switch_port_fdb_add_mc.exit:                ; preds = %if.then.i80, %if.else.dpaa2_switch_port_fdb_add_mc.exit_crit_edge, %if.else.dpaa2_switch_port_fdb_add_mc.exit_crit_edge112
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %entry1.i69) #15
  br label %if.end13

if.end13:                                         ; preds = %dpaa2_switch_port_fdb_add_mc.exit, %dpaa2_switch_port_fdb_add_uc.exit
  %err.0 = phi i32 [ %call3.i, %dpaa2_switch_port_fdb_add_uc.exit ], [ %call3.i79, %dpaa2_switch_port_fdb_add_mc.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool14.not = icmp eq i32 %err.0, 0
  br i1 %tobool14.not, label %if.end16, label %if.end13.sw.epilog_crit_edge

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end16:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %61 = ptrtoint ptr %added_by_user to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load17 = load i8, ptr %added_by_user, align 2
  %bf.set = or i8 %bf.load17, 32
  store i8 %bf.set, ptr %added_by_user, align 2
  %call19 = call i32 @call_switchdev_notifiers(i32 noundef 5, ptr noundef %1, ptr noundef %fdb_info2, ptr noundef null) #15
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %added_by_user21 = getelementptr inbounds %struct.ethsw_switchdev_event_work, ptr %work, i32 0, i32 1, i32 3
  %62 = ptrtoint ptr %added_by_user21 to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load22 = load i8, ptr %added_by_user21, align 2
  %63 = and i8 %bf.load22, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %63)
  %64 = icmp eq i8 %63, -128
  br i1 %64, label %if.end33, label %sw.bb20.sw.epilog_crit_edge

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end33:                                         ; preds = %sw.bb20
  %addr34 = getelementptr inbounds %struct.ethsw_switchdev_event_work, ptr %work, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %addr34 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %addr34, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %69 = and i32 %68, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.i.not.i81 = icmp eq i32 %69, 0
  br i1 %tobool.i.not.i81, label %if.then36, label %if.else40

if.then36:                                        ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %entry1.i83) #15
  %idx.i84 = getelementptr i8, ptr %1, i32 2308
  %70 = ptrtoint ptr %idx.i84 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %idx.i84, align 4
  %if_egress.i85 = getelementptr inbounds %struct.dpsw_fdb_unicast_cfg, ptr %entry1.i83, i32 0, i32 2
  %72 = ptrtoint ptr %if_egress.i85 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %if_egress.i85, align 2
  %73 = ptrtoint ptr %entry1.i83 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %entry1.i83, align 4
  %mac_addr.i86 = getelementptr inbounds %struct.dpsw_fdb_unicast_cfg, ptr %entry1.i83, i32 0, i32 1
  %74 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %66, align 4
  %76 = ptrtoint ptr %mac_addr.i86 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %mac_addr.i86, align 4
  %add.ptr.i.i87 = getelementptr i8, ptr %66, i32 4
  %77 = ptrtoint ptr %add.ptr.i.i87 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %add.ptr.i.i87, align 2
  %add.ptr1.i.i88 = getelementptr inbounds %struct.dpsw_fdb_unicast_cfg, ptr %entry1.i83, i32 0, i32 1, i32 4
  %79 = ptrtoint ptr %add.ptr1.i.i88 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %add.ptr1.i.i88, align 4
  %fdb.i.i89 = getelementptr i8, ptr %1, i32 6420
  %80 = ptrtoint ptr %fdb.i.i89 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fdb.i.i89, align 4
  %fdb_id.i.i90 = getelementptr inbounds %struct.dpaa2_switch_fdb, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %fdb_id.i.i90 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %fdb_id.i.i90, align 4
  %ethsw_data.i91 = getelementptr i8, ptr %1, i32 2312
  %84 = ptrtoint ptr %ethsw_data.i91 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ethsw_data.i91, align 4
  %mc_io.i92 = getelementptr inbounds %struct.ethsw_core, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %mc_io.i92 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mc_io.i92, align 4
  %dpsw_handle.i93 = getelementptr inbounds %struct.ethsw_core, ptr %85, i32 0, i32 2
  %88 = ptrtoint ptr %dpsw_handle.i93 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %dpsw_handle.i93, align 8
  %call3.i94 = call i32 @dpsw_fdb_remove_unicast(ptr noundef %87, i32 noundef 0, i16 noundef zeroext %89, i16 noundef zeroext %83, ptr noundef nonnull %entry1.i83) #15
  %90 = zext i32 %call3.i94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.210)
  switch i32 %call3.i94, label %if.then.i95 [
    i32 0, label %if.then36.dpaa2_switch_port_fdb_del_uc.exit_crit_edge
    i32 -6, label %if.then36.dpaa2_switch_port_fdb_del_uc.exit_crit_edge113
  ]

if.then36.dpaa2_switch_port_fdb_del_uc.exit_crit_edge113: ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_fdb_del_uc.exit

if.then36.dpaa2_switch_port_fdb_del_uc.exit_crit_edge: ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_fdb_del_uc.exit

if.then.i95:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i82 = getelementptr i8, ptr %1, i32 2304
  %91 = ptrtoint ptr %add.ptr.i82 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr.i82, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %92, ptr noundef nonnull @.str.55, i32 noundef %call3.i94) #18
  br label %dpaa2_switch_port_fdb_del_uc.exit

dpaa2_switch_port_fdb_del_uc.exit:                ; preds = %if.then.i95, %if.then36.dpaa2_switch_port_fdb_del_uc.exit_crit_edge, %if.then36.dpaa2_switch_port_fdb_del_uc.exit_crit_edge113
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %entry1.i83) #15
  br label %sw.epilog

if.else40:                                        ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %entry1.i97) #15
  %93 = getelementptr inbounds i8, ptr %entry1.i97, i32 12
  %94 = call ptr @memset(ptr %93, i32 0, i32 128)
  %mac_addr.i98 = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, ptr %entry1.i97, i32 0, i32 1
  %95 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %66, align 4
  %97 = ptrtoint ptr %mac_addr.i98 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %mac_addr.i98, align 4
  %add.ptr.i.i99 = getelementptr i8, ptr %66, i32 4
  %98 = ptrtoint ptr %add.ptr.i.i99 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %add.ptr.i.i99, align 2
  %add.ptr1.i.i100 = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, ptr %entry1.i97, i32 0, i32 1, i32 4
  %100 = ptrtoint ptr %add.ptr1.i.i100 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %add.ptr1.i.i100, align 4
  %101 = ptrtoint ptr %entry1.i97 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %entry1.i97, align 4
  %num_ifs.i101 = getelementptr inbounds %struct.dpsw_fdb_multicast_cfg, ptr %entry1.i97, i32 0, i32 2
  %102 = ptrtoint ptr %num_ifs.i101 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 1, ptr %num_ifs.i101, align 2
  %idx.i102 = getelementptr i8, ptr %1, i32 2308
  %103 = ptrtoint ptr %idx.i102 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %idx.i102, align 4
  %105 = ptrtoint ptr %93 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %93, align 4
  %fdb.i.i104 = getelementptr i8, ptr %1, i32 6420
  %106 = ptrtoint ptr %fdb.i.i104 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %fdb.i.i104, align 4
  %fdb_id.i.i105 = getelementptr inbounds %struct.dpaa2_switch_fdb, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %fdb_id.i.i105 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %fdb_id.i.i105, align 4
  %ethsw_data.i106 = getelementptr i8, ptr %1, i32 2312
  %110 = ptrtoint ptr %ethsw_data.i106 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ethsw_data.i106, align 4
  %mc_io.i107 = getelementptr inbounds %struct.ethsw_core, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %mc_io.i107 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mc_io.i107, align 4
  %dpsw_handle.i108 = getelementptr inbounds %struct.ethsw_core, ptr %111, i32 0, i32 2
  %114 = ptrtoint ptr %dpsw_handle.i108 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %dpsw_handle.i108, align 8
  %call3.i109 = call i32 @dpsw_fdb_remove_multicast(ptr noundef %113, i32 noundef 0, i16 noundef zeroext %115, i16 noundef zeroext %109, ptr noundef nonnull %entry1.i97) #15
  %116 = zext i32 %call3.i109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.211)
  switch i32 %call3.i109, label %if.then.i110 [
    i32 0, label %if.else40.dpaa2_switch_port_fdb_del_mc.exit_crit_edge
    i32 -119, label %if.else40.dpaa2_switch_port_fdb_del_mc.exit_crit_edge114
  ]

if.else40.dpaa2_switch_port_fdb_del_mc.exit_crit_edge114: ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_fdb_del_mc.exit

if.else40.dpaa2_switch_port_fdb_del_mc.exit_crit_edge: ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_fdb_del_mc.exit

if.then.i110:                                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i96 = getelementptr i8, ptr %1, i32 2304
  %117 = ptrtoint ptr %add.ptr.i96 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %add.ptr.i96, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %118, ptr noundef nonnull @.str.51, i32 noundef %call3.i109) #18
  br label %dpaa2_switch_port_fdb_del_mc.exit

dpaa2_switch_port_fdb_del_mc.exit:                ; preds = %if.then.i110, %if.else40.dpaa2_switch_port_fdb_del_mc.exit_crit_edge, %if.else40.dpaa2_switch_port_fdb_del_mc.exit_crit_edge114
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %entry1.i97) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %dpaa2_switch_port_fdb_del_mc.exit, %dpaa2_switch_port_fdb_del_uc.exit, %sw.bb20.sw.epilog_crit_edge, %if.end16, %if.end13.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  call void @rtnl_unlock() #15
  %addr46 = getelementptr inbounds %struct.ethsw_switchdev_event_work, ptr %work, i32 0, i32 1, i32 1
  %119 = ptrtoint ptr %addr46 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %addr46, align 4
  call void @kfree(ptr noundef %120) #15
  call void @kfree(ptr noundef %work) #15
  %tobool.not.i111 = icmp eq ptr %1, null
  br i1 %tobool.not.i111, label %sw.epilog.dev_put.exit_crit_edge, label %do.body1.i

sw.epilog.dev_put.exit_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_put.exit

do.body1.i:                                       ; preds = %sw.epilog
  %121 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !406
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %122 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pcpu_refcnt.i, align 4
  %124 = ptrtoint ptr %123 to i32
  %125 = call i32 @llvm.read_register.i32(metadata !390) #15
  %and.i.i = and i32 %125, -16384
  %126 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 3
  %127 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %128
  %129 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %130, %124
  %131 = inttoptr i32 %add.i to ptr
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 4
  %add13.i = add i32 %133, -1
  store i32 %add13.i, ptr %131, align 4
  %134 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !407
  %and.i.i.i = and i32 %134, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !401

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %121) #15, !srcloc !408
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %sw.epilog.dev_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_switchdev_notifiers(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_fdb_add_unicast(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_port_netdevice_event(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr nocapture noundef readonly %ptr) #1 align 64 {
entry:
  %iter.i = alloca ptr, align 4
  %iter.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp eq ptr %3, @dpaa2_switch_port_ops
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %extack.i = getelementptr inbounds %struct.netdev_notifier_info, ptr %ptr, i32 0, i32 1
  %4 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %extack.i, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.212)
  switch i32 %event, label %if.end.out.thread_crit_edge [
    i32 26, label %sw.bb
    i32 21, label %sw.bb14
  ]

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

sw.bb:                                            ; preds = %if.end
  %upper_dev4 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 1
  %7 = ptrtoint ptr %upper_dev4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %upper_dev4, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %10, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %sw.bb.out.thread_crit_edge, label %if.end7

sw.bb.out.thread_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

if.end7:                                          ; preds = %sw.bb
  %call.i = tail call zeroext i1 @br_vlan_enabled(ptr noundef %8) #15
  br i1 %call.i, label %if.end2.i, label %do.body.i

do.body.i:                                        ; preds = %if.end7
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_prechangeupper_sanity_checks.__msg) #15
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.body.i.out.thread91_crit_edge, label %if.then1.i

do.body.i.out.thread91_crit_edge:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread91

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dpaa2_switch_prechangeupper_sanity_checks.__msg, ptr %5, align 4
  br label %out.thread91

if.end2.i:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i.i) #15
  %adj_list.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %adj_list.i.i, ptr %iter.i.i, align 4
  %call.i.i = call ptr @netdev_upper_get_next_dev_rcu(ptr noundef %1, ptr noundef nonnull %iter.i.i) #15
  %tobool.not7.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not7.i.i, label %if.end2.i.dpaa2_switch_prevent_bridging_with_8021q_upper.exit.thread.i_crit_edge, label %if.end2.i.for.body.i.i_crit_edge

if.end2.i.for.body.i.i_crit_edge:                 ; preds = %if.end2.i
  br label %for.body.i.i

if.end2.i.dpaa2_switch_prevent_bridging_with_8021q_upper.exit.thread.i_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_prevent_bridging_with_8021q_upper.exit.thread.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end2.i.for.body.i.i_crit_edge
  %upper_dev.08.i.i = phi ptr [ %call2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.end2.i.for.body.i.i_crit_edge ]
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %upper_dev.08.i.i, i32 0, i32 15
  %13 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %priv_flags.i.i.i, align 16
  %and.i.i.i = and i64 %14, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.inc.i.i, label %do.body6.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %call2.i.i = call ptr @netdev_upper_get_next_dev_rcu(ptr noundef %1, ptr noundef nonnull %iter.i.i) #15
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.dpaa2_switch_prevent_bridging_with_8021q_upper.exit.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.dpaa2_switch_prevent_bridging_with_8021q_upper.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_prevent_bridging_with_8021q_upper.exit.thread.i

dpaa2_switch_prevent_bridging_with_8021q_upper.exit.thread.i: ; preds = %for.inc.i.i.dpaa2_switch_prevent_bridging_with_8021q_upper.exit.thread.i_crit_edge, %if.end2.i.dpaa2_switch_prevent_bridging_with_8021q_upper.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i.i) #15
  br label %if.end10

do.body6.i:                                       ; preds = %for.body.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i.i) #15
  call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_prechangeupper_sanity_checks.__msg.62) #15
  %tobool8.not.i = icmp eq ptr %5, null
  br i1 %tobool8.not.i, label %do.body6.i.if.end10_crit_edge, label %if.then9.i

do.body6.i.if.end10_crit_edge:                    ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then9.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @dpaa2_switch_prechangeupper_sanity_checks.__msg.62, ptr %5, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9.i, %do.body6.i.if.end10_crit_edge, %dpaa2_switch_prevent_bridging_with_8021q_upper.exit.thread.i
  %linking = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  %16 = ptrtoint ptr %linking to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %linking, align 1, !range !403
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool11.not = icmp eq i8 %17, 0
  br i1 %tobool11.not, label %if.then12, label %if.end10.out.thread_crit_edge

if.end10.out.thread_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  call void @switchdev_bridge_port_unoffload(ptr noundef %1, ptr noundef null, ptr noundef nonnull @dpaa2_switch_port_switchdev_nb, ptr noundef nonnull @dpaa2_switch_port_switchdev_blocking_nb) #15
  br label %out.thread

sw.bb14:                                          ; preds = %if.end
  %upper_dev15 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 1
  %18 = ptrtoint ptr %upper_dev15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %upper_dev15, align 4
  %priv_flags.i44 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %priv_flags.i44 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %priv_flags.i44, align 16
  %and.i45 = and i64 %21, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i45)
  %tobool.i46.not = icmp eq i64 %and.i45, 0
  br i1 %tobool.i46.not, label %sw.bb14.out.thread_crit_edge, label %if.then17

sw.bb14.out.thread_crit_edge:                     ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

if.then17:                                        ; preds = %sw.bb14
  %linking18 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  %22 = ptrtoint ptr %linking18 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %linking18, align 1, !range !403
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool19.not = icmp eq i8 %23, 0
  %add.ptr.i.i51 = getelementptr i8, ptr %1, i32 2304
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.then17
  %ethsw_data.i = getelementptr i8, ptr %1, i32 2312
  %24 = ptrtoint ptr %ethsw_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ethsw_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i) #15
  %lower.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 13, i32 1
  %26 = ptrtoint ptr %lower.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lower.i, align 8
  %28 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %iter.i, align 4
  %call1.i = call ptr @netdev_lower_get_next(ptr noundef %19, ptr noundef nonnull %iter.i) #15
  %tobool.not66.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not66.i, label %if.then20.for.end.i_crit_edge, label %if.then20.for.body.i_crit_edge

if.then20.for.body.i_crit_edge:                   ; preds = %if.then20
  br label %for.body.i

if.then20.for.end.i_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then20.for.body.i_crit_edge
  %other_dev.067.i = phi ptr [ %call11.i, %for.inc.i.for.body.i_crit_edge ], [ %call1.i, %if.then20.for.body.i_crit_edge ]
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %other_dev.067.i, i32 0, i32 16
  %29 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %netdev_ops.i.i, align 8
  %cmp.i.i = icmp eq ptr %30, @dpaa2_switch_port_ops
  br i1 %cmp.i.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %ethsw_data4.i = getelementptr i8, ptr %other_dev.067.i, i32 2312
  %31 = ptrtoint ptr %ethsw_data4.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ethsw_data4.i, align 4
  %33 = ptrtoint ptr %ethsw_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ethsw_data.i, align 4
  %cmp.not.i = icmp eq ptr %32, %34
  br i1 %cmp.not.i, label %if.end.i.for.inc.i_crit_edge, label %do.body.i47

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

do.body.i47:                                      ; preds = %if.end.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_port_bridge_join.__msg) #15
  %tobool7.not.i = icmp eq ptr %5, null
  br i1 %tobool7.not.i, label %do.body.i47.dpaa2_switch_port_bridge_join.exit_crit_edge, label %if.then8.i

do.body.i47.dpaa2_switch_port_bridge_join.exit_crit_edge: ; preds = %do.body.i47
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_bridge_join.exit

if.then8.i:                                       ; preds = %do.body.i47
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @dpaa2_switch_port_bridge_join.__msg, ptr %5, align 4
  br label %dpaa2_switch_port_bridge_join.exit

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %call11.i = call ptr @netdev_lower_get_next(ptr noundef %19, ptr noundef nonnull %iter.i) #15
  %tobool.not.i48 = icmp eq ptr %call11.i, null
  br i1 %tobool.not.i48, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then20.for.end.i_crit_edge
  %call12.i = call fastcc i32 @dpaa2_switch_port_del_vlan(ptr noundef %add.ptr.i.i51, i16 noundef zeroext 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %for.end.i.dpaa2_switch_port_bridge_join.exit_crit_edge

for.end.i.dpaa2_switch_port_bridge_join.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_bridge_join.exit

if.end15.i:                                       ; preds = %for.end.i
  call fastcc void @dpaa2_switch_port_set_fdb(ptr noundef %add.ptr.i.i51, ptr noundef %19) #15
  %call17.i = call zeroext i1 @br_port_flag_is_set(ptr noundef %1, i32 noundef 32) #15
  %frombool.i = zext i1 %call17.i to i8
  %36 = ptrtoint ptr %ethsw_data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ethsw_data.i, align 4
  %..i.i = zext i1 %call17.i to i32
  %mc_io.i.i = getelementptr inbounds %struct.ethsw_core, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %mc_io.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mc_io.i.i, align 4
  %dpsw_handle.i.i = getelementptr inbounds %struct.ethsw_core, ptr %37, i32 0, i32 2
  %40 = ptrtoint ptr %dpsw_handle.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %dpsw_handle.i.i, align 8
  %idx.i.i = getelementptr i8, ptr %1, i32 2308
  %42 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %idx.i.i, align 4
  %call.i.i49 = call i32 @dpsw_if_set_learning_mode(ptr noundef %39, i32 noundef 0, i16 noundef zeroext %41, i16 noundef zeroext %43, i32 noundef %..i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i49)
  %tobool1.not.i.i = icmp eq i32 %call.i.i49, 0
  br i1 %tobool1.not.i.i, label %if.end15.i.if.end3.i.i_crit_edge, label %if.then2.i.i

if.end15.i.if.end3.i.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3.i.i

if.then2.i.i:                                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  %44 = ptrtoint ptr %add.ptr.i.i51 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i.i51, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %45, ptr noundef nonnull @.str.54, i32 noundef %call.i.i49) #18
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.then2.i.i, %if.end15.i.if.end3.i.i_crit_edge
  br i1 %call17.i, label %if.end3.i.i.dpaa2_switch_port_set_learning.exit.i_crit_edge, label %if.then5.i.i

if.end3.i.i.dpaa2_switch_port_set_learning.exit.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_set_learning.exit.i

if.then5.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = call fastcc i32 @dpaa2_switch_fdb_iterate(ptr noundef %add.ptr.i.i51, ptr noundef nonnull @dpaa2_switch_fdb_entry_fast_age, ptr noundef null) #15
  br label %dpaa2_switch_port_set_learning.exit.i

dpaa2_switch_port_set_learning.exit.i:            ; preds = %if.then5.i.i, %if.end3.i.i.dpaa2_switch_port_set_learning.exit.i_crit_edge
  %learn_ena21.i = getelementptr i8, ptr %1, i32 6426
  %46 = ptrtoint ptr %learn_ena21.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %frombool.i, ptr %learn_ena21.i, align 2
  %fdb.i = getelementptr i8, ptr %1, i32 6420
  %47 = ptrtoint ptr %fdb.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fdb.i, align 4
  %fdb_id.i = getelementptr inbounds %struct.dpaa2_switch_fdb, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %fdb_id.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %fdb_id.i, align 4
  %call23.i = call fastcc i32 @dpaa2_switch_fdb_set_egress_flood(ptr noundef %25, i16 noundef zeroext %50) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %dpaa2_switch_port_set_learning.exit.i.err_egress_flood.i_crit_edge

dpaa2_switch_port_set_learning.exit.i.err_egress_flood.i_crit_edge: ; preds = %dpaa2_switch_port_set_learning.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_egress_flood.i

if.end26.i:                                       ; preds = %dpaa2_switch_port_set_learning.exit.i
  %call27.i = call i32 @switchdev_bridge_port_offload(ptr noundef %1, ptr noundef %1, ptr noundef null, ptr noundef nonnull @dpaa2_switch_port_switchdev_nb, ptr noundef nonnull @dpaa2_switch_port_switchdev_blocking_nb, i1 noundef zeroext false, ptr noundef %5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end26.i.dpaa2_switch_port_bridge_join.exit_crit_edge, label %if.end26.i.err_egress_flood.i_crit_edge

if.end26.i.err_egress_flood.i_crit_edge:          ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_egress_flood.i

if.end26.i.dpaa2_switch_port_bridge_join.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_bridge_join.exit

err_egress_flood.i:                               ; preds = %if.end26.i.err_egress_flood.i_crit_edge, %dpaa2_switch_port_set_learning.exit.i.err_egress_flood.i_crit_edge
  %err.0.i = phi i32 [ %call23.i, %dpaa2_switch_port_set_learning.exit.i.err_egress_flood.i_crit_edge ], [ %call27.i, %if.end26.i.err_egress_flood.i_crit_edge ]
  %51 = ptrtoint ptr %ethsw_data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ethsw_data.i, align 4
  %num_ifs.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %52, i32 0, i32 3, i32 8
  %53 = ptrtoint ptr %num_ifs.i.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %num_ifs.i.i.i, align 2
  %conv.i.i.i = zext i16 %54 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %cmp10.not.i.i.i = icmp eq i16 %54, 0
  br i1 %cmp10.not.i.i.i, label %err_egress_flood.i.dpaa2_switch_port_set_fdb.exit.i_crit_edge, label %for.body.lr.ph.i.i.i

err_egress_flood.i.dpaa2_switch_port_set_fdb.exit.i_crit_edge: ; preds = %err_egress_flood.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_set_fdb.exit.i

for.body.lr.ph.i.i.i:                             ; preds = %err_egress_flood.i
  %fdbs.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %52, i32 0, i32 17
  %55 = ptrtoint ptr %fdbs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fdbs.i.i.i, align 8
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.011.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %in_use.i.i.i = getelementptr %struct.dpaa2_switch_fdb, ptr %56, i32 %i.011.i.i.i, i32 2
  %57 = ptrtoint ptr %in_use.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %in_use.i.i.i, align 2, !range !403
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i.i.i = icmp eq i8 %58, 0
  br i1 %tobool.not.i.i.i, label %dpaa2_switch_fdb_get_unused.exit.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.011.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.dpaa2_switch_port_set_fdb.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.i

for.inc.i.i.i.dpaa2_switch_port_set_fdb.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_set_fdb.exit.i

dpaa2_switch_fdb_get_unused.exit.i.i:             ; preds = %for.body.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.dpaa2_switch_fdb, ptr %56, i32 %i.011.i.i.i
  %tobool1.not.i62.i = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool1.not.i62.i, label %dpaa2_switch_fdb_get_unused.exit.i.i.dpaa2_switch_port_set_fdb.exit.i_crit_edge, label %if.end.i.i

dpaa2_switch_fdb_get_unused.exit.i.i.dpaa2_switch_port_set_fdb.exit.i_crit_edge: ; preds = %dpaa2_switch_fdb_get_unused.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_set_fdb.exit.i

if.end.i.i:                                       ; preds = %dpaa2_switch_fdb_get_unused.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %59 = ptrtoint ptr %fdb.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %arrayidx.i.i.i, ptr %fdb.i, align 4
  %60 = ptrtoint ptr %in_use.i.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %in_use.i.i.i, align 2
  br label %dpaa2_switch_port_set_fdb.exit.i

dpaa2_switch_port_set_fdb.exit.i:                 ; preds = %if.end.i.i, %dpaa2_switch_fdb_get_unused.exit.i.i.dpaa2_switch_port_set_fdb.exit.i_crit_edge, %for.inc.i.i.i.dpaa2_switch_port_set_fdb.exit.i_crit_edge, %err_egress_flood.i.dpaa2_switch_port_set_fdb.exit.i_crit_edge
  %61 = ptrtoint ptr %fdb.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fdb.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %62, align 4
  br label %dpaa2_switch_port_bridge_join.exit

dpaa2_switch_port_bridge_join.exit:               ; preds = %dpaa2_switch_port_set_fdb.exit.i, %if.end26.i.dpaa2_switch_port_bridge_join.exit_crit_edge, %for.end.i.dpaa2_switch_port_bridge_join.exit_crit_edge, %if.then8.i, %do.body.i47.dpaa2_switch_port_bridge_join.exit_crit_edge
  %retval.0.i50 = phi i32 [ %err.0.i, %dpaa2_switch_port_set_fdb.exit.i ], [ -22, %if.then8.i ], [ -22, %do.body.i47.dpaa2_switch_port_bridge_join.exit_crit_edge ], [ %call12.i, %for.end.i.dpaa2_switch_port_bridge_join.exit_crit_edge ], [ 0, %if.end26.i.dpaa2_switch_port_bridge_join.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #15
  br label %out

if.else:                                          ; preds = %if.then17
  %fdb.i52 = getelementptr i8, ptr %1, i32 6420
  %64 = ptrtoint ptr %fdb.i52 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fdb.i52, align 4
  %ethsw_data.i53 = getelementptr i8, ptr %1, i32 2312
  %66 = ptrtoint ptr %ethsw_data.i53 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ethsw_data.i53, align 4
  %call.i.i54 = tail call fastcc i32 @dpaa2_switch_fdb_iterate(ptr noundef %add.ptr.i.i51, ptr noundef nonnull @dpaa2_switch_fdb_entry_fast_age, ptr noundef null) #15
  %call1.i55 = tail call i32 @vlan_for_each(ptr noundef %1, ptr noundef nonnull @dpaa2_switch_port_clear_rxvlan, ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %tobool.not.i56 = icmp eq i32 %call1.i55, 0
  br i1 %tobool.not.i56, label %if.else.if.end.i60_crit_edge, label %if.then.i

if.else.if.end.i60_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i60

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.63, i32 noundef %call1.i55) #18
  br label %if.end.i60

if.end.i60:                                       ; preds = %if.then.i, %if.else.if.end.i60_crit_edge
  %68 = ptrtoint ptr %ethsw_data.i53 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ethsw_data.i53, align 4
  %num_ifs.i.i.i57 = getelementptr inbounds %struct.ethsw_core, ptr %69, i32 0, i32 3, i32 8
  %70 = ptrtoint ptr %num_ifs.i.i.i57 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %num_ifs.i.i.i57, align 2
  %conv.i.i.i58 = zext i16 %71 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %cmp10.not.i.i.i59 = icmp eq i16 %71, 0
  br i1 %cmp10.not.i.i.i59, label %if.end.i60.dpaa2_switch_port_set_fdb.exit.i74_crit_edge, label %for.body.lr.ph.i.i.i62

if.end.i60.dpaa2_switch_port_set_fdb.exit.i74_crit_edge: ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_set_fdb.exit.i74

for.body.lr.ph.i.i.i62:                           ; preds = %if.end.i60
  %fdbs.i.i.i61 = getelementptr inbounds %struct.ethsw_core, ptr %69, i32 0, i32 17
  %72 = ptrtoint ptr %fdbs.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fdbs.i.i.i61, align 8
  br label %for.body.i.i.i66

for.body.i.i.i66:                                 ; preds = %for.inc.i.i.i69.for.body.i.i.i66_crit_edge, %for.body.lr.ph.i.i.i62
  %i.011.i.i.i63 = phi i32 [ 0, %for.body.lr.ph.i.i.i62 ], [ %inc.i.i.i67, %for.inc.i.i.i69.for.body.i.i.i66_crit_edge ]
  %in_use.i.i.i64 = getelementptr %struct.dpaa2_switch_fdb, ptr %73, i32 %i.011.i.i.i63, i32 2
  %74 = ptrtoint ptr %in_use.i.i.i64 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %in_use.i.i.i64, align 2, !range !403
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i.i.i65 = icmp eq i8 %75, 0
  br i1 %tobool.not.i.i.i65, label %dpaa2_switch_fdb_get_unused.exit.i.i72, label %for.inc.i.i.i69

for.inc.i.i.i69:                                  ; preds = %for.body.i.i.i66
  %inc.i.i.i67 = add nuw nsw i32 %i.011.i.i.i63, 1
  %exitcond.not.i.i.i68 = icmp eq i32 %inc.i.i.i67, %conv.i.i.i58
  br i1 %exitcond.not.i.i.i68, label %for.inc.i.i.i69.dpaa2_switch_port_set_fdb.exit.i74_crit_edge, label %for.inc.i.i.i69.for.body.i.i.i66_crit_edge

for.inc.i.i.i69.for.body.i.i.i66_crit_edge:       ; preds = %for.inc.i.i.i69
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.i66

for.inc.i.i.i69.dpaa2_switch_port_set_fdb.exit.i74_crit_edge: ; preds = %for.inc.i.i.i69
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_set_fdb.exit.i74

dpaa2_switch_fdb_get_unused.exit.i.i72:           ; preds = %for.body.i.i.i66
  %arrayidx.i.i.i70 = getelementptr %struct.dpaa2_switch_fdb, ptr %73, i32 %i.011.i.i.i63
  %tobool1.not.i.i71 = icmp eq ptr %arrayidx.i.i.i70, null
  br i1 %tobool1.not.i.i71, label %dpaa2_switch_fdb_get_unused.exit.i.i72.dpaa2_switch_port_set_fdb.exit.i74_crit_edge, label %if.end.i.i73

dpaa2_switch_fdb_get_unused.exit.i.i72.dpaa2_switch_port_set_fdb.exit.i74_crit_edge: ; preds = %dpaa2_switch_fdb_get_unused.exit.i.i72
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_set_fdb.exit.i74

if.end.i.i73:                                     ; preds = %dpaa2_switch_fdb_get_unused.exit.i.i72
  call void @__sanitizer_cov_trace_pc() #17
  %76 = ptrtoint ptr %fdb.i52 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %arrayidx.i.i.i70, ptr %fdb.i52, align 4
  %77 = ptrtoint ptr %in_use.i.i.i64 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %in_use.i.i.i64, align 2
  br label %dpaa2_switch_port_set_fdb.exit.i74

dpaa2_switch_port_set_fdb.exit.i74:               ; preds = %if.end.i.i73, %dpaa2_switch_fdb_get_unused.exit.i.i72.dpaa2_switch_port_set_fdb.exit.i74_crit_edge, %for.inc.i.i.i69.dpaa2_switch_port_set_fdb.exit.i74_crit_edge, %if.end.i60.dpaa2_switch_port_set_fdb.exit.i74_crit_edge
  %78 = ptrtoint ptr %fdb.i52 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fdb.i52, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %79, align 4
  %call3.i = tail call i32 @vlan_for_each(ptr noundef %1, ptr noundef nonnull @dpaa2_switch_port_restore_rxvlan, ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %dpaa2_switch_port_set_fdb.exit.i74.if.end6.i_crit_edge, label %if.then5.i

dpaa2_switch_port_set_fdb.exit.i74.if.end6.i_crit_edge: ; preds = %dpaa2_switch_port_set_fdb.exit.i74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then5.i:                                       ; preds = %dpaa2_switch_port_set_fdb.exit.i74
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.64, i32 noundef %call3.i) #18
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %dpaa2_switch_port_set_fdb.exit.i74.if.end6.i_crit_edge
  %bcast_flood.i = getelementptr i8, ptr %1, i32 6424
  %81 = ptrtoint ptr %bcast_flood.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %bcast_flood.i, align 4
  %ucast_flood.i = getelementptr i8, ptr %1, i32 6425
  %82 = ptrtoint ptr %ucast_flood.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %ucast_flood.i, align 1
  %83 = ptrtoint ptr %fdb.i52 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %fdb.i52, align 4
  %fdb_id.i75 = getelementptr inbounds %struct.dpaa2_switch_fdb, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %fdb_id.i75 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %fdb_id.i75, align 4
  %call8.i = tail call fastcc i32 @dpaa2_switch_fdb_set_egress_flood(ptr noundef %67, i16 noundef zeroext %86) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end6.i.out.thread91_crit_edge

if.end6.i.out.thread91_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread91

if.end11.i:                                       ; preds = %if.end6.i
  %fdb_id12.i = getelementptr inbounds %struct.dpaa2_switch_fdb, ptr %65, i32 0, i32 1
  %87 = ptrtoint ptr %fdb_id12.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %fdb_id12.i, align 4
  %call13.i = tail call fastcc i32 @dpaa2_switch_fdb_set_egress_flood(ptr noundef %67, i16 noundef zeroext %88) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end11.i.out.thread91_crit_edge

if.end11.i.out.thread91_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread91

if.end16.i:                                       ; preds = %if.end11.i
  %89 = ptrtoint ptr %ethsw_data.i53 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ethsw_data.i53, align 4
  %mc_io.i.i76 = getelementptr inbounds %struct.ethsw_core, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %mc_io.i.i76 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mc_io.i.i76, align 4
  %dpsw_handle.i.i77 = getelementptr inbounds %struct.ethsw_core, ptr %90, i32 0, i32 2
  %93 = ptrtoint ptr %dpsw_handle.i.i77 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %dpsw_handle.i.i77, align 8
  %idx.i.i78 = getelementptr i8, ptr %1, i32 2308
  %95 = ptrtoint ptr %idx.i.i78 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %idx.i.i78, align 4
  %call.i51.i = tail call i32 @dpsw_if_set_learning_mode(ptr noundef %92, i32 noundef 0, i16 noundef zeroext %94, i16 noundef zeroext %96, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %tobool1.not.i52.i = icmp eq i32 %call.i51.i, 0
  br i1 %tobool1.not.i52.i, label %if.end20.i, label %dpaa2_switch_port_set_learning.exit.i80

dpaa2_switch_port_set_learning.exit.i80:          ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  %97 = ptrtoint ptr %add.ptr.i.i51 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %add.ptr.i.i51, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %98, ptr noundef nonnull @.str.54, i32 noundef %call.i51.i) #18
  %call.i.i.i79 = tail call fastcc i32 @dpaa2_switch_fdb_iterate(ptr noundef %add.ptr.i.i51, ptr noundef nonnull @dpaa2_switch_fdb_entry_fast_age, ptr noundef null) #15
  br label %out.thread91

if.end20.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i54.i = tail call fastcc i32 @dpaa2_switch_fdb_iterate(ptr noundef %add.ptr.i.i51, ptr noundef nonnull @dpaa2_switch_fdb_entry_fast_age, ptr noundef null) #15
  %learn_ena.i = getelementptr i8, ptr %1, i32 6426
  %99 = ptrtoint ptr %learn_ena.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %learn_ena.i, align 2
  %call21.i = tail call fastcc i32 @dpaa2_switch_port_add_vlan(ptr noundef %add.ptr.i.i51, i16 noundef zeroext 1, i16 noundef zeroext 6) #15
  br label %out

out.thread91:                                     ; preds = %dpaa2_switch_port_set_learning.exit.i80, %if.end11.i.out.thread91_crit_edge, %if.end6.i.out.thread91_crit_edge, %if.then1.i, %do.body.i.out.thread91_crit_edge
  %err.0.ph = phi i32 [ %call.i51.i, %dpaa2_switch_port_set_learning.exit.i80 ], [ %call13.i, %if.end11.i.out.thread91_crit_edge ], [ %call8.i, %if.end6.i.out.thread91_crit_edge ], [ -95, %do.body.i.out.thread91_crit_edge ], [ -95, %if.then1.i ]
  %sub.i94 = sub i32 1, %err.0.ph
  %or.i95 = or i32 %sub.i94, 32768
  br label %cleanup

out:                                              ; preds = %if.end20.i, %dpaa2_switch_port_bridge_join.exit
  %err.0 = phi i32 [ %retval.0.i50, %dpaa2_switch_port_bridge_join.exit ], [ %call21.i, %if.end20.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not.i82 = icmp eq i32 %err.0, 0
  %sub.i = sub i32 1, %err.0
  %or.i = or i32 %sub.i, 32768
  br i1 %tobool.not.i82, label %out.out.thread_crit_edge, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

out.out.thread_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

out.thread:                                       ; preds = %out.out.thread_crit_edge, %sw.bb14.out.thread_crit_edge, %if.then12, %if.end10.out.thread_crit_edge, %sw.bb.out.thread_crit_edge, %if.end.out.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %out.thread, %out.cleanup_crit_edge, %out.thread91, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %out.thread ], [ %or.i, %out.cleanup_crit_edge ], [ %or.i95, %out.thread91 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_vlan_enabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_upper_get_next_dev_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @switchdev_bridge_port_unoffload(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_lower_get_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dpaa2_switch_port_set_fdb(ptr nocapture noundef %port_priv, ptr noundef %bridge_dev) unnamed_addr #1 align 64 {
entry:
  %iter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter) #15
  %tobool.not = icmp eq ptr %bridge_dev, null
  br i1 %tobool.not, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %ethsw_data = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 2
  %0 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethsw_data, align 4
  %num_ifs.i = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %num_ifs.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_ifs.i, align 2
  %conv.i = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp10.not.i = icmp eq i16 %3, 0
  br i1 %cmp10.not.i, label %if.then.if.then2_crit_edge, label %for.body.lr.ph.i

if.then.if.then2_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then2

for.body.lr.ph.i:                                 ; preds = %if.then
  %fdbs.i = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %fdbs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fdbs.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %in_use.i = getelementptr %struct.dpaa2_switch_fdb, ptr %5, i32 %i.011.i, i32 2
  %6 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_use.i, align 2, !range !403
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %dpaa2_switch_fdb_get_unused.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.if.then2_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.if.then2_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then2

dpaa2_switch_fdb_get_unused.exit:                 ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.dpaa2_switch_fdb, ptr %5, i32 %i.011.i
  %tobool1.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool1.not, label %dpaa2_switch_fdb_get_unused.exit.if.then2_crit_edge, label %if.end

dpaa2_switch_fdb_get_unused.exit.if.then2_crit_edge: ; preds = %dpaa2_switch_fdb_get_unused.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then2

if.then2:                                         ; preds = %dpaa2_switch_fdb_get_unused.exit.if.then2_crit_edge, %for.inc.i.if.then2_crit_edge, %if.then.if.then2_crit_edge
  %fdb3 = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 8
  br label %cleanup

if.end:                                           ; preds = %dpaa2_switch_fdb_get_unused.exit
  call void @__sanitizer_cov_trace_pc() #17
  %fdb5 = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 8
  %8 = ptrtoint ptr %fdb5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx.i, ptr %fdb5, align 4
  %9 = ptrtoint ptr %in_use.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %in_use.i, align 2
  br label %cleanup

if.end9:                                          ; preds = %entry
  %call10 = tail call i32 @rtnl_is_locked() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.rhs, label %if.end9.if.end42_crit_edge

if.end9.if.end42_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

land.rhs:                                         ; preds = %if.end9
  %.b1 = load i1, ptr @dpaa2_switch_port_set_fdb.__already_done, align 1
  br i1 %.b1, label %land.rhs.if.end42_crit_edge, label %if.then20, !prof !400

land.rhs.if.end42_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

if.then20:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @dpaa2_switch_port_set_fdb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 89, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 89) #15
  br label %if.end42

if.end42:                                         ; preds = %if.then20, %land.rhs.if.end42_crit_edge, %if.end9.if.end42_crit_edge
  %lower = getelementptr inbounds %struct.net_device, ptr %bridge_dev, i32 0, i32 13, i32 1
  %10 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lower, align 8
  %12 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %iter, align 4
  %call50 = call ptr @netdev_lower_get_next(ptr noundef nonnull %bridge_dev, ptr noundef nonnull %iter) #15
  %tobool51.not8 = icmp eq ptr %call50, null
  br i1 %tobool51.not8, label %if.end42.if.end67_crit_edge, label %if.end42.for.body_crit_edge

if.end42.for.body_crit_edge:                      ; preds = %if.end42
  br label %for.body

if.end42.if.end67_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end42.for.body_crit_edge
  %other_dev.09 = phi ptr [ %call58, %for.inc.for.body_crit_edge ], [ %call50, %if.end42.for.body_crit_edge ]
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %other_dev.09, i32 0, i32 16
  %13 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp eq ptr %14, @dpaa2_switch_port_ops
  br i1 %cmp.i, label %if.end54, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end54:                                         ; preds = %for.body
  %15 = ptrtoint ptr %port_priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port_priv, align 4
  %cmp = icmp eq ptr %other_dev.09, %16
  br i1 %cmp, label %if.end54.for.inc_crit_edge, label %for.end

if.end54.for.inc_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.inc:                                          ; preds = %if.end54.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call58 = call ptr @netdev_lower_get_next(ptr noundef nonnull %bridge_dev, ptr noundef nonnull %iter) #15
  %tobool51.not = icmp eq ptr %call58, null
  br i1 %tobool51.not, label %for.inc.if.end67_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.if.end67_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67

for.end:                                          ; preds = %if.end54
  %add.ptr.i = getelementptr i8, ptr %other_dev.09, i32 2304
  %tobool59.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool59.not, label %for.end.if.end67_crit_edge, label %if.then60

for.end.if.end67_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67

if.then60:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %fdb61 = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 8
  %17 = ptrtoint ptr %fdb61 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fdb61, align 4
  %in_use62 = getelementptr inbounds %struct.dpaa2_switch_fdb, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %in_use62 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %in_use62, align 2
  %20 = load ptr, ptr %fdb61, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %20, align 4
  %fdb65 = getelementptr i8, ptr %other_dev.09, i32 6420
  %22 = ptrtoint ptr %fdb65 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fdb65, align 4
  store ptr %23, ptr %fdb61, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then60, %for.end.if.end67_crit_edge, %for.inc.if.end67_crit_edge, %if.end42.if.end67_crit_edge
  %fdb68 = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 8
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.end, %if.then2
  %fdb68.sink = phi ptr [ %fdb68, %if.end67 ], [ %fdb5, %if.end ], [ %fdb3, %if.then2 ]
  %bridge_dev.sink = phi ptr [ %bridge_dev, %if.end67 ], [ null, %if.end ], [ null, %if.then2 ]
  %24 = ptrtoint ptr %fdb68.sink to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fdb68.sink, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %bridge_dev.sink, ptr %25, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_port_flag_is_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_bridge_port_offload(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_port_clear_rxvlan(ptr noundef %vdev, i32 noundef %vid, ptr nocapture noundef %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vdev, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call zeroext i16 @vlan_dev_vlan_proto(ptr noundef nonnull %vdev) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %arg, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i.i.i, align 16
  %and.i.i.i = and i64 %1, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.i, label %if.end.dpaa2_switch_port_vlan_kill.exit_crit_edge

if.end.dpaa2_switch_port_vlan_kill.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_vlan_kill.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %conv = trunc i32 %vid to i16
  %add.ptr.i.i.i = getelementptr i8, ptr %arg, i32 2304
  %call2.i.i = tail call fastcc i32 @dpaa2_switch_port_del_vlan(ptr noundef %add.ptr.i.i.i, i16 noundef zeroext %conv) #15
  br label %dpaa2_switch_port_vlan_kill.exit

dpaa2_switch_port_vlan_kill.exit:                 ; preds = %if.end.i.i, %if.end.dpaa2_switch_port_vlan_kill.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call2.i.i, %if.end.i.i ], [ -95, %if.end.dpaa2_switch_port_vlan_kill.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_port_restore_rxvlan(ptr noundef %vdev, i32 noundef %vid, ptr noundef %arg) #1 align 64 {
entry:
  %vlan.i = alloca %struct.switchdev_obj_port_vlan, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vdev, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call zeroext i16 @vlan_dev_vlan_proto(ptr noundef nonnull %vdev) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv = trunc i32 %vid to i16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vlan.i) #15
  %0 = getelementptr inbounds %struct.switchdev_obj, ptr %vlan.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.switchdev_obj, ptr %vlan.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.switchdev_obj, ptr %vlan.i, i32 0, i32 3
  %3 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan.i, i32 0, i32 2
  %4 = ptrtoint ptr %vlan.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %vlan.i, align 8
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arg, ptr %0, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %1, align 4
  %7 = call ptr @memset(ptr %2, i32 0, i32 14)
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %3, align 2
  %call.i = call i32 @dpaa2_switch_port_vlans_add(ptr noundef %arg, ptr noundef nonnull %vlan.i) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vlan.i) #15
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vlan_dev_vlan_proto(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_probe(ptr noundef %sw_dev) #1 align 64 {
entry:
  %acl_entry.i.i.i = alloca %struct.dpaa2_switch_acl_entry, align 8
  %acl_if_cfg.i.i.i = alloca %struct.dpsw_acl_if_cfg, align 2
  %vlan.i.i = alloca %struct.switchdev_obj_port_vlan, align 4
  %fdb_cfg.i.i = alloca %struct.dpsw_fdb_cfg, align 4
  %dpsw_if_attr.i.i = alloca %struct.dpsw_if_attr, align 4
  %acl_cfg.i.i = alloca %struct.dpsw_acl_cfg, align 2
  %fdb_id.i.i = alloca i16, align 2
  %acl_tbl_id.i.i = alloca i16, align 2
  %queue_cfg.i.i.i = alloca %struct.dpsw_ctrl_if_queue_cfg, align 8
  %dpsw_ctrl_if_pools_cfg.i.i.i = alloca %struct.dpsw_ctrl_if_pools_cfg, align 4
  %dpbp_dev.i.i.i = alloca ptr, align 4
  %dpbp_attrs.i.i.i = alloca %struct.dpbp_attr, align 8
  %ctrl_if_attr.i.i.i = alloca %struct.dpsw_ctrl_if_attr, align 4
  %vcfg.i = alloca %struct.dpsw_vlan_if_cfg, align 2
  %tci_cfg.i = alloca %struct.dpsw_tci_cfg, align 4
  %stp_cfg.i = alloca %struct.dpsw_stp_cfg, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4808) #21
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sw_dev, ptr %call7.i.i, align 8
  %call3 = tail call ptr @iommu_get_domain_for_dev(ptr noundef %sw_dev) #15
  %iommu_domain = getelementptr inbounds %struct.ethsw_core, ptr %call7.i.i, i32 0, i32 9
  %2 = ptrtoint ptr %iommu_domain to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %iommu_domain, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %sw_dev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %call7.i.i, i32 0, i32 1
  %call4 = tail call i32 @fsl_mc_portal_allocate(ptr noundef %sw_dev, i16 noundef zeroext 1, ptr noundef %mc_io) #15
  %4 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %call4, label %do.end [
    i32 0, label %if.end9
    i32 -6, label %if.end.err_free_drvdata_crit_edge
  ]

if.end.err_free_drvdata_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_free_drvdata

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %sw_dev, ptr noundef nonnull @.str.66, i32 noundef %call4) #18
  br label %err_free_drvdata

if.end9:                                          ; preds = %if.end
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 134, ptr nonnull %vcfg.i) #15
  %7 = call ptr @memset(ptr %vcfg.i, i32 0, i32 134)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tci_cfg.i) #15
  %8 = ptrtoint ptr %tci_cfg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tci_cfg.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stp_cfg.i) #15
  %9 = ptrtoint ptr %stp_cfg.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %stp_cfg.i, align 8, !annotation !402
  %id.i = getelementptr inbounds %struct.fsl_mc_device, ptr %sw_dev, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 8
  %dev_id.i = getelementptr inbounds %struct.ethsw_core, ptr %6, i32 0, i32 7
  %12 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %dev_id.i, align 8
  %mc_io.i = getelementptr inbounds %struct.ethsw_core, ptr %6, i32 0, i32 1
  %13 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mc_io.i, align 4
  %dpsw_handle.i = getelementptr inbounds %struct.ethsw_core, ptr %6, i32 0, i32 2
  %call3.i = tail call i32 @dpsw_open(ptr noundef %14, i32 noundef 0, i32 noundef %11, ptr noundef %dpsw_handle.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dpaa2_switch_init.exit.thread260

dpaa2_switch_init.exit.thread260:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %sw_dev, ptr noundef nonnull @.str.71, i32 noundef %call3.i) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stp_cfg.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tci_cfg.i) #15
  call void @llvm.lifetime.end.p0(i64 134, ptr nonnull %vcfg.i) #15
  br label %err_free_cmdport

if.end.i:                                         ; preds = %if.end9
  %15 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mc_io.i, align 4
  %17 = ptrtoint ptr %dpsw_handle.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %dpsw_handle.i, align 8
  %sw_attr.i = getelementptr inbounds %struct.ethsw_core, ptr %6, i32 0, i32 3
  %call6.i = tail call i32 @dpsw_get_attributes(ptr noundef %16, i32 noundef 0, i16 noundef zeroext %18, ptr noundef %sw_attr.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end12.i, label %do.end11.i

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %sw_dev, ptr noundef nonnull @.str, i32 noundef %call6.i) #18
  br label %dpaa2_switch_init.exit

if.end12.i:                                       ; preds = %if.end.i
  %19 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mc_io.i, align 4
  %major.i = getelementptr inbounds %struct.ethsw_core, ptr %6, i32 0, i32 4
  %minor.i = getelementptr inbounds %struct.ethsw_core, ptr %6, i32 0, i32 5
  %call14.i = tail call i32 @dpsw_get_api_version(ptr noundef %20, i32 noundef 0, ptr noundef %major.i, ptr noundef %minor.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end20.i, label %do.end19.i

do.end19.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %sw_dev, ptr noundef nonnull @.str.76, i32 noundef %call14.i) #18
  br label %dpaa2_switch_init.exit

if.end20.i:                                       ; preds = %if.end12.i
  %21 = ptrtoint ptr %major.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %major.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %22)
  %cmp.i = icmp ult i16 %22, 8
  br i1 %cmp.i, label %if.end20.i.do.end34.i_crit_edge, label %lor.lhs.false.i

if.end20.i.do.end34.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end34.i

lor.lhs.false.i:                                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %22)
  %cmp25.i = icmp eq i16 %22, 8
  br i1 %cmp25.i, label %land.lhs.true.i, label %lor.lhs.false.i.if.end39.i_crit_edge

lor.lhs.false.i.if.end39.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %23 = ptrtoint ptr %minor.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %minor.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %24)
  %cmp29.i = icmp ult i16 %24, 9
  br i1 %cmp29.i, label %land.lhs.true.i.do.end34.i_crit_edge, label %land.lhs.true.i.if.end39.i_crit_edge

land.lhs.true.i.if.end39.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39.i

land.lhs.true.i.do.end34.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end34.i

do.end34.i:                                       ; preds = %land.lhs.true.i.do.end34.i_crit_edge, %if.end20.i.do.end34.i_crit_edge
  %conv36.i = zext i16 %22 to i32
  %25 = ptrtoint ptr %minor.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %minor.i, align 2
  %conv38.i = zext i16 %26 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %sw_dev, ptr noundef nonnull @.str.79, i32 noundef %conv36.i, i32 noundef %conv38.i) #18
  br label %dpaa2_switch_init.exit

if.end39.i:                                       ; preds = %land.lhs.true.i.if.end39.i_crit_edge, %lor.lhs.false.i.if.end39.i_crit_edge
  %options.i.i = getelementptr inbounds %struct.ethsw_core, ptr %6, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %options.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %options.i.i, align 8
  %and.i.i = and i64 %28, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end39.i.dpaa2_switch_supports_cpu_traffic.exit.i_crit_edge

if.end39.i.dpaa2_switch_supports_cpu_traffic.exit.i_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_supports_cpu_traffic.exit.i

if.end.i.i:                                       ; preds = %if.end39.i
  %flooding_cfg.i.i = getelementptr inbounds %struct.ethsw_core, ptr %6, i32 0, i32 3, i32 13
  %29 = ptrtoint ptr %flooding_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flooding_cfg.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.not.i.i = icmp eq i32 %30, 1
  br i1 %cmp.not.i.i, label %if.end6.i.i, label %if.end.i.i.dpaa2_switch_supports_cpu_traffic.exit.i_crit_edge

if.end.i.i.dpaa2_switch_supports_cpu_traffic.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_supports_cpu_traffic.exit.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %broadcast_cfg.i.i = getelementptr inbounds %struct.ethsw_core, ptr %6, i32 0, i32 3, i32 14
  %31 = ptrtoint ptr %broadcast_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %broadcast_cfg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp8.not.i.i = icmp eq i32 %32, 1
  br i1 %cmp8.not.i.i, label %if.end13.i.i, label %if.end6.i.i.dpaa2_switch_supports_cpu_traffic.exit.i_crit_edge

if.end6.i.i.dpaa2_switch_supports_cpu_traffic.exit.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_supports_cpu_traffic.exit.i

if.end13.i.i:                                     ; preds = %if.end6.i.i
  %max_fdbs.i.i = getelementptr inbounds %struct.ethsw_core, ptr %6, i32 0, i32 3, i32 4
  %33 = ptrtoint ptr %max_fdbs.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %max_fdbs.i.i, align 1
  %num_ifs.i.i = getelementptr inbounds %struct.ethsw_core, ptr %6, i32 0, i32 3, i32 8
  %35 = ptrtoint ptr %num_ifs.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %num_ifs.i.i, align 2
  %37 = zext i8 %34 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %37)
  %cmp17.i.i = icmp ugt i16 %36, %37
  br i1 %cmp17.i.i, label %if.end13.i.i.dpaa2_switch_supports_cpu_traffic.exit.i_crit_edge, label %if.end42.i

if.end13.i.i.dpaa2_switch_supports_cpu_traffic.exit.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_supports_cpu_traffic.exit.i

dpaa2_switch_supports_cpu_traffic.exit.i:         ; preds = %if.end13.i.i.dpaa2_switch_supports_cpu_traffic.exit.i_crit_edge, %if.end6.i.i.dpaa2_switch_supports_cpu_traffic.exit.i_crit_edge, %if.end.i.i.dpaa2_switch_supports_cpu_traffic.exit.i_crit_edge, %if.end39.i.dpaa2_switch_supports_cpu_traffic.exit.i_crit_edge
  %.str.109.sink.i.i = phi ptr [ @.str.99, %if.end39.i.dpaa2_switch_supports_cpu_traffic.exit.i_crit_edge ], [ @.str.103, %if.end.i.i.dpaa2_switch_supports_cpu_traffic.exit.i_crit_edge ], [ @.str.106, %if.end6.i.i.dpaa2_switch_supports_cpu_traffic.exit.i_crit_edge ], [ @.str.109, %if.end13.i.i.dpaa2_switch_supports_cpu_traffic.exit.i_crit_edge ]
  %38 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull %.str.109.sink.i.i) #18
  br label %dpaa2_switch_init.exit

if.end42.i:                                       ; preds = %if.end13.i.i
  %features.i.i = getelementptr inbounds %struct.ethsw_core, ptr %6, i32 0, i32 6
  %40 = ptrtoint ptr %features.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %features.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %22)
  %cmp.i.i = icmp ugt i16 %22, 8
  br i1 %cmp.i.i, label %if.end42.i.if.then.i.i_crit_edge, label %land.lhs.true.i.i

if.end42.i.if.then.i.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

land.lhs.true.i.i:                                ; preds = %if.end42.i
  %41 = ptrtoint ptr %minor.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %minor.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %42)
  %cmp7.i.i = icmp ugt i16 %42, 5
  br i1 %cmp7.i.i, label %land.lhs.true.i.i.if.then.i.i_crit_edge, label %land.lhs.true.i.i.dpaa2_switch_detect_features.exit.i_crit_edge

land.lhs.true.i.i.dpaa2_switch_detect_features.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_detect_features.exit.i

land.lhs.true.i.i.if.then.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i.if.then.i.i_crit_edge, %if.end42.i.if.then.i.i_crit_edge
  %43 = ptrtoint ptr %features.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %features.i.i, align 4
  br label %dpaa2_switch_detect_features.exit.i

dpaa2_switch_detect_features.exit.i:              ; preds = %if.then.i.i, %land.lhs.true.i.i.dpaa2_switch_detect_features.exit.i_crit_edge
  %44 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mc_io.i, align 4
  %46 = ptrtoint ptr %dpsw_handle.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %dpsw_handle.i, align 8
  %call45.i = tail call i32 @dpsw_reset(ptr noundef %45, i32 noundef 0, i16 noundef zeroext %47) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.end51.i, label %do.end50.i

do.end50.i:                                       ; preds = %dpaa2_switch_detect_features.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %sw_dev, ptr noundef nonnull @.str.82, i32 noundef %call45.i) #18
  br label %dpaa2_switch_init.exit

if.end51.i:                                       ; preds = %dpaa2_switch_detect_features.exit.i
  %48 = ptrtoint ptr %stp_cfg.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 1, ptr %stp_cfg.i, align 8
  %state.i = getelementptr inbounds %struct.dpsw_stp_cfg, ptr %stp_cfg.i, i32 0, i32 1
  %49 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3, ptr %state.i, align 4
  %50 = ptrtoint ptr %num_ifs.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %num_ifs.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp55246.not.i = icmp eq i16 %51, 0
  br i1 %cmp55246.not.i, label %if.end51.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end51.i.for.end.i_crit_edge:                   ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end51.i
  %if_id.i = getelementptr inbounds %struct.dpsw_vlan_if_cfg, ptr %vcfg.i, i32 0, i32 2
  %vlan_id86.i = getelementptr inbounds %struct.dpsw_tci_cfg, ptr %tci_cfg.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0247.i = phi i16 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %52 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mc_io.i, align 4
  %54 = ptrtoint ptr %dpsw_handle.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %dpsw_handle.i, align 8
  %call59.i = call i32 @dpsw_if_disable(ptr noundef %53, i32 noundef 0, i16 noundef zeroext %55, i16 noundef zeroext %i.0247.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %if.end65.i, label %do.end64.i

do.end64.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %sw_dev, ptr noundef nonnull @.str.4, i32 noundef %call59.i) #18
  br label %dpaa2_switch_init.exit

if.end65.i:                                       ; preds = %for.body.i
  %56 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mc_io.i, align 4
  %58 = ptrtoint ptr %dpsw_handle.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %dpsw_handle.i, align 8
  %call68.i = call i32 @dpsw_if_set_stp(ptr noundef %57, i32 noundef 0, i16 noundef zeroext %59, i16 noundef zeroext %i.0247.i, ptr noundef nonnull %stp_cfg.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool69.not.i = icmp eq i32 %call68.i, 0
  br i1 %tobool69.not.i, label %if.end75.i, label %do.end73.i

do.end73.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv52.le.i = zext i16 %i.0247.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %sw_dev, ptr noundef nonnull @.str.87, i32 noundef %call68.i, i32 noundef %conv52.le.i) #18
  br label %dpaa2_switch_init.exit

if.end75.i:                                       ; preds = %if.end65.i
  %60 = ptrtoint ptr %vcfg.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %vcfg.i, align 2
  %61 = ptrtoint ptr %if_id.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %i.0247.i, ptr %if_id.i, align 2
  %62 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mc_io.i, align 4
  %64 = ptrtoint ptr %dpsw_handle.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %dpsw_handle.i, align 8
  %call79.i = call i32 @dpsw_vlan_remove_if_untagged(ptr noundef %63, i32 noundef 0, i16 noundef zeroext %65, i16 noundef zeroext 1, ptr noundef nonnull %vcfg.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool80.not.i, label %if.end85.i, label %do.end84.i

do.end84.i:                                       ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %sw_dev, ptr noundef nonnull @.str.37, i32 noundef %call79.i) #18
  br label %dpaa2_switch_init.exit

if.end85.i:                                       ; preds = %if.end75.i
  %66 = ptrtoint ptr %vlan_id86.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 4095, ptr %vlan_id86.i, align 2
  %67 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mc_io.i, align 4
  %69 = ptrtoint ptr %dpsw_handle.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %dpsw_handle.i, align 8
  %call89.i = call i32 @dpsw_if_set_tci(ptr noundef %68, i32 noundef 0, i16 noundef zeroext %70, i16 noundef zeroext %i.0247.i, ptr noundef nonnull %tci_cfg.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i)
  %tobool90.not.i = icmp eq i32 %call89.i, 0
  br i1 %tobool90.not.i, label %if.end95.i, label %do.end94.i

do.end94.i:                                       ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %sw_dev, ptr noundef nonnull @.str.34, i32 noundef %call89.i) #18
  br label %dpaa2_switch_init.exit

if.end95.i:                                       ; preds = %if.end85.i
  %71 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mc_io.i, align 4
  %73 = ptrtoint ptr %dpsw_handle.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %dpsw_handle.i, align 8
  %call98.i = call i32 @dpsw_vlan_remove_if(ptr noundef %72, i32 noundef 0, i16 noundef zeroext %74, i16 noundef zeroext 1, ptr noundef nonnull %vcfg.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i)
  %tobool99.not.i = icmp eq i32 %call98.i, 0
  br i1 %tobool99.not.i, label %for.inc.i, label %do.end103.i

do.end103.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %sw_dev, ptr noundef nonnull @.str.38, i32 noundef %call98.i) #18
  br label %dpaa2_switch_init.exit

for.inc.i:                                        ; preds = %if.end95.i
  %inc.i = add nuw i16 %i.0247.i, 1
  %75 = ptrtoint ptr %num_ifs.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %num_ifs.i.i, align 2
  %cmp55.i = icmp ult i16 %inc.i, %76
  br i1 %cmp55.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end51.i.for.end.i_crit_edge
  %77 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mc_io.i, align 4
  %79 = ptrtoint ptr %dpsw_handle.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %dpsw_handle.i, align 8
  %call107.i = call i32 @dpsw_vlan_remove(ptr noundef %78, i32 noundef 0, i16 noundef zeroext %80, i16 noundef zeroext 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107.i)
  %tobool108.not.i = icmp eq i32 %call107.i, 0
  br i1 %tobool108.not.i, label %if.end113.i, label %do.end112.i

do.end112.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %sw_dev, ptr noundef nonnull @.str.39, i32 noundef %call107.i) #18
  br label %dpaa2_switch_init.exit

if.end113.i:                                      ; preds = %for.end.i
  %81 = ptrtoint ptr %sw_attr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sw_attr.i, align 8
  %call116.i = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.97, i32 noundef 655370, i32 noundef 1, ptr noundef nonnull @.str.98, i32 noundef %82) #15
  %workqueue.i = getelementptr inbounds %struct.ethsw_core, ptr %6, i32 0, i32 11
  %83 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call116.i, ptr %workqueue.i, align 4
  %tobool118.not.i = icmp eq ptr %call116.i, null
  br i1 %tobool118.not.i, label %if.end113.i.dpaa2_switch_init.exit_crit_edge, label %if.end120.i

if.end113.i.dpaa2_switch_init.exit_crit_edge:     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_init.exit

if.end120.i:                                      ; preds = %if.end113.i
  %84 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mc_io.i, align 4
  %86 = ptrtoint ptr %dpsw_handle.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %dpsw_handle.i, align 8
  %call123.i = call i32 @dpsw_fdb_remove(ptr noundef %85, i32 noundef 0, i16 noundef zeroext %87, i16 noundef zeroext 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123.i)
  %tobool124.not.i = icmp eq i32 %call123.i, 0
  br i1 %tobool124.not.i, label %if.end126.i, label %if.end120.i.err_destroy_ordered_workqueue.i_crit_edge

if.end120.i.err_destroy_ordered_workqueue.i_crit_edge: ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_destroy_ordered_workqueue.i

if.end126.i:                                      ; preds = %if.end120.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ctrl_if_attr.i.i.i) #15
  %88 = ptrtoint ptr %ctrl_if_attr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %ctrl_if_attr.i.i.i, align 4, !annotation !402
  %89 = getelementptr inbounds %struct.dpsw_ctrl_if_attr, ptr %ctrl_if_attr.i.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %89, align 4, !annotation !402
  %91 = getelementptr inbounds %struct.dpsw_ctrl_if_attr, ptr %ctrl_if_attr.i.i.i, i32 0, i32 2
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -1, ptr %91, align 4, !annotation !402
  %93 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %6, align 8
  %95 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mc_io.i, align 4
  %97 = ptrtoint ptr %dpsw_handle.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %dpsw_handle.i, align 8
  %call.i.i.i = call i32 @dpsw_ctrl_if_get_attributes(ptr noundef %96, i32 noundef 0, i16 noundef zeroext %98, ptr noundef nonnull %ctrl_if_attr.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i223.i, label %dpaa2_switch_setup_fqs.exit.i.i

dpaa2_switch_setup_fqs.exit.i.i:                  ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.113, i32 noundef %call.i.i.i) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ctrl_if_attr.i.i.i) #15
  br label %err_destroy_ordered_workqueue.i

if.end.i223.i:                                    ; preds = %if.end126.i
  %99 = ptrtoint ptr %ctrl_if_attr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ctrl_if_attr.i.i.i, align 4
  %fq.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %6, i32 0, i32 12
  %fqid.i.i.i = getelementptr %struct.ethsw_core, ptr %6, i32 0, i32 12, i32 0, i32 5
  %101 = ptrtoint ptr %fqid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %fqid.i.i.i, align 8
  %102 = ptrtoint ptr %fq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %6, ptr %fq.i.i.i, align 8
  %type.i.i.i = getelementptr %struct.ethsw_core, ptr %6, i32 0, i32 12, i32 0, i32 1
  %103 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %type.i.i.i, align 4
  %104 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %91, align 4
  %arrayidx8.i.i.i = getelementptr %struct.ethsw_core, ptr %6, i32 0, i32 12, i32 1
  %fqid9.i.i.i = getelementptr %struct.ethsw_core, ptr %6, i32 0, i32 12, i32 1, i32 5
  %106 = ptrtoint ptr %fqid9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %fqid9.i.i.i, align 8
  %107 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %6, ptr %arrayidx8.i.i.i, align 8
  %type16.i.i.i = getelementptr %struct.ethsw_core, ptr %6, i32 0, i32 12, i32 1, i32 1
  %108 = ptrtoint ptr %type16.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1, ptr %type16.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ctrl_if_attr.i.i.i) #15
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %dpsw_ctrl_if_pools_cfg.i.i.i) #15
  %109 = call ptr @memset(ptr %dpsw_ctrl_if_pools_cfg.i.i.i, i32 0, i32 100)
  %110 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dpbp_dev.i.i.i) #15
  %112 = ptrtoint ptr %dpbp_dev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr inttoptr (i32 -1 to ptr), ptr %dpbp_dev.i.i.i, align 4, !annotation !402
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dpbp_attrs.i.i.i) #15
  %113 = ptrtoint ptr %dpbp_attrs.i.i.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 -1, ptr %dpbp_attrs.i.i.i, align 8, !annotation !402
  %call.i41.i.i = call i32 @fsl_mc_object_allocate(ptr noundef %111, i32 noundef 1, ptr noundef nonnull %dpbp_dev.i.i.i) #15
  %114 = zext i32 %call.i41.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.214)
  switch i32 %call.i41.i.i, label %dpaa2_switch_ctrl_if_setup.exit.i [
    i32 0, label %if.end3.i.i.i
    i32 -6, label %if.end.i223.i.dpaa2_switch_setup_dpbp.exit.thread.i.i_crit_edge
  ]

if.end.i223.i.dpaa2_switch_setup_dpbp.exit.thread.i.i_crit_edge: ; preds = %if.end.i223.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_setup_dpbp.exit.thread.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i223.i
  %115 = ptrtoint ptr %dpbp_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dpbp_dev.i.i.i, align 4
  %dpbp_dev4.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %6, i32 0, i32 13
  %117 = ptrtoint ptr %dpbp_dev4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %116, ptr %dpbp_dev4.i.i.i, align 8
  %118 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mc_io.i, align 4
  %id.i.i.i = getelementptr inbounds %struct.fsl_mc_device, ptr %116, i32 0, i32 6, i32 1
  %120 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %id.i.i.i, align 8
  %mc_handle.i.i.i = getelementptr inbounds %struct.fsl_mc_device, ptr %116, i32 0, i32 4
  %call5.i.i.i = call i32 @dpbp_open(ptr noundef %119, i32 noundef 0, i32 noundef %121, ptr noundef %mc_handle.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.end11.i.i.i, label %do.end10.i.i.i

do.end10.i.i.i:                                   ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.118) #18
  br label %err_open.i.i.i

if.end11.i.i.i:                                   ; preds = %if.end3.i.i.i
  %122 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mc_io.i, align 4
  %124 = ptrtoint ptr %dpbp_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dpbp_dev.i.i.i, align 4
  %mc_handle13.i.i.i = getelementptr inbounds %struct.fsl_mc_device, ptr %125, i32 0, i32 4
  %126 = ptrtoint ptr %mc_handle13.i.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %mc_handle13.i.i.i, align 8
  %call14.i.i.i = call i32 @dpbp_reset(ptr noundef %123, i32 noundef 0, i16 noundef zeroext %127) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i.i)
  %tobool15.not.i.i.i = icmp eq i32 %call14.i.i.i, 0
  br i1 %tobool15.not.i.i.i, label %if.end20.i.i.i, label %do.end19.i.i.i

do.end19.i.i.i:                                   ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.121) #18
  br label %err_reset.i.i.i

if.end20.i.i.i:                                   ; preds = %if.end11.i.i.i
  %128 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mc_io.i, align 4
  %130 = ptrtoint ptr %dpbp_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dpbp_dev.i.i.i, align 4
  %mc_handle22.i.i.i = getelementptr inbounds %struct.fsl_mc_device, ptr %131, i32 0, i32 4
  %132 = ptrtoint ptr %mc_handle22.i.i.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %mc_handle22.i.i.i, align 8
  %call23.i.i.i = call i32 @dpbp_enable(ptr noundef %129, i32 noundef 0, i16 noundef zeroext %133) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %call23.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.end29.i.i.i, label %do.end28.i.i.i

do.end28.i.i.i:                                   ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.124) #18
  br label %err_reset.i.i.i

if.end29.i.i.i:                                   ; preds = %if.end20.i.i.i
  %134 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mc_io.i, align 4
  %136 = ptrtoint ptr %dpbp_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dpbp_dev.i.i.i, align 4
  %mc_handle31.i.i.i = getelementptr inbounds %struct.fsl_mc_device, ptr %137, i32 0, i32 4
  %138 = ptrtoint ptr %mc_handle31.i.i.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %mc_handle31.i.i.i, align 8
  %call32.i.i.i = call i32 @dpbp_get_attributes(ptr noundef %135, i32 noundef 0, i16 noundef zeroext %139, ptr noundef nonnull %dpbp_attrs.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i.i)
  %tobool33.not.i.i.i = icmp eq i32 %call32.i.i.i, 0
  br i1 %tobool33.not.i.i.i, label %if.end38.i.i.i, label %if.end29.i.i.i.err_get_attr.i.i.i_crit_edge

if.end29.i.i.i.err_get_attr.i.i.i_crit_edge:      ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_get_attr.i.i.i

if.end38.i.i.i:                                   ; preds = %if.end29.i.i.i
  %140 = ptrtoint ptr %dpsw_ctrl_if_pools_cfg.i.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 1, ptr %dpsw_ctrl_if_pools_cfg.i.i.i, align 4
  %141 = ptrtoint ptr %dpbp_attrs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %dpbp_attrs.i.i.i, align 8
  %pools.i.i.i = getelementptr inbounds %struct.dpsw_ctrl_if_pools_cfg, ptr %dpsw_ctrl_if_pools_cfg.i.i.i, i32 0, i32 1
  %143 = ptrtoint ptr %pools.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %pools.i.i.i, align 4
  %buffer_size.i.i.i = getelementptr inbounds %struct.dpsw_ctrl_if_pools_cfg, ptr %dpsw_ctrl_if_pools_cfg.i.i.i, i32 0, i32 1, i32 0, i32 1
  %144 = ptrtoint ptr %buffer_size.i.i.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 3840, ptr %buffer_size.i.i.i, align 4
  %backup_pool.i.i.i = getelementptr inbounds %struct.dpsw_ctrl_if_pools_cfg, ptr %dpsw_ctrl_if_pools_cfg.i.i.i, i32 0, i32 1, i32 0, i32 2
  %145 = ptrtoint ptr %backup_pool.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %backup_pool.i.i.i, align 4
  %146 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mc_io.i, align 4
  %148 = ptrtoint ptr %dpsw_handle.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %dpsw_handle.i, align 8
  %call45.i.i.i = call i32 @dpsw_ctrl_if_set_pools(ptr noundef %147, i32 noundef 0, i16 noundef zeroext %149, ptr noundef nonnull %dpsw_ctrl_if_pools_cfg.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i.i.i)
  %tobool46.not.i.i.i = icmp eq i32 %call45.i.i.i, 0
  br i1 %tobool46.not.i.i.i, label %dpaa2_switch_setup_dpbp.exit.thread68.i.i, label %if.end38.i.i.i.err_get_attr.i.i.i_crit_edge

if.end38.i.i.i.err_get_attr.i.i.i_crit_edge:      ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_get_attr.i.i.i

dpaa2_switch_setup_dpbp.exit.thread68.i.i:        ; preds = %if.end38.i.i.i
  %150 = ptrtoint ptr %dpbp_attrs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %dpbp_attrs.i.i.i, align 8
  %conv.i.i.i = trunc i32 %151 to i16
  %bpid.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %6, i32 0, i32 15
  %152 = ptrtoint ptr %bpid.i.i.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %conv.i.i.i, ptr %bpid.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dpbp_attrs.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dpbp_dev.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %dpsw_ctrl_if_pools_cfg.i.i.i) #15
  %153 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %6, align 8
  %call.i45.i.i = call ptr @dpaa2_io_store_create(i32 noundef 16, ptr noundef %154) #15
  %store.i.i.i = getelementptr %struct.ethsw_core, ptr %6, i32 0, i32 12, i32 0, i32 2
  %155 = ptrtoint ptr %store.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call.i45.i.i, ptr %store.i.i.i, align 8
  %tobool.not.i46.i.i = icmp eq ptr %call.i45.i.i, null
  %156 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %6, align 8
  br i1 %tobool.not.i46.i.i, label %do.end.thread.i.i.i, label %for.inc.i.i.i

err_get_attr.i.i.i:                               ; preds = %if.end38.i.i.i.err_get_attr.i.i.i_crit_edge, %if.end29.i.i.i.err_get_attr.i.i.i_crit_edge
  %.str.130.sink.i.i.i = phi ptr [ @.str.127, %if.end29.i.i.i.err_get_attr.i.i.i_crit_edge ], [ @.str.130, %if.end38.i.i.i.err_get_attr.i.i.i_crit_edge ]
  %err.1.i.i.i = phi i32 [ %call32.i.i.i, %if.end29.i.i.i.err_get_attr.i.i.i_crit_edge ], [ %call45.i.i.i, %if.end38.i.i.i.err_get_attr.i.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull %.str.130.sink.i.i.i) #18
  %158 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mc_io.i, align 4
  %160 = ptrtoint ptr %dpbp_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dpbp_dev.i.i.i, align 4
  %mc_handle54.i.i.i = getelementptr inbounds %struct.fsl_mc_device, ptr %161, i32 0, i32 4
  %162 = ptrtoint ptr %mc_handle54.i.i.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %mc_handle54.i.i.i, align 8
  %call55.i.i.i = call i32 @dpbp_disable(ptr noundef %159, i32 noundef 0, i16 noundef zeroext %163) #15
  br label %err_reset.i.i.i

err_reset.i.i.i:                                  ; preds = %err_get_attr.i.i.i, %do.end28.i.i.i, %do.end19.i.i.i
  %err.2.i.i.i = phi i32 [ %call14.i.i.i, %do.end19.i.i.i ], [ %call23.i.i.i, %do.end28.i.i.i ], [ %err.1.i.i.i, %err_get_attr.i.i.i ]
  %164 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mc_io.i, align 4
  %166 = ptrtoint ptr %dpbp_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dpbp_dev.i.i.i, align 4
  %mc_handle57.i.i.i = getelementptr inbounds %struct.fsl_mc_device, ptr %167, i32 0, i32 4
  %168 = ptrtoint ptr %mc_handle57.i.i.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %mc_handle57.i.i.i, align 8
  %call58.i.i.i = call i32 @dpbp_close(ptr noundef %165, i32 noundef 0, i16 noundef zeroext %169) #15
  br label %err_open.i.i.i

err_open.i.i.i:                                   ; preds = %err_reset.i.i.i, %do.end10.i.i.i
  %err.3.i.i.i = phi i32 [ %call5.i.i.i, %do.end10.i.i.i ], [ %err.2.i.i.i, %err_reset.i.i.i ]
  %170 = ptrtoint ptr %dpbp_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dpbp_dev.i.i.i, align 4
  call void @fsl_mc_object_free(ptr noundef %171) #15
  br label %dpaa2_switch_setup_dpbp.exit.thread.i.i

dpaa2_switch_setup_dpbp.exit.thread.i.i:          ; preds = %err_open.i.i.i, %if.end.i223.i.dpaa2_switch_setup_dpbp.exit.thread.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ -517, %if.end.i223.i.dpaa2_switch_setup_dpbp.exit.thread.i.i_crit_edge ], [ %err.3.i.i.i, %err_open.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dpbp_attrs.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dpbp_dev.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %dpsw_ctrl_if_pools_cfg.i.i.i) #15
  br label %err_destroy_ordered_workqueue.i

do.end.thread.i.i.i:                              ; preds = %dpaa2_switch_setup_dpbp.exit.thread68.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %157, ptr noundef nonnull @.str.132) #18
  br label %err_free_dpbp.i.i

while.body.lr.ph.i.i.i:                           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %172 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %6, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %173, ptr noundef nonnull @.str.132) #18
  %174 = ptrtoint ptr %store.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %store.i.i.i, align 8
  call void @dpaa2_io_store_destroy(ptr noundef %175) #15
  br label %err_free_dpbp.i.i

for.inc.i.i.i:                                    ; preds = %dpaa2_switch_setup_dpbp.exit.thread68.i.i
  %call.1.i.i.i = call ptr @dpaa2_io_store_create(i32 noundef 16, ptr noundef %157) #15
  %store.1.i.i.i = getelementptr %struct.ethsw_core, ptr %6, i32 0, i32 12, i32 1, i32 2
  %176 = ptrtoint ptr %store.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %call.1.i.i.i, ptr %store.1.i.i.i, align 8
  %tobool.not.1.i.i.i = icmp eq ptr %call.1.i.i.i, null
  br i1 %tobool.not.1.i.i.i, label %while.body.lr.ph.i.i.i, label %if.end8.i.i

if.end8.i.i:                                      ; preds = %for.inc.i.i.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %queue_cfg.i.i.i) #15
  %177 = call ptr @memset(ptr %queue_cfg.i.i.i, i32 255, i32 32)
  %dest_cfg.i.i.i = getelementptr inbounds %struct.dpsw_ctrl_if_queue_cfg, ptr %queue_cfg.i.i.i, i32 0, i32 2
  %dest_id.i.i.i = getelementptr inbounds %struct.dpsw_ctrl_if_queue_cfg, ptr %queue_cfg.i.i.i, i32 0, i32 2, i32 1
  %priority.i.i.i = getelementptr inbounds %struct.dpsw_ctrl_if_queue_cfg, ptr %queue_cfg.i.i.i, i32 0, i32 2, i32 2
  %user_ctx.i.i.i = getelementptr inbounds %struct.dpsw_ctrl_if_queue_cfg, ptr %queue_cfg.i.i.i, i32 0, i32 1
  %nctx1.i.i.i = getelementptr %struct.ethsw_core, ptr %6, i32 0, i32 12, i32 0, i32 3
  %is_cdan.i.i.i = getelementptr %struct.ethsw_core, ptr %6, i32 0, i32 12, i32 0, i32 3, i32 1
  %178 = ptrtoint ptr %is_cdan.i.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %is_cdan.i.i.i, align 4
  %179 = ptrtoint ptr %fqid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %fqid.i.i.i, align 8
  %id.i51.i.i = getelementptr %struct.ethsw_core, ptr %6, i32 0, i32 12, i32 0, i32 3, i32 2
  %181 = ptrtoint ptr %id.i51.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %id.i51.i.i, align 8
  %desired_cpu.i.i.i = getelementptr %struct.ethsw_core, ptr %6, i32 0, i32 12, i32 0, i32 3, i32 3
  %182 = ptrtoint ptr %desired_cpu.i.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 -1, ptr %desired_cpu.i.i.i, align 4
  %183 = ptrtoint ptr %nctx1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr @dpaa2_switch_fqdan_cb, ptr %nctx1.i.i.i, align 8
  %184 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %6, align 8
  %call.i52.i.i = call i32 @dpaa2_io_service_register(ptr noundef null, ptr noundef %nctx1.i.i.i, ptr noundef %185) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52.i.i)
  %tobool.not.i53.i.i = icmp eq i32 %call.i52.i.i, 0
  br i1 %tobool.not.i53.i.i, label %if.end.i55.i.i, label %if.end8.i.i.dpaa2_switch_setup_dpio.exit.thread.i.i_crit_edge

if.end8.i.i.dpaa2_switch_setup_dpio.exit.thread.i.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_setup_dpio.exit.thread.i.i

if.end.i55.i.i:                                   ; preds = %if.end8.i.i
  %186 = ptrtoint ptr %queue_cfg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 3, ptr %queue_cfg.i.i.i, align 8
  %187 = ptrtoint ptr %dest_cfg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 1, ptr %dest_cfg.i.i.i, align 8
  %dpio_id.i.i.i = getelementptr %struct.ethsw_core, ptr %6, i32 0, i32 12, i32 0, i32 3, i32 4
  %188 = ptrtoint ptr %dpio_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %dpio_id.i.i.i, align 8
  %190 = ptrtoint ptr %dest_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %dest_id.i.i.i, align 4
  %191 = ptrtoint ptr %priority.i.i.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 0, ptr %priority.i.i.i, align 8
  %qman64.i.i.i = getelementptr %struct.ethsw_core, ptr %6, i32 0, i32 12, i32 0, i32 3, i32 5
  %192 = ptrtoint ptr %qman64.i.i.i to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %qman64.i.i.i, align 8
  %194 = ptrtoint ptr %user_ctx.i.i.i to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 %193, ptr %user_ctx.i.i.i, align 8
  %195 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %mc_io.i, align 4
  %197 = ptrtoint ptr %dpsw_handle.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %dpsw_handle.i, align 8
  %199 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %type.i.i.i, align 4
  %call8.i.i.i = call i32 @dpsw_ctrl_if_set_queue(ptr noundef %196, i32 noundef 0, i16 noundef zeroext %198, i32 noundef %200, ptr noundef nonnull %queue_cfg.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %call8.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %for.inc.i58.i.i, label %if.end.i55.i.i.cleanup.sink.split.i.i.i_crit_edge

if.end.i55.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %if.end.i55.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i.i.i

for.inc.i58.i.i:                                  ; preds = %if.end.i55.i.i
  %nctx1.1.i.i.i = getelementptr %struct.ethsw_core, ptr %6, i32 0, i32 12, i32 1, i32 3
  %is_cdan.1.i.i.i = getelementptr %struct.ethsw_core, ptr %6, i32 0, i32 12, i32 1, i32 3, i32 1
  %201 = ptrtoint ptr %is_cdan.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 0, ptr %is_cdan.1.i.i.i, align 4
  %202 = ptrtoint ptr %fqid9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %fqid9.i.i.i, align 8
  %id.1.i.i.i = getelementptr %struct.ethsw_core, ptr %6, i32 0, i32 12, i32 1, i32 3, i32 2
  %204 = ptrtoint ptr %id.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %id.1.i.i.i, align 8
  %desired_cpu.1.i.i.i = getelementptr %struct.ethsw_core, ptr %6, i32 0, i32 12, i32 1, i32 3, i32 3
  %205 = ptrtoint ptr %desired_cpu.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 -1, ptr %desired_cpu.1.i.i.i, align 4
  %206 = ptrtoint ptr %nctx1.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr @dpaa2_switch_fqdan_cb, ptr %nctx1.1.i.i.i, align 8
  %207 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %6, align 8
  %call.1.i56.i.i = call i32 @dpaa2_io_service_register(ptr noundef null, ptr noundef %nctx1.1.i.i.i, ptr noundef %208) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i56.i.i)
  %tobool.not.1.i57.i.i = icmp eq i32 %call.1.i56.i.i, 0
  br i1 %tobool.not.1.i57.i.i, label %if.end.1.i.i.i, label %for.inc.i58.i.i.cleanup.sink.split.i.i.i_crit_edge

for.inc.i58.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %for.inc.i58.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i.i.i

if.end.1.i.i.i:                                   ; preds = %for.inc.i58.i.i
  %209 = ptrtoint ptr %queue_cfg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 3, ptr %queue_cfg.i.i.i, align 8
  %210 = ptrtoint ptr %dest_cfg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 1, ptr %dest_cfg.i.i.i, align 8
  %dpio_id.1.i.i.i = getelementptr %struct.ethsw_core, ptr %6, i32 0, i32 12, i32 1, i32 3, i32 4
  %211 = ptrtoint ptr %dpio_id.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %dpio_id.1.i.i.i, align 8
  %213 = ptrtoint ptr %dest_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %212, ptr %dest_id.i.i.i, align 4
  %214 = ptrtoint ptr %priority.i.i.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 0, ptr %priority.i.i.i, align 8
  %qman64.1.i.i.i = getelementptr %struct.ethsw_core, ptr %6, i32 0, i32 12, i32 1, i32 3, i32 5
  %215 = ptrtoint ptr %qman64.1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %qman64.1.i.i.i, align 8
  %217 = ptrtoint ptr %user_ctx.i.i.i to i32
  call void @__asan_store8_noabort(i32 %217)
  store i64 %216, ptr %user_ctx.i.i.i, align 8
  %218 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %mc_io.i, align 4
  %220 = ptrtoint ptr %dpsw_handle.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %dpsw_handle.i, align 8
  %222 = ptrtoint ptr %type16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %type16.i.i.i, align 4
  %call8.1.i.i.i = call i32 @dpsw_ctrl_if_set_queue(ptr noundef %219, i32 noundef 0, i16 noundef zeroext %221, i32 noundef %223, ptr noundef nonnull %queue_cfg.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1.i.i.i)
  %tobool9.not.1.i.i.i = icmp eq i32 %call8.1.i.i.i, 0
  br i1 %tobool9.not.1.i.i.i, label %if.end12.i.i, label %err_register.i.i.i

err_register.i.i.i:                               ; preds = %if.end.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %224 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %6, align 8
  call void @dpaa2_io_service_deregister(ptr noundef null, ptr noundef %nctx1.1.i.i.i, ptr noundef %225) #15
  br label %cleanup.sink.split.i.i.i

cleanup.sink.split.i.i.i:                         ; preds = %err_register.i.i.i, %for.inc.i58.i.i.cleanup.sink.split.i.i.i_crit_edge, %if.end.i55.i.i.cleanup.sink.split.i.i.i_crit_edge
  %retval.0.ph.i.i.i = phi i32 [ %call8.i.i.i, %if.end.i55.i.i.cleanup.sink.split.i.i.i_crit_edge ], [ %call8.1.i.i.i, %err_register.i.i.i ], [ -517, %for.inc.i58.i.i.cleanup.sink.split.i.i.i_crit_edge ]
  %226 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %6, align 8
  call void @dpaa2_io_service_deregister(ptr noundef null, ptr noundef %nctx1.i.i.i, ptr noundef %227) #15
  br label %dpaa2_switch_setup_dpio.exit.thread.i.i

dpaa2_switch_setup_dpio.exit.thread.i.i:          ; preds = %cleanup.sink.split.i.i.i, %if.end8.i.i.dpaa2_switch_setup_dpio.exit.thread.i.i_crit_edge
  %retval.0.i59.ph.i.i = phi i32 [ %retval.0.ph.i.i.i, %cleanup.sink.split.i.i.i ], [ -517, %if.end8.i.i.dpaa2_switch_setup_dpio.exit.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %queue_cfg.i.i.i) #15
  br label %err_destroy_rings.i.i

if.end12.i.i:                                     ; preds = %if.end.1.i.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %queue_cfg.i.i.i) #15
  %call13.i.i = call fastcc i32 @dpaa2_switch_seed_bp(ptr noundef %6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end16.i.i, label %if.end12.i.i.err_deregister_dpio.i.i_crit_edge

if.end12.i.i.err_deregister_dpio.i.i_crit_edge:   ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_deregister_dpio.i.i

if.end16.i.i:                                     ; preds = %if.end12.i.i
  %228 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %mc_io.i, align 4
  %230 = ptrtoint ptr %dpsw_handle.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %dpsw_handle.i, align 8
  %call17.i.i = call i32 @dpsw_ctrl_if_enable(ptr noundef %229, i32 noundef 0, i16 noundef zeroext %231) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %dpaa2_switch_init.exit.thread, label %do.end.i.i

dpaa2_switch_init.exit.thread:                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stp_cfg.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tci_cfg.i) #15
  call void @llvm.lifetime.end.p0(i64 134, ptr nonnull %vcfg.i) #15
  br label %if.end13

do.end.i.i:                                       ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %232 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %6, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %233, ptr noundef nonnull @.str.111, i32 noundef %call17.i.i) #18
  call fastcc void @dpaa2_switch_drain_bp(ptr noundef %6) #15
  br label %err_deregister_dpio.i.i

err_deregister_dpio.i.i:                          ; preds = %do.end.i.i, %if.end12.i.i.err_deregister_dpio.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call13.i.i, %if.end12.i.i.err_deregister_dpio.i.i_crit_edge ], [ %call17.i.i, %do.end.i.i ]
  call fastcc void @dpaa2_switch_free_dpio(ptr noundef %6) #15
  br label %err_destroy_rings.i.i

err_destroy_rings.i.i:                            ; preds = %err_deregister_dpio.i.i, %dpaa2_switch_setup_dpio.exit.thread.i.i
  %err.1.i.i = phi i32 [ %err.0.i.i, %err_deregister_dpio.i.i ], [ %retval.0.i59.ph.i.i, %dpaa2_switch_setup_dpio.exit.thread.i.i ]
  %234 = ptrtoint ptr %store.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %store.i.i.i, align 8
  call void @dpaa2_io_store_destroy(ptr noundef %235) #15
  %236 = ptrtoint ptr %store.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %store.1.i.i.i, align 8
  call void @dpaa2_io_store_destroy(ptr noundef %237) #15
  br label %err_free_dpbp.i.i

err_free_dpbp.i.i:                                ; preds = %err_destroy_rings.i.i, %while.body.lr.ph.i.i.i, %do.end.thread.i.i.i
  %err.2.i.i = phi i32 [ %err.1.i.i, %err_destroy_rings.i.i ], [ -12, %while.body.lr.ph.i.i.i ], [ -12, %do.end.thread.i.i.i ]
  %238 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %mc_io.i, align 4
  %240 = ptrtoint ptr %dpbp_dev4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %dpbp_dev4.i.i.i, align 8
  %mc_handle.i64.i.i = getelementptr inbounds %struct.fsl_mc_device, ptr %241, i32 0, i32 4
  %242 = ptrtoint ptr %mc_handle.i64.i.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %mc_handle.i64.i.i, align 8
  %call.i65.i.i = call i32 @dpbp_disable(ptr noundef %239, i32 noundef 0, i16 noundef zeroext %243) #15
  %244 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %mc_io.i, align 4
  %246 = ptrtoint ptr %dpbp_dev4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %dpbp_dev4.i.i.i, align 8
  %mc_handle3.i.i.i = getelementptr inbounds %struct.fsl_mc_device, ptr %247, i32 0, i32 4
  %248 = ptrtoint ptr %mc_handle3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %mc_handle3.i.i.i, align 8
  %call4.i.i.i = call i32 @dpbp_close(ptr noundef %245, i32 noundef 0, i16 noundef zeroext %249) #15
  %250 = ptrtoint ptr %dpbp_dev4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %dpbp_dev4.i.i.i, align 8
  call void @fsl_mc_object_free(ptr noundef %251) #15
  br label %err_destroy_ordered_workqueue.i

dpaa2_switch_ctrl_if_setup.exit.i:                ; preds = %if.end.i223.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.115) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dpbp_attrs.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dpbp_dev.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %dpsw_ctrl_if_pools_cfg.i.i.i) #15
  br label %err_destroy_ordered_workqueue.i

err_destroy_ordered_workqueue.i:                  ; preds = %dpaa2_switch_ctrl_if_setup.exit.i, %err_free_dpbp.i.i, %dpaa2_switch_setup_dpbp.exit.thread.i.i, %dpaa2_switch_setup_fqs.exit.i.i, %if.end120.i.err_destroy_ordered_workqueue.i_crit_edge
  %err.0.i = phi i32 [ %call123.i, %if.end120.i.err_destroy_ordered_workqueue.i_crit_edge ], [ %call.i41.i.i, %dpaa2_switch_ctrl_if_setup.exit.i ], [ %retval.0.i.ph.i.i, %dpaa2_switch_setup_dpbp.exit.thread.i.i ], [ %call.i.i.i, %dpaa2_switch_setup_fqs.exit.i.i ], [ %err.2.i.i, %err_free_dpbp.i.i ]
  %252 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %workqueue.i, align 4
  call void @destroy_workqueue(ptr noundef %253) #15
  br label %dpaa2_switch_init.exit

dpaa2_switch_init.exit:                           ; preds = %err_destroy_ordered_workqueue.i, %if.end113.i.dpaa2_switch_init.exit_crit_edge, %do.end112.i, %do.end103.i, %do.end94.i, %do.end84.i, %do.end73.i, %do.end64.i, %do.end50.i, %dpaa2_switch_supports_cpu_traffic.exit.i, %do.end34.i, %do.end19.i, %do.end11.i
  %err.1.i = phi i32 [ %call6.i, %do.end11.i ], [ %call14.i, %do.end19.i ], [ -95, %do.end34.i ], [ %call45.i, %do.end50.i ], [ %call59.i, %do.end64.i ], [ %call68.i, %do.end73.i ], [ %call79.i, %do.end84.i ], [ %call89.i, %do.end94.i ], [ %call98.i, %do.end103.i ], [ %call107.i, %do.end112.i ], [ %err.0.i, %err_destroy_ordered_workqueue.i ], [ -95, %dpaa2_switch_supports_cpu_traffic.exit.i ], [ -12, %if.end113.i.dpaa2_switch_init.exit_crit_edge ]
  %254 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %mc_io.i, align 4
  %256 = ptrtoint ptr %dpsw_handle.i to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %dpsw_handle.i, align 8
  %call134.i = call i32 @dpsw_close(ptr noundef %255, i32 noundef 0, i16 noundef zeroext %257) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stp_cfg.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tci_cfg.i) #15
  call void @llvm.lifetime.end.p0(i64 134, ptr nonnull %vcfg.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool11.not = icmp eq i32 %err.1.i, 0
  br i1 %tobool11.not, label %dpaa2_switch_init.exit.if.end13_crit_edge, label %dpaa2_switch_init.exit.err_free_cmdport_crit_edge

dpaa2_switch_init.exit.err_free_cmdport_crit_edge: ; preds = %dpaa2_switch_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_free_cmdport

dpaa2_switch_init.exit.if.end13_crit_edge:        ; preds = %dpaa2_switch_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.end13:                                         ; preds = %dpaa2_switch_init.exit.if.end13_crit_edge, %dpaa2_switch_init.exit.thread
  %num_ifs = getelementptr inbounds %struct.ethsw_core, ptr %call7.i.i, i32 0, i32 3, i32 8
  %258 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %num_ifs, align 2
  %conv = zext i16 %259 to i32
  %260 = shl nuw nsw i32 %conv, 2
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %260, i32 noundef 3520) #20
  %ports = getelementptr inbounds %struct.ethsw_core, ptr %call7.i.i, i32 0, i32 8
  %261 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %call8.i.i, ptr %ports, align 4
  %tobool16.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool16.not, label %if.end13.err_teardown_crit_edge, label %if.end7.i.i205

if.end13.err_teardown_crit_edge:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_teardown

if.end7.i.i205:                                   ; preds = %if.end13
  %262 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %num_ifs, align 2
  %conv21 = zext i16 %263 to i32
  %264 = shl nuw nsw i32 %conv21, 3
  %call8.i.i204 = call noalias align 128 ptr @__kmalloc(i32 noundef %264, i32 noundef 3520) #20
  %fdbs = getelementptr inbounds %struct.ethsw_core, ptr %call7.i.i, i32 0, i32 17
  %265 = ptrtoint ptr %fdbs to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %call8.i.i204, ptr %fdbs, align 8
  %tobool24.not = icmp eq ptr %call8.i.i204, null
  br i1 %tobool24.not, label %if.end7.i.i205.err_free_ports_crit_edge, label %if.end7.i.i238

if.end7.i.i205.err_free_ports_crit_edge:          ; preds = %if.end7.i.i205
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_free_ports

if.end7.i.i238:                                   ; preds = %if.end7.i.i205
  %266 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %266)
  %267 = load i16, ptr %num_ifs, align 2
  %conv29 = zext i16 %267 to i32
  %268 = mul nuw nsw i32 %conv29, 40
  %call8.i.i237 = call noalias align 128 ptr @__kmalloc(i32 noundef %268, i32 noundef 3520) #20
  %filter_blocks = getelementptr inbounds %struct.ethsw_core, ptr %call7.i.i, i32 0, i32 18
  %269 = ptrtoint ptr %filter_blocks to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %call8.i.i237, ptr %filter_blocks, align 4
  %tobool32.not = icmp eq ptr %call8.i.i237, null
  br i1 %tobool32.not, label %if.end7.i.i238.err_free_fdbs_crit_edge, label %for.cond.preheader

if.end7.i.i238.err_free_fdbs_crit_edge:           ; preds = %if.end7.i.i238
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_free_fdbs

for.cond.preheader:                               ; preds = %if.end7.i.i238
  %270 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %num_ifs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %271)
  %cmp38391.not = icmp eq i16 %271, 0
  br i1 %cmp38391.not, label %for.cond.preheader.for.cond45.preheader_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.cond45.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond45.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %qdid.i.i = getelementptr inbounds %struct.dpsw_if_attr, ptr %dpsw_if_attr.i.i, i32 0, i32 6
  %272 = getelementptr inbounds i8, ptr %acl_if_cfg.i.i.i, i32 4
  %if_id.i.i.i = getelementptr inbounds %struct.dpsw_acl_if_cfg, ptr %acl_if_cfg.i.i.i, i32 0, i32 1
  %key.i.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %acl_entry.i.i.i, i32 0, i32 4
  %mask.i.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %acl_entry.i.i.i, i32 0, i32 4, i32 1
  %result.i.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %acl_entry.i.i.i, i32 0, i32 3, i32 1
  br label %for.body

for.cond45.preheader:                             ; preds = %for.inc.for.cond45.preheader_crit_edge, %for.cond.preheader.for.cond45.preheader_crit_edge
  %273 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %ports, align 4
  %275 = ptrtoint ptr %274 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %274, align 4
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %276, align 4
  %napi = getelementptr %struct.ethsw_core, ptr %call7.i.i, i32 0, i32 12, i32 0, i32 4
  call void @netif_napi_add(ptr noundef %278, ptr noundef %napi, ptr noundef nonnull @dpaa2_switch_poll, i32 noundef 64) #15
  %279 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %ports, align 4
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %280, align 4
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %282, align 4
  %napi.1 = getelementptr %struct.ethsw_core, ptr %call7.i.i, i32 0, i32 12, i32 1, i32 4
  call void @netif_napi_add(ptr noundef %284, ptr noundef %napi.1, ptr noundef nonnull @dpaa2_switch_poll, i32 noundef 64) #15
  %call54 = call fastcc i32 @dpaa2_switch_setup_irqs(ptr noundef %sw_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %for.cond45.preheader.err_stop_crit_edge

for.cond45.preheader.err_stop_crit_edge:          ; preds = %for.cond45.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_stop

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0392 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %285 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %call7.i.i, align 8
  %call.i = call ptr @alloc_etherdev_mqs(i32 noundef 4132, i32 noundef 1, i32 noundef 1) #15
  %tobool.not.i241 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i241, label %do.end.i242, label %if.end.i244

do.end.i242:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %286, ptr noundef nonnull @.str.141) #18
  br label %err_free_netdev

if.end.i244:                                      ; preds = %for.body
  %conv40 = trunc i32 %i.0392 to i16
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 2304
  %287 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %call.i, ptr %add.ptr.i.i, align 4
  %ethsw_data.i = getelementptr i8, ptr %call.i, i32 2312
  %288 = ptrtoint ptr %ethsw_data.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %call7.i.i, ptr %ethsw_data.i, align 4
  %idx.i = getelementptr i8, ptr %call.i, i32 2308
  %289 = ptrtoint ptr %idx.i to i32
  call void @__asan_store2_noabort(i32 %289)
  store i16 %conv40, ptr %idx.i, align 4
  %stp_state.i = getelementptr i8, ptr %call.i, i32 2317
  %290 = ptrtoint ptr %stp_state.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 3, ptr %stp_state.i, align 1
  %parent.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 133, i32 1
  %291 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr %286, ptr %parent.i, align 8
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 16
  %292 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr @dpaa2_switch_port_ops, ptr %netdev_ops.i, align 8
  %ethtool_ops.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 44
  %293 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr @dpaa2_switch_port_ethtool_ops, ptr %ethtool_ops.i, align 16
  %needed_headroom.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 21
  %294 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_store2_noabort(i32 %294)
  store i16 192, ptr %needed_headroom.i, align 8
  %bcast_flood.i = getelementptr i8, ptr %call.i, i32 6424
  %295 = ptrtoint ptr %bcast_flood.i to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 1, ptr %bcast_flood.i, align 4
  %ucast_flood.i = getelementptr i8, ptr %call.i, i32 6425
  %296 = ptrtoint ptr %ucast_flood.i to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 1, ptr %ucast_flood.i, align 1
  %min_mtu.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 30
  %297 = ptrtoint ptr %min_mtu.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 68, ptr %min_mtu.i, align 8
  %max_mtu.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 31
  %298 = ptrtoint ptr %max_mtu.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 10218, ptr %max_mtu.i, align 4
  %299 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %ports, align 4
  %arrayidx.i = getelementptr ptr, ptr %300, i32 %i.0392
  %301 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %add.ptr.i.i, ptr %arrayidx.i, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 23
  %302 = ptrtoint ptr %features.i to i32
  call void @__asan_store8_noabort(i32 %302)
  store i64 703687441777152, ptr %features.i, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vlan.i.i) #15
  %303 = call ptr @memcpy(ptr %vlan.i.i, ptr @__const.dpaa2_switch_port_init.vlan, i32 32)
  %304 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %add.ptr.i.i, align 4
  %306 = ptrtoint ptr %ethsw_data.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %ethsw_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fdb_cfg.i.i) #15
  %308 = ptrtoint ptr %fdb_cfg.i.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 0, ptr %fdb_cfg.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %dpsw_if_attr.i.i) #15
  %309 = call ptr @memset(ptr %dpsw_if_attr.i.i, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %acl_cfg.i.i) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fdb_id.i.i) #15
  %310 = ptrtoint ptr %fdb_id.i.i to i32
  call void @__asan_store2_noabort(i32 %310)
  store i16 -1, ptr %fdb_id.i.i, align 2, !annotation !402
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %acl_tbl_id.i.i) #15
  %311 = ptrtoint ptr %acl_tbl_id.i.i to i32
  call void @__asan_store2_noabort(i32 %311)
  store i16 -1, ptr %acl_tbl_id.i.i, align 2, !annotation !402
  %mc_io.i.i = getelementptr inbounds %struct.ethsw_core, ptr %307, i32 0, i32 1
  %312 = ptrtoint ptr %mc_io.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %mc_io.i.i, align 4
  %dpsw_handle.i.i = getelementptr inbounds %struct.ethsw_core, ptr %307, i32 0, i32 2
  %314 = ptrtoint ptr %dpsw_handle.i.i to i32
  call void @__asan_load2_noabort(i32 %314)
  %315 = load i16, ptr %dpsw_handle.i.i, align 8
  %316 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %316)
  %317 = load i16, ptr %idx.i, align 4
  %call.i.i = call i32 @dpsw_if_get_attributes(ptr noundef %313, i32 noundef 0, i16 noundef zeroext %315, i16 noundef zeroext %317, ptr noundef nonnull %dpsw_if_attr.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i243 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i243, label %if.end.i.i248, label %if.then.i.i245

if.then.i.i245:                                   ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %305, ptr noundef nonnull @.str.143, i32 noundef %call.i.i) #18
  br label %dpaa2_switch_port_init.exit.thread.i

if.end.i.i248:                                    ; preds = %if.end.i244
  %318 = ptrtoint ptr %qdid.i.i to i32
  call void @__asan_load2_noabort(i32 %318)
  %319 = load i16, ptr %qdid.i.i, align 4
  %tx_qdid.i.i = getelementptr i8, ptr %call.i, i32 6416
  %320 = ptrtoint ptr %tx_qdid.i.i to i32
  call void @__asan_store2_noabort(i32 %320)
  store i16 %319, ptr %tx_qdid.i.i, align 4
  %max_fdb_entries.i.i = getelementptr inbounds %struct.ethsw_core, ptr %307, i32 0, i32 3, i32 5
  %321 = ptrtoint ptr %max_fdb_entries.i.i to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %max_fdb_entries.i.i, align 4
  %num_ifs.i.i246 = getelementptr inbounds %struct.ethsw_core, ptr %307, i32 0, i32 3, i32 8
  %323 = ptrtoint ptr %num_ifs.i.i246 to i32
  call void @__asan_load2_noabort(i32 %323)
  %324 = load i16, ptr %num_ifs.i.i246, align 2
  %325 = udiv i16 %322, %324
  %326 = ptrtoint ptr %fdb_cfg.i.i to i32
  call void @__asan_store2_noabort(i32 %326)
  store i16 %325, ptr %fdb_cfg.i.i, align 4
  %327 = ptrtoint ptr %mc_io.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %mc_io.i.i, align 4
  %329 = ptrtoint ptr %dpsw_handle.i.i to i32
  call void @__asan_load2_noabort(i32 %329)
  %330 = load i16, ptr %dpsw_handle.i.i, align 8
  %call7.i.i247 = call i32 @dpsw_fdb_add(ptr noundef %328, i32 noundef 0, i16 noundef zeroext %330, ptr noundef nonnull %fdb_id.i.i, ptr noundef nonnull %fdb_cfg.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i247)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i247, 0
  br i1 %tobool8.not.i.i, label %if.end10.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i248
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %305, ptr noundef nonnull @.str.144, i32 noundef %call7.i.i247) #18
  br label %dpaa2_switch_port_init.exit.thread.i

if.end10.i.i:                                     ; preds = %if.end.i.i248
  %331 = ptrtoint ptr %num_ifs.i.i246 to i32
  call void @__asan_load2_noabort(i32 %331)
  %332 = load i16, ptr %num_ifs.i.i246, align 2
  %conv.i.i.i249 = zext i16 %332 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %332)
  %cmp10.not.i.i.i = icmp eq i16 %332, 0
  br i1 %cmp10.not.i.i.i, label %if.end10.i.i.dpaa2_switch_fdb_get_unused.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end10.i.i.dpaa2_switch_fdb_get_unused.exit.i.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_fdb_get_unused.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end10.i.i
  %fdbs.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %307, i32 0, i32 17
  %333 = ptrtoint ptr %fdbs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %fdbs.i.i.i, align 8
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i252.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.011.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i252.for.body.i.i.i_crit_edge ]
  %in_use.i.i.i = getelementptr %struct.dpaa2_switch_fdb, ptr %334, i32 %i.011.i.i.i, i32 2
  %335 = ptrtoint ptr %in_use.i.i.i to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %in_use.i.i.i, align 2, !range !403
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %336)
  %tobool.not.i.i.i250 = icmp eq i8 %336, 0
  br i1 %tobool.not.i.i.i250, label %if.then.i.i.i251, label %for.inc.i.i.i252

if.then.i.i.i251:                                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i.i.i = getelementptr %struct.dpaa2_switch_fdb, ptr %334, i32 %i.011.i.i.i
  br label %dpaa2_switch_fdb_get_unused.exit.i.i

for.inc.i.i.i252:                                 ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.011.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i.i.i249
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i252.dpaa2_switch_fdb_get_unused.exit.i.i_crit_edge, label %for.inc.i.i.i252.for.body.i.i.i_crit_edge

for.inc.i.i.i252.for.body.i.i.i_crit_edge:        ; preds = %for.inc.i.i.i252
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.i

for.inc.i.i.i252.dpaa2_switch_fdb_get_unused.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i252
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_fdb_get_unused.exit.i.i

dpaa2_switch_fdb_get_unused.exit.i.i:             ; preds = %for.inc.i.i.i252.dpaa2_switch_fdb_get_unused.exit.i.i_crit_edge, %if.then.i.i.i251, %if.end10.i.i.dpaa2_switch_fdb_get_unused.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %arrayidx.i.i.i, %if.then.i.i.i251 ], [ null, %if.end10.i.i.dpaa2_switch_fdb_get_unused.exit.i.i_crit_edge ], [ null, %for.inc.i.i.i252.dpaa2_switch_fdb_get_unused.exit.i.i_crit_edge ]
  %337 = ptrtoint ptr %fdb_id.i.i to i32
  call void @__asan_load2_noabort(i32 %337)
  %338 = load i16, ptr %fdb_id.i.i, align 2
  %fdb_id12.i.i = getelementptr inbounds %struct.dpaa2_switch_fdb, ptr %retval.0.i.i.i, i32 0, i32 1
  %339 = ptrtoint ptr %fdb_id12.i.i to i32
  call void @__asan_store2_noabort(i32 %339)
  store i16 %338, ptr %fdb_id12.i.i, align 4
  %in_use.i.i = getelementptr inbounds %struct.dpaa2_switch_fdb, ptr %retval.0.i.i.i, i32 0, i32 2
  %340 = ptrtoint ptr %in_use.i.i to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 1, ptr %in_use.i.i, align 2
  %341 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store ptr null, ptr %retval.0.i.i.i, align 4
  %fdb13.i.i = getelementptr i8, ptr %call.i, i32 6420
  %342 = ptrtoint ptr %fdb13.i.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store ptr %retval.0.i.i.i, ptr %fdb13.i.i, align 4
  %call14.i.i = call i32 @dpaa2_switch_port_vlans_add(ptr noundef %305, ptr noundef nonnull %vlan.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end17.i.i, label %dpaa2_switch_fdb_get_unused.exit.i.i.dpaa2_switch_port_init.exit.thread.i_crit_edge

dpaa2_switch_fdb_get_unused.exit.i.i.dpaa2_switch_port_init.exit.thread.i_crit_edge: ; preds = %dpaa2_switch_fdb_get_unused.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_init.exit.thread.i

if.end17.i.i:                                     ; preds = %dpaa2_switch_fdb_get_unused.exit.i.i
  %343 = ptrtoint ptr %fdb13.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %fdb13.i.i, align 4
  %fdb_id19.i.i = getelementptr inbounds %struct.dpaa2_switch_fdb, ptr %344, i32 0, i32 1
  %345 = ptrtoint ptr %fdb_id19.i.i to i32
  call void @__asan_load2_noabort(i32 %345)
  %346 = load i16, ptr %fdb_id19.i.i, align 4
  %call20.i.i = call fastcc i32 @dpaa2_switch_fdb_set_egress_flood(ptr noundef %307, i16 noundef zeroext %346) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.end23.i.i, label %if.end17.i.i.dpaa2_switch_port_init.exit.thread.i_crit_edge

if.end17.i.i.dpaa2_switch_port_init.exit.thread.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_init.exit.thread.i

if.end23.i.i:                                     ; preds = %if.end17.i.i
  %347 = ptrtoint ptr %acl_cfg.i.i to i32
  call void @__asan_store2_noabort(i32 %347)
  store i16 16, ptr %acl_cfg.i.i, align 2
  %348 = ptrtoint ptr %mc_io.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %mc_io.i.i, align 4
  %350 = ptrtoint ptr %dpsw_handle.i.i to i32
  call void @__asan_load2_noabort(i32 %350)
  %351 = load i16, ptr %dpsw_handle.i.i, align 8
  %call26.i.i = call i32 @dpsw_acl_add(ptr noundef %349, i32 noundef 0, i16 noundef zeroext %351, ptr noundef nonnull %acl_tbl_id.i.i, ptr noundef nonnull %acl_cfg.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end29.i.i, label %if.then28.i.i

if.then28.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %305, ptr noundef nonnull @.str.145, i32 noundef %call26.i.i) #18
  br label %dpaa2_switch_port_init.exit.thread.i

if.end29.i.i:                                     ; preds = %if.end23.i.i
  %352 = ptrtoint ptr %num_ifs.i.i246 to i32
  call void @__asan_load2_noabort(i32 %352)
  %353 = load i16, ptr %num_ifs.i.i246, align 2
  %conv.i2.i.i = zext i16 %353 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %353)
  %cmp10.not.i3.i.i = icmp eq i16 %353, 0
  br i1 %cmp10.not.i3.i.i, label %if.end29.i.i.dpaa2_switch_filter_block_get_unused.exit.i.i_crit_edge, label %for.body.lr.ph.i4.i.i

if.end29.i.i.dpaa2_switch_filter_block_get_unused.exit.i.i_crit_edge: ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_filter_block_get_unused.exit.i.i

for.body.lr.ph.i4.i.i:                            ; preds = %if.end29.i.i
  %filter_blocks.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %307, i32 0, i32 18
  %354 = ptrtoint ptr %filter_blocks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %filter_blocks.i.i.i, align 4
  br label %for.body.i8.i.i

for.body.i8.i.i:                                  ; preds = %for.inc.i13.i.i.for.body.i8.i.i_crit_edge, %for.body.lr.ph.i4.i.i
  %i.011.i5.i.i = phi i32 [ 0, %for.body.lr.ph.i4.i.i ], [ %inc.i11.i.i, %for.inc.i13.i.i.for.body.i8.i.i_crit_edge ]
  %in_use.i6.i.i = getelementptr %struct.dpaa2_switch_filter_block, ptr %355, i32 %i.011.i5.i.i, i32 2
  %356 = ptrtoint ptr %in_use.i6.i.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %in_use.i6.i.i, align 8, !range !403
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %357)
  %tobool.not.i7.i.i = icmp eq i8 %357, 0
  br i1 %tobool.not.i7.i.i, label %if.then.i10.i.i, label %for.inc.i13.i.i

if.then.i10.i.i:                                  ; preds = %for.body.i8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i9.i.i = getelementptr %struct.dpaa2_switch_filter_block, ptr %355, i32 %i.011.i5.i.i
  br label %dpaa2_switch_filter_block_get_unused.exit.i.i

for.inc.i13.i.i:                                  ; preds = %for.body.i8.i.i
  %inc.i11.i.i = add nuw nsw i32 %i.011.i5.i.i, 1
  %exitcond.not.i12.i.i = icmp eq i32 %inc.i11.i.i, %conv.i2.i.i
  br i1 %exitcond.not.i12.i.i, label %for.inc.i13.i.i.dpaa2_switch_filter_block_get_unused.exit.i.i_crit_edge, label %for.inc.i13.i.i.for.body.i8.i.i_crit_edge

for.inc.i13.i.i.for.body.i8.i.i_crit_edge:        ; preds = %for.inc.i13.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i8.i.i

for.inc.i13.i.i.dpaa2_switch_filter_block_get_unused.exit.i.i_crit_edge: ; preds = %for.inc.i13.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_filter_block_get_unused.exit.i.i

dpaa2_switch_filter_block_get_unused.exit.i.i:    ; preds = %for.inc.i13.i.i.dpaa2_switch_filter_block_get_unused.exit.i.i_crit_edge, %if.then.i10.i.i, %if.end29.i.i.dpaa2_switch_filter_block_get_unused.exit.i.i_crit_edge
  %retval.0.i14.i.i = phi ptr [ %arrayidx.i9.i.i, %if.then.i10.i.i ], [ null, %if.end29.i.i.dpaa2_switch_filter_block_get_unused.exit.i.i_crit_edge ], [ null, %for.inc.i13.i.i.dpaa2_switch_filter_block_get_unused.exit.i.i_crit_edge ]
  %358 = ptrtoint ptr %retval.0.i14.i.i to i32
  call void @__asan_store4_noabort(i32 %358)
  store ptr %307, ptr %retval.0.i14.i.i, align 8
  %359 = ptrtoint ptr %acl_tbl_id.i.i to i32
  call void @__asan_load2_noabort(i32 %359)
  %360 = load i16, ptr %acl_tbl_id.i.i, align 2
  %acl_id.i.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %retval.0.i14.i.i, i32 0, i32 4
  %361 = ptrtoint ptr %acl_id.i.i to i32
  call void @__asan_store2_noabort(i32 %361)
  store i16 %360, ptr %acl_id.i.i, align 4
  %in_use32.i.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %retval.0.i14.i.i, i32 0, i32 2
  %362 = ptrtoint ptr %in_use32.i.i to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 1, ptr %in_use32.i.i, align 8
  %num_acl_rules.i.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %retval.0.i14.i.i, i32 0, i32 5
  %363 = ptrtoint ptr %num_acl_rules.i.i to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 0, ptr %num_acl_rules.i.i, align 2
  %acl_entries.i.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %retval.0.i14.i.i, i32 0, i32 3
  %364 = ptrtoint ptr %acl_entries.i.i to i32
  call void @__asan_store4_noabort(i32 %364)
  store volatile ptr %acl_entries.i.i, ptr %acl_entries.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %retval.0.i14.i.i, i32 0, i32 3, i32 1
  %365 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store ptr %acl_entries.i.i, ptr %prev.i.i.i, align 4
  %mirror_entries.i.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %retval.0.i14.i.i, i32 0, i32 6
  %366 = ptrtoint ptr %mirror_entries.i.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store volatile ptr %mirror_entries.i.i, ptr %mirror_entries.i.i, align 4
  %prev.i15.i.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %retval.0.i14.i.i, i32 0, i32 6, i32 1
  %367 = ptrtoint ptr %prev.i15.i.i to i32
  call void @__asan_store4_noabort(i32 %367)
  store ptr %mirror_entries.i.i, ptr %prev.i15.i.i, align 4
  %368 = ptrtoint ptr %ethsw_data.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %ethsw_data.i, align 4
  %370 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %add.ptr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %acl_if_cfg.i.i.i) #15
  %372 = call ptr @memset(ptr %272, i32 255, i32 126)
  %filter_block.i.i.i = getelementptr i8, ptr %call.i, i32 6428
  %373 = ptrtoint ptr %filter_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %filter_block.i.i.i, align 4
  %tobool.not.i16.i.i = icmp eq ptr %374, null
  br i1 %tobool.not.i16.i.i, label %if.end.i.i.i254, label %dpaa2_switch_filter_block_get_unused.exit.i.i.dpaa2_switch_port_acl_tbl_bind.exit.thread.i.i_crit_edge

dpaa2_switch_filter_block_get_unused.exit.i.i.dpaa2_switch_port_acl_tbl_bind.exit.thread.i.i_crit_edge: ; preds = %dpaa2_switch_filter_block_get_unused.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_acl_tbl_bind.exit.thread.i.i

if.end.i.i.i254:                                  ; preds = %dpaa2_switch_filter_block_get_unused.exit.i.i
  %375 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %375)
  %376 = load i16, ptr %idx.i, align 4
  %377 = ptrtoint ptr %if_id.i.i.i to i32
  call void @__asan_store2_noabort(i32 %377)
  store i16 %376, ptr %if_id.i.i.i, align 2
  %378 = ptrtoint ptr %acl_if_cfg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %378)
  store i16 1, ptr %acl_if_cfg.i.i.i, align 2
  %mc_io.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %369, i32 0, i32 1
  %379 = ptrtoint ptr %mc_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %mc_io.i.i.i, align 4
  %dpsw_handle.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %369, i32 0, i32 2
  %381 = ptrtoint ptr %dpsw_handle.i.i.i to i32
  call void @__asan_load2_noabort(i32 %381)
  %382 = load i16, ptr %dpsw_handle.i.i.i, align 8
  %383 = ptrtoint ptr %acl_id.i.i to i32
  call void @__asan_load2_noabort(i32 %383)
  %384 = load i16, ptr %acl_id.i.i, align 4
  %call.i.i.i253 = call i32 @dpsw_acl_add_if(ptr noundef %380, i32 noundef 0, i16 noundef zeroext %382, i16 noundef zeroext %384, ptr noundef nonnull %acl_if_cfg.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i253)
  %tobool2.not.i.i.i = icmp eq i32 %call.i.i.i253, 0
  br i1 %tobool2.not.i.i.i, label %dpaa2_switch_port_init.exit.i, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i254
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %371, ptr noundef nonnull @.str.21, i32 noundef %call.i.i.i253) #18
  br label %dpaa2_switch_port_acl_tbl_bind.exit.thread.i.i

dpaa2_switch_port_acl_tbl_bind.exit.thread.i.i:   ; preds = %if.then3.i.i.i, %dpaa2_switch_filter_block_get_unused.exit.i.i.dpaa2_switch_port_acl_tbl_bind.exit.thread.i.i_crit_edge
  %retval.0.i18.ph.i.i = phi i32 [ %call.i.i.i253, %if.then3.i.i.i ], [ -22, %dpaa2_switch_filter_block_get_unused.exit.i.i.dpaa2_switch_port_acl_tbl_bind.exit.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %acl_if_cfg.i.i.i) #15
  br label %dpaa2_switch_port_init.exit.thread.i

dpaa2_switch_port_init.exit.thread.i:             ; preds = %dpaa2_switch_port_acl_tbl_bind.exit.thread.i.i, %if.then28.i.i, %if.end17.i.i.dpaa2_switch_port_init.exit.thread.i_crit_edge, %dpaa2_switch_fdb_get_unused.exit.i.i.dpaa2_switch_port_init.exit.thread.i_crit_edge, %if.then9.i.i, %if.then.i.i245
  %retval.0.i.ph.i = phi i32 [ %retval.0.i18.ph.i.i, %dpaa2_switch_port_acl_tbl_bind.exit.thread.i.i ], [ %call26.i.i, %if.then28.i.i ], [ %call7.i.i247, %if.then9.i.i ], [ %call.i.i, %if.then.i.i245 ], [ %call14.i.i, %dpaa2_switch_fdb_get_unused.exit.i.i.dpaa2_switch_port_init.exit.thread.i_crit_edge ], [ %call20.i.i, %if.end17.i.i.dpaa2_switch_port_init.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %acl_tbl_id.i.i) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fdb_id.i.i) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %acl_cfg.i.i) #15
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %dpsw_if_attr.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fdb_cfg.i.i) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vlan.i.i) #15
  br label %err_port_probe.i

dpaa2_switch_port_init.exit.i:                    ; preds = %if.end.i.i.i254
  %385 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %385)
  %386 = load i16, ptr %idx.i, align 4
  %conv.i17.i.i = zext i16 %386 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i17.i.i
  %conv6.i.i.i = zext i32 %shl.i.i.i to i64
  %ports.i.i.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %retval.0.i14.i.i, i32 0, i32 1
  %387 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load8_noabort(i32 %387)
  %388 = load i64, ptr %ports.i.i.i, align 8
  %or.i.i.i = or i64 %388, %conv6.i.i.i
  store i64 %or.i.i.i, ptr %ports.i.i.i, align 8
  %389 = ptrtoint ptr %filter_block.i.i.i to i32
  call void @__asan_store4_noabort(i32 %389)
  store ptr %retval.0.i14.i.i, ptr %filter_block.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %acl_if_cfg.i.i.i) #15
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %acl_entry.i.i.i) #15
  %390 = call ptr @memset(ptr %acl_entry.i.i.i, i32 0, i32 112)
  %391 = ptrtoint ptr %key.i.i.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 25215488, ptr %key.i.i.i, align 8
  %392 = call ptr @memset(ptr %mask.i.i.i, i32 255, i32 6)
  %393 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 3, ptr %result.i.i.i, align 8
  %call.i20.i.i = call i32 @dpaa2_switch_acl_entry_add(ptr noundef %retval.0.i14.i.i, ptr noundef nonnull %acl_entry.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %acl_entry.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %acl_tbl_id.i.i) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fdb_id.i.i) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %acl_cfg.i.i) #15
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %dpsw_if_attr.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fdb_cfg.i.i) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vlan.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i)
  %tobool5.not.i = icmp eq i32 %call.i20.i.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %dpaa2_switch_port_init.exit.i.err_port_probe.i_crit_edge

dpaa2_switch_port_init.exit.i.err_port_probe.i_crit_edge: ; preds = %dpaa2_switch_port_init.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_port_probe.i

if.end7.i:                                        ; preds = %dpaa2_switch_port_init.exit.i
  %call8.i = call fastcc i32 @dpaa2_switch_port_set_mac_addr(ptr noundef %add.ptr.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end7.i.err_port_probe.i_crit_edge

if.end7.i.err_port_probe.i_crit_edge:             ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_port_probe.i

if.end11.i:                                       ; preds = %if.end7.i
  %394 = ptrtoint ptr %ethsw_data.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %ethsw_data.i, align 4
  %mc_io.i59.i = getelementptr inbounds %struct.ethsw_core, ptr %395, i32 0, i32 1
  %396 = ptrtoint ptr %mc_io.i59.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %mc_io.i59.i, align 4
  %dpsw_handle.i60.i = getelementptr inbounds %struct.ethsw_core, ptr %395, i32 0, i32 2
  %398 = ptrtoint ptr %dpsw_handle.i60.i to i32
  call void @__asan_load2_noabort(i32 %398)
  %399 = load i16, ptr %dpsw_handle.i60.i, align 8
  %400 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %400)
  %401 = load i16, ptr %idx.i, align 4
  %call.i62.i = call i32 @dpsw_if_set_learning_mode(ptr noundef %397, i32 noundef 0, i16 noundef zeroext %399, i16 noundef zeroext %401, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62.i)
  %tobool1.not.i.i = icmp eq i32 %call.i62.i, 0
  br i1 %tobool1.not.i.i, label %if.end15.i, label %dpaa2_switch_port_set_learning.exit.i

dpaa2_switch_port_set_learning.exit.i:            ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  %402 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %add.ptr.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %403, ptr noundef nonnull @.str.54, i32 noundef %call.i62.i) #18
  %call.i.i63.i = call fastcc i32 @dpaa2_switch_fdb_iterate(ptr noundef %add.ptr.i.i, ptr noundef nonnull @dpaa2_switch_fdb_entry_fast_age, ptr noundef null) #15
  br label %err_port_probe.i

if.end15.i:                                       ; preds = %if.end11.i
  %call.i.i6366.i = call fastcc i32 @dpaa2_switch_fdb_iterate(ptr noundef %add.ptr.i.i, ptr noundef nonnull @dpaa2_switch_fdb_entry_fast_age, ptr noundef null) #15
  %learn_ena.i = getelementptr i8, ptr %call.i, i32 6426
  %404 = ptrtoint ptr %learn_ena.i to i32
  call void @__asan_store1_noabort(i32 %404)
  store i8 0, ptr %learn_ena.i, align 2
  %call16.i = call fastcc i32 @dpaa2_switch_port_connect_mac(ptr noundef %add.ptr.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %for.inc, label %if.end15.i.err_port_probe.i_crit_edge

if.end15.i.err_port_probe.i_crit_edge:            ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_port_probe.i

err_port_probe.i:                                 ; preds = %if.end15.i.err_port_probe.i_crit_edge, %dpaa2_switch_port_set_learning.exit.i, %if.end7.i.err_port_probe.i_crit_edge, %dpaa2_switch_port_init.exit.i.err_port_probe.i_crit_edge, %dpaa2_switch_port_init.exit.thread.i
  %err.0.i255 = phi i32 [ %call.i62.i, %dpaa2_switch_port_set_learning.exit.i ], [ %retval.0.i.ph.i, %dpaa2_switch_port_init.exit.thread.i ], [ %call.i20.i.i, %dpaa2_switch_port_init.exit.i.err_port_probe.i_crit_edge ], [ %call8.i, %if.end7.i.err_port_probe.i_crit_edge ], [ %call16.i, %if.end15.i.err_port_probe.i_crit_edge ]
  call void @free_netdev(ptr noundef nonnull %call.i) #15
  %405 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %ports, align 4
  %arrayidx22.i = getelementptr ptr, ptr %406, i32 %i.0392
  %407 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store ptr null, ptr %arrayidx22.i, align 4
  br label %err_free_netdev

for.inc:                                          ; preds = %if.end15.i
  %inc = add nuw nsw i32 %i.0392, 1
  %408 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %408)
  %409 = load i16, ptr %num_ifs, align 2
  %conv37 = zext i16 %409 to i32
  %cmp38 = icmp ult i32 %inc, %conv37
  br i1 %cmp38, label %for.inc.for.body_crit_edge, label %for.inc.for.cond45.preheader_crit_edge

for.inc.for.cond45.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond45.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end57:                                         ; preds = %for.cond45.preheader
  %410 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %410)
  %411 = load i16, ptr %num_ifs, align 2
  %mirror_port = getelementptr inbounds %struct.ethsw_core, ptr %call7.i.i, i32 0, i32 19
  %412 = ptrtoint ptr %mirror_port to i32
  call void @__asan_store2_noabort(i32 %412)
  store i16 %411, ptr %mirror_port, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %411)
  %cmp64395.not = icmp eq i16 %411, 0
  br i1 %cmp64395.not, label %if.end57.cleanup_crit_edge, label %if.end57.for.body66_crit_edge

if.end57.for.body66_crit_edge:                    ; preds = %if.end57
  br label %for.body66

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body66:                                       ; preds = %for.inc78.for.body66_crit_edge, %if.end57.for.body66_crit_edge
  %i.2396 = phi i32 [ %inc79, %for.inc78.for.body66_crit_edge ], [ 0, %if.end57.for.body66_crit_edge ]
  %413 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %ports, align 4
  %arrayidx68 = getelementptr ptr, ptr %414, i32 %i.2396
  %415 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %arrayidx68, align 4
  %417 = ptrtoint ptr %416 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %416, align 4
  %call70 = call i32 @register_netdev(ptr noundef %418) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %do.end76, label %for.inc78

do.end76:                                         ; preds = %for.body66
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %sw_dev, ptr noundef nonnull @.str.69, i32 noundef %call70) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2396)
  %cmp82398.not = icmp eq i32 %i.2396, 0
  br i1 %cmp82398.not, label %do.end76.for.end90_crit_edge, label %do.end76.for.body84_crit_edge

do.end76.for.body84_crit_edge:                    ; preds = %do.end76
  br label %for.body84

do.end76.for.end90_crit_edge:                     ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end90

for.inc78:                                        ; preds = %for.body66
  %inc79 = add nuw nsw i32 %i.2396, 1
  %419 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %419)
  %420 = load i16, ptr %num_ifs, align 2
  %conv63 = zext i16 %420 to i32
  %cmp64 = icmp ult i32 %inc79, %conv63
  br i1 %cmp64, label %for.inc78.for.body66_crit_edge, label %for.inc78.cleanup_crit_edge

for.inc78.cleanup_crit_edge:                      ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc78.for.body66_crit_edge:                   ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body66

for.body84:                                       ; preds = %for.body84.for.body84_crit_edge, %do.end76.for.body84_crit_edge
  %i.3399.in = phi i32 [ %i.3399, %for.body84.for.body84_crit_edge ], [ %i.2396, %do.end76.for.body84_crit_edge ]
  %i.3399 = add nsw i32 %i.3399.in, -1
  %421 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %ports, align 4
  %arrayidx86 = getelementptr ptr, ptr %422, i32 %i.3399
  %423 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %arrayidx86, align 4
  %425 = ptrtoint ptr %424 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %424, align 4
  call void @unregister_netdev(ptr noundef %426) #15
  %cmp82 = icmp sgt i32 %i.3399.in, 1
  br i1 %cmp82, label %for.body84.for.body84_crit_edge, label %for.body84.for.end90_crit_edge

for.body84.for.end90_crit_edge:                   ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end90

for.body84.for.body84_crit_edge:                  ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body84

for.end90:                                        ; preds = %for.body84.for.end90_crit_edge, %do.end76.for.end90_crit_edge
  call fastcc void @dpaa2_switch_teardown_irqs(ptr noundef %sw_dev)
  br label %err_stop

err_stop:                                         ; preds = %for.end90, %for.cond45.preheader.err_stop_crit_edge
  %i.4 = phi i32 [ 2, %for.cond45.preheader.err_stop_crit_edge ], [ -1, %for.end90 ]
  %err.0 = phi i32 [ %call54, %for.cond45.preheader.err_stop_crit_edge ], [ %call70, %for.end90 ]
  %427 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %mc_io, align 4
  %dpsw_handle = getelementptr inbounds %struct.ethsw_core, ptr %call7.i.i, i32 0, i32 2
  %429 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %429)
  %430 = load i16, ptr %dpsw_handle, align 8
  %call92 = call i32 @dpsw_disable(ptr noundef %428, i32 noundef 0, i16 noundef zeroext %430) #15
  br label %err_free_netdev

err_free_netdev:                                  ; preds = %err_stop, %err_port_probe.i, %do.end.i242
  %i.5 = phi i32 [ %i.4, %err_stop ], [ %i.0392, %err_port_probe.i ], [ %i.0392, %do.end.i242 ]
  %err.1 = phi i32 [ %err.0, %err_stop ], [ %err.0.i255, %err_port_probe.i ], [ -12, %do.end.i242 ]
  %i.6400 = add i32 %i.5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.6400)
  %cmp95401 = icmp sgt i32 %i.6400, -1
  br i1 %cmp95401, label %err_free_netdev.for.body97_crit_edge, label %err_free_netdev.for.end101_crit_edge

err_free_netdev.for.end101_crit_edge:             ; preds = %err_free_netdev
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end101

err_free_netdev.for.body97_crit_edge:             ; preds = %err_free_netdev
  br label %for.body97

for.body97:                                       ; preds = %for.body97.for.body97_crit_edge, %err_free_netdev.for.body97_crit_edge
  %i.6402 = phi i32 [ %i.6, %for.body97.for.body97_crit_edge ], [ %i.6400, %err_free_netdev.for.body97_crit_edge ]
  %conv98 = trunc i32 %i.6402 to i16
  call fastcc void @dpaa2_switch_remove_port(ptr noundef nonnull %call7.i.i, i16 noundef zeroext %conv98)
  %i.6 = add nsw i32 %i.6402, -1
  %cmp95.not = icmp eq i32 %i.6402, 0
  br i1 %cmp95.not, label %for.body97.for.end101_crit_edge, label %for.body97.for.body97_crit_edge

for.body97.for.body97_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body97

for.body97.for.end101_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end101

for.end101:                                       ; preds = %for.body97.for.end101_crit_edge, %err_free_netdev.for.end101_crit_edge
  %431 = ptrtoint ptr %filter_blocks to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %filter_blocks, align 4
  call void @kfree(ptr noundef %432) #15
  br label %err_free_fdbs

err_free_fdbs:                                    ; preds = %for.end101, %if.end7.i.i238.err_free_fdbs_crit_edge
  %err.2 = phi i32 [ %err.1, %for.end101 ], [ -12, %if.end7.i.i238.err_free_fdbs_crit_edge ]
  %433 = ptrtoint ptr %fdbs to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %fdbs, align 8
  call void @kfree(ptr noundef %434) #15
  br label %err_free_ports

err_free_ports:                                   ; preds = %err_free_fdbs, %if.end7.i.i205.err_free_ports_crit_edge
  %err.3 = phi i32 [ %err.2, %err_free_fdbs ], [ -12, %if.end7.i.i205.err_free_ports_crit_edge ]
  %435 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %ports, align 4
  call void @kfree(ptr noundef %436) #15
  br label %err_teardown

err_teardown:                                     ; preds = %err_free_ports, %if.end13.err_teardown_crit_edge
  %err.4 = phi i32 [ %err.3, %err_free_ports ], [ -12, %if.end13.err_teardown_crit_edge ]
  call fastcc void @dpaa2_switch_teardown(ptr noundef %sw_dev)
  br label %err_free_cmdport

err_free_cmdport:                                 ; preds = %err_teardown, %dpaa2_switch_init.exit.err_free_cmdport_crit_edge, %dpaa2_switch_init.exit.thread260
  %err.5 = phi i32 [ %err.1.i, %dpaa2_switch_init.exit.err_free_cmdport_crit_edge ], [ %err.4, %err_teardown ], [ %call3.i, %dpaa2_switch_init.exit.thread260 ]
  %437 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %mc_io, align 4
  call void @fsl_mc_portal_free(ptr noundef %438) #15
  br label %err_free_drvdata

err_free_drvdata:                                 ; preds = %err_free_cmdport, %do.end, %if.end.err_free_drvdata_crit_edge
  %err.6 = phi i32 [ %call4, %do.end ], [ %err.5, %err_free_cmdport ], [ -517, %if.end.err_free_drvdata_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #15
  %439 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %439)
  store ptr null, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_free_drvdata, %for.inc78.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.6, %err_free_drvdata ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end57.cleanup_crit_edge ], [ 0, %for.inc78.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_remove(ptr noundef %sw_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %sw_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mc_io.i = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_io.i, align 4
  %dpsw_handle.i = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dpsw_handle.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dpsw_handle.i, align 8
  %call2.i = tail call i32 @dpsw_set_irq_enable(ptr noundef %3, i32 noundef 0, i16 noundef zeroext %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %entry.dpaa2_switch_teardown_irqs.exit_crit_edge, label %do.end.i

entry.dpaa2_switch_teardown_irqs.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_teardown_irqs.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %sw_dev, ptr noundef nonnull @.str.166, i32 noundef %call2.i) #18
  br label %dpaa2_switch_teardown_irqs.exit

dpaa2_switch_teardown_irqs.exit:                  ; preds = %do.end.i, %entry.dpaa2_switch_teardown_irqs.exit_crit_edge
  tail call void @fsl_mc_free_irqs(ptr noundef %sw_dev) #15
  %6 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mc_io.i, align 4
  %8 = ptrtoint ptr %dpsw_handle.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dpsw_handle.i, align 8
  %call2 = tail call i32 @dpsw_disable(ptr noundef %7, i32 noundef 0, i16 noundef zeroext %9) #15
  %num_ifs = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_ifs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp24.not = icmp eq i16 %11, 0
  br i1 %cmp24.not, label %dpaa2_switch_teardown_irqs.exit.for.end_crit_edge, label %for.body.lr.ph

dpaa2_switch_teardown_irqs.exit.for.end_crit_edge: ; preds = %dpaa2_switch_teardown_irqs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %dpaa2_switch_teardown_irqs.exit
  %ports = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %12 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 %i.025
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  tail call void @unregister_netdev(ptr noundef %17) #15
  %conv4 = trunc i32 %i.025 to i16
  tail call fastcc void @dpaa2_switch_remove_port(ptr noundef %1, i16 noundef zeroext %conv4)
  %inc = add nuw nsw i32 %i.025, 1
  %18 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %num_ifs, align 2
  %conv = zext i16 %19 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %dpaa2_switch_teardown_irqs.exit.for.end_crit_edge
  %fdbs = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 17
  %20 = ptrtoint ptr %fdbs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fdbs, align 8
  tail call void @kfree(ptr noundef %21) #15
  %filter_blocks = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 18
  %22 = ptrtoint ptr %filter_blocks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %filter_blocks, align 4
  tail call void @kfree(ptr noundef %23) #15
  %ports5 = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %ports5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ports5, align 4
  tail call void @kfree(ptr noundef %25) #15
  tail call fastcc void @dpaa2_switch_teardown(ptr noundef %sw_dev)
  %26 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mc_io.i, align 4
  tail call void @fsl_mc_portal_free(ptr noundef %27) #15
  tail call void @kfree(ptr noundef %1) #15
  %28 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %driver_data.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_get_domain_for_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_mc_portal_allocate(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_poll(ptr noundef %napi, i32 noundef %budget) #1 align 64 {
entry:
  %vlan_tci.i.i = alloca i16, align 2
  %is_last.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -64
  %fqid.i = getelementptr i8, ptr %napi, i32 224
  %store.i = getelementptr i8, ptr %napi, i32 -56
  %type.i = getelementptr i8, ptr %napi, i32 -60
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %cleaned.0 = phi i32 [ 0, %entry ], [ %add, %do.cond.do.body_crit_edge ]
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body
  %retries.0.i = phi i32 [ 0, %do.body ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  %0 = ptrtoint ptr %fqid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fqid.i, align 8
  %2 = ptrtoint ptr %store.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %store.i, align 8
  %call.i = call i32 @dpaa2_io_service_pull_fq(ptr noundef null, i32 noundef %1, ptr noundef %3) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !409
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !410
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -16
  %inc.i = add nuw nsw i32 %retries.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %retries.0.i)
  %cmp9.i = icmp ult i32 %retries.0.i, 1000
  %or.cond.i = select i1 %cmp.i, i1 %cmp9.i, i1 false
  br i1 %or.cond.i, label %do.body.i.do.body.i_crit_edge, label %do.end10.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

do.end10.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  br i1 %tobool.not.i, label %if.end, label %dpaa2_switch_pull_fq.exit, !prof !400

dpaa2_switch_pull_fq.exit:                        ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.150, i32 noundef %call.i) #18
  br label %do.end

if.end:                                           ; preds = %do.end10.i
  %buf_count.i = getelementptr inbounds %struct.ethsw_core, ptr %5, i32 0, i32 14
  %8 = ptrtoint ptr %buf_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5973, i32 %9)
  %cmp.i38 = icmp slt i32 %9, 5973
  br i1 %cmp.i38, label %do.body.preheader.i, label %if.end.dpaa2_switch_refill_bp.exit_crit_edge, !prof !401

if.end.dpaa2_switch_refill_bp.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_refill_bp.exit

do.body.preheader.i:                              ; preds = %if.end
  %bpid.i = getelementptr inbounds %struct.ethsw_core, ptr %5, i32 0, i32 15
  br label %do.body.i40

do.body.i40:                                      ; preds = %if.end.i.do.body.i40_crit_edge, %do.body.preheader.i
  %10 = ptrtoint ptr %bpid.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bpid.i, align 8
  %call.i39 = call fastcc i32 @dpaa2_switch_add_bufs(ptr noundef %5, i16 noundef zeroext %11) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool2.not.i = icmp eq i32 %call.i39, 0
  br i1 %tobool2.not.i, label %do.body.i40.dpaa2_switch_refill_bp.exit_crit_edge, label %if.end.i, !prof !401

do.body.i40.dpaa2_switch_refill_bp.exit_crit_edge: ; preds = %do.body.i40
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_refill_bp.exit

if.end.i:                                         ; preds = %do.body.i40
  %12 = ptrtoint ptr %buf_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_count.i, align 4
  %add.i = add i32 %13, %call.i39
  store i32 %add.i, ptr %buf_count.i, align 4
  %cmp12.i = icmp slt i32 %add.i, 7168
  br i1 %cmp12.i, label %if.end.i.do.body.i40_crit_edge, label %if.end.i.dpaa2_switch_refill_bp.exit_crit_edge

if.end.i.dpaa2_switch_refill_bp.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_refill_bp.exit

if.end.i.do.body.i40_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i40

dpaa2_switch_refill_bp.exit:                      ; preds = %if.end.i.dpaa2_switch_refill_bp.exit_crit_edge, %do.body.i40.dpaa2_switch_refill_bp.exit_crit_edge, %if.end.dpaa2_switch_refill_bp.exit_crit_edge
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_last.i) #15
  %16 = ptrtoint ptr %is_last.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %is_last.i, align 4, !annotation !402
  br label %do.body.i45

do.body.i45:                                      ; preds = %do.cond20.i.do.body.i45_crit_edge, %dpaa2_switch_refill_bp.exit
  %cleaned.0.i = phi i32 [ 0, %dpaa2_switch_refill_bp.exit ], [ %cleaned.1.i, %do.cond20.i.do.body.i45_crit_edge ]
  %retries.0.i42 = phi i32 [ 0, %dpaa2_switch_refill_bp.exit ], [ %retries.1.i, %do.cond20.i.do.body.i45_crit_edge ]
  %17 = ptrtoint ptr %store.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %store.i, align 8
  %call.i43 = call ptr @dpaa2_io_store_next(ptr noundef %18, ptr noundef nonnull %is_last.i) #15
  %tobool.not.i44 = icmp eq ptr %call.i43, null
  br i1 %tobool.not.i44, label %if.then.i, label %if.end13.i, !prof !401

if.then.i:                                        ; preds = %do.body.i45
  %inc.i46 = add i32 %retries.0.i42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %retries.0.i42)
  %cmp.i47 = icmp sgt i32 %retries.0.i42, 999
  br i1 %cmp.i47, label %do.body6.i, label %if.then.i.do.cond20.i_crit_edge

if.then.i.do.cond20.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond20.i

do.body6.i:                                       ; preds = %if.then.i
  %.b36.i = load i1, ptr @dpaa2_switch_store_consume.__print_once, align 1
  br i1 %.b36.i, label %do.body6.i.dpaa2_switch_store_consume.exit_crit_edge, label %if.then8.i

do.body6.i.dpaa2_switch_store_consume.exit_crit_edge: ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_store_consume.exit

if.then8.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @dpaa2_switch_store_consume.__print_once, align 1
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %15, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.152) #18
  br label %dpaa2_switch_store_consume.exit

if.end13.i:                                       ; preds = %do.body.i45
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp14.i = icmp eq i32 %22, 0
  %fd.i.i = getelementptr inbounds %struct.dq, ptr %call.i43, i32 0, i32 11
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 8
  br i1 %cmp14.i, label %if.then15.i, label %if.else.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vlan_tci.i.i) #15
  %25 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %vlan_tci.i.i, align 2, !annotation !402
  %num_ifs.i.i = getelementptr inbounds %struct.ethsw_core, ptr %24, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %num_ifs.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_ifs.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp.i.i = icmp eq i16 %27, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %24, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.154) #18
  br label %err_free_fd.i.i

if.end.i.i:                                       ; preds = %if.then15.i
  %ports.i.i = getelementptr inbounds %struct.ethsw_core, ptr %24, i32 0, i32 8
  %30 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ports.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %format_offset.i.i.i = getelementptr inbounds %struct.dq, ptr %call.i43, i32 0, i32 11, i32 14
  %36 = ptrtoint ptr %format_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %format_offset.i.i.i, align 2
  %38 = and i16 %37, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp6.not.i.i = icmp eq i16 %38, 0
  br i1 %cmp6.not.i.i, label %if.end.i.i.if.end12.i.i_crit_edge, label %if.then8.i.i

if.end.i.i.if.end12.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  %call9.i.i = call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool.not.i.i, label %if.then8.i.i.if.end12.i.i_crit_edge, label %if.then10.i.i

if.then8.i.i.if.end12.i.i_crit_edge:              ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i.i

if.then10.i.i:                                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %35, ptr noundef nonnull @.str.156) #18
  br label %err_free_fd.i.i

if.end12.i.i:                                     ; preds = %if.then8.i.i.if.end12.i.i_crit_edge, %if.end.i.i.if.end12.i.i_crit_edge
  %39 = ptrtoint ptr %format_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %format_offset.i.i.i, align 2
  %41 = and i16 %40, -241
  %42 = call i16 @llvm.bswap.i16(i16 %41) #15
  %43 = ptrtoint ptr %fd.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %fd.i.i, align 8
  %45 = call i64 @llvm.bswap.i64(i64 %44) #15
  %conv.i.i.i.i = trunc i64 %45 to i32
  %46 = and i16 %40, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool.i.not.i.i.i.i = icmp eq i16 %46, 0
  %len1.i.i.i.i = getelementptr inbounds %struct.dq, ptr %call.i43, i32 0, i32 11, i32 8
  %47 = ptrtoint ptr %len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len1.i.i.i.i, align 8
  %49 = and i32 %48, -64768
  %.sink.i.i.i.i = select i1 %tobool.i.not.i.i.i.i, i32 %48, i32 %49
  %50 = call i32 @llvm.bswap.i32(i32 %.sink.i.i.i.i) #15
  %51 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %24, align 8
  %iommu_domain.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %24, i32 0, i32 9
  %53 = ptrtoint ptr %iommu_domain.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iommu_domain.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i.i.i, label %if.end12.i.i.dpaa2_iova_to_virt.exit.i.i.i_crit_edge, label %cond.true.i.i.i.i

if.end12.i.i.dpaa2_iova_to_virt.exit.i.i.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_iova_to_virt.exit.i.i.i

cond.true.i.i.i.i:                                ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i = call i32 @iommu_iova_to_phys(ptr noundef nonnull %54, i32 noundef %conv.i.i.i.i) #15
  br label %dpaa2_iova_to_virt.exit.i.i.i

dpaa2_iova_to_virt.exit.i.i.i:                    ; preds = %cond.true.i.i.i.i, %if.end12.i.i.dpaa2_iova_to_virt.exit.i.i.i_crit_edge
  %cond.i.i.i.i = phi i32 [ %call.i.i.i.i, %cond.true.i.i.i.i ], [ %conv.i.i.i.i, %if.end12.i.i.dpaa2_iova_to_virt.exit.i.i.i_crit_edge ]
  %55 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %cond.i.i.i.i, i32 -2130706432, i32 8454144) #19, !srcloc !404
  %56 = inttoptr i32 %55 to ptr
  call void @dma_unmap_page_attrs(ptr noundef %52, i32 noundef %conv.i.i.i.i, i32 noundef 3840, i32 noundef 2, i32 noundef 0) #15
  %call5.i.i.i = call ptr @build_skb(ptr noundef %56, i32 noundef 4096) #15
  %tobool.not.i.i.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i.i.i, label %dpaa2_switch_build_linear_skb.exit.thread.i.i, label %if.end19.i.i, !prof !401

dpaa2_switch_build_linear_skb.exit.thread.i.i:    ; preds = %dpaa2_iova_to_virt.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.161) #18
  br label %err_free_fd.i.i

if.end19.i.i:                                     ; preds = %dpaa2_iova_to_virt.exit.i.i.i
  %conv.i76.i.i = zext i16 %42 to i32
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call5.i.i.i, i32 0, i32 19
  %57 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %58, i32 %conv.i76.i.i
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call5.i.i.i, i32 0, i32 16
  %59 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %60, i32 %conv.i76.i.i
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %call9.i.i.i = call ptr @skb_put(ptr noundef nonnull %call5.i.i.i, i32 noundef %50) #15
  %buf_count.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %24, i32 0, i32 14
  %61 = ptrtoint ptr %buf_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %buf_count.i.i.i, align 4
  %dec.i.i.i = add i32 %62, -1
  store i32 %dec.i.i.i, ptr %buf_count.i.i.i, align 4
  %63 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call5.i.i.i, i32 0, i32 18
  %65 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %64 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %66 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i77.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call5.i.i.i, i32 0, i32 15, i32 0, i32 21
  %67 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv.i77.i.i, ptr %mac_header.i.i.i, align 2
  %conv.i.i78.i.i = and i32 %sub.ptr.sub.i.i.i, 65535
  %add.ptr.i.i79.i.i = getelementptr i8, ptr %66, i32 %conv.i.i78.i.i
  %h_vlan_TCI.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i.i79.i.i, i32 0, i32 2
  %68 = ptrtoint ptr %h_vlan_TCI.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %h_vlan_TCI.i.i, align 2
  %70 = and i16 %69, 4095
  %pvid.i.i = getelementptr inbounds %struct.ethsw_port_priv, ptr %33, i32 0, i32 6
  %71 = ptrtoint ptr %pvid.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %pvid.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %70, i16 %72)
  %cmp26.i.i = icmp eq i16 %70, %72
  br i1 %cmp26.i.i, label %if.then28.i.i, label %if.end19.i.i.if.end37.i.i_crit_edge

if.end19.i.i.if.end37.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37.i.i

if.then28.i.i:                                    ; preds = %if.end19.i.i
  %call29.i.i = call i32 @__skb_vlan_pop(ptr noundef nonnull %call5.i.i.i, ptr noundef nonnull %vlan_tci.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %tobool30.not.i.i = icmp eq i32 %call29.i.i, 0
  br i1 %tobool30.not.i.i, label %if.then28.i.i.if.end37.i.i_crit_edge, label %do.end34.i.i

if.then28.i.i.if.end37.i.i_crit_edge:             ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37.i.i

do.end34.i.i:                                     ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %73 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %24, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %74, ptr noundef nonnull @.str.158, i32 noundef %call29.i.i) #18
  br label %err_free_fd.i.i

if.end37.i.i:                                     ; preds = %if.then28.i.i.if.end37.i.i_crit_edge, %if.end19.i.i.if.end37.i.i_crit_edge
  %75 = getelementptr inbounds %struct.anon.0, ptr %call5.i.i.i, i32 0, i32 2
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %35, ptr %75, align 8
  %call38.i.i = call zeroext i16 @eth_type_trans(ptr noundef nonnull %call5.i.i.i, ptr noundef %35) #15
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %call5.i.i.i, i32 0, i32 15, i32 0, i32 18
  %77 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %call38.i.i, ptr %protocol.i.i, align 8
  %fdb.i.i = getelementptr inbounds %struct.ethsw_port_priv, ptr %33, i32 0, i32 8
  %78 = ptrtoint ptr %fdb.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fdb.i.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %tobool39.not.i.i = icmp eq ptr %81, null
  %offload_fwd_mark.i.i = getelementptr inbounds %struct.sk_buff, ptr %call5.i.i.i, i32 0, i32 15, i32 0, i32 3
  %82 = ptrtoint ptr %offload_fwd_mark.i.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %bf.load.i.i = load i32, ptr %offload_fwd_mark.i.i, align 2
  %bf.shl.i.i = select i1 %tobool39.not.i.i, i32 0, i32 1048576
  %bf.clear.i.i = and i32 %bf.load.i.i, -1048577
  %bf.set.i.i = or i32 %bf.clear.i.i, %bf.shl.i.i
  store i32 %bf.set.i.i, ptr %offload_fwd_mark.i.i, align 2
  %call45.i.i = call i32 @netif_receive_skb(ptr noundef nonnull %call5.i.i.i) #15
  br label %dpaa2_switch_rx.exit.i

err_free_fd.i.i:                                  ; preds = %do.end34.i.i, %dpaa2_switch_build_linear_skb.exit.thread.i.i, %if.then10.i.i, %do.end.i.i
  %83 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %24, align 8
  %85 = ptrtoint ptr %fd.i.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %fd.i.i, align 8
  %87 = call i64 @llvm.bswap.i64(i64 %86) #15
  %conv.i.i80.i.i = trunc i64 %87 to i32
  %iommu_domain.i81.i.i = getelementptr inbounds %struct.ethsw_core, ptr %24, i32 0, i32 9
  %88 = ptrtoint ptr %iommu_domain.i81.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %iommu_domain.i81.i.i, align 8
  %tobool.not.i.i82.i.i = icmp eq ptr %89, null
  br i1 %tobool.not.i.i82.i.i, label %err_free_fd.i.i.dpaa2_switch_free_fd.exit.i.i_crit_edge, label %cond.true.i.i84.i.i

err_free_fd.i.i.dpaa2_switch_free_fd.exit.i.i_crit_edge: ; preds = %err_free_fd.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_free_fd.exit.i.i

cond.true.i.i84.i.i:                              ; preds = %err_free_fd.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i83.i.i = call i32 @iommu_iova_to_phys(ptr noundef nonnull %89, i32 noundef %conv.i.i80.i.i) #15
  br label %dpaa2_switch_free_fd.exit.i.i

dpaa2_switch_free_fd.exit.i.i:                    ; preds = %cond.true.i.i84.i.i, %err_free_fd.i.i.dpaa2_switch_free_fd.exit.i.i_crit_edge
  %cond.i.i85.i.i = phi i32 [ %call.i.i83.i.i, %cond.true.i.i84.i.i ], [ %conv.i.i80.i.i, %err_free_fd.i.i.dpaa2_switch_free_fd.exit.i.i_crit_edge ]
  %90 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %cond.i.i85.i.i, i32 -2130706432, i32 8454144) #19, !srcloc !404
  %91 = inttoptr i32 %90 to ptr
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %tail.i.i86.i.i = getelementptr inbounds %struct.sk_buff, ptr %93, i32 0, i32 16
  %94 = ptrtoint ptr %tail.i.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tail.i.i86.i.i, align 8
  %sub.ptr.lhs.cast.i87.i.i = ptrtoint ptr %95 to i32
  %sub.ptr.sub.i88.i.i = sub i32 %sub.ptr.lhs.cast.i87.i.i, %90
  call void @dma_unmap_page_attrs(ptr noundef %84, i32 noundef %conv.i.i80.i.i, i32 noundef %sub.ptr.sub.i88.i.i, i32 noundef 1, i32 noundef 0) #15
  call void @consume_skb(ptr noundef %93) #15
  br label %dpaa2_switch_rx.exit.i

dpaa2_switch_rx.exit.i:                           ; preds = %dpaa2_switch_free_fd.exit.i.i, %if.end37.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vlan_tci.i.i) #15
  br label %if.end18.i

if.else.i:                                        ; preds = %if.end13.i
  %96 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %24, align 8
  %98 = ptrtoint ptr %fd.i.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %fd.i.i, align 8
  %100 = call i64 @llvm.bswap.i64(i64 %99) #15
  %conv.i.i.i38.i = trunc i64 %100 to i32
  %iommu_domain.i.i39.i = getelementptr inbounds %struct.ethsw_core, ptr %24, i32 0, i32 9
  %101 = ptrtoint ptr %iommu_domain.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %iommu_domain.i.i39.i, align 8
  %tobool.not.i.i.i40.i = icmp eq ptr %102, null
  br i1 %tobool.not.i.i.i40.i, label %if.else.i.dpaa2_switch_tx_conf.exit.i_crit_edge, label %cond.true.i.i.i42.i

if.else.i.dpaa2_switch_tx_conf.exit.i_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_tx_conf.exit.i

cond.true.i.i.i42.i:                              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i41.i = call i32 @iommu_iova_to_phys(ptr noundef nonnull %102, i32 noundef %conv.i.i.i38.i) #15
  br label %dpaa2_switch_tx_conf.exit.i

dpaa2_switch_tx_conf.exit.i:                      ; preds = %cond.true.i.i.i42.i, %if.else.i.dpaa2_switch_tx_conf.exit.i_crit_edge
  %cond.i.i.i43.i = phi i32 [ %call.i.i.i41.i, %cond.true.i.i.i42.i ], [ %conv.i.i.i38.i, %if.else.i.dpaa2_switch_tx_conf.exit.i_crit_edge ]
  %103 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %cond.i.i.i43.i, i32 -2130706432, i32 8454144) #19, !srcloc !404
  %104 = inttoptr i32 %103 to ptr
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %tail.i.i.i44.i = getelementptr inbounds %struct.sk_buff, ptr %106, i32 0, i32 16
  %107 = ptrtoint ptr %tail.i.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %tail.i.i.i44.i, align 8
  %sub.ptr.lhs.cast.i.i45.i = ptrtoint ptr %108 to i32
  %sub.ptr.sub.i.i46.i = sub i32 %sub.ptr.lhs.cast.i.i45.i, %103
  call void @dma_unmap_page_attrs(ptr noundef %97, i32 noundef %conv.i.i.i38.i, i32 noundef %sub.ptr.sub.i.i46.i, i32 noundef 1, i32 noundef 0) #15
  call void @consume_skb(ptr noundef %106) #15
  br label %if.end18.i

if.end18.i:                                       ; preds = %dpaa2_switch_tx_conf.exit.i, %dpaa2_switch_rx.exit.i
  %inc19.i = add i32 %cleaned.0.i, 1
  br label %do.cond20.i

do.cond20.i:                                      ; preds = %if.end18.i, %if.then.i.do.cond20.i_crit_edge
  %cleaned.1.i = phi i32 [ %cleaned.0.i, %if.then.i.do.cond20.i_crit_edge ], [ %inc19.i, %if.end18.i ]
  %retries.1.i = phi i32 [ %inc.i46, %if.then.i.do.cond20.i_crit_edge ], [ %retries.0.i42, %if.end18.i ]
  %109 = ptrtoint ptr %is_last.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %is_last.i, align 4
  %tobool21.not.i = icmp eq i32 %110, 0
  br i1 %tobool21.not.i, label %do.cond20.i.do.body.i45_crit_edge, label %do.cond20.i.dpaa2_switch_store_consume.exit_crit_edge

do.cond20.i.dpaa2_switch_store_consume.exit_crit_edge: ; preds = %do.cond20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_store_consume.exit

do.cond20.i.do.body.i45_crit_edge:                ; preds = %do.cond20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i45

dpaa2_switch_store_consume.exit:                  ; preds = %do.cond20.i.dpaa2_switch_store_consume.exit_crit_edge, %if.then8.i, %do.body6.i.dpaa2_switch_store_consume.exit_crit_edge
  %retval.0.i = phi i32 [ -110, %if.then8.i ], [ -110, %do.body6.i.dpaa2_switch_store_consume.exit_crit_edge ], [ %cleaned.1.i, %do.cond20.i.dpaa2_switch_store_consume.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_last.i) #15
  %add = add i32 %retval.0.i, %cleaned.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %budget)
  %cmp.not = icmp slt i32 %add, %budget
  br i1 %cmp.not, label %do.cond, label %dpaa2_switch_store_consume.exit.out_crit_edge

dpaa2_switch_store_consume.exit.out_crit_edge:    ; preds = %dpaa2_switch_store_consume.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.cond:                                          ; preds = %dpaa2_switch_store_consume.exit
  %tobool7.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool7.not, label %do.cond.do.end_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %dpaa2_switch_pull_fq.exit
  %cleaned.1 = phi i32 [ %cleaned.0, %dpaa2_switch_pull_fq.exit ], [ %add, %do.cond.do.end_crit_edge ]
  %call8 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %cleaned.1) #15
  %nctx = getelementptr i8, ptr %napi, i32 -48
  br label %do.body9

do.body9:                                         ; preds = %do.body9.do.body9_crit_edge, %do.end
  %retries.0 = phi i32 [ 0, %do.end ], [ %inc, %do.body9.do.body9_crit_edge ]
  %call10 = call i32 @dpaa2_io_service_rearm(ptr noundef null, ptr noundef %nctx) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !411
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !412
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call10)
  %cmp21 = icmp eq i32 %call10, -16
  %inc = add nuw nsw i32 %retries.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %retries.0)
  %cmp22 = icmp ult i32 %retries.0, 1000
  %or.cond = select i1 %cmp21, i1 %cmp22, i1 false
  br i1 %or.cond, label %do.body9.do.body9_crit_edge, label %do.end23

do.body9.do.body9_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body9

do.end23:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #17
  %111 = call i32 @llvm.smax.i32(i32 %cleaned.1, i32 1)
  br label %out

out:                                              ; preds = %do.end23, %dpaa2_switch_store_consume.exit.out_crit_edge
  %work_done.0 = phi i32 [ %111, %do.end23 ], [ %budget, %dpaa2_switch_store_consume.exit.out_crit_edge ]
  ret i32 %work_done.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpaa2_switch_setup_irqs(ptr noundef %sw_dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %sw_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @fsl_mc_allocate_irqs(ptr noundef %sw_dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %sw_dev, ptr noundef nonnull @.str.163) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_count = getelementptr inbounds %struct.fsl_mc_device, ptr %sw_dev, i32 0, i32 6, i32 5
  %2 = ptrtoint ptr %irq_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irq_count, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp.not = icmp eq i8 %3, 2
  br i1 %cmp.not, label %if.end30, label %do.end15, !prof !400

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1543, i32 noundef 9, ptr noundef null) #15
  br label %free_irq

if.end30:                                         ; preds = %if.end
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_io, align 4
  %dpsw_handle = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dpsw_handle, align 8
  %call31 = tail call i32 @dpsw_set_irq_enable(ptr noundef %5, i32 noundef 0, i16 noundef zeroext %7, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end37, label %do.end36

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %sw_dev, ptr noundef nonnull @.str.166, i32 noundef %call31) #18
  br label %free_irq

if.end37:                                         ; preds = %if.end30
  %irqs = getelementptr inbounds %struct.fsl_mc_device, ptr %sw_dev, i32 0, i32 8
  %8 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irqs, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %sw_dev, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end37.dev_name.exit_crit_edge

if.end37.dev_name.exit_crit_edge:                 ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %sw_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sw_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end37.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %17, %if.end.i ], [ %15, %if.end37.dev_name.exit_crit_edge ]
  %call39 = tail call i32 @devm_request_threaded_irq(ptr noundef %sw_dev, i32 noundef %13, ptr noundef null, ptr noundef nonnull @dpaa2_switch_irq0_handler_thread, i32 noundef 24576, ptr noundef %retval.0.i, ptr noundef %sw_dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end45, label %do.end44

do.end44:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %sw_dev, ptr noundef nonnull @.str.169, i32 noundef %call39) #18
  br label %free_irq

if.end45:                                         ; preds = %dev_name.exit
  %18 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mc_io, align 4
  %20 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %dpsw_handle, align 8
  %call48 = tail call i32 @dpsw_set_irq_mask(ptr noundef %19, i32 noundef 0, i16 noundef zeroext %21, i8 noundef zeroext 0, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end54, label %do.end53

do.end53:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %sw_dev, ptr noundef nonnull @.str.172, i32 noundef %call48) #18
  br label %free_devm_irq

if.end54:                                         ; preds = %if.end45
  %22 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mc_io, align 4
  %24 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %dpsw_handle, align 8
  %call57 = tail call i32 @dpsw_set_irq_enable(ptr noundef %23, i32 noundef 0, i16 noundef zeroext %25, i8 noundef zeroext 0, i8 noundef zeroext 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end54.cleanup_crit_edge, label %do.end62

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end62:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %sw_dev, ptr noundef nonnull @.str.175, i32 noundef %call57) #18
  br label %free_devm_irq

free_devm_irq:                                    ; preds = %do.end62, %do.end53
  %err.0 = phi i32 [ %call48, %do.end53 ], [ %call57, %do.end62 ]
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %11, align 4
  tail call void @devm_free_irq(ptr noundef %sw_dev, i32 noundef %27, ptr noundef %sw_dev) #15
  br label %free_irq

free_irq:                                         ; preds = %free_devm_irq, %do.end44, %do.end36, %do.end15
  %err.1 = phi i32 [ -22, %do.end15 ], [ %call31, %do.end36 ], [ %call39, %do.end44 ], [ %err.0, %free_devm_irq ]
  tail call void @fsl_mc_free_irqs(ptr noundef %sw_dev) #15
  br label %cleanup

cleanup:                                          ; preds = %free_irq, %if.end54.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %err.1, %free_irq ], [ 0, %if.end54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dpaa2_switch_teardown_irqs(ptr noundef %sw_dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %sw_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_io, align 4
  %dpsw_handle = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dpsw_handle, align 8
  %call2 = tail call i32 @dpsw_set_irq_enable(ptr noundef %3, i32 noundef 0, i16 noundef zeroext %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %sw_dev, ptr noundef nonnull @.str.166, i32 noundef %call2) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @fsl_mc_free_irqs(ptr noundef %sw_dev) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_disable(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dpaa2_switch_remove_port(ptr nocapture noundef readonly %ethsw, i16 noundef zeroext %port_idx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.ethsw_core, ptr %ethsw, i32 0, i32 8
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %idxprom = zext i16 %port_idx to i32
  %arrayidx = getelementptr ptr, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @rtnl_lock() #15
  %mac.i.i = getelementptr inbounds %struct.ethsw_port_priv, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %mac.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %entry.dpaa2_switch_port_disconnect_mac.exit_crit_edge, label %land.lhs.true.i.i

entry.dpaa2_switch_port_disconnect_mac.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_disconnect_mac.exit

land.lhs.true.i.i:                                ; preds = %entry
  %link_type.i.i = getelementptr inbounds %struct.dpaa2_mac, ptr %5, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %link_type.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %link_type.i.i, align 4
  %8 = and i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %switch.i.i = icmp eq i32 %8, 2
  br i1 %switch.i.i, label %if.then.i, label %land.lhs.true.i.i.if.end.i_crit_edge

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dpaa2_mac_disconnect(ptr noundef nonnull %5) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.i.if.end.i_crit_edge
  %9 = ptrtoint ptr %mac.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr.i = load ptr, ptr %mac.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool.i.not.i, label %if.end.i.dpaa2_switch_port_disconnect_mac.exit_crit_edge, label %if.end3.i

if.end.i.dpaa2_switch_port_disconnect_mac.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_disconnect_mac.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dpaa2_mac_close(ptr noundef nonnull %.pr.i) #15
  %10 = ptrtoint ptr %mac.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mac.i.i, align 4
  tail call void @kfree(ptr noundef %11) #15
  %12 = ptrtoint ptr %mac.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %mac.i.i, align 4
  br label %dpaa2_switch_port_disconnect_mac.exit

dpaa2_switch_port_disconnect_mac.exit:            ; preds = %if.end3.i, %if.end.i.dpaa2_switch_port_disconnect_mac.exit_crit_edge, %entry.dpaa2_switch_port_disconnect_mac.exit_crit_edge
  tail call void @rtnl_unlock() #15
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  tail call void @free_netdev(ptr noundef %14) #15
  %15 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ports, align 4
  %arrayidx3 = getelementptr ptr, ptr %16, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dpaa2_switch_teardown(ptr noundef %sw_dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %sw_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mc_io.i = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_io.i, align 4
  %dpsw_handle.i = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dpsw_handle.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dpsw_handle.i, align 8
  %call.i = tail call i32 @dpsw_ctrl_if_disable(ptr noundef %3, i32 noundef 0, i16 noundef zeroext %5) #15
  %nctx.i.i = getelementptr %struct.ethsw_core, ptr %1, i32 0, i32 12, i32 0, i32 3
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void @dpaa2_io_service_deregister(ptr noundef null, ptr noundef %nctx.i.i, ptr noundef %7) #15
  %nctx.1.i.i = getelementptr %struct.ethsw_core, ptr %1, i32 0, i32 12, i32 1, i32 3
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void @dpaa2_io_service_deregister(ptr noundef null, ptr noundef %nctx.1.i.i, ptr noundef %9) #15
  %store.i.i = getelementptr %struct.ethsw_core, ptr %1, i32 0, i32 12, i32 0, i32 2
  %10 = ptrtoint ptr %store.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %store.i.i, align 8
  tail call void @dpaa2_io_store_destroy(ptr noundef %11) #15
  %store.1.i.i = getelementptr %struct.ethsw_core, ptr %1, i32 0, i32 12, i32 1, i32 2
  %12 = ptrtoint ptr %store.1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %store.1.i.i, align 8
  tail call void @dpaa2_io_store_destroy(ptr noundef %13) #15
  tail call fastcc void @dpaa2_switch_drain_bp(ptr noundef %1) #15
  %14 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mc_io.i, align 4
  %dpbp_dev.i.i = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %dpbp_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dpbp_dev.i.i, align 8
  %mc_handle.i.i = getelementptr inbounds %struct.fsl_mc_device, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %mc_handle.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %mc_handle.i.i, align 8
  %call.i.i = tail call i32 @dpbp_disable(ptr noundef %15, i32 noundef 0, i16 noundef zeroext %19) #15
  %20 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mc_io.i, align 4
  %22 = ptrtoint ptr %dpbp_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dpbp_dev.i.i, align 8
  %mc_handle3.i.i = getelementptr inbounds %struct.fsl_mc_device, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %mc_handle3.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mc_handle3.i.i, align 8
  %call4.i.i = tail call i32 @dpbp_close(ptr noundef %21, i32 noundef 0, i16 noundef zeroext %25) #15
  %26 = ptrtoint ptr %dpbp_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dpbp_dev.i.i, align 8
  tail call void @fsl_mc_object_free(ptr noundef %27) #15
  %workqueue = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %29) #15
  %30 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mc_io.i, align 4
  %32 = ptrtoint ptr %dpsw_handle.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %dpsw_handle.i, align 8
  %call2 = tail call i32 @dpsw_close(ptr noundef %31, i32 noundef 0, i16 noundef zeroext %33) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %sw_dev, ptr noundef nonnull @.str.183, i32 noundef %call2) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_mc_portal_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_open(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_get_api_version(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_reset(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_fdb_remove(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_close(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpaa2_switch_seed_bp(ptr nocapture noundef %ethsw) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_count = getelementptr inbounds %struct.ethsw_core, ptr %ethsw, i32 0, i32 14
  %bpid = getelementptr inbounds %struct.ethsw_core, ptr %ethsw, i32 0, i32 15
  br label %for.body

for.cond:                                         ; preds = %for.body
  %add3 = add nuw nsw i32 %i.09, 7
  %cmp = icmp ult i32 %i.09, 7161
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %add3, %for.cond.for.body_crit_edge ]
  %0 = ptrtoint ptr %bpid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bpid, align 8
  %call = tail call fastcc i32 @dpaa2_switch_add_bufs(ptr noundef %ethsw, i16 noundef zeroext %1)
  %2 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_count, align 4
  %add = add i32 %3, %call
  store i32 %add, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add)
  %cmp1 = icmp slt i32 %add, 7
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %for.cond, !prof !401

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_ctrl_if_enable(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dpaa2_switch_drain_bp(ptr nocapture noundef readonly %ethsw) unnamed_addr #1 align 64 {
entry:
  %buf_array = alloca [7 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %buf_array) #15
  %0 = call ptr @memset(ptr %buf_array, i32 255, i32 56)
  %bpid = getelementptr inbounds %struct.ethsw_core, ptr %ethsw, i32 0, i32 15
  %1 = ptrtoint ptr %bpid to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %bpid, align 8
  %call13 = call i32 @dpaa2_io_service_acquire(ptr noundef null, i16 noundef zeroext %2, ptr noundef nonnull %buf_array, i32 noundef 7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %entry.do.end_crit_edge, label %if.end.lr.ph

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.end.lr.ph:                                     ; preds = %entry
  %iommu_domain.i = getelementptr inbounds %struct.ethsw_core, ptr %ethsw, i32 0, i32 9
  br label %if.end

do.body.loopexit:                                 ; preds = %dpaa2_iova_to_virt.exit.i
  %3 = ptrtoint ptr %bpid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %bpid, align 8
  %call = call i32 @dpaa2_io_service_acquire(ptr noundef null, i16 noundef zeroext %4, ptr noundef nonnull %buf_array, i32 noundef 7) #15
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body.loopexit.do.end_crit_edge, label %do.body.loopexit.if.end_crit_edge

do.body.loopexit.if.end_crit_edge:                ; preds = %do.body.loopexit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.body.loopexit.do.end_crit_edge:                ; preds = %do.body.loopexit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %do.body.loopexit.do.end_crit_edge, %entry.do.end_crit_edge
  %call.lcssa = phi i32 [ %call13, %entry.do.end_crit_edge ], [ %call, %do.body.loopexit.do.end_crit_edge ]
  %5 = ptrtoint ptr %ethsw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ethsw, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.139, i32 noundef %call.lcssa) #18
  br label %cleanup

if.end:                                           ; preds = %do.body.loopexit.if.end_crit_edge, %if.end.lr.ph
  %call15 = phi i32 [ %call13, %if.end.lr.ph ], [ %call, %do.body.loopexit.if.end_crit_edge ]
  %7 = ptrtoint ptr %ethsw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ethsw, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp9.i.not = icmp eq i32 %call15, 0
  br i1 %cmp9.i.not, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.i:                                       ; preds = %dpaa2_iova_to_virt.exit.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %dpaa2_iova_to_virt.exit.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %iommu_domain.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iommu_domain.i, align 8
  %arrayidx.i = getelementptr i64, ptr %buf_array, i32 %i.010.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx.i, align 8
  %conv.i = trunc i64 %12 to i32
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %for.body.i.dpaa2_iova_to_virt.exit.i_crit_edge, label %cond.true.i.i

for.body.i.dpaa2_iova_to_virt.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_iova_to_virt.exit.i

cond.true.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i = call i32 @iommu_iova_to_phys(ptr noundef nonnull %10, i32 noundef %conv.i) #15
  br label %dpaa2_iova_to_virt.exit.i

dpaa2_iova_to_virt.exit.i:                        ; preds = %cond.true.i.i, %for.body.i.dpaa2_iova_to_virt.exit.i_crit_edge
  %cond.i.i = phi i32 [ %call.i.i, %cond.true.i.i ], [ %conv.i, %for.body.i.dpaa2_iova_to_virt.exit.i_crit_edge ]
  %13 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %cond.i.i, i32 -2130706432, i32 8454144) #19, !srcloc !404
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx.i, align 8
  %conv3.i = trunc i64 %15 to i32
  call void @dma_unmap_page_attrs(ptr noundef %8, i32 noundef %conv3.i, i32 noundef 3840, i32 noundef 2, i32 noundef 0) #15
  call void @free_pages(i32 noundef %13, i32 noundef 0) #15
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call15
  br i1 %exitcond.not.i, label %do.body.loopexit, label %dpaa2_iova_to_virt.exit.i.for.body.i_crit_edge

dpaa2_iova_to_virt.exit.i.for.body.i_crit_edge:   ; preds = %dpaa2_iova_to_virt.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %buf_array) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dpaa2_switch_free_dpio(ptr noundef %ethsw) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nctx = getelementptr %struct.ethsw_core, ptr %ethsw, i32 0, i32 12, i32 0, i32 3
  %0 = ptrtoint ptr %ethsw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethsw, align 8
  tail call void @dpaa2_io_service_deregister(ptr noundef null, ptr noundef %nctx, ptr noundef %1) #15
  %nctx.1 = getelementptr %struct.ethsw_core, ptr %ethsw, i32 0, i32 12, i32 1, i32 3
  %2 = ptrtoint ptr %ethsw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ethsw, align 8
  tail call void @dpaa2_io_service_deregister(ptr noundef null, ptr noundef %nctx.1, ptr noundef %3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_ctrl_if_get_attributes(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_mc_object_allocate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpbp_open(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpbp_reset(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpbp_enable(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpbp_get_attributes(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_ctrl_if_set_pools(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpbp_disable(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpbp_close(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_mc_object_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpaa2_io_store_create(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpaa2_io_store_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpaa2_switch_fqdan_cb(ptr noundef %nctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %napi = getelementptr i8, ptr %nctx, i32 48
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #15
  br i1 %call.i, label %if.then.i, label %entry.napi_schedule.exit_crit_edge

entry.napi_schedule.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__napi_schedule(ptr noundef %napi) #15
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %entry.napi_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_io_service_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_ctrl_if_set_queue(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpaa2_io_service_deregister(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpaa2_switch_add_bufs(ptr nocapture noundef readonly %ethsw, i16 noundef zeroext %bpid) unnamed_addr #1 align 64 {
entry:
  %buf_array = alloca [7 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ethsw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethsw, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %buf_array) #15
  %2 = call ptr @memset(ptr %buf_array, i32 255, i32 56)
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %entry
  %i.058 = phi i32 [ 0, %entry ], [ %inc, %if.end9.for.body_crit_edge ]
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 404000, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  %tobool.not = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.134) #18
  br label %err_alloc

if.end:                                           ; preds = %for.body
  %call2 = tail call i32 @dma_map_page_attrs(ptr noundef %1, ptr noundef nonnull %call38.i.i.i.i, i32 noundef 0, i32 noundef 3840, i32 noundef 2, i32 noundef 0) #15
  tail call void @debug_dma_mapping_error(ptr noundef %1, i32 noundef %call2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp.i.not = icmp eq i32 %call2, -1
  br i1 %cmp.i.not, label %do.end8, label %if.end9

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22) #18
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i, i32 noundef 0) #15
  br label %err_alloc

if.end9:                                          ; preds = %if.end
  %conv = zext i32 %call2 to i64
  %arrayidx = getelementptr [7 x i64], ptr %buf_array, i32 0, i32 %i.058
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %arrayidx, align 8
  %inc = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %if.end9.release_bufs_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end9.release_bufs_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %release_bufs

release_bufs:                                     ; preds = %err_alloc.release_bufs_crit_edge, %if.end9.release_bufs_crit_edge
  %i.055 = phi i32 [ %i.058, %err_alloc.release_bufs_crit_edge ], [ 7, %if.end9.release_bufs_crit_edge ]
  %call1059 = call i32 @dpaa2_io_service_release(ptr noundef null, i16 noundef zeroext %bpid, ptr noundef nonnull %buf_array, i32 noundef %i.055) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call1059)
  %cmp1160.not = icmp eq i32 %call1059, -16
  br i1 %cmp1160.not, label %release_bufs.do.end22_crit_edge, label %release_bufs.while.end_crit_edge

release_bufs.while.end_crit_edge:                 ; preds = %release_bufs
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

release_bufs.do.end22_crit_edge:                  ; preds = %release_bufs
  br label %do.end22

do.end22:                                         ; preds = %do.end22.do.end22_crit_edge, %release_bufs.do.end22_crit_edge
  %retries.061 = phi i32 [ %inc13, %do.end22.do.end22_crit_edge ], [ 0, %release_bufs.do.end22_crit_edge ]
  %inc13 = add nuw nsw i32 %retries.061, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !413
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !414
  %call10 = call i32 @dpaa2_io_service_release(ptr noundef null, i16 noundef zeroext %bpid, ptr noundef nonnull %buf_array, i32 noundef %i.055) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call10)
  %cmp11 = icmp ne i32 %call10, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 998, i32 %retries.061)
  %cmp14 = icmp ugt i32 %retries.061, 998
  %or.cond = select i1 %cmp11, i1 true, i1 %cmp14
  br i1 %or.cond, label %do.end22.while.end_crit_edge, label %do.end22.do.end22_crit_edge

do.end22.do.end22_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end22

do.end22.while.end_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %do.end22.while.end_crit_edge, %release_bufs.while.end_crit_edge
  %call10.lcssa = phi i32 [ %call1059, %release_bufs.while.end_crit_edge ], [ %call10, %do.end22.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.lcssa)
  %tobool27.not = icmp eq i32 %call10.lcssa, 0
  br i1 %tobool27.not, label %while.end.cleanup_crit_edge, label %if.then28

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then28:                                        ; preds = %while.end
  %4 = ptrtoint ptr %ethsw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ethsw, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.055)
  %cmp9.i.not = icmp eq i32 %i.055, 0
  br i1 %cmp9.i.not, label %if.then28.cleanup_crit_edge, label %for.body.lr.ph.i

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.then28
  %iommu_domain.i = getelementptr inbounds %struct.ethsw_core, ptr %ethsw, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %dpaa2_iova_to_virt.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %dpaa2_iova_to_virt.exit.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %iommu_domain.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iommu_domain.i, align 8
  %arrayidx.i = getelementptr i64, ptr %buf_array, i32 %i.010.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.i, align 8
  %conv.i = trunc i64 %9 to i32
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %for.body.i.dpaa2_iova_to_virt.exit.i_crit_edge, label %cond.true.i.i

for.body.i.dpaa2_iova_to_virt.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_iova_to_virt.exit.i

cond.true.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i = call i32 @iommu_iova_to_phys(ptr noundef nonnull %7, i32 noundef %conv.i) #15
  br label %dpaa2_iova_to_virt.exit.i

dpaa2_iova_to_virt.exit.i:                        ; preds = %cond.true.i.i, %for.body.i.dpaa2_iova_to_virt.exit.i_crit_edge
  %cond.i.i = phi i32 [ %call.i.i, %cond.true.i.i ], [ %conv.i, %for.body.i.dpaa2_iova_to_virt.exit.i_crit_edge ]
  %10 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %cond.i.i, i32 -2130706432, i32 8454144) #19, !srcloc !404
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx.i, align 8
  %conv3.i = trunc i64 %12 to i32
  call void @dma_unmap_page_attrs(ptr noundef %5, i32 noundef %conv3.i, i32 noundef 3840, i32 noundef 2, i32 noundef 0) #15
  call void @free_pages(i32 noundef %10, i32 noundef 0) #15
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %i.055
  br i1 %exitcond.not.i, label %dpaa2_iova_to_virt.exit.i.cleanup_crit_edge, label %dpaa2_iova_to_virt.exit.i.for.body.i_crit_edge

dpaa2_iova_to_virt.exit.i.for.body.i_crit_edge:   ; preds = %dpaa2_iova_to_virt.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

dpaa2_iova_to_virt.exit.i.cleanup_crit_edge:      ; preds = %dpaa2_iova_to_virt.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

err_alloc:                                        ; preds = %do.end8, %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.058)
  %tobool31.not = icmp eq i32 %i.058, 0
  br i1 %tobool31.not, label %err_alloc.cleanup_crit_edge, label %err_alloc.release_bufs_crit_edge

err_alloc.release_bufs_crit_edge:                 ; preds = %err_alloc
  call void @__sanitizer_cov_trace_pc() #17
  br label %release_bufs

err_alloc.cleanup_crit_edge:                      ; preds = %err_alloc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %err_alloc.cleanup_crit_edge, %dpaa2_iova_to_virt.exit.i.cleanup_crit_edge, %if.then28.cleanup_crit_edge, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %i.055, %while.end.cleanup_crit_edge ], [ 0, %err_alloc.cleanup_crit_edge ], [ 0, %if.then28.cleanup_crit_edge ], [ 0, %dpaa2_iova_to_virt.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %buf_array) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_io_service_release(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_io_service_acquire(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpaa2_switch_port_set_mac_addr(ptr nocapture noundef readonly %port_priv) unnamed_addr #1 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  %mac_addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ethsw_data = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 2
  %0 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethsw_data, align 4
  %2 = ptrtoint ptr %port_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_priv, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 133, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr) #15
  %6 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 4
  %features = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 6
  %7 = call ptr @memset(ptr %mac_addr, i32 255, i32 6)
  %8 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %features, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mc_io, align 4
  %dpsw_handle = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dpsw_handle, align 8
  %idx = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 1
  %14 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %idx, align 4
  %call = call i32 @dpsw_if_get_port_mac_addr(ptr noundef %11, i32 noundef 0, i16 noundef zeroext %13, i16 noundef zeroext %15, ptr noundef nonnull %mac_addr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.146) #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %16 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mac_addr, align 4
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %6, align 4
  %conv.i = zext i16 %19 to i32
  %or.i = or i32 %17, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  call void @dev_addr_mod(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %mac_addr, i32 noundef 6) #15
  br label %cleanup

if.else:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #15
  %20 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #15
  %21 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %addr.i, align 1
  %23 = and i8 %22, -4
  %24 = or i8 %23, 2
  store i8 %24, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #15
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 55
  %25 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #15
  %.b38 = load i1, ptr @dpaa2_switch_port_set_mac_addr.__print_once, align 1
  br i1 %.b38, label %if.else.do.end23_crit_edge, label %if.then11

if.else.do.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end23

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @dpaa2_switch_port_set_mac_addr.__print_once, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpaa2_switch_port_set_mac_addr.__UNIQUE_ID_ddebug520, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpaa2_switch_port_set_mac_addr, %if.then17)) #15
          to label %do.end23 [label %if.then17], !srcloc !415

if.then17:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dpaa2_switch_port_set_mac_addr.__UNIQUE_ID_ddebug520, ptr noundef %5, ptr noundef nonnull @.str.148) #15
  br label %do.end23

do.end23:                                         ; preds = %if.then17, %if.then11, %if.else.do.end23_crit_edge
  %26 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %addr_assign_type.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.then7, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end23 ], [ 0, %if.then7 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpaa2_switch_port_connect_mac(ptr nocapture noundef %port_priv) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_priv, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %idx = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 1
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %idx, align 4
  %call = tail call ptr @fsl_mc_get_endpoint(ptr noundef %3, i16 noundef zeroext %5) #15
  %cmp = icmp eq ptr %call, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %type = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type, align 4
  %cmp5.not = icmp eq ptr %7, @fsl_mc_bus_dpmac_type
  br i1 %cmp5.not, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 120) #21
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %call7.i.i, align 8
  %ethsw_data = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 2
  %10 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ethsw_data, align 4
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mc_io, align 4
  %mc_io11 = getelementptr inbounds %struct.dpaa2_mac, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %mc_io11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %mc_io11, align 4
  %15 = ptrtoint ptr %port_priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port_priv, align 4
  %net_dev = getelementptr inbounds %struct.dpaa2_mac, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %net_dev to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %net_dev, align 8
  %call13 = tail call i32 @dpaa2_mac_open(ptr noundef nonnull %call7.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.i, label %if.end10.err_free_mac_crit_edge

if.end10.err_free_mac_crit_edge:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_free_mac

land.lhs.true.i:                                  ; preds = %if.end10
  %mac17 = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 13
  %18 = ptrtoint ptr %mac17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %mac17, align 4
  %link_type.i = getelementptr inbounds %struct.dpaa2_mac, ptr %call7.i.i, i32 0, i32 4, i32 3
  %19 = ptrtoint ptr %link_type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %link_type.i, align 4
  %21 = and i32 %20, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %switch.i = icmp eq i32 %21, 2
  br i1 %switch.i, label %if.then19, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then19:                                        ; preds = %land.lhs.true.i
  %call20 = tail call i32 @dpaa2_mac_connect(ptr noundef nonnull %call7.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.cleanup_crit_edge, label %if.then22

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %port_priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port_priv, align 4
  %24 = inttoptr i32 %call20 to ptr
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.149, ptr noundef nonnull %24) #18
  tail call void @dpaa2_mac_close(ptr noundef nonnull %call7.i.i) #15
  %25 = ptrtoint ptr %mac17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %mac17, align 4
  br label %err_free_mac

err_free_mac:                                     ; preds = %if.then22, %if.end10.err_free_mac_crit_edge
  %err.0 = phi i32 [ %call13, %if.end10.err_free_mac_crit_edge ], [ %call20, %if.then22 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %err_free_mac, %if.then19.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_free_mac ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ 0, %if.then19.cleanup_crit_edge ], [ -517, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_if_get_attributes(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_fdb_add(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_acl_add(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_switch_acl_entry_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_if_get_port_mac_addr(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsl_mc_get_endpoint(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_mac_open(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_mac_connect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpaa2_mac_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_io_service_rearm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_io_service_pull_fq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpaa2_io_store_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_vlan_pop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_mc_allocate_irqs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_set_irq_enable(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_switch_irq0_handler_thread(i32 noundef %irq_num, ptr noundef %arg) #1 align 64 {
entry:
  %state.i = alloca %struct.dpsw_link_state, align 8
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %arg, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #15
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mc_io, align 4
  %dpsw_handle = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %dpsw_handle, align 8
  %call1 = call i32 @dpsw_get_irq_status(ptr noundef %4, i32 noundef 0, i16 noundef zeroext %6, i8 noundef zeroext 0, ptr noundef nonnull %status) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %arg, ptr noundef nonnull @.str.177, i32 noundef %call1) #18
  br label %out

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %shr = lshr i32 %8, 16
  %ports = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr ptr, ptr %10, i32 %shr
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %and2 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then4:                                         ; preds = %if.end
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #15
  %15 = call ptr @memset(ptr %state.i, i32 255, i32 24)
  %mac.i.i = getelementptr i8, ptr %14, i32 6432
  %16 = ptrtoint ptr %mac.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mac.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.then4.if.end.i_crit_edge, label %land.lhs.true.i.i

if.then4.if.end.i_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i.i:                                ; preds = %if.then4
  %link_type.i.i = getelementptr inbounds %struct.dpaa2_mac, ptr %17, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %link_type.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %link_type.i.i, align 4
  %20 = and i32 %19, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %switch.i.i = icmp eq i32 %20, 2
  br i1 %switch.i.i, label %land.lhs.true.i.i.dpaa2_switch_port_link_state_update.exit_crit_edge, label %land.lhs.true.i.i.if.end.i_crit_edge

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i.i.dpaa2_switch_port_link_state_update.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_link_state_update.exit

if.end.i:                                         ; preds = %land.lhs.true.i.i.if.end.i_crit_edge, %if.then4.if.end.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 6
  %21 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i.dpaa2_switch_port_link_state_update.exit_crit_edge, label %if.end4.i

if.end.i.dpaa2_switch_port_link_state_update.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_link_state_update.exit

if.end4.i:                                        ; preds = %if.end.i
  %ethsw_data.i = getelementptr i8, ptr %14, i32 2312
  %23 = ptrtoint ptr %ethsw_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ethsw_data.i, align 4
  %mc_io.i = getelementptr inbounds %struct.ethsw_core, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mc_io.i, align 4
  %dpsw_handle.i = getelementptr inbounds %struct.ethsw_core, ptr %24, i32 0, i32 2
  %27 = ptrtoint ptr %dpsw_handle.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %dpsw_handle.i, align 8
  %idx.i = getelementptr i8, ptr %14, i32 2308
  %29 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %idx.i, align 4
  %call6.i = call i32 @dpsw_if_get_link_state(ptr noundef %26, i32 noundef 0, i16 noundef zeroext %28, i16 noundef zeroext %30, ptr noundef nonnull %state.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.35, i32 noundef %call6.i) #18
  br label %dpaa2_switch_port_link_state_update.exit

if.end8.i:                                        ; preds = %if.end4.i
  %up.i = getelementptr inbounds %struct.dpsw_link_state, ptr %state.i, i32 0, i32 2
  %31 = ptrtoint ptr %up.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %up.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp.i = icmp ugt i8 %32, 1
  br i1 %cmp.i, label %land.rhs.i, label %if.end8.i.if.end40.i_crit_edge

if.end8.i.if.end40.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40.i

land.rhs.i:                                       ; preds = %if.end8.i
  %.b1.i = load i1, ptr @dpaa2_switch_port_link_state_update.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.end40.i_crit_edge, label %if.then18.i, !prof !400

land.rhs.i.if.end40.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40.i

if.then18.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @dpaa2_switch_port_link_state_update.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 624, i32 noundef 9, ptr noundef nonnull @.str.36) #15
  %33 = ptrtoint ptr %up.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %.pr.i = load i8, ptr %up.i, align 8
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then18.i, %land.rhs.i.if.end40.i_crit_edge, %if.end8.i.if.end40.i_crit_edge
  %34 = phi i8 [ %32, %if.end8.i.if.end40.i_crit_edge ], [ %.pr.i, %if.then18.i ], [ %32, %land.rhs.i.if.end40.i_crit_edge ]
  %link_state.i = getelementptr i8, ptr %14, i32 2316
  %35 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %link_state.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %36)
  %cmp51.not.i = icmp eq i8 %34, %36
  br i1 %cmp51.not.i, label %if.end40.i.dpaa2_switch_port_link_state_update.exit_crit_edge, label %if.then53.i

if.end40.i.dpaa2_switch_port_link_state_update.exit_crit_edge: ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dpaa2_switch_port_link_state_update.exit

if.then53.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool55.not.i = icmp eq i8 %34, 0
  br i1 %tobool55.not.i, label %if.else.i, label %if.then56.i

if.then56.i:                                      ; preds = %if.then53.i
  call void @netif_carrier_on(ptr noundef %14) #15
  %num_tx_queues.i.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 104
  %37 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_tx_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp4.not.i.i = icmp eq i32 %38, 0
  br i1 %cmp4.not.i.i, label %if.then56.i.if.end57.i_crit_edge, label %for.body.lr.ph.i.i

if.then56.i.if.end57.i_crit_edge:                 ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57.i

for.body.lr.ph.i.i:                               ; preds = %if.then56.i
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 103
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.05.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %39 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr %struct.netdev_queue, ptr %40, i32 %i.05.i.i, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i.i) #15
  %inc.i.i = add nuw i32 %i.05.i.i, 1
  %41 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_tx_queues.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %42
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end57.i_crit_edge

for.body.i.i.if.end57.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

if.else.i:                                        ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @netif_carrier_off(ptr noundef %14) #15
  call void @netif_tx_stop_all_queues(ptr noundef %14) #15
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.else.i, %for.body.i.i.if.end57.i_crit_edge, %if.then56.i.if.end57.i_crit_edge
  %43 = ptrtoint ptr %up.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %up.i, align 8
  %45 = ptrtoint ptr %link_state.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %link_state.i, align 4
  br label %dpaa2_switch_port_link_state_update.exit

dpaa2_switch_port_link_state_update.exit:         ; preds = %if.end57.i, %if.end40.i.dpaa2_switch_port_link_state_update.exit_crit_edge, %if.then7.i, %if.end.i.dpaa2_switch_port_link_state_update.exit_crit_edge, %land.lhs.true.i.i.dpaa2_switch_port_link_state_update.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #15
  %call6 = call fastcc i32 @dpaa2_switch_port_set_mac_addr(ptr noundef %12)
  br label %if.end7

if.end7:                                          ; preds = %dpaa2_switch_port_link_state_update.exit, %if.end.if.end7_crit_edge
  %46 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %status, align 4
  %and8 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.out_crit_edge, label %if.then10

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then10:                                        ; preds = %if.end7
  call void @rtnl_lock() #15
  %mac.i = getelementptr inbounds %struct.ethsw_port_priv, ptr %12, i32 0, i32 13
  %48 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mac.i, align 4
  %tobool.i.not = icmp eq ptr %49, null
  br i1 %tobool.i.not, label %if.else, label %land.lhs.true.i.i42

land.lhs.true.i.i42:                              ; preds = %if.then10
  %link_type.i.i40 = getelementptr inbounds %struct.dpaa2_mac, ptr %49, i32 0, i32 4, i32 3
  %50 = ptrtoint ptr %link_type.i.i40 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %link_type.i.i40, align 4
  %52 = and i32 %51, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %switch.i.i41 = icmp eq i32 %52, 2
  br i1 %switch.i.i41, label %if.then.i, label %land.lhs.true.i.i42.if.end.i45_crit_edge

land.lhs.true.i.i42.if.end.i45_crit_edge:         ; preds = %land.lhs.true.i.i42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i45

if.then.i:                                        ; preds = %land.lhs.true.i.i42
  call void @__sanitizer_cov_trace_pc() #17
  call void @dpaa2_mac_disconnect(ptr noundef nonnull %49) #15
  br label %if.end.i45

if.end.i45:                                       ; preds = %if.then.i, %land.lhs.true.i.i42.if.end.i45_crit_edge
  %53 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr.i43 = load ptr, ptr %mac.i, align 4
  %tobool.i.not.i44 = icmp eq ptr %.pr.i43, null
  br i1 %tobool.i.not.i44, label %if.end.i45.if.end14_crit_edge, label %if.end3.i

if.end.i45.if.end14_crit_edge:                    ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.end3.i:                                        ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #17
  call void @dpaa2_mac_close(ptr noundef nonnull %.pr.i43) #15
  %54 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mac.i, align 4
  call void @kfree(ptr noundef %55) #15
  %56 = ptrtoint ptr %mac.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %mac.i, align 4
  br label %if.end14

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  %call13 = call fastcc i32 @dpaa2_switch_port_connect_mac(ptr noundef %12)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end3.i, %if.end.i45.if.end14_crit_edge
  call void @rtnl_unlock() #15
  br label %out

out:                                              ; preds = %if.end14, %if.end7.out_crit_edge, %do.end
  %57 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mc_io, align 4
  %59 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %dpsw_handle, align 8
  %61 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %status, align 4
  %call18 = call i32 @dpsw_clear_irq_status(ptr noundef %58, i32 noundef 0, i16 noundef zeroext %60, i8 noundef zeroext 0, i32 noundef %62) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %out.if.end24_crit_edge, label %do.end23

out.if.end24_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

do.end23:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %arg, ptr noundef nonnull @.str.180, i32 noundef %call18) #18
  br label %if.end24

if.end24:                                         ; preds = %do.end23, %out.if.end24_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #15
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_set_irq_mask(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_mc_free_irqs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_get_irq_status(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_clear_irq_status(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpaa2_mac_disconnect(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_ctrl_if_disable(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsl_mc_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 194)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 194)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind readonly }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !18, !19, !21, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !84, !86, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !130, !131, !133, !134, !136, !138, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !175, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !195, !196, !197, !199, !200, !202, !203, !205, !206, !208, !209, !211, !212, !214, !215, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !235, !237, !238, !239, !240, !242, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !270, !272, !273, !274, !275, !277, !278, !280, !282, !283, !284, !285, !287, !288, !289, !290, !292, !294, !296, !298, !299, !300, !301, !303, !304, !305, !307, !309, !310, !311, !312, !314, !315, !316, !317, !318, !320, !321, !322, !323, !325, !327, !328, !329, !330, !332, !333, !334, !335, !337, !338, !339, !340, !342, !343, !344, !346, !347, !348, !350, !351, !352, !354, !355, !356, !358, !359, !360, !361, !363, !364, !365, !367, !369, !370, !371, !373, !374, !375, !376, !377, !379, !380, !381, !382, !384, !385, !386, !388, !389}
!llvm.named.register.sp = !{!390}
!llvm.module.flags = !{!391, !392, !393, !394, !395, !396, !397, !398}
!llvm.ident = !{!399}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 1762, i32 22}
!2 = !{ptr @__initcall__kmod_fsl_dpaa2_switch__523_3532_dpaa2_switch_driver_init6, !3, !"__initcall__kmod_fsl_dpaa2_switch__523_3532_dpaa2_switch_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3532, i32 1}
!4 = !{ptr @__exitcall_dpaa2_switch_driver_exit, !5, !"__exitcall_dpaa2_switch_driver_exit", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3533, i32 1}
!6 = !{ptr @__UNIQUE_ID_file524, !7, !"__UNIQUE_ID_file524", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3535, i32 1}
!8 = !{ptr @__UNIQUE_ID_license525, !7, !"__UNIQUE_ID_license525", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description526, !10, !"__UNIQUE_ID_description526", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3536, i32 1}
!11 = !{ptr @dpaa2_switch_port_ops, !12, !"dpaa2_switch_port_ops", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 1403, i32 36}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 700, i32 22}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 652, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 729, i32 22}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 670, i32 2}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 1084, i32 4}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @dpaa2_switch_port_tx._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @dpaa2_switch_port_tx._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 1095, i32 3}
!30 = !{ptr @dpaa2_switch_port_tx._entry.7, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @dpaa2_switch_port_tx._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 1104, i32 3}
!34 = !{ptr @dpaa2_switch_port_tx._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @dpaa2_switch_port_tx._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 1110, i32 3}
!38 = !{ptr @dpaa2_switch_port_tx._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @dpaa2_switch_port_tx._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = distinct !{null, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/skbuff.h", i32 1846, i32 2}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 590, i32 7}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 556, i32 21}
!50 = !{ptr @dpaa2_switch_block_cb_list, !51, !"dpaa2_switch_block_cb_list", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 1176, i32 8}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 1222, i32 22}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 846, i32 23}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 855, i32 23}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/net/netlink.h", i32 991, i32 3}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 755, i32 28}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 202, i32 3}
!64 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @dpaa2_switch_add_vlan._entry, !63, !"_entry", i1 false, i1 false}
!68 = !{ptr @dpaa2_switch_add_vlan._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 293, i32 23}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 306, i32 22}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 318, i32 8}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 240, i32 22}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 261, i32 22}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 220, i32 22}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 224, i32 2}
!83 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 1880, i32 8}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 1891, i32 8}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 390, i32 3}
!90 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @dpaa2_switch_dellink._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @dpaa2_switch_dellink._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3497, i32 3}
!95 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @dpaa2_switch_unregister_notifiers._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @dpaa2_switch_unregister_notifiers._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3502, i32 3}
!100 = !{ptr @dpaa2_switch_unregister_notifiers._entry.43, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @dpaa2_switch_unregister_notifiers._entry_ptr.45, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3506, i32 3}
!104 = !{ptr @dpaa2_switch_unregister_notifiers._entry.46, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @dpaa2_switch_unregister_notifiers._entry_ptr.48, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @dpaa2_switch_port_switchdev_blocking_nb, !107, !"dpaa2_switch_port_switchdev_blocking_nb", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3455, i32 30}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 1823, i32 22}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 465, i32 33}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 489, i32 7}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 1941, i32 22}
!116 = !{ptr @dpaa2_switch_port_attr_set.__msg, !117, !"__msg", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 1725, i32 4}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 369, i32 9}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 1617, i32 33}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 443, i32 7}
!124 = !{ptr @dpaa2_switch_port_pre_bridge_flags.__msg, !125, !"__msg", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 1678, i32 4}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 166, i32 3}
!128 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @dpaa2_switch_fdb_set_egress_flood._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @dpaa2_switch_fdb_set_egress_flood._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @dpaa2_switch_fdb_set_egress_flood._entry.58, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 175, i32 3}
!133 = !{ptr @dpaa2_switch_fdb_set_egress_flood._entry_ptr.59, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @dpaa2_switch_port_switchdev_nb, !135, !"dpaa2_switch_port_switchdev_nb", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3451, i32 30}
!136 = !{ptr @dpaa2_switch_port_event.__key, !137, !"__key", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2276, i32 2}
!138 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.61, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 421, i32 7}
!141 = !{ptr @dpaa2_switch_port_nb, !142, !"dpaa2_switch_port_nb", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3447, i32 30}
!143 = !{ptr @dpaa2_switch_prechangeupper_sanity_checks.__msg, !144, !"__msg", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2145, i32 3}
!145 = !{ptr @dpaa2_switch_prechangeupper_sanity_checks.__msg.62, !146, !"__msg", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2151, i32 3}
!147 = !{ptr @dpaa2_switch_port_bridge_join.__msg, !148, !"__msg", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 1999, i32 4}
!149 = distinct !{null, !150, !"__already_done", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 89, i32 2}
!151 = !{ptr @.str.63, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2080, i32 22}
!153 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2087, i32 22}
!155 = !{ptr @.str.65, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3439, i32 11}
!157 = !{ptr @dpaa2_switch_drv, !158, !"dpaa2_switch_drv", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3437, i32 29}
!159 = !{ptr @dpaa2_switch_match_id_table, !160, !"dpaa2_switch_match_id_table", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3428, i32 38}
!161 = !{ptr @.str.66, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3332, i32 4}
!163 = !{ptr @.str.67, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @dpaa2_switch_probe._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @dpaa2_switch_probe._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.69, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3393, i32 4}
!168 = !{ptr @dpaa2_switch_probe._entry.68, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @dpaa2_switch_probe._entry_ptr.70, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.71, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2956, i32 3}
!172 = !{ptr @.str.72, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @dpaa2_switch_init._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @dpaa2_switch_init._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @dpaa2_switch_init._entry.73, !176, !"_entry", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2963, i32 3}
!177 = !{ptr @dpaa2_switch_init._entry_ptr.74, !176, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.76, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2971, i32 3}
!180 = !{ptr @dpaa2_switch_init._entry.75, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @dpaa2_switch_init._entry_ptr.77, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.79, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2979, i32 3}
!184 = !{ptr @dpaa2_switch_init._entry.78, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @dpaa2_switch_init._entry_ptr.80, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.82, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2994, i32 3}
!188 = !{ptr @dpaa2_switch_init._entry.81, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @dpaa2_switch_init._entry_ptr.83, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @dpaa2_switch_init._entry.84, !191, !"_entry", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3004, i32 4}
!192 = !{ptr @dpaa2_switch_init._entry_ptr.85, !191, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.87, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3011, i32 4}
!195 = !{ptr @dpaa2_switch_init._entry.86, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @dpaa2_switch_init._entry_ptr.88, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @dpaa2_switch_init._entry.89, !198, !"_entry", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3024, i32 4}
!199 = !{ptr @dpaa2_switch_init._entry_ptr.90, !198, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @dpaa2_switch_init._entry.91, !201, !"_entry", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3032, i32 4}
!202 = !{ptr @dpaa2_switch_init._entry_ptr.92, !201, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @dpaa2_switch_init._entry.93, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3039, i32 4}
!205 = !{ptr @dpaa2_switch_init._entry_ptr.94, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @dpaa2_switch_init._entry.95, !207, !"_entry", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3046, i32 3}
!208 = !{ptr @dpaa2_switch_init._entry_ptr.96, !207, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.97, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3050, i32 21}
!211 = !{ptr @.str.98, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.99, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.h", i32 208, i32 3}
!214 = !{ptr @.str.100, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.101, !213, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @dpaa2_switch_supports_cpu_traffic._entry, !213, !"_entry", i1 false, i1 false}
!217 = !{ptr @dpaa2_switch_supports_cpu_traffic._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.103, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.h", i32 213, i32 3}
!220 = !{ptr @dpaa2_switch_supports_cpu_traffic._entry.102, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @dpaa2_switch_supports_cpu_traffic._entry_ptr.104, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.106, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.h", i32 218, i32 3}
!224 = !{ptr @dpaa2_switch_supports_cpu_traffic._entry.105, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @dpaa2_switch_supports_cpu_traffic._entry_ptr.107, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.109, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.h", i32 223, i32 3}
!228 = !{ptr @dpaa2_switch_supports_cpu_traffic._entry.108, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @dpaa2_switch_supports_cpu_traffic._entry_ptr.110, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.111, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2912, i32 3}
!232 = !{ptr @.str.112, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @dpaa2_switch_ctrl_if_setup._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @dpaa2_switch_ctrl_if_setup._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.113, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2466, i32 3}
!237 = !{ptr @.str.114, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @dpaa2_switch_setup_fqs._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @dpaa2_switch_setup_fqs._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.115, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2635, i32 4}
!242 = !{ptr @.str.116, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @dpaa2_switch_setup_dpbp._entry, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @dpaa2_switch_setup_dpbp._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.118, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2643, i32 3}
!247 = !{ptr @dpaa2_switch_setup_dpbp._entry.117, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @dpaa2_switch_setup_dpbp._entry_ptr.119, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.121, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2649, i32 3}
!251 = !{ptr @dpaa2_switch_setup_dpbp._entry.120, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @dpaa2_switch_setup_dpbp._entry_ptr.122, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.124, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2655, i32 3}
!255 = !{ptr @dpaa2_switch_setup_dpbp._entry.123, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @dpaa2_switch_setup_dpbp._entry_ptr.125, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.127, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2662, i32 3}
!259 = !{ptr @dpaa2_switch_setup_dpbp._entry.126, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @dpaa2_switch_setup_dpbp._entry_ptr.128, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.130, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2674, i32 3}
!263 = !{ptr @dpaa2_switch_setup_dpbp._entry.129, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @dpaa2_switch_setup_dpbp._entry_ptr.131, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.132, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2707, i32 4}
!267 = !{ptr @.str.133, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @dpaa2_switch_alloc_rings._entry, !266, !"_entry", i1 false, i1 false}
!269 = !{ptr @dpaa2_switch_alloc_rings._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.134, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2518, i32 4}
!272 = !{ptr @.str.135, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @dpaa2_switch_add_bufs._entry, !271, !"_entry", i1 false, i1 false}
!274 = !{ptr @dpaa2_switch_add_bufs._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @dpaa2_switch_add_bufs._entry.136, !276, !"_entry", i1 false, i1 false}
!276 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2525, i32 4}
!277 = !{ptr @dpaa2_switch_add_bufs._entry_ptr.137, !276, !"_entry_ptr", i1 false, i1 false}
!278 = distinct !{null, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!280 = !{ptr @.str.139, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2612, i32 4}
!282 = !{ptr @.str.140, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @dpaa2_switch_drain_bp._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @dpaa2_switch_drain_bp._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.141, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3248, i32 3}
!287 = !{ptr @.str.142, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @dpaa2_switch_probe_port._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @dpaa2_switch_probe_port._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.143, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3117, i32 22}
!292 = !{ptr @.str.144, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3127, i32 22}
!294 = !{ptr @.str.145, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3156, i32 22}
!296 = !{ptr @.str.146, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 978, i32 3}
!298 = !{ptr @.str.147, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @dpaa2_switch_port_set_mac_addr._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @dpaa2_switch_port_set_mac_addr._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = distinct !{null, !302, !"__print_once", i1 false, i1 false}
!302 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 990, i32 3}
!303 = !{ptr @.str.148, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @dpaa2_switch_port_set_mac_addr.__UNIQUE_ID_ddebug520, !302, !"__UNIQUE_ID_ddebug520", i1 false, i1 false}
!305 = !{ptr @.str.149, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 1459, i32 8}
!307 = !{ptr @.str.150, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2738, i32 3}
!309 = !{ptr @.str.151, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @dpaa2_switch_pull_fq._entry, !308, !"_entry", i1 false, i1 false}
!311 = !{ptr @dpaa2_switch_pull_fq._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!312 = distinct !{null, !313, !"__print_once", i1 false, i1 false}
!313 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2756, i32 5}
!314 = !{ptr @.str.152, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @.str.153, !313, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @dpaa2_switch_store_consume._entry, !313, !"_entry", i1 false, i1 false}
!317 = !{ptr @dpaa2_switch_store_consume._entry_ptr, !313, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.154, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2398, i32 3}
!320 = !{ptr @.str.155, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @dpaa2_switch_rx._entry, !319, !"_entry", i1 false, i1 false}
!322 = !{ptr @dpaa2_switch_rx._entry_ptr, !319, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.156, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2407, i32 23}
!325 = !{ptr @.str.158, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2429, i32 4}
!327 = !{ptr @.str.159, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @dpaa2_switch_rx._entry.157, !326, !"_entry", i1 false, i1 false}
!329 = !{ptr @dpaa2_switch_rx._entry_ptr.160, !326, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.161, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 2365, i32 3}
!332 = !{ptr @.str.162, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @dpaa2_switch_build_linear_skb._entry, !331, !"_entry", i1 false, i1 false}
!334 = !{ptr @dpaa2_switch_build_linear_skb._entry_ptr, !331, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.163, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 1539, i32 3}
!337 = !{ptr @.str.164, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @dpaa2_switch_setup_irqs._entry, !336, !"_entry", i1 false, i1 false}
!339 = !{ptr @dpaa2_switch_setup_irqs._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.166, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 1551, i32 3}
!342 = !{ptr @dpaa2_switch_setup_irqs._entry.165, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @dpaa2_switch_setup_irqs._entry_ptr.167, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.169, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 1562, i32 3}
!346 = !{ptr @dpaa2_switch_setup_irqs._entry.168, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @dpaa2_switch_setup_irqs._entry_ptr.170, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.172, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 1569, i32 3}
!350 = !{ptr @dpaa2_switch_setup_irqs._entry.171, !349, !"_entry", i1 false, i1 false}
!351 = !{ptr @dpaa2_switch_setup_irqs._entry_ptr.173, !349, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.175, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 1576, i32 3}
!354 = !{ptr @dpaa2_switch_setup_irqs._entry.174, !353, !"_entry", i1 false, i1 false}
!355 = !{ptr @dpaa2_switch_setup_irqs._entry_ptr.176, !353, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.177, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 1499, i32 3}
!358 = !{ptr @.str.178, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @dpaa2_switch_irq0_handler_thread._entry, !357, !"_entry", i1 false, i1 false}
!360 = !{ptr @dpaa2_switch_irq0_handler_thread._entry_ptr, !357, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.180, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 1524, i32 3}
!363 = !{ptr @dpaa2_switch_irq0_handler_thread._entry.179, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @dpaa2_switch_irq0_handler_thread._entry_ptr.181, !362, !"_entry_ptr", i1 false, i1 false}
!365 = distinct !{null, !366, !"__already_done", i1 false, i1 false}
!366 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 624, i32 2}
!367 = !{ptr @.str.182, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 1598, i32 3}
!369 = !{ptr @dpaa2_switch_teardown_irqs._entry, !368, !"_entry", i1 false, i1 false}
!370 = !{ptr @dpaa2_switch_teardown_irqs._entry_ptr, !368, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.183, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3200, i32 3}
!373 = !{ptr @.str.184, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @.str.185, !372, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @dpaa2_switch_teardown._entry, !372, !"_entry", i1 false, i1 false}
!376 = !{ptr @dpaa2_switch_teardown._entry_ptr, !372, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.186, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3465, i32 3}
!379 = !{ptr @.str.187, !378, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @dpaa2_switch_register_notifiers._entry, !378, !"_entry", i1 false, i1 false}
!381 = !{ptr @dpaa2_switch_register_notifiers._entry_ptr, !378, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.189, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3471, i32 3}
!384 = !{ptr @dpaa2_switch_register_notifiers._entry.188, !383, !"_entry", i1 false, i1 false}
!385 = !{ptr @dpaa2_switch_register_notifiers._entry_ptr.190, !383, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.192, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch.c", i32 3477, i32 3}
!388 = !{ptr @dpaa2_switch_register_notifiers._entry.191, !387, !"_entry", i1 false, i1 false}
!389 = !{ptr @dpaa2_switch_register_notifiers._entry_ptr.193, !387, !"_entry_ptr", i1 false, i1 false}
!390 = !{!"sp"}
!391 = !{i32 1, !"wchar_size", i32 2}
!392 = !{i32 1, !"min_enum_size", i32 4}
!393 = !{i32 8, !"branch-target-enforcement", i32 0}
!394 = !{i32 8, !"sign-return-address", i32 0}
!395 = !{i32 8, !"sign-return-address-all", i32 0}
!396 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!397 = !{i32 7, !"uwtable", i32 1}
!398 = !{i32 7, !"frame-pointer", i32 2}
!399 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!400 = !{!"branch_weights", i32 2000, i32 1}
!401 = !{!"branch_weights", i32 1, i32 2000}
!402 = !{!"auto-init"}
!403 = !{i8 0, i8 2}
!404 = !{i64 2149165352, i64 2149165375, i64 2149165407, i64 2149165439, i64 2149165477, i64 2149165507}
!405 = !{ptr @dpaa2_switch_fdb_entry_dump, ptr @dpaa2_switch_fdb_entry_fast_age}
!406 = !{i64 832017, i64 832078}
!407 = !{i64 834749}
!408 = !{i64 835034}
!409 = !{i64 2158500670}
!410 = !{i64 2158500512}
!411 = !{i64 2158506016}
!412 = !{i64 2158505858}
!413 = !{i64 2158484988}
!414 = !{i64 2158484830}
!415 = !{i64 2149041694, i64 2149041699, i64 2149041712, i64 2149041756, i64 2149041790, i64 2149041811}
