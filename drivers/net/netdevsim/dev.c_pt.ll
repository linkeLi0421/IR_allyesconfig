; ModuleID = '/llk/IR_all_yes/drivers/net/netdevsim/dev.c_pt.bc'
source_filename = "../drivers/net/netdevsim/dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.devlink_ops = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.devlink_param = type { i32, ptr, i8, i32, i32, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.devlink_trap = type { i32, i32, i8, i16, ptr, i16, i32 }
%struct.devlink_region_ops = type { ptr, ptr, ptr, ptr }
%struct.devlink_trap_policer = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.devlink_trap_group = type { ptr, i16, i8, i32 }
%struct.nsim_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, i8, i8, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.netdev_phys_item_id, %struct.list_head, %struct.mutex, i8, i32, i32, i8, i8, i8, ptr, %struct.nsim_dev_health, ptr, %struct.spinlock, i8, i8, i8, i8, %struct.anon.137, ptr, i16 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nsim_dev_health = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.137 = type { %struct.udp_tunnel_nic_shared, [2 x [4 x i32]], i8, i8, i8, i8, i8, i32 }
%struct.udp_tunnel_nic_shared = type { ptr, %struct.list_head }
%struct.nsim_bus_dev = type { %struct.device, %struct.list_head, i32, i32, ptr, i32, i32, %struct.mutex, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.devlink_resource_size_params = type { i64, i64, i64, i32 }
%struct.nsim_trap_data = type { %struct.delayed_work, ptr, ptr, i64, ptr, %struct.spinlock }
%struct.nsim_dev_port = type { %struct.list_head, %struct.devlink_port, i32, i32, ptr, ptr, ptr, ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.151 }
%union.anon.151 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.nsim_vf_config = type { i32, i16, i16, i16, i16, i16, [6 x i8], i8, i8, i8 }
%union.devlink_param_value = type { i32, [28 x i8] }
%struct.devlink_flash_update_params = type { ptr, ptr, i32 }
%struct.nsim_trap_item = type { ptr, i32 }
%struct.netdevsim = type { ptr, ptr, ptr, i64, i64, %struct.u64_stats_sync, ptr, ptr, i32, %struct.xdp_attachment_info, %struct.xdp_attachment_info, i8, i8, i8, i8, i8, %struct.nsim_ipsec, %struct.anon.163, %struct.nsim_ethtool }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.nsim_ipsec = type { [33 x %struct.nsim_sa], ptr, i32, i32, i32 }
%struct.nsim_sa = type { ptr, [4 x i32], [4 x i32], i32, i8, i8, i8 }
%struct.anon.163 = type { i32, i32, [2 x [4 x i32]], ptr, [2 x %struct.debugfs_u32_array] }
%struct.debugfs_u32_array = type { ptr, i32 }
%struct.nsim_ethtool = type { i32, i32, i32, %struct.nsim_ethtool_pauseparam, %struct.ethtool_coalesce, %struct.ethtool_ringparam, %struct.ethtool_fecparam }
%struct.nsim_ethtool_pauseparam = type { i8, i8, i8, i8 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_fecparam = type { i32, i32, i32, i32 }
%struct.nsim_rate_node = type { ptr, ptr, ptr, i16, i16 }
%struct.devlink_rate = type { %struct.list_head, i32, ptr, ptr, i64, i64, ptr, %union.anon.152 }
%union.anon.152 = type { %struct.anon.153 }
%struct.anon.153 = type { ptr, %struct.refcount_struct }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.142, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.162, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.142 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.162 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
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
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.flow_action_cookie = type { i32, [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/netdevsim/dev.c\00", [36 x i8] zeroinitializer }, align 32
@nsim_dev_devlink_ops = internal constant { %struct.devlink_ops, [52 x i8] } { %struct.devlink_ops { i32 3, i32 2, i32 0, ptr @nsim_dev_reload_down, ptr @nsim_dev_reload_up, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nsim_devlink_eswitch_mode_get, ptr @nsim_devlink_eswitch_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @nsim_dev_info_get, ptr @nsim_dev_flash_update, ptr @nsim_dev_devlink_trap_init, ptr null, ptr @nsim_dev_devlink_trap_action_set, ptr null, ptr @nsim_dev_devlink_trap_group_set, ptr null, ptr @nsim_dev_devlink_trap_drop_counter_get, ptr null, ptr null, ptr @nsim_dev_devlink_trap_policer_set, ptr @nsim_dev_devlink_trap_policer_counter_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nsim_leaf_tx_share_set, ptr @nsim_leaf_tx_max_set, ptr @nsim_node_tx_share_set, ptr @nsim_node_tx_max_set, ptr @nsim_rate_node_new, ptr @nsim_rate_node_del, ptr @nsim_rate_leaf_parent_set, ptr @nsim_rate_node_parent_set }, [52 x i8] zeroinitializer }, align 32
@nsim_drv_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&nsim_dev->vfs_lock\00", [44 x i8] zeroinitializer }, align 32
@nsim_drv_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&nsim_dev->port_list_lock\00", [38 x i8] zeroinitializer }, align 32
@nsim_drv_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&nsim_dev->fa_cookie_lock\00", [38 x i8] zeroinitializer }, align 32
@nsim_devlink_params = internal constant { [2 x %struct.devlink_param], [32 x i8] } { [2 x %struct.devlink_param] [%struct.devlink_param { i32 1, ptr @.str.62, i8 1, i32 2, i32 2, ptr null, ptr null, ptr null }, %struct.devlink_param { i32 17, ptr @.str.63, i8 0, i32 4, i32 2, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"netdevsim\00", [22 x i8] zeroinitializer }, align 32
@nsim_dev_ddir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nsim_dev_reload_down.__msg = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"netdevsim: User forbid the reload for testing purposes\00", [41 x i8] zeroinitializer }, align 32
@nsim_dev_reload_up.__msg = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"netdevsim: User setup the reload to fail for testing purposes\00", [34 x i8] zeroinitializer }, align 32
@nsim_dev_reload_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"take_snapshot\00", [18 x i8] zeroinitializer }, align 32
@nsim_dev_take_snapshot_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @nsim_dev_take_snapshot_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@nsim_dev_take_snapshot_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Failed to get snapshot id\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nsim_dev_take_snapshot_write\00", [35 x i8] zeroinitializer }, align 32
@nsim_dev_take_snapshot_write._entry_ptr = internal global ptr @nsim_dev_take_snapshot_write._entry, section ".printk_index", align 4
@nsim_dev_take_snapshot_write._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Failed to create region snapshot\0A\00", [60 x i8] zeroinitializer }, align 32
@nsim_dev_take_snapshot_write._entry_ptr.12 = internal global ptr @nsim_dev_take_snapshot_write._entry.10, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Preparing to flash\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Flashing\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Flash select\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Flashing done\00", [18 x i8] zeroinitializer }, align 32
@nsim_traps_arr = internal constant { [14 x %struct.devlink_trap], [80 x i8] } { [14 x %struct.devlink_trap] [%struct.devlink_trap { i32 0, i32 0, i8 1, i16 0, ptr @.str.17, i16 0, i32 1 }, %struct.devlink_trap { i32 0, i32 0, i8 1, i16 1, ptr @.str.18, i16 0, i32 1 }, %struct.devlink_trap { i32 0, i32 0, i8 1, i16 2, ptr @.str.19, i16 0, i32 1 }, %struct.devlink_trap { i32 0, i32 0, i8 1, i16 3, ptr @.str.20, i16 0, i32 1 }, %struct.devlink_trap { i32 0, i32 0, i8 1, i16 4, ptr @.str.21, i16 0, i32 1 }, %struct.devlink_trap { i32 0, i32 0, i8 1, i16 5, ptr @.str.22, i16 0, i32 1 }, %struct.devlink_trap { i32 1, i32 1, i8 0, i16 92, ptr @.str.23, i16 0, i32 1 }, %struct.devlink_trap { i32 0, i32 0, i8 1, i16 6, ptr @.str.24, i16 1, i32 1 }, %struct.devlink_trap { i32 1, i32 1, i8 1, i16 7, ptr @.str.25, i16 2, i32 1 }, %struct.devlink_trap { i32 0, i32 0, i8 1, i16 8, ptr @.str.26, i16 3, i32 1 }, %struct.devlink_trap { i32 0, i32 0, i8 1, i16 27, ptr @.str.27, i16 5, i32 3 }, %struct.devlink_trap { i32 0, i32 0, i8 1, i16 28, ptr @.str.28, i16 5, i32 3 }, %struct.devlink_trap { i32 2, i32 2, i8 1, i16 32, ptr @.str.29, i16 9, i32 1 }, %struct.devlink_trap { i32 2, i32 1, i8 1, i16 33, ptr @.str.30, i16 9, i32 1 }], [80 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"source_mac_is_multicast\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vlan_tag_mismatch\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ingress_vlan_filter\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ingress_spanning_tree_filter\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"port_list_is_empty\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"port_loopback_filter\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fid_miss\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"blackhole_route\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ttl_value_is_too_small\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tail_drop\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ingress_flow_action_drop\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"egress_flow_action_drop\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"igmp_query\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"igmp_v1_report\00", [17 x i8] zeroinitializer }, align 32
@nsim_dev_devlink_trap_policer_set.__msg = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"netdevsim: User setup the operation to fail for testing purposes\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_share\00", [23 x i8] zeroinitializer }, align 32
@nsim_rate_bytes_to_units._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str, i32 1158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013%s rate value %lluBps not in link speed units of 1Mbps.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nsim_rate_bytes_to_units\00", [39 x i8] zeroinitializer }, align 32
@nsim_rate_bytes_to_units._entry_ptr = internal global ptr @nsim_rate_bytes_to_units._entry, section ".printk_index", align 4
@nsim_rate_bytes_to_units.__msg = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"netdevsim: TX rate value not in link speed units of 1Mbps.\00", [37 x i8] zeroinitializer }, align 32
@nsim_rate_bytes_to_units._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str, i32 1165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013%s rate value %lluMbps exceed link maximum speed 5000Mbps.\0A\00", [34 x i8] zeroinitializer }, align 32
@nsim_rate_bytes_to_units._entry_ptr.36 = internal global ptr @nsim_rate_bytes_to_units._entry.34, section ".printk_index", align 4
@nsim_rate_bytes_to_units.__msg.37 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"netdevsim: TX rate value exceed link maximum speed 5000Mbps.\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tx_max\00", [25 x i8] zeroinitializer }, align 32
@nsim_rate_node_new.__msg = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"netdevsim: Node creation allowed only in switchdev mode.\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rate_parent\00", [20 x i8] zeroinitializer }, align 32
@nsim_dev_rate_parent_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @nsim_dev_rate_parent_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__const.nsim_dev_resources_register.params = private unnamed_addr constant { i64, i64, i64, i32, [4 x i8] } { i64 0, i64 -1, i64 1, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IPv4\00", [27 x i8] zeroinitializer }, align 32
@nsim_dev_resources_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Failed to register IPv4 top resource\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nsim_dev_resources_register\00", [36 x i8] zeroinitializer }, align 32
@nsim_dev_resources_register._entry_ptr = internal global ptr @nsim_dev_resources_register._entry, section ".printk_index", align 4
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fib\00", [28 x i8] zeroinitializer }, align 32
@nsim_dev_resources_register._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.42, ptr @.str, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Failed to register IPv4 FIB resource\0A\00", [56 x i8] zeroinitializer }, align 32
@nsim_dev_resources_register._entry_ptr.46 = internal global ptr @nsim_dev_resources_register._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fib-rules\00", [22 x i8] zeroinitializer }, align 32
@nsim_dev_resources_register._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.42, ptr @.str, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Failed to register IPv4 FIB rules resource\0A\00", [50 x i8] zeroinitializer }, align 32
@nsim_dev_resources_register._entry_ptr.50 = internal global ptr @nsim_dev_resources_register._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IPv6\00", [27 x i8] zeroinitializer }, align 32
@nsim_dev_resources_register._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.42, ptr @.str, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Failed to register IPv6 top resource\0A\00", [56 x i8] zeroinitializer }, align 32
@nsim_dev_resources_register._entry_ptr.54 = internal global ptr @nsim_dev_resources_register._entry.52, section ".printk_index", align 4
@nsim_dev_resources_register._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.42, ptr @.str, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Failed to register IPv6 FIB resource\0A\00", [56 x i8] zeroinitializer }, align 32
@nsim_dev_resources_register._entry_ptr.57 = internal global ptr @nsim_dev_resources_register._entry.55, section ".printk_index", align 4
@nsim_dev_resources_register._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.42, ptr @.str, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Failed to register IPv6 FIB rules resource\0A\00", [50 x i8] zeroinitializer }, align 32
@nsim_dev_resources_register._entry_ptr.60 = internal global ptr @nsim_dev_resources_register._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nexthops\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max_macs\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"test1\00", [26 x i8] zeroinitializer }, align 32
@dummy_region_ops = internal constant { %struct.devlink_region_ops, [16 x i8] } { %struct.devlink_region_ops { ptr @.str.64, ptr @kfree, ptr @nsim_dev_take_snapshot, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@nsim_dev_traps_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&nsim_trap_data->trap_lock\00", [37 x i8] zeroinitializer }, align 32
@nsim_trap_policers_arr = internal constant { [3 x %struct.devlink_trap_policer], [56 x i8] } { [3 x %struct.devlink_trap_policer] [%struct.devlink_trap_policer { i32 1, i64 1000, i64 128, i64 8000, i64 1, i64 65536, i64 8 }, %struct.devlink_trap_policer { i32 2, i64 2000, i64 256, i64 8000, i64 1, i64 65536, i64 8 }, %struct.devlink_trap_policer { i32 3, i64 3000, i64 512, i64 8000, i64 1, i64 65536, i64 8 }], [56 x i8] zeroinitializer }, align 32
@nsim_trap_groups_arr = internal constant { [6 x %struct.devlink_trap_group], [56 x i8] } { [6 x %struct.devlink_trap_group] [%struct.devlink_trap_group { ptr @.str.70, i16 0, i8 1, i32 0 }, %struct.devlink_trap_group { ptr @.str.71, i16 1, i8 1, i32 1 }, %struct.devlink_trap_group { ptr @.str.72, i16 2, i8 1, i32 1 }, %struct.devlink_trap_group { ptr @.str.73, i16 3, i8 1, i32 2 }, %struct.devlink_trap_group { ptr @.str.74, i16 5, i8 1, i32 3 }, %struct.devlink_trap_group { ptr @.str.75, i16 9, i8 1, i32 3 }], [56 x i8] zeroinitializer }, align 32
@nsim_dev_traps_init.__key.66 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"(work_completion)(&(&nsim_dev->trap_data->trap_report_dw)->work)\00", [63 x i8] zeroinitializer }, align 32
@nsim_dev_traps_init.__key.68 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"&(&nsim_dev->trap_data->trap_report_dw)->timer\00", [49 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"l2_drops\00", [23 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"l3_drops\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l3_exceptions\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buffer_drops\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"acl_drops\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mc_snooping\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"192.0.2.1\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"198.51.100.1\00", [19 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"netdevsim%u\00", [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ports\00", [26 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fw_update_status\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fw_update_overwrite_mask\00", [39 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dont_allow_reload\00", [46 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fail_reload\00", [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"trap_flow_action_cookie\00", [40 x i8] zeroinitializer }, align 32
@nsim_dev_trap_fa_cookie_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @nsim_dev_trap_fa_cookie_read, ptr @nsim_dev_trap_fa_cookie_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fail_trap_group_set\00", [44 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fail_trap_policer_set\00", [42 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fail_trap_policer_counter_get\00", [34 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max_vfs\00", [24 x i8] zeroinitializer }, align 32
@nsim_dev_max_vfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @nsim_bus_dev_max_vfs_read, ptr @nsim_bus_dev_max_vfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rate_nodes\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fail_trap_drop_counter_get\00", [37 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"../../../netdevsim%u\00", [43 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dev\00", [28 x i8] zeroinitializer }, align 32
@nsim_esw_switchdev_enable.__msg = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"netdevsim: Failed to initialize VFs' netdevsim ports\00", [43 x i8] zeroinitializer }, align 32
@nsim_esw_switchdev_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Failed to initialize VF id=%d. %d.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nsim_esw_switchdev_enable\00", [38 x i8] zeroinitializer }, align 32
@nsim_esw_switchdev_enable._entry_ptr = internal global ptr @nsim_esw_switchdev_enable._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.100 = internal global [16 x i64] [i64 14, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 27, i64 28, i64 32, i64 33, i64 92]
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 61, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [21 x i8] c"nsim_dev_devlink_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1325, i32 33 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1540, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1541, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1546, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [20 x i8] c"nsim_devlink_params\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 504, i32 35 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1761, i32 37 }
@___asan_gen_.131 = private unnamed_addr constant [14 x i8] c"nsim_dev_ddir\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 57, i32 23 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 958, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 985, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1473, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1505, i32 48 }
@___asan_gen_.146 = private unnamed_addr constant [28 x i8] c"nsim_dev_take_snapshot_fops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 130, i32 37 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 114, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 122, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1019, i32 10 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1025, i32 48 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1037, i32 48 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1039, i32 47 }
@___asan_gen_.176 = private unnamed_addr constant [15 x i8] c"nsim_traps_arr\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 716, i32 34 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 717, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 718, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 719, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 720, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 721, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 722, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 723, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 724, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 725, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 726, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 727, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 729, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 731, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 732, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1120, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1181, i32 33 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1157, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1159, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1164, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1166, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1197, i32 33 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1248, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1260, i32 47 }
@___asan_gen_.257 = private unnamed_addr constant [26 x i8] c"nsim_dev_rate_parent_fops\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 383, i32 37 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 438, i32 43 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 443, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 447, i32 43 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 451, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 455, i32 43 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 459, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 464, i32 43 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 469, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 477, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 485, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 490, i32 43 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 505, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 508, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant [17 x i8] c"dummy_region_ops\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 549, i32 40 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 550, i32 10 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 882, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant [23 x i8] c"nsim_trap_policers_arr\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 701, i32 42 }
@___asan_gen_.335 = private unnamed_addr constant [21 x i8] c"nsim_trap_groups_arr\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 707, i32 40 }
@___asan_gen_.344 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 901, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 708, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 709, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 710, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 711, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 712, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 713, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 760, i32 23 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 761, i32 23 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 307, i32 25 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 311, i32 44 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 314, i32 22 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 316, i32 21 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 327, i32 22 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 329, i32 22 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 331, i32 22 }
@___asan_gen_.395 = private unnamed_addr constant [29 x i8] c"nsim_dev_trap_fa_cookie_fops\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 222, i32 37 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 333, i32 22 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 336, i32 22 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 339, i32 22 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 342, i32 22 }
@___asan_gen_.410 = private unnamed_addr constant [22 x i8] c"nsim_dev_max_vfs_fops\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 294, i32 37 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 345, i32 44 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 350, i32 22 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 237, i32 36 }
@___asan_gen_.423 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 156, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 398, i32 26 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 404, i32 25 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 418, i32 25 }
@___asan_gen_.434 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 597, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.443 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.444 = private constant [31 x i8] c"../drivers/net/netdevsim/dev.c\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 598, i32 4 }
@llvm.compiler.used = appending global [126 x ptr] [ptr @nsim_dev_resources_register._entry, ptr @nsim_dev_resources_register._entry.44, ptr @nsim_dev_resources_register._entry.48, ptr @nsim_dev_resources_register._entry.52, ptr @nsim_dev_resources_register._entry.55, ptr @nsim_dev_resources_register._entry.58, ptr @nsim_dev_resources_register._entry_ptr, ptr @nsim_dev_resources_register._entry_ptr.46, ptr @nsim_dev_resources_register._entry_ptr.50, ptr @nsim_dev_resources_register._entry_ptr.54, ptr @nsim_dev_resources_register._entry_ptr.57, ptr @nsim_dev_resources_register._entry_ptr.60, ptr @nsim_dev_take_snapshot_write._entry, ptr @nsim_dev_take_snapshot_write._entry.10, ptr @nsim_dev_take_snapshot_write._entry_ptr, ptr @nsim_dev_take_snapshot_write._entry_ptr.12, ptr @nsim_esw_switchdev_enable._entry, ptr @nsim_esw_switchdev_enable._entry_ptr, ptr @nsim_rate_bytes_to_units._entry, ptr @nsim_rate_bytes_to_units._entry.34, ptr @nsim_rate_bytes_to_units._entry_ptr, ptr @nsim_rate_bytes_to_units._entry_ptr.36, ptr @.str, ptr @nsim_dev_devlink_ops, ptr @nsim_drv_probe.__key, ptr @.str.1, ptr @nsim_drv_probe.__key.2, ptr @.str.3, ptr @nsim_drv_probe.__key.4, ptr @.str.5, ptr @nsim_devlink_params, ptr @.str.6, ptr @nsim_dev_ddir, ptr @nsim_dev_reload_down.__msg, ptr @nsim_dev_reload_up.__msg, ptr @nsim_dev_reload_create.__key, ptr @.str.7, ptr @nsim_dev_take_snapshot_fops, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @nsim_traps_arr, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @nsim_dev_devlink_trap_policer_set.__msg, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @nsim_rate_bytes_to_units.__msg, ptr @.str.35, ptr @nsim_rate_bytes_to_units.__msg.37, ptr @.str.38, ptr @nsim_rate_node_new.__msg, ptr @.str.39, ptr @nsim_dev_rate_parent_fops, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @dummy_region_ops, ptr @.str.64, ptr @nsim_dev_traps_init.__key, ptr @.str.65, ptr @nsim_trap_policers_arr, ptr @nsim_trap_groups_arr, ptr @nsim_dev_traps_init.__key.66, ptr @.str.67, ptr @nsim_dev_traps_init.__key.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @nsim_dev_trap_fa_cookie_fops, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @nsim_dev_max_vfs_fops, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @nsim_esw_switchdev_enable.__msg, ptr @.str.98, ptr @.str.99], section "llvm.metadata"
@0 = internal global [115 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_devlink_ops to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_drv_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_drv_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_drv_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_devlink_params to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_ddir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_reload_down.__msg to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_reload_up.__msg to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_reload_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_take_snapshot_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_take_snapshot_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_take_snapshot_write._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_traps_arr to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_devlink_trap_policer_set.__msg to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_rate_bytes_to_units._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_rate_bytes_to_units.__msg to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_rate_bytes_to_units._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_rate_bytes_to_units.__msg.37 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_rate_node_new.__msg to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_rate_parent_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_resources_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_resources_register._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_resources_register._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_resources_register._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_resources_register._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_resources_register._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_region_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_traps_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_trap_policers_arr to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_trap_groups_arr to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_traps_init.__key.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_traps_init.__key.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_trap_fa_cookie_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_max_vfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_esw_switchdev_enable.__msg to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_esw_switchdev_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nsim_dev_get_vfs(ptr noundef %nsim_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !234

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %0 = ptrtoint ptr %nsim_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nsim_dev, align 4
  %num_vfs = getelementptr inbounds %struct.nsim_bus_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_vfs, align 8
  ret i32 %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nsim_drv_probe(ptr noundef %nsim_bus_dev) local_unnamed_addr #0 align 64 {
entry:
  %params.i = alloca %struct.devlink_resource_size_params, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %initial_net = getelementptr inbounds %struct.nsim_bus_dev, ptr %nsim_bus_dev, i32 0, i32 4
  %0 = ptrtoint ptr %initial_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %initial_net, align 8
  %call = tail call ptr @devlink_alloc_ns(ptr noundef nonnull @nsim_dev_devlink_ops, i32 noundef 456, ptr noundef %1, ptr noundef %nsim_bus_dev) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devlink_priv(ptr noundef nonnull %call) #12
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %nsim_bus_dev, ptr %call1, align 4
  %switch_id = getelementptr inbounds %struct.nsim_dev, ptr %call1, i32 0, i32 17
  %id_len = getelementptr inbounds %struct.nsim_dev, ptr %call1, i32 0, i32 17, i32 1
  %3 = ptrtoint ptr %id_len to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 32, ptr %id_len, align 4
  tail call void @get_random_bytes(ptr noundef %switch_id, i32 noundef 32) #12
  %port_list = getelementptr inbounds %struct.nsim_dev, ptr %call1, i32 0, i32 18
  %4 = ptrtoint ptr %port_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %port_list, ptr %port_list, align 4
  %prev.i = getelementptr inbounds %struct.nsim_dev, ptr %call1, i32 0, i32 18, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %port_list, ptr %prev.i, align 4
  %vfs_lock = getelementptr inbounds %struct.nsim_dev, ptr %call1, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %vfs_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @nsim_drv_probe.__key) #12
  %port_list_lock = getelementptr inbounds %struct.nsim_dev, ptr %call1, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %port_list_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @nsim_drv_probe.__key.2) #12
  %fw_update_status = getelementptr inbounds %struct.nsim_dev, ptr %call1, i32 0, i32 20
  %6 = ptrtoint ptr %fw_update_status to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %fw_update_status, align 4
  %fw_update_overwrite_mask = getelementptr inbounds %struct.nsim_dev, ptr %call1, i32 0, i32 21
  %7 = ptrtoint ptr %fw_update_overwrite_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %fw_update_overwrite_mask, align 4
  %max_macs = getelementptr inbounds %struct.nsim_dev, ptr %call1, i32 0, i32 22
  %8 = ptrtoint ptr %max_macs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32, ptr %max_macs, align 4
  %test1 = getelementptr inbounds %struct.nsim_dev, ptr %call1, i32 0, i32 23
  %9 = ptrtoint ptr %test1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %test1, align 4
  %fa_cookie_lock = getelementptr inbounds %struct.nsim_dev, ptr %call1, i32 0, i32 29
  tail call void @__raw_spin_lock_init(ptr noundef %fa_cookie_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @nsim_drv_probe.__key.4, i16 noundef signext 3) #12
  %driver_data.i = getelementptr inbounds %struct.device, ptr %nsim_bus_dev, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1, ptr %driver_data.i, align 4
  %max_vfs = getelementptr inbounds %struct.nsim_bus_dev, ptr %nsim_bus_dev, i32 0, i32 5
  %11 = ptrtoint ptr %max_vfs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_vfs, align 4
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 24) #12
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !234

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %vfconfigs136 = getelementptr inbounds %struct.nsim_dev, ptr %call1, i32 0, i32 8
  %15 = ptrtoint ptr %vfconfigs136 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %vfconfigs136, align 4
  br label %err_devlink_free

if.end7.i.i:                                      ; preds = %if.end
  %16 = extractvalue { i32, i1 } %13, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 11712) #15
  %vfconfigs = getelementptr inbounds %struct.nsim_dev, ptr %call1, i32 0, i32 8
  %17 = ptrtoint ptr %vfconfigs to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8.i.i, ptr %vfconfigs, align 4
  %tobool16.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool16.not, label %if.end7.i.i.err_devlink_free_crit_edge, label %if.end18

if.end7.i.i.err_devlink_free_crit_edge:           ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_devlink_free

if.end18:                                         ; preds = %if.end7.i.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %params.i) #12
  %18 = call ptr @memcpy(ptr %params.i, ptr @__const.nsim_dev_resources_register.params, i32 32)
  %call.i = call i32 @devlink_resource_register(ptr noundef nonnull %call, ptr noundef nonnull @.str.40, i64 noundef -1, i64 noundef 1, i64 noundef 0, ptr noundef nonnull %params.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end18.nsim_dev_resources_register.exit.thread_crit_edge

if.end18.nsim_dev_resources_register.exit.thread_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_dev_resources_register.exit.thread

if.end.i:                                         ; preds = %if.end18
  %call2.i = call i32 @devlink_resource_register(ptr noundef nonnull %call, ptr noundef nonnull @.str.43, i64 noundef -1, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %params.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end10.i, label %if.end.i.nsim_dev_resources_register.exit.thread_crit_edge

if.end.i.nsim_dev_resources_register.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_dev_resources_register.exit.thread

if.end10.i:                                       ; preds = %if.end.i
  %call11.i = call i32 @devlink_resource_register(ptr noundef nonnull %call, ptr noundef nonnull @.str.47, i64 noundef -1, i64 noundef 3, i64 noundef 1, ptr noundef nonnull %params.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end19.i, label %if.end10.i.nsim_dev_resources_register.exit.thread_crit_edge

if.end10.i.nsim_dev_resources_register.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_dev_resources_register.exit.thread

if.end19.i:                                       ; preds = %if.end10.i
  %call20.i = call i32 @devlink_resource_register(ptr noundef nonnull %call, ptr noundef nonnull @.str.51, i64 noundef -1, i64 noundef 4, i64 noundef 0, ptr noundef nonnull %params.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end28.i, label %if.end19.i.nsim_dev_resources_register.exit.thread_crit_edge

if.end19.i.nsim_dev_resources_register.exit.thread_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_dev_resources_register.exit.thread

if.end28.i:                                       ; preds = %if.end19.i
  %call29.i = call i32 @devlink_resource_register(ptr noundef nonnull %call, ptr noundef nonnull @.str.43, i64 noundef -1, i64 noundef 5, i64 noundef 4, ptr noundef nonnull %params.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end37.i, label %if.end28.i.nsim_dev_resources_register.exit.thread_crit_edge

if.end28.i.nsim_dev_resources_register.exit.thread_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_dev_resources_register.exit.thread

if.end37.i:                                       ; preds = %if.end28.i
  %call38.i = call i32 @devlink_resource_register(ptr noundef nonnull %call, ptr noundef nonnull @.str.47, i64 noundef -1, i64 noundef 6, i64 noundef 4, ptr noundef nonnull %params.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %nsim_dev_resources_register.exit, label %if.end37.i.nsim_dev_resources_register.exit.thread_crit_edge

if.end37.i.nsim_dev_resources_register.exit.thread_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_dev_resources_register.exit.thread

nsim_dev_resources_register.exit.thread:          ; preds = %if.end37.i.nsim_dev_resources_register.exit.thread_crit_edge, %if.end28.i.nsim_dev_resources_register.exit.thread_crit_edge, %if.end19.i.nsim_dev_resources_register.exit.thread_crit_edge, %if.end10.i.nsim_dev_resources_register.exit.thread_crit_edge, %if.end.i.nsim_dev_resources_register.exit.thread_crit_edge, %if.end18.nsim_dev_resources_register.exit.thread_crit_edge
  %.str.45.sink = phi ptr [ @.str.41, %if.end18.nsim_dev_resources_register.exit.thread_crit_edge ], [ @.str.45, %if.end.i.nsim_dev_resources_register.exit.thread_crit_edge ], [ @.str.49, %if.end10.i.nsim_dev_resources_register.exit.thread_crit_edge ], [ @.str.53, %if.end19.i.nsim_dev_resources_register.exit.thread_crit_edge ], [ @.str.56, %if.end28.i.nsim_dev_resources_register.exit.thread_crit_edge ], [ @.str.59, %if.end37.i.nsim_dev_resources_register.exit.thread_crit_edge ]
  %retval.0.i.ph = phi i32 [ %call.i, %if.end18.nsim_dev_resources_register.exit.thread_crit_edge ], [ %call2.i, %if.end.i.nsim_dev_resources_register.exit.thread_crit_edge ], [ %call11.i, %if.end10.i.nsim_dev_resources_register.exit.thread_crit_edge ], [ %call20.i, %if.end19.i.nsim_dev_resources_register.exit.thread_crit_edge ], [ %call29.i, %if.end28.i.nsim_dev_resources_register.exit.thread_crit_edge ], [ %call38.i, %if.end37.i.nsim_dev_resources_register.exit.thread_crit_edge ]
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.45.sink) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %params.i) #12
  br label %err_vfc_free

nsim_dev_resources_register.exit:                 ; preds = %if.end37.i
  %call47.i = call i32 @devlink_resource_register(ptr noundef nonnull %call, ptr noundef nonnull @.str.61, i64 noundef -1, i64 noundef 7, i64 noundef 0, ptr noundef nonnull %params.i) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %params.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool20.not = icmp eq i32 %call47.i, 0
  br i1 %tobool20.not, label %if.end22, label %nsim_dev_resources_register.exit.err_vfc_free_crit_edge

nsim_dev_resources_register.exit.err_vfc_free_crit_edge: ; preds = %nsim_dev_resources_register.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_vfc_free

if.end22:                                         ; preds = %nsim_dev_resources_register.exit
  %call23 = call i32 @devlink_params_register(ptr noundef nonnull %call, ptr noundef nonnull @nsim_devlink_params, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.err_dl_unregister_crit_edge

if.end22.err_dl_unregister_crit_edge:             ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_dl_unregister

if.end26:                                         ; preds = %if.end22
  %19 = ptrtoint ptr %max_macs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_macs, align 4
  %value.sroa.0.sroa.7.0.insert.ext.i = and i32 %20, 16777215
  %.fca.0.insert.i = insertvalue [8 x i32] poison, i32 %20, 0
  %.fca.1.insert.i = insertvalue [8 x i32] %.fca.0.insert.i, i32 -1, 1
  %.fca.2.insert.i = insertvalue [8 x i32] %.fca.1.insert.i, i32 -1, 2
  %.fca.3.insert.i = insertvalue [8 x i32] %.fca.2.insert.i, i32 -1, 3
  %.fca.4.insert.i = insertvalue [8 x i32] %.fca.3.insert.i, i32 -1, 4
  %.fca.5.insert.i = insertvalue [8 x i32] %.fca.4.insert.i, i32 -1, 5
  %.fca.6.insert.i = insertvalue [8 x i32] %.fca.5.insert.i, i32 -1, 6
  %.fca.7.insert.i = insertvalue [8 x i32] %.fca.6.insert.i, i32 -1, 7
  %call.i129 = call i32 @devlink_param_driverinit_value_set(ptr noundef nonnull %call, i32 noundef 1, [8 x i32] %.fca.7.insert.i) #12
  %21 = ptrtoint ptr %test1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %test1, align 4, !range !235
  %value.sroa.0.sroa.0.0.insert.ext117.i = zext i8 %22 to i32
  %value.sroa.0.sroa.0.0.insert.shift118.i = shl nuw nsw i32 %value.sroa.0.sroa.0.0.insert.ext117.i, 24
  %value.sroa.0.sroa.0.0.insert.insert120.i = or i32 %value.sroa.0.sroa.0.0.insert.shift118.i, %value.sroa.0.sroa.7.0.insert.ext.i
  %.fca.0.insert4.i = insertvalue [8 x i32] poison, i32 %value.sroa.0.sroa.0.0.insert.insert120.i, 0
  %.fca.1.insert7.i = insertvalue [8 x i32] %.fca.0.insert4.i, i32 -1, 1
  %.fca.2.insert10.i = insertvalue [8 x i32] %.fca.1.insert7.i, i32 -1, 2
  %.fca.3.insert13.i = insertvalue [8 x i32] %.fca.2.insert10.i, i32 -1, 3
  %.fca.4.insert16.i = insertvalue [8 x i32] %.fca.3.insert13.i, i32 -1, 4
  %.fca.5.insert19.i = insertvalue [8 x i32] %.fca.4.insert16.i, i32 -1, 5
  %.fca.6.insert22.i = insertvalue [8 x i32] %.fca.5.insert19.i, i32 -1, 6
  %.fca.7.insert25.i = insertvalue [8 x i32] %.fca.6.insert22.i, i32 -1, 7
  %call1.i130 = call i32 @devlink_param_driverinit_value_set(ptr noundef nonnull %call, i32 noundef 17, [8 x i32] %.fca.7.insert25.i) #12
  %call.i131 = call ptr @devlink_region_create(ptr noundef nonnull %call, ptr noundef nonnull @dummy_region_ops, i32 noundef 16, i64 noundef 32768) #12
  %dummy_region.i = getelementptr inbounds %struct.nsim_dev, ptr %call1, i32 0, i32 26
  %23 = ptrtoint ptr %dummy_region.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i131, ptr %dummy_region.i, align 4
  %cmp.i.i.i132.not = icmp ugt ptr %call.i131, inttoptr (i32 -4096 to ptr)
  %24 = ptrtoint ptr %call.i131 to i32
  br i1 %cmp.i.i.i132.not, label %if.end26.err_params_unregister_crit_edge, label %if.end30

if.end26.err_params_unregister_crit_edge:         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_params_unregister

if.end30:                                         ; preds = %if.end26
  %call31 = call fastcc i32 @nsim_dev_traps_init(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.err_dummy_region_exit_crit_edge

if.end30.err_dummy_region_exit_crit_edge:         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_dummy_region_exit

if.end34:                                         ; preds = %if.end30
  %call35 = call fastcc i32 @nsim_dev_debugfs_init(ptr noundef %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.err_traps_exit_crit_edge

if.end34.err_traps_exit_crit_edge:                ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_traps_exit

if.end38:                                         ; preds = %if.end34
  %call39 = call ptr @nsim_fib_create(ptr noundef nonnull %call, ptr noundef null) #12
  %fib_data = getelementptr inbounds %struct.nsim_dev, ptr %call1, i32 0, i32 1
  %25 = ptrtoint ptr %fib_data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call39, ptr %fib_data, align 4
  %cmp.i = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %call39 to i32
  br label %err_debugfs_exit

if.end45:                                         ; preds = %if.end38
  %call46 = call i32 @nsim_dev_health_init(ptr noundef %call1, ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.err_fib_destroy_crit_edge

if.end45.err_fib_destroy_crit_edge:               ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_fib_destroy

if.end49:                                         ; preds = %if.end45
  %call50 = call i32 @nsim_bpf_dev_init(ptr noundef %call1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.err_health_exit_crit_edge

if.end49.err_health_exit_crit_edge:               ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_health_exit

if.end53:                                         ; preds = %if.end49
  %call54 = call i32 @nsim_dev_psample_init(ptr noundef %call1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end53.err_bpf_dev_exit_crit_edge

if.end53.err_bpf_dev_exit_crit_edge:              ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_bpf_dev_exit

if.end57:                                         ; preds = %if.end53
  %port_count = getelementptr inbounds %struct.nsim_bus_dev, ptr %nsim_bus_dev, i32 0, i32 2
  %27 = ptrtoint ptr %port_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port_count, align 8
  %call58 = call fastcc i32 @nsim_dev_port_add_all(ptr noundef %call1, i32 noundef %28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %err_psample_exit

if.end61:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %esw_mode = getelementptr inbounds %struct.nsim_dev, ptr %call1, i32 0, i32 36
  %29 = ptrtoint ptr %esw_mode to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %esw_mode, align 4
  call void @devlink_set_features(ptr noundef nonnull %call, i64 noundef 1) #12
  call void @devlink_register(ptr noundef nonnull %call) #12
  br label %cleanup

err_psample_exit:                                 ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  call void @nsim_dev_psample_exit(ptr noundef %call1) #12
  br label %err_bpf_dev_exit

err_bpf_dev_exit:                                 ; preds = %err_psample_exit, %if.end53.err_bpf_dev_exit_crit_edge
  %err.0 = phi i32 [ %call54, %if.end53.err_bpf_dev_exit_crit_edge ], [ %call58, %err_psample_exit ]
  call void @nsim_bpf_dev_exit(ptr noundef %call1) #12
  br label %err_health_exit

err_health_exit:                                  ; preds = %err_bpf_dev_exit, %if.end49.err_health_exit_crit_edge
  %err.1 = phi i32 [ %call50, %if.end49.err_health_exit_crit_edge ], [ %err.0, %err_bpf_dev_exit ]
  call void @nsim_dev_health_exit(ptr noundef %call1) #12
  br label %err_fib_destroy

err_fib_destroy:                                  ; preds = %err_health_exit, %if.end45.err_fib_destroy_crit_edge
  %err.2 = phi i32 [ %call46, %if.end45.err_fib_destroy_crit_edge ], [ %err.1, %err_health_exit ]
  %30 = ptrtoint ptr %fib_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fib_data, align 4
  call void @nsim_fib_destroy(ptr noundef nonnull %call, ptr noundef %31) #12
  br label %err_debugfs_exit

err_debugfs_exit:                                 ; preds = %err_fib_destroy, %if.then42
  %err.3 = phi i32 [ %26, %if.then42 ], [ %err.2, %err_fib_destroy ]
  call fastcc void @nsim_dev_debugfs_exit(ptr noundef %call1)
  br label %err_traps_exit

err_traps_exit:                                   ; preds = %err_debugfs_exit, %if.end34.err_traps_exit_crit_edge
  %err.4 = phi i32 [ %call35, %if.end34.err_traps_exit_crit_edge ], [ %err.3, %err_debugfs_exit ]
  call fastcc void @nsim_dev_traps_exit(ptr noundef nonnull %call)
  br label %err_dummy_region_exit

err_dummy_region_exit:                            ; preds = %err_traps_exit, %if.end30.err_dummy_region_exit_crit_edge
  %err.5 = phi i32 [ %call31, %if.end30.err_dummy_region_exit_crit_edge ], [ %err.4, %err_traps_exit ]
  %32 = ptrtoint ptr %dummy_region.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dummy_region.i, align 4
  call void @devlink_region_destroy(ptr noundef %33) #12
  br label %err_params_unregister

err_params_unregister:                            ; preds = %err_dummy_region_exit, %if.end26.err_params_unregister_crit_edge
  %err.6 = phi i32 [ %24, %if.end26.err_params_unregister_crit_edge ], [ %err.5, %err_dummy_region_exit ]
  call void @devlink_params_unregister(ptr noundef nonnull %call, ptr noundef nonnull @nsim_devlink_params, i32 noundef 2) #12
  br label %err_dl_unregister

err_dl_unregister:                                ; preds = %err_params_unregister, %if.end22.err_dl_unregister_crit_edge
  %err.7 = phi i32 [ %call23, %if.end22.err_dl_unregister_crit_edge ], [ %err.6, %err_params_unregister ]
  call void @devlink_resources_unregister(ptr noundef nonnull %call) #12
  br label %err_vfc_free

err_vfc_free:                                     ; preds = %err_dl_unregister, %nsim_dev_resources_register.exit.err_vfc_free_crit_edge, %nsim_dev_resources_register.exit.thread
  %err.8 = phi i32 [ %call47.i, %nsim_dev_resources_register.exit.err_vfc_free_crit_edge ], [ %err.7, %err_dl_unregister ], [ %retval.0.i.ph, %nsim_dev_resources_register.exit.thread ]
  %34 = ptrtoint ptr %vfconfigs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vfconfigs, align 4
  call void @kfree(ptr noundef %35) #12
  br label %err_devlink_free

err_devlink_free:                                 ; preds = %err_vfc_free, %if.end7.i.i.err_devlink_free_crit_edge, %kcalloc.exit.thread
  %err.9 = phi i32 [ %err.8, %err_vfc_free ], [ -12, %if.end7.i.i.err_devlink_free_crit_edge ], [ -12, %kcalloc.exit.thread ]
  call void @devlink_free(ptr noundef nonnull %call) #12
  %36 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_devlink_free, %if.end61, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.9, %err_devlink_free ], [ 0, %if.end61 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_alloc_ns(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_params_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nsim_dev_traps_init(ptr noundef %devlink) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 168) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 112) #17
  %trap_items_arr = getelementptr inbounds %struct.nsim_trap_data, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %trap_items_arr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i.i, ptr %trap_items_arr, align 4
  %tobool4.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool4.not, label %if.end.err_trap_data_free_crit_edge, label %if.end6

if.end.err_trap_data_free_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_trap_data_free

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i87 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 24) #17
  %trap_policers_cnt_arr = getelementptr inbounds %struct.nsim_trap_data, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %trap_policers_cnt_arr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i.i87, ptr %trap_policers_cnt_arr, align 8
  %tobool9.not = icmp eq ptr %call7.i.i.i87, null
  br i1 %tobool9.not, label %if.end6.err_trap_items_free_crit_edge, label %do.body

if.end6.err_trap_items_free_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_trap_items_free

do.body:                                          ; preds = %if.end6
  %trap_lock = getelementptr inbounds %struct.nsim_trap_data, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %trap_lock, ptr noundef nonnull @.str.65, ptr noundef nonnull @nsim_dev_traps_init.__key, i16 noundef signext 3) #12
  %nsim_dev13 = getelementptr inbounds %struct.nsim_trap_data, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %nsim_dev13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %nsim_dev13, align 8
  %trap_data = getelementptr inbounds %struct.nsim_dev, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %trap_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %trap_data, align 4
  %call14 = tail call i32 @devlink_trap_policers_register(ptr noundef %devlink, ptr noundef nonnull @nsim_trap_policers_arr, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %do.body.err_trap_policers_cnt_free_crit_edge

do.body.err_trap_policers_cnt_free_crit_edge:     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_trap_policers_cnt_free

if.end17:                                         ; preds = %do.body
  %call18 = tail call i32 @devlink_trap_groups_register(ptr noundef %devlink, ptr noundef nonnull @nsim_trap_groups_arr, i32 noundef 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.err_trap_policers_unregister_crit_edge

if.end17.err_trap_policers_unregister_crit_edge:  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_trap_policers_unregister

if.end21:                                         ; preds = %if.end17
  %call22 = tail call i32 @devlink_traps_register(ptr noundef %devlink, ptr noundef nonnull @nsim_traps_arr, i32 noundef 14, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.body27, label %err_trap_groups_unregister

do.body27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %trap_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trap_data, align 4
  tail call void @__init_work(ptr noundef %8, i32 noundef 0) #12
  %9 = ptrtoint ptr %trap_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %trap_data, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %10, align 8
  %12 = load ptr, ptr %trap_data, align 4
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %12, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.67, ptr noundef nonnull @nsim_dev_traps_init.__key.66, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %13 = ptrtoint ptr %trap_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trap_data, align 4
  %entry38 = getelementptr inbounds %struct.work_struct, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %entry38 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry38, ptr %entry38, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %14, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry38, ptr %prev.i, align 4
  %17 = load ptr, ptr %trap_data, align 4
  %func = getelementptr inbounds %struct.work_struct, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @nsim_dev_trap_report_work, ptr %func, align 4
  %19 = load ptr, ptr %trap_data, align 4
  %timer = getelementptr inbounds %struct.delayed_work, ptr %19, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.69, ptr noundef nonnull @nsim_dev_traps_init.__key.68) #12
  %20 = ptrtoint ptr %trap_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trap_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %21, i32 noundef 10) #12
  br label %cleanup

err_trap_groups_unregister:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @devlink_trap_groups_unregister(ptr noundef %devlink, ptr noundef nonnull @nsim_trap_groups_arr, i32 noundef 6) #12
  br label %err_trap_policers_unregister

err_trap_policers_unregister:                     ; preds = %err_trap_groups_unregister, %if.end17.err_trap_policers_unregister_crit_edge
  %err.0 = phi i32 [ %call18, %if.end17.err_trap_policers_unregister_crit_edge ], [ %call22, %err_trap_groups_unregister ]
  tail call void @devlink_trap_policers_unregister(ptr noundef %devlink, ptr noundef nonnull @nsim_trap_policers_arr, i32 noundef 3) #12
  br label %err_trap_policers_cnt_free

err_trap_policers_cnt_free:                       ; preds = %err_trap_policers_unregister, %do.body.err_trap_policers_cnt_free_crit_edge
  %err.1 = phi i32 [ %call14, %do.body.err_trap_policers_cnt_free_crit_edge ], [ %err.0, %err_trap_policers_unregister ]
  %23 = ptrtoint ptr %trap_policers_cnt_arr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %trap_policers_cnt_arr, align 8
  tail call void @kfree(ptr noundef %24) #12
  br label %err_trap_items_free

err_trap_items_free:                              ; preds = %err_trap_policers_cnt_free, %if.end6.err_trap_items_free_crit_edge
  %err.2 = phi i32 [ %err.1, %err_trap_policers_cnt_free ], [ -12, %if.end6.err_trap_items_free_crit_edge ]
  %25 = ptrtoint ptr %trap_items_arr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trap_items_arr, align 4
  tail call void @kfree(ptr noundef %26) #12
  br label %err_trap_data_free

err_trap_data_free:                               ; preds = %err_trap_items_free, %if.end.err_trap_data_free_crit_edge
  %err.3 = phi i32 [ %err.2, %err_trap_items_free ], [ -12, %if.end.err_trap_data_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %err_trap_data_free, %do.body27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %err_trap_data_free ], [ 0, %do.body27 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nsim_dev_debugfs_init(ptr noundef %nsim_dev) unnamed_addr #0 align 64 {
entry:
  %dev_ddir_name = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dev_ddir_name) #12
  %0 = call ptr @memset(ptr %dev_ddir_name, i32 255, i32 20)
  %1 = ptrtoint ptr %nsim_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nsim_dev, align 4
  %id = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 30
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %dev_ddir_name, ptr noundef nonnull @.str.78, i32 noundef %4)
  %5 = load ptr, ptr @nsim_dev_ddir, align 4
  %call2 = call ptr @debugfs_create_dir(ptr noundef nonnull %dev_ddir_name, ptr noundef %5) #12
  %ddir = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 3
  %6 = ptrtoint ptr %ddir to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %ddir, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.79, ptr noundef %call2) #12
  %ports_ddir = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 4
  %8 = ptrtoint ptr %ports_ddir to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8, ptr %ports_ddir, align 4
  %cmp.i83 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %10 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ddir, align 4
  %fw_update_status = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 20
  call void @debugfs_create_bool(ptr noundef nonnull @.str.80, i16 noundef zeroext 384, ptr noundef %11, ptr noundef %fw_update_status) #12
  %12 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ddir, align 4
  %fw_update_overwrite_mask = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 21
  call void @debugfs_create_u32(ptr noundef nonnull @.str.81, i16 noundef zeroext 384, ptr noundef %13, ptr noundef %fw_update_overwrite_mask) #12
  %14 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ddir, align 4
  %max_macs = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 22
  call void @debugfs_create_u32(ptr noundef nonnull @.str.62, i16 noundef zeroext 384, ptr noundef %15, ptr noundef %max_macs) #12
  %16 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ddir, align 4
  %test1 = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 23
  call void @debugfs_create_bool(ptr noundef nonnull @.str.63, i16 noundef zeroext 384, ptr noundef %17, ptr noundef %test1) #12
  %18 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ddir, align 4
  %call20 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 128, ptr noundef %19, ptr noundef %nsim_dev, ptr noundef nonnull @nsim_dev_take_snapshot_fops) #12
  %take_snapshot = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 5
  %20 = ptrtoint ptr %take_snapshot to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call20, ptr %take_snapshot, align 4
  %21 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ddir, align 4
  %dont_allow_reload = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 24
  call void @debugfs_create_bool(ptr noundef nonnull @.str.82, i16 noundef zeroext 384, ptr noundef %22, ptr noundef %dont_allow_reload) #12
  %23 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ddir, align 4
  %fail_reload = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 25
  call void @debugfs_create_bool(ptr noundef nonnull @.str.83, i16 noundef zeroext 384, ptr noundef %24, ptr noundef %fail_reload) #12
  %25 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ddir, align 4
  %call24 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.84, i16 noundef zeroext 384, ptr noundef %26, ptr noundef %nsim_dev, ptr noundef nonnull @nsim_dev_trap_fa_cookie_fops) #12
  %27 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ddir, align 4
  %fail_trap_group_set = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 30
  call void @debugfs_create_bool(ptr noundef nonnull @.str.85, i16 noundef zeroext 384, ptr noundef %28, ptr noundef %fail_trap_group_set) #12
  %29 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ddir, align 4
  %fail_trap_policer_set = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 31
  call void @debugfs_create_bool(ptr noundef nonnull @.str.86, i16 noundef zeroext 384, ptr noundef %30, ptr noundef %fail_trap_policer_set) #12
  %31 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ddir, align 4
  %fail_trap_policer_counter_get = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 32
  call void @debugfs_create_bool(ptr noundef nonnull @.str.87, i16 noundef zeroext 384, ptr noundef %32, ptr noundef %fail_trap_policer_counter_get) #12
  %33 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ddir, align 4
  %call29 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.88, i16 noundef zeroext 384, ptr noundef %34, ptr noundef %nsim_dev, ptr noundef nonnull @nsim_dev_max_vfs_fops) #12
  %35 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ddir, align 4
  %call31 = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.89, ptr noundef %36) #12
  %nodes_ddir = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 6
  %37 = ptrtoint ptr %nodes_ddir to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call31, ptr %nodes_ddir, align 4
  %cmp.i84 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %call31 to i32
  %39 = ptrtoint ptr %ports_ddir to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ports_ddir, align 4
  call void @debugfs_remove(ptr noundef %40) #12
  %41 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ddir, align 4
  call void @debugfs_remove(ptr noundef %42) #12
  br label %cleanup

if.end37:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ddir, align 4
  %fail_trap_drop_counter_get = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 33
  call void @debugfs_create_bool(ptr noundef nonnull @.str.90, i16 noundef zeroext 384, ptr noundef %44, ptr noundef %fail_trap_drop_counter_get) #12
  call void @nsim_udp_tunnels_debugfs_create(ptr noundef %nsim_dev) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then34, %if.then11, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ %9, %if.then11 ], [ %38, %if.then34 ], [ 0, %if.end37 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dev_ddir_name) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nsim_fib_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsim_dev_health_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsim_bpf_dev_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsim_dev_psample_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nsim_dev_port_add_all(ptr noundef %nsim_dev, i32 noundef %port_count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port_count)
  %cmp6.not = icmp eq i32 %port_count, 0
  br i1 %cmp6.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %port_count
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call fastcc i32 @__nsim_dev_port_add(ptr noundef %nsim_dev, i32 noundef 0, i32 noundef %i.07)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %err_port_del_all

err_port_del_all:                                 ; preds = %for.body
  %port_list_lock.i = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %port_list_lock.i, i32 noundef 0) #12
  %port_list.i = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 18
  %0 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_list.i, align 4
  %cmp.not20.i = icmp eq ptr %1, %port_list.i
  br i1 %cmp.not20.i, label %err_port_del_all.nsim_dev_port_del_all.exit_crit_edge, label %err_port_del_all.for.body.i_crit_edge

err_port_del_all.for.body.i_crit_edge:            ; preds = %err_port_del_all
  br label %for.body.i

err_port_del_all.nsim_dev_port_del_all.exit_crit_edge: ; preds = %err_port_del_all
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_dev_port_del_all.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %err_port_del_all.for.body.i_crit_edge
  %nsim_dev_port.021.i = phi ptr [ %tmp.0.i, %for.body.i.for.body.i_crit_edge ], [ %1, %err_port_del_all.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %nsim_dev_port.021.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0.i = load ptr, ptr %nsim_dev_port.021.i, align 4
  tail call fastcc void @__nsim_dev_port_del(ptr noundef %nsim_dev_port.021.i) #12
  %cmp.not.i = icmp eq ptr %tmp.0.i, %port_list.i
  br i1 %cmp.not.i, label %for.body.i.nsim_dev_port_del_all.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.nsim_dev_port_del_all.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_dev_port_del_all.exit

nsim_dev_port_del_all.exit:                       ; preds = %for.body.i.nsim_dev_port_del_all.exit_crit_edge, %err_port_del_all.nsim_dev_port_del_all.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %port_list_lock.i) #12
  br label %cleanup

cleanup:                                          ; preds = %nsim_dev_port_del_all.exit, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %nsim_dev_port_del_all.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_set_features(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nsim_dev_psample_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nsim_bpf_dev_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nsim_dev_health_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nsim_fib_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsim_dev_debugfs_exit(ptr nocapture noundef readonly %nsim_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nodes_ddir = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 6
  %0 = ptrtoint ptr %nodes_ddir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nodes_ddir, align 4
  tail call void @debugfs_remove(ptr noundef %1) #12
  %ports_ddir = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 4
  %2 = ptrtoint ptr %ports_ddir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports_ddir, align 4
  tail call void @debugfs_remove(ptr noundef %3) #12
  %ddir = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 3
  %4 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddir, align 4
  tail call void @debugfs_remove(ptr noundef %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsim_dev_traps_exit(ptr noundef %devlink) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %trap_data = getelementptr inbounds %struct.nsim_dev, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %trap_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trap_data, align 4
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %1) #12
  tail call void @devlink_traps_unregister(ptr noundef %devlink, ptr noundef nonnull @nsim_traps_arr, i32 noundef 14) #12
  tail call void @devlink_trap_groups_unregister(ptr noundef %devlink, ptr noundef nonnull @nsim_trap_groups_arr, i32 noundef 6) #12
  tail call void @devlink_trap_policers_unregister(ptr noundef %devlink, ptr noundef nonnull @nsim_trap_policers_arr, i32 noundef 3) #12
  %2 = ptrtoint ptr %trap_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trap_data, align 4
  %trap_policers_cnt_arr = getelementptr inbounds %struct.nsim_trap_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %trap_policers_cnt_arr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trap_policers_cnt_arr, align 8
  tail call void @kfree(ptr noundef %5) #12
  %6 = ptrtoint ptr %trap_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trap_data, align 4
  %trap_items_arr = getelementptr inbounds %struct.nsim_trap_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %trap_items_arr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trap_items_arr, align 4
  tail call void @kfree(ptr noundef %9) #12
  %10 = ptrtoint ptr %trap_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trap_data, align 4
  tail call void @kfree(ptr noundef %11) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_params_unregister(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_resources_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nsim_drv_remove(ptr nocapture noundef %nsim_bus_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %nsim_bus_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @priv_to_devlink(ptr noundef %1) #12
  tail call void @devlink_unregister(ptr noundef %call1) #12
  tail call fastcc void @nsim_dev_reload_destroy(ptr noundef %1)
  tail call void @nsim_bpf_dev_exit(ptr noundef %1) #12
  %nodes_ddir.i = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %nodes_ddir.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nodes_ddir.i, align 4
  tail call void @debugfs_remove(ptr noundef %3) #12
  %ports_ddir.i = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ports_ddir.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports_ddir.i, align 4
  tail call void @debugfs_remove(ptr noundef %5) #12
  %ddir.i = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %ddir.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddir.i, align 4
  tail call void @debugfs_remove(ptr noundef %7) #12
  tail call void @devlink_params_unregister(ptr noundef %call1, ptr noundef nonnull @nsim_devlink_params, i32 noundef 2) #12
  tail call void @devlink_resources_unregister(ptr noundef %call1) #12
  %vfconfigs = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %vfconfigs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vfconfigs, align 4
  tail call void @kfree(ptr noundef %9) #12
  tail call void @devlink_free(ptr noundef %call1) #12
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %driver_data.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsim_dev_reload_destroy(ptr noundef %nsim_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @priv_to_devlink(ptr noundef %nsim_dev) #12
  %call1 = tail call zeroext i1 @devlink_is_reload_failed(ptr noundef %call) #12
  br i1 %call1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %take_snapshot = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 5
  %0 = ptrtoint ptr %take_snapshot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %take_snapshot, align 4
  tail call void @debugfs_remove(ptr noundef %1) #12
  %vfs_lock = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %vfs_lock, i32 noundef 0) #12
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i, label %if.end.nsim_dev_get_vfs.exit_crit_edge, label %land.rhs.i

if.end.nsim_dev_get_vfs.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_dev_get_vfs.exit

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 7, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %land.rhs.i.nsim_dev_get_vfs.exit_crit_edge, !prof !234

land.rhs.i.nsim_dev_get_vfs.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_dev_get_vfs.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 9, ptr noundef null) #12
  br label %nsim_dev_get_vfs.exit

nsim_dev_get_vfs.exit:                            ; preds = %do.end.i, %land.rhs.i.nsim_dev_get_vfs.exit_crit_edge, %if.end.nsim_dev_get_vfs.exit_crit_edge
  %2 = ptrtoint ptr %nsim_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nsim_dev, align 4
  %num_vfs.i = getelementptr inbounds %struct.nsim_bus_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %num_vfs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_vfs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %nsim_dev_get_vfs.exit.if.end8_crit_edge, label %if.then3

nsim_dev_get_vfs.exit.if.end8_crit_edge:          ; preds = %nsim_dev_get_vfs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then3:                                         ; preds = %nsim_dev_get_vfs.exit
  tail call void @rtnl_lock() #12
  %6 = ptrtoint ptr %num_vfs.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %num_vfs.i, align 8
  tail call void @rtnl_unlock() #12
  %esw_mode.i = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 36
  %7 = ptrtoint ptr %esw_mode.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %esw_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cmp.i = icmp eq i16 %8, 1
  br i1 %cmp.i, label %if.then5, label %if.then3.if.end8_crit_edge

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then5:                                         ; preds = %if.then3
  %call.i25 = tail call ptr @priv_to_devlink(ptr noundef %nsim_dev) #12
  tail call void @devlink_rate_nodes_destroy(ptr noundef %call.i25) #12
  %port_list_lock.i = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %port_list_lock.i, i32 noundef 0) #12
  %port_list.i = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 18
  %9 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port_list.i, align 4
  %cmp.not2.i = icmp eq ptr %10, %port_list.i
  br i1 %cmp.not2.i, label %if.then5.nsim_esw_legacy_enable.exit_crit_edge, label %if.then5.for.body.i_crit_edge

if.then5.for.body.i_crit_edge:                    ; preds = %if.then5
  br label %for.body.i

if.then5.nsim_esw_legacy_enable.exit_crit_edge:   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_esw_legacy_enable.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then5.for.body.i_crit_edge
  %nsim_dev_port.03.i = phi ptr [ %tmp.04.i, %for.inc.i.for.body.i_crit_edge ], [ %10, %if.then5.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %nsim_dev_port.03.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %tmp.04.i = load ptr, ptr %nsim_dev_port.03.i, align 4
  %port_type.i.i = getelementptr inbounds %struct.nsim_dev_port, ptr %nsim_dev_port.03.i, i32 0, i32 3
  %12 = ptrtoint ptr %port_type.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 1
  br i1 %cmp.i.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__nsim_dev_port_del(ptr noundef %nsim_dev_port.03.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.04.i, %port_list.i
  br i1 %cmp.not.i, label %for.inc.i.nsim_esw_legacy_enable.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.nsim_esw_legacy_enable.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_esw_legacy_enable.exit

nsim_esw_legacy_enable.exit:                      ; preds = %for.inc.i.nsim_esw_legacy_enable.exit_crit_edge, %if.then5.nsim_esw_legacy_enable.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %port_list_lock.i) #12
  %14 = ptrtoint ptr %esw_mode.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %esw_mode.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %nsim_esw_legacy_enable.exit, %if.then3.if.end8_crit_edge, %nsim_dev_get_vfs.exit.if.end8_crit_edge
  tail call void @mutex_unlock(ptr noundef %vfs_lock) #12
  %port_list_lock.i27 = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %port_list_lock.i27, i32 noundef 0) #12
  %port_list.i28 = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 18
  %15 = ptrtoint ptr %port_list.i28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port_list.i28, align 4
  %cmp.not20.i = icmp eq ptr %16, %port_list.i28
  br i1 %cmp.not20.i, label %if.end8.nsim_dev_port_del_all.exit_crit_edge, label %if.end8.for.body.i30_crit_edge

if.end8.for.body.i30_crit_edge:                   ; preds = %if.end8
  br label %for.body.i30

if.end8.nsim_dev_port_del_all.exit_crit_edge:     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_dev_port_del_all.exit

for.body.i30:                                     ; preds = %for.body.i30.for.body.i30_crit_edge, %if.end8.for.body.i30_crit_edge
  %nsim_dev_port.021.i = phi ptr [ %tmp.0.i, %for.body.i30.for.body.i30_crit_edge ], [ %16, %if.end8.for.body.i30_crit_edge ]
  %17 = ptrtoint ptr %nsim_dev_port.021.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %tmp.0.i = load ptr, ptr %nsim_dev_port.021.i, align 4
  tail call fastcc void @__nsim_dev_port_del(ptr noundef %nsim_dev_port.021.i) #12
  %cmp.not.i29 = icmp eq ptr %tmp.0.i, %port_list.i28
  br i1 %cmp.not.i29, label %for.body.i30.nsim_dev_port_del_all.exit_crit_edge, label %for.body.i30.for.body.i30_crit_edge

for.body.i30.for.body.i30_crit_edge:              ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i30

for.body.i30.nsim_dev_port_del_all.exit_crit_edge: ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_dev_port_del_all.exit

nsim_dev_port_del_all.exit:                       ; preds = %for.body.i30.nsim_dev_port_del_all.exit_crit_edge, %if.end8.nsim_dev_port_del_all.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %port_list_lock.i27) #12
  tail call void @nsim_dev_psample_exit(ptr noundef %nsim_dev) #12
  tail call void @nsim_dev_health_exit(ptr noundef %nsim_dev) #12
  %fib_data = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 1
  %18 = ptrtoint ptr %fib_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fib_data, align 4
  tail call void @nsim_fib_destroy(ptr noundef %call, ptr noundef %19) #12
  %call.i31 = tail call ptr @devlink_priv(ptr noundef %call) #12
  %trap_data.i = getelementptr inbounds %struct.nsim_dev, ptr %call.i31, i32 0, i32 2
  %20 = ptrtoint ptr %trap_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trap_data.i, align 4
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %21) #12
  tail call void @devlink_traps_unregister(ptr noundef %call, ptr noundef nonnull @nsim_traps_arr, i32 noundef 14) #12
  tail call void @devlink_trap_groups_unregister(ptr noundef %call, ptr noundef nonnull @nsim_trap_groups_arr, i32 noundef 6) #12
  tail call void @devlink_trap_policers_unregister(ptr noundef %call, ptr noundef nonnull @nsim_trap_policers_arr, i32 noundef 3) #12
  %22 = ptrtoint ptr %trap_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %trap_data.i, align 4
  %trap_policers_cnt_arr.i = getelementptr inbounds %struct.nsim_trap_data, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %trap_policers_cnt_arr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %trap_policers_cnt_arr.i, align 8
  tail call void @kfree(ptr noundef %25) #12
  %26 = ptrtoint ptr %trap_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %trap_data.i, align 4
  %trap_items_arr.i = getelementptr inbounds %struct.nsim_trap_data, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %trap_items_arr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %trap_items_arr.i, align 4
  tail call void @kfree(ptr noundef %29) #12
  %30 = ptrtoint ptr %trap_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trap_data.i, align 4
  tail call void @kfree(ptr noundef %31) #12
  %dummy_region.i = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 26
  %32 = ptrtoint ptr %dummy_region.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dummy_region.i, align 4
  tail call void @devlink_region_destroy(ptr noundef %33) #12
  tail call void @mutex_destroy(ptr noundef %port_list_lock.i27) #12
  br label %cleanup

cleanup:                                          ; preds = %nsim_dev_port_del_all.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nsim_drv_port_add(ptr nocapture noundef readonly %nsim_bus_dev, i32 noundef %type, i32 noundef %port_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %nsim_bus_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %port_list_lock = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %port_list_lock, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cond.i.i = icmp eq i32 %type, 1
  %add.i.i = add i32 %port_index, 128
  %spec.select.i.i = select i1 %cond.i.i, i32 %add.i.i, i32 %port_index
  %port_list.i = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 18
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %nsim_dev_port.0.in.i = phi ptr [ %port_list.i, %entry ], [ %nsim_dev_port.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %nsim_dev_port.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %nsim_dev_port.0.i = load ptr, ptr %nsim_dev_port.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %nsim_dev_port.0.i, %port_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.else_crit_edge, label %for.body.i

for.cond.i.if.else_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

for.body.i:                                       ; preds = %for.cond.i
  %port_index2.i = getelementptr inbounds %struct.nsim_dev_port, ptr %nsim_dev_port.0.i, i32 0, i32 2
  %3 = ptrtoint ptr %port_index2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_index2.i, align 4
  %cmp3.i = icmp eq i32 %4, %spec.select.i.i
  br i1 %cmp3.i, label %__nsim_dev_port_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

__nsim_dev_port_lookup.exit:                      ; preds = %for.body.i
  %tobool.not = icmp eq ptr %nsim_dev_port.0.i, null
  br i1 %tobool.not, label %__nsim_dev_port_lookup.exit.if.else_crit_edge, label %__nsim_dev_port_lookup.exit.if.end_crit_edge

__nsim_dev_port_lookup.exit.if.end_crit_edge:     ; preds = %__nsim_dev_port_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

__nsim_dev_port_lookup.exit.if.else_crit_edge:    ; preds = %__nsim_dev_port_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.else:                                          ; preds = %__nsim_dev_port_lookup.exit.if.else_crit_edge, %for.cond.i.if.else_crit_edge
  %call2 = tail call fastcc i32 @__nsim_dev_port_add(ptr noundef %1, i32 noundef %type, i32 noundef %port_index)
  br label %if.end

if.end:                                           ; preds = %if.else, %__nsim_dev_port_lookup.exit.if.end_crit_edge
  %err.0 = phi i32 [ %call2, %if.else ], [ -17, %__nsim_dev_port_lookup.exit.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %port_list_lock) #12
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__nsim_dev_port_add(ptr noundef %nsim_dev, i32 noundef %type, i32 noundef %port_index) unnamed_addr #0 align 64 {
entry:
  %port_ddir_name.i = alloca [16 x i8], align 1
  %dev_link_name.i = alloca [32 x i8], align 1
  %attrs = alloca %struct.devlink_port_attrs, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %attrs) #12
  %0 = call ptr @memset(ptr %attrs, i32 0, i32 60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i, label %land.lhs.true.nsim_dev_get_vfs.exit_crit_edge, label %land.rhs.i

land.lhs.true.nsim_dev_get_vfs.exit_crit_edge:    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_dev_get_vfs.exit

land.rhs.i:                                       ; preds = %land.lhs.true
  %dep_map.i = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 7, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %land.rhs.i.nsim_dev_get_vfs.exit_crit_edge, !prof !234

land.rhs.i.nsim_dev_get_vfs.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_dev_get_vfs.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 9, ptr noundef null) #12
  br label %nsim_dev_get_vfs.exit

nsim_dev_get_vfs.exit:                            ; preds = %do.end.i, %land.rhs.i.nsim_dev_get_vfs.exit_crit_edge, %land.lhs.true.nsim_dev_get_vfs.exit_crit_edge
  %1 = ptrtoint ptr %nsim_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nsim_dev, align 4
  %num_vfs.i = getelementptr inbounds %struct.nsim_bus_dev, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %num_vfs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_vfs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %nsim_dev_get_vfs.exit.cleanup_crit_edge, label %nsim_dev_get_vfs.exit.if.end_crit_edge

nsim_dev_get_vfs.exit.if.end_crit_edge:           ; preds = %nsim_dev_get_vfs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

nsim_dev_get_vfs.exit.cleanup_crit_edge:          ; preds = %nsim_dev_get_vfs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %nsim_dev_get_vfs.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 388) #17
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.i = add i32 %port_index, 128
  %spec.select.i = select i1 %cmp, i32 %add.i, i32 %port_index
  %port_index6 = getelementptr inbounds %struct.nsim_dev_port, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %port_index6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select.i, ptr %port_index6, align 4
  %port_type = getelementptr inbounds %struct.nsim_dev_port, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %port_type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %type, ptr %port_type, align 8
  %devlink_port7 = getelementptr inbounds %struct.nsim_dev_port, ptr %call7.i.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.i = icmp eq i32 %type, 0
  br i1 %cmp.i, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %add = add i32 %port_index, 1
  %8 = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %8, align 4
  br label %if.end11

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %pf = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs, i32 0, i32 4, i32 0, i32 1
  %10 = ptrtoint ptr %pf to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %pf, align 4
  %conv = trunc i32 %port_index to i16
  %vf = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs, i32 0, i32 4, i32 0, i32 2
  %11 = ptrtoint ptr %vf to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %vf, align 2
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9
  %.sink = phi i32 [ 0, %if.then9 ], [ 4, %if.else ]
  %12 = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %12, align 4
  %switch_id = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs, i32 0, i32 3
  %switch_id12 = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 17
  %id_len = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 17, i32 1
  %14 = ptrtoint ptr %id_len to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %id_len, align 4
  %conv16 = zext i8 %15 to i32
  %16 = call ptr @memcpy(ptr %switch_id, ptr %switch_id12, i32 %conv16)
  %id_len20 = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %id_len20 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %15, ptr %id_len20, align 4
  call void @devlink_port_attrs_set(ptr noundef %devlink_port7, ptr noundef nonnull %attrs) #12
  %call21 = call ptr @priv_to_devlink(ptr noundef %nsim_dev) #12
  %18 = ptrtoint ptr %port_index6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_index6, align 4
  %call23 = call i32 @devlink_port_register(ptr noundef %call21, ptr noundef %devlink_port7, i32 noundef %19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end11.err_port_free_crit_edge

if.end11.err_port_free_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_port_free

if.end26:                                         ; preds = %if.end11
  %20 = ptrtoint ptr %nsim_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nsim_dev, align 4
  %22 = ptrtoint ptr %port_index6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port_index6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %port_ddir_name.i) #12
  %24 = call ptr @memset(ptr %port_ddir_name.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dev_link_name.i) #12
  %25 = call ptr @memset(ptr %dev_link_name.i, i32 255, i32 32)
  %call.i86 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %port_ddir_name.i, ptr noundef nonnull @.str.95, i32 noundef %23) #12
  %ports_ddir.i = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 4
  %26 = ptrtoint ptr %ports_ddir.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ports_ddir.i, align 4
  %call4.i = call ptr @debugfs_create_dir(ptr noundef nonnull %port_ddir_name.i, ptr noundef %27) #12
  %ddir.i = getelementptr inbounds %struct.nsim_dev_port, ptr %call7.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %ddir.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call4.i, ptr %ddir.i, align 4
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %nsim_dev_port_debugfs_init.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end26
  %id.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 30
  %29 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id.i, align 4
  %call10.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %dev_link_name.i, ptr noundef nonnull @.str.96, i32 noundef %30) #12
  %31 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.i42.i = icmp eq i32 %32, 1
  br i1 %cmp.i42.i, label %if.then12.i, label %if.end.i.nsim_dev_port_debugfs_init.exit.thread_crit_edge

if.end.i.nsim_dev_port_debugfs_init.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_dev_port_debugfs_init.exit.thread

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %23, -128
  %33 = ptrtoint ptr %ddir.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ddir.i, align 4
  %vfconfigs.i = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 8
  %35 = ptrtoint ptr %vfconfigs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vfconfigs.i, align 4
  %min_tx_rate.i = getelementptr %struct.nsim_vf_config, ptr %36, i32 %sub.i.i, i32 1
  call void @debugfs_create_u16(ptr noundef nonnull @.str.31, i16 noundef zeroext 256, ptr noundef %34, ptr noundef %min_tx_rate.i) #12
  %37 = ptrtoint ptr %ddir.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ddir.i, align 4
  %39 = ptrtoint ptr %vfconfigs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vfconfigs.i, align 4
  %max_tx_rate.i = getelementptr %struct.nsim_vf_config, ptr %40, i32 %sub.i.i, i32 2
  call void @debugfs_create_u16(ptr noundef nonnull @.str.38, i16 noundef zeroext 256, ptr noundef %38, ptr noundef %max_tx_rate.i) #12
  %41 = ptrtoint ptr %ddir.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ddir.i, align 4
  %parent_name.i = getelementptr inbounds %struct.nsim_dev_port, ptr %call7.i.i, i32 0, i32 6
  %call19.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.39, i16 noundef zeroext 256, ptr noundef %42, ptr noundef %parent_name.i, ptr noundef nonnull @nsim_dev_rate_parent_fops) #12
  %rate_parent.i = getelementptr inbounds %struct.nsim_dev_port, ptr %call7.i.i, i32 0, i32 5
  %43 = ptrtoint ptr %rate_parent.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call19.i, ptr %rate_parent.i, align 8
  br label %nsim_dev_port_debugfs_init.exit.thread

nsim_dev_port_debugfs_init.exit.thread:           ; preds = %if.then12.i, %if.end.i.nsim_dev_port_debugfs_init.exit.thread_crit_edge
  %44 = ptrtoint ptr %ddir.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ddir.i, align 4
  %call23.i = call ptr @debugfs_create_symlink(ptr noundef nonnull @.str.97, ptr noundef %45, ptr noundef nonnull %dev_link_name.i) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dev_link_name.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %port_ddir_name.i) #12
  %call31 = call ptr @nsim_create(ptr noundef %nsim_dev, ptr noundef nonnull %call7.i.i) #12
  %ns = getelementptr inbounds %struct.nsim_dev_port, ptr %call7.i.i, i32 0, i32 7
  %46 = ptrtoint ptr %ns to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call31, ptr %ns, align 8
  %cmp.i87 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87, label %if.then34, label %if.end37

nsim_dev_port_debugfs_init.exit:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %call4.i to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dev_link_name.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %port_ddir_name.i) #12
  br label %err_dl_port_unregister

if.then34:                                        ; preds = %nsim_dev_port_debugfs_init.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %call31 to i32
  br label %err_port_debugfs_exit

if.end37:                                         ; preds = %nsim_dev_port_debugfs_init.exit.thread
  %49 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp.i89 = icmp eq i32 %50, 1
  br i1 %cmp.i89, label %if.then39, label %if.end37.if.end45_crit_edge

if.end37.if.end45_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then39:                                        ; preds = %if.end37
  %call41 = call i32 @devlink_rate_leaf_create(ptr noundef %devlink_port7, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then39.if.end45_crit_edge, label %err_nsim_destroy

if.then39.if.end45_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.end45:                                         ; preds = %if.then39.if.end45_crit_edge, %if.end37.if.end45_crit_edge
  %51 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ns, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  call void @devlink_port_type_eth_set(ptr noundef %devlink_port7, ptr noundef %54) #12
  %port_list = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 18
  %55 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %port_list, align 4
  %call.i.i90 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %port_list, ptr noundef %56) #12
  br i1 %call.i.i90, label %if.end.i.i, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %58 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %56, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %port_list, ptr %prev3.i.i, align 4
  %60 = ptrtoint ptr %port_list to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %call7.i.i, ptr %port_list, align 4
  br label %cleanup

err_nsim_destroy:                                 ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ns, align 8
  call void @nsim_destroy(ptr noundef %62) #12
  br label %err_port_debugfs_exit

err_port_debugfs_exit:                            ; preds = %err_nsim_destroy, %if.then34
  %err.0 = phi i32 [ %48, %if.then34 ], [ %call41, %err_nsim_destroy ]
  %63 = ptrtoint ptr %ddir.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ddir.i, align 4
  call void @debugfs_remove(ptr noundef %64) #12
  br label %err_dl_port_unregister

err_dl_port_unregister:                           ; preds = %err_port_debugfs_exit, %nsim_dev_port_debugfs_init.exit
  %err.1 = phi i32 [ %47, %nsim_dev_port_debugfs_init.exit ], [ %err.0, %err_port_debugfs_exit ]
  call void @devlink_port_unregister(ptr noundef %devlink_port7) #12
  br label %err_port_free

err_port_free:                                    ; preds = %err_dl_port_unregister, %if.end11.err_port_free_crit_edge
  %err.2 = phi i32 [ %call23, %if.end11.err_port_free_crit_edge ], [ %err.1, %err_dl_port_unregister ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %err_port_free, %if.end.i.i, %if.end45.cleanup_crit_edge, %if.end.cleanup_crit_edge, %nsim_dev_get_vfs.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %err_port_free ], [ -22, %nsim_dev_get_vfs.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %attrs) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nsim_drv_port_del(ptr nocapture noundef readonly %nsim_bus_dev, i32 noundef %type, i32 noundef %port_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %nsim_bus_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %port_list_lock = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %port_list_lock, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cond.i.i = icmp eq i32 %type, 1
  %add.i.i = add i32 %port_index, 128
  %spec.select.i.i = select i1 %cond.i.i, i32 %add.i.i, i32 %port_index
  %port_list.i = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 18
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %nsim_dev_port.0.in.i = phi ptr [ %port_list.i, %entry ], [ %nsim_dev_port.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %nsim_dev_port.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %nsim_dev_port.0.i = load ptr, ptr %nsim_dev_port.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %nsim_dev_port.0.i, %port_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %port_index2.i = getelementptr inbounds %struct.nsim_dev_port, ptr %nsim_dev_port.0.i, i32 0, i32 2
  %3 = ptrtoint ptr %port_index2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_index2.i, align 4
  %cmp3.i = icmp eq i32 %4, %spec.select.i.i
  br i1 %cmp3.i, label %__nsim_dev_port_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

__nsim_dev_port_lookup.exit:                      ; preds = %for.body.i
  %tobool.not = icmp eq ptr %nsim_dev_port.0.i, null
  br i1 %tobool.not, label %__nsim_dev_port_lookup.exit.if.end_crit_edge, label %if.else

__nsim_dev_port_lookup.exit.if.end_crit_edge:     ; preds = %__nsim_dev_port_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %__nsim_dev_port_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__nsim_dev_port_del(ptr noundef nonnull %nsim_dev_port.0.i)
  br label %if.end

if.end:                                           ; preds = %if.else, %__nsim_dev_port_lookup.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %err.0 = phi i32 [ 0, %if.else ], [ -2, %__nsim_dev_port_lookup.exit.if.end_crit_edge ], [ -2, %for.cond.i.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %port_list_lock) #12
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__nsim_dev_port_del(ptr noundef %nsim_dev_port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink_port1 = getelementptr inbounds %struct.nsim_dev_port, ptr %nsim_dev_port, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %nsim_dev_port) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %nsim_dev_port, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %nsim_dev_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nsim_dev_port, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %nsim_dev_port to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %nsim_dev_port, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %nsim_dev_port, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %port_type.i = getelementptr inbounds %struct.nsim_dev_port, ptr %nsim_dev_port, i32 0, i32 3
  %8 = ptrtoint ptr %port_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  br i1 %cmp.i, label %if.then, label %list_del.exit.if.end_crit_edge

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @devlink_rate_leaf_destroy(ptr noundef %devlink_port1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  tail call void @devlink_port_type_clear(ptr noundef %devlink_port1) #12
  %ns = getelementptr inbounds %struct.nsim_dev_port, ptr %nsim_dev_port, i32 0, i32 7
  %10 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ns, align 4
  tail call void @nsim_destroy(ptr noundef %11) #12
  %ddir.i = getelementptr inbounds %struct.nsim_dev_port, ptr %nsim_dev_port, i32 0, i32 4
  %12 = ptrtoint ptr %ddir.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ddir.i, align 4
  tail call void @debugfs_remove(ptr noundef %13) #12
  tail call void @devlink_port_unregister(ptr noundef %devlink_port1) #12
  tail call void @kfree(ptr noundef %nsim_dev_port) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nsim_drv_configure_vfs(ptr nocapture noundef %nsim_bus_dev, i32 noundef %num_vfs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %nsim_bus_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vfs_lock = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %vfs_lock, i32 noundef 0) #12
  %num_vfs1 = getelementptr inbounds %struct.nsim_bus_dev, ptr %nsim_bus_dev, i32 0, i32 6
  %2 = ptrtoint ptr %num_vfs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_vfs1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %num_vfs)
  %cmp = icmp eq i32 %3, %num_vfs
  br i1 %cmp, label %entry.exit_unlock_crit_edge, label %if.end

entry.exit_unlock_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_vfs)
  %tobool3.not = icmp eq i32 %num_vfs, 0
  %or.cond = or i1 %tobool3.not, %tobool.not
  br i1 %or.cond, label %if.end5, label %if.end.exit_unlock_crit_edge

if.end.exit_unlock_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_unlock

if.end5:                                          ; preds = %if.end
  %max_vfs = getelementptr inbounds %struct.nsim_bus_dev, ptr %nsim_bus_dev, i32 0, i32 5
  %4 = ptrtoint ptr %max_vfs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_vfs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %num_vfs)
  %cmp6 = icmp ult i32 %5, %num_vfs
  br i1 %cmp6, label %if.end5.exit_unlock_crit_edge, label %if.end8

if.end5.exit_unlock_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_unlock

if.end8:                                          ; preds = %if.end5
  tail call void @rtnl_lock() #12
  %6 = ptrtoint ptr %num_vfs1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %num_vfs, ptr %num_vfs1, align 8
  tail call void @rtnl_unlock() #12
  %esw_mode.i = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 36
  %7 = ptrtoint ptr %esw_mode.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %esw_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cmp.i = icmp eq i16 %8, 1
  br i1 %cmp.i, label %if.then10, label %if.end8.exit_unlock_crit_edge

if.end8.exit_unlock_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_unlock

if.then10:                                        ; preds = %if.end8
  br i1 %tobool3.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then10
  %call13 = tail call fastcc i32 @nsim_esw_switchdev_enable(ptr noundef %1, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.exit_unlock_crit_edge, label %if.then15

if.then12.exit_unlock_crit_edge:                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_unlock

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rtnl_lock() #12
  %9 = ptrtoint ptr %num_vfs1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %num_vfs1, align 8
  tail call void @rtnl_unlock() #12
  br label %exit_unlock

if.else:                                          ; preds = %if.then10
  %call.i = tail call ptr @priv_to_devlink(ptr noundef %1) #12
  tail call void @devlink_rate_nodes_destroy(ptr noundef %call.i) #12
  %port_list_lock.i = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %port_list_lock.i, i32 noundef 0) #12
  %port_list.i = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_list.i, align 4
  %cmp.not2.i = icmp eq ptr %11, %port_list.i
  br i1 %cmp.not2.i, label %if.else.nsim_esw_legacy_enable.exit_crit_edge, label %if.else.for.body.i_crit_edge

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

if.else.nsim_esw_legacy_enable.exit_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_esw_legacy_enable.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %nsim_dev_port.03.i = phi ptr [ %tmp.04.i, %for.inc.i.for.body.i_crit_edge ], [ %11, %if.else.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %nsim_dev_port.03.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %tmp.04.i = load ptr, ptr %nsim_dev_port.03.i, align 4
  %port_type.i.i = getelementptr inbounds %struct.nsim_dev_port, ptr %nsim_dev_port.03.i, i32 0, i32 3
  %13 = ptrtoint ptr %port_type.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i.i = icmp eq i32 %14, 1
  br i1 %cmp.i.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__nsim_dev_port_del(ptr noundef %nsim_dev_port.03.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.04.i, %port_list.i
  br i1 %cmp.not.i, label %for.inc.i.nsim_esw_legacy_enable.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.nsim_esw_legacy_enable.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_esw_legacy_enable.exit

nsim_esw_legacy_enable.exit:                      ; preds = %for.inc.i.nsim_esw_legacy_enable.exit_crit_edge, %if.else.nsim_esw_legacy_enable.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %port_list_lock.i) #12
  %15 = ptrtoint ptr %esw_mode.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %esw_mode.i, align 4
  br label %exit_unlock

exit_unlock:                                      ; preds = %nsim_esw_legacy_enable.exit, %if.then15, %if.then12.exit_unlock_crit_edge, %if.end8.exit_unlock_crit_edge, %if.end5.exit_unlock_crit_edge, %if.end.exit_unlock_crit_edge, %entry.exit_unlock_crit_edge
  %ret.0 = phi i32 [ 0, %entry.exit_unlock_crit_edge ], [ %call13, %if.then15 ], [ 0, %if.then12.exit_unlock_crit_edge ], [ 0, %nsim_esw_legacy_enable.exit ], [ 0, %if.end8.exit_unlock_crit_edge ], [ -16, %if.end.exit_unlock_crit_edge ], [ -12, %if.end5.exit_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %vfs_lock) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nsim_esw_switchdev_enable(ptr noundef %nsim_dev, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nsim_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nsim_dev, align 4
  %dep_map.i = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 7, i32 5
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i, label %for.cond.nsim_dev_get_vfs.exit_crit_edge, label %land.rhs.i

for.cond.nsim_dev_get_vfs.exit_crit_edge:         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_dev_get_vfs.exit

land.rhs.i:                                       ; preds = %for.cond
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %land.rhs.i.nsim_dev_get_vfs.exit_crit_edge, !prof !234

land.rhs.i.nsim_dev_get_vfs.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_dev_get_vfs.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 9, ptr noundef null) #12
  br label %nsim_dev_get_vfs.exit

nsim_dev_get_vfs.exit:                            ; preds = %do.end.i, %land.rhs.i.nsim_dev_get_vfs.exit_crit_edge, %for.cond.nsim_dev_get_vfs.exit_crit_edge
  %2 = ptrtoint ptr %nsim_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nsim_dev, align 4
  %num_vfs.i = getelementptr inbounds %struct.nsim_bus_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %num_vfs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_vfs.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %5)
  %cmp = icmp ult i32 %i.0, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %nsim_dev_get_vfs.exit
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %port_list_lock.i = getelementptr inbounds %struct.nsim_dev, ptr %7, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %port_list_lock.i, i32 noundef 0) #12
  %add.i.i.i = add i32 %i.0, 128
  %port_list.i.i = getelementptr inbounds %struct.nsim_dev, ptr %7, i32 0, i32 18
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body
  %nsim_dev_port.0.in.i.i = phi ptr [ %port_list.i.i, %for.body ], [ %nsim_dev_port.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %8 = ptrtoint ptr %nsim_dev_port.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %nsim_dev_port.0.i.i = load ptr, ptr %nsim_dev_port.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %nsim_dev_port.0.i.i, %port_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.nsim_drv_port_add.exit_crit_edge, label %for.body.i.i

for.cond.i.i.nsim_drv_port_add.exit_crit_edge:    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_drv_port_add.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %port_index2.i.i = getelementptr inbounds %struct.nsim_dev_port, ptr %nsim_dev_port.0.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %port_index2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port_index2.i.i, align 4
  %cmp3.i.i = icmp eq i32 %10, %add.i.i.i
  br i1 %cmp3.i.i, label %__nsim_dev_port_lookup.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

__nsim_dev_port_lookup.exit.i:                    ; preds = %for.body.i.i
  %tobool.not.i32 = icmp eq ptr %nsim_dev_port.0.i.i, null
  br i1 %tobool.not.i32, label %__nsim_dev_port_lookup.exit.i.nsim_drv_port_add.exit_crit_edge, label %nsim_drv_port_add.exit.thread

__nsim_dev_port_lookup.exit.i.nsim_drv_port_add.exit_crit_edge: ; preds = %__nsim_dev_port_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_drv_port_add.exit

nsim_drv_port_add.exit.thread:                    ; preds = %__nsim_dev_port_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %port_list_lock.i) #12
  br label %do.body

nsim_drv_port_add.exit:                           ; preds = %__nsim_dev_port_lookup.exit.i.nsim_drv_port_add.exit_crit_edge, %for.cond.i.i.nsim_drv_port_add.exit_crit_edge
  %call2.i = tail call fastcc i32 @__nsim_dev_port_add(ptr noundef %7, i32 noundef 1, i32 noundef %i.0) #12
  tail call void @mutex_unlock(ptr noundef %port_list_lock.i) #12
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %for.inc, label %nsim_drv_port_add.exit.do.body_crit_edge

nsim_drv_port_add.exit.do.body_crit_edge:         ; preds = %nsim_drv_port_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %nsim_drv_port_add.exit.do.body_crit_edge, %nsim_drv_port_add.exit.thread
  %err.0.i50 = phi i32 [ -17, %nsim_drv_port_add.exit.thread ], [ %call2.i, %nsim_drv_port_add.exit.do.body_crit_edge ]
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_esw_switchdev_enable.__msg) #12
  %tobool3.not = icmp eq ptr %extack, null
  br i1 %tobool3.not, label %do.body.if.end_crit_edge, label %if.then4

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @nsim_esw_switchdev_enable.__msg, ptr %extack, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %do.body.if.end_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %i.0, i32 noundef %err.0.i50) #16
  %i.160 = add i32 %i.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.160)
  %cmp1161 = icmp sgt i32 %i.160, -1
  br i1 %cmp1161, label %if.end.for.body12_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.for.body12_crit_edge:                      ; preds = %if.end
  br label %for.body12

for.inc:                                          ; preds = %nsim_drv_port_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %nsim_dev_get_vfs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %esw_mode = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 36
  %12 = ptrtoint ptr %esw_mode to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %esw_mode, align 4
  br label %cleanup

for.body12:                                       ; preds = %nsim_drv_port_del.exit.for.body12_crit_edge, %if.end.for.body12_crit_edge
  %i.163 = phi i32 [ %i.1, %nsim_drv_port_del.exit.for.body12_crit_edge ], [ %i.160, %if.end.for.body12_crit_edge ]
  %i.1.in62 = phi i32 [ %i.163, %nsim_drv_port_del.exit.for.body12_crit_edge ], [ %i.0, %if.end.for.body12_crit_edge ]
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i, align 4
  %port_list_lock.i34 = getelementptr inbounds %struct.nsim_dev, ptr %14, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %port_list_lock.i34, i32 noundef 0) #12
  %add.i.i.i35 = add nuw i32 %i.1.in62, 127
  %port_list.i.i36 = getelementptr inbounds %struct.nsim_dev, ptr %14, i32 0, i32 18
  br label %for.cond.i.i40

for.cond.i.i40:                                   ; preds = %for.body.i.i43.for.cond.i.i40_crit_edge, %for.body12
  %nsim_dev_port.0.in.i.i37 = phi ptr [ %port_list.i.i36, %for.body12 ], [ %nsim_dev_port.0.i.i38, %for.body.i.i43.for.cond.i.i40_crit_edge ]
  %15 = ptrtoint ptr %nsim_dev_port.0.in.i.i37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %nsim_dev_port.0.i.i38 = load ptr, ptr %nsim_dev_port.0.in.i.i37, align 4
  %cmp.not.i.i39 = icmp eq ptr %nsim_dev_port.0.i.i38, %port_list.i.i36
  br i1 %cmp.not.i.i39, label %for.cond.i.i40.nsim_drv_port_del.exit_crit_edge, label %for.body.i.i43

for.cond.i.i40.nsim_drv_port_del.exit_crit_edge:  ; preds = %for.cond.i.i40
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_drv_port_del.exit

for.body.i.i43:                                   ; preds = %for.cond.i.i40
  %port_index2.i.i41 = getelementptr inbounds %struct.nsim_dev_port, ptr %nsim_dev_port.0.i.i38, i32 0, i32 2
  %16 = ptrtoint ptr %port_index2.i.i41 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_index2.i.i41, align 4
  %cmp3.i.i42 = icmp eq i32 %17, %add.i.i.i35
  br i1 %cmp3.i.i42, label %__nsim_dev_port_lookup.exit.i45, label %for.body.i.i43.for.cond.i.i40_crit_edge

for.body.i.i43.for.cond.i.i40_crit_edge:          ; preds = %for.body.i.i43
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i40

__nsim_dev_port_lookup.exit.i45:                  ; preds = %for.body.i.i43
  %tobool.not.i44 = icmp eq ptr %nsim_dev_port.0.i.i38, null
  br i1 %tobool.not.i44, label %__nsim_dev_port_lookup.exit.i45.nsim_drv_port_del.exit_crit_edge, label %if.else.i46

__nsim_dev_port_lookup.exit.i45.nsim_drv_port_del.exit_crit_edge: ; preds = %__nsim_dev_port_lookup.exit.i45
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_drv_port_del.exit

if.else.i46:                                      ; preds = %__nsim_dev_port_lookup.exit.i45
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__nsim_dev_port_del(ptr noundef nonnull %nsim_dev_port.0.i.i38) #12
  br label %nsim_drv_port_del.exit

nsim_drv_port_del.exit:                           ; preds = %if.else.i46, %__nsim_dev_port_lookup.exit.i45.nsim_drv_port_del.exit_crit_edge, %for.cond.i.i40.nsim_drv_port_del.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %port_list_lock.i34) #12
  %i.1 = add i32 %i.163, -1
  %cmp11 = icmp sgt i32 %i.1, -1
  br i1 %cmp11, label %nsim_drv_port_del.exit.for.body12_crit_edge, label %nsim_drv_port_del.exit.cleanup_crit_edge

nsim_drv_port_del.exit.cleanup_crit_edge:         ; preds = %nsim_drv_port_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

nsim_drv_port_del.exit.for.body12_crit_edge:      ; preds = %nsim_drv_port_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body12

cleanup:                                          ; preds = %nsim_drv_port_del.exit.cleanup_crit_edge, %for.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %err.0.i50, %if.end.cleanup_crit_edge ], [ %err.0.i50, %nsim_drv_port_del.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nsim_dev_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.6, ptr noundef null) #12
  store ptr %call, ptr @nsim_dev_ddir, align 4
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %0 = ptrtoint ptr %call to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %0, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nsim_dev_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @nsim_dev_ddir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_dev_reload_down(ptr noundef %devlink, i1 noundef zeroext %netns_change, i32 noundef %action, i32 noundef %limit, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %nsim_bus_reload_lock = getelementptr inbounds %struct.nsim_bus_dev, ptr %1, i32 0, i32 7
  %call2 = tail call i32 @mutex_trylock(ptr noundef %nsim_bus_reload_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dont_allow_reload = getelementptr inbounds %struct.nsim_dev, ptr %call, i32 0, i32 24
  %2 = ptrtoint ptr %dont_allow_reload to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dont_allow_reload, align 1, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.end9, label %do.body

do.body:                                          ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_dev_reload_down.__msg) #12
  %tobool5.not = icmp eq ptr %extack, null
  br i1 %tobool5.not, label %do.body.cleanup.sink.split_crit_edge, label %if.then6

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @nsim_dev_reload_down.__msg, ptr %extack, align 4
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %in_reload = getelementptr inbounds %struct.nsim_bus_dev, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %in_reload to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %in_reload, align 8
  tail call fastcc void @nsim_dev_reload_destroy(ptr noundef %call)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end9, %if.then6, %do.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end9 ], [ -95, %if.then6 ], [ -95, %do.body.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %nsim_bus_reload_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_dev_reload_up(ptr noundef %devlink, i32 noundef %action, i32 noundef %limit, ptr nocapture noundef writeonly %actions_performed, ptr noundef %extack) #0 align 64 {
entry:
  %saved_value.i.i = alloca %union.devlink_param_value, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %nsim_bus_reload_lock = getelementptr inbounds %struct.nsim_bus_dev, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %nsim_bus_reload_lock, i32 noundef 0) #12
  %in_reload = getelementptr inbounds %struct.nsim_bus_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %in_reload to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %in_reload, align 8
  %fail_reload = getelementptr inbounds %struct.nsim_dev, ptr %call, i32 0, i32 25
  %3 = ptrtoint ptr %fail_reload to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fail_reload, align 2, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end5, label %do.body

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_dev_reload_up.__msg) #12
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.if.end_crit_edge, label %if.then3

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nsim_dev_reload_up.__msg, ptr %extack, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %do.body.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %nsim_bus_reload_lock) #12
  br label %cleanup

if.end5:                                          ; preds = %entry
  %6 = ptrtoint ptr %actions_performed to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %actions_performed, align 4
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %call.i = tail call ptr @priv_to_devlink(ptr noundef %call) #12
  %call2.i = tail call ptr @devlink_priv(ptr noundef %call.i) #12
  %port_list.i = getelementptr inbounds %struct.nsim_dev, ptr %call2.i, i32 0, i32 18
  %9 = ptrtoint ptr %port_list.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %port_list.i, ptr %port_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.nsim_dev, ptr %call2.i, i32 0, i32 18, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %port_list.i, ptr %prev.i.i, align 4
  %port_list_lock.i = getelementptr inbounds %struct.nsim_dev, ptr %call2.i, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %port_list_lock.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @nsim_dev_reload_create.__key) #12
  %fw_update_status.i = getelementptr inbounds %struct.nsim_dev, ptr %call2.i, i32 0, i32 20
  %11 = ptrtoint ptr %fw_update_status.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %fw_update_status.i, align 4
  %fw_update_overwrite_mask.i = getelementptr inbounds %struct.nsim_dev, ptr %call2.i, i32 0, i32 21
  %12 = ptrtoint ptr %fw_update_overwrite_mask.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %fw_update_overwrite_mask.i, align 4
  %call.i.i = tail call ptr @devlink_priv(ptr noundef %call.i) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %saved_value.i.i) #12
  %13 = call ptr @memset(ptr %saved_value.i.i, i32 255, i32 32)
  %call1.i.i = call i32 @devlink_param_driverinit_value_get(ptr noundef %call.i, i32 noundef 1, ptr noundef nonnull %saved_value.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end5.if.end.i.i_crit_edge

if.end5.if.end.i.i_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %saved_value.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %saved_value.i.i, align 4
  %max_macs.i.i = getelementptr inbounds %struct.nsim_dev, ptr %call.i.i, i32 0, i32 22
  %16 = ptrtoint ptr %max_macs.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %max_macs.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end5.if.end.i.i_crit_edge
  %call2.i.i = call i32 @devlink_param_driverinit_value_get(ptr noundef %call.i, i32 noundef 17, ptr noundef nonnull %saved_value.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.end.i.i.nsim_devlink_param_load_driverinit_values.exit.i_crit_edge

if.end.i.i.nsim_devlink_param_load_driverinit_values.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_devlink_param_load_driverinit_values.exit.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %saved_value.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %saved_value.i.i, align 4, !range !235
  %test1.i.i = getelementptr inbounds %struct.nsim_dev, ptr %call.i.i, i32 0, i32 23
  %19 = ptrtoint ptr %test1.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %test1.i.i, align 4
  br label %nsim_devlink_param_load_driverinit_values.exit.i

nsim_devlink_param_load_driverinit_values.exit.i: ; preds = %if.then4.i.i, %if.end.i.i.nsim_devlink_param_load_driverinit_values.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %saved_value.i.i) #12
  %call.i63.i = call ptr @devlink_region_create(ptr noundef %call.i, ptr noundef nonnull @dummy_region_ops, i32 noundef 16, i64 noundef 32768) #12
  %dummy_region.i.i = getelementptr inbounds %struct.nsim_dev, ptr %call2.i, i32 0, i32 26
  %20 = ptrtoint ptr %dummy_region.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i63.i, ptr %dummy_region.i.i, align 4
  %cmp.i.i.i.not.i = icmp ugt ptr %call.i63.i, inttoptr (i32 -4096 to ptr)
  %21 = ptrtoint ptr %call.i63.i to i32
  br i1 %cmp.i.i.i.not.i, label %nsim_devlink_param_load_driverinit_values.exit.i.nsim_dev_reload_create.exit_crit_edge, label %if.end.i

nsim_devlink_param_load_driverinit_values.exit.i.nsim_dev_reload_create.exit_crit_edge: ; preds = %nsim_devlink_param_load_driverinit_values.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_dev_reload_create.exit

if.end.i:                                         ; preds = %nsim_devlink_param_load_driverinit_values.exit.i
  %call4.i = call fastcc i32 @nsim_dev_traps_init(ptr noundef %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.err_dummy_region_exit.i_crit_edge

if.end.i.err_dummy_region_exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_dummy_region_exit.i

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = call ptr @nsim_fib_create(ptr noundef %call.i, ptr noundef %extack) #12
  %fib_data.i = getelementptr inbounds %struct.nsim_dev, ptr %call2.i, i32 0, i32 1
  %22 = ptrtoint ptr %fib_data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call8.i, ptr %fib_data.i, align 4
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then11.i, label %if.end14.i

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %call8.i to i32
  br label %err_traps_exit.i

if.end14.i:                                       ; preds = %if.end7.i
  %call15.i = call i32 @nsim_dev_health_init(ptr noundef %call2.i, ptr noundef %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end14.i.err_fib_destroy.i_crit_edge

if.end14.i.err_fib_destroy.i_crit_edge:           ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_fib_destroy.i

if.end18.i:                                       ; preds = %if.end14.i
  %call19.i = call i32 @nsim_dev_psample_init(ptr noundef %call2.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end18.i.err_health_exit.i_crit_edge

if.end18.i.err_health_exit.i_crit_edge:           ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_health_exit.i

if.end22.i:                                       ; preds = %if.end18.i
  %port_count.i = getelementptr inbounds %struct.nsim_bus_dev, ptr %8, i32 0, i32 2
  %24 = ptrtoint ptr %port_count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp6.not.i = icmp eq i32 %25, 0
  br i1 %cmp6.not.i, label %if.end22.i.if.end26.i_crit_edge, label %if.end22.i.for.body.i_crit_edge

if.end22.i.for.body.i_crit_edge:                  ; preds = %if.end22.i
  br label %for.body.i

if.end22.i.if.end26.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %25
  br i1 %exitcond.not.i, label %for.cond.i.if.end26.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.cond.i.if.end26.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end22.i.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end22.i.for.body.i_crit_edge ]
  %call.i17 = call fastcc i32 @__nsim_dev_port_add(ptr noundef %call2.i, i32 noundef 0, i32 noundef %i.07.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool.not.i = icmp eq i32 %call.i17, 0
  br i1 %tobool.not.i, label %for.cond.i, label %err_port_del_all.i

err_port_del_all.i:                               ; preds = %for.body.i
  call void @mutex_lock_nested(ptr noundef %port_list_lock.i, i32 noundef 0) #12
  %26 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port_list.i, align 4
  %cmp.not20.i.i = icmp eq ptr %27, %port_list.i
  br i1 %cmp.not20.i.i, label %err_port_del_all.i.err_psample_exit.i_crit_edge, label %err_port_del_all.i.for.body.i.i_crit_edge

err_port_del_all.i.for.body.i.i_crit_edge:        ; preds = %err_port_del_all.i
  br label %for.body.i.i

err_port_del_all.i.err_psample_exit.i_crit_edge:  ; preds = %err_port_del_all.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_psample_exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %err_port_del_all.i.for.body.i.i_crit_edge
  %nsim_dev_port.021.i.i = phi ptr [ %tmp.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %27, %err_port_del_all.i.for.body.i.i_crit_edge ]
  %28 = ptrtoint ptr %nsim_dev_port.021.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %tmp.0.i.i = load ptr, ptr %nsim_dev_port.021.i.i, align 4
  call fastcc void @__nsim_dev_port_del(ptr noundef %nsim_dev_port.021.i.i) #12
  %cmp.not.i.i = icmp eq ptr %tmp.0.i.i, %port_list.i
  br i1 %cmp.not.i.i, label %for.body.i.i.err_psample_exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.err_psample_exit.i_crit_edge:        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_psample_exit.i

if.end26.i:                                       ; preds = %for.cond.i.if.end26.i_crit_edge, %if.end22.i.if.end26.i_crit_edge
  %ddir.i = getelementptr inbounds %struct.nsim_dev, ptr %call2.i, i32 0, i32 3
  %29 = ptrtoint ptr %ddir.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ddir.i, align 4
  %call27.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 128, ptr noundef %30, ptr noundef %call2.i, ptr noundef nonnull @nsim_dev_take_snapshot_fops) #12
  %take_snapshot.i = getelementptr inbounds %struct.nsim_dev, ptr %call2.i, i32 0, i32 5
  %31 = ptrtoint ptr %take_snapshot.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call27.i, ptr %take_snapshot.i, align 4
  br label %nsim_dev_reload_create.exit

err_psample_exit.i:                               ; preds = %for.body.i.i.err_psample_exit.i_crit_edge, %err_port_del_all.i.err_psample_exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %port_list_lock.i) #12
  call void @nsim_dev_psample_exit(ptr noundef %call2.i) #12
  br label %err_health_exit.i

err_health_exit.i:                                ; preds = %err_psample_exit.i, %if.end18.i.err_health_exit.i_crit_edge
  %err.0.i = phi i32 [ %call19.i, %if.end18.i.err_health_exit.i_crit_edge ], [ %call.i17, %err_psample_exit.i ]
  call void @nsim_dev_health_exit(ptr noundef %call2.i) #12
  br label %err_fib_destroy.i

err_fib_destroy.i:                                ; preds = %err_health_exit.i, %if.end14.i.err_fib_destroy.i_crit_edge
  %err.1.i = phi i32 [ %call15.i, %if.end14.i.err_fib_destroy.i_crit_edge ], [ %err.0.i, %err_health_exit.i ]
  %32 = ptrtoint ptr %fib_data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fib_data.i, align 4
  call void @nsim_fib_destroy(ptr noundef %call.i, ptr noundef %33) #12
  br label %err_traps_exit.i

err_traps_exit.i:                                 ; preds = %err_fib_destroy.i, %if.then11.i
  %err.2.i = phi i32 [ %23, %if.then11.i ], [ %err.1.i, %err_fib_destroy.i ]
  %call.i64.i = call ptr @devlink_priv(ptr noundef %call.i) #12
  %trap_data.i.i = getelementptr inbounds %struct.nsim_dev, ptr %call.i64.i, i32 0, i32 2
  %34 = ptrtoint ptr %trap_data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %trap_data.i.i, align 4
  %call1.i65.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %35) #12
  call void @devlink_traps_unregister(ptr noundef %call.i, ptr noundef nonnull @nsim_traps_arr, i32 noundef 14) #12
  call void @devlink_trap_groups_unregister(ptr noundef %call.i, ptr noundef nonnull @nsim_trap_groups_arr, i32 noundef 6) #12
  call void @devlink_trap_policers_unregister(ptr noundef %call.i, ptr noundef nonnull @nsim_trap_policers_arr, i32 noundef 3) #12
  %36 = ptrtoint ptr %trap_data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %trap_data.i.i, align 4
  %trap_policers_cnt_arr.i.i = getelementptr inbounds %struct.nsim_trap_data, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %trap_policers_cnt_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %trap_policers_cnt_arr.i.i, align 8
  call void @kfree(ptr noundef %39) #12
  %40 = ptrtoint ptr %trap_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %trap_data.i.i, align 4
  %trap_items_arr.i.i = getelementptr inbounds %struct.nsim_trap_data, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %trap_items_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %trap_items_arr.i.i, align 4
  call void @kfree(ptr noundef %43) #12
  %44 = ptrtoint ptr %trap_data.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %trap_data.i.i, align 4
  call void @kfree(ptr noundef %45) #12
  br label %err_dummy_region_exit.i

err_dummy_region_exit.i:                          ; preds = %err_traps_exit.i, %if.end.i.err_dummy_region_exit.i_crit_edge
  %err.3.i = phi i32 [ %call4.i, %if.end.i.err_dummy_region_exit.i_crit_edge ], [ %err.2.i, %err_traps_exit.i ]
  %46 = ptrtoint ptr %dummy_region.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dummy_region.i.i, align 4
  call void @devlink_region_destroy(ptr noundef %47) #12
  br label %nsim_dev_reload_create.exit

nsim_dev_reload_create.exit:                      ; preds = %err_dummy_region_exit.i, %if.end26.i, %nsim_devlink_param_load_driverinit_values.exit.i.nsim_dev_reload_create.exit_crit_edge
  %retval.0.i = phi i32 [ %err.3.i, %err_dummy_region_exit.i ], [ 0, %if.end26.i ], [ %21, %nsim_devlink_param_load_driverinit_values.exit.i.nsim_dev_reload_create.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %nsim_bus_reload_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %nsim_dev_reload_create.exit, %if.end
  %retval.0 = phi i32 [ -22, %if.end ], [ %retval.0.i, %nsim_dev_reload_create.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_devlink_eswitch_mode_get(ptr noundef %devlink, ptr nocapture noundef writeonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %esw_mode = getelementptr inbounds %struct.nsim_dev, ptr %call, i32 0, i32 36
  %0 = ptrtoint ptr %esw_mode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %esw_mode, align 4
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %mode, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_devlink_eswitch_mode_set(ptr noundef %devlink, i16 noundef zeroext %mode, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %vfs_lock = getelementptr inbounds %struct.nsim_dev, ptr %call, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %vfs_lock, i32 noundef 0) #12
  %esw_mode = getelementptr inbounds %struct.nsim_dev, ptr %call, i32 0, i32 36
  %0 = ptrtoint ptr %esw_mode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %esw_mode, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %mode)
  %cmp = icmp eq i16 %1, %mode
  br i1 %cmp, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end:                                           ; preds = %entry
  %2 = zext i16 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %mode, label %if.end.unlock_crit_edge [
    i16 0, label %if.then6
    i16 1, label %if.then11
  ]

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.then6:                                         ; preds = %if.end
  %call.i = tail call ptr @priv_to_devlink(ptr noundef %call) #12
  tail call void @devlink_rate_nodes_destroy(ptr noundef %call.i) #12
  %port_list_lock.i = getelementptr inbounds %struct.nsim_dev, ptr %call, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %port_list_lock.i, i32 noundef 0) #12
  %port_list.i = getelementptr inbounds %struct.nsim_dev, ptr %call, i32 0, i32 18
  %3 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port_list.i, align 4
  %cmp.not2.i = icmp eq ptr %4, %port_list.i
  br i1 %cmp.not2.i, label %if.then6.nsim_esw_legacy_enable.exit_crit_edge, label %if.then6.for.body.i_crit_edge

if.then6.for.body.i_crit_edge:                    ; preds = %if.then6
  br label %for.body.i

if.then6.nsim_esw_legacy_enable.exit_crit_edge:   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_esw_legacy_enable.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then6.for.body.i_crit_edge
  %nsim_dev_port.03.i = phi ptr [ %tmp.04.i, %for.inc.i.for.body.i_crit_edge ], [ %4, %if.then6.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %nsim_dev_port.03.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp.04.i = load ptr, ptr %nsim_dev_port.03.i, align 4
  %port_type.i.i = getelementptr inbounds %struct.nsim_dev_port, ptr %nsim_dev_port.03.i, i32 0, i32 3
  %6 = ptrtoint ptr %port_type.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 1
  br i1 %cmp.i.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__nsim_dev_port_del(ptr noundef %nsim_dev_port.03.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.04.i, %port_list.i
  br i1 %cmp.not.i, label %for.inc.i.nsim_esw_legacy_enable.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.nsim_esw_legacy_enable.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_esw_legacy_enable.exit

nsim_esw_legacy_enable.exit:                      ; preds = %for.inc.i.nsim_esw_legacy_enable.exit_crit_edge, %if.then6.nsim_esw_legacy_enable.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %port_list_lock.i) #12
  %8 = ptrtoint ptr %esw_mode to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %esw_mode, align 4
  br label %unlock

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = tail call fastcc i32 @nsim_esw_switchdev_enable(ptr noundef %call, ptr noundef %extack)
  br label %unlock

unlock:                                           ; preds = %if.then11, %nsim_esw_legacy_enable.exit, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  %err.0 = phi i32 [ 0, %entry.unlock_crit_edge ], [ 0, %nsim_esw_legacy_enable.exit ], [ %call12, %if.then11 ], [ -22, %if.end.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %vfs_lock) #12
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_dev_info_get(ptr nocapture noundef readnone %devlink, ptr noundef %req, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @devlink_info_driver_name_put(ptr noundef %req, ptr noundef nonnull @.str.6) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_dev_flash_update(ptr noundef %devlink, ptr nocapture noundef readonly %params, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %overwrite_mask = getelementptr inbounds %struct.devlink_flash_update_params, ptr %params, i32 0, i32 2
  %0 = ptrtoint ptr %overwrite_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %overwrite_mask, align 4
  %fw_update_overwrite_mask = getelementptr inbounds %struct.nsim_dev, ptr %call, i32 0, i32 21
  %2 = ptrtoint ptr %fw_update_overwrite_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_update_overwrite_mask, align 4
  %neg = xor i32 %3, -1
  %and = and i32 %1, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_update_status = getelementptr inbounds %struct.nsim_dev, ptr %call, i32 0, i32 20
  %4 = ptrtoint ptr %fw_update_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_update_status, align 4, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %component = getelementptr inbounds %struct.devlink_flash_update_params, ptr %params, i32 0, i32 1
  %6 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %component, align 4
  tail call void @devlink_flash_update_status_notify(ptr noundef %devlink, ptr noundef nonnull @.str.13, ptr noundef %7, i32 noundef 0, i32 noundef 0) #12
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %component7 = getelementptr inbounds %struct.devlink_flash_update_params, ptr %params, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %if.end2
  %i.032 = phi i32 [ 0, %if.end2 ], [ %inc, %if.end8.for.body_crit_edge ]
  %8 = ptrtoint ptr %fw_update_status to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fw_update_status, align 4, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %for.body.if.end8_crit_edge, label %if.then6

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %component7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %component7, align 4
  %mul = mul nuw nsw i32 %i.032, 1000
  tail call void @devlink_flash_update_status_notify(ptr noundef %devlink, ptr noundef nonnull @.str.14, ptr noundef %11, i32 noundef %mul, i32 noundef 500000) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %for.body.if.end8_crit_edge
  tail call void @msleep(i32 noundef 10) #12
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, 500
  br i1 %exitcond.not, label %for.end, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end8
  %12 = ptrtoint ptr %fw_update_status to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fw_update_status, align 4, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool10.not = icmp eq i8 %13, 0
  br i1 %tobool10.not, label %for.end.cleanup_crit_edge, label %if.then11

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %component7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %component7, align 4
  tail call void @devlink_flash_update_status_notify(ptr noundef %devlink, ptr noundef nonnull @.str.14, ptr noundef %15, i32 noundef 500000, i32 noundef 500000) #12
  %16 = ptrtoint ptr %component7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %component7, align 4
  tail call void @devlink_flash_update_timeout_notify(ptr noundef %devlink, ptr noundef nonnull @.str.15, ptr noundef %17, i32 noundef 81) #12
  %18 = ptrtoint ptr %component7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %component7, align 4
  tail call void @devlink_flash_update_status_notify(ptr noundef %devlink, ptr noundef nonnull @.str.16, ptr noundef %19, i32 noundef 0, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then11 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_dev_devlink_trap_init(ptr noundef %devlink, ptr nocapture noundef readonly %trap, ptr noundef %trap_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %id = getelementptr inbounds %struct.devlink_trap, ptr %trap, i32 0, i32 3
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 2
  %call1 = tail call fastcc ptr @nsim_dev_trap_item_lookup(ptr noundef %call, i16 noundef zeroext %1)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !234

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1068, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %trap_ctx, ptr %call1, align 4
  %init_action = getelementptr inbounds %struct.devlink_trap, ptr %trap, i32 0, i32 1
  %3 = ptrtoint ptr %init_action to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %init_action, align 4
  %action = getelementptr inbounds %struct.nsim_trap_item, ptr %call1, i32 0, i32 1
  %5 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %action, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  %retval.0 = phi i32 [ -2, %do.end ], [ 0, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_dev_devlink_trap_action_set(ptr noundef %devlink, ptr nocapture noundef readonly %trap, i32 noundef %action, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %id = getelementptr inbounds %struct.devlink_trap, ptr %trap, i32 0, i32 3
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 2
  %call1 = tail call fastcc ptr @nsim_dev_trap_item_lookup(ptr noundef %call, i16 noundef zeroext %1)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !234

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1087, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %trap_data = getelementptr inbounds %struct.nsim_dev, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %trap_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trap_data, align 4
  %trap_lock = getelementptr inbounds %struct.nsim_trap_data, ptr %3, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %trap_lock) #12
  %action25 = getelementptr inbounds %struct.nsim_trap_item, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %action25 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %action, ptr %action25, align 4
  %5 = ptrtoint ptr %trap_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trap_data, align 4
  %trap_lock27 = getelementptr inbounds %struct.nsim_trap_data, ptr %6, i32 0, i32 5
  tail call void @_raw_spin_unlock(ptr noundef %trap_lock27) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  %retval.0 = phi i32 [ -2, %do.end ], [ 0, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_dev_devlink_trap_group_set(ptr noundef %devlink, ptr nocapture noundef readnone %group, ptr nocapture noundef readnone %policer, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %fail_trap_group_set = getelementptr inbounds %struct.nsim_dev, ptr %call, i32 0, i32 30
  %0 = ptrtoint ptr %fail_trap_group_set to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fail_trap_group_set, align 4, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %. = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_dev_devlink_trap_drop_counter_get(ptr noundef %devlink, ptr nocapture noundef readnone %trap, ptr nocapture noundef writeonly %p_drops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %fail_trap_drop_counter_get = getelementptr inbounds %struct.nsim_dev, ptr %call, i32 0, i32 33
  %0 = ptrtoint ptr %fail_trap_drop_counter_get to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fail_trap_drop_counter_get, align 1, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %trap_data = getelementptr inbounds %struct.nsim_dev, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %trap_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trap_data, align 4
  %trap_pkt_cnt = getelementptr inbounds %struct.nsim_trap_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %trap_pkt_cnt to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %trap_pkt_cnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %trap_pkt_cnt, align 8
  %6 = ptrtoint ptr %p_drops to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %p_drops, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_dev_devlink_trap_policer_set(ptr noundef %devlink, ptr nocapture noundef readnone %policer, i64 noundef %rate, i64 noundef %burst, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %fail_trap_policer_set = getelementptr inbounds %struct.nsim_dev, ptr %call, i32 0, i32 31
  %0 = ptrtoint ptr %fail_trap_policer_set to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fail_trap_policer_set, align 1, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_dev_devlink_trap_policer_set.__msg) #12
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @nsim_dev_devlink_trap_policer_set.__msg, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then2 ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_dev_devlink_trap_policer_counter_get(ptr noundef %devlink, ptr nocapture noundef readonly %policer, ptr nocapture noundef writeonly %p_drops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %fail_trap_policer_counter_get = getelementptr inbounds %struct.nsim_dev, ptr %call, i32 0, i32 32
  %0 = ptrtoint ptr %fail_trap_policer_counter_get to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fail_trap_policer_counter_get, align 2, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %trap_data = getelementptr inbounds %struct.nsim_dev, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %trap_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trap_data, align 4
  %trap_policers_cnt_arr = getelementptr inbounds %struct.nsim_trap_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %trap_policers_cnt_arr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trap_policers_cnt_arr, align 8
  %6 = ptrtoint ptr %policer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %policer, align 8
  %sub = add i32 %7, -1
  %arrayidx = getelementptr i64, ptr %5, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx, align 8
  %inc = add i64 %9, 1
  store i64 %inc, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %p_drops to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %p_drops, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_leaf_tx_share_set(ptr nocapture noundef readnone %devlink_rate, ptr nocapture noundef readonly %priv, i64 noundef %tx_share, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ns = getelementptr inbounds %struct.nsim_dev_port, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns, align 4
  %nsim_dev1 = getelementptr inbounds %struct.netdevsim, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nsim_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nsim_dev1, align 4
  %port_index = getelementptr inbounds %struct.nsim_dev_port, ptr %priv, i32 0, i32 2
  %4 = ptrtoint ptr %port_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_index, align 4
  %sub.i = add i32 %5, -128
  %6 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %tx_share) #18, !srcloc !236
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %tx_share, i64 %6, i32 0) #18, !srcloc !237
  %asmresult10.i.i.i = extractvalue { i64, i32 } %7, 0
  %conv14.i.i = trunc i64 %tx_share to i32
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 15
  %conv159.i.i = trunc i64 %div1581.i.i to i32
  %mul160.neg.i.i = mul i32 %conv159.i.i, -125000
  %sub161.i.i = sub i32 0, %conv14.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul160.neg.i.i, i32 %sub161.i.i)
  %tobool.not.i = icmp eq i32 %mul160.neg.i.i, %sub161.i.i
  br i1 %tobool.not.i, label %if.end7.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i64 noundef %tx_share) #16
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_rate_bytes_to_units.__msg) #12
  %tobool3.not.i = icmp eq ptr %extack, null
  br i1 %tobool3.not.i, label %do.end.i.cleanup_crit_edge, label %if.then4.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nsim_rate_bytes_to_units.__msg, ptr %extack, align 4
  br label %cleanup

if.end7.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 163872767, i64 %asmresult10.i.i.i)
  %cmp.i = icmp ugt i64 %asmresult10.i.i.i, 163872767
  br i1 %cmp.i, label %do.end11.i, label %if.end

do.end11.i:                                       ; preds = %if.end7.i
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.31, i64 noundef %div1581.i.i) #16
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_rate_bytes_to_units.__msg.37) #12
  %tobool16.not.i = icmp eq ptr %extack, null
  br i1 %tobool16.not.i, label %do.end11.i.cleanup_crit_edge, label %if.then17.i

do.end11.i.cleanup_crit_edge:                     ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then17.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @nsim_rate_bytes_to_units.__msg.37, ptr %extack, align 4
  br label %cleanup

if.end:                                           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv = trunc i64 %div1581.i.i to i16
  %vfconfigs = getelementptr inbounds %struct.nsim_dev, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %vfconfigs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vfconfigs, align 4
  %min_tx_rate = getelementptr %struct.nsim_vf_config, ptr %11, i32 %sub.i, i32 1
  %12 = ptrtoint ptr %min_tx_rate to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %min_tx_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then17.i, %do.end11.i.cleanup_crit_edge, %if.then4.i, %do.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.then4.i ], [ -22, %do.end.i.cleanup_crit_edge ], [ -22, %if.then17.i ], [ -22, %do.end11.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_leaf_tx_max_set(ptr nocapture noundef readnone %devlink_rate, ptr nocapture noundef readonly %priv, i64 noundef %tx_max, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ns = getelementptr inbounds %struct.nsim_dev_port, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns, align 4
  %nsim_dev1 = getelementptr inbounds %struct.netdevsim, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nsim_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nsim_dev1, align 4
  %port_index = getelementptr inbounds %struct.nsim_dev_port, ptr %priv, i32 0, i32 2
  %4 = ptrtoint ptr %port_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_index, align 4
  %sub.i = add i32 %5, -128
  %6 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %tx_max) #18, !srcloc !236
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %tx_max, i64 %6, i32 0) #18, !srcloc !237
  %asmresult10.i.i.i = extractvalue { i64, i32 } %7, 0
  %conv14.i.i = trunc i64 %tx_max to i32
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 15
  %conv159.i.i = trunc i64 %div1581.i.i to i32
  %mul160.neg.i.i = mul i32 %conv159.i.i, -125000
  %sub161.i.i = sub i32 0, %conv14.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul160.neg.i.i, i32 %sub161.i.i)
  %tobool.not.i = icmp eq i32 %mul160.neg.i.i, %sub161.i.i
  br i1 %tobool.not.i, label %if.end7.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.38, i64 noundef %tx_max) #16
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_rate_bytes_to_units.__msg) #12
  %tobool3.not.i = icmp eq ptr %extack, null
  br i1 %tobool3.not.i, label %do.end.i.cleanup_crit_edge, label %if.then4.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nsim_rate_bytes_to_units.__msg, ptr %extack, align 4
  br label %cleanup

if.end7.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 163872767, i64 %asmresult10.i.i.i)
  %cmp.i = icmp ugt i64 %asmresult10.i.i.i, 163872767
  br i1 %cmp.i, label %do.end11.i, label %if.end

do.end11.i:                                       ; preds = %if.end7.i
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.38, i64 noundef %div1581.i.i) #16
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_rate_bytes_to_units.__msg.37) #12
  %tobool16.not.i = icmp eq ptr %extack, null
  br i1 %tobool16.not.i, label %do.end11.i.cleanup_crit_edge, label %if.then17.i

do.end11.i.cleanup_crit_edge:                     ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then17.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @nsim_rate_bytes_to_units.__msg.37, ptr %extack, align 4
  br label %cleanup

if.end:                                           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv = trunc i64 %div1581.i.i to i16
  %vfconfigs = getelementptr inbounds %struct.nsim_dev, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %vfconfigs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vfconfigs, align 4
  %max_tx_rate = getelementptr %struct.nsim_vf_config, ptr %11, i32 %sub.i, i32 2
  %12 = ptrtoint ptr %max_tx_rate to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %max_tx_rate, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then17.i, %do.end11.i.cleanup_crit_edge, %if.then4.i, %do.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.then4.i ], [ -22, %do.end.i.cleanup_crit_edge ], [ -22, %if.then17.i ], [ -22, %do.end11.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_node_tx_share_set(ptr nocapture noundef readnone %devlink_rate, ptr nocapture noundef writeonly %priv, i64 noundef %tx_share, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %tx_share) #18, !srcloc !236
  %1 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %tx_share, i64 %0, i32 0) #18, !srcloc !237
  %asmresult10.i.i.i = extractvalue { i64, i32 } %1, 0
  %conv14.i.i = trunc i64 %tx_share to i32
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 15
  %conv159.i.i = trunc i64 %div1581.i.i to i32
  %mul160.neg.i.i = mul i32 %conv159.i.i, -125000
  %sub161.i.i = sub i32 0, %conv14.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul160.neg.i.i, i32 %sub161.i.i)
  %tobool.not.i = icmp eq i32 %mul160.neg.i.i, %sub161.i.i
  br i1 %tobool.not.i, label %if.end7.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i64 noundef %tx_share) #16
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_rate_bytes_to_units.__msg) #12
  %tobool3.not.i = icmp eq ptr %extack, null
  br i1 %tobool3.not.i, label %do.end.i.cleanup_crit_edge, label %if.then4.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @nsim_rate_bytes_to_units.__msg, ptr %extack, align 4
  br label %cleanup

if.end7.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 163872767, i64 %asmresult10.i.i.i)
  %cmp.i = icmp ugt i64 %asmresult10.i.i.i, 163872767
  br i1 %cmp.i, label %do.end11.i, label %if.end

do.end11.i:                                       ; preds = %if.end7.i
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.31, i64 noundef %div1581.i.i) #16
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_rate_bytes_to_units.__msg.37) #12
  %tobool16.not.i = icmp eq ptr %extack, null
  br i1 %tobool16.not.i, label %do.end11.i.cleanup_crit_edge, label %if.then17.i

do.end11.i.cleanup_crit_edge:                     ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then17.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nsim_rate_bytes_to_units.__msg.37, ptr %extack, align 4
  br label %cleanup

if.end:                                           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv = trunc i64 %div1581.i.i to i16
  %tx_share1 = getelementptr inbounds %struct.nsim_rate_node, ptr %priv, i32 0, i32 3
  %4 = ptrtoint ptr %tx_share1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %tx_share1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then17.i, %do.end11.i.cleanup_crit_edge, %if.then4.i, %do.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.then4.i ], [ -22, %do.end.i.cleanup_crit_edge ], [ -22, %if.then17.i ], [ -22, %do.end11.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_node_tx_max_set(ptr nocapture noundef readnone %devlink_rate, ptr nocapture noundef writeonly %priv, i64 noundef %tx_max, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %tx_max) #18, !srcloc !236
  %1 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %tx_max, i64 %0, i32 0) #18, !srcloc !237
  %asmresult10.i.i.i = extractvalue { i64, i32 } %1, 0
  %conv14.i.i = trunc i64 %tx_max to i32
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 15
  %conv159.i.i = trunc i64 %div1581.i.i to i32
  %mul160.neg.i.i = mul i32 %conv159.i.i, -125000
  %sub161.i.i = sub i32 0, %conv14.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul160.neg.i.i, i32 %sub161.i.i)
  %tobool.not.i = icmp eq i32 %mul160.neg.i.i, %sub161.i.i
  br i1 %tobool.not.i, label %if.end7.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.38, i64 noundef %tx_max) #16
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_rate_bytes_to_units.__msg) #12
  %tobool3.not.i = icmp eq ptr %extack, null
  br i1 %tobool3.not.i, label %do.end.i.cleanup_crit_edge, label %if.then4.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @nsim_rate_bytes_to_units.__msg, ptr %extack, align 4
  br label %cleanup

if.end7.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 163872767, i64 %asmresult10.i.i.i)
  %cmp.i = icmp ugt i64 %asmresult10.i.i.i, 163872767
  br i1 %cmp.i, label %do.end11.i, label %if.end

do.end11.i:                                       ; preds = %if.end7.i
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.38, i64 noundef %div1581.i.i) #16
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_rate_bytes_to_units.__msg.37) #12
  %tobool16.not.i = icmp eq ptr %extack, null
  br i1 %tobool16.not.i, label %do.end11.i.cleanup_crit_edge, label %if.then17.i

do.end11.i.cleanup_crit_edge:                     ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then17.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nsim_rate_bytes_to_units.__msg.37, ptr %extack, align 4
  br label %cleanup

if.end:                                           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv = trunc i64 %div1581.i.i to i16
  %tx_max1 = getelementptr inbounds %struct.nsim_rate_node, ptr %priv, i32 0, i32 4
  %4 = ptrtoint ptr %tx_max1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %tx_max1, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then17.i, %do.end11.i.cleanup_crit_edge, %if.then4.i, %do.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.then4.i ], [ -22, %do.end.i.cleanup_crit_edge ], [ -22, %if.then17.i ], [ -22, %do.end11.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_rate_node_new(ptr nocapture noundef readonly %node, ptr nocapture noundef writeonly %priv, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink = getelementptr inbounds %struct.devlink_rate, ptr %node, i32 0, i32 2
  %0 = ptrtoint ptr %devlink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devlink, align 4
  %call = tail call ptr @devlink_priv(ptr noundef %1) #12
  %esw_mode.i = getelementptr inbounds %struct.nsim_dev, ptr %call, i32 0, i32 36
  %2 = ptrtoint ptr %esw_mode.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %esw_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.i = icmp eq i16 %3, 1
  br i1 %cmp.i, label %if.end3, label %do.body

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_rate_node_new.__msg) #12
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @nsim_rate_node_new.__msg, ptr %extack, align 4
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 16) #17
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %6 = getelementptr inbounds %struct.devlink_rate, ptr %node, i32 0, i32 7
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %nodes_ddir = getelementptr inbounds %struct.nsim_dev, ptr %call, i32 0, i32 6
  %9 = ptrtoint ptr %nodes_ddir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nodes_ddir, align 4
  %call8 = tail call ptr @debugfs_create_dir(ptr noundef %8, ptr noundef %10) #12
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8, ptr %call7.i.i, align 8
  %tx_share = getelementptr inbounds %struct.nsim_rate_node, ptr %call7.i.i, i32 0, i32 3
  tail call void @debugfs_create_u16(ptr noundef nonnull @.str.31, i16 noundef zeroext 256, ptr noundef %call8, ptr noundef %tx_share) #12
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call7.i.i, align 8
  %tx_max = getelementptr inbounds %struct.nsim_rate_node, ptr %call7.i.i, i32 0, i32 4
  tail call void @debugfs_create_u16(ptr noundef nonnull @.str.38, i16 noundef zeroext 256, ptr noundef %13, ptr noundef %tx_max) #12
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call7.i.i, align 8
  %parent_name = getelementptr inbounds %struct.nsim_rate_node, ptr %call7.i.i, i32 0, i32 2
  %call12 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.39, i16 noundef zeroext 256, ptr noundef %15, ptr noundef %parent_name, ptr noundef nonnull @nsim_dev_rate_parent_fops) #12
  %rate_parent = getelementptr inbounds %struct.nsim_rate_node, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %rate_parent to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call12, ptr %rate_parent, align 4
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -95, %if.then2 ], [ -95, %do.body.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_rate_node_del(ptr nocapture noundef readnone %node, ptr noundef %priv, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_parent = getelementptr inbounds %struct.nsim_rate_node, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %rate_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_parent, align 4
  tail call void @debugfs_remove(ptr noundef %1) #12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call void @debugfs_remove(ptr noundef %3) #12
  tail call void @kfree(ptr noundef %priv) #12
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nsim_rate_leaf_parent_set(ptr nocapture noundef readnone %child, ptr noundef readonly %parent, ptr nocapture noundef writeonly %priv_child, ptr nocapture noundef readnone %priv_parent, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %parent, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = getelementptr inbounds %struct.devlink_rate, ptr %parent, i32 0, i32 7
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi ptr [ %2, %if.then ], [ null, %entry.if.end_crit_edge ]
  %3 = getelementptr inbounds %struct.nsim_dev_port, ptr %priv_child, i32 0, i32 6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %.sink, ptr %3, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nsim_rate_node_parent_set(ptr nocapture noundef readnone %child, ptr noundef readonly %parent, ptr nocapture noundef writeonly %priv_child, ptr nocapture noundef readnone %priv_parent, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %parent, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = getelementptr inbounds %struct.devlink_rate, ptr %parent, i32 0, i32 7
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi ptr [ %2, %if.then ], [ null, %entry.if.end_crit_edge ]
  %3 = getelementptr inbounds %struct.nsim_rate_node, ptr %priv_child, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %.sink, ptr %3, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_param_driverinit_value_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_dev_take_snapshot_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %data, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #12
  %2 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %id, align 4, !annotation !238
  %call = tail call ptr @priv_to_devlink(ptr noundef %1) #12
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32768, i32 noundef 3264, i32 noundef 3) #15
  %tobool.not.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @get_random_bytes(ptr noundef nonnull %call1.i.i.i, i32 noundef 32768) #12
  %call2 = call i32 @devlink_region_snapshot_id_get(ptr noundef %call, ptr noundef nonnull %id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %dummy_region = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 26
  %3 = ptrtoint ptr %dummy_region to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dummy_region, align 4
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %call7 = call i32 @devlink_region_snapshot_create(ptr noundef %4, ptr noundef nonnull %call1.i.i.i, i32 noundef %6) #12
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  call void @devlink_region_snapshot_id_put(ptr noundef %call, i32 noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end6.cleanup.sink.split_crit_edge

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end6.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.str.11.sink = phi ptr [ @.str.8, %if.end.cleanup.sink.split_crit_edge ], [ @.str.11, %if.end6.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call2, %if.end.cleanup.sink.split_crit_edge ], [ %call7, %if.end6.cleanup.sink.split_crit_edge ]
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.11.sink) #16
  call void @kfree(ptr noundef nonnull %call1.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end6.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_dev_take_snapshot(ptr nocapture noundef readnone %devlink, ptr nocapture noundef readnone %ops, ptr nocapture noundef readnone %extack, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32768, i32 noundef 3264, i32 noundef 3) #15
  %tobool.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @get_random_bytes(ptr noundef nonnull %call1.i.i, i32 noundef 32768) #12
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1.i.i, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_region_snapshot_id_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_region_snapshot_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_region_snapshot_id_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_driver_name_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_flash_update_status_notify(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_flash_update_timeout_notify(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nsim_dev_trap_item_lookup(ptr nocapture noundef readonly %nsim_dev, i16 noundef zeroext %trap_id) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trap_data = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 2
  %0 = ptrtoint ptr %trap_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trap_data, align 4
  %2 = zext i16 %trap_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.100)
  switch i16 %trap_id, label %entry.cleanup_crit_edge [
    i16 0, label %entry.if.then_crit_edge
    i16 1, label %if.then.fold.split
    i16 2, label %if.then.fold.split12
    i16 3, label %if.then.fold.split13
    i16 4, label %if.then.fold.split14
    i16 5, label %if.then.fold.split15
    i16 92, label %if.then.fold.split16
    i16 6, label %if.then.fold.split17
    i16 7, label %if.then.fold.split18
    i16 8, label %if.then.fold.split19
    i16 27, label %if.then.fold.split20
    i16 28, label %if.then.fold.split21
    i16 32, label %if.then.fold.split22
    i16 33, label %if.then.fold.split23
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split20:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then.fold.split23:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split23, %if.then.fold.split22, %if.then.fold.split21, %if.then.fold.split20, %if.then.fold.split19, %if.then.fold.split18, %if.then.fold.split17, %if.then.fold.split16, %if.then.fold.split15, %if.then.fold.split14, %if.then.fold.split13, %if.then.fold.split12, %if.then.fold.split, %entry.if.then_crit_edge
  %i.010.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split12 ], [ 3, %if.then.fold.split13 ], [ 4, %if.then.fold.split14 ], [ 5, %if.then.fold.split15 ], [ 6, %if.then.fold.split16 ], [ 7, %if.then.fold.split17 ], [ 8, %if.then.fold.split18 ], [ 9, %if.then.fold.split19 ], [ 10, %if.then.fold.split20 ], [ 11, %if.then.fold.split21 ], [ 12, %if.then.fold.split22 ], [ 13, %if.then.fold.split23 ]
  %trap_items_arr = getelementptr inbounds %struct.nsim_trap_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %trap_items_arr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trap_items_arr, align 4
  %arrayidx4 = getelementptr %struct.nsim_trap_item, ptr %4, i32 %i.010.lcssa
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx4, %if.then ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u16(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_dev_rate_parent_read(ptr nocapture noundef readonly %file, ptr noundef %data, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @strlen(ptr noundef nonnull %3) #19
  %call1 = tail call i32 @simple_read_from_buffer(ptr noundef %data, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %3, i32 noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_resource_register(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_param_driverinit_value_set(ptr noundef, i32 noundef, [8 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_region_create(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_trap_policers_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_trap_groups_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_traps_register(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nsim_dev_trap_report_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nsim_dev1 = getelementptr inbounds %struct.nsim_trap_data, ptr %work, i32 0, i32 4
  %0 = ptrtoint ptr %nsim_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nsim_dev1, align 8
  %port_list_lock = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %port_list_lock, i32 noundef 0) #12
  %port_list = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %nsim_dev_port.021 = load ptr, ptr %port_list, align 4
  %cmp.not22 = icmp eq ptr %nsim_dev_port.021, %port_list
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %nsim_dev_port.023 = phi ptr [ %nsim_dev_port.0, %for.inc.for.body_crit_edge ], [ %nsim_dev_port.021, %entry.for.body_crit_edge ]
  %ns = getelementptr inbounds %struct.nsim_dev_port, ptr %nsim_dev_port.023, i32 0, i32 7
  %3 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ns, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %nsim_dev1.i = getelementptr inbounds %struct.netdevsim, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %nsim_dev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nsim_dev1.i, align 4
  %call.i = tail call ptr @priv_to_devlink(ptr noundef %10) #12
  %trap_data.i = getelementptr inbounds %struct.nsim_dev, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %trap_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trap_data.i, align 4
  %trap_lock.i = getelementptr inbounds %struct.nsim_trap_data, ptr %12, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %trap_lock.i) #12
  %trap_items_arr.i = getelementptr inbounds %struct.nsim_trap_data, ptr %12, i32 0, i32 1
  %fa_cookie_lock.i = getelementptr inbounds %struct.nsim_dev, ptr %10, i32 0, i32 29
  %fa_cookie10.i = getelementptr inbounds %struct.nsim_dev, ptr %10, i32 0, i32 28
  %devlink_port.i = getelementptr inbounds %struct.nsim_dev_port, ptr %nsim_dev_port.023, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end
  %i.031.i = phi i32 [ 0, %if.end ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %13 = add nsw i32 %i.031.i, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %13)
  %14 = icmp ult i32 %13, -2
  %15 = ptrtoint ptr %trap_items_arr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trap_items_arr.i, align 4
  %arrayidx2.i = getelementptr %struct.nsim_trap_item, ptr %16, i32 %i.031.i
  %action.i = getelementptr %struct.nsim_trap_item, ptr %16, i32 %i.031.i, i32 1
  %17 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %action.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp3.i = icmp eq i32 %18, 0
  br i1 %cmp3.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.cleanup.i_crit_edge, label %if.end7.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end7.i:                                        ; preds = %if.end.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 18
  %21 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 21
  %23 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %call1.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 14) #12
  tail call void @get_random_bytes(ptr noundef %call1.i.i, i32 noundef 6) #12
  %24 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %call1.i.i, align 1
  %26 = and i8 %25, -4
  %27 = or i8 %26, 2
  store i8 %27, ptr %call1.i.i, align 1
  %h_source.i.i = getelementptr inbounds %struct.ethhdr, ptr %call1.i.i, i32 0, i32 1
  tail call void @get_random_bytes(ptr noundef %h_source.i.i, i32 noundef 6) #12
  %28 = ptrtoint ptr %h_source.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %h_source.i.i, align 1
  %30 = and i8 %29, -4
  %31 = or i8 %30, 2
  store i8 %31, ptr %h_source.i.i, align 1
  %h_proto.i.i = getelementptr inbounds %struct.ethhdr, ptr %call1.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %h_proto.i.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 2048, ptr %h_proto.i.i, align 1
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 18
  %33 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 2048, ptr %protocol.i.i, align 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %34 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i.i, align 4
  %36 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i.i.i, align 4
  %38 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %conv.i.i.i.i = trunc i32 %sub.ptr.sub.i.i.i.i to i16
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 20
  %40 = trunc i32 %35 to i16
  %conv1.i.i.i = add i16 %conv.i.i.i.i, %40
  %41 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv1.i.i.i, ptr %network_header.i.i.i.i, align 4
  %call3.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 20) #12
  %protocol4.i.i = getelementptr inbounds %struct.iphdr, ptr %call3.i.i, i32 0, i32 6
  %42 = ptrtoint ptr %protocol4.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 17, ptr %protocol4.i.i, align 1
  %call5.i.i = tail call i32 @in_aton(ptr noundef nonnull @.str.76) #12
  %saddr.i.i = getelementptr inbounds %struct.iphdr, ptr %call3.i.i, i32 0, i32 8
  %43 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call5.i.i, ptr %saddr.i.i, align 4
  %call6.i.i = tail call i32 @in_aton(ptr noundef nonnull @.str.77) #12
  %daddr.i.i = getelementptr inbounds %struct.iphdr, ptr %call3.i.i, i32 0, i32 9
  %44 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call6.i.i, ptr %daddr.i.i, align 4
  %frag_off.i.i = getelementptr inbounds %struct.iphdr, ptr %call3.i.i, i32 0, i32 4
  %45 = ptrtoint ptr %frag_off.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %frag_off.i.i, align 2
  %46 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 69, ptr %call3.i.i, align 4
  %tot_len10.i.i = getelementptr inbounds %struct.iphdr, ptr %call3.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %tot_len10.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 128, ptr %tot_len10.i.i, align 2
  %ttl.i.i = getelementptr inbounds %struct.iphdr, ptr %call3.i.i, i32 0, i32 5
  %48 = ptrtoint ptr %ttl.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 100, ptr %ttl.i.i, align 4
  %check.i.i = getelementptr inbounds %struct.iphdr, ptr %call3.i.i, i32 0, i32 7
  %49 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %check.i.i, align 2
  %50 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %call3.i.i, i32 5) #12, !srcloc !239
  %asmresult.i.i.i = extractvalue { i32, ptr, i32, i32 } %50, 0
  %51 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i.i.i) #18, !srcloc !240
  %neg.i.i.i.i = xor i32 %51, -1
  %shr.i.i.i.i = lshr i32 %neg.i.i.i.i, 16
  %conv.i.i54.i.i = trunc i32 %shr.i.i.i.i to i16
  %52 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i.i54.i.i, ptr %check.i.i, align 2
  %53 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len.i.i, align 4
  %55 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i.i.i, align 4
  %57 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i57.i.i = ptrtoint ptr %56 to i32
  %sub.ptr.rhs.cast.i.i58.i.i = ptrtoint ptr %58 to i32
  %sub.ptr.sub.i.i59.i.i = sub i32 %sub.ptr.lhs.cast.i.i57.i.i, %sub.ptr.rhs.cast.i.i58.i.i
  %conv.i.i60.i.i = trunc i32 %sub.ptr.sub.i.i59.i.i to i16
  %transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 19
  %59 = trunc i32 %54 to i16
  %conv1.i61.i.i = add i16 %conv.i.i60.i.i, %59
  %60 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv1.i61.i.i, ptr %transport_header.i.i.i.i, align 2
  %call.i62.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 108) #12
  %61 = call ptr @memset(ptr %call.i62.i.i, i32 0, i32 108)
  tail call void @get_random_bytes(ptr noundef %call.i62.i.i, i32 noundef 2) #12
  %dest.i.i = getelementptr inbounds %struct.udphdr, ptr %call.i62.i.i, i32 0, i32 1
  tail call void @get_random_bytes(ptr noundef %dest.i.i, i32 noundef 2) #12
  %len21.i.i = getelementptr inbounds %struct.udphdr, ptr %call.i62.i.i, i32 0, i32 2
  %62 = ptrtoint ptr %len21.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 108, ptr %len21.i.i, align 2
  %63 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ns, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  %67 = getelementptr inbounds %struct.anon.51, ptr %call.i.i.i, i32 0, i32 2
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %66, ptr %67, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %fa_cookie_lock.i) #12
  br i1 %14, label %if.end7.i.cond.end.i_crit_edge, label %cond.true.i

if.end7.i.cond.end.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %fa_cookie10.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fa_cookie10.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end7.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %70, %cond.true.i ], [ null, %if.end7.i.cond.end.i_crit_edge ]
  %71 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @devlink_trap_report(ptr noundef %call.i, ptr noundef nonnull %call.i.i.i, ptr noundef %72, ptr noundef %devlink_port.i, ptr noundef %cond.i) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %fa_cookie_lock.i) #12
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i) #12
  br label %cleanup.i

cleanup.i:                                        ; preds = %cond.end.i, %if.end.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 14
  br i1 %exitcond.not.i, label %nsim_dev_trap_report.exit, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

nsim_dev_trap_report.exit:                        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %trap_lock.i) #12
  br label %for.inc

for.inc:                                          ; preds = %nsim_dev_trap_report.exit, %for.body.for.inc_crit_edge
  %73 = ptrtoint ptr %nsim_dev_port.023 to i32
  call void @__asan_load4_noabort(i32 %73)
  %nsim_dev_port.0 = load ptr, ptr %nsim_dev_port.023, align 4
  %cmp.not = icmp eq ptr %nsim_dev_port.0, %port_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %port_list_lock) #12
  %trap_data = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 2
  %74 = ptrtoint ptr %trap_data to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %trap_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %76 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %76, ptr noundef %75, i32 noundef 10) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_trap_groups_unregister(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_trap_policers_unregister(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_trap_report(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_aton(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nsim_udp_tunnels_debugfs_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_dev_trap_fa_cookie_read(ptr nocapture noundef readonly %file, ptr noundef %data, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %fa_cookie_lock = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 29
  tail call void @_raw_spin_lock(ptr noundef %fa_cookie_lock) #12
  %fa_cookie1 = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %fa_cookie1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fa_cookie1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.errout_crit_edge, label %if.end

entry.errout_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %mul = shl i32 %5, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 2592) #15
  %tobool2.not = icmp eq ptr %call9.i, null
  br i1 %tobool2.not, label %if.end.errout_crit_edge, label %if.end4

if.end.errout_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %cookie = getelementptr inbounds %struct.flow_action_cookie, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %call6 = tail call ptr @bin2hex(ptr noundef nonnull %call9.i, ptr noundef %cookie, i32 noundef %7) #12
  tail call void @_raw_spin_unlock(ptr noundef %fa_cookie_lock) #12
  %call8 = tail call i32 @simple_read_from_buffer(ptr noundef %data, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call9.i, i32 noundef %mul) #12
  tail call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %cleanup

errout:                                           ; preds = %if.end.errout_crit_edge, %entry.errout_crit_edge
  %ret.0 = phi i32 [ -22, %entry.errout_crit_edge ], [ -12, %if.end.errout_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %fa_cookie_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %errout, %if.end4
  %retval.0 = phi i32 [ %call8, %if.end4 ], [ %ret.0, %errout ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_dev_trap_fa_cookie_write(ptr nocapture noundef readonly %file, ptr noundef %data, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %count, -1
  %div48 = lshr i32 %sub, 1
  %rem = and i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end8.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i:                                        ; preds = %if.end
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %count, i32 noundef 11456) #15
  %tobool4.not = icmp eq ptr %call9.i, null
  br i1 %tobool4.not, label %if.end8.i.cleanup_crit_edge, label %if.end6

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end8.i
  %call7 = tail call i32 @simple_write_to_buffer(ptr noundef nonnull %call9.i, i32 noundef %count, ptr noundef %ppos, ptr noundef %data, i32 noundef %count) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.free_buf_crit_edge, label %if.end8.i74

if.end6.free_buf_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_buf

if.end8.i74:                                      ; preds = %if.end6
  %add = add nuw i32 %div48, 4
  %call9.i73 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 11456) #15
  %tobool12.not = icmp eq ptr %call9.i73, null
  br i1 %tobool12.not, label %if.end8.i74.free_buf_crit_edge, label %if.end14

if.end8.i74.free_buf_crit_edge:                   ; preds = %if.end8.i74
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_buf

if.end14:                                         ; preds = %if.end8.i74
  %4 = ptrtoint ptr %call9.i73 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div48, ptr %call9.i73, align 128
  %cookie = getelementptr inbounds %struct.flow_action_cookie, ptr %call9.i73, i32 0, i32 1
  %call16 = tail call i32 @hex2bin(ptr noundef %cookie, ptr noundef nonnull %call9.i, i32 noundef %div48) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %free_fa_cookie

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call9.i) #12
  %fa_cookie_lock = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 29
  tail call void @_raw_spin_lock(ptr noundef %fa_cookie_lock) #12
  %fa_cookie20 = getelementptr inbounds %struct.nsim_dev, ptr %1, i32 0, i32 28
  %5 = ptrtoint ptr %fa_cookie20 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fa_cookie20, align 4
  tail call void @kfree(ptr noundef %6) #12
  %7 = ptrtoint ptr %fa_cookie20 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.i73, ptr %fa_cookie20, align 4
  tail call void @_raw_spin_unlock(ptr noundef %fa_cookie_lock) #12
  br label %cleanup

free_fa_cookie:                                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call9.i73) #12
  br label %free_buf

free_buf:                                         ; preds = %free_fa_cookie, %if.end8.i74.free_buf_crit_edge, %if.end6.free_buf_crit_edge
  %ret.0 = phi i32 [ %call7, %if.end6.free_buf_crit_edge ], [ %call16, %free_fa_cookie ], [ -12, %if.end8.i74.free_buf_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %cleanup

cleanup:                                          ; preds = %free_buf, %if.end19, %if.end8.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free_buf ], [ %count, %if.end19 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bin2hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_write_to_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex2bin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_bus_dev_max_vfs_read(ptr nocapture noundef readonly %file, ptr noundef %data, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf) #12
  %2 = call ptr @memset(ptr %buf, i32 255, i32 11)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %max_vfs = getelementptr inbounds %struct.nsim_bus_dev, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %max_vfs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %max_vfs, align 4
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 11, ptr noundef nonnull @.str.91, i32 noundef %6) #12
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %data, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #12
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_bus_dev_max_vfs_write(ptr nocapture noundef readonly %file, ptr noundef %data, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [10 x i8], align 1
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf) #12
  %0 = call ptr @memset(ptr %buf, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val, align 4, !annotation !238
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %count)
  %cmp1 = icmp ugt i32 %count, 9
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.then.i.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %count, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.94, i32 noundef 156) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 %count, i32 -1226833920) #18, !srcloc !241
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !242

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %count) #12
  %5 = call i32 @llvm.read_register.i32(metadata !224) #12
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #11, !srcloc !243
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !245
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %data, i32 noundef %count) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #12, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !245
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end5, label %if.then11.i.i, !prof !242

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr [10 x i8], ptr %buf, i32 0, i32 %count
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx, align 1
  %call7 = call i32 @kstrtouint(ptr noundef nonnull %buf, i32 noundef 10, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -129, i32 %11)
  %cmp11 = icmp ugt i32 %11, -129
  br i1 %cmp11, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 24) #12
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %if.end13.cleanup_crit_edge, label %if.end7.i.i, !prof !234

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end13
  %14 = extractvalue { i32, i1 } %12, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 11712) #15
  %tobool15.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool15.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end17

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end7.i.i
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private_data, align 4
  %vfs_lock = getelementptr inbounds %struct.nsim_dev, ptr %16, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %vfs_lock, i32 noundef 0) #12
  %call18 = call i32 @nsim_dev_get_vfs(ptr noundef %16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.body, label %if.end17.if.end32_crit_edge

if.end17.if.end32_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

do.body:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %vfconfigs21 = getelementptr inbounds %struct.nsim_dev, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %vfconfigs21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vfconfigs21, align 4
  store ptr %call8.i.i, ptr %vfconfigs21, align 4
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %16, align 4
  %max_vfs = getelementptr inbounds %struct.nsim_bus_dev, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %max_vfs to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 %20, ptr %max_vfs, align 4
  %conv = zext i32 %count to i64
  %24 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %ppos, align 8
  %add = add i64 %25, %conv
  store i64 %add, ptr %ppos, align 8
  br label %if.end32

if.end32:                                         ; preds = %do.body, %if.end17.if.end32_crit_edge
  %vfconfigs.0 = phi ptr [ %18, %do.body ], [ %call8.i.i, %if.end17.if.end32_crit_edge ]
  %ret.0 = phi i32 [ %count, %do.body ], [ -16, %if.end17.if.end32_crit_edge ]
  call void @mutex_unlock(ptr noundef %vfs_lock) #12
  call void @kfree(ptr noundef %vfconfigs.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end7.i.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end32 ], [ 0, %entry.cleanup_crit_edge ], [ -28, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -34, %if.end10.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -12, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_traps_unregister(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_region_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @devlink_is_reload_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_attrs_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_port_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nsim_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_rate_leaf_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_type_eth_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nsim_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_symlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_rate_leaf_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_type_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_rate_nodes_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readnone }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !87, !88, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !110, !111, !112, !114, !116, !117, !118, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !136, !138, !140, !142, !144, !146, !147, !149, !150, !151, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !207, !209, !211, !213, !215, !217, !219, !221, !222, !223}
!llvm.named.register.sp = !{!224}
!llvm.module.flags = !{!225, !226, !227, !228, !229, !230, !231, !232}
!llvm.ident = !{!233}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/netdevsim/dev.c", i32 61, i32 2}
!2 = !{ptr @nsim_drv_probe.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/netdevsim/dev.c", i32 1540, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @nsim_drv_probe.__key.2, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/net/netdevsim/dev.c", i32 1541, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nsim_drv_probe.__key.4, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/netdevsim/dev.c", i32 1546, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/netdevsim/dev.c", i32 1761, i32 37}
!13 = !{ptr @nsim_dev_ddir, !14, !"nsim_dev_ddir", i1 false, i1 false}
!14 = !{!"../drivers/net/netdevsim/dev.c", i32 57, i32 23}
!15 = !{ptr @nsim_dev_devlink_ops, !16, !"nsim_dev_devlink_ops", i1 false, i1 false}
!16 = !{!"../drivers/net/netdevsim/dev.c", i32 1325, i32 33}
!17 = !{ptr @nsim_dev_reload_down.__msg, !18, !"__msg", i1 false, i1 false}
!18 = !{!"../drivers/net/netdevsim/dev.c", i32 958, i32 3}
!19 = !{ptr @nsim_dev_reload_up.__msg, !20, !"__msg", i1 false, i1 false}
!20 = !{!"../drivers/net/netdevsim/dev.c", i32 985, i32 3}
!21 = !{ptr @nsim_dev_reload_create.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/net/netdevsim/dev.c", i32 1473, i32 2}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/netdevsim/dev.c", i32 1505, i32 48}
!25 = !{ptr @nsim_dev_take_snapshot_fops, !26, !"nsim_dev_take_snapshot_fops", i1 false, i1 false}
!26 = !{!"../drivers/net/netdevsim/dev.c", i32 130, i32 37}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/netdevsim/dev.c", i32 114, i32 3}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @nsim_dev_take_snapshot_write._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @nsim_dev_take_snapshot_write._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/netdevsim/dev.c", i32 122, i32 3}
!34 = !{ptr @nsim_dev_take_snapshot_write._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @nsim_dev_take_snapshot_write._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/netdevsim/dev.c", i32 1019, i32 10}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/netdevsim/dev.c", i32 1025, i32 48}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/netdevsim/dev.c", i32 1037, i32 48}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/netdevsim/dev.c", i32 1039, i32 47}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/netdevsim/dev.c", i32 717, i32 2}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/netdevsim/dev.c", i32 718, i32 2}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/netdevsim/dev.c", i32 719, i32 2}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/netdevsim/dev.c", i32 720, i32 2}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/netdevsim/dev.c", i32 721, i32 2}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/netdevsim/dev.c", i32 722, i32 2}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/netdevsim/dev.c", i32 723, i32 2}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/netdevsim/dev.c", i32 724, i32 2}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/netdevsim/dev.c", i32 725, i32 2}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/netdevsim/dev.c", i32 726, i32 2}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/netdevsim/dev.c", i32 727, i32 2}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/netdevsim/dev.c", i32 729, i32 2}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/netdevsim/dev.c", i32 731, i32 2}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/netdevsim/dev.c", i32 732, i32 2}
!72 = !{ptr @nsim_traps_arr, !73, !"nsim_traps_arr", i1 false, i1 false}
!73 = !{!"../drivers/net/netdevsim/dev.c", i32 716, i32 34}
!74 = !{ptr @nsim_dev_devlink_trap_policer_set.__msg, !75, !"__msg", i1 false, i1 false}
!75 = !{!"../drivers/net/netdevsim/dev.c", i32 1120, i32 3}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/netdevsim/dev.c", i32 1181, i32 33}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/netdevsim/dev.c", i32 1157, i32 3}
!80 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @nsim_rate_bytes_to_units._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @nsim_rate_bytes_to_units._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @nsim_rate_bytes_to_units.__msg, !84, !"__msg", i1 false, i1 false}
!84 = !{!"../drivers/net/netdevsim/dev.c", i32 1159, i32 3}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/netdevsim/dev.c", i32 1164, i32 3}
!87 = !{ptr @nsim_rate_bytes_to_units._entry.34, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @nsim_rate_bytes_to_units._entry_ptr.36, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @nsim_rate_bytes_to_units.__msg.37, !90, !"__msg", i1 false, i1 false}
!90 = !{!"../drivers/net/netdevsim/dev.c", i32 1166, i32 3}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/netdevsim/dev.c", i32 1197, i32 33}
!93 = !{ptr @nsim_rate_node_new.__msg, !94, !"__msg", i1 false, i1 false}
!94 = !{!"../drivers/net/netdevsim/dev.c", i32 1248, i32 3}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/netdevsim/dev.c", i32 1260, i32 47}
!97 = !{ptr @nsim_dev_rate_parent_fops, !98, !"nsim_dev_rate_parent_fops", i1 false, i1 false}
!98 = !{!"../drivers/net/netdevsim/dev.c", i32 383, i32 37}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/netdevsim/dev.c", i32 438, i32 43}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/netdevsim/dev.c", i32 443, i32 3}
!103 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @nsim_dev_resources_register._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @nsim_dev_resources_register._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/netdevsim/dev.c", i32 447, i32 43}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/netdevsim/dev.c", i32 451, i32 3}
!110 = !{ptr @nsim_dev_resources_register._entry.44, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @nsim_dev_resources_register._entry_ptr.46, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/netdevsim/dev.c", i32 455, i32 43}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/netdevsim/dev.c", i32 459, i32 3}
!116 = !{ptr @nsim_dev_resources_register._entry.48, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @nsim_dev_resources_register._entry_ptr.50, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/netdevsim/dev.c", i32 464, i32 43}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/netdevsim/dev.c", i32 469, i32 3}
!122 = !{ptr @nsim_dev_resources_register._entry.52, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @nsim_dev_resources_register._entry_ptr.54, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/netdevsim/dev.c", i32 477, i32 3}
!126 = !{ptr @nsim_dev_resources_register._entry.55, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @nsim_dev_resources_register._entry_ptr.57, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/netdevsim/dev.c", i32 485, i32 3}
!130 = !{ptr @nsim_dev_resources_register._entry.58, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @nsim_dev_resources_register._entry_ptr.60, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/netdevsim/dev.c", i32 490, i32 43}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/netdevsim/dev.c", i32 505, i32 2}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/netdevsim/dev.c", i32 508, i32 2}
!138 = !{ptr @nsim_devlink_params, !139, !"nsim_devlink_params", i1 false, i1 false}
!139 = !{!"../drivers/net/netdevsim/dev.c", i32 504, i32 35}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/netdevsim/dev.c", i32 550, i32 10}
!142 = !{ptr @dummy_region_ops, !143, !"dummy_region_ops", i1 false, i1 false}
!143 = !{!"../drivers/net/netdevsim/dev.c", i32 549, i32 40}
!144 = !{ptr @nsim_dev_traps_init.__key, !145, !"__key", i1 false, i1 false}
!145 = !{!"../drivers/net/netdevsim/dev.c", i32 882, i32 2}
!146 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @nsim_dev_traps_init.__key.66, !148, !"__key", i1 false, i1 false}
!148 = !{!"../drivers/net/netdevsim/dev.c", i32 901, i32 2}
!149 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @nsim_dev_traps_init.__key.68, !148, !"__key", i1 false, i1 false}
!151 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @nsim_trap_policers_arr, !153, !"nsim_trap_policers_arr", i1 false, i1 false}
!153 = !{!"../drivers/net/netdevsim/dev.c", i32 701, i32 42}
!154 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/netdevsim/dev.c", i32 708, i32 2}
!156 = !{ptr @.str.71, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/netdevsim/dev.c", i32 709, i32 2}
!158 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/netdevsim/dev.c", i32 710, i32 2}
!160 = !{ptr @.str.73, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/netdevsim/dev.c", i32 711, i32 2}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/netdevsim/dev.c", i32 712, i32 2}
!164 = !{ptr @.str.75, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/netdevsim/dev.c", i32 713, i32 2}
!166 = !{ptr @nsim_trap_groups_arr, !167, !"nsim_trap_groups_arr", i1 false, i1 false}
!167 = !{!"../drivers/net/netdevsim/dev.c", i32 707, i32 40}
!168 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/netdevsim/dev.c", i32 760, i32 23}
!170 = !{ptr @.str.77, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/netdevsim/dev.c", i32 761, i32 23}
!172 = !{ptr @.str.78, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/netdevsim/dev.c", i32 307, i32 25}
!174 = !{ptr @.str.79, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/netdevsim/dev.c", i32 311, i32 44}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/netdevsim/dev.c", i32 314, i32 22}
!178 = !{ptr @.str.81, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/netdevsim/dev.c", i32 316, i32 21}
!180 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/netdevsim/dev.c", i32 327, i32 22}
!182 = !{ptr @.str.83, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/netdevsim/dev.c", i32 329, i32 22}
!184 = !{ptr @.str.84, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/netdevsim/dev.c", i32 331, i32 22}
!186 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/netdevsim/dev.c", i32 333, i32 22}
!188 = !{ptr @.str.86, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/netdevsim/dev.c", i32 336, i32 22}
!190 = !{ptr @.str.87, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/netdevsim/dev.c", i32 339, i32 22}
!192 = !{ptr @.str.88, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/netdevsim/dev.c", i32 342, i32 22}
!194 = !{ptr @.str.89, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/netdevsim/dev.c", i32 345, i32 44}
!196 = !{ptr @.str.90, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/netdevsim/dev.c", i32 350, i32 22}
!198 = !{ptr @nsim_dev_trap_fa_cookie_fops, !199, !"nsim_dev_trap_fa_cookie_fops", i1 false, i1 false}
!199 = !{!"../drivers/net/netdevsim/dev.c", i32 222, i32 37}
!200 = !{ptr @nsim_dev_max_vfs_fops, !201, !"nsim_dev_max_vfs_fops", i1 false, i1 false}
!201 = !{!"../drivers/net/netdevsim/dev.c", i32 294, i32 37}
!202 = !{ptr @.str.91, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/netdevsim/dev.c", i32 237, i32 36}
!204 = distinct !{null, !205, !"__already_done", i1 false, i1 false}
!205 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!206 = distinct !{null, !205, !"<string literal>", i1 false, i1 false}
!207 = distinct !{null, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!209 = !{ptr @.str.94, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!211 = !{ptr @.str.95, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/netdevsim/dev.c", i32 398, i32 26}
!213 = !{ptr @.str.96, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/netdevsim/dev.c", i32 404, i32 25}
!215 = !{ptr @.str.97, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/netdevsim/dev.c", i32 418, i32 25}
!217 = !{ptr @nsim_esw_switchdev_enable.__msg, !218, !"__msg", i1 false, i1 false}
!218 = !{!"../drivers/net/netdevsim/dev.c", i32 597, i32 4}
!219 = !{ptr @.str.98, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/netdevsim/dev.c", i32 598, i32 4}
!221 = !{ptr @.str.99, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @nsim_esw_switchdev_enable._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @nsim_esw_switchdev_enable._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{!"sp"}
!225 = !{i32 1, !"wchar_size", i32 2}
!226 = !{i32 1, !"min_enum_size", i32 4}
!227 = !{i32 8, !"branch-target-enforcement", i32 0}
!228 = !{i32 8, !"sign-return-address", i32 0}
!229 = !{i32 8, !"sign-return-address-all", i32 0}
!230 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!231 = !{i32 7, !"uwtable", i32 1}
!232 = !{i32 7, !"frame-pointer", i32 2}
!233 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!234 = !{!"branch_weights", i32 1, i32 2000}
!235 = !{i8 0, i8 2}
!236 = !{i64 1075550, i64 1075577}
!237 = !{i64 1076245, i64 1076272, i64 1076305, i64 1076326, i64 1076353, i64 1076379}
!238 = !{!"auto-init"}
!239 = !{i64 6879327, i64 6879366, i64 6879392, i64 6879416, i64 6879441, i64 6879467, i64 6879492, i64 6879518, i64 6879545, i64 6879571, i64 6879610, i64 6879654, i64 6879685, i64 6879710}
!240 = !{i64 6878944}
!241 = !{i64 2152224075, i64 2152224100}
!242 = !{!"branch_weights", i32 2000, i32 1}
!243 = !{i64 4719630}
!244 = !{i64 4719827}
!245 = !{i64 2152205060}
